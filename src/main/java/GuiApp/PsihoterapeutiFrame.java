package GuiApp;

import model.Psihoterapeut;

import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.awt.*;
import java.sql.Connection;
import java.util.ArrayList;

public class PsihoterapeutiFrame extends JFrame {
    private JTable table;
    private DefaultTableModel tableModel;

    public PsihoterapeutiFrame() {
        setTitle("Pregled psihoterapeuta");
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        setSize(800, 400);
        setLocationRelativeTo(null); // centriranje prozora

        // Kolone koje tabela prikazuje
        String[] columnNames = {
                "Ime", "Prezime", "JMBG", "Datum rođenja",
                "Email", "Broj telefona", "Username"
        };

        // Prazan model koji možeš kasnije popuniti
        tableModel = new DefaultTableModel(columnNames, 0);
        table = new JTable(tableModel);
        table.setFillsViewportHeight(true);

        // Scroll pane za tabelu
        JScrollPane scrollPane = new JScrollPane(table);
        add(scrollPane, BorderLayout.CENTER);

        ucitajPodatke();
    }

    public DefaultTableModel getTableModel() {
        return tableModel;
    }

    public JTable getTable() {
        return table;
    }

    private void ucitajPodatke() {
        try (Connection conn = DBConnection.getConnection()) {
            ArrayList<Psihoterapeut> lista = DBConnection.psihoterapeuti(conn);

            for (Psihoterapeut p : lista) {
                Object[] rowData = {
                        p.getIme(),
                        p.getPrezime(),
                        p.getJMBG(),
                        p.getDatumRodjenja(),
                        p.getEmail(),
                        p.getBrojTelefona(),
                        p.getUsername()
                };
                tableModel.addRow(rowData);
            }

        } catch (Exception e) {
            JOptionPane.showMessageDialog(this, "Greška prilikom učitavanja psihoterapeuta:\n" + e.getMessage(),
                    "Greška", JOptionPane.ERROR_MESSAGE);
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        new PsihoterapeutiFrame().setVisible(true);
    }
}
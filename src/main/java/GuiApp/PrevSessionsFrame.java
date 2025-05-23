package GuiApp;

import model.Psihoterapeut;
import model.Seansa;

import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.awt.*;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

public class PrevSessionsFrame extends JFrame {

    public PrevSessionsFrame(Psihoterapeut p, ArrayList<Seansa> seanse) {
        setTitle("Prethodne Seanse");
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        setSize(700, 450);
        setLocationRelativeTo(null);

        JLabel naslov = new JLabel("Prethodne seanse", SwingConstants.CENTER);
        naslov.setFont(new Font("Arial", Font.BOLD, 18));
        naslov.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));

        String[] kolone = {"Trajanje (min)", "Početak", "Datum", "Psihoterapeut ime", "Psihoterapeut prezime", "Klijent ime" , "Klijent prezime"};
        DefaultTableModel model = new DefaultTableModel(kolone, 0) {
            @Override
            public boolean isCellEditable(int row, int column) {
                return false; // onemogućavamo editovanje
            }
        };

        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("HH:mm");

        for (Seansa s : seanse) {
            Object[] row = new Object[]{
                    s.getTrajanjeMinuti(),
                    dtf.format(s.getPocetak()),
                    s.getPocetak().toLocalDate(),
                    s.getPsihoterapeut().getIme(),
                    s.getPsihoterapeut().getPrezime(),
                    s.getKlijent().getIme(),
                    s.getKlijent().getPrezime()
            };
            model.addRow(row);
        }

        JTable tabela = new JTable(model);
        JScrollPane scrollPane = new JScrollPane(tabela);

        // Dugme
        JButton detaljiButton = new JButton("Prikaži detalje");
        detaljiButton.addActionListener(e -> {
            int selectedRow = tabela.getSelectedRow();
            if (selectedRow == -1) {
                JOptionPane.showMessageDialog(this, "Niste izabrali nijednu seansu.", "Greška", JOptionPane.ERROR_MESSAGE);
                return;
            }

            // Dohvati odgovarajuću seansu iz liste
            Seansa selektovanaSeansa = seanse.get(selectedRow);
            new SessionFrame(selektovanaSeansa).setVisible(true);
        });

        // Donji panel za dugme
        JPanel bottomPanel = new JPanel(new FlowLayout(FlowLayout.CENTER));
        bottomPanel.add(detaljiButton);

        setLayout(new BorderLayout());
        add(naslov, BorderLayout.NORTH);
        add(scrollPane, BorderLayout.CENTER);
        add(bottomPanel, BorderLayout.SOUTH);
    }
}

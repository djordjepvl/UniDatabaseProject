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
        setSize(600, 400);
        setLocationRelativeTo(null);

        // Naslov
        JLabel naslov = new JLabel("Prethodne seanse", SwingConstants.CENTER);
        naslov.setFont(new Font("Arial", Font.BOLD, 18));
        naslov.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));

        // Kolone tabele
        String[] kolone = {"Trajanje (min)", "Početak", "Datum", "Psihoterapeut ID"};
        DefaultTableModel model = new DefaultTableModel(kolone, 0);

        // Formatter za LocalDateTime
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("HH:mm");

        for (Seansa s : seanse) {
            Object[] row = new Object[]{
                    s.getTrajanjeMinuti(),
                    dtf.format(s.getPocetak()),
                    s.getPocetak().toLocalDate(),
                    s.getPsihoterapeutId()
            };
            model.addRow(row);
        }

        JTable tabela = new JTable(model);
        JScrollPane scrollPane = new JScrollPane(tabela);

        // Layout
        setLayout(new BorderLayout());
        add(naslov, BorderLayout.NORTH);
        add(scrollPane, BorderLayout.CENTER);
    }
}

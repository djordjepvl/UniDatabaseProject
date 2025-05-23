package GuiApp;

import model.Psihoterapeut;
import model.Seansa;

import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.awt.*;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

public class FutureSessionsFrame extends JFrame {

    public FutureSessionsFrame() {
        setTitle("Buduće seanse");
        setSize(700, 400);
        setLocationRelativeTo(null);
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);

        Psihoterapeut p = MainFrame.getUser();
        ArrayList<Seansa> seanse = DBConnection.buduceSeansePsihoterapeuta(p);

        // Kolone
        String[] kolone = {"Datum", "Vreme", "Trajanje (min)", "Ime klijenta", "Prezime klijenta"};

        // Model tabele
        DefaultTableModel model = new DefaultTableModel(kolone, 0);

        // Formatteri za datum i vreme
        DateTimeFormatter datumFormatter = DateTimeFormatter.ofPattern("dd.MM.yyyy");
        DateTimeFormatter vremeFormatter = DateTimeFormatter.ofPattern("HH:mm");

        // Dodavanje redova
        for (Seansa s : seanse) {
            String datum = s.getPocetak().toLocalDate().format(datumFormatter);
            String vreme = s.getPocetak().toLocalTime().format(vremeFormatter);
            int trajanje = s.getTrajanjeMinuti();
            String imeKlijenta = s.getKlijent().getIme();
            String prezimeKlijenta = s.getKlijent().getPrezime();

            model.addRow(new Object[]{datum, vreme, trajanje, imeKlijenta, prezimeKlijenta});
        }

        // Tabela
        JTable tabela = new JTable(model);
        JScrollPane scrollPane = new JScrollPane(tabela);

        add(scrollPane, BorderLayout.CENTER);
    }
}

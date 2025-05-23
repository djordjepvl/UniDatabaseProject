package GuiApp;

import model.ObjavaSeanse;
import model.Seansa;

import javax.swing.*;
import java.awt.*;
import java.time.format.DateTimeFormatter;

public class SessionFrame extends JFrame {
    private Seansa seansa;

    public SessionFrame(Seansa seansa) {
        this.seansa = seansa;

        setTitle("Detalji seanse");
        setSize(500, 600);
        setLocationRelativeTo(null);
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);

        DateTimeFormatter dtFormatter = DateTimeFormatter.ofPattern("dd.MM.yyyy");
        DateTimeFormatter timeFormatter = DateTimeFormatter.ofPattern("HH:mm");

        JLabel lblDatum = new JLabel("Datum: " + seansa.getPocetak().toLocalDate().format(dtFormatter));
        JLabel lblVreme = new JLabel("Vreme početka: " + seansa.getPocetak().toLocalTime().format(timeFormatter));
        JLabel lblTrajanje = new JLabel("Trajanje (min): " + seansa.getTrajanjeMinuti());

        JLabel lblImePsih = new JLabel("Ime terapeuta: " + seansa.getPsihoterapeut().getIme());
        JLabel lblPrezimePsih = new JLabel("Prezime terapeuta: " + seansa.getPsihoterapeut().getPrezime());

        JLabel lblImeKlijent = new JLabel("Ime klijenta: " + seansa.getKlijent().getIme());
        JLabel lblPrezimeKlijent = new JLabel("Prezime klijenta: " + seansa.getKlijent().getPrezime());

        JTextArea txtBeleske = new JTextArea(seansa.getBeleske() != null ? seansa.getBeleske() : "Nema beleški za ovu seansu.");
        txtBeleske.setLineWrap(true);
        txtBeleske.setWrapStyleWord(true);
        txtBeleske.setEditable(false);
        txtBeleske.setBorder(BorderFactory.createTitledBorder("Beleške"));
        JScrollPane beleskeScroll = new JScrollPane(txtBeleske);

        JPanel panel = new JPanel();
        panel.setLayout(new BoxLayout(panel, BoxLayout.Y_AXIS));
        panel.setBorder(BorderFactory.createEmptyBorder(15, 15, 15, 15));

        panel.add(lblDatum);
        panel.add(lblVreme);
        panel.add(lblTrajanje);
        panel.add(Box.createVerticalStrut(10));
        panel.add(lblImePsih);
        panel.add(lblPrezimePsih);
        panel.add(Box.createVerticalStrut(10));
        panel.add(lblImeKlijent);
        panel.add(lblPrezimeKlijent);
        panel.add(Box.createVerticalStrut(15));


        ObjavaSeanse objava = DBConnection.selectObjavaSeanse(seansa);
        if (objava!=null) {
            System.out.println(objava.getId());
        }

        if (objava != null) {
            JTextArea txtObjava = new JTextArea(objava.toString());
            txtObjava.setLineWrap(true);
            txtObjava.setWrapStyleWord(true);
            txtObjava.setEditable(false);
            txtObjava.setBorder(BorderFactory.createTitledBorder("Objava"));
            panel.add(txtObjava);
        } else {
            JButton btnObjavi = new JButton("Objavi podatke");
            btnObjavi.addActionListener(e -> {
                new ObjavaPodatakaFrame(seansa).setVisible(true);
                setVisible(false);
            });
            panel.add(btnObjavi);
        }

        panel.add(Box.createVerticalStrut(15));
        panel.add(beleskeScroll);

        add(panel);
    }
}

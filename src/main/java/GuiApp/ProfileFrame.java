package GuiApp;

import model.Psihoterapeut;

import javax.swing.*;
import java.awt.*;

public class ProfileFrame extends JFrame {
    private Psihoterapeut p;
    public ProfileFrame(Psihoterapeut p) {
        this.p = p;

        setTitle("Profil psihoterapeuta");
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        setSize(400, 400);
        setLocationRelativeTo(null); // centriraj prozor

        // Glavni panel sa grid rasporedom 12 redova, 2 kolone (labela i vrednost)
        JPanel panel = new JPanel(new GridLayout(0, 2, 10, 10));
        panel.setBorder(BorderFactory.createEmptyBorder(15, 15, 15, 15)); // padding

        // Dodaj parove labela i vrednosti iz objekta p
        panel.add(new JLabel("Ime:"));
        panel.add(new JLabel(p.getIme()));

        panel.add(new JLabel("Prezime:"));
        panel.add(new JLabel(p.getPrezime()));

        panel.add(new JLabel("JMBG:"));
        panel.add(new JLabel(p.getJMBG()));

        panel.add(new JLabel("Datum rođenja:"));
        panel.add(new JLabel(p.getDatumRodjenja().toString()));

        panel.add(new JLabel("Prebivalište:"));
        panel.add(new JLabel(p.getPrebivaliste()));

        panel.add(new JLabel("Email:"));
        panel.add(new JLabel(p.getEmail()));

        panel.add(new JLabel("Broj telefona:"));
        panel.add(new JLabel(p.getBrojTelefona()));

        panel.add(new JLabel("Stepan studija:"));
        panel.add(new JLabel(p.getStepenStudija()));

        panel.add(new JLabel("Datum sertifikacije:"));
        panel.add(new JLabel(p.getDatumSertifikacije().toString()));

        panel.add(new JLabel("Username:"));
        panel.add(new JLabel(p.getUsername()));

        // Dodaj panel u frame
        add(panel);

    }
}

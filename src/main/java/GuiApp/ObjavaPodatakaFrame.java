package GuiApp;

import model.Seansa;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionListener;
import java.time.LocalDate;
import java.time.format.DateTimeParseException;

public class ObjavaPodatakaFrame extends JFrame {

    private JTextField tfKada;
    private JTextField tfZasto;
    private JTextField tfKome;
    private JButton btnObjavi;

    public ObjavaPodatakaFrame(Seansa s) {
        setTitle("Objava podataka");
        setSize(400, 250);
        setLocationRelativeTo(null);
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);

        JPanel panel = new JPanel(new GridLayout(4, 2, 10, 10));
        panel.setBorder(BorderFactory.createEmptyBorder(15, 15, 15, 15));

        tfKada = new JTextField();
        tfZasto = new JTextField();
        tfKome = new JTextField();
        btnObjavi = new JButton("Objavi");

        panel.add(new JLabel("Kada (dd.MM.yyyy):"));
        panel.add(tfKada);

        panel.add(new JLabel("Zašto:"));
        panel.add(tfZasto);

        panel.add(new JLabel("Kome:"));
        panel.add(tfKome);

        panel.add(new JLabel()); // prazna ćelija za razmak
        panel.add(btnObjavi);

        btnObjavi.addActionListener(e -> {
            try {
                LocalDate kada = LocalDate.parse(tfKada.getText());
                DBConnection.insertObjava(s, kada, tfKome, tfZasto);
                setVisible(false);
                new SessionFrame(s);
            } catch (DateTimeParseException dtpe) {
                System.out.println("Nije upisano vreme pravilno. ");
                return;
            }
        });
        add(panel);
    }

    // Get metode za čitanje vrednosti iz formi
    public String getKadaText() {
        return tfKada.getText();
    }

    public String getZastoText() {
        return tfZasto.getText();
    }

    public String getKomeText() {
        return tfKome.getText();
    }

    public JButton getBtnObjavi() {
        return btnObjavi;
    }
}

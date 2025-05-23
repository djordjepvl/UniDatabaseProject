package GuiApp;

import model.Psihoterapeut;

import javax.swing.*;
import javax.swing.border.EmptyBorder;
import java.awt.*;

public class MainFrame extends JFrame {
    private static Psihoterapeut user;

    private static ProfileFrame profileFrame;
    private static PsihoterapeutiFrame psihoterapeutiFrame;
    private static PrevSessionsFrame prevSessionsFrame;

    public MainFrame(Psihoterapeut user) {
        this.user = user;

        profileFrame = new ProfileFrame(user);
        psihoterapeutiFrame = new PsihoterapeutiFrame();

        setTitle("Glavni meni");
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setSize(1000, 300);
        setLocationRelativeTo(null); // centriraj prozor

        JPanel mainPanel = new JPanel(new GridBagLayout());
        mainPanel.setBorder(new EmptyBorder(20, 40, 20, 40));
        mainPanel.setBackground(Color.WHITE);

        GridBagConstraints gbc = new GridBagConstraints();
        gbc.insets = new Insets(10, 10, 10, 10);
        gbc.fill = GridBagConstraints.HORIZONTAL;

        JLabel titleLabel = new JLabel("Dobrodošli, " + user.getIme() + "!");
        titleLabel.setFont(new Font("SansSerif", Font.BOLD, 18));
        titleLabel.setHorizontalAlignment(SwingConstants.CENTER);
        gbc.gridwidth = 2;
        gbc.gridx = 0;
        gbc.gridy = 0;
        mainPanel.add(titleLabel, gbc);

        gbc.gridwidth = 1;

        JButton profileButton = new JButton("Moj profil");
        styleButton(profileButton);
        profileButton.addActionListener(e -> {
            profileFrame.setVisible(true);
        });
        gbc.gridx = 0;
        gbc.gridy = 1;
        mainPanel.add(profileButton, gbc);

        JButton pregledButton = new JButton("Pregled psihoterapeuta");
        styleButton(pregledButton);
        pregledButton.addActionListener(e -> {
            psihoterapeutiFrame.setVisible(true);
        });
        gbc.gridx = 1;
        mainPanel.add(pregledButton, gbc);

        JButton prevSessionButton = new JButton("Prethodne seanse");
        styleButton(prevSessionButton);
        prevSessionButton.addActionListener(e -> {
            prevSessionsFrame = new PrevSessionsFrame(user, DBConnection.prethodneSeansePsihoterapeuta(user));
            prevSessionsFrame.setVisible(true);
        });
        gbc.gridx = 2;
        mainPanel.add(prevSessionButton, gbc);

        JButton futureSessionButton = new JButton("Buduće seanse");
        styleButton(futureSessionButton);
        futureSessionButton.addActionListener(e -> {
            FutureSessionsFrame futureFrame = new FutureSessionsFrame();
            futureFrame.setVisible(true);
        });
        gbc.gridx = 3;
        mainPanel.add(futureSessionButton, gbc);

        // Dodaj panel u prozor
        add(mainPanel);
        setVisible(true);
    }

    private void styleButton(JButton button) {
        button.setFocusPainted(false);
        button.setBackground(new Color(59, 89, 182));
        button.setForeground(Color.WHITE);
        button.setFont(new Font("SansSerif", Font.BOLD, 14));
        button.setPreferredSize(new Dimension(180, 40));
    }

    public static Psihoterapeut getUser() {
        return user;
    }
}

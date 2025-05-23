package GuiApp;

import model.Psihoterapeut;

import javax.swing.*;
import javax.swing.border.EmptyBorder;
import java.awt.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SignUpFrame extends JFrame {
    public SignUpFrame() {
        setTitle("Create Account");
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        setSize(400, 370);
        setLocationRelativeTo(null); // Center the frame

        JPanel mainPanel = new JPanel(new GridBagLayout());
        mainPanel.setBorder(new EmptyBorder(20, 30, 20, 30));
        mainPanel.setBackground(Color.WHITE);

        GridBagConstraints gbc = new GridBagConstraints();
        gbc.insets = new Insets(10, 5, 10, 5);
        gbc.fill = GridBagConstraints.HORIZONTAL;

        JLabel titleLabel = new JLabel("Create New Account");
        titleLabel.setFont(new Font("SansSerif", Font.BOLD, 18));
        titleLabel.setHorizontalAlignment(SwingConstants.CENTER);
        gbc.gridwidth = 2;
        gbc.gridx = 0;
        gbc.gridy = 0;
        mainPanel.add(titleLabel, gbc);

        gbc.gridwidth = 1;

        JLabel emailLabel = new JLabel("Gmail:");
        emailLabel.setFont(new Font("SansSerif", Font.PLAIN, 14));
        gbc.gridx = 0;
        gbc.gridy = 1;
        mainPanel.add(emailLabel, gbc);

        JTextField emailField = new JTextField(20);
        gbc.gridx = 1;
        mainPanel.add(emailField, gbc);

        JLabel userLabel = new JLabel("Set Username:");
        userLabel.setFont(new Font("SansSerif", Font.PLAIN, 14));
        gbc.gridx = 0;
        gbc.gridy = 2;
        mainPanel.add(userLabel, gbc);

        JTextField userField = new JTextField(20);
        gbc.gridx = 1;
        mainPanel.add(userField, gbc);

        JLabel passLabel = new JLabel("Set Password:");
        passLabel.setFont(new Font("SansSerif", Font.PLAIN, 14));
        gbc.gridx = 0;
        gbc.gridy = 3;
        mainPanel.add(passLabel, gbc);

        JPasswordField passField = new JPasswordField(20);
        gbc.gridx = 1;
        mainPanel.add(passField, gbc);

        JButton signUpButton = new JButton("Sign Up");
        signUpButton.setFocusPainted(false);
        signUpButton.setBackground(new Color(34, 139, 34));
        signUpButton.setForeground(Color.WHITE);
        signUpButton.setFont(new Font("SansSerif", Font.BOLD, 14));
        gbc.gridx = 0;
        gbc.gridy = 4;
        gbc.gridwidth = 2;
        mainPanel.add(signUpButton, gbc);

        signUpButton.addActionListener(e -> {
            String email = emailField.getText();
            String username = userField.getText();
            String password = String.valueOf(passField.getPassword());

            signUp(email, username, password);

        });

        // Log in with existing account button
        JButton loginButton = new JButton("Log in with existing account");
        loginButton.setFocusPainted(false);
        loginButton.setBackground(new Color(59, 89, 182));
        loginButton.setForeground(Color.WHITE);
        loginButton.setFont(new Font("SansSerif", Font.BOLD, 14));
        gbc.gridy = 5;
        mainPanel.add(loginButton, gbc);

        loginButton.addActionListener(e -> {
            new LoginFrame(); // Open login window
            setVisible(false);
        });

        add(mainPanel);
    }

    private void signUp(String email, String username, String password){

        Psihoterapeut p = DBConnection.psihoterapeutMail(email);

        if (p == null) {
            System.out.println("Nema psihoterapeuta sa ovom mejl adresom");
            return;
        }

        if (p.getLozinka()!=null || p.getUsername()!=null) {
            System.out.println("Psihoterapeut vec ima nalog!");
            return;
        }

        p.setUsername(username);
        p.setLozinka(password);

        DBConnection.updateUser(p);

        new MainFrame(p).setVisible(true);
        setVisible(false);

    }
}

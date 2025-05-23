package GuiApp;

import model.Psihoterapeut;

import javax.swing.*;
import javax.swing.border.EmptyBorder;
import java.awt.*;
import java.sql.Connection;
import java.sql.SQLException;

public class LoginFrame extends JFrame {
    public LoginFrame() {
        setTitle("Login");
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setSize(400, 320);
        setLocationRelativeTo(null); // Center the frame

        JPanel mainPanel = new JPanel(new GridBagLayout());
        mainPanel.setBorder(new EmptyBorder(20, 30, 20, 30));
        mainPanel.setBackground(Color.WHITE);

        GridBagConstraints gbc = new GridBagConstraints();
        gbc.insets = new Insets(10, 5, 10, 5);
        gbc.fill = GridBagConstraints.HORIZONTAL;

        JLabel titleLabel = new JLabel("Welcome to Novi početak");
        titleLabel.setFont(new Font("SansSerif", Font.BOLD, 18));
        titleLabel.setHorizontalAlignment(SwingConstants.CENTER);
        gbc.gridwidth = 2;
        gbc.gridx = 0;
        gbc.gridy = 0;
        mainPanel.add(titleLabel, gbc);

        gbc.gridwidth = 1;

        JLabel userLabel = new JLabel("Username:");
        userLabel.setFont(new Font("SansSerif", Font.PLAIN, 14));
        gbc.gridx = 0;
        gbc.gridy = 1;
        mainPanel.add(userLabel, gbc);

        JTextField userField = new JTextField(20);
        gbc.gridx = 1;
        mainPanel.add(userField, gbc);

        JLabel passLabel = new JLabel("Password:");
        passLabel.setFont(new Font("SansSerif", Font.PLAIN, 14));
        gbc.gridx = 0;
        gbc.gridy = 2;
        mainPanel.add(passLabel, gbc);

        JPasswordField passField = new JPasswordField(20);
        gbc.gridx = 1;
        mainPanel.add(passField, gbc);

        JButton loginButton = new JButton("Login");
        loginButton.setFocusPainted(false);
        loginButton.setBackground(new Color(59, 89, 182));
        loginButton.setForeground(Color.WHITE);
        loginButton.setFont(new Font("SansSerif", Font.BOLD, 14));
        gbc.gridx = 0;
        gbc.gridy = 3;
        gbc.gridwidth = 2;
        mainPanel.add(loginButton, gbc);

        // Create new account button
        JButton createButton = new JButton("Create New Account");
        createButton.setFocusPainted(false);
        createButton.setBackground(new Color(34, 139, 34));
        createButton.setForeground(Color.WHITE);
        createButton.setFont(new Font("SansSerif", Font.BOLD, 14));
        gbc.gridy = 4;
        mainPanel.add(createButton, gbc);

        // Open SignUpFrame on click
        createButton.addActionListener(e -> {
            App.signUp.setVisible(true);
            setVisible(false);
        });

        loginButton.addActionListener(e -> {
            String username = userField.getText();
            String password = new String(passField.getPassword());
            try {
                login(username, password);
            } catch (SQLException ex) {
                throw new RuntimeException(ex);
            }
        });

        add(mainPanel);
        setVisible(true);
    }

    private void login(String username, String password) throws SQLException {
        Connection con = DBConnection.getConnection();
        Psihoterapeut p = DBConnection.psihoterapeutUsernamePassword(con, username, password);

        if (p==null) {
            System.out.println("Pogresne informacije!");
            return;
        }

        new ProfileFrame(p).setVisible(true);
        setVisible(false);
    }
}

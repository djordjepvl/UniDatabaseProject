package GuiApp;

import javax.swing.*;

public class MainFrame {
    public static void main(String[] args) {
        // Creating a frame for the GUI
        JFrame frame = new JFrame("App");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(300, 200);
        frame.setLocationRelativeTo(null);

        // Adding a simple label to the frame
        JLabel label = new JLabel("Hello!", SwingConstants.CENTER);
        frame.add(label);

        // Making the frame visible
        frame.setVisible(true);
    }
}
package GuiApp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

    private static final String DB_URL = "jdbc:mysql://localhost:3306/psihoterapija?serverTimezone=UTC";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "";

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
    }

    public static String upit1() {
        String s = "SELECT psihoterapeut_id, username, ime, prezime " +
                "FROM psihoterapeut " +
                "WHERE imejl_adresa = ?";
        return s;
    }
}

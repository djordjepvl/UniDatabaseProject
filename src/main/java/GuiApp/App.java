package GuiApp;

import com.mysql.cj.jdbc.JdbcConnection;

import java.sql.DriverManager;
import java.sql.SQLException;

public class App {

    public static LoginFrame login = new LoginFrame();
    public static SignUpFrame signUp = new SignUpFrame();

    public static void main(String[] args) throws SQLException {
        login.setVisible(true);
    }
}
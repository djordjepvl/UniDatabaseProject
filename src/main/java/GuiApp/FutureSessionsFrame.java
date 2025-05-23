package GuiApp;

import model.Psihoterapeut;
import model.Seansa;

import javax.swing.*;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

public class FutureSessionsFrame extends JFrame {
    Psihoterapeut p = MainFrame.getUser();
    ArrayList<Seansa> seanse = DBConnection.buduceSeansePsihoterapeuta(p);


}

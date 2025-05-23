package GuiApp;

import model.Psihoterapeut;
import model.Seansa;

import javax.swing.*;
import java.util.ArrayList;

public class PrevSessionsFrame extends JFrame {
    Psihoterapeut p = MainFrame.getUser();
    ArrayList<Seansa> seanse = DBConnection.buduceSeansePsihoterapeuta(p);


}

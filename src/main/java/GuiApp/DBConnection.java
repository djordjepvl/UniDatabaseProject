package GuiApp;

import model.Psihoterapeut;

import java.sql.*;
import java.time.LocalDate;
import java.time.LocalDateTime;

public class DBConnection {

    private static final String DB_URL = "jdbc:mysql://localhost:3306/psihoterapija?serverTimezone=UTC";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "";

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
    }

    public static Psihoterapeut psihoterapeutMail(Connection conn, String email) {
        String sql = "SELECT * FROM psihoterapeut WHERE imejl_adresa = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, email);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                String ime = rs.getString("ime");
                String prezime = rs.getString("prezime");
                String jmbg = rs.getString("JMBG");
                LocalDate datumRodjenja = rs.getDate("datum_rodjenja").toLocalDate();
                String prebivaliste = rs.getString("prebivaliste");
                String imejlAdresa = rs.getString("imejl_adresa");
                String brojTelefona = rs.getString("broj_telefona");
                String stepenStudija = rs.getString("stepen_studija");
                LocalDate datumSertifikacije = rs.getDate("datum_sertifikacije").toLocalDate();
                int fakultetID = rs.getInt("fakultet_id");
                int oblastPsih = rs.getInt("p_oblast_id");

                Psihoterapeut p = new Psihoterapeut(
                        ime, prezime, jmbg, datumRodjenja, prebivaliste,
                        imejlAdresa, brojTelefona, stepenStudija,
                        datumSertifikacije, fakultetID, oblastPsih
                );

                return p;
            } else {
                return null;
            }

        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Psihoterapeut psihoterapeutUsernamePassword(Connection conn, String username, String lozinka) {
        String sql = "SELECT * FROM psihoterapeut WHERE username = ? AND lozinka = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, username);
            stmt.setString(2, lozinka);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                String ime = rs.getString("ime");
                String prezime = rs.getString("prezime");
                String jmbg = rs.getString("JMBG");
                LocalDate datumRodjenja = rs.getDate("datum_rodjenja").toLocalDate();
                String prebivaliste = rs.getString("prebivaliste");
                String imejlAdresa = rs.getString("imejl_adresa");
                String brojTelefona = rs.getString("broj_telefona");
                String stepenStudija = rs.getString("stepen_studija");
                LocalDate datumSertifikacije = rs.getDate("datum_sertifikacije").toLocalDate();
                int fakultetID = rs.getInt("fakultet_id");
                int oblastPsih = rs.getInt("p_oblast_id");

                Psihoterapeut p = new Psihoterapeut(
                        ime, prezime, jmbg, datumRodjenja, prebivaliste,
                        imejlAdresa, brojTelefona, stepenStudija,
                        datumSertifikacije, fakultetID, oblastPsih
                );

                p.setUsername(username);
                p.setLozinka(lozinka);

                return p;
            } else {
                return null;
            }

        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void updateUser(Connection con, Psihoterapeut p) {
        String sql = "UPDATE psihoterapeut SET " +
                "ime = ?, " +
                "prezime = ?, " +
                "datum_rodjenja = ?, " +
                "prebivaliste = ?, " +
                "imejl_adresa = ?, " +
                "broj_telefona = ?, " +
                "stepen_studija = ?, " +
                "datum_sertifikacije = ?, " +
                "fakultet_id = ?, " +
                "p_oblast_id = ?, " +
                "username = ?, " +
                "lozinka = ? " +
                "WHERE JMBG = ?";

        try (PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setString(1, p.getIme());
            stmt.setString(2, p.getPrezime());
            stmt.setDate(3, Date.valueOf(p.getDatumRodjenja()));
            stmt.setString(4, p.getPrebivaliste());
            stmt.setString(5, p.getEmail());
            stmt.setString(6, p.getBrojTelefona());
            stmt.setString(7, p.getStepenStudija());
            stmt.setDate(8, Date.valueOf(p.getDatumSertifikacije()));
            stmt.setInt(9, p.getFakultetID());
            stmt.setInt(10, p.getOblastPsih());
            stmt.setString(11, p.getUsername());
            stmt.setString(12, p.getLozinka());
            stmt.setString(13, p.getJMBG());

            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace(); // Poželjno je koristiti logovanje u stvarnim aplikacijama
        }
    }
}

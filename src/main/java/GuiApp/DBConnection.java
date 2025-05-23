package GuiApp;

import model.*;

import javax.swing.*;
import java.sql.*;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

public class DBConnection {
    private static Connection conn;
    private static final String DB_URL = "jdbc:mysql://localhost:3306/psihoterapija?serverTimezone=UTC";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "";

    public static void init() throws SQLException {
        conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
    }

    public static Psihoterapeut psihoterapeutMail(String email) {
        String sql = "SELECT * FROM psihoterapeut WHERE imejl_adresa = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, email);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                int id = rs.getInt("psihoterapeut_id");
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
                        id, ime, prezime, jmbg, datumRodjenja, prebivaliste,
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

    public static Psihoterapeut psihoterapeutUsernamePassword(String username, String lozinka) {
        String sql = "SELECT * FROM psihoterapeut WHERE username = ? AND lozinka = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, username);
            stmt.setString(2, lozinka);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                int id = rs.getInt("psihoterapeut_id");
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
                        id, ime, prezime, jmbg, datumRodjenja, prebivaliste,
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

    public static void updateUser(Psihoterapeut p) {
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

        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
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
            e.printStackTrace();
        }
    }

    public static ArrayList<Psihoterapeut> psihoterapeuti() {
        ArrayList<Psihoterapeut> lista = new ArrayList<>();
        String sql = "SELECT * FROM psihoterapeut";

        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("psihoterapeut_id");
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
                String username = rs.getString("username");
                String lozinka = rs.getString("lozinka");

                Psihoterapeut p = new Psihoterapeut(
                        id, ime, prezime, jmbg, datumRodjenja, prebivaliste,
                        imejlAdresa, brojTelefona, stepenStudija,
                        datumSertifikacije, fakultetID, oblastPsih
                );
                p.setUsername(username);
                p.setLozinka(lozinka);

                lista.add(p);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return lista;
    }

    public static ArrayList<Seansa> prethodneSeansePsihoterapeuta(Psihoterapeut psihoterapeut) {
        ArrayList<Seansa> sessions = new ArrayList<>();
        String sql = "SELECT * FROM seansa " +
                "WHERE psihoterapeut_id = ? " +
                "AND beleske IS NOT NULL " +
                "AND pocetak < NOW() " +
                "ORDER BY pocetak DESC";

        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, psihoterapeut.getId());
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                int seansaId = rs.getInt("seansa_id");
                int trajanjeMinuti = rs.getInt("trajanje_minuti");
                LocalDateTime pocetak = rs.getTimestamp("pocetak").toLocalDateTime();
                String beleske = rs.getString("beleske");
                int cenaSeanseDin = rs.getInt("cena_seanse_din");
                LocalDate datumPromeneCene = null;
                if (rs.getDate("datum_promene_cene") != null) {
                    datumPromeneCene = rs.getDate("datum_promene_cene").toLocalDate();
                }

                int kandidatId = rs.getInt("kandidat_id");

                int klijentIdFromDb = rs.getInt("klijent_id");
                Klijent klijent = getKlijentById(conn, klijentIdFromDb);

                int centarId = rs.getInt("centar_id");

                Seansa seansa = new Seansa(
                        seansaId, trajanjeMinuti, pocetak, beleske, cenaSeanseDin,
                        datumPromeneCene, kandidatId, psihoterapeut, klijent, centarId
                );
                sessions.add(seansa);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return sessions;
    }

    public static Klijent getKlijentById(Connection conn, int klijentId) {
        String sql = "SELECT * FROM klijent WHERE klijent_id = ?";

        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, klijentId);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                String ime = rs.getString("ime");
                String prezime = rs.getString("prezime");
                LocalDate datum = rs.getDate("datum_rodjenja").toLocalDate();
                String pol = rs.getString("pol");
                String email = rs.getString("imejl_adresa");
                String telefon = rs.getString("broj_telefona");
                String opisProblema = rs.getString("opis_problema");
                String status = rs.getString("status");
                int prijavaId = rs.getInt("prijava_id");

                return new Klijent(klijentId, ime, prezime, datum, pol, email, telefon, opisProblema, status, prijavaId);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }



    public static ArrayList<Seansa> buduceSeansePsihoterapeuta(Psihoterapeut psihoterapeut) {
        ArrayList<Seansa> sessions = new ArrayList<>();
        String sql = "SELECT * FROM seansa " +
                "WHERE psihoterapeut_id = ? " +
                "AND beleske IS NULL " +
                "ORDER BY pocetak ASC";

        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, psihoterapeut.getId());
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("seansa_id");
                int trajanjeMinuti = rs.getInt("trajanje_minuti");
                LocalDateTime pocetak = rs.getTimestamp("pocetak").toLocalDateTime();
                String beleske = rs.getString("beleske"); // Will be null as per query
                int cenaSeanseDin = rs.getInt("cena_seanse_din"); // Will be 0 if not set in DB
                LocalDate datumPromeneCene = null;
                if (rs.getDate("datum_promene_cene") != null) {
                    datumPromeneCene = rs.getDate("datum_promene_cene").toLocalDate();
                }
                // kandidat_id is included regardless of null/not null
                int kandidatId = rs.getInt("kandidat_id");
                int klijentId = rs.getInt("klijent_id");
                int centarId = rs.getInt("centar_id");
                Klijent klijent = getKlijentById(conn, klijentId);

                Seansa seansa = new Seansa(
                        id, trajanjeMinuti, pocetak, beleske, cenaSeanseDin,
                        datumPromeneCene,
                        klijent, MainFrame.getUser()
                );
                sessions.add(seansa);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return sessions;
    }

    public static ObjavaSeanse selectObjavaSeanse(Seansa seansa) {
        String sql = "SELECT objava_id, kome_objavljeno, datum_objave, sadrzaj " +
                "FROM objava_seanse WHERE seansa_id = ?";

        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, seansa.getId());

            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    int id = rs.getInt("objava_id");
                    String komeObjavljeno = rs.getString("kome_objavljeno");
                    LocalDate datum = rs.getDate("datum_objave").toLocalDate();
                    String sadrzaj = rs.getString("sadrzaj");

                    return new ObjavaSeanse(id, komeObjavljeno, datum, sadrzaj, seansa);
                }
            }
        } catch (SQLException e) {
            System.err.println("Greška prilikom dohvatanja objave seanse:");
            e.printStackTrace();
        }

        return null;
    }

    public static ObjavaSeanse insertObjava(Seansa s, LocalDate datum, JTextField tfKome, JTextField tfZasto) {
        int noviId = getNextObjavaId();
        String sql = "INSERT INTO objava_seanse (objava_id, seansa_id, datum_objave, kome_objavljeno, sadrzaj) VALUES (?, ?, ?, ?, ?)";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, noviId);
            stmt.setInt(2, s.getId());
            stmt.setDate(3, java.sql.Date.valueOf(datum));
            stmt.setString(4, tfKome.getText());
            stmt.setString(5, tfZasto.getText());

            int affectedRows = stmt.executeUpdate();

            if (affectedRows == 0) {
                throw new SQLException("Inserting objava failed, no rows affected.");
            }

            return new ObjavaSeanse(noviId, tfKome.getText(), datum, tfZasto.getText(), s);

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    public static int getNextObjavaId() {
        String sql = "SELECT MAX(objava_id) AS max_id FROM objava_seanse";
        try (PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            if (rs.next()) {
                int maxId = rs.getInt("max_id");
                return maxId + 1;  // vraća sledeći slobodan ID
            } else {
                return 1;  // ako nema unosa, počni od 1
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return -1;  // ili baci izuzetak po želji ako nešto nije u redu
    }
}

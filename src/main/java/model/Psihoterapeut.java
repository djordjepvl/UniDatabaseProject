package model;

import java.time.LocalDate;
import java.time.LocalDateTime;

public class Psihoterapeut {
    private String ime;
    private String prezime;
    private String JMBG;
    private LocalDate datumRodjenja;
    private String prebivaliste;
    private String email;
    private String brojTelefona;
    private String stepenStudija;
    private LocalDate datumSertifikacije;
    private int fakultetID;
    private int oblastPsih;
    private String username;
    private String lozinka;


    public Psihoterapeut(String ime, String prezime, String JMBG, LocalDate datumRodjenja, String prebivaliste, String email, String brojTelefona, String stepenStudija, LocalDate datumSertifikacije, int fakultetID, int oblastPsih) {
        this.ime = ime;
        this.prezime = prezime;
        this.JMBG = JMBG;
        this.datumRodjenja = datumRodjenja;
        this.prebivaliste = prebivaliste;
        this.email = email;
        this.brojTelefona = brojTelefona;
        this.stepenStudija = stepenStudija;
        this.datumSertifikacije = datumSertifikacije;
        this.fakultetID = fakultetID;
        this.oblastPsih = oblastPsih;
    }

    public String getIme() {
        return ime;
    }

    public String getPrezime() {
        return prezime;
    }

    public String getJMBG() {
        return JMBG;
    }

    public LocalDate getDatumRodjenja() {
        return datumRodjenja;
    }

    public String getPrebivaliste() {
        return prebivaliste;
    }

    public String getEmail() {
        return email;
    }

    public String getBrojTelefona() {
        return brojTelefona;
    }

    public String getStepenStudija() {
        return stepenStudija;
    }

    public LocalDate getDatumSertifikacije() {
        return datumSertifikacije;
    }

    public int getFakultetID() {
        return fakultetID;
    }

    public int getOblastPsih() {
        return oblastPsih;
    }

    public String getUsername() {
        return username;
    }

    public String getLozinka() {
        return lozinka;
    }

    public void setLozinka(String lozinka) {
        this.lozinka = lozinka;
    }

    public void setIme(String ime) {
        this.ime = ime;
    }

    public void setPrezime(String prezime) {
        this.prezime = prezime;
    }

    public void setJMBG(String JMBG) {
        this.JMBG = JMBG;
    }

    public void setDatumRodjenja(LocalDate datumRodjenja) {
        this.datumRodjenja = datumRodjenja;
    }

    public void setPrebivaliste(String prebivaliste) {
        this.prebivaliste = prebivaliste;
    }

    public void setBrojTelefona(String brojTelefona) {
        this.brojTelefona = brojTelefona;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setStepenStudija(String stepenStudija) {
        this.stepenStudija = stepenStudija;
    }

    public void setDatumSertifikacije(LocalDate datumSertifikacije) {
        this.datumSertifikacije = datumSertifikacije;
    }

    public void setFakultetID(int fakultetID) {
        this.fakultetID = fakultetID;
    }

    public void setOblastPsih(int oblastPsih) {
        this.oblastPsih = oblastPsih;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}

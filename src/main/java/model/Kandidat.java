package model;

import java.time.LocalDate;

public class Kandidat {
    private int id;
    private String ime;
    private String prezime;
    private String JMBG;
    private LocalDate datumRodjenja;
    private String prebivaliste;
    private String email;
    private String telefon;
    private String stepenStudija;
    private int fakultetID;

    public Kandidat(int id, String ime, String prezime, String JMBG, LocalDate datumRodjenja, String prebivaliste, String email, String telefon, String stepenStudija, int fakultetID) {
        this.id = id;
        this.ime = ime;
        this.prezime = prezime;
        this.JMBG = JMBG;
        this.datumRodjenja = datumRodjenja;
        this.prebivaliste = prebivaliste;
        this.email = email;
        this.telefon = telefon;
        this.stepenStudija = stepenStudija;
        this.fakultetID = fakultetID;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getIme() {
        return ime;
    }

    public void setIme(String ime) {
        this.ime = ime;
    }

    public String getPrezime() {
        return prezime;
    }

    public void setPrezime(String prezime) {
        this.prezime = prezime;
    }

    public String getJMBG() {
        return JMBG;
    }

    public void setJMBG(String JMBG) {
        this.JMBG = JMBG;
    }

    public LocalDate getDatumRodjenja() {
        return datumRodjenja;
    }

    public void setDatumRodjenja(LocalDate datumRodjenja) {
        this.datumRodjenja = datumRodjenja;
    }

    public String getPrebivaliste() {
        return prebivaliste;
    }

    public void setPrebivaliste(String prebivaliste) {
        this.prebivaliste = prebivaliste;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefon() {
        return telefon;
    }

    public void setTelefon(String telefon) {
        this.telefon = telefon;
    }

    public String getStepenStudija() {
        return stepenStudija;
    }

    public void setStepenStudija(String stepenStudija) {
        this.stepenStudija = stepenStudija;
    }

    public int getFakultetID() {
        return fakultetID;
    }

    public void setFakultetID(int fakultetID) {
        this.fakultetID = fakultetID;
    }
}

package model;

import java.time.LocalDate;

public class Klijent {
    private int id;
    private String ime;
    private String prezime;
    private LocalDate datum;
    private String pol;
    private String email;
    private String telefon;
    private String opisProblema;
    private String status;
    private int prijavaId;

    public Klijent(int id, String ime, String prezime, LocalDate datum, String pol, String email, String telefon, String opisProblema, String status, int prijavaId) {
        this.id = id;
        this.ime = ime;
        this.prezime = prezime;
        this.datum = datum;
        this.pol = pol;
        this.email = email;
        this.telefon = telefon;
        this.opisProblema = opisProblema;
        this.status = status;
        this.prijavaId = prijavaId;
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

    public LocalDate getDatum() {
        return datum;
    }

    public void setDatum(LocalDate datum) {
        this.datum = datum;
    }

    public String getPol() {
        return pol;
    }

    public void setPol(String pol) {
        this.pol = pol;
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

    public String getOpisProblema() {
        return opisProblema;
    }

    public void setOpisProblema(String opisProblema) {
        this.opisProblema = opisProblema;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getPrijavaId() {
        return prijavaId;
    }

    public void setPrijavaId(int prijavaId) {
        this.prijavaId = prijavaId;
    }
}

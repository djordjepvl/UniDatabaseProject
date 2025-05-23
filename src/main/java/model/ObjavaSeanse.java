package model;

import java.time.LocalDate;

public class ObjavaSeanse {
    private int id;
    private String komeObjavljeno;
    private LocalDate datum;
    private String sadrzaj;
    private Seansa seansa;

    public ObjavaSeanse(int id, String komeObjavljeno, LocalDate datum, String sadrzaj, Seansa seansa) {
        this.id = id;
        this.komeObjavljeno = komeObjavljeno;
        this.datum = datum;
        this.sadrzaj = sadrzaj;
        this.seansa = seansa;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getKomeObjavljeno() {
        return komeObjavljeno;
    }

    public void setKomeObjavljeno(String komeObjavljeno) {
        this.komeObjavljeno = komeObjavljeno;
    }

    public LocalDate getDatum() {
        return datum;
    }

    public void setDatum(LocalDate datum) {
        this.datum = datum;
    }

    public String getSadrzaj() {
        return sadrzaj;
    }

    public void setSadrzaj(String sadrzaj) {
        this.sadrzaj = sadrzaj;
    }

    public Seansa getSeansa() {
        return seansa;
    }

    public void setSeansa(Seansa seansa) {
        this.seansa = seansa;
    }

    @Override
    public String toString() {
        return this.komeObjavljeno + "\n " + this.datum + "\n " + this.sadrzaj;
    }
}

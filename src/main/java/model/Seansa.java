package model;

import java.time.LocalDate;
import java.time.LocalDateTime;

public class Seansa {
    private int id;
    private int trajanjeMinuti;
    private LocalDateTime pocetak;
    private String beleske;
    private int cenaSeanseDin;
    private LocalDate datumPromeneCene;
    private int kandidatId;
    private Psihoterapeut psihoterapeut;
    private Klijent klijent;
    private int centarId;

    public Seansa(int id, int trajanjeMinuti, LocalDateTime pocetak, String beleske, int cenaSeanseDin, LocalDate datumPromeneCene, int kandidatId, Psihoterapeut psihoterapeut, Klijent klijent, int centarId) {
        this.id = id;
        this.trajanjeMinuti = trajanjeMinuti;
        this.pocetak = pocetak;
        this.beleske = beleske;
        this.cenaSeanseDin = cenaSeanseDin;
        this.datumPromeneCene = datumPromeneCene;
        this.kandidatId = kandidatId;
        this.psihoterapeut = psihoterapeut;
        this.klijent = klijent;
        this.centarId = centarId;
    }

    public Seansa(int id, int trajanjeMinuti, LocalDateTime pocetak, String beleske, int cenaSeanseDin, LocalDate datumPromeneCene, Klijent klijent, Psihoterapeut psihoterapeut) {
        this.id = id;
        this.trajanjeMinuti = trajanjeMinuti;
        this.pocetak = pocetak;
        this.beleske = beleske;
        this.cenaSeanseDin = cenaSeanseDin;
        this.datumPromeneCene = datumPromeneCene;
        this.klijent = klijent;
        this.psihoterapeut = psihoterapeut;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getTrajanjeMinuti() {
        return trajanjeMinuti;
    }

    public void setTrajanjeMinuti(int trajanjeMinuti) {
        this.trajanjeMinuti = trajanjeMinuti;
    }

    public LocalDateTime getPocetak() {
        return pocetak;
    }

    public void setPocetak(LocalDateTime pocetak) {
        this.pocetak = pocetak;
    }

    public String getBeleske() {
        return beleske;
    }

    public void setBeleske(String beleske) {
        this.beleske = beleske;
    }

    public int getCenaSeanseDin() {
        return cenaSeanseDin;
    }

    public void setCenaSeanseDin(int cenaSeanseDin) {
        this.cenaSeanseDin = cenaSeanseDin;
    }

    public LocalDate getDatumPromeneCene() {
        return datumPromeneCene;
    }

    public void setDatumPromeneCene(LocalDate datumPromeneCene) {
        this.datumPromeneCene = datumPromeneCene;
    }

    public int getKandidatId() {
        return kandidatId;
    }

    public void setKandidatId(int kandidatId) {
        this.kandidatId = kandidatId;
    }

    public Psihoterapeut getPsihoterapeut() {
        return psihoterapeut;
    }

    public void setPsihoterapeutId(Psihoterapeut psihoterapeutId) {
        this.psihoterapeut = psihoterapeut;
    }

    public Klijent getKlijent() {
        return klijent;
    }

    public void setKlijent(Klijent klijentId) {
        this.klijent = klijentId;
    }

    public int getCentarId() {
        return centarId;
    }

    public void setCentarId(int centarId) {
        this.centarId = centarId;
    }
}

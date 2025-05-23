-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2025-05-14 09:19:31.174

USE psihoterapija;
-- tables
-- Table: centar_za_obuku_psihoterapeuta
CREATE TABLE centar_za_obuku_psihoterapeuta (
    centar_id int  NOT NULL,
    naziv varchar(60)  NOT NULL,
    imejl_adresa varchar(30)  NOT NULL,
    broj_telefona varchar(30)  NOT NULL,
    postanska_adresa varchar(150)  NOT NULL,
    CONSTRAINT centar_za_obuku_psihoterapeuta_pk PRIMARY KEY (centar_id)
);

-- Table: fakultet
CREATE TABLE fakultet (
    fakultet_id int  NOT NULL,
    naziv varchar(60)  NOT NULL,
    univerzitet_id int  NOT NULL,
    CONSTRAINT fakultet_pk PRIMARY KEY (fakultet_id)
);

-- Table: fakultet_oblast_fakulteta
CREATE TABLE fakultet_oblast_fakulteta (
    fakultet_id int  NOT NULL,
    f_oblast_id int  NOT NULL,
    CONSTRAINT fakultet_oblast_fakulteta_pk PRIMARY KEY (fakultet_id,f_oblast_id)
);

-- Table: kandidat
CREATE TABLE kandidat (
    kandidat_id int  NOT NULL,
    ime varchar(60)  NOT NULL,
    prezime varchar(60)  NOT NULL,
    JMBG varchar(30)  NOT NULL,
    datum_rodjenja date  NOT NULL,
    prebivaliste varchar(90)  NOT NULL,
    imejl_adresa varchar(90)  NOT NULL,
    broj_telefona varchar(30)  NOT NULL,
    stepen_studija varchar(30)  NOT NULL,
    fakultet_id int  NOT NULL,
    CONSTRAINT kandidat_pk PRIMARY KEY (kandidat_id)
);

-- Table: klijent
CREATE TABLE klijent (
    klijent_id int  NOT NULL,
    ime varchar(60)  NOT NULL,
    prezime varchar(60)  NOT NULL,
    datum_rodjenja date  NOT NULL,
    pol varchar(30)  NOT NULL,
    imejl_adresa varchar(30)  NOT NULL,
    broj_telefona varchar(30)  NOT NULL,
    opis_problema varchar(450)  NOT NULL,
    status varchar(30)  NOT NULL,
    prijava_id int  NOT NULL,
    CONSTRAINT klijent_pk PRIMARY KEY (klijent_id)
);

-- Table: objava_seanse
CREATE TABLE objava_seanse (
    objava_id int  NOT NULL,
    kome_objavljeno varchar(300)  NOT NULL,
    datum_objave date  NOT NULL,
    sadrzaj varchar(3000)  NOT NULL,
    seansa_id int  NOT NULL,
    CONSTRAINT objava_seanse_pk PRIMARY KEY (objava_id)
);

-- Table: oblast_fakulteta
CREATE TABLE oblast_fakulteta (
    f_oblast_id int  NOT NULL,
    naziv varchar(60)  NOT NULL,
    usmerenje_id int  NOT NULL,
    CONSTRAINT oblast_fakulteta_pk PRIMARY KEY (f_oblast_id)
);

-- Table: oblast_psihoterapije
CREATE TABLE oblast_psihoterapije (
    p_oblast_id int  NOT NULL,
    naziv varchar(60)  NOT NULL,
    CONSTRAINT oblast_psihoterapije_pk PRIMARY KEY (p_oblast_id)
);

-- Table: placanje
CREATE TABLE placanje (
    placanje_id int  NOT NULL,
    prva_rata boolean  NOT NULL,
    druga_rata boolean  NOT NULL,
    rok_za_drugu_ratu date  NULL,
    nacin_placanja varchar(30)  NOT NULL,
    uplacen_iznos_din decimal(10,2)  NOT NULL,
    seansa_id int  NOT NULL,
    valuta_id int  NOT NULL,
    CONSTRAINT placanje_pk PRIMARY KEY (placanje_id)
);

-- Table: prijava_klijenta
CREATE TABLE prijava_klijenta (
    prijava_id int  NOT NULL,
    ime varchar(60)  NOT NULL,
    prezime varchar(60)  NOT NULL,
    datum_rodjenja date  NOT NULL,
    pol varchar(30)  NOT NULL,
    imejl_adresa varchar(30)  NOT NULL,
    broj_telefona varchar(30)  NOT NULL,
    prvi_put_kod_psihoterapeuta boolean  NOT NULL,
    opis_problema varchar(450)  NOT NULL,
    CONSTRAINT prijava_klijenta_pk PRIMARY KEY (prijava_id)
);

-- Table: psiholoski_test
CREATE TABLE psiholoski_test (
    test_id int  NOT NULL,
    naziv varchar(60)  NOT NULL,
    cena_din int  NOT NULL,
    p_oblast_id int  NOT NULL,
    CONSTRAINT psiholoski_test_pk PRIMARY KEY (test_id)
);

-- Table: psihoterapeut
CREATE TABLE psihoterapeut (
    psihoterapeut_id int  NOT NULL,
    ime varchar(60)  NOT NULL,
    prezime varchar(60)  NOT NULL,
    JMBG varchar(30)  NOT NULL,
    datum_rodjenja date  NOT NULL,
    prebivaliste varchar(90)  NOT NULL,
    imejl_adresa varchar(90)  NOT NULL,
    broj_telefona varchar(30)  NOT NULL,
    stepen_studija varchar(30)  NOT NULL,
    datum_sertifikacije date  NOT NULL,
    fakultet_id int  NOT NULL,
    p_oblast_id int  NOT NULL,
    username varchar(30) NULL UNIQUE,
    lozinka varchar(30) NULL,
    CONSTRAINT psihoterapeut_pk PRIMARY KEY (psihoterapeut_id)
);

-- Table: rezultat_testa
CREATE TABLE rezultat_testa (
    rezultat_id int  NOT NULL,
    opis_rezultata varchar(450)  NOT NULL,
    seansa_id int  NOT NULL,
    test_id int  NOT NULL,
    CONSTRAINT rezultat_testa_pk PRIMARY KEY (rezultat_id)
);

-- Table: seansa
CREATE TABLE seansa (
    seansa_id int  NOT NULL,
    trajanje_minuti int  NOT NULL,
    pocetak datetime  NOT NULL,
    beleske varchar(3000)  NULL,
    cena_seanse_din int  NULL,
    datum_promene_cene date  NULL,
    kandidat_id int NULL,
    psihoterapeut_id int  NOT NULL,
    klijent_id int  NOT NULL,
    centar_id int  NOT NULL,
    CONSTRAINT seansa_pk PRIMARY KEY (seansa_id)
);

-- Table: strana_valuta
CREATE TABLE strana_valuta (
    valuta_id int  NOT NULL,
    skracen_naziv varchar(3)  NOT NULL,
    pun_naziv varchar(60)  NOT NULL,
    CONSTRAINT strana_valuta_pk PRIMARY KEY (valuta_id)
);

-- Table: strana_valuta_u_din
CREATE TABLE strana_valuta_u_din (
    kurs_id int  NOT NULL,
    vrednost_u_din int  NOT NULL,
    datum_promene_vrednosti date  NOT NULL,
    valuta_id int  NOT NULL,
    CONSTRAINT strana_valuta_u_din_pk PRIMARY KEY (kurs_id)
);

-- Table: univerzitet
CREATE TABLE univerzitet (
    univerzitet_id int  NOT NULL,
    naziv varchar(60)  NOT NULL,
    usmerenje_id int  NOT NULL,
    CONSTRAINT univerzitet_pk PRIMARY KEY (univerzitet_id)
);

-- Table: uze_usmerenje
CREATE TABLE uze_usmerenje (
    usmerenje_id int  NOT NULL,
    naziv varchar(60)  NOT NULL,
    CONSTRAINT uze_usmerenje_pk PRIMARY KEY (usmerenje_id)
);

-- foreign keys
-- Reference: fakultet_oblast_fakulteta_fakultet (table: fakultet_oblast_fakulteta)
ALTER TABLE fakultet_oblast_fakulteta ADD CONSTRAINT fakultet_oblast_fakulteta_fakultet FOREIGN KEY fakultet_oblast_fakulteta_fakultet (fakultet_id)
    REFERENCES fakultet (fakultet_id);

-- Reference: fakultet_oblast_fakulteta_oblast_fakulteta (table: fakultet_oblast_fakulteta)
ALTER TABLE fakultet_oblast_fakulteta ADD CONSTRAINT fakultet_oblast_fakulteta_oblast_fakulteta FOREIGN KEY fakultet_oblast_fakulteta_oblast_fakulteta (f_oblast_id)
    REFERENCES oblast_fakulteta (f_oblast_id);

-- Reference: fakultet_univerzitet (table: fakultet)
ALTER TABLE fakultet ADD CONSTRAINT fakultet_univerzitet FOREIGN KEY fakultet_univerzitet (univerzitet_id)
    REFERENCES univerzitet (univerzitet_id);

-- Reference: kandidat_fakultet (table: kandidat)
ALTER TABLE kandidat ADD CONSTRAINT kandidat_fakultet FOREIGN KEY kandidat_fakultet (fakultet_id)
    REFERENCES fakultet (fakultet_id);

-- Reference: klijent_prijava_klijenta (table: klijent)
ALTER TABLE klijent ADD CONSTRAINT klijent_prijava_klijenta FOREIGN KEY klijent_prijava_klijenta (prijava_id)
    REFERENCES prijava_klijenta (prijava_id);

-- Reference: objava_seansa (table: objava_seanse)
ALTER TABLE objava_seanse ADD CONSTRAINT objava_seansa FOREIGN KEY objava_seansa (seansa_id)
    REFERENCES seansa (seansa_id);

-- Reference: oblast_uze_usmerenje (table: oblast_fakulteta)
ALTER TABLE oblast_fakulteta ADD CONSTRAINT oblast_uze_usmerenje FOREIGN KEY oblast_uze_usmerenje (usmerenje_id)
    REFERENCES uze_usmerenje (usmerenje_id);

-- Reference: placanje_seansa (table: placanje)
ALTER TABLE placanje ADD CONSTRAINT placanje_seansa FOREIGN KEY placanje_seansa (seansa_id)
    REFERENCES seansa (seansa_id);

-- Reference: placanje_strana_valuta (table: placanje)
ALTER TABLE placanje ADD CONSTRAINT placanje_strana_valuta FOREIGN KEY placanje_strana_valuta (valuta_id)
    REFERENCES strana_valuta (valuta_id);

-- Reference: psiholoski_test_oblast_psihoterapije (table: psiholoski_test)
ALTER TABLE psiholoski_test ADD CONSTRAINT psiholoski_test_oblast_psihoterapije FOREIGN KEY psiholoski_test_oblast_psihoterapije (p_oblast_id)
    REFERENCES oblast_psihoterapije (p_oblast_id);

-- Reference: psihoterapeut_fakultet (table: psihoterapeut)
ALTER TABLE psihoterapeut ADD CONSTRAINT psihoterapeut_fakultet FOREIGN KEY psihoterapeut_fakultet (fakultet_id)
    REFERENCES fakultet (fakultet_id);

-- Reference: psihoterapeut_oblast_psihoterapije (table: psihoterapeut)
ALTER TABLE psihoterapeut ADD CONSTRAINT psihoterapeut_oblast_psihoterapije FOREIGN KEY psihoterapeut_oblast_psihoterapije (p_oblast_id)
    REFERENCES oblast_psihoterapije (p_oblast_id);

-- Reference: rezultat_testa_psiholoski_test (table: rezultat_testa)
ALTER TABLE rezultat_testa ADD CONSTRAINT rezultat_testa_psiholoski_test FOREIGN KEY rezultat_testa_psiholoski_test (test_id)
    REFERENCES psiholoski_test (test_id);

-- Reference: rezultat_testa_seansa (table: rezultat_testa)
ALTER TABLE rezultat_testa ADD CONSTRAINT rezultat_testa_seansa FOREIGN KEY rezultat_testa_seansa (seansa_id)
    REFERENCES seansa (seansa_id);

-- Reference: seansa_centar_za_obuku_psihoterapeuta (table: seansa)
ALTER TABLE seansa ADD CONSTRAINT seansa_centar_za_obuku_psihoterapeuta FOREIGN KEY seansa_centar_za_obuku_psihoterapeuta (centar_id)
    REFERENCES centar_za_obuku_psihoterapeuta (centar_id);

-- Reference: seansa_kandidat (table: seansa)
ALTER TABLE seansa ADD CONSTRAINT seansa_kandidat FOREIGN KEY seansa_kandidat (kandidat_id)
    REFERENCES kandidat (kandidat_id);

-- Reference: seansa_klijent (table: seansa)
ALTER TABLE seansa ADD CONSTRAINT seansa_klijent FOREIGN KEY seansa_klijent (klijent_id)
    REFERENCES klijent (klijent_id);

-- Reference: seansa_psihoterapeut (table: seansa)
ALTER TABLE seansa ADD CONSTRAINT seansa_psihoterapeut FOREIGN KEY seansa_psihoterapeut (psihoterapeut_id)
    REFERENCES psihoterapeut (psihoterapeut_id);

-- Reference: strana_valuta_u_din_strana_valuta (table: strana_valuta_u_din)
ALTER TABLE strana_valuta_u_din ADD CONSTRAINT strana_valuta_u_din_strana_valuta FOREIGN KEY strana_valuta_u_din_strana_valuta (valuta_id)
    REFERENCES strana_valuta (valuta_id);

-- Reference: univerzitet_uze_usmerenje (table: univerzitet)
ALTER TABLE univerzitet ADD CONSTRAINT univerzitet_uze_usmerenje FOREIGN KEY univerzitet_uze_usmerenje (usmerenje_id)
    REFERENCES uze_usmerenje (usmerenje_id);

-- End of file.


-- fill.sql

-- Insertion Order:
-- 1. uze_usmerenje
-- 2. oblast_psihoterapije
-- 3. strana_valuta
-- 4. centar_za_obuku_psihoterapeuta
-- 5. prijava_klijenta
-- 6. univerzitet
-- 7. oblast_fakulteta
-- 8. fakultet
-- 9. kandidat
-- 10. klijent
-- 11. psihoterapeut
-- 12. seansa
-- 13. fakultet_oblast_fakulteta
-- 14. strana_valuta_u_din
-- 15. placanje
-- 16. psiholoski_test
-- 17. rezultat_testa
-- 18. objava_seanse

-- 1. uze_usmerenje
INSERT INTO uze_usmerenje (usmerenje_id, naziv) VALUES
(1, 'Kognitivno-bihejvioralna terapija'),
(2, 'Psihoanaliza'),
(3, 'Geštalt terapija'),
(4, 'Porodična terapija'),
(5, 'Art terapija'),
(6, 'Logoterapija'),
(7, 'Egzistencijalna terapija'),
(8, 'Interpersonalna terapija'),
(9, 'Realitetna terapija'),
(10, 'EMDR terapija');

-- 2. oblast_psihoterapije
INSERT INTO oblast_psihoterapije (p_oblast_id, naziv) VALUES
(1, 'Anksiozni poremećaji'),
(2, 'Depresivni poremećaji'),
(3, 'Poremećaji ličnosti'),
(4, 'Trauma'),
(5, 'Zavisnosti'),
(6, 'Poremećaji ishrane'),
(7, 'Bračni problemi'),
(8, 'Dečja psihoterapija'),
(9, 'Gubitak i žalost'),
(10, 'Psihosomatika');

-- 3. strana_valuta
INSERT INTO strana_valuta (valuta_id, skracen_naziv, pun_naziv) VALUES
(1, 'EUR', 'Evro'),
(2, 'USD', 'Američki dolar'),
(3, 'GBP', 'Britanska funta');

-- 4. centar_za_obuku_psihoterapeuta
INSERT INTO centar_za_obuku_psihoterapeuta (centar_id, naziv, imejl_adresa, broj_telefona, postanska_adresa) VALUES
(1, 'Centar Beograd', 'beograd@centar.rs', '0111234567', 'Glavna 1, Beograd'),
(2, 'Centar Novi Sad', 'novisad@centar.rs', '0219876543', 'Sporedna 2, Novi Sad'),
(3, 'Centar Niš', 'nis@centar.rs', '0185554444', 'Ulica 3, Niš'),
(4, 'Centar Kragujevac', 'kragujevac@centar.rs', '0341112222', 'Trg 4, Kragujevac'),
(5, 'Centar Subotica', 'subotica@centar.rs', '0243213213', 'Bulevar 5, Subotica'),
(6, 'Centar Zrenjanin', 'zrenjanin@centar.rs', '0239998888', 'Aleja 6, Zrenjanin'),
(7, 'Centar Čačak', 'cacak@centar.rs', '0327771111', 'Obilaznica 7, Čačak'),
(8, 'Centar Kraljevo', 'kraljevo@centar.rs', '0368882222', 'Most 8, Kraljevo'),
(9, 'Centar Leskovac', 'leskovac@centar.rs', '0164449999', 'Reka 9, Leskovac'),
(10, 'Centar Sremska Mitrovica', 'mitrovica@centar.rs', '0226663333', 'Šetalište 10, Sremska Mitrovica');

-- 5. prijava_klijenta
INSERT INTO prijava_klijenta (prijava_id, ime, prezime, datum_rodjenja, pol, imejl_adresa, broj_telefona, prvi_put_kod_psihoterapeuta, opis_problema) VALUES
(1, 'Ana', 'Petrović', '1990-05-15', 'Ženski', 'ana.petrovic@email.com', '0641112222', 1, 'Anksioznost i stres'),
(2, 'Marko', 'Jovanović', '1985-10-20', 'Muški', 'marko.jovanovic@email.com', '0653334444', 0, 'Depresija'),
(3, 'Jelena', 'Stojanović', '1992-03-01', 'Ženski', 'jelena.stojanovic@email.com', '0635556666', 1, 'Poremećaji spavanja'),
(4, 'Nikola', 'Tomić', '1988-07-10', 'Muški', 'nikola.tomic@email.com', '0627778888', 0, 'Problemi u vezi'),
(5, 'Marija', 'Kostić', '1995-12-05', 'Ženski', 'marija.kostic@email.com', '0619990000', 1, 'Niski nivo samopouzdanja'),
(6, 'Lazar', 'Nikolić', '1983-02-28', 'Muški', 'lazar.nikolic@email.com', '0602221111', 0, 'Zavisnost od interneta'),
(7, 'Sofija', 'Đorđević', '1998-09-18', 'Ženski', 'sofija.djordjevic@email.com', '0694443333', 1, 'Panični napadi'),
(8, 'Aleksandar', 'Popović', '1986-04-22', 'Muški', 'aleksandar.popovic@email.com', '0686665555', 0, 'Trauma iz detinjstva'),
(9, 'Teodora', 'Milošević', '1991-11-30', 'Ženski', 'teodora.milosevic@email.com', '0678887777', 0, 'Poremećaji ishrane'),
(10, 'Filip', 'Simić', '1984-06-08', 'Muški', 'filip.simic@email.com', '0661119999', 0, 'Stres na poslu');

-- 6. univerzitet
INSERT INTO univerzitet (univerzitet_id, naziv, usmerenje_id) VALUES
(1, 'Univerzitet u Beogradu', 1),
(2, 'Univerzitet u Novom Sadu', 2),
(3, 'Univerzitet u Nišu', 3),
(4, 'Univerzitet u Kragujevcu', 4),
(5, 'Univerzitet u Subotici', 5),
(6, 'Univerzitet u Zrenjaninu', 6),
(7, 'Univerzitet u Čačku', 7),
(8, 'Univerzitet u Kraljevu', 8),
(9, 'Univerzitet u Leskovcu', 9),
(10, 'Univerzitet u Sremskoj Mitrovici', 10);

-- 7. oblast_fakulteta
INSERT INTO oblast_fakulteta (f_oblast_id, naziv, usmerenje_id) VALUES
(1, 'Psihologija', 1),
(2, 'Sociologija', 2),
(3, 'Filozofija', 3),
(4, 'Pedagogija', 4),
(5, 'Specijalna edukacija i rehabilitacija', 5),
(6, 'Socijalni rad', 6),
(7, 'Andragogija', 7),
(8, 'Komunikologija', 8),
(9, 'Antropologija', 9),
(10, 'Defektologija', 10);

-- 8. fakultet
INSERT INTO fakultet (fakultet_id, naziv, univerzitet_id) VALUES
(1, 'Filozofski fakultet', 1),
(2, 'Fakultet za medije i komunikacije', 1),
(3, 'Fakultet političkih nauka', 1),
(4, 'Filozofski fakultet', 2),
(5, 'Fakultet društvenih nauka', 3),
(6, 'Pedagoški fakultet', 4),
(7, 'Učiteljski fakultet', 5),
(8, 'Fakultet za specijalnu edukaciju i rehabilitaciju', 6),
(9, 'Fakultet za primenjenu ekologiju Futura', 7),
(10, 'Fakultet za kulturu i medije', 8);

-- 9. kandidat
INSERT INTO kandidat (kandidat_id, ime, prezime, JMBG, datum_rodjenja, prebivaliste, imejl_adresa, broj_telefona, stepen_studija, fakultet_id) VALUES
(1, 'Petar', 'Petrović', '1234567890123', '1999-01-20', 'Beograd, Bulevar Kralja Aleksandra 1', 'petar.petrovic@example.com', '0611111111', 'Master', 1),
(2, 'Ana', 'Jovanović', '2345678901234', '2000-02-25', 'Novi Sad, Futoška 2', 'ana.jovanovic@example.com', '0622222222', 'Osnovne', 2),
(3, 'Marko', 'Stojanović', '3456789012345', '1998-03-10', 'Niš, Vizantijski bulevar 3', 'marko.stojanovic@example.com', '0633333333', 'Doktorske', 3),
(4, 'Jelena', 'Tomić', '4567890123456', '2001-04-15', 'Kragujevac, Kralja Petra I 4', 'jelena.tomic@example.com', '0644444444', 'Master', 4),
(5, 'Nikola', 'Kostić', '5678901234567', '1997-05-20', 'Subotica, Maksima Gorkog 5', 'nikola.kostic@example.com', '0655555555', 'Osnovne', 5),
(6, 'Marija', 'Nikolić', '6789012345678', '2002-06-25', 'Zrenjanin, Kralja Aleksandra I Karađorđevića 6', 'marija.nikolic@example.com', '0666666666', 'Doktorske', 6),
(7, 'Lazar', 'Đorđević', '7890123456789', '1996-07-10', 'Čačak, Župana Stracimira 7', 'lazar.djordjevic@example.com', '0677777777', 'Master', 7),
(8, 'Sofija', 'Popović', '8901234567890', '2003-08-15', 'Kraljevo, Trg Svetog Save 8', 'sofija.popovic@example.com', '0688888888', 'Osnovne', 8),
(9, 'Aleksandar', 'Milošević', '9012345678901', '1995-09-20', 'Leskovac, Bulevar Oslobođenja 9', 'aleksandar.milosevic@example.com', '0699999999', 'Doktorske', 9),
(10, 'Teodora', 'Simić', '0123456789012', '2004-10-25', 'Sremska Mitrovica, Kralja Petra I 10', 'teodora.simic@example.com', '0600000000', 'Master', 10);

-- 10. klijent
INSERT INTO klijent (klijent_id, ime, prezime, datum_rodjenja, pol, imejl_adresa, broj_telefona, opis_problema, status, prijava_id) VALUES
(1, 'Ana', 'Petrović', '1990-05-15', 'Ženski', 'ana.petrovic@email.com', '0641112222', 'Anksioznost i stres', 'Aktivan', 1),
(2, 'Marko', 'Jovanović', '1985-10-20', 'Muški', 'marko.jovanovic@email.com', '0653334444', 'Depresija', 'Aktivan', 2),
(3, 'Jelena', 'Stojanović', '1992-03-01', 'Ženski', 'jelena.stojanovic@email.com', '0635556666', 'Poremećaji spavanja', 'Neaktivan', 3),
(4, 'Nikola', 'Tomić', '1988-07-10', 'Muški', 'nikola.tomic@email.com', '0627778888', 'Problemi u vezi', 'Aktivan', 4),
(5, 'Marija', 'Kostić', '1995-12-05', 'Ženski', 'marija.kostic@email.com', '0619990000', 'Niski nivo samopouzdanja', 'Aktivan', 5),
(6, 'Lazar', 'Nikolić', '1983-02-28', 'Muški', 'lazar.nikolic@email.com', '0602221111', 'Zavisnost od interneta', 'Neaktivan', 6),
(7, 'Sofija', 'Đorđević', '1998-09-18', 'Ženski', 'sofija.djordjevic@email.com', '0694443333', 'Panični napadi', 'Aktivan', 7),
(8, 'Aleksandar', 'Popović', '1986-04-22', 'Muški', 'aleksandar.popovic@email.com', '0686665555', 'Trauma iz detinjstva', 'Aktivan', 8),
(9, 'Teodora', 'Milošević', '1991-11-30', 'Ženski', 'teodora.milosevic@email.com', '0678887777', 'Poremećaji ishrane', 'Neaktivan', 9),
(10, 'Filip', 'Simić', '1984-06-08', 'Muški', 'filip.simic@email.com', '0661119999', 'Stres na poslu', 'Aktivan', 10);

-- 11. psihoterapeut
INSERT INTO psihoterapeut (psihoterapeut_id, ime, prezime, JMBG, datum_rodjenja, prebivaliste, imejl_adresa, broj_telefona, stepen_studija, datum_sertifikacije, fakultet_id, p_oblast_id) VALUES
(1, 'Dragan', 'Dragić', '1112223334445', '1975-08-12', 'Beograd, Nemanjina 11', 'dragan.dragic@example.com', '0612345678', 'Doktorske', '2010-01-15', 1, 1),
(2, 'Milica', 'Milić', '2223334445556', '1980-03-20', 'Novi Sad, Bulevar Oslobođenja 12', 'milica.milic@example.com', '0623456789', 'Master', '2012-05-20', 2, 2),
(3, 'Ivan', 'Ivanić', '3334445556667', '1978-11-05', 'Niš, Vožda Karađorđa 13', 'ivan.ivanic@example.com', '0634567890', 'Doktorske', '2011-09-10', 3, 3),
(4, 'Sanja', 'Sanjić', '4445556667778', '1982-06-18', 'Kragujevac, Kralja Aleksandra I 14', 'sanja.sanjic@example.com', '0645678901', 'Master', '2013-12-22', 4, 4),
(5, 'Goran', 'Goranović', '5556667778889', '1976-01-25', 'Subotica, Štrosmajerova 15', 'goran.goranovic@example.com', '0656789012', 'Doktorske', '2009-04-01', 5, 5),
(6, 'Tanja', 'Tanjić', '6667778889990', '1981-09-01', 'Zrenjanin, Pupinova 16', 'tanja.tanjic@example.com', '0667890123', 'Master', '2014-08-05', 6, 6),
(7, 'Bojan', 'Bojanić', '7778889990001', '1979-04-10', 'Čačak, Gospodar Jovanova 17', 'bojan.bojanic@example.com', '0678901234', 'Doktorske', '2011-02-28', 7, 7),
(8, 'Maja', 'Majić', '8889990001112', '1983-12-08', 'Kraljevo, Oktobarskih žrtava 18', 'maja.majic@example.com', '0689012345', 'Master', '2015-06-10', 8, 8),
(9, 'Nenad', 'Nenadić', '9990001112223', '1977-07-22', 'Leskovac, Masarikova 19', 'nenad.nenadic@example.com', '0690123456', 'Doktorske', '2010-10-30', 9, 9),
(10, 'Jovana', 'Jovanić', '0001112223334', '1984-02-15', 'Sremska Mitrovica, Svetog Dimitrija 20', 'jovana.jovanic@example.com', '0601234567', 'Master', '2016-03-12', 10, 10);

-- 12. seansa
--  Need logic to track first session for "first session free"
--  This is a simplified version. You'll need to enhance the logic
--  for real-world scenarios.
INSERT INTO seansa (seansa_id, trajanje_minuti, pocetak, beleske, cena_seanse_din, datum_promene_cene, kandidat_id, psihoterapeut_id, klijent_id, centar_id) VALUES
(1, 60, '2024-01-10 10:00:00', 'Uvodni razgovor', 0, '2024-01-10', 1, 1, 1, 1),  -- First session free
(2, 50, '2024-01-12 11:00:00', 'Terapija depresije', 2500, '2024-01-12', 2, 2, 2, 2),
(3, 60, '2024-01-15 12:00:00', 'Anksioznost', 0, '2024-01-15', 3, 3, 3, 3),  -- First session free
(4, 45, '2024-01-18 13:00:00', 'Problemi u vezi', 2000, '2024-01-18', 4, 4, 4, 4),
(5, 50, '2024-01-20 14:00:00', 'Samopouzdanje', 0, '2024-01-20', 5, 5, 5, 5),  -- First session free
(6, 60, '2024-01-22 15:00:00', 'Zavisnost', 3000, '2024-01-22', 6, 6, 6, 6),
(7, 45, '2024-01-25 16:00:00', 'Panični napadi', 0, '2024-01-25', 7, 7, 7, 7),  -- First session free
(8, 50, '2024-01-28 17:00:00', 'Trauma', 2800, '2024-01-28', 8, 8, 8, 8),
(9, 60, '2024-01-30 18:00:00', 'Ishrana', 0, '2024-01-30', 9, 9, 9, 9),  -- First session free
(10, 45, '2024-02-02 09:00:00', 'Stres', 2200, '2024-02-02', 10, 10, 10, 10);

-- 13. fakultet_oblast_fakulteta
INSERT INTO fakultet_oblast_fakulteta (fakultet_id, f_oblast_id) VALUES
(1, 1), (1, 3),
(2, 2), (2, 8),
(3, 3), (3, 9),
(4, 1), (4, 3),
(5, 2), (5, 6),
(6, 4), (6, 7),
(7, 4), (7, 5),
(8, 5), (8, 10),
(9, 6), (9, 9),
(10, 7), (10, 8);

-- 14. strana_valuta_u_din
INSERT INTO strana_valuta_u_din (kurs_id, vrednost_u_din, datum_promene_vrednosti, valuta_id) VALUES
(1, 117, '2024-01-01', 1),
(2, 108, '2024-01-01', 2),
(3, 130, '2024-01-01', 3),
(4, 118, '2024-02-01', 1),
(5, 109, '2024-02-01', 2),
(6, 131, '2024-02-01', 3),
(7, 119, '2024-03-01', 1),
(8, 110, '2024-03-01', 2),
(9, 132, '2024-03-01', 3),
(10, 120, '2024-04-01', 1);

-- 15. placanje
--  Again, simplified. Needs logic for tracking payment status
INSERT INTO placanje (placanje_id, prva_rata, druga_rata, rok_za_drugu_ratu, nacin_placanja, uplacen_iznos_din, seansa_id, valuta_id) VALUES
(1, 1, 0, '2024-02-10', 'Kartica', 2500, 2, 1),
(2, 1, 1, '2024-02-12', 'Gotovina', 2000, 4, 2),
(3, 1, 0, '2024-02-15', 'Kartica', 3000, 6, 3),
(4, 1, 1, '2024-02-18', 'Gotovina', 2800, 8, 1),
(5, 1, 0, '2024-02-20', 'Kartica', 2200, 10, 2),
(6, 1, 1, '2024-02-22', 'Gotovina', 2500, 2, 1),
(7, 1, 0, '2024-02-25', 'Kartica', 2000, 4, 3),
(8, 1, 1, '2024-02-28', 'Gotovina', 3000, 6, 1),
(9, 1, 0, '2024-03-02', 'Kartica', 2800, 8, 2),
(10, 1, 1, '2024-03-05', 'Gotovina', 2200, 10, 3);

-- 16. psiholoski_test
INSERT INTO psiholoski_test (test_id, naziv, cena_din, p_oblast_id) VALUES
(1, 'Anksioznost test', 1000, 1),
(2, 'Depresija test', 1200, 2),
(3, 'Ličnost test', 1500, 3),
(4, 'Trauma test', 1300, 4),
(5, 'Zavisnost test', 1100, 5),
(6, 'Ishrana test', 1400, 6),
(7, 'Brak test', 1600, 7),
(8, 'Dečji test', 1250, 8),
(9, 'Gubitak test', 1350, 9),
(10, 'Psihosomatika test', 1550, 10);

-- 17. rezultat_testa
INSERT INTO rezultat_testa (rezultat_id, opis_rezultata, seansa_id, test_id) VALUES
(1, 'Visok nivo anksioznosti', 1, 1),
(2, 'Umerena depresija', 2, 2),
(3, 'Introvertna ličnost', 3, 3),
(4, 'Znaci traume', 4, 4),
(5, 'Rizik od zavisnosti', 5, 5),
(6, 'Poremećaj u ishrani', 6, 6),
(7, 'Problemi u komunikaciji', 7, 7),
(8, 'Emocionalni problemi', 8, 8),
(9, 'Potreba za podrškom', 9, 9),
(10, 'Psihosomatski simptomi', 10, 10);

-- 18. objava_seanse
INSERT INTO objava_seanse (objava_id, kome_objavljeno, datum_objave, sadrzaj, seansa_id) VALUES
(1, 'Psihoterapeut, Klijent', '2024-01-10', 'Zaključci uvodnog razgovora', 1),
(2, 'Psihoterapeut, Klijent', '2024-01-12', 'Plan terapije', 2),
(3, 'Psihoterapeut, Klijent', '2024-01-15', 'Analiza anksioznosti', 3),
(4, 'Psihoterapeut, Klijent', '2024-01-18', 'Vežbe za komunikaciju', 4),
(5, 'Psihoterapeut, Klijent', '2024-01-20', 'Povećanje samopouzdanja', 5),
(6, 'Psihoterapeut, Klijent', '2024-01-22', 'Lečenje zavisnosti', 6),
(7, 'Psihoterapeut, Klijent', '2024-01-25', 'Upravljanje napadima panike', 7),
(8, 'Psihoterapeut, Klijent', '2024-01-28', 'Prevazilaženje traume', 8),
(9, 'Psihoterapeut, Klijent', '2024-01-30', 'Promena navika u ishrani', 9),
(10, 'Psihoterapeut, Klijent', '2024-02-02', 'Smanjenje stresa', 10);
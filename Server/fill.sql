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
INSERT INTO seansa (seansa_id, trajanje_minuti, pocetak, beleske, cena_seanse_din, datum_promene_cene, kandidat_id, psihoterapeut_id, klijent_id, centar_id) VALUES
(1, 60, '2024-09-10 11:00:00', 'Discussed initial goals and client expectations.', 2500, '2024-09-10', NULL, 1, 7, 3),
(2, 50, '2024-10-05 14:00:00', 'Explored childhood influences on current behavior.', 2200, '2024-10-05', 1, 1, 2, 8),
(3, 45, '2025-01-20 09:00:00', 'Focused on mindfulness techniques for anxiety.', 2000, '2025-01-20', NULL, 1, 5, 1),
(4, 55, '2025-03-15 16:00:00', 'Reviewed progress on social interactions.', 2300, '2025-03-15', NULL, 1, 9, 6),
(5, 60, '2025-06-10 10:00:00', NULL, NULL, NULL, NULL, 1, 4, 2),
(6, 50, '2025-07-01 13:00:00', NULL, NULL, NULL, 6, 1, 1, 9),
(7, 45, '2025-08-05 15:00:00', NULL, NULL, NULL, NULL, 1, 8, 5),

(8, 50, '2024-07-22 10:00:00', 'Client presented with work-related stress.', 2300, '2024-07-22', NULL, 2, 1, 5),
(9, 60, '2024-08-28 14:00:00', 'Developed coping strategies for workplace challenges.', 2800, '2024-08-28', 2, 2, 6, 1),
(10, 45, '2025-02-10 09:00:00', 'Discussed boundaries with colleagues.', 2100, '2025-02-10', NULL, 2, 10, 4),
(11, 55, '2025-04-18 10:30:00', 'Role-playing difficult conversations.', 2400, '2025-04-18', NULL, 2, 3, 9),
(12, 60, '2025-06-20 11:00:00', NULL, NULL, NULL, NULL, 2, 7, 3),
(13, 50, '2025-07-15 14:00:00', NULL, NULL, NULL, 8, 2, 2, 6),
(14, 45, '2025-08-20 16:00:00', NULL, NULL, NULL, NULL, 2, 9, 10),

(15, 60, '2024-06-01 10:00:00', 'Initial session, client presented with grief issues.', 2500, '2024-06-01', NULL, 3, 3, 2),
(16, 50, '2024-07-05 13:00:00', 'Focused on processing feelings of loss.', 2200, '2024-07-05', 3, 3, 8, 7),
(17, 45, '2025-03-01 15:00:00', 'Client reported progress in acceptance.', 2000, '2025-03-01', NULL, 3, 1, 4),
(18, 55, '2025-05-10 11:00:00', 'Prepared for strategies to manage triggers.', 2300, '2025-05-10', NULL, 3, 6, 5),
(19, 60, '2025-06-05 14:00:00', NULL, NULL, NULL, NULL, 3, 2, 8),
(20, 50, '2025-07-25 09:00:00', NULL, NULL, NULL, 1, 3, 5, 1),

(21, 50, '2024-09-10 09:00:00', 'Family dynamics were explored in detail.', 2200, '2024-09-10', NULL, 4, 4, 10),
(22, 60, '2024-10-15 12:00:00', 'Conducted a family communication exercise.', 2700, '2024-10-15', 4, 4, 9, 3),
(23, 45, '2025-01-05 14:00:00', 'Reported improvements in family interactions.', 2100, '2025-01-05', NULL, 4, 2, 7),
(24, 55, '2025-03-20 10:00:00', 'Set long-term family goals for future sessions.', 2400, '2025-03-20', NULL, 4, 5, 8),
(25, 45, '2025-04-25 11:00:00', 'Discussed conflict resolution strategies.', 2150, '2025-04-25', NULL, 4, 7, 2),
(26, 60, '2025-06-15 10:00:00', NULL, NULL, NULL, NULL, 4, 1, 2),
(27, 50, '2025-07-08 13:00:00', NULL, NULL, NULL, 9, 4, 6, 5),
(28, 45, '2025-08-12 15:00:00', NULL, NULL, NULL, NULL, 4, 8, 1),

(29, 60, '2024-07-01 11:00:00', 'Client explored creative expression through art therapy.', 2500, '2024-07-01', NULL, 5, 5, 6),
(30, 50, '2024-08-08 14:00:00', 'Analyzed symbolism in client''s recent drawings.', 2200, '2024-08-08', 5, 5, 1, 10),
(31, 45, '2025-01-15 16:00:00', 'Client shared breakthroughs in self-understanding.', 2000, '2025-01-15', NULL, 5, 7, 2),
(32, 55, '2025-04-01 09:00:00', 'Focused on integrating creative insights into daily life.', 2300, '2025-04-01', NULL, 5, 3, 4),
(33, 60, '2025-06-25 10:00:00', NULL, NULL, NULL, NULL, 5, 8, 1),
(34, 50, '2025-07-10 12:00:00', NULL, NULL, NULL, 2, 5, 4, 7),
(35, 45, '2025-08-18 14:00:00', NULL, NULL, NULL, NULL, 5, 9, 3),
(36, 60, '2025-09-05 11:00:00', NULL, NULL, NULL, NULL, 5, 6, 8),

(37, 50, '2024-08-20 10:00:00', 'Client initiated discussion about life purpose.', 2200, '2024-08-20', NULL, 6, 6, 9),
(38, 60, '2024-09-25 13:00:00', 'Explored personal values and aspirations.', 2700, '2024-09-25', 6, 6, 4, 2),
(39, 45, '2025-02-20 15:00:00', 'Client developed a clearer sense of direction.', 2100, '2025-02-20', NULL, 6, 8, 5),
(40, 55, '2025-05-15 10:00:00', 'Prepared a personal mission statement.', 2400, '2025-05-15', NULL, 6, 1, 7),
(41, 60, '2025-06-01 11:00:00', NULL, NULL, NULL, NULL, 6, 3, 10),
(42, 50, '2025-07-03 14:00:00', NULL, NULL, NULL, 7, 6, 2, 4),

(43, 60, '2024-07-10 14:00:00', 'Client discussed existential questions and anxieties.', 2500, '2024-07-10', NULL, 7, 7, 1),
(44, 50, '2024-08-01 10:00:00', 'Explored concepts of freedom and responsibility.', 2200, '2024-08-01', 7, 7, 2, 5),
(45, 45, '2025-03-05 11:00:00', 'Client reported feeling more authentic in daily life.', 2000, '2025-03-05', NULL, 7, 3, 8),
(46, 55, '2025-04-20 13:00:00', 'Focused on meaning-making in challenging situations.', 2300, '2025-04-20', NULL, 7, 4, 1),
(47, 45, '2025-05-20 10:00:00', 'Discussed a recent ethical dilemma.', 2100, '2025-05-20', NULL, 7, 6, 4),
(48, 60, '2025-06-08 15:00:00', NULL, NULL, NULL, NULL, 7, 5, 9),
(49, 50, '2025-07-18 10:00:00', NULL, NULL, NULL, 3, 7, 6, 2),
(50, 45, '2025-08-25 12:00:00', NULL, NULL, NULL, NULL, 7, 7, 10),

(51, 50, '2024-09-05 10:00:00', 'Client discussed relationship patterns and dynamics.', 2200, '2024-09-05', NULL, 8, 8, 9),
(52, 60, '2024-10-01 13:00:00', 'Focused on developing healthier communication skills.', 2700, '2024-10-01', 8, 8, 10, 4),
(53, 45, '2025-01-25 15:00:00', 'Client reported improved interactions with family.', 2100, '2025-01-25', NULL, 8, 1, 6),
(54, 55, '2025-03-10 11:00:00', 'Set future relationship goals for long-term growth.', 2400, '2025-03-10', NULL, 8, 2, 5),
(55, 60, '2025-06-12 09:00:00', NULL, NULL, NULL, NULL, 8, 3, 7),
(56, 50, '2025-07-06 14:00:00', NULL, NULL, NULL, 5, 8, 4, 1),
(57, 45, '2025-08-10 16:00:00', NULL, NULL, NULL, NULL, 8, 5, 2),

(58, 60, '2024-07-15 11:00:00', 'Client explored past traumas and their impact.', 2500, '2024-07-15', NULL, 9, 9, 7),
(59, 50, '2024-08-10 14:00:00', 'Processed difficult memories using guided imagery.', 2200, '2024-08-10', 9, 9, 8, 1),
(60, 45, '2025-02-01 16:00:00', 'Client felt a sense of release and resilience.', 2000, '2025-02-01', NULL, 9, 9, 3),
(61, 55, '2025-04-05 09:00:00', 'Developed new coping strategies for triggers.', 2300, '2025-04-05', NULL, 9, 10, 2),
(62, 45, '2025-05-02 10:00:00', 'Reviewed progress on emotional regulation.', 2100, '2025-05-02', NULL, 9, 1, 4),
(63, 60, '2025-06-18 10:00:00', NULL, NULL, NULL, NULL, 9, 1, 5),
(64, 50, '2025-07-20 12:00:00', NULL, NULL, NULL, 4, 9, 2, 8),
(65, 45, '2025-08-22 14:00:00', NULL, NULL, NULL, NULL, 9, 3, 6),

(66, 50, '2024-08-05 10:00:00', 'Client discussed career aspirations and changes.', 2200, '2024-08-05', NULL, 10, 10, 5),
(67, 60, '2024-09-01 13:00:00', 'Focused on decision-making skills for career path.', 2700, '2024-09-01', 10, 10, 6, 7),
(68, 45, '2025-01-10 15:00:00', 'Client felt more confident in their professional choices.', 2100, '2025-01-10', NULL, 10, 7, 2),
(69, 55, '2025-03-25 10:00:00', 'Prepared for new professional challenges and interviews.', 2400, '2025-03-25', NULL, 10, 8, 9),
(70, 60, '2025-06-03 11:00:00', NULL, NULL, NULL, NULL, 10, 9, 1),
(71, 50, '2025-07-12 14:00:00', NULL, NULL, NULL, 10, 10, 10, 3);

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
-- Psihoterapeut ID 1 (Completed Sessions)
(1, 1, 0, '2024-10-10', 'Kartica', 1250.00, 1, 1), -- Partial payment
(2, 0, 1, NULL, 'Gotovina', 2200.00, 2, 2), -- Full payment
(3, 1, 0, '2025-02-20', 'Kartica', 1000.00, 3, 3), -- Partial payment
(4, 0, 1, NULL, 'Gotovina', 2300.00, 4, 1), -- Full payment

-- Psihoterapeut ID 2 (Completed Sessions)
(5, 0, 1, NULL, 'Kartica', 2300.00, 8, 2), -- Full payment
(6, 1, 0, '2024-09-28', 'Gotovina', 1400.00, 9, 3), -- Partial payment
(7, 1, 0, '2025-03-10', 'Kartica', 1050.00, 10, 1), -- Partial payment
(8, 0, 1, NULL, 'Gotovina', 2400.00, 11, 2), -- Full payment

-- Psihoterapeut ID 3 (Completed Sessions)
(9, 0, 1, NULL, 'Kartica', 2500.00, 15, 3), -- Full payment
(10, 1, 0, '2024-08-05', 'Gotovina', 1100.00, 16, 1), -- Partial payment
(11, 0, 1, NULL, 'Kartica', 2000.00, 17, 2), -- Full payment
(12, 1, 0, '2025-06-10', 'Gotovina', 1150.00, 18, 3), -- Partial payment

-- Psihoterapeut ID 4 (Completed Sessions)
(13, 0, 1, NULL, 'Kartica', 2200.00, 21, 1), -- Full payment
(14, 1, 0, '2024-11-15', 'Gotovina', 1350.00, 22, 2), -- Partial payment
(15, 0, 1, NULL, 'Kartica', 2100.00, 23, 3), -- Full payment
(16, 1, 0, '2025-04-20', 'Gotovina', 1200.00, 24, 1), -- Partial payment
(17, 0, 1, NULL, 'Kartica', 2150.00, 25, 2), -- Full payment

-- Psihoterapeut ID 5 (Completed Sessions)
(18, 1, 0, '2024-08-01', 'Gotovina', 1250.00, 29, 3), -- Partial payment
(19, 0, 1, NULL, 'Kartica', 2200.00, 30, 1), -- Full payment
(20, 1, 0, '2025-02-15', 'Gotovina', 1000.00, 31, 2), -- Partial payment
(21, 0, 1, NULL, 'Kartica', 2300.00, 32, 3), -- Full payment

-- Psihoterapeut ID 6 (Completed Sessions)
(22, 0, 1, NULL, 'Gotovina', 2200.00, 37, 1), -- Full payment
(23, 1, 0, '2024-10-25', 'Kartica', 1350.00, 38, 2), -- Partial payment
(24, 0, 1, NULL, 'Gotovina', 2100.00, 39, 3), -- Full payment
(25, 1, 0, '2025-06-15', 'Kartica', 1200.00, 40, 1), -- Partial payment

-- Psihoterapeut ID 7 (Completed Sessions)
(26, 0, 1, NULL, 'Gotovina', 2500.00, 43, 2), -- Full payment
(27, 1, 0, '2024-09-01', 'Kartica', 1100.00, 44, 3), -- Partial payment
(28, 0, 1, NULL, 'Gotovina', 2000.00, 45, 1), -- Full payment
(29, 1, 0, '2025-05-20', 'Kartica', 1150.00, 46, 2), -- Partial payment
(30, 0, 1, NULL, 'Gotovina', 2100.00, 47, 3), -- Full payment

-- Psihoterapeut ID 8 (Completed Sessions)
(31, 1, 0, '2024-10-05', 'Kartica', 1100.00, 51, 1), -- Partial payment
(32, 0, 1, NULL, 'Gotovina', 2700.00, 52, 2), -- Full payment
(33, 1, 0, '2025-02-25', 'Kartica', 1050.00, 53, 3), -- Partial payment
(34, 0, 1, NULL, 'Gotovina', 2400.00, 54, 1), -- Full payment

-- Psihoterapeut ID 9 (Completed Sessions)
(35, 0, 1, NULL, 'Kartica', 2500.00, 58, 2), -- Full payment
(36, 1, 0, '2024-09-10', 'Gotovina', 1100.00, 59, 3), -- Partial payment
(37, 0, 1, NULL, 'Kartica', 2000.00, 60, 1), -- Full payment
(38, 1, 0, '2025-05-05', 'Gotovina', 1150.00, 61, 2), -- Partial payment
(39, 0, 1, NULL, 'Kartica', 2100.00, 62, 3), -- Full payment

-- Psihoterapeut ID 10 (Completed Sessions)
(40, 1, 0, '2024-09-05', 'Gotovina', 1100.00, 66, 1), -- Partial payment
(41, 0, 1, NULL, 'Kartica', 2700.00, 67, 2), -- Full payment
(42, 1, 0, '2025-02-10', 'Gotovina', 1050.00, 68, 3), -- Partial payment
(43, 0, 1, NULL, 'Kartica', 2400.00, 69, 1); -- Full payment

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
(1, 'Test anksioznosti: Umeren nivo anksioznosti, preporučuje se rad na tehnikama opuštanja.', 1, 1),
(2, 'Test depresije: Blagi simptomi depresije, potrebno praćenje raspoloženja.', 8, 2),
(3, 'Test porodičnih odnosa: Identifikovani obrasci disfunkcionalne komunikacije.', 21, 7),
(4, 'Test kreativnosti: Izražena kreativnost, preporučuje se nastavak art terapije.', 29, 5),
(5, 'Test samopouzdanja: Nizak nivo samopouzdanja, preporučuje se rad na afirmacijama.', 17, 3),
(6, 'Test stresa: Visok nivo radnog stresa, potrebne strategije suočavanja.', 9, 10),
(7, 'Test žalosti: Faze žalosti su prisutne, klijent prolazi kroz proces prihvatanja.', 15, 9),
(8, 'Test emocionalne inteligencije: Visok nivo emocionalne svesnosti.', 31, 8),
(9, 'Test rešavanja konflikata: Potrebna obuka za konstruktivno rešavanje konflikata.', 23, 4),
(10, 'Test partnerskih odnosa: Identifikovani izazovi u partnerskoj komunikaciji.', 51, 7),
(11, 'Test autentičnosti: Klijent teži autentičnijem izražavanju sebe.', 45, 3),
(12, 'Test traume: Prisutni simptomi posttraumatskog stresa, preporučuje se EMDR.', 58, 4),
(13, 'Test karijernih interesovanja: Izražena želja za promenom karijere.', 66, 10),
(14, 'Test donošenja odluka: Klijent ima poteškoća u donošenju važnih životnih odluka.', 68, 9),
(15, 'Test emocionalne regulacije: Potrebno usavršavanje veština emocionalne regulacije.', 62, 2);

INSERT INTO objava_seanse (objava_id, kome_objavljeno, datum_objave, sadrzaj, seansa_id) VALUES
-- Psihoterapeut ID 1 (Completed Sessions)
(1, 'Psihoterapeut, Klijent', '2024-09-10', 'Beleške sa seanse: Klijent je izrazio početne ciljeve i očekivanja od terapije, fokusirajući se na smanjenje stresa.', 1),
(2, 'Psihoterapeut, Klijent, Kandidat', '2024-10-05', 'Beleške sa seanse: Detaljno istraženi uticaji detinjstva na trenutno ponašanje klijenta, sa supervizijom kandidata.', 2),
(3, 'Psihoterapeut, Klijent', '2025-01-20', 'Beleške sa seanse: Fokus na tehnikama svesnosti za upravljanje anksioznošću. Klijent je pokazao napredak.', 3),
(4, 'Psihoterapeut, Klijent', '2025-03-15', 'Beleške sa seanse: Pregledan napredak u socijalnim interakcijama. Klijent se oseća sigurnije.', 4),

-- Psihoterapeut ID 2 (Completed Sessions)
(5, 'Psihoterapeut, Klijent', '2024-07-22', 'Beleške sa seanse: Klijent je predstavio probleme vezane za stres na poslu i pritisak.', 8),
(6, 'Psihoterapeut, Klijent, Kandidat', '2024-08-28', 'Beleške sa seanse: Razvijene strategije suočavanja sa izazovima na radnom mestu, uz prisustvo kandidata.', 9),
(7, 'Psihoterapeut, Klijent', '2025-02-10', 'Beleške sa seanse: Diskutovane granice sa kolegama i važnost postavljanja istih.', 10),
(8, 'Psihoterapeut, Klijent', '2025-04-18', 'Beleške sa seanse: Vežbanje teških razgovora kroz igru uloga. Klijent se oseća spremnijim.', 11),

-- Psihoterapeut ID 3 (Completed Sessions)
(9, 'Psihoterapeut, Klijent', '2024-06-01', 'Beleške sa seanse: Početna seansa, klijent se javio zbog problema sa tugom i gubitkom.', 15),
(10, 'Psihoterapeut, Klijent, Kandidat', '2024-07-05', 'Beleške sa seanse: Fokus na procesuiranju osećanja gubitka, sa supervizijom kandidata.', 16),
(11, 'Psihoterapeut, Klijent', '2025-03-01', 'Beleške sa seanse: Klijent je prijavio napredak u prihvatanju situacije.', 17),
(12, 'Psihoterapeut, Klijent', '2025-05-10', 'Beleške sa seanse: Priprema za strategije upravljanja okidačima stresa.', 18),

-- Psihoterapeut ID 4 (Completed Sessions)
(13, 'Psihoterapeut, Klijent', '2024-09-10', 'Beleške sa seanse: Detaljno istražena porodična dinamika i odnosi.', 21),
(14, 'Psihoterapeut, Klijent, Kandidat', '2024-10-15', 'Beleške sa seanse: Izvedena vežba porodične komunikacije, uz prisustvo kandidata.', 22),
(15, 'Psihoterapeut, Klijent', '2025-01-05', 'Beleške sa seanse: Prijavljena poboljšanja u porodičnim interakcijama.', 23),
(16, 'Psihoterapeut, Klijent', '2025-03-20', 'Beleške sa seanse: Postavljeni dugoročni porodični ciljevi za buduće seanse.', 24),
(17, 'Psihoterapeut, Klijent, Policija', '2025-04-25', 'Beleške sa seanse: Diskutovane strategije rešavanja konflikata. Podaci objavljeni policiji zbog priznanja krivičnog dela.', 25),

-- Psihoterapeut ID 5 (Completed Sessions)
(18, 'Psihoterapeut, Klijent', '2024-07-01', 'Beleške sa seanse: Klijent je istraživao kreativno izražavanje kroz art terapiju.', 29),
(19, 'Psihoterapeut, Klijent, Kandidat', '2024-08-08', 'Beleške sa seanse: Analizovana simbolika u klijentovim crtežima, sa supervizijom kandidata.', 30),
(20, 'Psihoterapeut, Klijent', '2025-01-15', 'Beleške sa seanse: Klijent je podelio proboje u samorazumevanju.', 31),
(21, 'Psihoterapeut, Klijent', '2025-04-01', 'Beleške sa seanse: Fokus na integrisanju kreativnih uvida u svakodnevni život.', 32),

-- Psihoterapeut ID 6 (Completed Sessions)
(22, 'Psihoterapeut, Klijent', '2024-08-20', 'Beleške sa seanse: Klijent je započeo diskusiju o svrsi života.', 37),
(23, 'Psihoterapeut, Klijent, Kandidat', '2024-09-25', 'Beleške sa seanse: Istražene lične vrednosti i aspiracije, uz prisustvo kandidata.', 38),
(24, 'Psihoterapeut, Klijent', '2025-02-20', 'Beleške sa seanse: Klijent je razvio jasniji osećaj smera.', 39),
(25, 'Psihoterapeut, Klijent, Policija', '2025-05-15', 'Beleške sa seanse: Pripremljena izjava o ličnoj misiji. Podaci objavljeni policiji zbog priznanja krivičnog dela.', 40),

-- Psihoterapeut ID 7 (Completed Sessions)
(26, 'Psihoterapeut, Klijent', '2024-07-10', 'Beleške sa seanse: Klijent je diskutovao egzistencijalna pitanja i anksioznosti.', 43),
(27, 'Psihoterapeut, Klijent, Kandidat', '2024-08-01', 'Beleške sa seanse: Istraženi koncepti slobode i odgovornosti, sa supervizijom kandidata.', 44),
(28, 'Psihoterapeut, Klijent', '2025-03-05', 'Beleške sa seanse: Klijent je prijavio da se oseća autentičnije u svakodnevnom životu.', 45),
(29, 'Psihoterapeut, Klijent', '2025-04-20', 'Beleške sa seanse: Fokus na pronalaženju smisla u izazovnim situacijama.', 46),
(30, 'Psihoterapeut, Klijent', '2025-05-20', 'Beleške sa seanse: Diskutovana nedavna etička dilema.', 47),

-- Psihoterapeut ID 8 (Completed Sessions)
(31, 'Psihoterapeut, Klijent', '2024-09-05', 'Beleške sa seanse: Klijent je diskutovao obrasce i dinamiku odnosa.', 51),
(32, 'Psihoterapeut, Klijent, Kandidat', '2024-10-01', 'Beleške sa seanse: Fokus na razvijanju zdravijih komunikacionih veština, uz prisustvo kandidata.', 52),
(33, 'Psihoterapeut, Klijent', '2025-01-25', 'Beleške sa seanse: Klijent je prijavio poboljšane interakcije sa porodicom.', 53),
(34, 'Psihoterapeut, Klijent', '2025-03-10', 'Beleške sa seanse: Postavljeni budući ciljevi u vezi sa odnosima za dugoročni rast.', 54),

-- Psihoterapeut ID 9 (Completed Sessions)
(35, 'Psihoterapeut, Klijent', '2024-07-15', 'Beleške sa seanse: Klijent je istraživao prošle traume i njihov uticaj.', 58),
(36, 'Psihoterapeut, Klijent, Kandidat', '2024-08-10', 'Beleške sa seanse: Procesuirane teške uspomene korišćenjem vođene imaginacije, sa supervizijom kandidata.', 59),
(37, 'Psihoterapeut, Klijent', '2025-02-01', 'Beleške sa seanse: Klijent je osetio osećaj oslobođenja i otpornosti.', 60),
(38, 'Psihoterapeut, Klijent', '2025-04-05', 'Beleške sa seanse: Razvijene nove strategije suočavanja sa okidačima.', 61),
(39, 'Psihoterapeut, Klijent, Policija', '2025-05-02', 'Beleške sa seanse: Pregledan napredak u emocionalnoj regulaciji. Podaci objavljeni policiji zbog priznanja krivičnog dela.', 62),

-- Psihoterapeut ID 10 (Completed Sessions)
(40, 'Psihoterapeut, Klijent', '2024-08-05', 'Beleške sa seanse: Klijent je diskutovao profesionalne aspiracije i promene.', 66),
(41, 'Psihoterapeut, Klijent, Kandidat', '2024-09-01', 'Beleške sa seanse: Fokus na veštinama donošenja odluka za karijerni put, uz prisustvo kandidata.', 67),
(42, 'Psihoterapeut, Klijent', '2025-01-10', 'Beleške sa seanse: Klijent je osetio više samopouzdanja u svojim profesionalnim izborima.', 68),
(43, 'Psihoterapeut, Klijent', '2025-03-25', 'Beleške sa seanse: Priprema za nove profesionalne izazove i intervjue.', 69);
INSERT INTO Jêzyki_obce(Nazwa_jêzyka_obcego) VALUES
('Angielski'),
('Niemiecki'),
('Francuski'),
('Hiszpañski'),
('W³oski'),
('Portugalski'),
('Rosyjski'),
('Chiñski'),
('Japoñski'),
('Arabski')
;

INSERT INTO Typ_nadwozia(Nazwa_typu_nadwozia) VALUES
('SUV'),
('Hatchback'),
('Sedan'),
('Kombi'),
('Coupé'),
('Van'),
('Minivan'),
('Kabriolet'),
('Crossover'),
('Roadster')
;

INSERT INTO Producent (Nazwa_producenta, Kraj_pochodzenia, Rok_za³o¿enia, Siedziba_g³ówna) VALUES
('Toyota', 'Japonia', 1937, 'Toyota City'),
('Volkswagen', 'Niemcy', 1937, 'Wolfsburg'),
('Ford', 'USA', 1903, 'Dearborn'),
('Honda', 'Japonia', 1948, 'Tokyo'),
('BMW', 'Niemcy', 1916, 'Munich'),
('Hyundai', 'Korea Po³udniowa', 1967, 'Seul'),
('Chevrolet', 'USA', 1911, 'Detroit'),
('Mercedes-Benz', 'Niemcy', 1926, 'Stuttgart'),
('Nissan', 'Japonia', 1933, 'Yokohama'),
('Audi', 'Niemcy', 1910, 'Ingolstadt'),

('Kia', 'Korea Po³udniowa', 1944, 'Seul'),
('Subaru', 'Japonia', 1953, 'Tokyo'),
('Mazda', 'Japonia', 1920, 'Hiroshima'),
('Volvo', 'Szwecja', 1927, 'Gothenburg'),
('Tesla', 'USA', 2003, 'Palo Alto'),
('Fiat', 'W³ochy', 1899, 'Turyn'),
('Jaguar', 'Wielka Brytania', 1922, 'Coventry'),
('Land Rover', 'Wielka Brytania', 1948, 'Whitley'),
('Lexus', 'Japonia', 1989, 'Nagoya'),
('Bugatti', 'Francja', 1909, 'Molsheim')
;

INSERT INTO Osoba (Pesel, Imiê, Nazwisko, Adres_email, Numer_kontaktowy, Data_urodzenia) VALUES
('89010112345', 'Anna', 'Nowak', 'anna.nowak@example.com', '555-123-456', '1990-01-01'),
('80020223456', 'Jan', 'Kowalski', 'jan.kowalski@example.com', '555-234-567', '1980-02-02'),
('95030334567', 'Marta', 'Wiœniewska', 'marta.wisniewska@example.com', '555-345-678', '1995-03-03'),
('91040445678', 'Tomasz', 'Lis', 'tomasz.lis@example.com', '555-456-789', '1991-04-04'),
('88050556789', 'Ewa', 'Kaczmarek', 'ewa.kaczmarek@example.com', '555-567-890', '1988-05-05'),
('96060667890', 'Pawe³', 'Nowicki', 'pawel.nowicki@example.com', '555-678-901', '1996-06-06'),
('87070778901', 'Katarzyna', 'Piotrowska', 'katarzyna.piotrowska@example.com', '555-789-012', '1987-07-07'),
('93080889012', 'Adam', 'Zieliñski', 'adam.zielinski@example.com', '555-890-123', '1993-08-08'),
('90010123456', 'Karolina', 'Duda', 'karolina.duda@example.com', '555-101-112', '1990-01-01'),
('84020234567', 'Marek', 'Wójcik', 'marek.wojcik@example.com', '555-112-223', '1984-02-02'),

('80010112345', 'Robert', 'Szymañski', 'robert.szymanski@example.com', '555-123-456', '1980-01-01'),
('85020223456', 'Monika', 'Witkowska', 'monika.witkowska@example.com', '555-234-567', '1985-02-02'),
('92030334567', 'Krzysztof', 'Jankowski', 'krzysztof.jankowski@example.com', '555-345-678', '1992-03-03'),
('89040445678', 'Agnieszka', 'D¹browska', 'agnieszka.dabrowska@example.com', '555-456-789', '1989-04-04'),
('95050556789', 'Tadeusz', 'Majewski', 'tadeusz.majewski@example.com', '555-567-890', '1995-05-05'),
('92060667890', 'Magdalena', 'Olszewska', 'magdalena.olszewska@example.com', '555-678-901', '1992-06-06'),
('91070778901', 'Marcin', 'Kowalczyk', 'marcin.kowalczyk@example.com', '555-789-012', '1991-07-07'),
('86080889012', 'Natalia', 'Górska', 'natalia.gorska@example.com', '555-890-123', '1986-08-08'),
('93090990123', 'Kamil', 'Kamiñski', 'kamil.kaminski@example.com', '555-901-234', '1993-09-09'),
('88010101234', 'Patrycja', 'Zawadzka', 'patrycja.zawadzka@example.com', '555-012-345', '1988-10-10'),

('94020212345', 'Artur', 'Pawlak', 'artur.pawlak@example.com', '555-123-456', '1994-11-11'),
('92030323456', 'Weronika', 'Sikora', 'weronika.sikora@example.com', '555-234-567', '1992-12-12'),
('90040434567', 'Daniel', 'Koz³owski', 'daniel.kozlowski@example.com', '555-345-678', '1990-01-13'),
('95050545678', 'Oliwia', 'Jab³oñska', 'oliwia.jablonska@example.com', '555-456-789', '1995-02-14'),
('89060656789', 'Rafa³', 'Leszczyñski', 'rafal.leszczynski@example.com', '555-567-890', '1989-03-15'),
('96070767890', 'Aleksandra', 'Kaczor', 'aleksandra.kaczor@example.com', '555-678-901', '1996-04-16'),
('91080878901', 'Piotr', 'Adamczyk', 'piotr.adamczyk@example.com', '555-789-012', '1991-05-17'),
('86090989012', 'Dominika', 'Krajewska', 'dominika.krajewska@example.com', '555-890-123', '1986-06-18'),
('93101090123', 'Sebastian', 'Sobczak', 'sebastian.sobczak@example.com', '555-901-234', '1993-07-19'),
('89011101234', 'Nina', 'Zieliñska', 'nina.zielinska@example.com', '555-012-345', '1989-08-20'),

('92031323456', 'Julia', 'Lewandowska', 'julia.lewandowska@example.com', '555-234-567', '1992-10-22'),
('90041434567', 'Micha³', 'Szymczak', 'michal.szymczak@example.com', '555-345-678', '1990-11-23'),
('95051545678', 'Alicja', 'Ostrowska', 'alicja.ostrowska@example.com', '555-456-789', '1995-12-24'),
('89061656789', '£ukasz', 'Baran', 'lukasz.baran@example.com', '555-567-890', '1989-01-25'),
('96071767890', 'Karolina', 'Czarnecka', 'karolina.czarnecka@example.com', '555-678-901', '1996-02-26'),
('91081878901', 'Szymon', 'Kowalewski', 'szymon.kowalewski@example.com', '555-789-012', '1991-03-27'),
('86101089012', 'Nikola', 'B³aszczyk', 'nikola.blaszczyk@example.com', '555-890-123', '1986-04-28'),
('93111190123', 'Igor', 'G³owacki', 'igor.glowacki@example.com', '555-901-234', '1993-05-29'),
('89021201234', 'Martyna', 'Wrona', 'martyna.wrona@example.com', '555-012-345', '1989-06-30'),
('94021212345', 'Arkadiusz', 'Kurek', 'arkadiusz.kurek@example.com', '555-123-456', '1994-09-21')
;

INSERT INTO Sprzedawca (Stanowisko, Data_zatrudnienia, Liczba_transakcji, Wartoœæ_transakcji, Jêzyki_obce) VALUES
('Doradca ds. Sprzeda¿y', '2022-01-01', 2, 182000.11, 1),
('Specjalista ds. Samochodów Sportowych', '2021-02-15', 1, 93000.50, 2),
('M³odszy doradca ds. Sprzeda¿y', '2020-03-10', 0, 0.00, 3),
('M³odszy doradca ds. Sprzeda¿y', '2022-04-05', 0, 0.00, 6),
('Starszy Doradca ds. Finansowania', '2019-05-20', 1, 72000.44, 9),
('Kierownik Dzia³u Sprzeda¿y', '2020-06-15', 2, 159000.84, 4),
('Doradca ds. Leasingu', '2021-07-01', 2, 190000.84, 5),
('M³odszy doradca ds. Sprzeda¿y', '2018-08-25', 0, 0.00, 7),
('Specjalista ds. Leasingu Operacyjnego', '2019-09-10', 2, 111000.57, 8),
('Doradca ds. Sprzeda¿y', '2021-11-20', 1, 34000.76, 10),

('Doradca ds. Klientów VIP', '2019-12-15', 2, 66000.85, 2),
('Doradca ds. Sprzeda¿y', '2022-01-10', 1, 42000.71, 1),
('Doradca ds. Sprzeda¿y', '2021-03-20', 1, 65000.04, 2),
('M³odszy doradca ds. Sprzeda¿y', '2018-04-05', 0, 0.00, 1),
('Specjalista ds. Samochodów Luksusowych', '2019-05-20', 2, 93000.38, 2),
('Doradca ds. Pojazdów Dostawczych', '2020-06-15', 1, 108000.65, 1),
('M³odszy doradca ds. Sprzeda¿y', '2021-07-01', 0, 0.00, 1),
('Doradca ds. Sprzeda¿y', '2018-08-25', 1, 40000.01, 2),
('M³odszy doradca ds. Sprzeda¿y', '2022-02-15', 0, 00.00, 1),
('Starszy Doradca ds. Finansowania', '2021-03-01', 1, 48000.01, 1)
;

INSERT INTO Klient (Historia_transakcji, Data_ostatniego_zakupu, Wydana_kwota, Status_Gwarancji, Preferowana_marka) VALUES
('Zakup samochodu sportowego w 2022', '2022-01-10', 82000.01, 1, 'Toyota'),
('Zakup samochodu rodzinengo w 2022', '2022-03-15', 93000.50, 1, 'Volkswagen'),
('Zakup samochodu terenoweg w 2021', '2021-05-20', 100000.10, 0, 'Lexus'),
('Zakup samochodu dostawczego w 2020', '2020-07-25', 48000.01, 0, 'Honda'),
('Zakup samochodu sportowego w 2019', '2019-09-30', 72000.44, 0, 'BMW'),
('Zakup samochodu sportowego w 2023', '2023-11-05', 82000.14, 1, 'Toyota'),
('Zakup samochodu rodzinengo w 2013', '2013-01-10', 98000.74, 0, 'Toyota'),
('Zakup samochodu terenoweg w 2009', '2009-03-15', 42000.71, 0, 'Volkswagen'),
('Zakup samochodu dostawczego w 2011', '2011-05-20', 50000.14, 0, 'Audi'),
('Zakup samochodu sportowego w 2023', '2023-07-25', 34000.76, 1, 'Lexus'),

('Zakup samochodu sportowego w 2023', '2023-09-30', 38000.43, 1, 'Mercedes-Benz'),
('Zakup samochodu terenoweg w 2021', '2021-11-05', 77000.70, 0, 'Toyota'),
('Zakup samochodu dostawczego w 2012', '2012-01-10', 65000.04, 0, 'Nissan'),
('Zakup samochodu sportowego w 2008', '2008-03-15', 92000.10, 0, 'Toyota'),
('Zakup samochodu rodzinengo w 2022', '2022-05-20', 54000.34, 1, 'Ford'),
('Zakup samochodu sportowego w 2015', '2015-07-25', 108000.65, 0, 'Land Rover'),
('Zakup samochodu terenoweg w 2014', '2014-09-30', 61000.43, 0, 'Chevrolet'),
('Zakup samochodu sportowego w 2020', '2020-11-05', 40000.01, 0, 'Volkswagen'),
('Zakup samochodu dostawczego w 2019', '2019-01-10', 39000.04, 0, 'Honda'),
('Zakup samochodu sportowego w 2013', '2013-03-15', 28000.42, 0, 'BMW')
;

INSERT INTO Dostawca (Nazwa_dostawcy, Adres_dostawcy, Numer_kontaktowy_dostawcy, Adres_email_dostawcy) VALUES
('Toyota Dealership', 'ul. Dealerska 123, 01-234 Gdañsk', '123-456-789', 'toyota_dealer@email.com'),
('Volkswagen Auto Center', 'ul. Auto 456, 12-345 Kraków', '987-654-321', 'vw_autocenter@email.com'),
('BMW Motoryzacja', 'ul. Motoryzacyjna 789, 34-567 Radom', '111-222-333', 'bmw_motoryzacja@email.com'),
('Tesla Automotive', 'ul. Elektryczna 456, 45-678 Poznañ', '444-555-666', 'tesla_auto@email.com'),
('Mercedes-Benz Dealership', 'ul. Benz 789, 56-789 Toruñ', '777-888-999', 'mercedes_dealer@email.com'),
('Audi Autohaus', 'ul. Autohaus 123, 67-890 Warszawa', '123-987-654', 'audi_autohaus@email.com'),
('Land Rover Showroom', 'ul. Land Rover 123, 89-012 Wroca³aw', '555-111-222', 'landrover_showroom@email.com'),
('Nissan Exclusive', 'ul. Nissan 456, 90-123 Poznañ', '333-444-555', 'nissan_exclusive@email.com'),
('Ford Store', 'ul. Ford 789, 01-234 Bydgoszcz', '999-111-222', 'ford_store@email.com'),
('Subaru Dealership', 'ul. Subaru 123, 12-345 Kraków', '777-222-333', 'subaru_dealer@email.com'),
('Honda Auto Center', 'ul. Honda 456, 34-567 Radom', '444-555-666', 'honda_autocenter@email.com'),
('Volvo Cars Showroom', 'ul. Volvo 789, 45-678 Malbork', '111-222-333', 'volvo_showroom@email.com'),
('Hyundai Dealership', 'ul. Hyundai 123, 56-789 Tczew', '555-666-777', 'hyundai_dealer@email.com'),
('Nissan Auto Center', 'ul. Nissan 456, 67-890 Wa³brzych', '333-444-555', 'nissan_autocenter@email.com'),
('Subaru Showroom', 'ul. Subaru 789, 78-901 Wroc³aw', '999-111-222', 'subaru_showroom@email.com'),
('Kia Motors Dealership', 'ul. Kia 123, 90-123 Wejherowo', '777-888-999', 'kia_dealer@email.com'),
('Chevrolet Auto Center', 'ul. Chevrolet 456, 01-234 Sopot', '111-222-333', 'chevrolet_autocenter@email.com'),
('Jaguar Land Rover Showroom', 'ul. Jaguar Land Rover 789, 12-345 Czeczewo', '555-666-777', 'jaguarlandrover_showroom@email.com'),
('Lexus Dealership', 'ul. Lexus 123, 23-456 Straszyn', '333-444-555', 'lexus_dealer@email.com'),
('Bugatti Auto Center', 'ul. Bugatti 456, 34-567 Koszalin', '999-111-222', 'bugatti_autocenter@email.com')
;



INSERT INTO Model (Nazwa_modelu, Generacja, Typ_nadwozia, Skrzynia_biegów, Dostêpnoœæ, ID_producenta) VALUES
('Corolla', 'XI', 3, 'Automatyczna', 1, 1),
('Golf', 'VII', 2, 'Manualna', 1, 2),
('3 Series', 'G20', 3, 'Automatyczna', 1, 5),
('Qashqai', 'J11', 1, 'Manualna', 14, 9),
('C-Class', 'W205', 3, 'Automatyczna', 5, 8),
('A3', '8V', 8, 'Manualna', 6, 10),
('Tucson', 'III', 2, 'Automatyczna', 13, 6),
('A4', 'B9', 5, 'Pó³automatyczna', 6, 10),
('Accord', 'X', 3, 'Automatyczna', 11, 4),
('Passat', 'B8', 4, 'Automatyczna', 2, 2),

('Civic', 'X', 3, 'Manualna', 11, 4),
('Tiguan', 'II', 4, 'Automatyczna', 2, 2),
('5 Series', 'G30', 3, 'Pó³automatyczna', 3, 5),
('Focus', 'IV', 4, 'Manualna', 9, 3),
('E-Class', 'W213', 5, 'Automatyczna', 5, 8),
('A6', 'C8', 5, 'Automatyczna', 6, 10),
('Camaro', 'VI', 5, 'Manualna', 1, 7),
('A5', 'B9', 8, 'Manualna', 1, 10),
('Sienna', 'IV', 6, 'Automatyczna', 1, 1),
('Arteon', 'I', 5, 'Pó³automatyczna', 1, 2)
;

INSERT INTO Wersja (Nazwa_wersji, Silnik, Wyposa¿enie, Opcje_dodatkowe, ID_modelu) VALUES
('Standard', '2.0 TDI', 'Klimatyzacja, Radio', 'Ogrzewane fotele, Navigacja', 1),
('Comfortline', '1.6 TDI', 'Klimatyzacja automatyczna, Radio z Bluetooth', 'Ogrzewane fotele, Pakiet bezpieczeñstwa', 2),
('Luxury', '3.0 Diesel', 'Klimatyzacja dwustrefowa, Skórzane fotele', 'Nawigacja, Dach panoramiczny', 3),
('Tekna', '1.5 dCi', 'Klimatyzacja automatyczna, System multimedialny', 'Kamera cofania, System bezpieczeñstwa', 4),
('AMG Line', 'C300', 'Klimatyzacja dwustrefowa, Skórzane fotele', 'Nawigacja, System audio Burmester', 5),
('Ambition', '2.0 TFSI', 'Klimatyzacja automatyczna, System multimedialny', 'Ogrzewane fotele, Pakiet sportowy', 6),
('Executive', '2.0 CRDi', 'Klimatyzacja dwustrefowa, Skórzane fotele', 'Nawigacja, Panoramiczny dach', 7),
('S Line', '2.0 TDI', 'Klimatyzacja automatyczna, System multimedialny', 'Ogrzewane fotele, Sportowe zawieszenie', 8),
('Elegance', '3.0 TDI', 'Klimatyzacja dwustrefowa, Skórzane fotele', 'Nawigacja, Dach panoramiczny', 9),
('Highline', '2.0 TDI', 'Klimatyzacja automatyczna, System multimedialny', 'Ogrzewane fotele, System audio Dynaudio', 10),

('Touring', '2.0 i-VTEC', 'Klimatyzacja dwustrefowa, Skórzane fotele', 'Nawigacja, System audio Premium', 11),
('GT', '1.5 TSI', 'Klimatyzacja automatyczna, System multimedialny', 'Ogrzewane fotele, Pakiet sportowy', 12),
('M Sport', '2.0 Diesel', 'Klimatyzacja dwustrefowa, Skórzane fotele', 'Nawigacja, System audio Harman Kardon', 13),
('SS', '6.2 V8', 'Klimatyzacja automatyczna, Skórzane fotele', 'Nawigacja, System audio Bose', 14),
('S Line', '2.0 TFSI', 'Klimatyzacja automatyczna, System multimedialny', 'Ogrzewane fotele, Sportowe zawieszenie', 15),
('S Line', '2.0 TFSI', 'Klimatyzacja automatyczna, Skórzane fotele', 'Nawigacja, System audio Bang & Olufsen', 16),
('LE', '3.5 V6', 'Klimatyzacja automatyczna, Radio z Bluetooth', 'Ogrzewane fotele, System multimedialny', 17),
('R-Line', '2.0 TDI', 'Klimatyzacja dwustrefowa, Skórzane fotele', 'Nawigacja, System audio Beats', 18),
('XLE', '3.5 V6', 'Klimatyzacja automatyczna, Skórzane fotele', 'Nawigacja, System audio JBL', 19),
('Elegance', '2.0 TDI', 'Klimatyzacja automatyczna, Radio z Bluetooth', 'Ogrzewane fotele, System multimedialny', 20)
;

INSERT INTO Samochód (VIN, Rok_produkcji, Typ_paliwa, Kolor, Przebieg, ID_wersji) VALUES
('1HGCM82633A400001', 2010, 'Benzyna', 'Czerwony', 120000, 1),
('2C3AA63H74H611111', 2015, 'Benzyna', 'Czarny', 80000, 2),
('JM1NC25F760128888', 2017, 'Diesel', 'Niebieski', 50000, 3),
('WAUZZZ8K1EA012345', 2014, 'Benzyna', 'Srebrny', 90000, 4),
('5FNRL384X2B111111', 2019, 'Benzyna', 'Bia³y', 60000, 5),
('WBAPH77589A123456', 2012, 'Benzyna', 'Czarny', 110000, 7),
('1J4GZ58S7VC706001', 2016, 'Benzyna', 'Zielony', 75000, 7),
('WAUZZZ8V5EA654321', 2018, 'Benzyna', 'Czerwony', 55000, 8),
('5FNRL384X2B222222', 2017, 'Benzyna', 'Srebrny', 60000, 9),
('WBAPH77589A234567', 2012, 'Benzyna', 'Bia³y', 100000, 10),

('1J4GZ58S7VC789012', 2016, 'Benzyna', 'Czarny', 80000, 11),
('WAUZZZ8V5EA876543', 2018, 'Benzyna', 'Niebieski', 45000, 12),
('1HGCM82633A654321', 2010, 'Diesel', 'Srebrny', 95000, 13),
('2C3AA63H74H765432', 2015, 'Benzyna', 'Czerwony', 70000, 14),
('JM1NC25F760187654', 2017, 'Benzyna', 'Czarny', 40000, 15),
('WAUZZZ8K1EA432109', 2014, 'Benzyna', 'Niebieski', 85000, 16),
('5FNRL384X2B333333', 2015, 'Benzyna', 'Bia³y', 55000, 17),
('WBAPH77589A987654', 2012, 'Benzyna', 'Zielony', 95000, 18),
('1J4GZ58S7VC456789', 2016, 'Benzyna', 'Czerwony', 70000, 19),
('WAUZZZ8V5EA543210', 2018, 'Benzyna', 'Srebrny', 80000, 20)
;

INSERT INTO Oferta (Data_rozpoczêcia, Data_zakoñczenia, Kwota_oferty, Okres_gwarancji, Status_oferty, VIN) VALUES
('2023-01-01', '2024-02-01', 94003.32, '2 lata', 1, '1HGCM82633A400001'),
('2023-02-15', '2024-03-15', 62050.45, '3 lata', 1, '2C3AA63H74H611111'),
('2023-03-01', '2024-04-01', 80200.01, '2 lata', 1, 'JM1NC25F760128888'),
('2023-04-15', '2024-05-15', 50005.60, '3 lata', 1, 'WAUZZZ8K1EA012345'),
('2023-05-01', '2024-06-01', 85200.02, '2 lata', 1, '5FNRL384X2B111111'),
('2023-06-15', '2024-07-15', 93005.64, '3 lata', 1, 'WBAPH77589A123456'),
('2023-07-01', '2024-08-01', 70050.02, '2 lata', 1, '1J4GZ58S7VC706001'),
('2023-08-15', '2024-09-15', 53200.50, '3 lata', 1, 'WAUZZZ8V5EA654321'),
('2023-09-01', '2024-10-01', 100300.60, '2 lata', 1, '5FNRL384X2B222222'),
('2023-10-15', '2024-11-15', 56040.05, '3 lata', 1, 'WBAPH77589A234567'),

('2023-11-01', '2024-12-01', 54020.10, '2 lata', 1, '1J4GZ58S7VC789012'),
('2023-12-15', '2024-01-15', 4706.03, '3 lata', 1, 'WAUZZZ8V5EA876543'),
('2023-01-01', '2024-02-01', 52100.65, '2 lata', 1, '1HGCM82633A654321'),
('2023-02-15', '2024-03-15', 37020.51, '3 lata', 1, '2C3AA63H74H765432'),
('2023-03-01', '2024-04-01', 74006.12, '2 lata', 1, 'JM1NC25F760187654'),
('2023-04-15', '2024-05-15', 58090.65, '3 lata', 1, 'WAUZZZ8K1EA432109'),
('2023-05-01', '2024-06-01', 112004.21, '2 lata', 1, '5FNRL384X2B333333'),
('2023-06-15', '2024-07-15', 47010.54, '3 lata', 1, 'WBAPH77589A987654'),
('2023-07-01', '2024-08-01', 59200.10, '2 lata', 1, '1J4GZ58S7VC456789'),
('2023-08-15', '2024-09-15', 105001.04, '3 lata', 1, 'WAUZZZ8V5EA543210')
;

INSERT INTO Jazda_testowa (Data_jazdy_testowej, Godzina_rozpoczêcia, Godzina_zakoñczenia, VIN, Klient, Sprzedawca) VALUES
('2023-01-01', '10:00:00', '11:30:00', '1J4GZ58S7VC789012', 21, 1),
('2021-03-02', '14:00:00', '15:30:00', '5FNRL384X2B222222', 23, 2),
('2022-06-03', '11:00:00', '12:30:00', 'WBAPH77589A123456', 22, 3),
('2023-08-04', '13:00:00', '14:30:00', 'WBAPH77589A234567', 25, 1),
('2020-12-05', '12:00:00', '13:30:00', '1HGCM82633A654321', 28, 5),
('2019-09-06', '15:00:00', '16:30:00', '1HGCM82633A654321', 24, 5),
('2016-03-07', '09:00:00', '10:30:00', '1J4GZ58S7VC789012', 30, 5),
('2018-02-08', '16:00:00', '17:30:00', 'WBAPH77589A987654', 33, 8),
('2015-01-09', '10:30:00', '12:00:00', 'WAUZZZ8V5EA543210', 40, 3),
('2017-01-10', '13:30:00', '15:00:00', 'WBAPH77589A123456', 37, 11),

('2019-10-11', '11:30:00', '13:00:00', '1J4GZ58S7VC456789', 36, 11),
('2020-11-12', '14:30:00', '16:00:00', 'JM1NC25F760187654', 34, 12),
('2022-05-13', '12:30:00', '14:00:00', 'JM1NC25F760128888', 29, 14),
('2023-06-14', '15:30:00', '17:00:00', 'WAUZZZ8V5EA654321', 23, 14),
('2021-07-15', '09:30:00', '11:00:00', '5FNRL384X2B333333', 31, 15),
('2023-09-16', '16:30:00', '18:00:00', '5FNRL384X2B333333', 38, 16),
('2022-08-17', '10:00:00', '11:30:00', '2C3AA63H74H765432', 40, 17),
('2018-10-18', '14:00:00', '15:30:00', '1J4GZ58S7VC706001', 27, 16),
('2018-11-19', '11:00:00', '12:30:00', '2C3AA63H74H611111', 34, 20),
('2019-10-20', '13:00:00', '14:30:00', 'WAUZZZ8V5EA876543', 28, 20)
;

INSERT INTO Zakup (Kwota_transakcji, Data_transakcji, VIN, Dostawca, Sprzedawca) VALUES
(84000.00, '2022-01-01', '1HGCM82633A400001', 1, 2),
(52000.00, '2021-02-01', '2C3AA63H74H611111', 2, 2),
(68000.00, '2020-03-01', 'JM1NC25F760128888', 3, 1),
(42000.00, '2018-04-01', 'WAUZZZ8K1EA012345', 14, 4),
(76000.00, '2019-05-01', '5FNRL384X2B111111', 5, 5),
(81000.00, '2016-06-01', 'WBAPH77589A123456', 6, 3),
(57000.00, '2016-07-01', '1J4GZ58S7VC706001', 13, 7),
(43000.00, '2019-08-01', 'WAUZZZ8V5EA654321', 6, 15),
(99000.00, '2018-09-01', '5FNRL384X2B222222', 11, 9),
(44000.00, '2020-10-01', 'WBAPH77589A234567', 2, 12),

(46000.00, '2021-11-01', '1J4GZ58S7VC789012', 11, 11),
(39000.00, '2022-12-01', 'WAUZZZ8V5EA876543', 2, 12),
(30000.00, '2023-01-01', '1HGCM82633A654321', 3, 10),
(30000.00, '2020-02-01', '2C3AA63H74H765432', 9, 14),
(62000.00, '2019-03-01', 'JM1NC25F760187654', 5, 11),
(47000.00, '2018-04-01', 'WAUZZZ8K1EA432109', 6, 20),
(100000.00, '2017-05-01', '5FNRL384X2B333333', 17, 17),
(38000.00, '2019-06-01', 'WBAPH77589A987654', 6, 15),
(40000.00, '2020-07-01', '1J4GZ58S7VC456789', 1, 18),
(90000.00, '2021-08-01', 'WAUZZZ8V5EA543210', 2, 4)
;

INSERT INTO Sprzeda¿ (Kwota_transakcji, Data_transakcji, VIN, Klient, Sprzedawca) VALUES
(82000.01, '2022-01-10', 'ABC12345678901234', 21, 1),
(93000.50, '2022-03-15', 'DEF98765432109876', 22, 2),
(100000.10, '2021-05-20', 'GHI12345678901234', 23, 1),
(48000.01, '2020-07-25', 'JKL98765432109876', 24, 20),
(72000.44, '2019-09-30', 'MNO12345678901234', 25, 5),
(82000.14, '2023-11-05', 'PQR98765432109876', 26, 6),
(98000.74, '2013-01-10', 'STU12345678901234', 27, 7),
(42000.71, '2009-03-15', 'VWX98765432109876', 28, 12),
(50000.14, '2011-05-20', 'YZA12345678901234', 29, 9),
(34000.76, '2023-07-25', 'BCD98765432109876', 30, 10),
(38000.43, '2023-09-30', 'EFG12345678901234', 31, 11),
(77000.70, '2021-11-05', 'HIJ98765432109876', 32, 6),
(65000.04, '2012-01-10', 'KLM12345678901234', 33, 13),
(92000.10, '2008-03-15', 'NOP98765432109876', 34, 7),
(54000.34, '2022-05-20', 'QRS12345678901234', 35, 15),
(108000.65, '2015-07-25', 'TUV98765432109876', 36, 16),
(61000.43, '2014-09-30', 'WXY12345678901234', 37, 9),
(40000.01, '2020-11-05', 'ZAB98765432109876', 38, 18),
(39000.04, '2019-01-10', 'CDE12345678901234', 39, 15),
(28000.42, '2013-03-15', 'FGH98765432109876', 40, 11)
;

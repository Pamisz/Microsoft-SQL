-- UPDATE

--1 Zmiana imienia i maila
select * from Osoba where ID = 23;

UPDATE Osoba
SET Imi� = 'Kazimierz'
WHERE ID = 23;

UPDATE Osoba
SET Adres_email = 'kazimierz.koz�owski@example.com'
WHERE ID = 23;

--2 Zmiana stanowiska (awans)
select * from Sprzedawca where ID = 1;

UPDATE Sprzedawca
SET Stanowisko = 'Starszy doradca ds. Sprzeda�y'
WHERE ID = 1;

--3 Zmiana upodoba� klienta
select * from Klient where ID = 35;

UPDATE Klient
SET Preferowana_marka = 'Volkswagen'
WHERE ID = 35;



--DELETE


--1 Usuniecie samochodu z oferty
select * from Samoch�d;
select * from Oferta where VIN = '1HGCM82633A400001';

DELETE FROM Oferta
WHERE VIN = '1HGCM82633A400001';

DELETE FROM Samoch�d
WHERE VIN = '1HGCM82633A400001';

--2 Usuni�cie producenta

select * from Producent;

DELETE FROM Producent 
WHERE Nazwa_Producenta = 'Jaguar'

--3 Usuni�cie dostawcy
select * from Dostawca;

DELETE FROM Dostawca
WHERE Nazwa_dostawcy = 'Nissan Exclusive'
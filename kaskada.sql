-- UPDATE

--1 Zmiana imienia i maila
select * from Osoba where ID = 23;

UPDATE Osoba
SET Imiê = 'Kazimierz'
WHERE ID = 23;

UPDATE Osoba
SET Adres_email = 'kazimierz.koz³owski@example.com'
WHERE ID = 23;

--2 Zmiana stanowiska (awans)
select * from Sprzedawca where ID = 1;

UPDATE Sprzedawca
SET Stanowisko = 'Starszy doradca ds. Sprzeda¿y'
WHERE ID = 1;

--3 Zmiana upodobañ klienta
select * from Klient where ID = 35;

UPDATE Klient
SET Preferowana_marka = 'Volkswagen'
WHERE ID = 35;



--DELETE


--1 Usuniecie samochodu z oferty
select * from Samochód;
select * from Oferta where VIN = '1HGCM82633A400001';

DELETE FROM Oferta
WHERE VIN = '1HGCM82633A400001';

DELETE FROM Samochód
WHERE VIN = '1HGCM82633A400001';

--2 Usuniêcie producenta

select * from Producent;

DELETE FROM Producent 
WHERE Nazwa_Producenta = 'Jaguar'

--3 Usuniêcie dostawcy
select * from Dostawca;

DELETE FROM Dostawca
WHERE Nazwa_dostawcy = 'Nissan Exclusive'
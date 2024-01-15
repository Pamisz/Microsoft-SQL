--ZAPYTANIE 1 (widok VIEW, JOIN)
--Dealer potrzebuje spisu podstawowych danych klient�w powi�zanych ze sprzedza�ami, aby zadzwoni� do nich i zaoferowa� im specjaln� ofert� zakupu. 
--Stw�rz widok tabeli zawieraj�cej dane sprzeda�y jak i klienta, kt�ry dokona� zakupu.

CREATE VIEW WidokSprzedazyKlienta AS
SELECT
    s.ID_sprzeda�y,
    s.Kwota_transakcji AS Kwota_sprzeda�y,
    s.Data_transakcji AS Data_sprzeda�y,
    s.VIN,
    k.ID AS ID_klienta,
    k.Imi� AS Imi�_klienta,
    k.Nazwisko AS Nazwisko_klienta,
    k.Numer_kontaktowy AS Numer_kontaktowy_klienta
FROM
    Sprzeda� s
JOIN
    Osoba k ON s.Klient = k.ID;

SELECT* FROM WidokSprzedazyKlienta
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--ZAPYTANIE 2 (JOIN)
--Klienci co raz cz�ciej pytaj� o VIN, rok produkcji oraz przebieg samochodu konkretnego modelu. 
--Stw�rz widok zestawiaj�cy te dane wraz z danymi modelu, aby u�atwi� do nich dost�p i usprawni� sprzeda�.
SELECT
    s.VIN,
    s.Rok_produkcji,
	s.Przebieg,
    m.Nazwa_modelu,
    m.Generacja,
    m.Typ_nadwozia,
	m.Skrzynia_bieg�w
FROM
    Samoch�d s
JOIN
    Model m ON s.ID_wersji = m.ID_modelu;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--ZAPYTANIE 3 (zapytanie z podzapytaniem, order by, sum)
--Prezes dealera musi dokona� statystycznej analizy najdro�szych zakup�w w danym okresie, aby por�wa� je z zyskami i podsumowa� saldo.
--Sporz�d� zestawienie 10 najdro�szych zakup�w od dostawc�w (posortuj rosn�co wed�ug kwoty) w przeci�gu wybranego okresu czasu. 
--Podaj ��czn� kwot� wszystkich zakup�w (10 najdro�szych)
SELECT TOP 10
    z.ID_zakupu,
    z.Kwota_transakcji,
    z.Data_transakcji,
    z.VIN,
    d.Nazwa_dostawcy
FROM
    Zakup z
JOIN
    Dostawca d ON z.Dostawca = d.ID_dostawcy
WHERE
    z.Data_transakcji BETWEEN '2020-01-01' AND '2023-01-01' -- (okres 3 lat)
ORDER BY
    z.Kwota_transakcji DESC;


SELECT
    SUM(Kwota_transakcji) AS ��czna_kwota
FROM
    (
        SELECT TOP 10
            z.Kwota_transakcji
        FROM
            Zakup z
        JOIN
            Dostawca d ON z.Dostawca = d.ID_dostawcy
        WHERE
             z.Data_transakcji BETWEEN '2020-01-01' AND '2023-01-01' -- (okres 3 lat)
        ORDER BY
            z.Kwota_transakcji DESC
    ) AS Top10Zakupy;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--ZAPYTANIE 4 (zapytanie z podzapytaniem, sum)
--Sprzedawca chce zaproponowa� klientowi jazd� testow� samochodem o VINIE XXX, kt�ry nie jest zbyt ch�tny. Nale�y go przekona� ilo�ci� odbytych na nim godzin. Sprawd�:
--Ilo�� testowych godzin jazdy (odbytych) na samochodzie o wybranym numerze VIN oraz przebieg samochodu, je�li liczba godzin przekracza X godzin.
DECLARE @LiczbaGodzin INT;
SET @LiczbaGodzin = 1; -- Zmieni� na ��dan� warto��

DECLARE @VINEK VARCHAR(17);
SET @VINEK = '1HGCM82633A654321';

SELECT
    CASE
        WHEN SUM(DATEDIFF(HOUR, godzinki.Godzina_rozpocz�cia, godzinki.Godzina_zako�czenia)) > @LiczbaGodzin THEN (SELECT Przebieg FROM Samoch�d WHERE VIN LIKE @VINEK)
        ELSE 'Nie przekroczono limitu godzin'
    END AS Przebieg,
    SUM(DATEDIFF(HOUR, godzinki.Godzina_rozpocz�cia, godzinki.Godzina_zako�czenia)) AS Odbyte_godz
FROM
(
    SELECT
        jt.ID_jazdy_testowej,
        jt.Data_jazdy_testowej,
        jt.Godzina_rozpocz�cia,
        jt.Godzina_zako�czenia,
        jt.VIN,
        jt.Klient,
        jt.Sprzedawca
    FROM
        Jazda_testowa jt
    JOIN
        Samoch�d s ON jt.VIN = s.VIN
    WHERE
        jt.VIN LIKE @VINEK
) AS godzinki;

--SPRAWDZENIE
DECLARE @VINEK VARCHAR(17);
SET @VINEK = '1HGCM82633A654321';
SELECT* FROM Samoch�d WHERE VIN LIKE @VINEK
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--ZAPYTANIE 5 (max, group by)
--Potrzebne s� ceny najbardziej ekskluzywnych samochod�w dla ka�dego koloru, aby sporz�dzi� statystyki jaki kolor jest najcz�ciej u�ywany dla prestizowych samochod�w.
--Znajd� najwi�ksze ceny pogrupowane wzgl�dem koloru.
SELECT
    s.Kolor,
    MAX(o.Kwota_oferty) AS Najwyzsza_cena
FROM
    Samoch�d s
JOIN
    Oferta o ON s.VIN = o.VIN
GROUP BY
    s.Kolor;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--ZAPYTANIE 6 (group by, avg)
--Pasjonat motoryzacji chce zareklamowa� dealera w zamian za dane dotycz�ce �redniej daty za�o�enia producent�w samochodowych dla ka�dego kraju pochodzenia. 
--Zgrupuj te dane wzgl�dem kraj�w.
SELECT
    Kraj_pochodzenia,
    AVG(Rok_za�o�enia) AS �rednia_data_za�o�enia
FROM
    Producent
GROUP BY
    Kraj_pochodzenia;
--SPRAWDZENIE
SELECT Rok_Za�o�enia FROM Producent WHERE Kraj_Pochodzenia LIKE 'Japonia'
SELECT Rok_Za�o�enia FROM Producent WHERE Kraj_Pochodzenia LIKE 'Francja'
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--ZAPYTANIE 7 (view)
--Sprzedawca przegl�da modele samochod�w, ale potrzebuje szybkiego dost�pu do ich typu nadwozia:
--Zestaw dane model�w z tablic� s�ownikow� Typ_Nadwozia, tak aby odpowiadaj�ce numery typu zgadza�y si� z nazw�
CREATE VIEW Buff AS 
SELECT
	m.ID_modelu,
    m.Nazwa_modelu,
    m.Generacja,
    m.Typ_nadwozia,
    m.Skrzynia_bieg�w,
    m.Dost�pno��,
    m.ID_producenta,
	tn.Nazwa_typu_nadwozia
FROM
    model m
JOIN
    Typ_Nadwozia tn ON m.Typ_Nadwozia = tn.ID_typu_nadwozia;

DROP VIEW IF EXISTS Buff;

SELECT* FROM Buff
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--ZAPYTANIE 8 
--Prezes dealera samochodowego potrzebuje listy sprzedawc�w posegregowanej malej�co wzgl�dem kwoty dokonanych przez nich transakcji. 
--Ponadto potrzebuje osobnej tabeli z 3 najlepszymi sprzedawcami, kt�ra zawiera ich dane osobowe potrzebne do kontaktu, aby poinformowa� ich o premii.
SELECT
    ID,
    Stanowisko,
    Data_zatrudnienia,
    Liczba_transakcji,
    Warto��_transakcji
FROM
    Sprzedawca
ORDER BY
    Warto��_transakcji DESC;

SELECT TOP 3
	o.ID AS ID_sprzedawcy,
    o.Imi� AS Imi�_sprzedawcy,
    o.Nazwisko AS Nazwisko_sprzedawcy,
    o.Numer_kontaktowy AS Numer_kontaktowy_sprzedawcy
FROM
    Sprzedawca s
JOIN
	Osoba o ON o.ID = s.ID 
ORDER BY
    Warto��_transakcji DESC;


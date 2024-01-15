--ZAPYTANIE 1 (widok VIEW, JOIN)
--Dealer potrzebuje spisu podstawowych danych klientów powi¹zanych ze sprzedza¿ami, aby zadzwoniæ do nich i zaoferowaæ im specjaln¹ ofertê zakupu. 
--Stwórz widok tabeli zawieraj¹cej dane sprzeda¿y jak i klienta, który dokona³ zakupu.

CREATE VIEW WidokSprzedazyKlienta AS
SELECT
    s.ID_sprzeda¿y,
    s.Kwota_transakcji AS Kwota_sprzeda¿y,
    s.Data_transakcji AS Data_sprzeda¿y,
    s.VIN,
    k.ID AS ID_klienta,
    k.Imiê AS Imiê_klienta,
    k.Nazwisko AS Nazwisko_klienta,
    k.Numer_kontaktowy AS Numer_kontaktowy_klienta
FROM
    Sprzeda¿ s
JOIN
    Osoba k ON s.Klient = k.ID;

SELECT* FROM WidokSprzedazyKlienta
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--ZAPYTANIE 2 (JOIN)
--Klienci co raz czêœciej pytaj¹ o VIN, rok produkcji oraz przebieg samochodu konkretnego modelu. 
--Stwórz widok zestawiaj¹cy te dane wraz z danymi modelu, aby u³atwiæ do nich dostêp i usprawniæ sprzeda¿.
SELECT
    s.VIN,
    s.Rok_produkcji,
	s.Przebieg,
    m.Nazwa_modelu,
    m.Generacja,
    m.Typ_nadwozia,
	m.Skrzynia_biegów
FROM
    Samochód s
JOIN
    Model m ON s.ID_wersji = m.ID_modelu;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--ZAPYTANIE 3 (zapytanie z podzapytaniem, order by, sum)
--Prezes dealera musi dokonaæ statystycznej analizy najdro¿szych zakupów w danym okresie, aby porówaæ je z zyskami i podsumowaæ saldo.
--Sporz¹dŸ zestawienie 10 najdro¿szych zakupów od dostawców (posortuj rosn¹co wed³ug kwoty) w przeci¹gu wybranego okresu czasu. 
--Podaj ³¹czn¹ kwotê wszystkich zakupów (10 najdro¿szych)
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
    SUM(Kwota_transakcji) AS £¹czna_kwota
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
--Sprzedawca chce zaproponowaæ klientowi jazdê testow¹ samochodem o VINIE XXX, który nie jest zbyt chêtny. Nale¿y go przekonaæ iloœci¹ odbytych na nim godzin. SprawdŸ:
--Iloœæ testowych godzin jazdy (odbytych) na samochodzie o wybranym numerze VIN oraz przebieg samochodu, jeœli liczba godzin przekracza X godzin.
DECLARE @LiczbaGodzin INT;
SET @LiczbaGodzin = 1; -- Zmieniæ na ¿¹dan¹ wartoœæ

DECLARE @VINEK VARCHAR(17);
SET @VINEK = '1HGCM82633A654321';

SELECT
    CASE
        WHEN SUM(DATEDIFF(HOUR, godzinki.Godzina_rozpoczêcia, godzinki.Godzina_zakoñczenia)) > @LiczbaGodzin THEN (SELECT Przebieg FROM Samochód WHERE VIN LIKE @VINEK)
        ELSE 'Nie przekroczono limitu godzin'
    END AS Przebieg,
    SUM(DATEDIFF(HOUR, godzinki.Godzina_rozpoczêcia, godzinki.Godzina_zakoñczenia)) AS Odbyte_godz
FROM
(
    SELECT
        jt.ID_jazdy_testowej,
        jt.Data_jazdy_testowej,
        jt.Godzina_rozpoczêcia,
        jt.Godzina_zakoñczenia,
        jt.VIN,
        jt.Klient,
        jt.Sprzedawca
    FROM
        Jazda_testowa jt
    JOIN
        Samochód s ON jt.VIN = s.VIN
    WHERE
        jt.VIN LIKE @VINEK
) AS godzinki;

--SPRAWDZENIE
DECLARE @VINEK VARCHAR(17);
SET @VINEK = '1HGCM82633A654321';
SELECT* FROM Samochód WHERE VIN LIKE @VINEK
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--ZAPYTANIE 5 (max, group by)
--Potrzebne s¹ ceny najbardziej ekskluzywnych samochodów dla ka¿dego koloru, aby sporz¹dziæ statystyki jaki kolor jest najczêœciej u¿ywany dla prestizowych samochodów.
--ZnajdŸ najwiêksze ceny pogrupowane wzglêdem koloru.
SELECT
    s.Kolor,
    MAX(o.Kwota_oferty) AS Najwyzsza_cena
FROM
    Samochód s
JOIN
    Oferta o ON s.VIN = o.VIN
GROUP BY
    s.Kolor;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--ZAPYTANIE 6 (group by, avg)
--Pasjonat motoryzacji chce zareklamowaæ dealera w zamian za dane dotycz¹ce œredniej daty za³o¿enia producentów samochodowych dla ka¿dego kraju pochodzenia. 
--Zgrupuj te dane wzglêdem krajów.
SELECT
    Kraj_pochodzenia,
    AVG(Rok_za³o¿enia) AS Œrednia_data_za³o¿enia
FROM
    Producent
GROUP BY
    Kraj_pochodzenia;
--SPRAWDZENIE
SELECT Rok_Za³o¿enia FROM Producent WHERE Kraj_Pochodzenia LIKE 'Japonia'
SELECT Rok_Za³o¿enia FROM Producent WHERE Kraj_Pochodzenia LIKE 'Francja'
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--ZAPYTANIE 7 (view)
--Sprzedawca przegl¹da modele samochodów, ale potrzebuje szybkiego dostêpu do ich typu nadwozia:
--Zestaw dane modelów z tablic¹ s³ownikow¹ Typ_Nadwozia, tak aby odpowiadaj¹ce numery typu zgadza³y siê z nazw¹
CREATE VIEW Buff AS 
SELECT
	m.ID_modelu,
    m.Nazwa_modelu,
    m.Generacja,
    m.Typ_nadwozia,
    m.Skrzynia_biegów,
    m.Dostêpnoœæ,
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
--Prezes dealera samochodowego potrzebuje listy sprzedawców posegregowanej malej¹co wzglêdem kwoty dokonanych przez nich transakcji. 
--Ponadto potrzebuje osobnej tabeli z 3 najlepszymi sprzedawcami, która zawiera ich dane osobowe potrzebne do kontaktu, aby poinformowaæ ich o premii.
SELECT
    ID,
    Stanowisko,
    Data_zatrudnienia,
    Liczba_transakcji,
    Wartoœæ_transakcji
FROM
    Sprzedawca
ORDER BY
    Wartoœæ_transakcji DESC;

SELECT TOP 3
	o.ID AS ID_sprzedawcy,
    o.Imiê AS Imiê_sprzedawcy,
    o.Nazwisko AS Nazwisko_sprzedawcy,
    o.Numer_kontaktowy AS Numer_kontaktowy_sprzedawcy
FROM
    Sprzedawca s
JOIN
	Osoba o ON o.ID = s.ID 
ORDER BY
    Wartoœæ_transakcji DESC;


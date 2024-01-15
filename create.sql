CREATE TABLE Producent (
    ID_producenta INT PRIMARY KEY IDENTITY(1,1),
    Nazwa_producenta VARCHAR(60) NOT NULL,
    Kraj_pochodzenia VARCHAR(60),
    Rok_założenia INT NOT NULL,
    Siedziba_główna VARCHAR(255)
);

CREATE TABLE Typ_nadwozia (
    ID_typu_nadwozia INT PRIMARY KEY IDENTITY(1,1),
    Nazwa_typu_nadwozia VARCHAR(20) NOT NULL
);

CREATE TABLE Języki_obce (
    ID_języki_obce INT PRIMARY KEY IDENTITY(1,1),
    Nazwa_języka_obcego VARCHAR(20) NOT NULL
);

CREATE TABLE Osoba (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Pesel VARCHAR(11) NOT NULL,
    Imię VARCHAR(60) NOT NULL,
    Nazwisko VARCHAR(60) NOT NULL,
    Adres_email VARCHAR(60),
    Numer_kontaktowy VARCHAR(20) NOT NULL,
    Data_urodzenia DATE
);

CREATE TABLE Sprzedawca (
	ID INT PRIMARY KEY,
    Stanowisko VARCHAR(60) NOT NULL,
    Data_zatrudnienia DATE NOT NULL,
    Liczba_transakcji INT,
    Wartość_transakcji DECIMAL(18, 2),
    Języki_obce INT,
    FOREIGN KEY (ID) REFERENCES Osoba(ID) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Języki_obce) REFERENCES Języki_obce(ID_języki_obce)
);

CREATE TABLE Klient (
    ID INT PRIMARY KEY,
    Historia_transakcji VARCHAR(MAX),
    Data_ostatniego_zakupu DATE,
    Wydana_kwota DECIMAL(18, 2),
    Status_Gwarancji BIT DEFAULT 0,
    Preferowana_marka VARCHAR(60),
    FOREIGN KEY (ID) REFERENCES Osoba(ID) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Dostawca (
    ID_dostawcy INT PRIMARY KEY IDENTITY(1,1),
    Nazwa_dostawcy VARCHAR(60) NOT NULL,
    Adres_dostawcy VARCHAR(255),
    Numer_kontaktowy_dostawcy VARCHAR(20) NOT NULL,
    Adres_email_dostawcy VARCHAR(60)
);

CREATE TABLE Model (
    ID_modelu INT PRIMARY KEY IDENTITY(1,1),
    Nazwa_modelu VARCHAR(60) NOT NULL,
    Generacja VARCHAR(20),
    Typ_nadwozia INT,
    Skrzynia_biegów VARCHAR(20),
    Dostępność BIT NOT NULL,
    ID_producenta INT,
    FOREIGN KEY (ID_producenta) REFERENCES Producent(ID_producenta) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Typ_nadwozia) REFERENCES Typ_nadwozia(ID_typu_nadwozia)
);

CREATE TABLE Wersja (
    ID_wersji INT PRIMARY KEY IDENTITY(1,1),
    Nazwa_wersji VARCHAR(60) NOT NULL,
    Silnik VARCHAR(20),
    Wyposażenie VARCHAR(MAX),
    Opcje_dodatkowe VARCHAR(MAX),
    ID_modelu INT,
    FOREIGN KEY (ID_modelu) REFERENCES Model(ID_modelu) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Samochód (
    VIN VARCHAR(17) PRIMARY KEY NOT NULL,
    Rok_produkcji INT NOT NULL,
    Typ_paliwa VARCHAR(20),
    Kolor VARCHAR(20),
    Przebieg INT NOT NULL,
    ID_wersji INT,
    FOREIGN KEY (ID_wersji) REFERENCES Wersja(ID_wersji) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Oferta (
    ID_oferty INT PRIMARY KEY IDENTITY(1,1),
    Data_rozpoczęcia DATE NOT NULL,
    Data_zakończenia DATE,
    Kwota_oferty DECIMAL(18, 2) NOT NULL,
    Okres_gwarancji VARCHAR(20) NOT NULL,
    Status_oferty BIT NOT NULL,
    VIN VARCHAR(17),
    FOREIGN KEY (VIN) REFERENCES Samochód(VIN) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Jazda_testowa (
    ID_jazdy_testowej INT PRIMARY KEY IDENTITY(1,1),
    Data_jazdy_testowej DATE NOT NULL,
    Godzina_rozpoczęcia TIME NOT NULL,
    Godzina_zakończenia TIME NOT NULL,
    VIN VARCHAR(17) NOT NULL,
    Klient INT,
    Sprzedawca INT,
    FOREIGN KEY (VIN) REFERENCES Samochód(VIN) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY (Klient) REFERENCES Klient(ID) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY (Sprzedawca) REFERENCES Sprzedawca(ID) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE Zakup (
    ID_zakupu INT PRIMARY KEY IDENTITY(1,1),
    Kwota_transakcji DECIMAL(18, 2) NOT NULL,
    Data_transakcji DATE NOT NULL,
    VIN VARCHAR(17) NOT NULL,
    Dostawca INT,
    Sprzedawca INT,
    FOREIGN KEY (Dostawca) REFERENCES Dostawca(ID_dostawcy) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY (Sprzedawca) REFERENCES Sprzedawca(ID) ON DELETE NO ACTION ON UPDATE NO ACTION,
);

CREATE TABLE Sprzedaż (
    ID_sprzedaży INT PRIMARY KEY IDENTITY(1,1),
    Kwota_transakcji DECIMAL(18, 2) NOT NULL,
    Data_transakcji DATE NOT NULL,
    VIN VARCHAR(17) NOT NULL,
    Klient INT,
    Sprzedawca INT,
    FOREIGN KEY (Klient) REFERENCES Klient(ID) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY (Sprzedawca) REFERENCES Sprzedawca(ID) ON DELETE NO ACTION ON UPDATE NO ACTION,
);

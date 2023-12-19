CREATE TABLE Producent (
    ID_producenta INT PRIMARY KEY IDENTITY(1,1),
    Nazwa_producenta VARCHAR(60) NOT NULL,
    Kraj_pochodzenia VARCHAR(60),
    Rok_za³o¿enia INT NOT NULL,
    Siedziba_g³ówna VARCHAR(255)
);

CREATE TABLE Typ_nadwozia (
    ID_typu_nadwozia INT PRIMARY KEY IDENTITY(1,1),
    Nazwa_typu_nadwozia VARCHAR(20) NOT NULL
);

CREATE TABLE Jêzyki_obce (
    ID_jêzyki_obce INT PRIMARY KEY IDENTITY(1,1),
    Nazwa_jêzyka_obcego VARCHAR(20) NOT NULL
);

CREATE TABLE Osoba (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Pesel VARCHAR(11) NOT NULL,
    Imiê VARCHAR(60) NOT NULL,
    Nazwisko VARCHAR(60) NOT NULL,
    Adres_email VARCHAR(60),
    Numer_kontaktowy VARCHAR(20) NOT NULL,
    Data_urodzenia DATE
);

CREATE TABLE Sprzedawca (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Stanowisko VARCHAR(60) NOT NULL,
    Data_zatrudnienia DATE NOT NULL,
    Liczba_transakcji INT,
    Wartoœæ_transakcji DECIMAL(18, 2),
    Jêzyki_obce INT,
    FOREIGN KEY (ID) REFERENCES Osoba(ID),
    FOREIGN KEY (Jêzyki_obce) REFERENCES Jêzyki_obce(ID_jêzyki_obce)
);

CREATE TABLE Klient (
    ID INT PRIMARY KEY IDENTITY(21,1),
    Historia_transakcji VARCHAR(MAX),
    Data_ostatniego_zakupu DATE,
    Wydana_kwota DECIMAL(18, 2),
    Status_Gwarancji BIT DEFAULT 0,
    Preferowana_marka VARCHAR(60),
    FOREIGN KEY (ID) REFERENCES Osoba(ID)
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
    Dostêpnoœæ BIT NOT NULL,
    ID_producenta INT,
    FOREIGN KEY (ID_producenta) REFERENCES Producent(ID_producenta),
    FOREIGN KEY (Typ_nadwozia) REFERENCES Typ_nadwozia(ID_typu_nadwozia),
);

CREATE TABLE Wersja (
    ID_wersji INT PRIMARY KEY IDENTITY(1,1),
    Nazwa_wersji VARCHAR(60) NOT NULL,
    Silnik VARCHAR(20),
    Wyposa¿enie VARCHAR(MAX),
    Opcje_dodatkowe VARCHAR(MAX),
    ID_modelu INT,
    FOREIGN KEY (ID_modelu) REFERENCES Model(ID_modelu)
);

CREATE TABLE Samochód (
    VIN VARCHAR(17) PRIMARY KEY NOT NULL,
    Rok_produkcji INT NOT NULL,
    Typ_paliwa VARCHAR(20),
    Kolor VARCHAR(20),
    Przebieg INT NOT NULL,
	ID_wersji INT
	FOREIGN KEY (ID_wersji) REFERENCES Wersja(ID_wersji)
);

CREATE TABLE Oferta (
    ID_oferty INT PRIMARY KEY IDENTITY(1,1),
    Data_rozpoczêcia DATE NOT NULL,
    Data_zakoñczenia DATE,
    Kwota_oferty DECIMAL(18, 2) NOT NULL,
    Okres_gwarancji VARCHAR(20) NOT NULL,
    Status_oferty BIT NOT NULL,
    VIN VARCHAR(17),
    FOREIGN KEY (VIN) REFERENCES Samochód(VIN)
);

CREATE TABLE Jazda_testowa (
    ID_jazdy_testowej INT PRIMARY KEY IDENTITY(1,1),
    Data_jazdy_testowej DATE NOT NULL,
    Godzina_rozpoczêcia TIME NOT NULL,
    Godzina_zakoñczenia TIME NOT NULL,
    VIN VARCHAR(17) NOT NULL,
    Klient INT,
    Sprzedawca INT,
    FOREIGN KEY (VIN) REFERENCES Samochód(VIN),
    FOREIGN KEY (Klient) REFERENCES Klient(ID),
    FOREIGN KEY (Sprzedawca) REFERENCES Sprzedawca(ID)
);

CREATE TABLE Zakup (
    ID_zakupu INT PRIMARY KEY IDENTITY(1,1),
    Kwota_transakcji DECIMAL(18, 2) NOT NULL,
    Data_transakcji DATE NOT NULL,
    VIN VARCHAR(17) NOT NULL,
    Dostawca INT,
    Sprzedawca INT,
    FOREIGN KEY (Dostawca) REFERENCES Dostawca(ID_dostawcy),
    FOREIGN KEY (Sprzedawca) REFERENCES Sprzedawca(ID)
);

CREATE TABLE Sprzeda¿ (
    ID_sprzeda¿y INT PRIMARY KEY IDENTITY(1,1),
    Kwota_transakcji DECIMAL(18, 2) NOT NULL,
    Data_transakcji DATE NOT NULL,
    VIN VARCHAR(17) NOT NULL,
    Klient INT,
    Sprzedawca INT,
    FOREIGN KEY (Klient) REFERENCES Klient(ID),
    FOREIGN KEY (Sprzedawca) REFERENCES Sprzedawca(ID)
);

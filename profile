-- Maak tabel Wedstrijd
CREATE TABLE Wedstrijd (
  WedstrijdID INT PRIMARY KEY,
  Datum DATE,
  Tijd TIME,
  Locatie VARCHAR(255)
);

-- Maak tabel Club
CREATE TABLE Club (
  ClubCode VARCHAR(10) PRIMARY KEY,
  Naam VARCHAR(255)
);

-- Maak tabel Deelnemer
CREATE TABLE Deelnemer (
  DeelnemerID INT PRIMARY KEY,
  WedstrijdID INT,
  Rugnummer INT,
  Naam VARCHAR(255),
  Geboortejaar INT,
  ClubCode VARCHAR(10),
  Aangepaste2Tijd FLOAT,
  VerschilMetWinnaar FLOAT,
  FOREIGN KEY (WedstrijdID) REFERENCES Wedstrijd(WedstrijdID),
  FOREIGN KEY (ClubCode) REFERENCES Club(ClubCode)
);

-- Voeg gegevens toe aan tabel Wedstrijd
INSERT INTO Wedstrijd (WedstrijdID, Datum, Tijd, Locatie)
VALUES (1, '2023-02-05', '10:49', 'Ski Centrum Hoofddorp');

-- Voeg gegevens toe aan tabel Club
INSERT INTO Club (ClubCode, Naam)
VALUES 
('MSF1', 'Montessorischool Floriande'),
('RS1', 'Rietveldschool'),
('RS2', 'Rietveldschool');

-- Voeg gegevens toe aan tabel Deelnemer
INSERT INTO Deelnemer (DeelnemerID, WedstrijdID, Rugnummer, Naam, Geboortejaar, ClubCode, Aangepaste2Tijd, VerschilMetWinnaar)
VALUES 
(1, 1, 219, 'Bregje Huitema', 2013, 'MSF1', 18.46, 0.44),
(2, 1, 120, 'Eline de Rijck van der Gracht', 2010, 'MSF1', 8.02, 0),
(3, 1, 221, 'Isabelle de Rijck van der Gracht', 2012, 'MSF1', 8.9, 0.88),
(4, 1, 22, 'Yara Voorhaar', 2013, 'RS1', 23, NULL),
(5, 1, 23, 'Pleun Hart', 2013, 'RS1', 12.79, 2.99),
(6, 1, 24, 'Lola Koot', 2013, 'RS1', 9.8, NULL),
(7, 1, 226, 'Beau Hessels', 2013, 'RS2', 9.54, 0.68),
(8, 1, 227, 'Sophie Muilwijk', 2010, 'RS2', 8.86, NULL),
(9, 1, 28, 'Demi Kosters', 2010, 'RS2', NULL, NULL),
(10, 1, 29, 'Max Klaver', 2013, 'RS2', NULL, NULL);

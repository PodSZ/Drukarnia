USE DRUKARNIA
GO

INSERT INTO Producent (Nazwa)
VALUES
('PlastSpaw'),
('Devil Design'),
('Fiberology');

INSERT INTO Kolor(Nazwa)
VALUES
('Bia³y'),
('Czarny'),
('Czerwony'),
('Ró¿owy'),
('¯ó³ty'),
('Szary'),
('Drewno');

INSERT INTO Filament (Nazwa, ID_producent, ID_kolor)
VALUES
('Ró¿owy - plastSpaw',1,4),
('Czerwony - plastSpaw',1,3),
('Szary - Devildesign',2,6);

INSERT INTO Magazyn(ID_produktu, Waga, Cena)
VALUES
(1,1000, 40),
(2,1000, 40),
(3,1000, 100);

INSERT INTO Historia_drukow(ID_filament, Wykorzystano, Czas)
VALUES
(1,100, 200),
(1,100, 100),
(1,50, 300),
(2,100, 300),
(2,100, 300),
(3,100, 300);

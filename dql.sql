USE DRUKARNIA
GO

CREATE VIEW v_Filament
AS
SELECT ID_produktu,P.Nazwa + ' - ' + K.Nazwa AS [Nazwa Filamentu]
FROM Filament
INNER JOIN Producent AS P ON P.ID_producent=Filament.ID_producent
INNER JOIN Kolor AS K ON K.ID_kolor=Filament.ID_kolor
GO

CREATE VIEW v_Producent
AS
SELECT Nazwa AS [Nazwa Producenta]
FROM Producent
GO

CREATE VIEW v_Kolor
AS
SELECT Nazwa AS [Kolor]
FROM Kolor
GO

CREATE VIEW v_Magazyn
AS
SELECT ID_filament,[Nazwa Filamentu], Waga AS [Waga (g)], Cena AS [Cena za szpulê]
FROM Magazyn AS M 
INNER JOIN v_Filament AS F ON F.ID_produktu =M.ID_produktu
GO

CREATE VIEW v_HisDrukow
AS
SELECT [Nazwa Filamentu], Wykorzystano AS [Wykorzystany material], Czas AS [Czas wydruku]
FROM Historia_drukow AS H
INNER JOIN v_Magazyn AS M ON M.ID_filament=H.ID_filament
GO

CREATE VIEW v_WykorzystanyMaterial
AS
SELECT [Nazwa Filamentu], SUM(Wykorzystano) AS [Wykorzystany material]
FROM Historia_drukow AS H
INNER JOIN v_Magazyn AS M ON M.ID_filament=H.ID_filament
GROUP BY [Nazwa Filamentu]
GO
USE master
GO
DROP DATABASE DRUKARNIA
GO
CREATE DATABASE DRUKARNIA;
GO 
USE DRUKARNIA
GO
CREATE TABLE Kolor (
	ID_kolor INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Nazwa VARCHAR(30) NOT NULL
	);
CREATE TABLE Producent (
	ID_producent INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Nazwa VARCHAR(50) NOT NULL
	);
CREATE TABLE Filament (
	ID_produktu INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Nazwa VARCHAR(50),
	ID_producent INT FOREIGN KEY REFERENCES Producent(ID_producent) NOT NULL,
	ID_kolor INT FOREIGN KEY REFERENCES Kolor(ID_kolor) NOT NULL
	);	
CREATE TABLE Magazyn (
	ID_filament INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	ID_produktu INT FOREIGN KEY REFERENCES Filament(ID_produktu) NOT NULL,
	Waga DECIMAL(10,2) NOT NULL,
	Cena DECIMAL(10,2) NOT NULL
	);	
	CREATE TABLE Historia_drukow (
	ID_filament INT FOREIGN KEY REFERENCES Magazyn(ID_filament) NOT NULL,
	Wykorzystano DECIMAL(10,2) NOT NULL,
	Czas INT NOT NULL,
	);	
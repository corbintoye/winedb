/*
This script creates the winedb database and
enters the default data.

Corbin Toye
06/13/23
*/

--DDL
USE [master]
IF DB_ID('winedb') IS NOT NULL
	DROP DATABASE winedb

CREATE DATABASE winedb
GO

USE [winedb]
GO

CREATE TABLE Wineries (
	wineryID INT IDENTITY(1,1) PRIMARY KEY,
	name VARCHAR(50) NOT NULL
);

CREATE TABLE Notes (
	noteID INT IDENTITY(1,1) PRIMARY KEY,
	note VARCHAR(1000)
);

CREATE TABLE AVA (
	avaID INT IDENTITY(1,1) PRIMARY KEY,
	area VARCHAR(50) NOT NULL
);

CREATE TABLE ClosureType (
	closureID INT IDENTITY(1,1) PRIMARY KEY,
	type VARCHAR(20) NOT NULL
);

CREATE TABLE Varietals (
	varietalID INT IDENTITY(1,1) PRIMARY KEY,
	name VARCHAR(30) NOT NULL
);

CREATE TABLE Designation (
	designationID INT IDENTITY(1,1) PRIMARY KEY,
	type VARCHAR(30) NOT NULL
);

CREATE TABLE Vineyards (
	vineyardID INT IDENTITY(1,1) PRIMARY KEY,
	name VARCHAR(50) NOT NULL
);

CREATE TABLE Managers (
	managerID INT IDENTITY(1,1) PRIMARY KEY,
	Fname VARCHAR(30) NOT NULL,
	Lname VARCHAR(30) NOT NULL,
	email VARCHAR(50),
	phone VARCHAR(15)
);

CREATE TABLE Collections (
	collectionID INT IDENTITY(1,1) PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	notes VARCHAR(200),
	managerID INT FOREIGN KEY REFERENCES Managers(managerID)
);

CREATE TABLE Bottles (
	bottleID INT IDENTITY(1,1) PRIMARY KEY,
	wineryID INT FOREIGN KEY REFERENCES Wineries(wineryID),
	varietalID INT FOREIGN KEY REFERENCES Varietals(varietalID),
	noteID INT FOREIGN KEY REFERENCES Notes(noteID),
	designationID INT FOREIGN KEY REFERENCES Designation(designationID),
	avaID INT FOREIGN KEY REFERENCES AVA(avaID),
	vineyardID INT FOREIGN KEY REFERENCES Vineyards(vineyardID),
	closureID INT FOREIGN KEY REFERENCES ClosureType(closureID),
	collectionID INT FOREIGN KEY REFERENCES Collections(collectionID),
	sugarpercentage DECIMAL(10),
	year INT NOT NULL,
	gallonsproduced INT,
	retailprice DECIMAL(10),
	bottlesize INT,
	abv DECIMAL(5),
	inventoryamount INT NOT NULL,
	UID INT
);

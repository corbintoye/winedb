/* This script inserts sample data into the winedb database */
USE [winedb]

GO


INSERT INTO Wineries (name)
VALUES ('Winery A'), ('Winery B'), ('Winery C');


INSERT INTO Notes (note)
VALUES ('Note 1'), ('Note 2'), ('Note 3');


INSERT INTO AVA (area)
VALUES ('Area A'), ('Area B'), ('Area C');


INSERT INTO ClosureType (type)
VALUES ('Closure 1'), ('Closure 2'), ('Closure 3');


INSERT INTO Varietals (name)
VALUES ('Varietal A'), ('Varietal B'), ('Varietal C');


INSERT INTO Designation (type)
VALUES ('Designation 1'), ('Designation 2'), ('Designation 3');


INSERT INTO Vineyards (name)
VALUES ('Vineyard A'), ('Vineyard B'), ('Vineyard C');


INSERT INTO Managers (Fname, Lname, email, phone)
VALUES ('John', 'Doe', 'john@example.com', '123-456-7890'),
       ('Jane', 'Smith', 'jane@example.com', '987-654-3210'),
       ('Mike', 'Johnson', 'mike@example.com', '555-555-5555');


INSERT INTO Collections (name, notes, managerID)
VALUES ('Collection A', 'Notes for Collection A', 1),
       ('Collection B', 'Notes for Collection B', 2),
       ('Collection C', 'Notes for Collection C', 3);


INSERT INTO Bottles (wineryID, varietalID, noteID, designationID, avaID, vineyardID, closureID, collectionID, sugarpercentage, year, gallonsproduced, retailprice, bottlesize, abv, inventoryamount, UID)
VALUES (1, 1, 1, 1, 1, 1, 1, 1, 10.5, 2021, 1000, 20.99, 750, 12.5, 50, 12345),
       (2, 2, 2, 2, 2, 2, 2, 2, 12.3, 2022, 500, 15.99, 500, 13.8, 100, 67890),
       (3, 3, 3, 3, 3, 3, 3, 3, 9.8, 2023, 800, 18.99, 500, 11.2, 75, 54321);

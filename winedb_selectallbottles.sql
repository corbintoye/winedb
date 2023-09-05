--Sample select statement for selecting all entries in the Bottles table and joins with each referenced FK, with filter

SELECT
    Bottles.bottleID,
    Wineries.name AS Winery,
    Varietals.name AS Varietal,
    Notes.note AS Note,
    Designation.type AS Designation,
    AVA.area AS AVA,
    Vineyards.name AS Vineyard,
    ClosureType.type AS Closure,
    Collections.name AS Collection,
    Bottles.sugarpercentage,
    Bottles.year,
    Bottles.gallonsproduced,
    Bottles.retailprice,
    Bottles.bottlesize,
    Bottles.abv,
    Bottles.inventoryamount,
    Bottles.UID

FROM Bottles
    INNER JOIN Wineries ON Bottles.wineryID = Wineries.wineryID
    INNER JOIN Varietals ON Bottles.varietalID = Varietals.varietalID
    LEFT JOIN Notes ON Bottles.noteID = Notes.noteID
    LEFT JOIN Designation ON Bottles.designationID = Designation.designationID
    LEFT JOIN AVA ON Bottles.avaID = AVA.avaID
    LEFT JOIN Vineyards ON Bottles.vineyardID = Vineyards.vineyardID
    LEFT JOIN ClosureType ON Bottles.closureID = ClosureType.closureID
    LEFT JOIN Collections ON Bottles.collectionID = Collections.collectionID

WHERE Bottles.year >= 2018 AND Bottles.year <=2023
AND Varietals.name = 'Varietal A'
AND Wineries.name = 'Winery A'
;


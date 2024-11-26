use countries;

-- inner joins
SELECT Persons.Id, Persons.Fname, Persons.Lname, Persons.Rating, Country.Country_name, Country.Population
FROM Persons
INNER JOIN Country ON Persons.Country_Id = Country.Id;

-- LEFT JOIN
SELECT Persons.Id, Persons.Fname, Persons.Lname, Persons.Rating, Country.Country_name, Country.Population
FROM Persons
LEFT JOIN Country ON Persons.Country_Id = Country.Id;

-- RIGHT JOIN
SELECT Persons.Id, Persons.Fname, Persons.Lname, Persons.Rating, Country.Country_name, Country.Population
FROM Persons
RIGHT JOIN Country ON Persons.Country_Id = Country.Id;

-- List All Distinct Country Names from Both Tables
SELECT DISTINCT Country_name 
FROM (
    SELECT Country_name FROM Country
    UNION
    SELECT Country_name FROM Persons
) AS AllCountries;

-- All Country Names from Both Tables (Including Duplicates)
SELECT Country_name FROM Country
UNION ALL
SELECT Country_name FROM Persons;

-- Round the Ratings of All Persons to the Nearest Integer
UPDATE Persons
SET Rating = ROUND(Rating)
WHERE Id > 0;

SELECT * FROM Persons;




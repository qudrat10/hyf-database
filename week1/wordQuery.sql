USE world;

-- SHOW TABLES;

-- DESCRIBE TABLE;

-- ANSWER #1: What are the names of all the cities in the Netherlands?

/*SELECT city.Name FROM city
INNER JOIN country ON city.CountryCode=country.code
where country.Name='Netherlands';*/



-- ANSWER #2: What's the name of all the countries on the continent ‘North America’ ?

/*SELECT Name, population FROM city
WHERE Name='Rotterdam';*/



-- ANSWER #3: What's the name of all the countries on the continent ‘North America’ ?

/*SELECT DISTINCT Name
FROM Country
WHERE Continent = 'North America';*/



-- ANSWER #4: What's the top 10 countries by SurfaceArea ?

/*SELECT Name, SurfaceArea FROM country
ORDER BY SurfaceArea 
LIMIT 10 ; */



-- ANSWER #5: What's the top 10 most populated cities?

/*SELECT C.Name, C.Population
From City C
ORDER BY C.Population
LIMIT 10;*/

-- ANSWER #6: Select the top 3 countries by population that their names start with the letter ‘P’

/*SELECT Name, Population FROM country
WHERE Name LIKE 'P%'
ORDER BY Name
LIMIT 3;*/



-- ANSWER #7: What is the population in Asia?

/*SELECT  SUM(Population) AS AsiaPopulation FROM country
WHERE Continent='Asia';*/



-- ANSWER #8:Which languages are spoken in the Region of ‘South America’ 

/*SELECT C.Name, C.Region, L.Language
FROM Country C, CountryLanguage L
WHERE C.Code = L.CountryCode
AND C.Region = 'South America';*/



-- ANSWER #9: What are the languages spoken on all cities named ‘Barcelona’ (you may need to join 3 tables =) )

SELECT L.Language
FROM CountryLanguage L,City C
INNER JOIN City ON L.CountryCode = C.CountryCode
WHERE C.Name='Barcelona';
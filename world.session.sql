select *FROM country;
select * FROM city;
SELECT * from city WHERE country_code = 'FIN' ORDER BY name DESC;
SELECT COUNT(name) FROM city WHERE country_code = 'USA';
SELECT *, SUM(population) FROM city WHERE country_code = 'USA';
SELECT * FROM city WHERE population BETWEEN 1000000 AND 2000000 LIMIT 15;

SELECT district, SUM(population) FROM city WHERE country_code = 'USA' GROUP BY district;

SELECT * FROM city WHERE country_code = 'USA';


SELECT COUNT(name) FROM city WHERE country_code = 'USA' ORDER BY 

SELECT * FROM country WHERE lifeexpectancy != '0' ORDER BY lifeexpectancy DESC LIMIT 1;

SELECT SUM(population) FROM city WHERE country_code = 'FIN';

SELECT country.population, SUM(city.population) FROM city, country WHERE city.country_code ='FIN' AND country.capital = city.id GROUP BY country.population;


SELECT country.name as country, city.name as capital FROM country
INNER JOIN city ON country.capital = city.id WHERE city.country_code = 'ESP';

select country_language.language as language FROM country_language
INNER JOIN country ON country_language.country_code = country.code WHERE country.region = 'Southeast Asia';

SELECT language FROM country_language;

SELECT name, population FROM city WHERE population > (SELECT population FROM country WHERE name = 'Finland');
    (SELECT population FROM city);
SELECT country_code FROM country_language WHERE language = 'English';
SELECT * FROM country_language;

SELECT name, population FROM city WHERE country_code IN (SELECT country_code FROM country_language WHERE language = 'English') AND population > 1000000;
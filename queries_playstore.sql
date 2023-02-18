-- Comments in SQL Start with dash-dash --
SELECT * FROM analytics WHERE id = 1880;
-- finds app w/ id 1880

SELECT id, name FROM analytics WHERE last_updated = '2018-08-01';
--Finds the app last updated in august

SELECT category, COUNT(*) FROM analytics GROUP BY category;
--Counts num in each category

SELECT * FROM analytics ORDER BY reviews DESC LIMIT 5;
--Finds the app w/ the most reviews and the number of reviews

SELECT * FROM analytics WHERE rating >= 4.8 ORDER BY reviews DESC LIMIT 1;
--Finds the app with the most reviews and ratings above 4.8

SELECT category, AVG(rating) FROM analytics GROUP BY category ORDER BY avg DESC;
--Find the average rating of each category in a descending order

SELECT app_name, price, rating FROM analytics WHERE rating <3 ORDER BY price DESC LIMIT 1;
--Shows name, rating, and price of highest priced app with a rating less than three

SELECT * FROM analytics WHERE min_installs <= 50 AND rating IS NOT NULL ORDER BY rating DESC;
--Shows apps with less than 50 installs and a rating

SELECT app_name FROM analytics WHERE rating < 3 AND reviews >= 10000;
--Shows app name with less than a rating of 3 and more than or the same 10000 reviews

SELECT * FROM analytics WHERE price > 0.1 AND price < 1 ORDER BY reviews DESC LIMIT 10;
--Shows ten apps priced between 1 and 0.1 in a descending order

SELECT * FROM analytics WHERE last_updated = (SELECT MIN(last_updated) FROM analytics);
--Show the most out of date app

SELECT * FROM analytics WHERE price = (SELECT MAX(price) FROM analytics);
--Shows the most expensive app

SELECT SUM (reviews) AS 'All the Reviews' FROM analytics;
--counts the num of reviews

SELECT category FROM analytics GROUP BY category HAVING COUNT (*) > 300;
--Finds the categories with more than 300 apps

SELECT app_name, reviews, min_installs, min_installs / reviews AS proportion FROM analytics WHERE min_installs >= 100000 ORDER BY proportion DESC LIMIT 1;
--shows name, reviews, min installs, the min install and review ratio of the most installed app with more than 100000 installs
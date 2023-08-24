-- Comments in SQL Start with dash-dash --
--Q1
SELECT * FROM analytics WHERE id = 1880;

--Q2
SELECT app_name, id FROM analytics WHERE last_updated = '2018-08-01';

--Q3
SELECT category, COUNT(*) AS app_count
FROM analytics
GROUP BY category
ORDER BY category;

--Q4
SELECT app_name, reviews
FROM analytics
GROUP BY app_name, reviews
ORDER BY reviews DESC
LIMIT 5;

--Q5 
SELECT app_name, reviews
FROM analytics
WHERE rating >= 4.8
GROUP BY app_name, reviews
ORDER BY reviews DESC
LIMIT 1;

--Q6
SELECT category, AVG(rating) AS average_rating
FROM analytics
GROUP BY category, rating
ORDER BY average_rating DESC;

--Q7
SELECT app_name, price, rating
FROM analytics
WHERE rating < 3
ORDER BY price DESC
LIMIT 1;

--Q8
SELECT app_name, rating, min_installs
FROM analytics
WHERE min_installs <=50 AND rating IS NOT NULL
ORDER BY rating DESC;

--Q9
SELECT app_name
FROM analytics
WHERE rating < 3 AND reviews >= 10000;

--Q10
SELECT app_name, reviews
FROM analytics
WHERE price >= 0.10 AND price <= 1.00
ORDER BY reviews DESC
LIMIT 10;

--Q11
SELECT app_name, last_updated
FROM analytics
WHERE last_updated = (
    SELECT MIN(last_updated) 
    FROM analytics
    );

--Q12
SELECT app_name, price
FROM analytics
ORDER BY price DESC
LIMIT 1;

--Q13
SELECT COUNT(*) AS total_reviews
FROM analytics;

--Q14
SELECT category, COUNT(*)
FROM analytics
GROUP BY category
HAVING COUNT(*) > 300;

--Q15
SELECT app_name, reviews, min_installs, (min_installs * 1.0 / reviews) AS proportion
FROM analytics
WHERE min_installs >= 100000
ORDER BY proportion DESC
LIMIT 1;
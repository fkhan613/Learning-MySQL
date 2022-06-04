SELECT 
	c.customer_id,
    c.first_name,
    c.points,
    'Bronze' AS 'type'
FROM customers c
WHERE c.points < 2000
UNION
SELECT 
	c.customer_id,
    c.first_name,
    c.points,
    'Silver' AS 'type'
FROM customers c
WHERE c.points BETWEEN 2000 AND 3000
UNION
SELECT 
	c.customer_id,
    c.first_name,
    c.points,
    'Gold' AS 'type'
FROM customers c
WHERE c.points > 3000
ORDER BY first_name
UPDATE orders
SET comments = 'GOLD CUSTOMER'
WHERE customer_id IN
		(SELECT customer_id
		FROM customers
		WHERE points > 3000)
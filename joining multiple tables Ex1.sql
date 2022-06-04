USE sql_invoicing;

SELECT 
p.date,
c.name,
p.amount,
pm.name AS payment_method
FROM clients c
JOIN payments p
	ON p.client_id = c.client_id
JOIN payment_methods pm
	ON pm.payment_method_id = p.payment_method
DELETE FROM invoices
WHERE client_id = 
		(SELECT *
		FROM clients
		WHERE name = 'Myworks')
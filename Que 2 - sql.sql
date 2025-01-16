-- Which countries have the most Invoices?

SELECT billing_country, COUNT(invoice_id)
FROM invoice
GROUP BY billing_country
ORDER BY COUNT(invoice_id) DESC
LIMIT 1;
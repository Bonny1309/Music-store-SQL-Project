-- Which city has the best customers? We would like to throw a promoƟonal Music FesƟval 
-- in the city we made the most money. Write a query that returns one city that has the highest sum of invoice totals. 
-- Return both the city name & sum of all invoice totals

select billing_city, round(sum(total),2) AS invoice_sum
from invoice
group by billing_city
order by invoice_sum desc
limit 1;
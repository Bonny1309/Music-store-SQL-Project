-- We want to find out the most popular music Genre for each country. We determine the 
-- most popular genre as the genre with the highest amount of purchases. Write a query that returns each country along with the top Genre. 
-- For countries where the maximum number of purchases is shared return all Genres 

select * from 
(select invoice.billing_country, genre.name, count(invoice_line.quantity) as purchase_count,
dense_rank() over (partition by invoice.billing_country order by count(invoice_line.quantity) desc) AS rk
from invoice
join invoice_line
on invoice.invoice_id = invoice_line.invoice_id
join track
on invoice_line.track_id = track.track_id
join genre
on track.genre_id = genre.genre_id
group by invoice.billing_country, genre.name) as a
where rk = 1;


 -- Find how much amount spent by each customer on artists? Write a query to return customer name, artist name and total spent 


select customer.customer_id, customer.first_name, customer.last_name, artist.name, sum(invoice.total)
from customer
join invoice
on customer.customer_id = invoice.customer_id
join invoice_line
on invoice.invoice_id = invoice.invoice_id
join track
on invoice_line.track_id = track.track_id
join album
on track.album_id = album.album_id
join artist
on album.artist_id = artist.artist_id
group by customer.customer_id, customer.first_name, customer.last_name, artist.name
order by sum(invoice.total) desc;



-- Who is the best customer? The customer who has spent the most money will be declared the best customer. 
-- Write a query that returns the person who has spent the most money 

select * from customer;
select * from invoice;

select customer.customer_id, customer.first_name, customer.last_name, round(sum(invoice.total),2) as money_spent
from customer
join invoice
on customer.customer_id = invoice.customer_id
group by customer.customer_id, customer.first_name, customer.last_name
order by money_spent desc;
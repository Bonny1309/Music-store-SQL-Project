 -- What are top 3 values of total invoice? 
 
 SELECT round(total,2) FROM invoice
 order by total desc
 limit 3;				
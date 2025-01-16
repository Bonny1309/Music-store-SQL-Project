-- Let's invite the artists who have written the most rock music in our dataset. 
-- Write a query that returns the Artist name and total track count of the top 10 rock bands 

select artist.name, count(track.track_id), genre.name
from artist
join album
ON artist.artist_id = album.artist_id
join track
on album.album_id = track.album_id
join genre
on track.genre_id = genre.genre_id
where genre.name = "Rock"
group by artist.name
order by count(track.track_id) desc
limit 10;

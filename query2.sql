
select * from roles limit 10;

-- query 1 : join directors dan genres ke tabel movies, limit 50 baris
select md.director_id, d.first_name, d.last_name, m.name, m.year, m.rankscore, ms.genre from movies_directors md left join directors d on md.director_id = d.id left join movies m on md.movie_id = m.id inner join movies_genres ms on m.id=ms.movie_id limit 50; 

select * from movies m 
 left join movies_directors ms 
 on m.id = ms.movie_id 
 inner join directors d 
 on ms.director_id = d.id
 left join movies_genres mg 
 on m.id = mg.movie_id 
 limit 10;

-- query 2 : join movies dan roles berdasarkan table actors
select * from roles r left join actors a on r.actor_id = a.id left join movies m on r.movie_id = m.id limit 50;

---
select *
 from actors a left join roles r 
 on a.id = r.actor_id 
 left join movies m 
 on r.movie_id = m.id 
 limit 10;

-- 1
select d.first_name, d.last_name, count(distinct dg.genre) as num_genre_directed
from directors_genres dg
left join directors d
on dg.director_id = d.id
group by dg.director_id, d.first_name, d.last_name
order by num_genre_directed desc
 limit 10;

 -- 2
 select a.id, a.first_name, count(r.role) as role_count
 from actors a
 left join roles r 
 on a.id = r.actor_id 
 group by a.id, a.first_name
 having count (r.role) > 5
 order by role_count desc
 limit 5;

-- 3
select md.director_id, d.first_name, d.last_name, count(md.movie_id) as total_movies_directed
from movies_directors md
left join directors d
on md.director_id = d.id
group by md.director_id, d.id, d.first_name, d.last_name
order by total_movies_directed desc
limit 10;

-- 4
select year, count(*) as release_count
from movies
group by year
order by release_count desc
limit 10;

-- 5 
-- select m.id, m.name , string_agg(mg.genre, " ," ) as genres
-- from movies_genres mg
-- left join movies m 
-- on mg.movie_id = m.id
-- group by m.id, m.name;

SELECT 
    m.id, 
    m.name, 
    STRING_AGG(mg.genre, ', ') as genres
FROM movies m
LEFT JOIN movies_genres mg 
    ON m.id = mg.movie_id
GROUP BY m.id, m.name;

select * from movies limit 10;
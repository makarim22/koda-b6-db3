-- select * from movies;

select * from movies where year > 2000;

select * from actors where first_name ilike '%s' or last_name ilike '%s';

select * from movies where rankscore between 5 and 7 and year between 2004 and 2006;

select count(*) from movies where rankscore=6;

select count(*) from actors where first_name ilike '%s';
select count(*) from actors where last_name ilike '%s';

select count(*) from movies where rankscore between 5 and 7 and year between 2004 and 2006;

select count(*) from movies where rankscore=6;

select name, genre from movies m inner join movies_genres mg on m.id = mg.movie_id limit 20;


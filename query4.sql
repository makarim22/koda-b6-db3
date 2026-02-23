select * 
from directors d  
left join directors_genres dg  
ON d.id = dg.director_id
where d.first_name like '%Arthur' and d.last_name like '%Lubin';
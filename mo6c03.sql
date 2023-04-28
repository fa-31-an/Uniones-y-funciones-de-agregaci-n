
// microdesafio 1
select title, name
from series
inner join genres on genre_id = genres.id;



select title, first_name, last_name
from actor_episode
inner join episodes on episodes.id = actor_episode.episode_id
inner join actors on actors.id = actor_episode.actor_id
order by title asc;


// microdesafio 2


select distinct actors.first_name, actors.last_name from actors
inner join actor_movie on actors.id=actor_movie.actor_id
inner join movies on movies.id=actor_movie.movie_id  
where title like '%Guerra de las galaxias%';


// microdesafio 3

select movies.title,  coalesce (genres.name,'No tiene género') from movies
left join genres on movies.genre_id =genres.id;


//microdesafio 4

select title, datediff(end_date,release_date) as Duracion from series;


// microdesafio 5

select first_name from actors
where length(first_name)>6
order by first_name;

select count(*) as 'Total de episodios' from episodes;

select series.title, count(seasons.title) from series
inner join seasons on seasons.serie_id=series.id
group by series.title;

select genres.name, count(movies.title) from genres
inner join movies on genres.id = movies.genre_id
group by genres.name 
having count(movies.title) >= 3;
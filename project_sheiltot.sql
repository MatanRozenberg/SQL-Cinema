use project;

#1) for all actor who played in more than 2 movies and have "D" in his name shoe his name and id:
select a.first_name ,a.last_name ,a.id
from actors a, actors_in_movies m
where a.id =m.actor_id and a.first_name like '%d%'
group by m.actor_id
having count(m.actor_id) > 2 ;

#2) show only 1 row of the cartoon movies id, namds and durations in descending order   :
select m.id, m.movie_name, m.Duration
from cartoon c, movie m
where c.movie_id = m.id 
order by M.Duration DESC
limit 1;

#3) show the custumr id, name , movie name he saw, number of seats he order and the theater id (where he watched the movie). only if the customer order more than 3 seats :
select  c.first_name, c.last_name, m.movie_name, t.number_of_seats, o.theater_id,  o.id as order_id
from customer c ,orders o, movie m ,(select  order_id, count(order_id) as number_of_seats
										from seat_number
										group by order_id
										having count(order_id)>3) t
where c.id =o.customer_id and o.id = t.order_id and m.id = o.movie_id;

#4) for all the movies in the language english show the movie id,  movie name, duration and duration with commercials (duration + 10%) :
select id,movie_name,Duration, 1.1 *Duration as Duration_with_commercials 
from movie 
where language = "english";

set sql_safe_updates = 0;
update movie
set Duration = Duration + 15
where 120>Duration ;

#6) show the cutomer id who saw the movie 'Shotgun Wedding' :
select c.id
from customer c, orders o,  movie m
where c.id = o.customer_id and m.id = o.movie_id and movie_name = 'Shotgun Wedding';

#7) insert a new order with order_method= online, payment_method = credit, order_id = 9000 
# and customer id is the id of the customer with the phone number 0571161011 and  theater id and movie id belong to the movie with the shortst duration:

insert into orders (id ,payment_method,customer_id,movie_id,theater_id,order_method)
select 9000 ,'credit' ,c.id, s.movie_id, t.theater, 'online'
from customer c,  screenings s , (select s.theater_id as theater, s.movie_id as movie_id
								from screenings s, movie m
								where s.movie_id = m.id and m.Duration = (select min(Duration)
																			from movie))t
where c.phone_number ="0571161011" and s.movie_id =t.movie_id; 

#8) show all the Seniority of the employees in descending order,For every employee show his id and Seniority:
select id,  2023- Year_of_employment as Seniority
from employee;

#9) creat an new theater, his id is the max id in the system and if type and number of seats are like the theater with tha smallest amount of seats:
insert into theater (id ,number_of_seats, theater_type )
select max(t1.id)+1, t2.number_of_seats, t2.theater_type
from theater t1 , (select number_of_seats,theater_type
					from theater
					order by number_of_seats asc
					limit 1)t2;
                    
#10) show the name of the actros who played in a movies that longer than the avg duration show also the name of the movies:
select a.first_name , a.last_name, m.movie_name
from actors a, movie m , actors_in_movies c
where a.id = c.actor_id and m.id =c.movie_id and m.Duration > (select avg(Duration)
																from movie) ;

#11) show the name and id for all the cusomer who order in person the name and id of the employee that served them:
select  c.id as customer_id ,c.first_name, c.last_name , e.id as employee_id ,e.first_name,e.last_name
from customer c , employee e ,orders o
where o.order_method = "in person" and o.customer_id = c.id and o.employee_id=e.id;

#12) update the genre of the movies in english to drama:
update movie
set genre = "Drama" 
where language = 'english';

#13) show the name, id ,Duration of the live action movie that longets than the avg:
select id ,movie_name , Duration
from movie 
where exists(select movie_id
				from live_action l
                where l.movie_id = movie.id and movie.Duration > (select avg(Duration)
																from movie));
                                                                
#14) show  the name and gender of all the female actors who played in a live action movie:
select  distinct a.id, a.first_name , a.last_name , a.gender
from actors a, actors_in_movies c,live_action l
where  a.id = c.actor_id and c.movie_id =l.movie_id and a.gender = "F";                                                         

#15) show all the movies that were filmed in France:
select m.id ,m.movie_name 
from live_action l, movie m
where  l.movie_id = m.id and l.location = "France";

#16) show the name of the director who direct the movie that screen in theater 6 and the actors who played in the  same movie:
select m.director,  a.first_name, a.last_name
from screenings s, movie m, actors a, actors_in_movies c
where s.movie_id = m.id  and s.theater_id = 6 and  a.id=c.actor_id and c.movie_id= s.movie_id;

#17:
select m.movie_name , s.theater_id
from screenings s, movie m
where s.movie_id = m.id and s.theater_id between 1 and 7
                                                                

select status, avg(flight_mileage) as average_flight_distance
 	from customer as c
 	inner join ticket as t
 		on c.id = t.customer_id
 	inner join flight as f
 		on t.flight_id = f.flight_number
 	group by status;

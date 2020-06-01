select a.aircraft, count(a.aircraft) as number_times_booked
 	from customer as c
	inner join ticket as t
		on c.id = t.customer_id
	inner join flight as f
 		on f.flight_number = t.flight_id
 	inner join aircraft as a
 		on a.id = f.aircraft
 	where status = "Gold"
        group by a.aircraft
	order by number_times_booked desc
     	limit 1;

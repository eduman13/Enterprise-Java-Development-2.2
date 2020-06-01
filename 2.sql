create table customer(
	id int not null auto_increment,
	name varchar(75),
	status varchar(15),
	total_mileage int,
	primary key(id)
);

create table aircraft(
	id int not null auto_increment,
	aircraft varchar(50),
	total_seats int,
	primary key(id)
);

create table flight(
	flight_number varchar(25) not null,
	flight_mileage int,
    	aircraft int,
	primary key(flight_number),
    	foreign key (aircraft) references aircraft(id)
);

create table ticket(
	id int not null auto_increment,
	customer_id int,
	flight_id varchar(25),
	primary key(id),
	foreign key (flight_id) references flight(flight_number),
	foreign key (customer_id) references customer(id)
);

INSERT INTO customer(name, status, total_mileage) VALUES 
("Agustine Riviera","Silver",115235),
("Alaina Sepulvida","None",6008),
("Tom Jones","Gold",205767),
("Sam Rio","None",2653),
("Jessica James","Silver",127656),
("Ana Janco","Silver",136773),
("Jennifer Cortez","Gold",300582),
("Christian Janco","Silver",14642);

INSERT INTO aircraft (aircraft, total_seats) VALUES
("Boeing 747",400),
("Airbus A330",236),
("Boeing 777",264);

INSERT INTO flight(flight_number, flight_mileage, aircraft) VALUES
("DL143",135,1),
("DL122",4370,2),
("DL53",135,3),
("DL222",1765,3),
("DL37",531,1)
;

INSERT INTO ticket(customer_id, flight_id) VALUES
(1,"DL143"),
(1,"DL122"),
(2,"DL122"),
(3,"DL122"),
(3,"DL53"),
(4,"DL143"),
(4,"DL37"),
(5,"DL143"),
(5,"DL122"),
(6,"DL222"),
(7,"DL222"),
(8,"DL222")
;
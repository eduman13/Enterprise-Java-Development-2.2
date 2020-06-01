create table publication(
	id int not null auto_increment,
     	title varchar(100),
	word_count int,
	views int,
	id_author int,
	primary key(id),
        foreign key (id_author) references author(id)
);

create table author(
	id int not null auto_increment,
	name varchar(75),
	primary key(id)
);

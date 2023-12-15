create table users(
	user_id uuid DEFAULT gen_random_uuid() NOT NULL primary key,
	password varchar(50),
	last_name varchar(50),
	first_name varchar(50),
	phone varchar(50),
	isAdmin boolean default false
);

select * from users

drop table users;

CREATE TABLE rooms(
	room_id varchar(10) primary key,
	name varchar(255),
	description text,
	image varchar(255),
	rooms int,
	beds int,
	bathrooms int,
	balconies int,
	adults int,
	children int,
	hasWifi boolean,
	hasTV boolean,
	hasMinibar boolean,
	hasAC boolean
);

create table room_booking(
	booking_id uuid DEFAULT gen_random_uuid() NOT NULL,
	room_id varchar(10),
	start_date timestamp,
	end_date timestamp,
	customer_name varchar(100),
	customer_number varchar(15),
	user_id uuid,
	foreign key(room_id)
		references rooms(room_id),
	foreign key(user_id)
		references users(user_id)
);

drop table room_booking;

create table halls(
	hall_id varchar(10) primary key,
	name varchar(255),
	image varchar(255),
	description text,
	chairsOnly int,
	roundTable int,
	studentTable int,
	pShape int
);

create table hall_booking(
	booking_id uuid DEFAULT gen_random_uuid() NOT NULL,
	hall_id varchar(10),
	start_date timestamp,
	end_date timestamp,
	customer_name varchar(100),
	customer_number varchar(15),
	user_id uuid,
	foreign key(hall_id)
		references halls(hall_id),
	foreign key(user_id)
		references users(user_id)
);



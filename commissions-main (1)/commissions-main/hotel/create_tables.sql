CREATE TABLE public.rooms (
    room_id character varying(10) NOT NULL,
    name character varying(255),
    description text,
    image character varying(255),
    rooms integer,
    beds integer,
    bathrooms integer,
    balconies integer,
    adults integer,
    children integer,
    haswifi boolean,
    hastv boolean,
    hasminibar boolean,
    hasac boolean,
    price integer
);

CREATE TABLE public.users (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    password character varying(50),
    email character varying(50),
    phone character varying(50),
    role character varying(25)
);


CREATE TABLE public.room_booking (
    booking_id uuid DEFAULT gen_random_uuid() NOT NULL,
    room_id character varying(10),
    start_date timestamp without time zone,
    end_date timestamp without time zone,
    user_id uuid,
	foreign key(user_id)
	references users(id),
	foreign key(room_id)
	references rooms(room_id)
);

CREATE TABLE public.halls (
    hall_id character varying(10) NOT NULL primary key,
    name character varying(255),
    image character varying(255),
    description text,
    chairsonly integer,
    roundtable integer,
    studenttable integer,
    pshape integer
);

CREATE TABLE public.hall_booking (
    booking_id uuid DEFAULT gen_random_uuid() NOT NULL,
    hall_id character varying(10),
    start_date timestamp without time zone,
    end_date timestamp without time zone,
    user_id uuid,
	foreign key (user_id)
	references users(id),
	foreign key(hall_id)
	references halls(hall_id)
);
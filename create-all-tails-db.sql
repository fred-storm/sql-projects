-- Create All Tails DB for web page

drop table if exists appointment;
drop table if exists pet;
drop table if exists p_owner;


create table p_owner (
	p_owner_id int Generated Always as Identity (Start with 100 Increment By 1) Primary Key Not Null,
	p_owner_name varchar(50) Not Null,
	p_owner_email varchar(50) Not Null,
	p_owner_tel numeric Not Null
);

create table pet (
	pet_id int Generated Always as Identity (Start with 100 Increment By 1) Primary Key Not Null,
	pet_name varchar(50) Not Null,
	pet_type varchar(20) Not Null,
	p_owner_id int Not Null,
	Constraint fk_owner
		Foreign Key (p_owner_id)
		References p_owner (p_owner_id)
);

create table appointment (
	appt_id int Generated Always as Identity (Start with 100 Increment By 1) Primary Key Not Null,
	pet_id int Not Null,
	Constraint fk_pet
		Foreign Key (pet_id)
		References Pet (pet_id),
	appt_type varchar(15) Not Null,
	appt_date date Not Null,
	appt_time time Not Null,
	num_pets int Not Null,
	appt_reason varchar(300) Not Null,
	acpt_terms bit Not Null
);
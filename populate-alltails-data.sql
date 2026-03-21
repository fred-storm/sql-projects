--Populate some data into the AllTails DB

select * from pet
select * from owner
select * from appointment

insert into owner (owner_name, owner_email, owner_tel)
	values ('John Doe', 'joedoe@jd.can', '5555555555');

insert into pet (pet_name, pet_type, owner_id)
	values ('Rambo', 'dog','100');

insert into appointment (pet_id, appt_type, appt_date, appt_time, num_of_pets, appt_reason, acpt_terms)
	values ('101', 'veteranary', '2026-04-01', '13:00', '1', 'Its broke fix it', '1');
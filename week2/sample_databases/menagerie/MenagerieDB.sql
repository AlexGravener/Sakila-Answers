-- create database menagerie;

use menagerie;

# drop the event table if it exists, then recreate it

DROP TABLE IF EXISTS event;

# drop the pet table if it exists, then recreate it

DROP TABLE IF EXISTS pet;





CREATE TABLE pet
(
  id		int primary key auto_increment,
  name    VARCHAR(20),
  owner   VARCHAR(20),
  species VARCHAR(20),
  sex     CHAR(1),
  birth   DATE,
  death   DATE
);


CREATE TABLE event
(
id int primary key auto_increment,
  pet_id int,
  date   DATE,
  type   VARCHAR(15),
  remark VARCHAR(255), 
  foreign key (pet_id) references pet(id)
);

insert into pet (name, owner,  species, sex,  birth, death)  
values ('Fluffy', 	'Harold', 'cat',	'f',	'1993-02-04', null),
('Claws', 'Gwen', 'cat', 'm	', '1994-03-17', null),
('Buffy', 'Harold', 'dog','f', '1989-05-13', null),
('Fang', 'Benny', 'dog', 'm', 	'1990-08-27'	, null),
('Bowser', 'Diane', 'dog', 'm',	'1979-08-31',	'1995-07-29'),
('Chirpy', 'Gwen', 'bird', 'f',	'1998-09-11'	, null),
('Whistler', 'Gwen', 'bird', null,	'1997-12-09', null),
('Slim', 'Benny', 'snake', 'm',	'1996-04-29', null);


insert into event (pet_id ,  date , type ,  remark)
values 
(1, '1995-05-15', 'litter', 	'4 kittens, 3 female, 1 male'),
(3, '1993-06-23', 'litter', '5 puppies, 2 female, 3 male'),
(3, '1994-06-19', 'litter', '3 puppies, 3 female'),
(6, '1999-03-21', 'vet', 'needed beak straightened'),
(8, '1997-08-03', 'vet', 'broken rib'),
(5, '1991-10-12', 'kennel', null),
(4, '1991-10-12', 'kennel', null),
(4, '1998-08-28', 'birthday', 'Gave him a new chew toy'),
(3, '1998-03-17', 'birthday', 'Gave him a new flea collar'),
(7, '1998-12-09', 'birthday', 'First birthday');


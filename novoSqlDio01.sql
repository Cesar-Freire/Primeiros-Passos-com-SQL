use first_example;
create table person(
    person_id SMALLINT unsigned,
    fnamme VARCHAR(20),
    lname VARCHAR(20),
    gender enum('M', 'F'),
    birth_date DATE,
    street VARCHAR(20),
    city VARCHAR(20),
    state VARCHAR(20),
    country VARCHAR(20),
    postal_code VARCHAR(20),
	constraint pk_person primary key (person_id)
);

use first_example;
show tables;
desc person;

create table favorite_food(
	
	person_id SMALLINT unsigned,
	food VARCHAR(20),
	constraint pk_favorite_food primary key (person_id, food),
	constraint fk_favorite_food_person_id FOREIGN key (person_id)
	REFERENCES person(person_id)
);

SELECT * FROM information_schema.table_constraints
WHERE constraint_schema = 'person';

desc favorite_food;
show databases;

desc information_schema.table_constraints;
SELECT * FROM information_schema.table_constraints
WHERE constraint_schema = 'first_example';

desc person;
insert into person values ('1', 'Carolina', 'Silva', 'F', '1979-08-21',
							'rua tal', 'Cidade J', 'RJ', 'Brasil', '26054-89');
                            
insert into person values ('2', 'Carolina', 'Silva', 'F', '1979-08-21',
							'rua tal', 'Cidade J', 'RJ', 'Brasil', '26054-89');
                            
insert into person values ('3', 'Carolina', 'Silva', 'F', '1979-08-21',
							'rua tal', 'Cidade J', 'RJ', 'Brasil', '26054-89'),
							('4', 'Carolina', 'Silva', 'F', '1979-08-21',
							'rua tal', 'Cidade J', 'RJ', 'Brasil', '26054-89');

desc person;
select * from person;

delete from person where person_id = 2
					or person_id = 3
					or person_id = 4;
                    
select * from person;
create DATABASE first_example;
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
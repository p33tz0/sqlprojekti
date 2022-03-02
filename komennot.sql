CREATE TABLE certificates (
	Id SERIAL PRIMARY KEY,
	name varchar(255) NOT NULL,
    person_id int,
	CONSTRAINT fk_person
        FOREIGN KEY(person_id)
            REFERENCES person(id)
);






INSERT INTO person (name, age, student) VALUES ('Pötrö', 20, True);

SELECT * FROM person

INSERT INTO certificates (name, person_id) VALUES ('Scrum', 2);

INSERT INTO certificates (name, person_id) VALUES ('GCP', 3), ('Scrum', 5), ('GCP', 6);

SELECT * FROM person
SELECT * FROM certificates;
SELECT person.name, person.id, certificates.name FROM certificates, person WHERE certificates.name = 'GCP' AND certificates.person_id = person.id ;
SELECT person.name, person.id, certificates.name FROM certificates, person WHERE certificates.name = 'Scrum' AND certificates.person_id = person.id;

CREATE DATABASE world;
\d
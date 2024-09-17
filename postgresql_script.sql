-- Create Person table
CREATE TABLE Person (
    person_id SERIAL PRIMARY KEY,  -- Auto-incrementing ID
    name VARCHAR(100) NOT NULL     -- Person's name
);

-- Create Passport table with a foreign key to Person
CREATE TABLE Passport (
    passport_id SERIAL PRIMARY KEY,            -- Auto-incrementing ID
    person_id INT UNIQUE,                      -- Ensures 1:1 relationship
    passport_number VARCHAR(20) NOT NULL,      -- Passport number
    FOREIGN KEY (person_id) REFERENCES Person(person_id) ON DELETE CASCADE
);

-- Insert into Person
INSERT INTO Person (name) VALUES ('Alice'); -- ID 1
INSERT INTO Person (name) VALUES ('Bob'); -- ID 2

-- Insert into Passport
INSERT INTO Passport (person_id, passport_number) VALUES (1, 'A1234567'); -- Alice's passport
INSERT INTO Passport (person_id, passport_number) VALUES (2, 'B7654321'); -- Bob's passport

select * from passport;
select * from person;



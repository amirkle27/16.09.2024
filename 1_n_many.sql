
-- Create table for Person
CREATE TABLE Person (
    person_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
    passport_id INTEGER,
    FOREIGN KEY (passport_id ) REFERENCES Passport(passport_id )

);

-- Create table for Passport with foreign key linking to Person
CREATE TABLE Passport (
    passport_id INTEGER PRIMARY KEY,
    person_id INTEGER UNIQUE NOT NULL,
    passport_number TEXT NOT NULL UNIQUE,
    FOREIGN KEY (person_id) REFERENCES Person(person_id)
);

-- Insert into Person
INSERT INTO Person (person_id, name) VALUES (1, 'Alice');
INSERT INTO Person (person_id, name) VALUES (2, 'Bob');
INSERT INTO Person (person_id, name) VALUES (3, 'Danny');

-- Insert into Passport
	INSERT INTO Passport (passport_id, person_id, passport_number) VALUES (1, 1, 'A1234567');
INSERT INTO Passport (passport_id, person_id, passport_number) VALUES (2, 2, 'B7654321');
INSERT INTO Passport (passport_id, person_id, passport_number) VALUES (3, 12, 'B7654320');

SELECT * from Person;
SELECT * FROM Passport;

-- Create table for Author
CREATE TABLE Author (
    author_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
);

-- Create table for Book with foreign key linking to Author
CREATE TABLE Book (
    book_id INTEGER PRIMARY KEY,
    author_id INTEGER,
    title TEXT NOT NULL,
    FOREIGN KEY (author_id) REFERENCES Author(author_id)
);

-- Insert into Author
INSERT INTO Author (author_id, name) VALUES (1, 'J.K. Rowling');
INSERT INTO Author (author_id, name) VALUES (2, 'George R.R. Martin');

-- Insert into Book
INSERT INTO Book (book_id, author_id, title) VALUES (1, 1, 'Harry Potter and the Sorcerers Stone');
INSERT INTO Book (book_id, author_id, title) VALUES (2, 1, 'Harry Potter and the Chamber of Secrets');
INSERT INTO Book (book_id, author_id, title) VALUES (3, 2, 'A Game of Thrones');
INSERT INTO Book (book_id, author_id, title) VALUES (4, 2, 'A Clash of Kings');

select * from author;
select * from book;

-- Create table for Student
CREATE TABLE Student (
    student_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
);

-- Create table for Course
CREATE TABLE Course (
    course_id INTEGER PRIMARY KEY,
    course_name TEXT NOT NULL
);

CREATE TABLE StudentCourse (
    student_id INTEGER,
    course_id INTEGER,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);

-- Insert into Student
INSERT INTO Student (student_id, name) VALUES (1, 'Alice');
INSERT INTO Student (student_id, name) VALUES (2, 'Bob');

-- Insert into Course
INSERT INTO Course (course_id, course_name) VALUES (1, 'Math 101');
INSERT INTO Course (course_id, course_name) VALUES (2, 'Physics 101');
INSERT INTO Course (course_id, course_name) VALUES (3, 'Python');

select * from Student s;
select * from Course c;

INSERT INTO StudentCourse (student_id, course_id) VALUES(1, 1);
INSERT INTO StudentCourse (student_id, course_id) VALUES(1, 2);

INSERT INTO StudentCourse (student_id, course_id) VALUES(2, 1);
INSERT INTO StudentCourse (student_id, course_id) VALUES(2, 2);

SELECT * FROM StudentCourse sc;
SELECT sc.student_id, sc.course_id, s.name, c.course_name
from StudentCourse sc
join Student s on sc.student_id = s.student_id
join Course c on sc.course_id = c.course_id;

select s.name, c.course_name
from Student s
cross join Course c;
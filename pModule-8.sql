-- Active: 1747586967298@@127.0.0.1@5432@ph
CREATE TABLE students2 (
    id SERIAL PRIMARY KEY,
    roll INTEGER UNIQUE,
    name VARCHAR(25) NOT NULL,
    age INTEGER,
    department VARCHAR(15),
    score INTEGER,
    status VARCHAR(15),
    last_login DATE
);

drop table students2;
-- Table Alteration Tasks (Based on 8-1 to 8-3)
ALTER TABLE students2 ADD COLUMN email VARCHAR(50)

ALTER TABLE students2 RENAME email to student_email;

ALTER TABLE students2
ADD constraint student_email UNIQUE (student_email);

CREATE TABLE courses (course_id SERIAL PRIMARY KEY)

ALTER TABLE students2 DROP last_login;

-- Filtering & Logical Operations (Based on 8-5, 8-7, 8-8)
SELECT * FROM students2 WHERE score > 80 AND score is NOT NULL;

SELECT * FROM students2 WHERE NOT department = 'CSE';

SELECT * FROM students2 WHERE name LIKE 'A%';

SELECT * FROM students2 WHERE name ILIKE 'a%';

SELECT * FROM students2 WHERE age BETWEEN 18 AND 25;

SELECT * FROM students2 WHERE roll IN (10, 11);

-- Aggregate Functions (Based on 8-6)
SELECT length(name) FROM students2;

SELECT avg(score) FROM students2 WHERE department = 'CSE';

SELECT max(age) FROM students2;

SELECT min(age) FROM students2;

-- Update & Delete Operations (Based on 8-9, 8-10)

UPDATE students2 SET status = 'failed' WHERE score < 50;

SELECT * FROM students2 LIMIT 5 OFFSET 5 * 1;

SELECT * FROM students2;
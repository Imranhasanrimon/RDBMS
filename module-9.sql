--DATE MANUPULATION
SHOW timezone;

SELECT now();

CREATE TABLE timez (
    ts TIMESTAMP without time zone,
    tsz TIMESTAMP with TIME ZONE
)

INSERT INTO
    timez
VALUES (
        '2024-01-12 10:45:00',
        '2024-01-12 10:45:00'
    )

SELECT * FROM timez;

SELECT CURRENT_DATE;

SELECT now()::date;

SELECT to_char(now(), 'TZ');

SELECT CURRENT_DATE - INTERVAL '1 year 2 month';

SELECT age (CURRENT_DATE, '1-02-2003');

SELECT extract( MONTH FROM '01-2-2003'::date );

--GROUP BY CLAUSE
SELECT country, count(*), avg(age)
FROM students
GROUP BY
    country
HAVING
    avg(age) > 21;

SELECT extract(
        YEAR
        FROM dob
    ) as birth_year, count(*)
FROM students
GROUP BY
    birth_year;

DROP TABLE "user";
-- Relational table related practice
CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
);

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user" (id) ON DELETE CASCADE
)

DROP TABLE post;

DROP TABLE "user";

INSERT INTO
    "user" (username)
VALUES ('akash'),
    ('batash'),
    ('sagor'),
    ('nodi');

INSERT INTO
    post (title, user_id)
VALUES (
        'Dynamically evolve leading-edge niches after flexible.',
        2
    ),
    (
        'Efficiently reconceptualize cost effective human capital.',
        1
    ),
    (
        'Compellingly enhance unique opportunities without 2.0.',
        4
    ),
    (
        'Uniquely re-engineer viral e-business via standardized.',
        4
    );

INSERT INTO post (title, user_id) VALUES ('test2', NULL);

ALTER TABLE post alter COLUMN user_id SET NOT NULL;

DELETE FROM "user" WHERE id = 4;

INSERT INTO
    post (title, user_id)
VALUES ('lafkj alkfj afj alkfj', NULL);

SELECT *
FROM post as p
    FULL OUTER JOIN "user" on "user".id = p.user_id;

SELECT * FROM "user";

--CROSS.SQL
CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    dapt_id INT
);

CREATE TABLE departments (
    dept_id INT,
    dept_name VARCHAR(50)
);

INSERT INTO
    employees
VALUES (1, 'John Doe', 101),
    (2, 'Jane Smith', 102);

INSERT INTO
    departments
VALUES (101, 'Human Resource'),
    (102, 'Marketing');

--CROSS JOIN
SELECT * FROM employees CROSS JOIN departments;

--NATURAL JOIN
SELECT * FROM employees NATURAL JOIN departments;

SELECT * FROM employees;

SELECT * FROM departments;

DROP TABLE employees;

DROP TABLE departments;
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
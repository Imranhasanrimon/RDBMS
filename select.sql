-- Active: 1747586967298@@127.0.0.1@5432@ph
CREATE Table students (
    id SERIAL PRIMARY KEY,
    fName VARCHAR(20) NOT NULL,
    lName VARCHAR(20) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(20),
    email VARCHAR(30),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(20)
);

INSERT INTO
    students (
        fName,
        lName,
        age,
        grade,
        course,
        email,
        dob,
        blood_group,
        country
    )
VALUES (
        'nahid',
        'hossain',
        21,
        'B+',
        'mathematics',
        'nahid@gmail.com',
        '2002-03-11',
        'O+',
        'Bangladesh'
    ),
    (
        'tania',
        'akter',
        22,
        'A',
        'sociology',
        'tania@gmail.com',
        '2001-06-14',
        'A+',
        'Pakistan'
    ),
    (
        'rifat',
        'karim',
        24,
        'B-',
        'ict',
        'rifatkarim@gmail.com',
        '2000-11-22',
        'B+',
        'Bangladesh'
    ),
    (
        'sabbir',
        'ahmed',
        26,
        'C+',
        'english',
        'sabbir@gmail.com',
        '1998-08-10',
        'A-',
        'Bangladesh'
    ),
    (
        'mehzabin',
        'sultana',
        25,
        'A-',
        'history',
        'mehzabin@gmail.com',
        '1999-05-05',
        'AB+',
        'Bangladesh'
    ),
    (
        'asif',
        'iqbal',
        23,
        'A+',
        'physics',
        'asif@gmail.com',
        '2002-01-25',
        'O-',
        'China'
    ),
    (
        'maisha',
        'tasnim',
        22,
        'B',
        'philosophy',
        'maisha@gmail.com',
        '2001-07-30',
        'B+',
        'Bangladesh'
    ),
    (
        'sumaiya',
        'rahman',
        21,
        'A',
        'law',
        'sumaiya@gmail.com',
        '2002-09-17',
        'O+',
        'Russia'
    ),
    (
        'rakib',
        'hasan',
        24,
        'A-',
        'chemistry',
        'rakib@gmail.com',
        '2000-03-03',
        'A-',
        'Bangladesh'
    ),
    (
        'sajid',
        'khan',
        23,
        'B+',
        'criminology',
        'sajidkhan@gmail.com',
        '2001-04-09',
        'AB-',
        'Bangladesh'
    ),
    (
        'nishi',
        'islam',
        22,
        'A',
        'sociology',
        'nishi@gmail.com',
        '2002-06-20',
        'B+',
        'Bangladesh'
    ),
    (
        'fahim',
        'rahman',
        21,
        'A+',
        'ict',
        'fahim@gmail.com',
        '2003-01-15',
        'O-',
        'Bangladesh'
    ),
    (
        'sadia',
        'kabir',
        20,
        'A-',
        'political science',
        'sadia@gmail.com',
        '2003-10-01',
        'A+',
        'Bangladesh'
    ),
    (
        'arif',
        'uzzaman',
        26,
        'B',
        'economics',
        'arif@gmail.com',
        '1998-12-18',
        'B-',
        'Bangladesh'
    ),
    (
        'sanzida',
        'akter',
        23,
        'A+',
        'statistics',
        'sanzida@gmail.com',
        '2001-11-11',
        'O+',
        'Bangladesh'
    );

SELECT email FROM students;

SELECT email as "All Emails", age, blood_group FROM students;

SELECT * FROM students ORDER BY fname DESC;

SELECT * FROM students ORDER BY age ASC;

SELECT DISTINCT country FROM students;

SELECT DISTINCT blood_group FROM students;

SELECT * FROM students WHERE course = 'ict' AND grade = 'A+';

SELECT *
FROM students
WHERE (
        country = 'Russia'
        OR country = 'Pakistan'
    )
    AND age = 21;

SELECT * FROM students WHERE age != 24;

SELECT upper(fname), * FROM students;

SELECT concat(fname, ' ', lname) as fullName FROM students;

SELECT length(fname) FROM students;

SELECT avg(age) FROM students;

SELECT count(age) FROM students;

SELECT max(length(fname)) FROM students;
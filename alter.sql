-- Active: 1747586967298@@127.0.0.1@5432@ph
SELECT * FROM person2;

ALTER TABLE person2
ADD COLUMN email VARCHAR(50) DEFAULT 'default@gamil.com' NOT NULL;

ALTER Table person2 DROP COLUMN email;

ALTER Table person2 RENAME COLUMN age to user_age;

-- INSERT INTO person2 VALUES(13,'mokbul',90,'test@gmail.com')
-- Active: 1747586967298@@127.0.0.1@5432@ph
SELECT * FROM person2;

ALTER TABLE person2
ADD COLUMN email VARCHAR(50) DEFAULT 'default@gamil.com' NOT NULL;

ALTER TABLE person2 DROP COLUMN email;

ALTER TABLE person2 RENAME COLUMN age to user_age;

ALTER TABLE person2 ALTER COLUMN user_name TYPE VARCHAR(40);

ALTER TABLE person2 ALTER COLUMN user_age SET NOT NULL;

ALTER TABLE person2 ALTER COLUMN user_age DROP NOT NULL;

ALTER TABLE person2
ADD constraint unique_person2_user_age UNIQUE (user_age);

ALTER TABLE person2 DROP constraint unique_person2_user_age;

-- INSERT INTO person2 VALUES(13,'mokbul',90,'test@gmail.com')
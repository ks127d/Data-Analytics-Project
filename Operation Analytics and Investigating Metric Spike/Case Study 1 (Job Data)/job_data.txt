CREATE DATABASE job;

USE job;

/*job_data*/
CREATE TABLE job_data(
	ds DATE NOT NULL,
	job_id INT NOT NULL,
	actor_id INT NOT NULL,
	event VARCHAR(8) NOT NULL CHECK (event IN ('decision', 'skip', 'transfer')),
	language VARCHAR(12) NOT NULL,
	time_spent INT NOT NULL,
	org CHAR(1) NOT NULL
);


INSERT INTO job_data 
VALUES 
('2020-11-30',21,1001,'skip','English',15,'A'), 
('2020-11-30',22,1006,'transfer','Arabic',25,'B'), 
('2020-11-29',23,1003,'decision','Persian',20,'C'), 
('2020-11-28',23,1005,'transfer','Persian',22,'D'), 
('2020-11-28',25,1002,'decision','Hindi',11,'B'), 
('2020-11-27',11,1007,'decision','French',104,'D'), 
('2020-11-26',23,1004,'skip','Persian',56,'A'), 
('2020-11-25',20,1003,'transfer','Italian',45,'C');
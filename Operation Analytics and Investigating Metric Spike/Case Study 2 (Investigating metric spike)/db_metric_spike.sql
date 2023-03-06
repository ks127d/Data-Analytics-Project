CREATE DATABASE metric_spike;

USE metric_spike;

/*users*/
CREATE TABLE users(
	created_at DATETIME NOT NULL,
	user_id INT PRIMARY KEY,
	state VARCHAR(7) NOT NULL CHECK (state IN ('active', 'pending')),
	activated_at DATETIME DEFAULT NULL,
	language VARCHAR(12) NOT NULL,
	company_id INT NOT NULL
);

/*events*/
CREATE TABLE events(
	occurred_at DATETIME NOT NULL,
	user_id INT,
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	event_type VARCHAR(21) NOT NULL,
	event_name VARCHAR(30) NOT NULL,
	location VARCHAR(30) NOT NULL,
	device VARCHAR(50) NOT NULL,
	user_type INT DEFAULT NULL
);

/*email_events*/
CREATE TABLE email_events(
	occurred_at DATETIME,
	user_id INT,
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	actions VARCHAR(30),
	user_type INT
);

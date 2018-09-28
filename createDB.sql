CREATE DATABASE charter CHARSET utf8;

USE charter;

CREATE TABLE users (
	id INT PRIMARY KEY AUTO_INCREMENT,
	/*
		type:
		0 - user
		1 - admin
	*/
	`type` INT NOT NULL DEFAULT 0,
	username VARCHAR(30) NOT NULL,
	email VARCHAR(80) NOT NULL,
	pass VARBINARY(32) NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(40) NOT NULL,
	date_expires DATE DEFAULT NULL,
	date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	date_modified TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
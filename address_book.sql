CREATE DATABASE address_book;
show databases;
USE address_book;
SELECT DATABASE();

CREATE TABLE address_book (
	first_name				VARCHAR(255) NOT NULL,
    last_name				VARCHAR(255) NOT NULL,
    address					VARCHAR(255) NOT NULL,
    city					VARCHAR(255) NOT NULL,
    state					VARCHAR(255) NOT NULL,
    zip						INT(6) NOT NULL,
    phone_number			VARCHAR(10) NOT NULL,
    email_id				VARCHAR(255) NOT NULL
);
DESCRIBE address_book;
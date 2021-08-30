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

INSERT INTO address_book(first_name, last_name, address, city, state, zip, phone_number, email_id) VALUES
('Nishu', 'Tyagi', 'Vasundhara', 'Ghaziabad', 'UP', 201012, '9858778634', 'nishu.tyagi@gmail.com'),
('Krati', 'Gupta', 'Kawdli', 'Kanpur', 'UP', 288784, '7889764667', 'krati.gupta@gmail.com'),
('Shivam', 'Tyagi', 'Shubash Nagar', 'Roorkee', 'Uttarakhand', 247667, '7878098776', 'shivam.tyagi@gmail.com'),
('Sunidhi', 'Goel', 'Laxmi Nagar', 'New Delhi', 'Delhi', 235566, '9776578834', 'sunidhi.goel@gmail.com'),
('Anjali', 'Yadav', 'Khoda', 'Ghaziabad', 'UP', 201010, '9775557882', 'anjali.yadav@gmail.com'),
('Avneet', 'Singh', 'Ram Nagar', 'Roorkee', 'Uttrakhand', 233444, '7877546865', 'avneet.singh@gmail.com');
SELECT *FROM address_book;

UPDATE address_book set address = 'Kidwai Nagar' WHERE first_name = 'Krati';
SELECT * FROM address_book;

DELETE FROM address_book WHERE first_name = 'Avneet' and last_name = 'Singh';
SELECT * FROM address_book;

SELECT * FROM address_book WHERE city = 'Ghaziabad' or state = 'Ghaziabad';

SELECT COUNT(*)  FROM address_book WHERE city = 'Ghaziabad' or state = 'Ghaziabad';

SELECT * FROM address_book a WHERE city = 'Ghaziabad' ORDER BY a.first_name;

ALTER TABLE address_book ADD type VARCHAR(255) AFTER last_name;
UPDATE address_book SET type = 'Family' WHERE first_name = 'Nishu' or first_name = 'Shivam';
UPDATE address_book SET type = 'Friend' WHERE first_name = 'Sunidhi' or first_name = 'Anjali';
UPDATE address_book SET type = 'Profession' WHERE first_name = 'Krati';
SELECT * FROM address_book;
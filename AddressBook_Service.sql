#UC1
CREATE DATABASE AddressBook_Service;
USE AddressBook_Service;
SELECT DATABASE();

#UC2
CREATE TABLE address_book   			
(
 first_name VARCHAR(150) NOT NULL,
 last_name 	VARCHAR(150) NOT NULL,
 address 	VARCHAR(250) NOT NULL,
 city 		VARCHAR(150) NOT NULL,
 state 		VARCHAR(150) NOT NULL,
 zip 		INT unsigned NOT NULL,
 phone 		BIGINT  NOT NULL,
 email 		VARCHAR(250) NOT NULL,
 PRIMARY KEY  (first_name)
);
DESCRIBE address_book;

#UC3
INSERT INTO address_book VALUES  		
	( 'Deepanjan', 'Sharma', 'firstaddress', 'BGP', 'Bihar', 128956, 9876896210, 'dsfe34@email.com' ),
	( 'Adarsh', 'Kumar', 'secondaddress', 'Dhanbad','Jharkhand', 128457, 9877452222, 'Adarrt52@email.com'),
	( 'Sandeep', 'Singh', 'Thirdaddress', 'Bhopal', 'MP', 256957, 8876312010, 'Sandy34@email.com' );
  
  #UC4
UPDATE address_book 				
SET zip = 986325 
WHERE first_name = 'Sandeep';

#UC5
DELETE FROM address_book 			
WHERE first_name = 'Adarsh';

#UC6
SELECT * FROM address_book 			
WHERE city = 'Bhopal';
SELECT * FROM address_book 			
WHERE state = 'Bihar';
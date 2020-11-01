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

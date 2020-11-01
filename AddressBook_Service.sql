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

#UC7
SELECT city,COUNT(city) FROM address_book GROUP BY city; 		
SELECT state,COUNT(state) FROM address_book GROUP BY state;

#UC8
SELECT * FROM address_book WHERE city = 'BGP'
ORDER BY first_name; 

#UC9
ALTER TABLE address_book 
ADD address_book_name VARCHAR(50)
AFTER email;
ALTER TABLE address_book 
ADD address_book_type VARCHAR(50)
AFTER address_book_name;
UPDATE address_book 
SET address_book_name='Address Book 1'
WHERE first_name = 'Sandeep';
UPDATE address_book 
SET address_book_type='Friends'
WHERE first_name = 'Sandeep';
UPDATE address_book 
SET address_book_name='Address Book 2'
WHERE first_name = 'Deepanjan';
UPDATE address_book 
SET address_book_type='Family'
WHERE first_name = 'Deepanjan';

#UC10
SELECT address_book_type, count(*)
FROM address_book
GROUP BY address_book_type;

#UC11
INSERT INTO address_book
VALUES
('Tushar', 'Kumar', 'thirdaddress', 'Dhanbad','Jharkhand', 128457, 9877452222, 'Tusrt52@email.com','Addrress Book 3','Family'),
('Uttam', 'Sharma', 'Bankmore', 'jamshedpur','Jharkhand', 123457, 9879682252, 'uttam54@email.com','Addrress Book 4','Friends');

#UC12
CREATE TABLE user_details
( 
 user_id     INT            NOT NULL,
 first_name  VARCHAR(150)   NOT NULL,
 last_name   VARCHAR(150)   NOT NULL,
 PRIMARY KEY   (user_id)
);

CREATE TABLE location 
(
 user_id     INT    NOT NULL,
 address     VARCHAR(250) NOT NULL,
 city        VARCHAR(150) NOT NULL,
 state       VARCHAR(150)  NOT NULL,
 zip         INT           NOT NULL,
 PRIMARY KEY(user_id),
 FOREIGN KEY(user_id)  REFERENCES user_details(user_id)
); 

CREATE TABLE Contact
(
 user_id INT,
 phone 	BIGINT,
 email 	VARCHAR(250),
 FOREIGN KEY(user_id)  REFERENCES user_details(user_id)
);

CREATE TABLE Contact_type
(
 type_id INT,
 type_of_contact VARCHAR(150),
 PRIMARY KEY (type_id)
);

CREATE TABLE user_contact_type_link
(
 user_id INT,
 type_id INT,
 FOREIGN KEY(user_id) REFERENCES user_details(user_id),
 FOREIGN KEY(type_id) REFERENCES Contact_type(type_id)
);
INSERT INTO user_details VALUES
	(1, 'Subham', 'kumar'),
	(2, 'Abhishek', 'singh'),
	(3, 'Mrinal', 'parihar');
    
     
INSERT INTO location VALUES
 	(1,'avav', 'Bangalore', 'Karnataka', '55856'),
	(2,'bsbgw', 'Delhi','wgbd', '2892'),
	(3,'hewrtnv', 'Indore', 'MP', '198995');
    
INSERT INTO Contact VALUES 
	(1,'2588668452', 'baebebd@email.com'),
	(2,'8965321457', 'aaebe@email.com'),
	(3,'4569823145', 'snebnhbe@email.com');
    
INSERT INTO Contact_type VALUES
 	(100,'Friends'),
 	(101,'Family');
    
INSERT INTO user_contact_type_link VALUES
 	(1,100),
 	(1,101),
 	(2,100),
 	(3,101);

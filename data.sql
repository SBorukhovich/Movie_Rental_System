CREATE TABLE Movies (
  `movie_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `genre_id` int DEFAULT NULL,
  `year` year DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
); 
INSERT INTO Movies (title, genre_id, year, rating)VALUES 
 ('The Dark Knight', 1, 2008, 9.0), 
 ('Inside Out 2', 7, 2024, 7.9),
 ('Star Wars: Episode V - The Empire Strikes Back', 1, 1980, 8.7),  
 ('Joker', 3, 2019, 8.4), 
 ('Oppenheimer', 3, 2023, 8.3),  
 ('The Fall Guy', 2, 2024, 7.0),  
 ('Challengers', 6, 2024, 7.3), 
 ('Despicable Me', 7, 2010, 7.6), 
 ('Rocky', 6, 1976, 8.1), 
 ('Inside Job', 8, 2010, 8.2),  
 ('A Quiet Place', 4, 2018, 7.5),  
 ('Midsommar', 4, 2019, 7.1), 
 ('Dune', 5, 2021, 8.0),
 ('The Hangover', 2, 2009, 7.7), 
 ("We're the Millers", 2, 2013, 7.0),
 ('The Matrix', 1, 1999, 8.7);
 
 CREATE TABLE Customers (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
)
INSERT INTO Customers (customer_id, first_name,last_name,email,phone)VALUES 
(1,'Jane','Smith','jane.smith@example.com','267-555-5678'),
(2,'Charles','Montgomery','sed@yahoo.net','235-554-5648'),
(3,'Elijah','Cunningham','semper@google.com','545-545-5668'),
(4,'Mariko','Conway','blandit@google.org','235-233-1178'),
(5,'Haviva','Conrad','haviva.conrad@email.com','1-184-324-8626'),
(6,'Camilla','Benton','camilla.benton@mail.com','1-880-498-6097'),
(7,'Macaulay','Abbott','macaulay.abbott@mail.com','1-214-102-6871'),
(8,'Griffin','Burgess','griffin.burgess@example.com','1-443-879-3154'),
(9,'Seth','Valenzuela','seth.valenzuela@example.com','1-721-954-4830'),
(10,'Shoshana','Sullivan','shoshana.sullivan@domain.com','1-336-704-4215'),
(11,'Hanna','Alford','hanna.alford@example.com','1-763-443-8152'),
(12,'Scarlett','Fulton','scarlett.fulton@example.com','1-384-105-2677'),
(13,'Ferris','Robinson','ferris.robinson@email.com','1-828-571-8195'),
(14,'Shoshana','Mueller','shoshana.mueller@domain.com','1-895-612-3447'),
(15,'Kareem','Bernard','kareem.bernard@domain.com','1-565-332-3699'),
(16,'Lucy','Mercado','lucy.mercado@domain.com','1-783-455-4334'),
(17,'MacKenzie','Zimmerman','mackenzie.zimmerman@mail.com','1-337-479-9394'),
(18,'Jena','Hahn','jena.hahn@example.com','1-900-375-8354'),
(19,'Christine','Atkins','christine.atkins@email.com','1-405-917-8841'),
(20,'Ivor','Warren','ivor.warren@example.com','1-297-452-2938'),
(21,'Orli','Bass','orli.bass@email.com','1-675-696-1161'),
(22,'Ria','Ayers','ria.ayers@email.com','1-174-998-2697'),
(23,'Marah','Perez','marah.perez@email.com','1-323-462-2078'),
(24,'Declan','Carroll','declan.carroll@email.com','1-103-258-2355'),
(25,'Salvador','Bradford','salvador.bradford@email.com','1-435-258-1874'),
(26,'Carson','Osborn','carson.osborn@email.com','1-553-214-2682'),
(27,'Fredericka','Crawford','fredericka.crawford@domain.com','1-360-240-4350'),
(28,'Emi','Stuart','emi.stuart@email.com','1-827-210-7353'),
(29,'John','Finch','john.finch@domain.com','1-510-531-5811'),
(30,'Raymond','Green','raymond.green@example.com','1-960-285-1863'),
(31,'Unity','Barrett','unity.barrett@domain.com','1-828-279-7838'),
(32,'Quinn','Moses','quinn.moses@mail.com','1-357-728-8988'),
(33,'Willa','Mason','willa.mason@email.com','1-858-481-1530'),
(34,'Raya','Mack','raya.mack@domain.com','1-700-523-9114'),
(35,'Hector','Knapp','hector.knapp@email.com','1-407-631-2484'),
(36,'Wyoming','Romero','wyoming.romero@email.com','1-297-671-4674'),
(37,'Jared','Nolan','jared.nolan@domain.com','1-339-656-6301'),
(38,'Daquan','Mccoy','daquan.mccoy@email.com','1-354-688-8340'),
(39,'Hayden','Sosa','hayden.sosa@example.com','1-743-752-8531'),
(40,'Aristotle','Forbes','aristotle.forbes@email.com','1-851-725-5010');

CREATE TABLE Employee (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ;

INSERT INTO Employee (first_name, last_name, email, phone) VALUES
('Alice','Johnson','alice.johnson@example.com','555-8765'),
('Bob','Smith','bob.smith@example.com','123-555-7890'),
('Charlie','Brown','charlie.brown@example.com','234-555-6781'),
('Diana','Ross','diana.ross@example.com','345-555-5672'),
('Roman','Bor','rom.bor@example.com','456-555-4563'),
('Frank','Miller','frank.miller@example.com','567-555-3454'),
('Grace','Lee','grace.lee@example.com','678-555-2345');

CREATE TABLE Rentals (
  `rental_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `movie_id` int DEFAULT NULL,
  `rental_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  PRIMARY KEY (`rental_id`)
); 

INSERT INTO Rentals (customer_id, movie_id, rental_date, return_date, staff_id) VALUES 
(20,3,'2023-11-24','2023-12-07',1),
(21,15,'2023-06-09','2023-06-20',4),
(9,9,'2023-07-24','2023-08-01',6),
(14,2,'2023-07-26','2023-08-03',5),
(1,12,'2023-06-21','2023-06-26',5),
(13,5,'2023-12-03','2023-12-14',1),
(30,9,'2023-08-26','2023-08-28',2),
(35,7,'2023-05-05','2023-05-11',1),
(34,1,'2023-11-16','2023-11-19',5),
(34,15,'2023-07-18','2023-07-30',5),
(17,3,'2023-11-26','2023-12-09',6),
(30,7,'2023-06-23','2023-06-28',1),
(10,3,'2023-10-23','2023-10-24',2),
(19,13,'2023-07-08','2023-07-09',3),
(4,15,'2023-01-11','2023-01-19',1),
(2,12,'2023-07-28','2023-07-31',1),
(1,10,'2023-09-29','2023-10-03',2),
(9,7,'2023-03-03','2023-03-16',6),
(32,10,'2023-04-13','2023-04-17',5),
(30,9,'2023-05-16','2023-05-24',5),
(16,12,'2023-05-08','2023-05-18',4),
(15,4,'2023-03-11','2023-03-12',5),
(10,8,'2023-11-09','2023-11-21',5),
(36,5,'2023-01-17','2023-01-26',2),
(17,13,'2023-06-06','2023-06-12',1),
(8,3,'2024-07-01','2024-07-11',5);

CREATE TABLE Genres (
  `genre_id` int NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(50) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ;
INSERT INTO Genres (genre_name) VALUES 
('Action'), 
('Comedy'), 
('Drama'), 
('Horror'), 
('Sci-Fi'),
('Sports'), 
('Animation'), 
('Documentary');

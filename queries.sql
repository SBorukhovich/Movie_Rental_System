-- All Rentals
SELECT Rentals.rental_id, Movies.title, Rentals.rental_date, Rentals.return_date
FROM Rentals
JOIN Movies ON Rentals.movie_id = Movies.movie_id;

-- All Customers and their infomation
SELECT * FROM CUSTOMERS;

-- List Movies by Genre
SELECT Movies.title, Movies.year, Genres.genre_name
FROM Movies
JOIN Genres ON Movies.genre_id = Genres.genre_id
ORDER BY Genres.genre_name, Movies.title;

-- All Rentals
SELECT Customers.First_name as First_Name,
Customers.last_name as Last_Name,
Movies.title, Employee.first_name as rented_by,
Rentals.rental_date, Rentals.return_date
FROM Rentals
JOIN Movies ON Rentals.movie_id = Movies.movie_id
JOIN Customers ON Customers.customer_id = Rentals.customer_id
Join Employee ON Rentals.employee_id = Employee.employee_id;

-- All Rentals for a Specific Customer
SELECT Customers.First_name as First_Name,
Customers.last_name as Last_Name,
Movies.title as Movie_title, 
Rentals.rental_date, 
Rentals.return_date
FROM rentals
join customers on rentals.customer_id = customers.customer_id
join movies on rentals.movie_id = movies.movie_id
where customers.customer_id = 4;

-- List all customers who rented a specific movie
SELECT Movies.title,
    Customers.first_name, Customers.last_name, 
    Rentals.rental_date, Rentals.return_date 
FROM Rentals
JOIN Customers ON Rentals.customer_id = Customers.customer_id
join movies on rentals.movie_id = movies.movie_id
WHERE Rentals.movie_id = 15;


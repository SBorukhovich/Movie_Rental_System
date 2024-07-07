-- Business Questions SQL Queries

-- Which customers are the most frequent renters?
SELECT Customers.First_name ,
    Customers.Last_name ,
    COUNT(Rentals.rental_id) AS Rental_Count
FROM Rentals
JOIN Customers ON Rentals.customer_id = Customers.customer_id
JOIN Movies ON Rentals.movie_id = Movies.movie_id
GROUP BY Customers.customer_id
ORDER BY Rental_Count DESC;

-- What are the peak rental months?
SELECT DATE_FORMAT(rental_date, '%Y-%m') AS month, COUNT(*) AS total_rentals
FROM Rentals
GROUP BY month
ORDER BY total_rentals desc;

-- Which movies are the most and least rented?
SELECT movies.title, COUNT(*) AS times_rented
FROM movies
JOIN rentals ON rentals.movie_id = movies.movie_id
GROUP BY movies.title
ORDER BY times_rented DESC;

-- Who are the top-performing employees based on the number of rentals processed?
SELECT employee.first_name, employee.last_name, COUNT(Rentals.rental_id) AS rental_count
FROM Rentals
JOIN employee ON Rentals.employee_id = employee.employee_id
GROUP BY Employee.employee_id
ORDER BY rental_count desc;

-- What is the store's current inventory status? (movies currently rented)
SELECT Customers.first_name, Customers.last_name, Movies.title,
Rentals.return_date as return_by
FROM Rentals
JOIN Customers ON Rentals.customer_id = Customers.customer_id
JOIN Movies ON Rentals.movie_id = Movies.movie_id
WHERE Rentals.return_date > CURDATE() and Rentals.rental_date < CURDATE();


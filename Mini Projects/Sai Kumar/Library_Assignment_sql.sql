CREATE DATABASE LIBRARY;

USE LIBRARY;

-- CREATION OF BOOKS TABLE
CREATE TABLE BOOKS(
BOOKID INT PRIMARY KEY,
BOOKNAME VARCHAR(50),
AUTHORNAME VARCHAR(50),
GENRE VARCHAR(50),
PAGES INT
);

CREATE TABLE CUSTOMERS(
CUSTOMERID INT PRIMARY KEY,
CUSTOMERNAME VARCHAR(50),
ADDRESS VARCHAR(50)
);

CREATE TABLE BOOKSBORROWED(
SLNO INT PRIMARY KEY,
BOOKID INT,
CUSTOMERID INT,
NODAYSBOOKRETAINED INT,
FOREIGN KEY(BOOKID) REFERENCES BOOKS(BOOKID),
FOREIGN KEY(CUSTOMERID) REFERENCES CUSTOMERS(CUSTOMERID));

DESC BOOKSBORROWED;


SELECT * FROM BOOKSBORROWED;


CREATE TABLE COST(
MAXPAGES INT PRIMARY KEY,
COSTPERDAY INT
);

-- inserting values into tables

-- Inserting into Books table
INSERT INTO BOOKS (BOOKID,BOOKNAME,AUTHORNAME,GENRE,PAGES) VALUES
(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 180),
(2, 'To Kill a Mockingbird', 'Harper Lee', 'Drama', 281),
(3, '1984', 'George Orwell', 'Dystopian', 328),
(4, 'Pride and Prejudice', 'Jane Austen', 'Romance', 432),
(5, 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 310),
(6, 'The Catcher in the Rye', 'J.D. Salinger', 'Coming-of-age', 224),
(7, 'The Da Vinci Code', 'Dan Brown', 'Mystery', 454),
(8, 'The Chronicles of Narnia', 'C.S. Lewis', 'Fantasy', 767),
(9, 'The Alchemist', 'Paulo Coelho', 'Adventure', 208),
(10, 'Frankenstein', 'Mary Shelley', 'Gothic', 280),
(11, 'The Hunger Games', 'Suzanne Collins', 'Dystopian', 374),
(12, 'Brave New World', 'Aldous Huxley', 'Science Fiction', 311),
(13, 'The Lord of the Rings', 'J.R.R. Tolkien', 'Fantasy', 1178),
(14, 'The Shining', 'Stephen King', 'Horror', 447),
(15, 'The Kite Runner', 'Khaled Hosseini', 'Historical Fiction', 372),
(16, 'The War of the Worlds', 'H.G. Wells', 'Science Fiction', 192),
(17, 'Dracula', 'Bram Stoker', 'Gothic', 418),
(18, 'The Fault in Our Stars', 'John Green', 'Young Adult', 313),
(19, 'The Road', 'Cormac McCarthy', 'Post-apocalyptic', 287),
(20, 'The Girl with the Dragon Tattoo', 'Stieg Larsson', 'Thriller', 590),
(21, 'Wuthering Heights', 'Emily Brontë', 'Gothic', 342),
(22, 'One Hundred Years of Solitude', 'Gabriel García Márquez', 'Magical Realism', 417),
(23, 'The Great Expectations', 'Charles Dickens', 'Classic', 505),
(24, 'The Color Purple', 'Alice Walker', 'Drama', 295),
(25, 'Siddhartha', 'Herman Hesse', 'Philosophical', 152),
(26, 'The Secret Garden', 'Frances Hodgson Burnett', 'Children\'s', 331),
(27, 'The Handmaid\'s Tale', 'Margaret Atwood', 'Dystopian', 311),
(28, 'The Old Man and the Sea', 'Ernest Hemingway', 'Adventure', 127),
(29, 'The Picture of Dorian Gray', 'Oscar Wilde', 'Gothic', 254),
(30, 'The Jungle Book', 'Rudyard Kipling', 'Children\'s', 277);

SELECT * FROM BOOKS;

SELECT MIN(PAGES) FROM BOOKS;
SELECT MAX(PAGES) FROM BOOKS;


select GENRE,COUNT(*)
FROM BOOKS
GROUP BY GENRE;

select AUTHORNAME,COUNT(*)
FROM BOOKS
GROUP BY AUTHORNAME;

INSERT INTO CUSTOMERS (CUSTOMERID,CUSTOMERNAME,ADDRESS)
VALUES
(1, 'John Smith', 'New York'),
(2, 'Alice Johnson', 'Los Angeles'),
(3, 'Robert Davis', 'Chicago'),
(4, 'Emily Wilson', 'Dallas'),
(5, 'Daniel Brown', 'Phoenix'),
(6, 'Dwayne Smith ', 'New York'),
(7, 'Michael Taylor', 'San Antonio'),
(8, 'Olivia Anderson', 'Dallas'),
(9, 'William White', 'Dallas'),
(10, 'Harry Porter', 'Jacksonville'),
(11, 'Matthew Moore', 'Austin'),
(12, 'Ella Jackson', 'Jacksonville'),
(13, 'James Thompson', 'Indianapolis'),
(14, 'Robert Henry', 'Chicago'),
(15, 'Logan Robinson', 'Columbus');

SELECT * FROM CUSTOMERS;

SELECT ADDRESS,COUNT(*)
FROM CUSTOMERS
GROUP BY ADDRESS
ORDER BY ADDRESS ASC;

-- INSERTING INTO COST TABLE
INSERT INTO COST (MAXPAGES,COSTPERDAY)
VALUES
(100,10),
(200,15),
(300,30),
(1000,50);

INSERT INTO COST(MAXPAGES,COSTPERDAY)
VALUES
(1200,60);

SELECT * FROM COST;

-- INSERTING VALUES INTO BOOKSBORROWED 

INSERT INTO BOOKSBORROWED(SLNO,BOOKID,CUSTOMERID,NODAYSBOOKRETAINED)
VALUES
(1,5,1,1),
(2,2,4,2),
(3,5,1,3),
(4,7,3,4),
(5,11,10,5),
(6,5,1,10),
(7,25,8,1),
(8,15,15,8),
(9,12,12,2),
(10,30,10,10),
(11,25,12,1),
(12,22,11,6),
(13,5,12,7),
(14,23,10,4),
(15,27,7,7),
(16,30,10,1),
(17,25,10,1),
(18,15,1,1),
(19,23,12,10),
(20,10,10,1),
(21,15,7,3),
(22,5,6,10),
(23,15,8,1),
(24,30,6,8),
(25,29,10,1),
(26,1,4,4),
(27,3,3,3),
(28,8,9,3),
(29,25,15,10),
(30,5,4,10),
(31,6,15,1),
(32,30,5,2),
(33,16,6,2),
(34,24,5,1),
(35,2,2,2),
(36,5,5,20),
(37,28,14,3),
(38,23,15,7),
(39,23,15,10),
(40,12,12,1),
(41,29,10,7),
(42,30,4,4),
(43,6,6,6),
(44,25,5,10),
(45,30,6,1),
(46,15,10,2),
(47,18,10,1),
(48,25,11,1),
(49,22,14,1),
(50,5,1,11);

SELECT * FROM BOOKSBORROWED;

/*
	6. Retrive the TOTAL NUMBER OF BOOKS in Each genre
*/

SELECT * FROM BOOKS;

SELECT GENRE,COUNT(*) AS TOTAL_NUMBER_OF_BOOKS
FROM BOOKS
GROUP BY GENRE
ORDER BY GENRE ASC;

/*
	7. Retrive the TOTAL NUMBER OF BOOKS Borrowed
*/

SELECT * FROM BOOKSBORROWED;

SELECT COUNT(DISTINCT (BOOKID)) AS TOTAL_NUMBER_OF_BOOKS_BORROWED 
FROM BOOKSBORROWED;

/*
	8. Retrive names of BOOKS BORROWED WITHOUT REPETITION
*/


SELECT * FROM BOOKSBORROWED;

SELECT DISTINCT BOOKID
FROM BOOKSBORROWED;

SELECT BOOKS.BOOKID,BOOKS.BOOKNAME
FROM BOOKS
JOIN BOOKSBORROWED 
ON BOOKS.BOOKID = BOOKSBORROWED.BOOKID
GROUP BY BOOKS.BOOKID,BOOKS.BOOKNAME
ORDER BY BOOKID ASC;



/*
	9. Retrive the CustomrName, BookName for Books Borrowed
*/

SELECT BOOKID,CUSTOMERID
FROM BOOKSBORROWED;

SELECT DISTINCT CUSTOMERS.CUSTOMERID,CUSTOMERS.CUSTOMERNAME,BOOKS.BOOKID ,BOOKS.BOOKNAME
FROM BOOKSBORROWED
JOIN BOOKS ON BOOKSBORROWED.BOOKID = BOOKS.BOOKID
JOIN CUSTOMERS ON BOOKSBORROWED.CUSTOMERID = CUSTOMERS.CUSTOMERID
GROUP BY CUSTOMERS.CUSTOMERID,CUSTOMERS.CUSTOMERNAME, BOOKS.BOOKID,BOOKS.BOOKNAME,BOOKSBORROWED.CUSTOMERID
ORDER BY CUSTOMERS.CUSTOMERNAME ASC;

/*
	10. TOTAL EARNINGS BY LIBRARY
*/

SELECT SUM(BOOKSBORROWED.NODAYSBOOKRETAINED * COST.COSTPERDAY) AS TOTALEARNINGS_FOR_LIBRARY
FROM BOOKSBORROWED
JOIN COST
ON BOOKSBORROWED.NODAYSBOOKRETAINED  <= MAXPAGES;

/*
	12. Amount paid by each customer ,Rank the customers based in amount paid
*/

SELECT CUSTOMERS.CUSTOMERNAME, SUM(BOOKSBORROWED.NODAYSBOOKRETAINED * COST.COSTPERDAY) AS AMOUNT_PAID_BY_EACHCUSTOMER
FROM BOOKSBORROWED
JOIN CUSTOMERS 
ON BOOKSBORROWED.CUSTOMERID = CUSTOMERS.CUSTOMERID
JOIN COST
ON BOOKSBORROWED.NODAYSBOOKRETAINED <= MAXPAGES
GROUP BY CUSTOMERS.CUSTOMERNAME
ORDER BY AMOUNT_PAID_BY_EACHCUSTOMER DESC;



/* HERE, THE TOTAL EARNINGS BY LIBRARY == SUM OF AMOUNT PAID BY EACH CUSTOMER
	HENCE, IT MEANS THAT WE HAVE DONE ACCURATELY
*/

						-- THE END





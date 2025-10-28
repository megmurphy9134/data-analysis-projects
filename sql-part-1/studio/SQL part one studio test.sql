-- Part One --
-- Exercises --

-- SELECT TOP 1000 *
-- FROM BooksDB.dbo.books




-- Part One --
-- STUDIO --

-- USE booksdb
-- SELECT TOP 100 book_id, authors, title, average_rating AS book_rating
-- FROM dbo.books
-- order by book_rating DESC;

-- USE booksdb
-- SELECT title, average_rating AS book_rating
-- FROM dbo.books
-- order by book_rating ASC;

-- USE BooksDB
-- SELECT COUNT(tag_id) AS tag_count, tag_id
-- FROM dbo.book_tags
-- GROUP BY tag_id
-- ORDER BY tag_count DESC;
-- 30574

-- USE BooksDB
-- SELECT tag_name
-- FROM dbo.tags
-- WHERE tag_id = 30574;

-- USE booksdb
-- SELECT COUNT(original_publication_year)
-- FROM dbo.books
-- WHERE original_publication_year BETWEEN 2000 AND 2009;

-- USE booksdb
-- SELECT COUNT(title)
-- FROM dbo.books
-- WHERE title LIKE '%happy%';

-- USE booksdb
-- SELECT TOP 3 authors, title, average_rating
-- FROM dbo.books
-- ORDER BY average_rating DESC;

-- USE BooksDB
-- SELECT title, authors
-- FROM dbo.books
-- WHERE authors = 'Bill Watterson' OR authors = 'Brandon Sanderson' OR authors = 'J.k. Rowling';

-- USE BooksDB
-- SELECT COUNT(authors)
-- FROM dbo.books
-- WHERE authors < 'roll' and authors >= 'rock';

-- USE BooksDB
-- SELECT COUNT(title)
-- FROM dbo.books
-- WHERE original_publication_year = 2005;

-- USE BooksDB
-- SELECT title, authors, average_rating
-- FROM dbo.books
-- WHERE authors = 'J.K. Rowling'
-- ORDER BY authors, average_rating DESC;

-- PART TWO --
-- ASSIGNMENT --

-- USE RideShareDB
-- SELECT RIGHT(Base_Name, 3)
-- FROM dbo.other_FHV_services_jan_aug_2015;

-- USE RideShareDB
-- SELECT CHARINDEX(' ', Number_of_Trips)
-- FROM dbo.other_FHV_services_jan_aug_2015;

-- USE RideShareDB
-- SELECT CHARINDEX(' ', Pick_Up_Date)
-- FROM dbo.other_FHV_services_jan_aug_2015;

-- USE RideShareDB
-- SELECT DATENAME(month, Pick_Up_Date)
-- FROM dbo.other_FHV_services_jan_aug_2015;

-- USE RideShareDB
-- SELECT FORMAT(Pick_Up_Date, 'dd/MM')
-- FROM dbo.other_FHV_services_jan_aug_2015;

-- USE RideShareDB
-- SELECT MAX(start_lng)
-- FROM lyft;

-- USE RideShareDB
-- SELECT MAX(start_lat)
-- FROM lyft;

-- USE RideShareDB
-- SELECT CONCAT(Base_Number, ': ', Base_Name)
-- FROM dbo.other_FHV_services_jan_aug_2015;

-- PART THREE --
-- EXERCISE --

/*
SELECT TOP 50 b.title, b.average_rating, b.books_count,tr.user_id, tr.book_id
FROM BooksDB.dbo.books AS b
LEFT JOIN BooksDB.dbo.to_read AS tr
ON b.best_book_id = tr.book_id
ORDER BY b.average_rating;

SELECT TOP 50 b.title, b.average_rating, b.books_count,tr.user_id, tr.book_id
FROM BooksDB.dbo.books AS b
LEFT JOIN BooksDB.dbo.to_read AS tr
ON b.best_book_id = tr.book_id
WHERE tr.user_id IS NOT NULL
ORDER BY b.average_rating;

-- Query 1: RIGHT JOIN
SELECT TOP 300 b.title, b.average_rating, b.books_count, tr.user_id, tr.book_id
FROM BooksDB.dbo.books AS b
RIGHT JOIN BooksDB.dbo.to_read AS tr
ON b.best_book_id = tr.book_id;

-- FULL JOIN
SELECT TOP 30 b.title, b.average_rating, b.books_count,tr.user_id, tr.book_id
FROM BooksDB.dbo.books AS b
FULL JOIN BooksDB.dbo.to_read AS tr
ON b.book_id = tr.book_id;

-- INNER JOIN
SELECT TOP 30 b.title, b.average_rating, b.books_count,tr.user_id, tr.book_id
FROM BooksDB.dbo.books AS b
INNER JOIN BooksDB.dbo.to_read AS tr
ON b.book_id = tr.book_id
WHERE b.title IS NOT NULL
ORDER BY tr.book_id;
*/

/*
**Part A:**  What is the most tagged book?

Start by joining the `books` and `book_tags` tables ON the `books.best_book_id` and `book_tags.goodreads_book_id`. We want the *most popular* book, so think about ordering the table in a way that will display both the book title and the number of times a book tag has been used.

Minimum Desired output:_  The title of the most tagged book, and the number of times the book has been tagged.

**Title:**

**Part B:** How many different tags have been used for the most tagged book?

Start by joining the `books` and `book_tags` tables ON the `books.best_book_id` and `book_tags.goodreads_book_id`. We want to find the *most popular* tag id, so think about ordering in a way that will display the most popular tag id.

*Minimum Desired Output:* The tag id for the most popular tag used for the most tagged book.

**Tag Id:**

**Part C:** What is this particular tag?
*/

-- COME BACK HERE FOR PART 3 HOMEWORK
--SELECT TOP 1 b.title, b.average_rating, b.books_count,tr.goodreads_book_id, tr.count
--FROM BooksDB.dbo.books AS b
--RIGHT JOIN BooksDB.dbo.book_tags AS tr
--ON b.best_book_id = tr.goodreads_book_id;

/*
SELECT TOP 100 b.title, b.average_rating, b.books_count,tr.goodreads_book_id, tr.tag_id, tr.count
FROM BooksDB.dbo.books AS b
JOIN BooksDB.dbo.book_tags AS tr
ON b.best_book_id = tr.goodreads_book_id
ORDER BY tr.count DESC;
*/

/* STUDIO 2

SELECT LEN(title) AS title_length
FROM BooksDB.dbo.books
ORDER BY title_length DESC;

-- answer: 186

SELECT title, LEN(title) AS title_length
FROM BooksDB.dbo.books
ORDER BY title_length DESC;

--Soccernomics: Why England Loses, Why Germany and Brazil Win, and Why the U.S., Japan, Australia, Turkey--and Even Iraq--Are Destined to Become the Kings of the World's Most Popular Sport


SELECT authors, LEN(authors) as author_length
FROM BooksDB.dbo.books
ORDER BY author_length ASC;

-- 3, Avi

--REVISIT THIS ONE, QUESTION 3
SELECT COUNT(title)
FROM BooksDB.dbo.books
WHERE title LIKE '%the%';

SELECT COUNT(title)
FROM BooksDB.dbo.books
WHERE title LIKE '%the %';

-- Any the/The 4506
-- The: 2832
-- SQL may be case insensitive?

--TEXTBOOK ANSWER
-- SELECT count(title)
-- FROM BooksDB.dbo.books
-- WHERE CHARINDEX('the', title) > 0;  
-- ANS: 4702
-- A. Is there a difference between the number of titles that use "The" or "the"?
    -- No, they return the same number of values


-- ANSWER 4702





--Z Authors
SELECT COUNT(distinct authors)
FROM BooksDB.dbo.books
WHERE LEFT(authors, 1) = 'Z';

-- 7

SELECT COUNT(*)
FROM BooksDB.dbo.books
WHERE LEFT(language_code, 2) != 'en';

--186

SELECT COUNT(*)
FROM BooksDB.dbo.books
WHERE SUBSTRING(language_code, 1, 2) != 'en';

--186

SELECT CONCAT(title, ' by ', authors, ' in ', language_code)
FROM BooksDB.dbo.books;

SELECT CONCAT(title, ' by ', authors, ' in ', coalesce(language_code, 'UNKNOWN'))
FROM BooksDB.dbo.books;

SELECT CONCAT(title, ' by ', authors, ' in ', ISNULL(language_code, 'unknown'), ' language')
FROM BooksDb.dbo.books;

---BROKEN
SELECT t.tag_id, count(t.tag_id)
from BooksDB.dbo.book_tags AS bt
INNER JOIN BooksDB.dbo.tags as t
ON t.tag_id = bt.tag_id
ORDER BY count(t.tag_id) DESC;
--tag ID
--books(author name)


FROM book_tags bt
INNER JOIN tags t ON t.tag_id = bt.tag_id
INNER JOIN books b ON b.book_id = bt.goodreads_book_id
---


USE BooksDB
SELECT
SUM([count]) AS sum_of_all_usages,
bt.tag_id,
t.tag_name,
b.authors,
b.average_rating
FROM book_tags bt
INNER JOIN tags t ON t.tag_id = bt.tag_id
INNER JOIN books b ON b.book_id = bt.goodreads_book_id
GROUP BY bt.tag_id, t.tag_name, b.authors, b.average_rating
HAVING t.tag_name IN ('author-female', 'woman-author','female-writer', 
'female-writers', 'important-female-authors', 'female-author', 'female-authors',
'woman-trans-agender-authors')
ORDER BY average_rating DESC, sum_of_all_usages DESC;


USE BooksDB
SELECT
SUM([count]) AS sum_of_all_usages,
bt.tag_id,
t.tag_name,
b.authors,
b.average_rating
FROM book_tags bt
INNER JOIN tags t ON t.tag_id = bt.tag_id
INNER JOIN books b ON b.book_id = bt.goodreads_book_id
GROUP BY bt.tag_id, t.tag_name, b.authors, b.average_rating
HAVING t.tag_name IN ('spring', 'easter')
ORDER BY average_rating DESC, sum_of_all_usages DESC;


USE BooksDB
SELECT
SUM([count]) AS sum_of_all_usages,
bt.tag_id,
t.tag_name,
b.title,
b.authors,
b.average_rating
FROM book_tags bt
INNER JOIN tags t ON t.tag_id = bt.tag_id
INNER JOIN books b ON b.book_id = bt.goodreads_book_id
GROUP BY bt.tag_id, t.tag_name, b.title, b.authors, b.average_rating
HAVING bt.tag_id = 191
ORDER BY sum_of_all_usages DESC;
*/

USE BooksDB;
SELECT TOP 10
    SUM([count]) AS sum_of_all_usages,
    tr.book_id,
    b.title
FROM to_read tr
INNER JOIN books b ON tr.book_id = b.book_id
GROUP BY tr.book_id, b.title
ORDER BY sum_of_all_usages DESC;


/*
USE BooksDB
SELECT TOP 20
SUM([count]) AS number_of_times_tag_id_used,
bt.tag_id,
t.tag_name,
b.authors,
b.average_rating,
b.title
FROM book_tags AS bt

INNER JOIN tags t ON t.tag_id = bt.tag_id
INNER JOIN books b ON b.book_id = bt.goodreads_book_id

GROUP BY bt.tag_id, t.tag_name, b.authors, b.average_rating, b.title
HAVING t.tag_name IN ('halloween', 'indigenous')
ORDER BY number_of_times_tag_id_used DESC

-- STUDIO 4

SELECT b.title, b.authors
FROM BooksDB.dbo.books AS b
WHERE b.authors LIKE '%,%'

-------
SELECT b.title, b.authors
(
SELECT t.tag_id, t.tag_name
FROM BooksDB.dbo.tags AS t
WHERE tag_name LIKE '%meditation%'
) AS meditation
FROM BooksDB.dbo.books AS b
WHERE 


SELECT b.title, b.authors
FROM BooksDB.dbo.books AS b
INNER JOIN
BooksDB.dbo.tags AS t
ON b.IDK?!?!? = t.tag_id
WHERE t.tag_name LIKE '%meditation%'
-------

SELECT b.title, b.original_title, b.average_rating
FROM BooksDB.dbo.books AS b
WHERE b.title = b.original_title
AND b.average_rating >= 4.2
ORDER BY b.average_rating DESC


--CURRENT

WITH avg_rating_by_year AS(
    SELECT AVG(b.av)
    GROUP BY pub_year
)
SELECT b.title, b.original_publication_year AS pub_year, b.average_rating
FROM BooksDB.dbo.books AS b
WHERE 
*/
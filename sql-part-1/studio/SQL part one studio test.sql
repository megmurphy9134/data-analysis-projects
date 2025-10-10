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
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

USE BooksDB
SELECT title, authors, average_rating
FROM dbo.books
WHERE authors = 'J.K. Rowling'
ORDER BY authors, average_rating DESC;


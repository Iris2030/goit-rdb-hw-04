INSERT INTO LibraryManagement.authors (author_name) VALUES
('Margaret Mitchell'),
('J. K. Rowling');

INSERT INTO LibraryManagement.genres (genre_name) VALUES
('drama'),
('fantasy');

INSERT INTO LibraryManagement.books (title, publication_year, author_id, genre_id) VALUES
('Gone with the Wind', '1936-06-30', 1, 1),
('Harry Potter', '1997-06-01', 2, 2);

INSERT INTO LibraryManagement.users (username, email) VALUES
('Iris2030', 'iris@gmail.com'),
('LadyInRed', 'lady@gmail.com');

INSERT INTO LibraryManagement.borrowed_books (book_id, user_id, borrow_date, return_date) VALUES
(1, 2, '2024-01-30', '2024-02-20'),
(2, 1, '2024-03-10', '2024-03-29');
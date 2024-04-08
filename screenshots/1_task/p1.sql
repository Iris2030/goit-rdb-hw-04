CREATE SCHEMA IF NOT EXISTS LibraryManagement;

CREATE TABLE LibraryManagement.authors (
    author_id SERIAL PRIMARY KEY,
    author_name VARCHAR(255)
);

CREATE TABLE LibraryManagement.genres (
    genre_id SERIAL PRIMARY KEY,
    genre_name VARCHAR(255)
);

CREATE TABLE LibraryManagement.books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    publication_year DATE,
    author_id INT,
    genre_id INT,
    FOREIGN KEY (author_id) REFERENCES LibraryManagement.authors(author_id),
    FOREIGN KEY (genre_id) REFERENCES LibraryManagement.genres(genre_id)
);

CREATE TABLE LibraryManagement.users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(255),
    email VARCHAR(255)
);

CREATE TABLE LibraryManagement.borrowed_books (
    borrow_id SERIAL PRIMARY KEY,
    book_id INT,
    user_id INT,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES LibraryManagement.books(book_id),
    FOREIGN KEY (user_id) REFERENCES LibraryManagement.users(user_id)
);
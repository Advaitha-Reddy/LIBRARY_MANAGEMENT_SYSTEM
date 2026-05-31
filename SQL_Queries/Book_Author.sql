CREATE TABLE Book_Author(
    book_id INT,
    author_id INT,

    PRIMARY KEY(book_id,author_id),

    FOREIGN KEY(book_id)
    REFERENCES Book(book_id),

    FOREIGN KEY(author_id)
    REFERENCES Author(author_id)
);
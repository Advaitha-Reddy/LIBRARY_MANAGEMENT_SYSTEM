

CREATE TABLE Book(
    book_id INT PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    isbn VARCHAR(20) UNIQUE,
    publication_year INT,
    total_copies INT NOT NULL,
    available_copies INT NOT NULL,

    category_id INT,
    publisher_id INT,

    FOREIGN KEY(category_id)
    REFERENCES Category(category_id),

    FOREIGN KEY(publisher_id)
    REFERENCES Publisher(publisher_id)
);
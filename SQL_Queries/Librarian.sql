
CREATE TABLE Librarian(
    librarian_id INT PRIMARY KEY,
    librarian_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15) UNIQUE
);
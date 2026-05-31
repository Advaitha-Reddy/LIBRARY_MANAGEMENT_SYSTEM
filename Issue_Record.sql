
CREATE TABLE Issue_Record(
    issue_id INT PRIMARY KEY,

    member_id INT,
    book_id INT,
    librarian_id INT,

    issue_date DATE NOT NULL,
    due_date DATE NOT NULL,

    status VARCHAR(20) DEFAULT 'Issued',

    FOREIGN KEY(member_id)
    REFERENCES Member(member_id),

    FOREIGN KEY(book_id)
    REFERENCES Book(book_id),

    FOREIGN KEY(librarian_id)
    REFERENCES Librarian(librarian_id)
);
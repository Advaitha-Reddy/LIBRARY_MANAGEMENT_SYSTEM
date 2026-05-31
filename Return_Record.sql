

CREATE TABLE Return_Record(
    return_id INT PRIMARY KEY,

    issue_id INT UNIQUE,

    return_date DATE NOT NULL,

    FOREIGN KEY(issue_id)
    REFERENCES Issue_Record(issue_id)
);
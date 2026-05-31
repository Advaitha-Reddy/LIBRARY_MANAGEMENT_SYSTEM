

CREATE TABLE Fine(
    fine_id INT PRIMARY KEY,

    return_id INT UNIQUE,

    amount DECIMAL(8,2) DEFAULT 0,

    paid_status VARCHAR(20)
    DEFAULT 'Unpaid',

    FOREIGN KEY(return_id)
    REFERENCES Return_Record(return_id)
);
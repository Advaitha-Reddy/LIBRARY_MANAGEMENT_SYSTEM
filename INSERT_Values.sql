use Library_Management_System

INSERT INTO Category VALUES
(1,'Computer Science'),
(2,'Database'),
(3,'Mathematics'),
(4,'Fiction'),
(5,'Electronics');


INSERT INTO Publisher VALUES
(101,'Pearson','Delhi','9876543210'),
(102,'McGraw Hill','Mumbai','9876543211'),
(103,'Oxford','Chennai','9876543212'),
(104,'Springer','Hyderabad','9876543213');


INSERT INTO Author VALUES
(201,'Ramez Elmasri','USA'),
(202,'Abraham Silberschatz','USA'),
(203,'Cormen','USA'),
(204,'J K Rowling','UK'),
(205,'Bjarne Stroustrup','Denmark');



INSERT INTO Member VALUES
(301,'Advaitha Reddy',
'advaitha@gmail.com',
'9000000001',
'Warangal',
'2024-01-15'),

(302,'Rahul Kumar',
'rahul@gmail.com',
'9000000002',
'Hyderabad',
'2024-02-10'),

(303,'Sneha Sharma',
'sneha@gmail.com',
'9000000003',
'Delhi',
'2024-03-20');



INSERT INTO Librarian VALUES
(401,'Ravi Kumar',
'ravi@library.com',
'9888888881'),

(402,'Meena Gupta',
'meena@library.com',
'9888888882');




INSERT INTO Book VALUES
(501,
'Database Systems',
'ISBN001',
2021,
10,
6,
2,
101),

(502,
'Operating System Concepts',
'ISBN002',
2020,
8,
5,
1,
102),

(503,
'Introduction to Algorithms',
'ISBN003',
2019,
12,
7,
3,
103),

(504,
'Harry Potter',
'ISBN004',
2018,
15,
10,
4,
104);


INSERT INTO Book_Author VALUES
(501,201),
(502,202),
(503,203),
(504,204);


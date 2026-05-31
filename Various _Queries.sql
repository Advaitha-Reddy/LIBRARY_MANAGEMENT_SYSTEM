#Display the available books

use Library_Management_System

SELECT title, available_copies
FROM Book
WHERE available_copies > 0;


#Find overdue books
SELECT m.member_name,
       b.title,
       i.issue_date,
       i.due_date
FROM Issue_Record i
JOIN Member m
ON i.member_id = m.member_id
JOIN Book b
ON i.book_id = b.book_id
WHERE i.due_date < CURDATE()
AND i.status = 'Issued';


#View books issued by members
SELECT m.member_name,
       b.title,
       i.issue_date,
       i.due_date
FROM Member m
JOIN Issue_Record i
ON m.member_id = i.member_id
JOIN Book b
ON i.book_id = b.book_id;

#Display members with unpaid fines
SELECT m.member_name,
       f.amount,
       f.paid_status
FROM Fine f
JOIN Return_Record r
ON f.return_id = r.return_id
JOIN Issue_Record i
ON r.issue_id = i.issue_id
JOIN Member m
ON i.member_id = m.member_id
WHERE f.paid_status = 'Unpaid';


#Find the most issued book
SELECT b.title,
       COUNT(*) AS issue_count
FROM Issue_Record i
JOIN Book b
ON i.book_id = b.book_id
GROUP BY b.title
ORDER BY issue_count desc
limit 1;

#Count books in each category
SELECT c.category_name,
       COUNT(*) AS total_books
FROM Category c
JOIN Book b
ON c.category_id = b.category_id
GROUP BY c.category_name;

#Find members who have never borrowed a book
SELECT member_name
FROM Member
WHERE member_id NOT IN
(
    SELECT member_id
    FROM Issue_Record
);


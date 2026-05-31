use Library_Management_System

INSERT INTO Issue_Record VALUES
(601,301,501,401,
'2025-05-01',
'2025-05-15',
'Issued'),

(602,302,503,402,
'2025-05-03',
'2025-05-17',
'Returned'),

(603,303,504,401,
'2025-05-05',
'2025-05-19',
'Issued');

INSERT INTO Return_Record VALUES
(701,602,'2025-05-18');


INSERT INTO Fine VALUES
(801,701,50.00,'Unpaid');




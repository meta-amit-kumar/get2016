/*Q1. Insert dtaa in all tables*/

/*Insert into table authors*/
INSERT INTO authors(author_name) VALUES ('KOGENT LEARNING SOLUTIONS INC.');
INSERT INTO authors(author_name) VALUES ('NIIT');
INSERT INTO authors(author_name) VALUES ('Bhupender Singh Chabbra');
INSERT INTO authors(author_name) VALUES ('J.B.Gupta');

SELECT * FROM authors; 


/*Insert into table publishers*/
INSERT INTO publishers(publisher_name) VALUES ('Pearson');
INSERT INTO publishers(publisher_name) VALUES ('McGraw-Hill Education');
INSERT INTO publishers(publisher_name) VALUES ('Harper Collins');
INSERT INTO publishers(publisher_name) VALUES ('Simon & Schuster');

SELECT * FROM publishers; 


/*Insert into table subjects*/
INSERT INTO subjects(subject_name) VALUES ('Computer Science');
INSERT INTO subjects(subject_name) VALUES ('Electrical Engineering');

SELECT * FROM subjects;


/*Insert into table titles*/
INSERT INTO titles(title_name, subject_id, publisher_id) VALUES ('8085 Microprocessor & its Applications', '2', '3');
INSERT INTO titles(title_name, subject_id, publisher_id) VALUES ('A Course in Power Systems', '2', '1');
INSERT INTO titles(title_name, subject_id, publisher_id) VALUES ('3D Animations - An Overview', '1', '2');
INSERT INTO titles(title_name, subject_id, publisher_id) VALUES ('.NET 4.0 PROGRAMMING 6-IN-1', '1', '1');

SELECT * FROM titles;


/*Insert into table title_author*/
INSERT INTO title_author(title_id, author_id) VALUES ('1', '3');
INSERT INTO title_author(title_id, author_id) VALUES ('2', '4');
INSERT INTO title_author(title_id, author_id) VALUES ('3', '1');
INSERT INTO title_author(title_id, author_id) VALUES ('4', '2');

SELECT * FROM title_author;


/*Insert into table books*/
INSERT INTO books(title_id, purchase_date, price, status) VALUES('1', '2015-07-15', '112', 'Available');
INSERT INTO books(title_id, purchase_date, price, status) VALUES('2', '2015-05-08', '102', 'Not Available');
INSERT INTO books(title_id, purchase_date, price, status) VALUES('3', '2015-11-05', '118', 'Available');
INSERT INTO books(title_id, purchase_date, price, status) VALUES('4', '2016-04-13', '132', 'Not Available');

SELECT * FROM books;


/*Insert into table members*/
INSERT INTO members(member_name, address_line1, address_line2, category) VALUES('Amit Kumar', '101/88, sector 10', 'Pratap nagar, Sanganer', 'F');
INSERT INTO members(member_name, address_line1, address_line2, category) VALUES('Md. Noor Alam', '101/87, sector 10', 'Pratap nagar, Sanganer', 'S');
INSERT INTO members(member_name, address_line1, address_line2, category) VALUES('Keshav Sharma', '101/85, sector 10', 'Pratap nagar, Sanganer', 'F');
INSERT INTO members(member_name, address_line1, address_line2, category) VALUES('Simran Kapoor', '101/84, sector 10', 'Pratap nagar, Sanganer', 'S');
INSERT INTO members(member_name, address_line1, address_line2, category) VALUES('Pulkit', '101/84, sector 10', 'Pratap nagar, Sanganer', 'O');

SELECT * FROM members;


/*Insert into table book_issue*/
INSERT INTO book_issue(issue_date, accession_no, member_id, due_date) VALUES('2016-08-10', '1', '1', '2016-08-25');
INSERT INTO book_issue(issue_date, accession_no, member_id, due_date) VALUES('2016-08-15', '2', '1', '2016-10-15');
INSERT INTO book_issue(issue_date, accession_no, member_id, due_date) VALUES('2016-09-10', '2', '3', '2016-09-25');
INSERT INTO book_issue(issue_date, accession_no, member_id, due_date) VALUES('2016-09-10', '3', '2', '2016-11-25');
INSERT INTO book_issue(issue_date, accession_no, member_id, due_date) VALUES('2016-09-15', '1', '2', '2016-10-15');
INSERT INTO book_issue(issue_date, accession_no, member_id, due_date) VALUES('2016-09-20', '3', '3', '2016-10-10');
INSERT INTO book_issue(issue_date, accession_no, member_id, due_date) VALUES('2016-09-30', '2', '4', '2016-10-15');
INSERT INTO book_issue(issue_date, accession_no, member_id, due_date) VALUES('2016-09-30', '1', '4', '2016-10-25');

select * FROM book_issue;


/*Insert into table book_return*/
INSERT INTO book_return(return_date, accession_no, member_id, issue_date) VALUES('2016-09-12', '1', '1', '2016-08-10');
INSERT INTO book_return(return_date, accession_no, member_id, issue_date) VALUES('2016-09-18', '3', '2', '2016-09-10');
INSERT INTO book_return(return_date, accession_no, member_id, issue_date) VALUES('2016-09-26', '2', '1', '2016-08-15');
INSERT INTO book_return(return_date, accession_no, member_id, issue_date) VALUES('2016-09-27', '1', '2', '2016-09-15');
INSERT INTO book_return(return_date, accession_no, member_id, issue_date) VALUES('2016-09-28', '4', '3', '2016-09-10');
INSERT INTO book_return(return_date, accession_no, member_id, issue_date) VALUES('2016-11-20', '3', '3', '2016-09-20');
INSERT INTO book_return(return_date, accession_no, member_id, issue_date) VALUES('2016-12-05', '1', '4', '2016-09-30');
INSERT INTO book_return(return_date, accession_no, member_id, issue_date) VALUES('2016-12-30', '2', '4', '2016-09-30');

select * FROM book_return;
create database schools;

create table students(
id  int primary key identity,
stdName varchar(50) not null,
stdEmail varchar(200) not null unique,
stdAge int not null,
stdCity varchar(100)
);


insert into students(stdName,stdEmail,stdAge,stdCity)
values('Fahad','fahad@gmail.com',17, 'Karachi'),('Saad','saad@gmail.com',19, 'Islamabad'),
('Behroz','behroz@gmail.com',18, 'Peshawar'),('Umair','umair@gmail.com',17, 'Lahore'),
('Utban','utban@gmail.com',21, 'Karachi')

select * from students;

create table books(
id int primary key identity,
bookName varchar(100)
);

insert into books(bookName) values('Biology'),('Physics'),('Math');

select * from books;

create table bkIssueDate(
id int primary key identity,
stdId int not null,
bookId int not null,
IssueDate varchar(100),
foreign key (stdId) references students(id),
foreign key (bookId) references books(id)
);

insert into bkIssueDate(stdId,bookId,IssueDate) values (6,2,'25-Mar-2024'),(8,1,'20-Mar-2024'),(8,3,'01-Apr-2024'),
(6,3,'29-Mar-2024'),(7,2,'07-Apr-2024'),(10,1,'27-Feb-2024');

select * from bkIssueDate;

SELECT  s.stdName as 'Name', bk.bookName as 'Book', b.IssueDate
FROM bkIssueDate b
INNER JOIN students s ON b.stdId = s.id
INNER JOIN books bk ON b.bookId = bk.id;


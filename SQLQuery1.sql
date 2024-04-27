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
)

insert into bkIssueDate(stdId,bookId,IssueDate) values(1,2,'25-Mar-2024'),(3,1,'20-Mar-2024'),(3,3,'01-Apr-2024'),
(1,3,'29-Mar-2024'),(2,2,'07-Apr-2024'),(5,1,'27-Feb-2024');

select * from bkIssueDate;

SELECT  s.stdName as 'Name', bk.bookName as 'Book', b.IssueDate
FROM bkIssueDate b
INNER JOIN students s ON b.stdId = s.id
INNER JOIN books bk ON b.bookId = bk.id;


create table artists(
id int primary key,
artName varchar(60),
artAge int
)

insert into artists(id,artName,artAge) values(1,'Ali Zafar', 30), (2,'Atif Aslam', 35),(3,'Ali Azmat', 38),(4,'Asim Azhar', 27),
(5,'Ali Sethi', 40)

select * from artists;


create table artist_new(
id int primary key identity,
artName varchar(200),
artAge int,
)

insert into artist_new(artName,artAge) select artName, artAge from artists

select * from artist_new

drop table artists

EXEC sp_rename 'artist_new' , 'artists';

alter table artists add artEmail varchar(200)

alter table artists add date_of_birth int

select * from artists

alter table artists alter column date_of_birth varchar(200) 

alter table artists drop column date_of_birth

EXEC sp_rename 'artists.artEmail', 'Email', 'COLUMN'











 


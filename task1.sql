/* Create a schema LibraryManagment */
Create Schema LibraryManagment 

/* Create a table authors */
Create table librarymanagment.Authors
(author_id int auto_increment primary key
, author_name varchar(255))

/* Create a table genres */

Create table librarymanagment.genres
(genre_id int auto_increment primary key
, genre_name varchar(255))

/* Create a table books */
Create table librarymanagment.books
(book_id int auto_increment primary key
 ,title varchar(255)
 ,publication_year YEAR
 ,author_id int
 ,foreign key(author_id) references  librarymanagment.authors (author_id)
 ,genre_id int
 , foreign key(genre_id) references librarymanagment.genres(genre_id)
 )

/* Create a table users */
Create table librarymanagment.users
(user_id int auto_increment primary key
 ,username varchar(255)
 ,email varchar(255)
 )

/* Create a table borrowed_books */
Create table librarymanagment.borrowed_books
(borrow_id int auto_increment primary key
 ,book_id int
 ,foreign key(book_id) references librarymanagment.books(book_id)
 ,user_id int
 ,foreign key(user_id) references librarymanagment.users(user_id)
 ,borrow_date date
 ,return_date date
 )
insert into librarymanagment.authors(author_name)
values ('Bigbider')
	,('Kant')
    ,('Jobs');

insert into librarymanagment.genres(genre_name)
values ( 'horror')
	,( 'comedy')
    ,( 'tragedy');

insert into librarymanagment.books(title,publication_year,author_id,genre_id)
values ( 'interesting book', 1992, 3,null)
	,( 'boring book', 1955, 3,2);
    
insert into librarymanagment.users(username, email)
values('user1','smth@gmail.com')
,('user2','anythin@gmail.com');
    
insert into librarymanagment.borrowed_books(book_id,user_id,borrow_date,return_date)
values (2, 2, 20230808, null)
,	(1,1,20240303, 20240804);
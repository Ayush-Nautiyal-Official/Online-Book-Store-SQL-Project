drop table if exists books;

create table books
(
	Book_ID	serial	primary key ,
	Title	varchar(59)	,
	Author	varchar(26)	,
	Genre	varchar(15)	,
	Published_Year	int	,
	Price	numeric(10,2),
	Stock	int	
);

drop table if exists customers;

create table customers
(
	Customer_ID serial primary key,
	Name varchar(100),
	Email varchar(100),
	Phone varchar(15),
	City varchar(50),
	Country varchar(150)
);

drop table if exists orders;

create table orders
(
	Order_ID serial primary key,
	Customer_ID int references customers(Customer_ID),
	Book_ID int references books(Book_ID),
	Order_Date date,
	Quantity int,
	Total_Amount numeric(10,2)
);

select * from customers;
select * from books;
select * from orders;

-- import data of csv file using import/export

--return all books in 'Fiction' genre
select * from books
where genre= 'Fiction';

--books pulished after 1950
select * from books
where published_year> 1950;

--list all customers from canada
select * from customers
where country= 'Canada';

--list orders placed in november 2023
select * from orders
where order_date between '2023-11-1' and '2023-11-30';

--total stocks of books available
select sum(stock) as total_stocks from books;

--find details of most expensive book
select * from books
order by price desc
limit 1;

--show all the customers who ordered more than  1 quantity of book
select name,quantity 
from orders as o
join customers as c 
on c.customer_id=o.customer_id
where quantity> 1;

--reterieve all the orders where total cost exceeds 20
select * from orders
where total_amount> 20;

--list all genres available in books
select distinct genre from books;

--find the book with lowest stock
select * from books
order by stock limit 1;

--total revenue generated from all the orders
select sum(total_amount)as total_revenue from orders;

--Advance Queries:

--find total number of books sold for each genre
select genre,sum(quantity) as books_sold
from books as b 
join orders as o
on b.book_id=o.book_id
group by genre;

--find the average price of books in fantasy genre
select avg(price) from books
where genre = 'Fantasy';

--find the customers who have palced atleast 2 orders
select c.customer_id,c.name,count(order_id) as order_placed
from orders as o
join customers as c
on o.customer_id=c.customer_id 
group by c.customer_id, c.name
having count(order_id)>=2;

--find most frequently ordered book
select book_id, count(order_id)as order_count
from orders
group by book_id
order by order_count desc
limit 1;

--top 3 most expensive books from 'Fantasy' genre
select * from books
where genre= 'Fantasy'
order by price desc
limit 3;

--retrieve total quantity of books sold by each author
select b.author,sum(o.quantity) as total_books
from books as b
join orders as o
on b.book_id=o.book_id
group by b.author;

--list the cities where customer who spent over 30 dollors are located
select distinct c.city,o.customer_id,o.total_amount
from customers as c
join orders as o
on c.customer_id=o.customer_id
where total_amount>30;

--find he customer who spent the most on orders
select c.customer_id ,sum(total_amount) as total_spent
from customers as c
join orders as o
on c.customer_id=o.customer_id
group by c.customer_id
order by total_spent desc limit 1;

--calculate the syock remaining after fulfiling all otders
select b.book_id,b.title,b.stock,coalesce(sum(quantity),0)as order_quantity,
		b.stock-coalesce(sum(quantity),0)as remaining_quantity
from books as b
left join orders as o
on b.book_id=o.book_id
group by b.book_id
order by b.book_id;

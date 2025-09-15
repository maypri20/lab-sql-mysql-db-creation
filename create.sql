CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;
DROP TABLE IF EXISTS cars;
CREATE TABLE Cars (id int, VIN VARCHAR(20), manufacturer VARCHAR(20), model VARCHAR(20), year int, color varchar (20));
Create Table Customers (id int, Cust_ID int, name varchar(20), phone int, email varchar(20), address varchar(40), city varchar(20), state_province varchar(20), country varchar(20), zip_postal_code int);
create table Salespersons (id int, Staff_ID int, name varchar(20), store varchar(20));
create table Invoice (id int, invoice_number varchar(20), invoice_date date, car int, customer int, salesperson int, 
constraint fk_car foreign key (car) references Cars(id),
constraint fk_customer foreign key (customer) references Customers(id),
constraint fk_salesperson foreign key (salesperson) references Salespersons(id));
ALTER TABLE Cars
ADD PRIMARY KEY (id);

ALTER TABLE Customers
ADD PRIMARY KEY (id);

ALTER TABLE Salespersons
ADD PRIMARY KEY (id);








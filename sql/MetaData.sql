--Schema--
create schema hub;

--Table---
create table [hub].[customer]
(
  cust_id int ,
  cust_fname varchar(200),
  cust_lname varchar(200),
  gender varchar(200),
  [address] varchar(200),
  phoneNumber int,
  DOB datetime2,
  created_at datetime2
)

create table [hub].[orders]
(
  cust_id int,
  order_id int,
  order_at datetime2,
  amount decimal(10,2)
)
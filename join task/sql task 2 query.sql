create table customer(customer_id serial primary key,	customer_name varchar,	city varchar,
phone_number bigint,	email varchar,	registration_date date);
create table order_details(order_id serial primary key,customer_id	int references customer(customer_id),
order_date	date,order_amount int,	delivery_city varchar,	payment_mode varchar);
create table product(product_id serial primary key,product_name varchar,	category varchar,
price int,	stock_quantity	int,supplier_name varchar,	supplier_city varchar,supply_date date);
create table order_items(order_item_id	int,order_id int references	 order_details(order_id),
product_id int references  product(product_id),quantity int,	total_price int);
copy customer    from 'C:/Table.1--customers.csv' delimiter ',' csv header;
copy order_details from 'C:/Table.2--orders.csv' delimiter ',' csv header;
copy product    from 'C:/Table.3--products.csv' delimiter ',' csv header;
copy  order_items   from 'C:/Table.4--order_items.csv' delimiter ',' csv header;
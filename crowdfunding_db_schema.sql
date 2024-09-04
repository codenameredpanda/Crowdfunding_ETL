drop table if exists campaign


create table category (
	category_id varchar(50) primary key,
	category varchar(50)
);

create table subcategory (
	subcategory_id varchar(50) primary key,
	subcategory varchar(50)
);

create table contacts (
	contact_id float primary key,
	first_name varchar(50),
	last_name varchar(50),
	email varchar(100)
);

create table campaign (
	cf_id int primary key,
	contact_id float,
	company_name varchar(250),
	description varchar(250),
	goal numeric(10,2),
	pledged numeric(10,2),
	outcome varchar(250),
	backers_count numeric,
	country varchar(250),
	currency varchar(250),
	launched_date date,
	end_date date,
	category_id varchar(250),
	subcategory_id varchar(250),
	foreign key (category_id) references category(category_id),
	foreign key(subcategory_id) references subcategory(subcategory_id),
	foreign key(contact_id) references contacts(contact_id)
);


select * from campaign;
select * from category;
select * from subcategory;
select * from contacts;
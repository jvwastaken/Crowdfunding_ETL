-- Drop tables as needed
drop table contacts
drop table campaign
drop table category
drop table subcategory

-- Creating CONTACTS table
CREATE TABLE contacts(
	contact_id integer NOT NULL,
	first_name varchar(50),
	last_name varchar(50),
	email varchar(50),
	primary key(contact_id)
);

select * from contacts;

-- Creating CAMPAIGN table
CREATE TABLE campaign(
	cf_id INT NOT NULL,
	contact_id INT NOT NULL,
	company_name varchar(75),
	description varchar(75),
	goal decimal NOT NULL,
	pledged decimal NOT NULL,
	outcome varchar(20),
	backers_count int NOT NULL,
	country varchar(5),
	currency varchar(5),
	launched_date date,
	end_date date,
	category_id varchar(4),
	subcategory_id varchar(8),
	primary key (cf_id),
	foreign key (contact_id) references contacts(contact_id),
	foreign key (subcategory_id) references subcategory(subcategory_id),
	foreign key (category_id) references category(category_id)
);

select * from campaign;


-- Creating CATEGORY table
CREATE TABLE category(
	category_id varchar(20),
	category varchar(15),
	primary key (category_id)
);

select * from category;


-- Creating SUBCATEGORY table
CREATE TABLE subcategory(
	subcategory_id varchar(30),
	subcategory varchar(30),
	primary key (subcategory_id)
);

select * from subcategory;
-- Download MySQL
-- Run MySQL Command Line Client
-- Note: run these queries one by one sequentially.

-- create database:
create database bb_ms;

-- Select the database
use bb_ms;


-- Creating Tables

-- Blood Stock
create table blood_stock (
	id int not null auto_increment,
	bloodgroup varchar(10) not null,
	unit int unsigned not null check(unit >= 0),
	primary key(id)
);

-- Donor
create table donor_donor (
	id int not null auto_increment,
	bloodgroup varchar(10) not null,
	address varchar(40) not null,
	mobile varchar(20) not null,
	user_id int not null unique,
	primary key(id),
	foreign key(user_id) references auth_user(id) on delete no action
);

-- Patient
create table patient_patient (
	id int not null auto_increment,
	age int unsigned not null check(age >= 0),
	bloodgroup varchar(10) not null,
	disease varchar(100) not null,
	doctorname varchar(50) not null,
	address varchar(40) not null,
	mobile varchar(20) not null,
	user_id int not null unique,
	foreign key(user_id) references auth_user(id) on delete no action,
	primary key(id)
);

-- Blood Request
create table blood_bloodrequest (
	id int not null auto_increment,
	reason varchar(500) not null,
	bloodgroup varchar(10) not null,
	unit int unsigned not null check(unit >= 0),
	status varchar(20) not null,
	patient_age int unsigned not null check(patient_age >= 0),
	patient_name varchar(30) not null,
	request_by_donor_id int,
	request_by_patient_id int,
	date date not null,
	primary key(id),
	foreign key(request_by_donor_id) references donor_donor(id) on delete no action,
	foreign key(request_by_patient_id) references patient_patient(id) on delete no action
);

-- Blood Donation
create table donor_blooddonate (
	id int not null auto_increment,
	disease varchar(100) not null,
	age int unsigned not null check(age >= 0),
	bloodgroup varchar(10) not null,
	unit int unsigned not null check(unit >= 0),
	status varchar(20) not null,
	date date not null,
	donor_id int not null,
	primary key(id),
	foreign key(donor_id) references donor_donor(id) on delete no action
);

/*
By Sanket Saurav & Guna Shekhar
*/

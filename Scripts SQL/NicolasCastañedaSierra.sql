create table REGIONS(
region_id varchar(16) not null,
region_name varchar (40)
)

create table COUNTRY(
country_id VARCHAR (16) not null,
country_name VARCHAR (60),
region_id VARCHAR(16) not null,
primary key (country_id),
FOREIGN KEY (region_id) REFERENCES REGIONS(region_id)
)

create table LOCATIONS (
location_id varchar (16) not null,
street_address varchar (60),
postal_code varchar(10),
city varchar(40) not null,
state_province varchar (40),
country_id varchar (16) not null,
primary key (location_id),
FOREIGN KEY (country_id) REFERENCES COUNTRY(country_id)
)

create table MANAGERS(
manager_id varchar(16) not null,
manager_firstname varchar (30),
manager_lastname varchar (30),
primary key (manager_id)
)

create table DEPARTMENTS (
department_id varchar(16) not null, 
department_name varchar(60) not null,
manager_id varchar(16)not null,
location_id varchar(16) not null,
primary key (department_id),
FOREIGN KEY (manager_id) REFERENCES MANAGERS(manager_id),
FOREIGN KEY (location_id) REFERENCES LOCATIONS(location_id)
)

create table JOBS(
job_id varchar(16) not null,
job_title varchar(30) not null,
min_salary int(30),
max_salary int(30),
primary key (job_id)
)

create table EMPLOYEES(
employee_id varchar(16) not null,
first_name varchar(20),
last_name varchar(30) not null,
e_mail varchar(60) not null,
phone_number varchar (60),
hire_date date not null,
job_id varchar(16) not null,
salary int(30),
commission_pct int(30),
manager_id varchar(16) not null,
department_id varchar(16) not null,
primary key (employee_id),
FOREIGN KEY (job_id) REFERENCES JOBS(job_id),
FOREIGN KEY (manager_id) REFERENCES MANAGERS(manager_id),
FOREIGN KEY (department_id) REFERENCES DEPARTMENTS(department_id)
)

create table JOB_HISTORY(
employee_id varchar(16) not null,
start_date date not null,
end_date date not null,
job_id varchar(16) not null,
department_id  varchar(16),
primary key (employee_id, start_date),
FOREIGN KEY (department_id) REFERENCES DEPARTMENTS(department_id),
FOREIGN KEY (job_id) REFERENCES JOBS(job_id)
)
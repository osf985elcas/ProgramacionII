create table REGIONS(
region_id VARCHAR(20) NOT NULL,
region_name VARCHAR(50),
PRIMARY KEY(region_id)
)



create table countries(
country_id VARCHAR(20) NOT NULL,
country_name VARCHAR(50),
region_id VARCHAR (20) NOT NULL,
PRIMARY KEY(country_id),
FOREIGN KEY(region_id) REFERENCES regions(region_id)
)
create table LOCATIONS(
location_id VARCHAR(15) NOT NULL,
street_address VARCHAR(30),
postal_code VARCHAR(10),
city VARCHAR(50) NOT NULL,
state_province VARCHAR(60),
country_id VARCHAR(20)NOT NULL,
PRIMARY KEY(location_id),
FOREIGN KEY(country_id) REFERENCES countries(country_id)
)
create table manager(
manager_id VARCHAR(20) NOT NULL,
manager_name VARCHAR(50),
manager_lastname VARCHAR(50),
PRIMARY KEY(manager_id)
)
create table DEPARTMENTS(
department_id VARCHAR(20) NOT NULL,
department_name VARCHAR(50) NOT NULL,
manager_id VARCHAR (20),
location_id VARCHAR(20) NOT NULL,
PRIMARY KEY(department_id),
FOREIGN KEY(manager_id) REFERENCES manager(manager_id),
FOREIGN KEY(location_id) REFERENCES locations(location_id)
)
create table JOBS(
job_id VARCHAR(20)NOT NULL,
job_title VARCHAR(50)NOT NULL,
min_salary INT(30),
max_salary INT(30),
primary key(job_id)
)
create table EMPLOYEES(
employee_id VARCHAR (20) NOT NULL,
first_name VARCHAR(50),
last_name VARCHAR(50) NOT NULL,
e_mail VARCHAR(50) NOT NULL,
phone_number VARCHAR(20),
hire_date DATE NOT NULL,
job_id VARCHAR (20)NOT NULL,
salary INT (30),
commission_pct INT(30),
manager_id VARCHAR(20) NOT NULL,
department_id VARCHAR(20)NOT NULL,
PRIMARY KEY(employee_id),
FOREIGN KEY(job_id) REFERENCES jobs(job_id),
FOREIGN KEY(manager_id) REFERENCES manager(manager_id),
FOREIGN KEY(department_id) REFERENCES departments(department_id)
)
create table JOB_HISTORY(
employee_id VARCHAR(20)NOT NULL,
start_date DATE NOT NULL,
end_date DATE NOT NULL,
job_id VARCHAR(20) NOT NULL,
department_id VARCHAR(20)NOT NULL,
PRIMARY KEY(employee_id,start_date),
FOREIGN KEY(job_id)REFERENCES jobs(job_id),
FOREIGN KEY(department_id)REFERENCES departments(department_id)

)
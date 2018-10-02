create table regions (
region_id int not null auto_increment PRIMARY KEY,
region_name,
)engine = InnoDB;

create table countries (
country_id int not null auto_increment PRIMARY KEY,
country_name Varchar (32),
region_id int (2),
CONSTRAINT region_id FOREIGN KEY (region_id) REFERENCES regions(region_id)
)engine = InnoDB;

create table locations (
locations_id int not null auto_increment PRIMARY KEY,
street_address Varchar (32),
postal_code int (20),
city Varchar (32) not null,
state_province Varchar(32),
country_id int (2),
CONSTRAINT country_id FOREIGN KEY (country_id) REFERENCES countries(country_id)
)engine = InnoDB;

create table manager (
manager_id int not null auto_increment PRIMARY KEY,
manager_name Varchar (32)
)engine = InnoDB;

create table departments (
department_id int not null auto_increment PRIMARY KEY,
department_name Varchar (32),
manager_id int (10),
locations_id int (10),
CONSTRAINT manager_id FOREIGN KEY (manager_id) REFERENCES manager(manager_id),
CONSTRAINT locations_id FOREIGN KEY (locations_id) REFERENCES locations(locations_id)
) engine = InnoDB;

create table jobs (
job_id int not null auto_increment PRIMARY KEY,
job_title Varchar (32),
min_salary int (10),
max_salary int (10)
) engine = innoDB;

create table employees (
employee_id int not null auto_increment PRIMARY KEY,
first_name Varchar (32),
last_name Varchar (32)not null,
email Varchar (32) not null,
phone_number int (10),
hire_date date not null,
salary int (10),
commission_pct int (10),
job_id int (10)not null,
manager_id int (10)not null,
department_id int (10)not null,
CONSTRAINT job_id FOREIGN KEY (job_id) REFERENCES jobs(job_id),
CONSTRAINT manager_id FOREIGN KEY (manager_id) REFERENCES manager(manager_id),
CONSTRAINT department_id FOREIGN KEY (department_id) REFERENCES departments(department_id)
) engine = InnoDB;

create table jobhistory (
job_id int not null auto_increment PRIMARY KEY,
job_title Varchar (10),
end_date date,
job_id int (10)not null,
department_id int (10),
CONSTRAINT job_id FOREIGN KEY (job_id) REFERENCES jobs(job_id),
CONSTRAINT department_id FOREIGN KEY (department_id) REFERENCES departments(department_id)
)engine = InnoDB;
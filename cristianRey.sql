
CREATE TABLE REGIONS(
region_id varchar(16) NOT NULL,
region_name varchar(60),
PRIMARY KEY(region_id)
);

CREATE TABLE COUNTRIES(
country_id varchar(16) NOT NULL,
country_name varchar(60),
region_id varchar(16),
PRIMARY KEY(country_id),
CONSTRAINT region_id FOREIGN KEY (region_id) REFERENCES REGIONS (region_id)
);
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
CREATE TABLE MANAGER(
manager_id varchar(16) NOT NULL,
name_manager varchar(50),
city varchar(50) NOT NULL,
PRIMARY KEY(manager_id)
);
CREATE TABLE DEPARTMENTS(
department_id varchar(16) NOT NULL,
department_name varchar(50) NOT NULL,
manager_id varchar(16),
location_id varchar(16),
PRIMARY KEY(department_id),
CONSTRAINT location_id FOREIGN KEY (location_id) REFERENCES LOCATIONS (location_id),
CONSTRAINT manager_id FOREIGN KEY (manager_id) REFERENCES MANAGER (manager_id)
);
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
CREATE TABLE JOBS(
job_id varchar(16) NOT NULL,
job_title varchar(30) NOT NULL,
min_salary int(30),
max_salary int(30),
PRIMARY KEY(job_id)
);
CREATE TABLE JOB_HISTORY(
empleoyee_id varchar(16) NOT NULL,
start_date date NOT NULL,
end_date date NOT NULL,
job_id varchar(16) NOT NULL,
department_id varchar(16) NOT NULL,
PRIMARY KEY(empleoyee_id, start_date),
CONSTRAINT job_idH FOREIGN KEY (job_id) REFERENCES JOBS (job_id),
CONSTRAINT department_idH FOREIGN KEY (department_id) REFERENCES DEPARTMENTS (department_id)
)
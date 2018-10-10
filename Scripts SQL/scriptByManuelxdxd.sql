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


CREATE TABLE LOCATIONS(
location_id varchar(16) NOT NULL,
street_adress varchar(50),
postal_code varchar(10),
city varchar(60) NOT NULL,
state_province varchar(60),
country_id varchar(16) NOT NULL,
PRIMARY KEY(location_id),
CONSTRAINT country_id FOREIGN KEY (country_id) REFERENCES COUNTRIES (country_id)
);

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

CREATE TABLE EMPLOYEES  (
employees_id varchar(16) NOT NULL,
first_name varchar(50) NOT NULL,
last_name varchar(50) NOT NULL,
e_mail varchar(60) NOT NULL,
phone_number varchar(16),
hire_date date NOT NULL,
job_id varchar(16) NOT NULL,
salary int(30),
comission_pet int(30),
manager_id varchar(16),
department_id varchar(16) NOT NULL,
PRIMARY KEY(employees_id),
CONSTRAINT job_idE FOREIGN KEY (job_id) REFERENCES JOBS (job_id),
CONSTRAINT manager_idE FOREIGN KEY (manager_id) REFERENCES MANAGER (manager_id),
CONSTRAINT department_idE FOREIGN KEY (department_id) REFERENCES DEPARTMENTS (department_id)
);

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
);

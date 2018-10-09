CREATE TABLE REGIONS(
region_id int(5) NOT NULL,
region_name varchar(30), 
PRIMARY KEY(region_id)
);

CREATE TABLE COUNTRIES(
country_id int(5) NOT NULL,
country_name varchar(30), 
region_id int (5) NOT NULL,
PRIMARY KEY(country_id),
CONSTRAINT FK_region_id FOREIGN KEY(region_id) REFERENCES REGIONS(region_id)
ON UPDATE CASCADE
);
CREATE TABLE LOCATIONS(
location_id int(5) NOT NULL,
street_address varchar(30), 
postal_code varchar(30), 
city Varchar(30) NOT NULL,
state_providence varchar(30),
country_id int(5) NOT NULL ,
PRIMARY KEY(location_id),
CONSTRAINT FK_country_id FOREIGN KEY(country_id) REFERENCES COUNTRIES(country_id)
ON UPDATE CASCADE
);
CREATE TABLE DEPARTAMENTS(
departament_id int(5) NOT NULL,
departament_name varchar(30) NOT NULL,
location_id int(5),
manager_id int(5),
PRIMARY KEY (departament_id),
CONSTRAINT FK_location_id FOREIGN KEY(location_id) REFERENCES LOCATIONS(location_id)
ON UPDATE CASCADE,
CONSTRAINT FK_manager_id FOREIGN KEY(manager_id) REFERENCES MANAGER(manager_id) 
ON UPDATE CASCADE
);
CREATE TABLE MANAGER(
manager_id int (12) NOT NULL,
manager_name varchar(30),
PRIMARY KEY(manager_id)
);

CREATE TABLE EMPLOYEES(
employee_id int(5) NOT NULL,
first_name varchar(30) NOT NULL,
last_name varchar (30) NOT NULL,
e_mail varchar(30) NOT NULL,
phone_number varchar(30),
hire_date timestamp,
job_id int (5) NOT NULL,
salary INT (12),
commission_pct int(12),
manager_id int(5),
departament_id int(5),
PRIMARY KEY (employee_id),
CONSTRAINT FK_departament_id FOREIGN KEY(departament_id) REFERENCES DEPARTAMENTS(departament_id)
ON UPDATE CASCADE,
CONSTRAINT FK_manager_id2 FOREIGN KEY(manager_id) REFERENCES MANAGER(manager_id) 
ON UPDATE CASCADE,
CONSTRAINT FK_job_id FOREIGN KEY(job_id) REFERENCES JOBS(job_id) 
ON UPDATE CASCADE
);
CREATE TABLE JOBS(
job_id int(5) NOT NULL,
job_title varchar(30) NOT NULL,
min_salary int,
max_salary int,
PRIMARY KEY (job_id)
);
CREATE TABLE JOB_HISTORY(
employee_id int(5) NOT NULL,
start_date DATE NOT NULL,
end_date DATE NOT NULL,
job_id int (5),
departament_id INT (5),
PRIMARY KEY(employee_id,start_date),
CONSTRAINT FK_departament_id2 FOREIGN KEY(departament_id) REFERENCES DEPARTAMENTS(departament_id)
ON UPDATE CASCADE,
CONSTRAINT FK_job_id2 FOREIGN KEY(job_id) REFERENCES JOBS(job_id) 
ON UPDATE CASCADE
);

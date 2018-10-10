CREATE TABLE regions 
(
region_id int NOT NULL, 
region_name varchar(50),
PRIMARY KEY (region_id)
)


CREATE TABLE countries 
( 
country_id int NOT NULL, 
country_name varchar(50), 
region_id   int NOT NULL, 
PRIMARY KEY (country_id),
FOREIGN KEY (region_id) REFERENCES regions(region_id) 
)


CREATE TABLE locations 
( 
location_id int NOT NULL,
street_address varchar(50), 
postaL_code   int, 
city varchar(30),
state_province varchar(30),
country_id int NOT NULL,
PRIMARY KEY (LOCATION_id),
FOREIGN KEY (country_id) REFERENCES countries(country_id) 
)



CREATE TABLE DEPARTMENTS 
( 
department_id int NOT NULL,
department_name varchar(50), 
location_id   int NOT NULL, 
PRIMARY KEY (department_id),
FOREIGN KEY (location_id) REFERENCES locations(location_id) 
)




CREATE TABLE employees 
( 
employee_id int NOT NULL,
first_name varchar(50), 
last_name varchar(50), 
email varchar(50), 
phone_number varchar(50), 
hire_date varchar(50), 
job_id  int NOT NULL,
salary int,
commisission_pct int,
manager_id int NOT NULL,
department_id int NOT NULL,
PRIMARY KEY (employee_id),
FOREIGN KEY (job_id) REFERENCES jobs(job_id),
FOREIGN KEY (manager_id) REFERENCES employees(employee_id),
FOREIGN KEY (department_id) REFERENCES departments(department_id)
)
CREATE TABLE jobs 
(
job_id int NOT NULL, 
job_title varchar(50), 
min_salary numeric(10), 
max_salary numeric(10),
PRIMARY KEY (job_id)
)




CREATE TABLE jobs_history 
( 
history_id int NOT NULL, 
employee_id int NOT NULL, 
start_date  varchar(50), 
start_date  varchar(50), 
job_id int NOT NULL, 
department_id  int NOT NULL, 
PRIMARY KEY (history_id),
FOREIGN KEY (employee_id) REFERENCES emplooyees(employee_id),
FOREIGN KEY (job_id) REFERENCES jobs(job_id),
FOREIGN KEY (department_id) REFERENCES departments(department_id)

)

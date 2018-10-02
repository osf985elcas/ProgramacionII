Create table if not exists  DEPARTMENTS(
department_id int not null auto_increment primary key,
department_name varchar (30),
manager_id int (10),
location_id int (10),
CONSTRAINT location_id FOREIGN KEY (location_id)
REFERENCES LOCATIONS (location_id),

CONSTRAINT manager_id FOREIGN KEY (manager_id)
REFERENCES MANAGER (manager_id)
)engine = InnoDB;

Create table if not exists MANAGER(
manager_id int not null auto_increment primary key,
manager_name Varchar (30),
city Varchar (35) not null
)engine = InnoDB;

Create table if not exists  EMPLOYEES(
employed_id int not null auto_increment primary key,
first_name varchar (30),
last_name varchar (10),
e_mail varchar (10) not null,
phonenumber int  (13),
hire_date date not null,
job_id    int (10),
salary int (30),
comission_pet  int (30),
manager_id  int (10),
department_id int (10),
CONSTRAINT manager_id FOREIGN KEY (manager_id)
REFERENCES MANAGER (manager_id),

CONSTRAINT department_id FOREIGN KEY (department_id)
REFERENCES DEPARTMENTS(departmant_id),

CONSTRAINT job_id FOREIGN KEY (job_id)
REFERENCES JOBS(job_id)

)engine = InnoDB;

Create table if not exists  JOBS(
job_id int not null auto_increment primary key,
job_title varchar (10),
min_salary int (10),
max_salary int (10)
)engine = InnoDB;

Create table if not exists  JOB_HISTORY(
employed_id int not null primary key,
start_date date not null,
end_date date not null,
job_id int (10),
department_id int (10),
CONSTRAINT department_id FOREIGN KEY (department_id)
REFERENCES DEPARTMENTS (department_id),

CONSTRAINT job_id FOREIGN KEY (job_id)
REFERENCES JOBS_HISTORY (job_id)

)engine = InnoDB;
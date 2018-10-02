

CREATE TABLE `regiions` (
 `region_id` varchar(15) NOT NULL,
 `region_name` varchar(15) DEFAULT NULL,
 PRIMARY KEY (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1



CREATE TABLE `countries` (
 `country_id` varchar(15) NOT NULL,
 `country_name` varchar(15) DEFAULT NULL,
 `region_id` varchar(15) DEFAULT NULL,
 PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
departments	



CREATE TABLE `location` (
 `location_id` varchar(15) NOT NULL,
 `stret_addres` varchar(15) DEFAULT NULL,
 `postal_code` varchar(15) DEFAULT NULL,
 `city` varchar(15) DEFAULT NULL,
 `state_province` varchar(15) DEFAULT NULL,
 `country_id` varchar(15) DEFAULT NULL,
 PRIMARY KEY (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
regiion
	  


CREATE TABLE `departments` (
 `department_id` varchar(15) NOT NULL,
 `department_name` varchar(15) DEFAULT NULL,
 `manager_id` varchar(15) DEFAULT NULL,
 PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
jobs	



create table EMPLOYEES(
    employee_id varchar(15)not null,
    first_name varchar(15)not null, 
    last_name varchar(15),
    e-mail varchar(15),
    phone_number int(15),
    hire_date date ,
    job_id varchar(15)not null,
    salary int(15) not null,
    commision_pet varchar(15)not null,
    manager_id varchar(15)not null,
    department_id varchar (15)not null,
    primary key(employee_id,
    foreign key (department_id) references departments(department_id),
    foreign key(job_id) references jobs(job_id)

);


create table jobs (
    job_id varchar(15)not null,
    job_title varchar(15) not null,
    min_salary varchar (15),
    max_sqalary varchar(15), 
    primary key (job_id)
);


create table JOBS_HISTORY (
    employee_id varchar (15) not null,
    start_date varchar(15) not null,
    end_date varchar(15) not null,
    job_id varchar (15) not null,
    departament varchar(15),
    primary key (employee_id, start_date),
    foreign key (job_id) references JOBS_HISTORY (job_id),
    foreign key (departament) references JOBS_HISTORY (departament)
);


create table MANAGER (
    manager_id varchar(15) not null,
    manager_name varchar(15)not null,
    primary key (manager_id)
    
);
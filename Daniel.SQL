CREATE TABLE `countries` (
 `country_id` varchar(15) NOT NULL,
 `country_name` varchar(15) DEFAULT NULL,
 `region_id` varchar(15) DEFAULT NULL,
 PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
departments	

CREATE TABLE `departments` (
 `department_id` varchar(15) NOT NULL,
 `department_name` varchar(15) DEFAULT NULL,
 `manager_id` varchar(15) DEFAULT NULL,
 PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
jobs	

CREATE TABLE `jobs` (
 `job_id` varchar(15) NOT NULL,
 `job_title` varchar(15) NOT NULL,
 `min_salary` varchar(15) NOT NULL,
 `max_salary` varchar(15) NOT NULL,
 PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
location	

CREATE TABLE `location` (
 `location_id` varchar(15) NOT NULL,
 `stret_addres` varchar(15) DEFAULT NULL,
 `postal_code` varchar(15) DEFAULT NULL,
 `city` varchar(15) DEFAULT NULL,
 `state_province` varchar(15) DEFAULT NULL,
 `country_id` varchar(15) DEFAULT NULL,
 PRIMARY KEY (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
regiions	

CREATE TABLE `regiions` (
 `region_id` varchar(15) NOT NULL,
 `region_name` varchar(15) DEFAULT NULL,
 PRIMARY KEY (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1



create table employees(
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

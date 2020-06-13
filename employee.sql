DROP DATABASE IF EXISTS employee_trackerDB;
CREATE database employee_trackerDB;

USE employee_trackerDB;

CREATE TABLE department(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NULL,
    PRIMARY KEY(id)
);

CREATE TABLE role(
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(30) NULL,
    salary DECIMAL(10, 2) NULL,
    department_id INT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE employee(
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30) NULL,
    last_name VARCHAR(30) NULL,
    role_id INT NOT NULL,
    manager_id INT NULL,
    PRIMARY KEY(id)
);

INSERT INTO department (name)
VALUE ("Engineering"), ("Accounting"), ("Marketing");

INSERT INTO role (title, salary, department_id)
VALUE ("Finance Manager", 10, (SELECT id FROM department WHERE name = "Accounting"));

INSERT INTO role (title, salary, department_id)
VALUE ("Accountant", 20, (SELECT id FROM department WHERE name = "Accounting"));

INSERT INTO role (title, salary, department_id)
VALUE ("Advertising", 30, (SELECT id FROM department WHERE name = "Marketing"));

INSERT INTO role (title, salary, department_id)
VALUE ("Digital Marketing Manager", 40, (SELECT id FROM department WHERE name = "Marketing"));

INSERT INTO role (title, salary, department_id)
VALUE ("Jr Engineer", 50, (SELECT id FROM department WHERE name = "Engineering"));

INSERT INTO role (title, salary, department_id)
VALUE ("Engineer Manager", 60, (SELECT id FROM department WHERE name = "Engineering"));

SELECT * FROM role;
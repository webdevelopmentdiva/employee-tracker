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
    PRIMARY KEY(id),
    index (department_id)
    FOREIGN KEY (department_id) REFERENCES department (id)
);
CREATE TABLE employee(
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30) NULL,
    last_name VARCHAR(30) NULL,
    role_id INT NOT NULL,
    manager_id INT NULL,
    PRIMARY KEY(id),
    index (role_id),
    index (manager_id),
    FOREIGN KEY (role_id) REFERENCES role (id),
    FOREIGN KEY (manager_id) REFERENCES employee (id)
);

INSERT INTO department (name)
VALUES ("Engineering"), ("Accounting"), ("Marketing");

INSERT INTO role (title, salary, department_id)
VALUES ("Finance Manager", 10, (SELECT id FROM department WHERE name = "Marketing"));
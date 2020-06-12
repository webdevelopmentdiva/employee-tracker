# Employee-Tracker

## I've created an interface that makes it easy for non-developers to view and interact with information stored in databases. A solution for managing a company's employees using node, inquirer, and MySQL.

### A command-line application that allows the user to:

- Add departments, roles, employees
- View departments, roles, employees
- Update employee roles Bonus points if you're able to:
- Update employee managers
- View employees by manager
- Delete departments, roles, and employees
- View the total utilized budget of a department -- ie the combined salaries of all employees in that department

We can frame this challenge as follows:  
`As a business owner I want to be able to view and manage the departments, roles, and employees in my company So that I can organize and plan my business`

**department**:

- **id** - INT PRIMARY KEY
- **name** - VARCHAR(30) to hold department name

- **role**:
- **id** - INT PRIMARY KEY
- **title** - VARCHAR(30) to hold role title
- **salary** - DECIMAL to hold role salary  
  **department_id** - INT to hold reference to department role belongs to

**employee**:

- **id** - INT PRIMARY KEY
- **first_name** - VARCHAR(30) to hold employee first name
  **last_name** - VARCHAR(30) to hold employee last name  
  **role_id** - INT to hold reference to role employee has
  **manager_id** - INT to hold reference to another employee that manager of the current employee. This field may be null if the employee has no manager

Here are some guidelines on how do I delivered this:

- Used the [MySQL](https://www.npmjs.com/package/mysql) NPM package to connect to MySQL database and perform queries.
- Used [InquirerJs](https://www.npmjs.com/package/inquirer/v/0.2.3) NPM package to interact with the user via the command-line.
- Used [console.table](https://www.npmjs.com/package/console.table) to print MySQL rows to the console. There is a built-in version of `console.table`, but the NPM package formats the data a little better for our purposes.
- I made a separate file containing functions for performing specific SQL queries to use.
- I performed a variety of SQL JOINS to complete this assignment. ![Employee Tracker](Assets/employee-tracker.gif)

- I included a `employee.sql` file to pre-populate my database.

## Minimum Requirements

- GitHub repository with a unique name and a README describing the project.
- The command-line application should allow users to:
- Add departments, roles, employees
- View departments, roles, employees
- Update employee roles

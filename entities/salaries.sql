CREATE TABLE salaries (
`id` INT NOT NULL AUTO_INCREMENT,
`employee_id` INT NOT NULL,
`subject_year_month` DATE NOT NULL,
`date_given` DATE NOT NULL,
`agreed_salary` DECIMAL (12,3) NOT NULL,
`payable` DECIMAL(12,3) NOT NULL,

PRIMARY KEY (id),

FOREIGN KEY `fk_salaries.employee_id_references_employees.id` (employee_id)
	REFERENCES employees(id)
	ON DELETE CASCADE
);
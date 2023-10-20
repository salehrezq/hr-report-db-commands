CREATE TABLE salary_advances (
`id` INT NOT NULL AUTO_INCREMENT,
`employee_id` INT NOT NULL,
`subject_year_month` DATE NOT NULL,
`date_given` DATE NOT NULL,
`amount` DECIMAL (12,3) NOT NULL,
`locked` BOOL NOT NULL DEFAULT FALSE,

PRIMARY KEY (id),

FOREIGN KEY `fk_salary_advances.employee_id_references_employees.id` (employee_id)
	REFERENCES employees(id)
	ON DELETE CASCADE
);
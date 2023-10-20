CREATE TABLE attendance (
`id` INT NOT NULL AUTO_INCREMENT,
`employee_id` INT NOT NULL,
`date` DATE NOT NULL,
`state` BOOL NOT NULL,
`locked` BOOL NOT NULL DEFAULT FALSE,

PRIMARY KEY (id),

UNIQUE `unique_employee_id_with_date` (employee_id, `date`),

FOREIGN KEY `fk_attendance.employees_id_references_employees.id` (employee_id)
	REFERENCES employees(id)
	ON DELETE CASCADE
);
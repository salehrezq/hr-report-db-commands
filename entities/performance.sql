CREATE TABLE performance (
`id` INT NOT NULL AUTO_INCREMENT,
`employee_id` INT NOT NULL,
`date_time` DATETIME NOT NULL,
`type_id` INT NOT NULL,
`state` BOOL NOT NULL,
`amount` DECIMAL(12,3) NOT NULL,
`title` VARCHAR(150) NOT NULL,
`description` VARCHAR(5000) NULL,
`locked` BOOL NOT NULL DEFAULT FALSE,

PRIMARY KEY (id),

FOREIGN KEY `fk_performance.employee_id_references_employees.id` (employee_id)
	REFERENCES employees(id)
	ON DELETE CASCADE,

FOREIGN KEY `fk_performance.type_id_references_performance_types.id` (type_id)
	REFERENCES performance_types(id)
	ON DELETE CASCADE
);
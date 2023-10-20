CREATE TABLE cases (
`id` INT NOT NULL AUTO_INCREMENT,
`employee_id` INT NOT NULL,
`date` DATE NOT NULL,
`title` VARCHAR(150) NOT NULL,
`description` VARCHAR(5000) NULL,

PRIMARY KEY (id),

FOREIGN KEY `fk_cases.employee_id_references_employees.id` (employee_id)
REFERENCES employees(id)
  ON DELETE CASCADE
);


CREATE TABLE attendance_deductions (
`id` INT NOT NULL AUTO_INCREMENT,
`employee_id` INT NOT NULL,
`attendance_id` INT NOT NULL,
`description_ar` TEXT NOT NULL,
`description_en` TEXT NOT NULL,
`deduction` DECIMAL(12,3) NOT NULL,

PRIMARY KEY (id),

FOREIGN KEY `fk_attendance_deductions.employee_id_references_employees.id` (employee_id)
	REFERENCES employees(id)
	ON DELETE CASCADE,

FOREIGN KEY `fk_attendance_deductions.attendance_id_references_attendance.id` (attendance_id)
	REFERENCES attendance(id)
	ON DELETE CASCADE
);
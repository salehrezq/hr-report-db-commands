CREATE TABLE late (
`id` INT NOT NULL AUTO_INCREMENT,
`attendance_id` INT NOT NULL, 
`minutes_late` INT NOT NULL,

PRIMARY KEY (id),

UNIQUE INDEX `unique_attendance_id` (attendance_id),

FOREIGN KEY `fk_late.attendance_id_references_attendance.id` (attendance_id)
	REFERENCES attendance(id)
	ON DELETE CASCADE
);
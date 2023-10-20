SELECT *
FROM `attendance` LEFT JOIN `late` ON (attendance.id = late.attendance_id)
WHERE attendance.employee_id = 1
AND attendance.date >= "2021-12-1" AND attendance.date < "2022-1-1"
AND (attendance.state = FALSE OR (attendance.state = TRUE AND late.id IS NOT NULL))
ORDER BY `date` ASC;
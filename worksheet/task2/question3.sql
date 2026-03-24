-- For each department, calculate the number of enrolments in its courses.
-- Expected Columns:
-- DepartmentName, TotalEnrolments

.mode columns
.headers on

SELECT department.DepartmentName, COUNT(Enrolment.EnrolmentId) AS TotalEnrolments
FROM department
JOIN course ON department.DepartmentId = course.DepartmentId
JOIN enrolment ON course.CourseId = enrolment.CourseId
GROUP BY DepartmentName
ORDER BY DepartmentName;
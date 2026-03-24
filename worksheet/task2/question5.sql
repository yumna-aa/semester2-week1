-- For each student, calculate the total number of credits from courses they passed. Assume a passing grade is 40 or higher.
-- Expected Columns:
-- StudentId, FirstName, LastName, TotalCreditsPassed

SELECT student.StudentId, student.FirstName, student.LastName, SUM(course.credits) AS TotalCreditsPassed
FROM student
JOIN enrolment ON student.StudentId = enrolment.StudentId
JOIN course ON enrolment.CourseId = course.CourseId
WHERE enrolment.Grade >= 40
GROUP BY student.StudentId, student.FirstName, student.LastName
ORDER BY student.StudentId;
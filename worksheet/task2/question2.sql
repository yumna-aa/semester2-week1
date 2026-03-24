-- Find the 5 youngest students in the database.
-- Expected Columns:
-- StudentId, FirstName, LastName, DateOfBirth

.mode columns
.headers on

SELECT StudentId, FirstName, LastName, DateOfBirth
FROM student
ORDER BY DateOfBirth DESC
LIMIT 5;
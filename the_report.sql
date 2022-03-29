-- Queries the database containing the Grades and Students table
-- Selects Name and Marks from the Students table and Grade from the Grades table using a join operation
-- If the students grade is equal to or greater than 8 their name is returned if not NULL is returnd and that student is returned as NULL 
-- The students Grade and Mark are also returned
SELECT IF(GRADES.GRADE>=8, STUDENTS.NAME, NULL),GRADES.GRADE, STUDENTS.MARKS
-- Retriving from both the Grades and Students tables
FROM GRADES, STUDENTS
-- Finding the students Grade by their Marks, where the Marks are between the Min_Mark and Max_Mark 
WHERE STUDENTS.MARKS BETWEEN GRADES.MIN_MARK AND GRADES.MAX_MARK
-- Orders the students by their Grade in descending order
-- If students have the same Grade they will then be ordered alphabetically by their Name, ascending order is the default 
ORDER BY GRADES.GRADE DESC, STUDENTS.NAME;
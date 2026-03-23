-- 📊 Student Analysis Queries

-- 1. Top 3 students
SELECT name, marks
FROM students
ORDER BY marks DESC
LIMIT 3;

-- 2. Average marks by city
SELECT city, AVG(marks) AS avg_marks
FROM students
GROUP BY city;

-- 3. City with highest average marks
SELECT city, AVG(marks) AS avg_marks
FROM students
GROUP BY city
ORDER BY avg_marks DESC
LIMIT 1;

-- 4. Students scoring above average
SELECT name, marks
FROM students
WHERE marks > (SELECT AVG(marks) FROM students);

-- 5. Number of students in each city
SELECT city, COUNT(*) AS total_students
FROM students
GROUP BY city;

-- 6. Cities with more than 2 students
SELECT city, COUNT(*) AS total
FROM students
GROUP BY city
HAVING COUNT(*) > 2;

-- 7. Highest and lowest marks
SELECT MAX(marks) AS highest, MIN(marks) AS lowest
FROM students;
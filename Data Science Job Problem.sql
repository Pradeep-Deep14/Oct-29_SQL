DROP TABLE IF EXISTS candidates;

CREATE TABLE candidates (
    name VARCHAR(100),
    skills TEXT
);


INSERT INTO candidates (name, skills) VALUES
('Alice', 'Python,Tableau,SQL'),
('Bob', 'Python,Tableau,PostgreSQL'),
('Charlie', 'R,Excel,Python'),
('Dave', 'Tableau,Python,PostgreSQL'),
('Eve', 'SQL,Python,Tableau,PostgreSQL');

SELECT * FROM CANDIDATES

/*
Write a query to find candidates best suited for an open Data Science job.
A candidate is suitable if they possess all three required skills: Python, Tableau, and PostgreSQL.
*/

SELECT NAME
FROM CANDIDATES
WHERE SKILLS LIKE '%Python%'
AND SKILLS LIKE '%Tableau%'
AND SKILLS LIKE '%PostgreSQL%'



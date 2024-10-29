CREATE TABLE infosys_projects (
         project_id INT, 
         project_name VARCHAR(100), 
         employee_id INT
     );
     CREATE TABLE wipro_projects (
         project_id INT, 
         project_name VARCHAR(100), 
         employee_id INT
     );
     INSERT INTO infosys_projects VALUES 
         (1, 'Project A', 201), 
         (2, 'Project B', 202), 
         (3, 'Project C', 203);
     INSERT INTO wipro_projects VALUES 
         (2, 'Project B', 301), 
         (3, 'Project C', 302), 
         (4, 'Project D', 303);


SELECT * FROM INFOSYS_PROJECTS

SELECT * FROM WIPRO_PROJECTS

/*
Identify all the projects that have been worked on by employees from both Infosys and Wipro.
*/

SELECT I.PROJECT_ID
FROM INFOSYS_PROJECTS I
JOIN WIPRO_PROJECTS W
ON I.PROJECT_ID=W.PROJECT_ID




Select em.emp_no,
		em.first_name, 
		em.last_name, 
	ti.title, 
	ti.from_date, 
	ti.to_date
INTO retired_titles
FROM employees as em
Left Join titles as ti
on (em.emp_no = ti.emp_no)
WHERE (em.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY em.emp_no;

Select * From retired_titles;

Drop table retired_titles;


-- SELECT rt.emp_no,
-- 		rt.first_name,
-- 		rt.last_name,
		
-- step 8 in the challenge requires copying the code from the challenge file
-- and the code is below
-- Use Dictinct with Orderby to remove duplicate rows

SELECT DISTINCT ON (emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO UniqueRetirees
FROM retired_titles as rt
WHERE rt.to_date = ('9999-01-01')
ORDER BY rt.emp_no, rt.to_date DESC;

-- to run the new table to test if its solid
Select * From UniqueRetirees;

-- to delete the new table if it was not created properly
Drop table UniqueRetirees;


-- step 16, write query to retrieve the number of employees by most recent job title that were about to retire
--  first step is to count the number of titles from the unique titles table
SELECT COUNT(title)
from UniqueRetirees;

-- then create a retiring titles table to hold the required info
CREATE TABLE Retiring_Titles (
	count BIGINT NOT NULL,
	title varchar NOT NULL
);
-- seems like i ended up not needing to do this step above because my full statement at the bottom created the table as well


-- trying to find a way to add the data i am extracting from the Unique Titles table to put into the new table
SELECT count(ur.emp_no),
				ur.title	
INTO Retiring_Titles
FROM UniqueRetirees as ur
GROUP BY ur.title
ORDER BY count(ur.emp_no) DESC;


-- dropping table to resolve errors
Drop Table Retiring_Titles;
-- viewing table to see if it worked correctly
Select * from dept_info;


-- Deliverable 2 for the challenge;
-- -- retrieving the required columns from the resources
SELECT DISTINCT ON (emp_no) em.emp_no,
em.first_name,
em.last_name,
em.birth_date
dm.from_date,
dm.to_date, 
	ti.titles
INTO mentorship_eligibility
FROM employees, dept_emp, titles AS  em, dm, ti
WHERE em.to_date = ('9999-01-01') AND (em.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- DISTINCT ON to get the first occurence of the employee number for each set of rows defined by the on clause
-- filter to_date to get only current employees and then filter the birth_date to get employees whose birth dates are between January 1965 and Dec 31 1965
ORDER BY em.emp_no;

-- didnt need to end up creating this table because i created it from the statements below that used the decide on script too
-- CREATE TABLE mentorship_eligibility(
-- 	emp_no INT not NULL,
-- 	first_name varchar NOT NULL,
-- 	last_name varchar  NOT NULL,
-- 	birth_date date  NOT NULL,
-- 	from_date date  NOT NULL,
-- 	to_date date  NOT NULL,
-- 	title varchar  NOT NULL
-- 	)
	
SELECT * FROM mentorship_eligibility;	
DROP TABLE mentorship_eligibility;	


-- the winning code right here!! 
SELECT DISTINCT ON (emp_no)	
	em.emp_no,
		em.first_name,
		em.last_name,
		em.birth_date,
	dm.from_date,
	dm.to_date, 
ti.title
INTO mentorship_eligibility
FROM employees AS  em
Right JOIN dept_emp AS dm
ON (em.emp_no = dm.emp_no)
RIGHT JOIN titles as ti
ON (em.emp_no = ti.emp_no)
WHERE ti.to_date = ('9999-01-01') AND (em.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
-- DISTINCT ON to get the first occurence of the employee number for each set of rows defined by the on clause
-- filter to_date to get only current employees and then filter the birth_date to get employees whose birth dates are between January 1965 and Dec 31 1965
ORDER BY em.emp_no;

SELECT * from mentorship_eligibility;







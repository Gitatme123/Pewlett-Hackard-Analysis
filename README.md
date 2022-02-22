# Pewlett-Hackard-Analysis

The purpose of this analysis is to use our newly created SQL query skills to determine the number of employees eligible for retirement by title, as well as to collect data on the number of employees eligible for mentorship with the company. We will then summarize our findings in an ettempt to help our manager be prepared for the silver tsunami as many current employees reach retirement age.

## Overview of Analysis
These key resources we used for this Challenge are included in the Data folder:
1. Employee_Database_challenge.sql file
2. retirement_titles.csv
3. unique_titles.csv
4. retiring_titles.csv
5. mentorship_eligibility.csv

We have also included 2 points on both the number of retiring employees by title and the employees eligible for the mentorship program. We have included answers to the 2 questions as well as 2 additional queries we would run to suppor tthe analysis. All are listed below.

## Results from the Analysis

#### The Number of Retiring Employees by Title
> <img width="292" alt="Screen Shot 2022-02-21 at 7 45 38 PM" src="https://user-images.githubusercontent.com/95602006/155048149-589ec3c4-3c70-41ee-aec4-9e8ea7cbc071.png">

1. According to the chart, the titles that will be the most significantly affected by the number of employees retiring are Senior Engineers and Senior Staff. Without seeing an org chart, I'm not quite sure of the significance of this, but we could imagine that we'd need an intense promotional push to prepare the Engineers and Staff members to assume the Senior level roles the retirees would be leaving behind. 
2. Depending on the skill differences between the Senior level staff/engineers and the regular staff/engineers, this could bode extremly well for the company. Senior level positions are paid more than their underlings, therefore saving the company a ton of money if they retire the senior levels and replace the work done with ordinary level workers.

#### The Employees Eligible for the Mentorship Program
> <img width="606" alt="Screen Shot 2022-02-21 at 8 43 50 PM" src="https://user-images.githubusercontent.com/95602006/155053521-e8ee50da-957e-40e9-a6cd-ae235745492b.png">

* There is a lack of clarity with this request. Are these employees eligible to be a mentor? Or are the eligible to be mentored? I will assume they are eligible to mentor, and therefore be retained as the rest of the retirement age people actually retire.
1. The title for this seems to be the most important attribute to the employees capable of being mentored. Therefore I included a summary of the data by position and added a chart to visualize it.

2. This data makes sense proportionally considering the same proportion of employees by title are eligible for retirement. This bodes well for the company if there is the same proportion of regular level employees to total so that there are similar resources given to reach department. 

## Summary of the Analysis
1. How many roles will need to be filled as the "silver tsunami" begins to make an impact?
- There will be around 72,500 roles that will need to be filled (rounding up from 72,458). I would estimate that 50% will actually retire around that time, with the rest retiring within the next5 years due to whatever reasons people need to work past their "retirement age". 
3. Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
- I would argue no. There are not enough people ready to retire that meet the criteria for the mentorship program. I also will have to provide the disclaimer that I do not have access to data that suports or rejects anything about the mentorship program. An example I would want to understand would be if every single employee should have a mentor, or if only say 40% qualify for a mentor. There are many organizational things here that we would want expert opinions on before we make a judgement.

#### 2 Additional Queries I would run to further this analysis
1. I would run a query to get every single employee and their current position, with their birthdate, hire date and current date we could then determine the current situation that we find ourselves in. The total employees at every position, and then broken down by age and amount of years at the company. That would give us an undersatnding of the overall employee landscape.
2. I would run a query to determine the tenure that the employees eligible for mentorship average, as well as the number of positions each of these employees has held within the company. The reason being that I would want these employees to have worked for the company for at least 5 years and have held a minimum of 2 positions within the company. That would seem to promote the biggest return to the company, helping to promote and climb from within.

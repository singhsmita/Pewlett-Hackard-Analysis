# Pewlett-Hackard Analysis


## Project Overview

### Purpose
Pewlett Hackard is a large company boasting several thousand employees. As baby boomers begin to retire, Pewlett Hackard is looking toward the future in two ways. First, it's offering a retirement package for those who meet certain criteria. Second, it's starting to think about which positions will need to be filled in the near future. By applying my data modeling, engineering, and analysis skills I help Bobby, an upcoming HR-Analyst 
determine the  following:-

 -  Number of retiring employees per title
 -  Identify employees who are eligible to participate in a mentorship program


## Background

The employee data  is only available in the form of six CSV files because Pewlett Hackard has been mainly using Excel and VBA to work with their data. In this analysis I am using solution ERD and database schema, as well as the  six data CSV files.


ERD and Schema

**ERD**  An entity-relationship diagram (ERD) is crucial to creating a good database design. It is used as a high-level logical data model, which is useful in developing a conceptual design for databases.

<img width="453" alt="ERDiagram" src="https://user-images.githubusercontent.com/119648166/216904933-fe66a514-7c9b-45e5-91f6-d27a03828eda.png">
                                                       Fig - ERD Diagram

**Schema** 
Schema is architecture of how data will look.Schemas are important for designig database management systems (DBMS) or relational database management systems (RDBMS).

## Results
### Deliverable 1
#### 1: The Number of Retiring Employees by Title

-   The table includes employee number, first name, last name, title, from-date and to-date.
-   The table holds all the titles of employees who were born between January 1, 1952 and December 31, 1955.
- The query returns 133,776 rows.
-   The list is long and extensive, yet at-a-glance analysis gives us some insights about the query.There are duplicate entries for some employees because they have switched titles over the years.

![image](https://user-images.githubusercontent.com/119648166/216905917-72c896aa-420b-42da-bb55-a737e139ea7d.png)

_Figure 2: Table with the employee’s data that are retirement-ready_

**2. The list of retiring employees without duplicates**

-   The table includes employee number, first and last name, and title columns from the Retirement Titles table.
-   The query returns 72,458 rows.
-   The table excludes employees who have already left the company. 
-   In the table each employee is listed only once, by her or his most recent title.

![image](https://user-images.githubusercontent.com/119648166/216905961-fab2f6aa-1199-4ae3-9516-96d21509f95e.png)

_Figure 3: Table with the employee’s data that are retirement-ready without duplicates_


**3. The Retiring Titles Table**

-   The table includes contains the count of employees for each title  who are retiring.
-   The query returns a cohesive table with 7 rows.
-   From this table we can clearly see how many employees with certain title will retire in the next few years.
The Retiring Titles table is exported in retiring_titles.csv.

![image](https://user-images.githubusercontent.com/119648166/216905999-f6f4d969-6046-4a26-8a33-bd510f77b756.png)

_Figure 4: Table with the employee grouped by title_

### Deliverable 2
**1. The employees eligible for the mentorship program**

-   The table contains employee number, first name, last name, birth date, from date, to date and title.
-   The query returns 1,549 rows.
-   The table displays a list of employees who is eligible for the mentorship program.

![image](https://user-images.githubusercontent.com/119648166/216906035-6b0c4914-5a75-4918-b793-800b3064eda8.png)

_Figure 5: Table with the employee grouped by title_



## Summary

As the company is preparing for the upcoming "silver tsunami" a good planning is essential. 

***Since every department will be affected in some way our data gives more precise numbers what each department can expect and how many roles will need to be filled?***
-   The most number of employees are retiring as  Senior Engineer -- the company will need to work on hiring a lot of senior engineers or promoting employees from the below ranks to fill up the positions.
-   The second most retiring position is Senior Staff -- the company will need to hire more or promote staff.

_**Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett-Hackard employees?**_  

-   Lack of "Technique Leader" mentors who are eligible for its mentorship program may discourage some employees from picking that path or may encourage them to look for a different mentorship program elsewhere.
-   From the "retirement_titles"chart, we can see those employees who was promoted from a "entry-level" position to a "senior-level" and those who were hired as "senior" -- the company can utilize this information to make their mentorship program more effective.


### Additional Queries

I have created some additional queries to analyse the situation further.
To get the number of positions that will be open in next few  years I ran additional query that breaks down how many staff will retire per department. This would give us a clear picture of how many roles will need to be filled.
![image](https://user-images.githubusercontent.com/119648166/216907827-c32b4b26-1936-4268-a33f-a660ffdd1993.png)

![image](https://user-images.githubusercontent.com/119648166/216907951-7e44cda8-8943-4ed1-a41d-2ac004743a0e.png)

![image](https://user-images.githubusercontent.com/119648166/216910049-38e6bf92-3f7b-44f6-bc0a-6cfd53273415.png)

![image](https://user-images.githubusercontent.com/119648166/216909980-291d4391-c29d-4122-abc8-5c64dcd0d670.png)

To mentor for future employees or to train the existing employee  to enable them to pursue senior roles, I ran a query with additional filter, that returns only employees on higher positions.

![image](https://user-images.githubusercontent.com/119648166/216910692-7bca997f-560f-4a47-aeb9-a7ecba0b64cf.png)

![image](https://user-images.githubusercontent.com/119648166/216910821-bdadf62d-a14c-4d3c-a811-daa43a58911f.png)

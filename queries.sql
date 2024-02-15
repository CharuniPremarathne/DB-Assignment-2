--1. Retrieve the list of all open positions along with their associated project details.
select p.project_id, p.projectname , j.jobrole 
from vacancy v , project p , jobrole j 
where p.project_id  = v.project_id and v.jobref_id  = j.jobref_id 

--2. List all candidates who have applied for any open position.
select *
from candidate c 
where appliedstatus = true 

--3. Display the details of all projects that currently have open positions.
select p.project_id , p.projectname 
from project p , vacancy v 
where p.project_id = v.project_id 

--4. Retrieve the list of all candidates who have not yet applied for any open position.
select *
from candidate c 
where appliedstatus = false 

--5. List all projects along with the count of open positions for each project.
select v.project_id ,count(*) 
from vacancy v
group by v.project_id 

--6. Display the details of all candidates who have applied for more than one open position.
select * from candidate
select * from interview i 

select i.candidate_id
from interview i , candidate c 
group by i.candidate_id 
having count(i.candidate_id)>1

--7. List all projects along with the total number of candidates who have applied for open 
--positions in each project.

select * from project p 
select * from vacancy v 
select * from candidatevacancy c 
-----
select p.project_id , count(cv.candidate_id)
from project p , vacancy v , candidatevacancy cv
where v.project_id = p.project_id and v.vacancy_id = cv.vacancy_id and cv.appliedstatus = true
group by p.project_id 

--8. Retrieve the details of all interviews scheduled for a specific project.

select * from project p
select * from interview i 

select i.project_id, count(*) 
from interview i 
group by i.project_id 

--9. Display the count of interviews conducted for each project.

select i.project_id , count(*) 
from interview i 
where i.date <= current_date
group by i.project_id 

--10. List all candidates who have attended interviews for any project along with their 
--interview details.

select c.candidate_id ,c.candidatename, c.profilelink, c.employeeid , c."type" 
from candidate c , interview i 
where c.candidate_id = i.interview_id and i.date <= current_date

--11. Retrieve the average rating given to each candidate across all interviews.


--12. Display the details of all candidates who have received a rating of 5 in any interview.


--13. List all interviewers along with the count of interviews they have conducted.

select * from interviewer i 
select * from conductinterview c

select ci.interviewer_id , count(*) 
from conductinterview ci
group by ci.interviewer_id 

--14. Retrieve the details of all interviews conducted on a specific date.

select *
from interview i 
where i.date = '2023-03-31'

--15. Display the average rating given to candidates for interviews conducted by each interviewer.


--16. List all candidates who have attended interviews for more than one project.
select 
from 

--17. Retrieve the details of all interviews where the candidate was rejected.



--18. Display the details of all candidates who have received the highest rating in any interview.


--19. List all candidates who have received an average rating above a certain threshold.


--20. Retrieve the details of all interviews conducted for a specific candidate.

select * from interview i 

select *
from interview i 
where i.candidate_id = 1

--21. Write a query to retrieve all candidates who got a rating of 4 and passed the interview 
--after being interviewed by a particular interviewer (say “Nuwan”) within last 3 months.


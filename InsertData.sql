insert into project (project_id, projectname)
values
(1,'project A'),
(2,'project B'),
(3,'project C'),
(4,'project D'),
(5,'project E')

insert into jobrole (jobref_id, jobrole)
values
(1, 'Intern - Java'),
(2, 'Intern - QA'),
(3, 'Intern - React'),
(4, 'Associate Software Engineer - UI'),
(5, 'Software Engineer - UI')

insert into vacancy (jobref_id, project_id)
values
(1,1),
(2,1),
(3,1),
(1,2),
(5,4)

insert into interview (date, time, vacancy_id)
values
('2023-03-31', '08:00', 1),
('2023-02-28', '08:00', 2),
('2023-03-31', '11:00', 3),
('2023-03-15', '08:00', 4),
('2023-03-18', '13:00', 5),

update interview 
set date  = '2024-03-18'
where vacancy_id = 5

insert into interviewer (employee_id, interviewername)
values
(813136, row('Ann', 'Perera')),
(812596, row('Sam', 'Silva')),
(811235, row('John', 'Perera')),
(741258, row('Peter', 'Smith')),
(813654, row('James', 'Swith'))

insert into conductinterview (interview_id, interviewer_id)
values
(1, 1),
(2, 1),
(1,	2),
(2, 2)

insert into candidate (candidatename, profilelink, type, employeeid, appliedstatus)
values
(row('candidate1F', 'candidate1L'), .'link 1', 'existing employee', 832165, true),
(row('candidate2F', 'candidate2L'), 'link 2', 'new candidate', null, false),
(row('candidate3F', 'candidate3L'), 'link 3', 'existing employee', 832165, false),
(row('candidate4F', 'candidate4L'), 'link 4', 'new candidate', null, true),
(row('candidate5F', 'candidate5L'), 'link 5', 'existing employee', 832165, true)

insert into candidatevacancy (candidate_id, vacancy_id, appliedstatus)
values
(1,1, true),
(2, null, false),
(3, null, false),
(4, 1, true),
(5, 2, true)

insert into feedback(interview_id, interviewer_id, decisiononhire, overallrating, feedbackdate,educational_background, relevant_experience, architecture_systems_design, software_development, conceptual_understanding, analytical_problem_solving_skills, teamwork, leadership, growth_potential_achievements, communication_skills)
values
(1,1,true, 40,'2023-03-31', row(4, null, null),row(4, null, null),row(4, null, null),row(4, null, null),row(4, null, null),row(4, null, null),row(4, null, null),row(4, null, null),row(4, null, null),row(4, null, null)),
(2, 1, false, 10,'2023-02-28', row(1, null, null),row(1, null, null),row(1, null, null),row(1, null, null),row(1, null, null),row(1, null, null),row(1, null, null),row(1, null, null),row(1, null, null),row(1, null, null)),
(1,	2, true, 30,'2023-03-31', row(3, null, null),row(3, null, null),row(3, null, null),row(3, null, null),row(3, null, null),row(3, null, null),row(3, null, null),row(3, null, null),row(3, null, null),row(3, null, null)),
(2, 2, true, 40,'2023-02-28', row(4, null, null),row(4, null, null),row(4, null, null),row(4, null, null),row(4, null, null),row(4, null, null),row(4, null, null),row(4, null, null),row(4, null, null),row(4, null, null))






---types

create type nameType as(
	firstName varchar(100),
	lastName varchar(100)
)

create type candidateType as enum ('existing employee', 'new candidate')

create type scoreType as enum('0', '1', '2', '3', '4', '5')

create type feedbackType as (
	score int,
	expectedCompetencyLevel int,
	comment text
)

drop type feedbackType



---tables

create table project(
	project_ID int primary key,
	projectName varchar(50) not null
)

create table jobrole(
	jobRef_id SERIAL primary key,
	jobrole varchar(500) not null
)

create table vacancy(
	vacancy_id SERIAL primary key,
	jobRef_id int not null,
	project_id int not null,
	
	constraint fk_vacancy_job foreign key(jobRef_id) references jobrole(jobRef_id),
	constraint fk_vacancy_project foreign key(project_id) references project(project_id),
)

create table interview (
	interview_id SERIAL primary key,
	date Date not null,
	time Time not null,
	vacancy_id int not null,
	candidate_id int not null,
	
	constraint fk_candidate_interview foreign key (candidate_id) references candidate(candidate_id),
	constraint fk_candidate_vacancy foreign key (vacancy_id) references vacancy(vacancy_id)
)

alter table interview 
add column project_id int references project(project_id)

create table interviewer (
	interviewer_id SERIAL primary key,
	employee_id int not null,
	interviewername nameType
)



create table conductinterview (
	interview_id int not null,
	interviewer_id int not null,
	
	constraint pk_conductinterview primary key (interview_id,interviewer_id)
)


create table Feedback(
	interview_ID int not null,
	interviewer_ID int not null,
	feedback_id SERIAL,
	decisionOnHire bool not null,
	overallRating int not null,
	feedBackDate Date not null,
	Educational_Background feedbackType,
	Relevant_Experience feedbackType,
	Architecture_Systems_Design feedbackType,
 	Software_Development feedbackType,
 	Conceptual_understanding feedbackType,
 	Analytical_Problem_Solving_Skills feedbackType,
 	Teamwork feedbackType,
 	Leadership feedbackType,
  	Growth_Potential_Achievements feedbackType,
 	Communication_Skills feedbackType,
	
	constraint pk_feedback primary key(interview_ID, interviewer_ID, feedback_id),
	
	constraint fk_feedback_interview foreign key(interview_ID) references interview (interview_ID),
	constraint fk_feedback_interviewer foreign key(interviewer_ID) references interviewer (interviewer_ID)
)

drop table feedback

create table Feedback (
    interview_ID int not null,
    interviewer_ID int not null,
    feedback_id SERIAL primary key,
    decisionOnHire bool not null,
    overallRating int not null,
    feedBackDate Date not null,
    details JSONB not null,
    
    constraint fk_feedback_interview foreign key(interview_ID) references interview (interview_ID),
    constraint fk_feedback_interviewer foreign key(interviewer_ID) references interviewer (interviewer_ID)
);


create table candidate(
	candidate_ID SERIAL primary key,
	candidateName nameType,
	profileLink varchar(500),
	employeeID int,
	type candidateType,
	appliedStatus bool not null,
)

create table candidateVacancy(
	candidate_id int not null,
	vacancy_id int not null,
	appliedStatus bool not null,
	
	constraint pk_candidateVacancy primary key(candidate_id, vacancy_id),
	constraint fk_candidate_candidateVac foreign key(candidate_id) references candidate(candidate_id),
	constraint fk_vacancy_candidateVac foreign key(vacancy_id) references vacancy(vacancy_id)
)

alter table candidateVacancy 
add column vacancy_id int

alter table interview 
add constraint fk_candidate_interview foreign key(candidate_ID) references candidate(candidate_ID)


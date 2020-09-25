
select *
from user_new;
select *
from role;
ALTER TABLE ROLE 
RENAME COLUMN ID TO ROLE_ID;


SELECT U.ID, U.EMAILID, U.NAME, U.PASSWORD, U.PHONENUMBER, U.PROFILE_ID, R.ROLE_ID, U.USERNAME, R.NAME
FROM user_new U
    INNER JOIN ROLE R
    ON U.ROLE_ID = R.ROLE_ID
ORDER BY R.name,U.name
;


SELECT U.EMAILID, U.NAME, U.PASSWORD, U.PHONENUMBER, U.PROFILE_ID, U.ROLE_ID, U.USERNAME
FROM user_new U LEFT JOIN Role R
    ON u.role_id =
    R.role_id
ORDER BY R.name,U.name ASC;


SELECT U.NAME
FROM user_new U LEFT JOIN Role R ON U.ROLE_ID = R.ROLE_ID;

select *
from profile;
ALTER TABLE profile 
RENAME COLUMN ID TO PROFILE_ID;
ALTER TABLE degree 
RENAME COLUMN ID TO DEGREE_ID;

ALTER TABLE department 
RENAME COLUMN ID TO Department_ID;
select *
from profile;
select *
from experience;
Update user_new set name='ProGrad' where ID=10;
Update experience set currentvalue=3 where ID=1;


select user_new.phonenumber, user_new.emailid, profile.batch, department.name, profile.designation, experience.company_name
from user_new
    inner join profile on user_new.profile_id=profile.Profile_ID
    inner join degree on  profile.degree_id=degree.degree_id
    inner join department on  degree.department_id = department.department_id
    inner join experience on profile.Profile_ID = experience.profile_id
where
    user_new.name like '%ProGrad%' and experience.currentValue=3;

select *
from user_new;
select *
from skill;
ALTER table skill
rename column ID to SKILL_ID
select *
from role;
select *
from profile;

select *
from profile_skills
Update role set name='Alumini' where Role_id=7;


select user_new.name, skill.name
from user_new
    left join role on user_new.role_id= role.role_id
    left join profile on user_new.profile_id = profile.profile_id
    left join profile_skills on profile.profile_id = profile_skills.profile_id
    left join skill on profile_skills.skill_id = skill.skill_id
where role.name like '%Alumini%'
order by  user_new.name,skill.name

select *
from role
select *
from experience
select *
from profile
select *
from user_new
Update experience set Profile_ID=7 where ID=2;


select user_new.name, experience.company_name
from user_new
    left join role on user_new.role_id= role.role_id
    left join profile on user_new.profile_id = profile.profile_id
    left join experience on profile.Profile_ID = experience.profile_id
where role.name like '%Alumini%'
order by  user_new.name, experience.COMPANY_NAME ASC;

Update profile set batch=2008 where PROFILE_ID=7;


select user_new.name, experience.company_name
from user_new
    left join role on user_new.role_id= role.role_id
    left join profile on user_new.profile_id = profile.profile_id
    left join experience on profile.Profile_ID = experience.profile_id
where role.name like '%Alumini%' and experience.currentValue=1 and profile.batch='2008'
order by  user_new.name;

select *
from user_new
select *
from profile

select user_new.name, user_new.emailid, user_new.phonenumber, profile.address
from user_new
    inner join role on user_new.role_id= role.role_id
    left join profile on user_new.profile_id = profile.profile_id
where role.name='Alumni' and user_new.profile_id !=null;


select user_new.name, user_new.emailid, user_new.phonenumber, profile.address
from user_new
    left join role on user_new.role_id= role.role_id
    left join profile on user_new.profile_id = profile.profile_id
    left join degree on degree.degree_id = profile.degree_id
where role.name='Alumni' and degree.name='BSC_CT'
order by  user_new.name  asc

select user_new.name, user_new.emailid, user_new.phonenumber, profile.address
from user_new
    left join role on user_new.role_id= role.role_id
    left join profile on user_new.profile_id = profile.profile_id
    left join degree on degree.degree_id = profile.degree_id
    left join department on degree.department_id = department.department_id
where role.name='Alumni' and department.name='CSE'
order by  user_new.name  asc


select *
from higher_degree
ALTER table higher_degree
 RENAME column ID to DEGREE_ID
select user_new.name, higher_degree.university_name
from user_new
    left join role on user_new.role_id= role.role_id
    left join profile on user_new.profile_id = profile.profile_id
    left join higher_degree on higher_degree.degree_id = profile.degree_id
    left join department on higher_degree.degree_id = department.department_id
where role.name='Alumni' and higher_degree.degree_name!=null
order by  user_new.name,higher_degree.university_name asc;

select *
from higher_degree
select user_new.name, user_new.emailid, user_new.phonenumber, profile.address
from user_new
    left join role on user_new.role_id= role.role_id
    left join profile on user_new.profile_id = profile.profile_id
    left join degree on degree.degree_id = profile.degree_id
    left join department on degree.department_id = department.department_id
    left join higher_degree on higher_degree.degree_id = profile.degree_id
where role.name='Alumni' and higher_degree.university_name='Texas University'
order by  user_new.name asc;



select user_new.name, profile.batch
from user_new
    left join role on user_new.role_id= role.role_id
    left join profile on user_new.profile_id = profile.profile_id
where role.name='Alumni' and profile.gender='female'
order by  user_new.name asc;



select user_new.name, profile.batch, degree.name
from user_new
    left join role on user_new.role_id= role.role_id
    left join profile on user_new.profile_id = profile.profile_id
    left join degree on degree.degree_id = profile.degree_id
where role.name='Alumni' and profile.gender='female'
order by  user_new.name asc;




select user_new.name, profile.batch, degree.name, department.name
from user_new
    left join role on user_new.role_id= role.role_id
    left join profile on user_new.profile_id = profile.profile_id
    left join degree on degree.degree_id = profile.degree_id
    left join department on degree.degree_id = department.department_id
where role.name='Alumni' and profile.gender='female'
order by  user_new.name asc;



select degree.name, department.name
from degree
    left join department on degree.degree_id = department.department_id
order by degree.name;


select user_new.name, profile.designation
from user_new
    left join role on user_new.role_id= role.role_id
    left join profile on user_new.profile_id = profile.profile_id
where role.name='Alumni' and profile.gender='male'
order by  user_new.name asc;


select user_new.name, profile.designation
from user_new
    left join role on user_new.role_id= role.role_id
    left join profile on user_new.profile_id = profile.profile_id
    left join experience on profile.Profile_ID = experience.profile_id
where role.name='Alumni' and experience.currentValue=1 and experience.company_name='TCS'
order by  user_new.name asc;

select *
from querytable
select *
from user_new

select user_new.name, querytable.content
from user_new
    left join querytable on user_new.ID= querytable.USER_ID
order by  user_new.name asc
;


select user_new.name, querytable.content
from user_new
    FULL OUTER join querytable on user_new.ID= querytable.USER_ID
where querytable.parent_id IS NOT NULL
order by  user_new.name  asc;



select user_new.name, post.content
from user_new
    left join post on user_new.ID= post.USER_ID
order by  user_new.name  asc;


select *
from post_type
update post_type set name='Technology' where id=3
select user_new.name, post.content
from user_new
    left join post on user_new.ID= post.USER_ID
    left join post_type on post.ID=post_type.id
where post_type.name='Technology'
order by  user_new.name,post.dateof asc;



select user_new.name, post.content
from user_new
    left join post on user_new.ID= post.USER_ID
where  post.dateof='2013'
order by user_new.name, post.dateof, post.content;


select user_new.name, department.name
from user_new
    left join role on user_new.role_id= role.role_id
    left join profile on user_new.profile_id = profile.profile_id
    left join degree on degree.degree_id = profile.degree_id
    left join department on degree.degree_id = department.department_id
    left join profile_skills on profile.profile_id = profile_skills.profile_id
    left join skill on profile_skills.skill_id = skill.skill_id
where skill.name='Programming'
order by user_new.name;


select *
from user_new
select user_new.name, event.name
from user_new
    left join role on user_new.role_id= role.role_id
    INNER JOIN EVENT ON EVENT.organiser_id  =  user_new.ID
    INNER JOIN ROLE ON  user_new.ROLE_ID = ROLE.role_id
where role.name='Alumni'
order by user_new.name;


select user_new.name, event.name
from user_new
    left join role on user_new.role_id= role.role_id
    INNER JOIN EVENT ON EVENT.organiser_id  =  user_new.ID
    INNER JOIN ROLE ON  user_new.ROLE_ID = ROLE.role_id
where role.name='Alumni'
order by user_new.name,event.dateof;

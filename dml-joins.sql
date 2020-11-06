select * from role;
select * from skill1;
select * from post_type;
select * from department;
select * from degree;
select * from profile;
select * from higher_degree;
select * from experience;
select * from project;
select * from user_new;
select * from querytable;
select * from event1;
select * from post;
select * from profile_skills;

-- 1]

SELECT role.name, user_new.name FROM user_new
FULL OUTER JOIN role ON user_new.role_id = role.id 
ORDER BY user_new.name;

-- 2]
SELECT role.name, user_new.name FROM user_new 
LEFT JOIN role ON user_new.role_id = role.id
ORDER BY user_new.name;

-- 3]
SELECT user_new.name FROM user_new 
INNER JOIN role ON user_new.role_id = role.id;

-- 4]
SELECT user_new.phonenumber, user_new.emailid, profile.batch, department.name, profile.designation, experience.company_name FROM user_new
INNER JOIN profile ON user_new.profile_id = profile.id
INNER JOIN degree ON profile.degree_id = degree.id
INNER JOIN department ON degree.department_id = department.id
INNER JOIN experience ON experience.profile_id = profile.id
WHERE user_new.username = 'Prograd' AND experience.currentvalue = 3;

-- 5]
SELECT user_new.name, skill.name FROM user_new 
INNER JOIN role ON user_new.role_id = role.id
INNER JOIN profile ON user_new.profile_id = profile.id
INNER JOIN profile_skills ON profile_skills.profile_id = profile.id
INNER JOIN skill1 ON profile_skills.skill_is = skill1.id
WHERE role.name = 'Alumini';

-- 6]
SELECT user_new.name, experience.company_name FROM user_new
INNER JOIN role ON user_new.role_id = role.id
INNER JOIN profile ON user_new.profile_id = profile.id
INNER JOIN experience ON profile.id = experience.profile_id
WHERE role.name = 'Alumini';
ORDER BY user_new.name,experience.company_name;

-- 7]
SELECT user_new.name, experience.company_name FROM user_new
INNER JOIN role ON user_new.role_id = role.id
INNER JOIN profile ON user_new.profile_id = profile.id
INNER JOIN experience ON profile.id = experience.profile_id
WHERE role.name = 'Alumini'
ORDER BY user_new.name,experience.company_name;

-- 8]
SELECT user_new.name, experience.company_name FROM user_new
INNER JOIN role ON user_new.role_id = role.id
INNER JOIN profile ON user_new.profile_id = profile.id
INNER JOIN experience ON profile.id = experience.profile_id
WHERE role.name = 'Alumini' AND experience.currentValue=1
ORDER BY user_new.name;

-- 9]
SELECT user_new.name, experience.company_name FROM user_new
INNER JOIN role ON user_new.role_id = role.id
INNER JOIN profile ON user_new.profile_id = profile.id
INNER JOIN experience ON profile.id = experience.profile_id 
WHERE role.name = 'Alumini' AND experience.currentValue=1 AND profile.batch='2008'
ORDER BY user_new.name;

-- 10]
SELECT user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new
INNER JOIN role ON user_new.role_id = role.id
INNER JOIN profile ON user_new.profile_id = profile.id
WHERE role.name = 'Alumini' AND user_new.profile_id != null
ORDER BY user_new.name;

-- 11]
SELECT user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new
INNER JOIN role ON user_new.role_id = role.id
INNER JOIN profile ON user_new.profile_id = profile.id
WHERE role.name = 'Alumini' AND profile.batch='2008'
ORDER BY user_new.name;

-- 12]
SELECT user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new
INNER JOIN role ON user_new.role_id = role.id
INNER JOIN profile ON user_new.profile_id = profile.id
INNER JOIN degree ON profile.degree_id = degree.id
WHERE role.name = 'Alumini' AND degree.name='BSC_CT'
ORDER BY user_new.name;

-- 13]
SELECT user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new
INNER JOIN role ON user_new.role_id = role.id
INNER JOIN profile ON user_new.profile_id = profile.id
INNER JOIN degree ON profile.degree_id = degree.id
INNER JOIN department ON degree.department_id = department.id
WHERE role.name = 'Alumini' AND department.name='CSE'
ORDER BY user_new.name;

-- 14]
SELECT user_new.name, higher_degree.university_name from user_new
INNER JOIN role ON user_new.role_id = role.id
INNER JOIN profile ON user_new.profile_id = profile.id
INNER JOIN degree ON profile.degree_id = degree.id
INNER JOIN higher_degree ON profile.id = higher_degree.profile_id
INNER JOIN department ON degree.department_id = department.id
WHERE role.name = 'Alumini' AND higher_degree.degree_name != null
ORDER BY user_new.name,higher_degree.university_name;

-- 15]
SELECT user_new.name, higher_degree.university_name from user_new
INNER JOIN role ON user_new.role_id = role.id
INNER JOIN profile ON user_new.profile_id = profile.id
INNER JOIN degree ON profile.degree_id = degree.id
INNER JOIN higher_degree ON profile.id = higher_degree.profile_id
INNER JOIN department ON degree.department_id = department.id
WHERE role.name = 'Alumini' AND higher_degree.degree_name != null
ORDER BY user_new.name,higher_degree.university_name;

-- 16]
SELECT user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new
INNER JOIN role ON user_new.role_id = role.id
INNER JOIN profile ON user_new.profile_id = profile.id
INNER JOIN degree ON profile.degree_id = degree.id
INNER JOIN higher_degree ON profile.id = higher_degree.profile_id
INNER JOIN department ON degree.department_id = department.id
WHERE role.name = 'Alumini' AND higher_degree.university_name='Texas University'
ORDER BY user_new.name;

-- 17]
SELECT user_new.name, profile.batch from user_new
INNER JOIN role ON user_new.role_id = role.id
INNER JOIN profile ON user_new.profile_id = profile.id
WHERE role.name = 'Alumini' AND profile.gender='female'
ORDER BY user_new.name;

-- 18]
SELECT user_new.name, profile.batch, degree.name from user_new
INNER JOIN role ON user_new.role_id = role.id
INNER JOIN profile ON user_new.profile_id = profile.id
INNER JOIN degree ON profile.degree_id = degree.id
WHERE role.name = 'Alumini' AND profile.gender='female'
ORDER BY user_new.name;

-- 19]
SELECT user_new.name, profile.batch, degree.name, department.name from user_new
INNER JOIN role ON user_new.role_id = role.id
INNER JOIN profile ON user_new.profile_id = profile.id
INNER JOIN degree ON profile.degree_id = degree.id
INNER JOIN department ON degree.department_id = department.id
WHERE role.name = 'Alumini' AND profile.gender='female'
ORDER BY user_new.name;

-- 19]
SELECT degree.name, department.name from degree 
INNER JOIN department ON degree.department_id = department.id
ORDER BY degree.name;

-- 20]
SELECT user_new.name, profile.designation from user_new
INNER JOIN role ON user_new.role_id = role.id
INNER JOIN profile ON user_new.profile_id = profile.id
WHERE role.name = 'Alumini' AND profile.gender='male'
ORDER BY user_new.name;

-- 21]
SELECT user_new.name, profile.designation from user_new
INNER JOIN role ON user_new.role_id = role.id
INNER JOIN profile ON user_new.profile_id = profile.id
INNER JOIN experience ON profile.id = experience.profile_id 
WHERE role.name = 'Alumini' AND experience.currentValue=1 AND experience.company_name='TCS'
ORDER BY user_new.name;

-- 22]
SELECT user_new.name, querytable.content from user_new
INNER JOIN querytable ON user_new.id = querytable.user_id
ORDER BY user_new.name;

-- 23]
SELECT user_new.name, querytable.content from user_new
INNER JOIN querytable ON user_new.id = querytable.user_id
WHERE querytable.parent_id != null
ORDER BY user_new.name;

-- 24]
SELECT user_new.name, post.content from user_new
INNER JOIN post ON user_new.id = post.user_id
ORDER BY user_new.name;

-- 25]
SELECT user_new.name, post.content from user_new
INNER JOIN post ON user_new.id = post.user_id
INNER JOIN post_type ON post.type_id = post_type.id
WHERE post_type.name='Technology'
ORDER BY user_new.name,post.dateof;

-- 26]
SELECT user_new.name, post.content from user_new
INNER JOIN post ON user_new.id = post.user_id
WHERE  post.dateof='2013'
ORDER BY user_new.name, post.dateof, post.content;

-- 27]
SELECT user_new.name, department.name from user_new
INNER JOIN role ON user_new.role_id = role.id
INNER JOIN profile ON user_new.profile_id = profile.id
INNER JOIN degree ON profile.degree_id = degree.id
INNER JOIN department ON degree.department_id = department.id
INNER JOIN profile_skills ON profile_skills.profile_id = profile.id
INNER JOIN skill1 ON profile_skills.skill_is = skill1.id
WHERE skill.name='Programming'
ORDER BY user_new.name;

-- 28]
SELECT user_new.name, event1.name from user_new
INNER JOIN role ON user_new.role_id = role.id
INNER JOIN event1 ON user_new.id = event1.id
WHERE role.name='Alumni'
ORDER BY user_new.name,event1.dateof DESC;

-- 29]
SELECT user_new.name, event1.name from user_new
INNER JOIN role ON user_new.role_id = role.id
INNER JOIN event1 ON user_new.id = event1.id
WHERE role.name='Alumni'
ORDER BY user_new.name,event1.dateof;


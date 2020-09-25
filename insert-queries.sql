insert into role
    (id,name)
values(1, 'designer');
insert into role
    (id,name)
values(2, 'guide');
insert into role
    (id,name)
values(3, 'fashion');
insert into role
    (id,name)
values(4, 'model');
insert into role
    (id,name)
values(5, 'teacher');
insert into role
    (id,name)
values(6, 'mentor');
insert into role
    (id,name)
values(7, 'programmer');
insert into role
    (id,name)
values(8, 'manager');
insert into role
    (id,name)
values(9, 'teamlead');
insert into role
    (id,name)
values(10, 'lead');

select *
from role;

insert into skill
    (id,description,name)
values(1, 'self learning', 'learn');
insert into skill
    (id,description,name)
values(2, 'technical skills', 'coding');
insert into skill
    (id,description,name)
values(3, 'skills', 'skilll');
insert into skill
    (id,description,name)
values(4, 'learning skills', 'leaning');
insert into skill
    (id,description,name)
values(5, 'skills1', 'skill1');
insert into skill
    (id,description,name)
values(6, 'skills2', 'skill2');
insert into skill
    (id,description,name)
values(7, 'skills3', 'skill3');
insert into skill
    (id,description,name)
values(8, 'skills4', 'skill4');
insert into skill
    (id,description,name)
values(9, 'skills5', 'skill5');
insert into skill
    (id,description,name)
values(10, 'skills6', 'skill6');
select *
from skill;

insert into post_type
    (id,name)
values(1, 'business');
insert into post_type
    (id,name)
values(2, 'business');
insert into post_type
    (id,name)
values(3, 'business1');
insert into post_type
    (id,name)
values(4, 'business2');
insert into post_type
    (id,name)
values(5, 'business3');
insert into post_type
    (id,name)
values(6, 'business4');
insert into post_type
    (id,name)
values(7, 'business5');
insert into post_type
    (id,name)
values(8, 'business6');
insert into post_type
    (id,name)
values(9, 'business7');
insert into post_type
    (id,name)
values(10, 'business8');
select *
from post_type;


insert into department
    (id,name)
values(1, 'bpo');
insert into department
    (id,name)
values(2, 'IT');
insert into department
    (id,name)
values(3, 'CSE');
insert into department
    (id,name)
values(4, 'EEE');
insert into department
    (id,name)
values(5, 'ECE');
insert into department
    (id,name)
values(6, 'MECH');
insert into department
    (id,name)
values(7, 'CIVIL');
insert into department
    (id,name)
values(8, 'COMMERCE');
insert into department
    (id,name)
values(9, 'COMPUTER');
insert into department
    (id,name)
values(10, 'MUSIC');

select *
from department;

insert into degree
    (id,department_id,name)
values(1, 1, 'EEE');
insert into degree
    (id,department_id,name)
values(2, 2, 'ECE');
insert into degree
    (id,department_id,name)
values(3, 3, 'ECE');
insert into degree
    (id,department_id,name)
values(4, 4, 'ECE');
insert into degree
    (id,department_id,name)
values(5, 5, 'ECE');
insert into degree
    (id,department_id,name)
values(6, 6, 'ECE');
insert into degree
    (id,department_id,name)
values(7, 7, 'ECE');
insert into degree
    (id,department_id,name)
values(8, 8, 'ECE');
insert into degree
    (id,department_id,name)
values(9, 9, 'ECE');
insert into degree
    (id,department_id,name)
values(10, 10, 'ECE');

select *
from degree;


insert into profile
    (id,address,batch,degree_id,designation,gender)
values(1, 'London', 'En', 1, 'HR', 'Male');
insert into profile
    (id,address,batch,degree_id,designation,gender)
values(2, 'Chennai', 'For', 2, 'Manager', 'Female');
insert into profile
    (id,address,batch,degree_id,designation,gender)
values(3, 'Dubai', 'Du', 3, 'Lead', 'Female');
insert into profile
    (id,address,batch,degree_id,designation,gender)
values(4, 'warangal', 'wa', 4, 'Partner', 'Female');
insert into profile
    (id,address,batch,degree_id,designation,gender)
values(5, 'Mumbai', 'Mu', 5, 'TEamLead', 'Male');
insert into profile
    (id,address,batch,degree_id,designation,gender)
values(6, 'Punjab', 'Pu', 6, 'Guide', 'Female');
insert into profile
    (id,address,batch,degree_id,designation,gender)
values(7, 'Paris', 'Pa', 7, 'Mentor', 'Male');
insert into profile
    (id,address,batch,degree_id,designation,gender)
values(8, 'Canada', 'Ca', 8, 'Admin', 'Female');
insert into profile
    (id,address,batch,degree_id,designation,gender)
values(9, 'Australia', 'AUs', 9, 'Accounts', 'Male');
insert into profile
    (id,address,batch,degree_id,designation,gender)
values(10, 'US', 'US', 10, 'Teacher', 'Female');

select *
from profile;

insert into higher_degree
    (id,degree_name,university_name,profile_id)
values(1, 'BE', 'MIT', 1);
insert into higher_degree
    (id,degree_name,university_name,profile_id)
values(2, 'BE', 'STANFORD', 2);
insert into higher_degree
    (id,degree_name,university_name,profile_id)
values(3, 'BE', 'KU', 3);
insert into higher_degree
    (id,degree_name,university_name,profile_id)
values(4, 'BE', 'VJIT', 4);
insert into higher_degree
    (id,degree_name,university_name,profile_id)
values(5, 'BE', 'IIT', 5);
insert into higher_degree
    (id,degree_name,university_name,profile_id)
values(6, 'BE', 'BITS', 6);
insert into higher_degree
    (id,degree_name,university_name,profile_id)
values(7, 'BE', 'MANIPAL', 7);
insert into higher_degree
    (id,degree_name,university_name,profile_id)
values(8, 'BE', 'STAN', 8);
insert into higher_degree
    (id,degree_name,university_name,profile_id)
values(9, 'BE', 'OSMANIA', 9);
insert into higher_degree
    (id,degree_name,university_name,profile_id)
values(10, 'BE', 'TEST', 10);



insert into experience
    (id,company_name,currentvalue,enddate,startdate,profile_id)
values(2, 'CTS', 1, TO_DATE('2008/11/11','YYYY/MM/DD'), TO_DATE('2019/11/11','YYYY/MM/DD'), 2);
insert into experience
    (id,company_name,currentvalue,enddate,startdate,profile_id)
values(3, 'IBM', 1, TO_DATE('2008/1/16','YYYY/MM/DD'), TO_DATE('2019/11/11','YYYY/MM/DD'), 2);
insert into experience
    (id,company_name,currentvalue,enddate,startdate,profile_id)
values(4, 'SOFT', 1, TO_DATE('2008/10/17','YYYY/MM/DD'), TO_DATE('2019/11/11','YYYY/MM/DD'), 2);
insert into experience
    (id,company_name,currentvalue,enddate,startdate,profile_id)
values(5, 'SOLUTIONS', 1, TO_DATE('2008/6/17','YYYY/MM/DD'), TO_DATE('2019/11/11','YYYY/MM/DD'), 2);
insert into experience
    (id,company_name,currentvalue,enddate,startdate,profile_id)
values(6, 'PERSISTENT', 1, TO_DATE('2008/5/18','YYYY/MM/DD'), TO_DATE('2019/11/11','YYYY/MM/DD'), 2);
insert into experience
    (id,company_name,currentvalue,enddate,startdate,profile_id)
values(7, 'RAKBANK', 1, TO_DATE('2008/4/13','YYYY/MM/DD'), TO_DATE('2019/11/11','YYYY/MM/DD'), 2);
insert into experience
    (id,company_name,currentvalue,enddate,startdate,profile_id)
values(8, 'TCS', 1, TO_DATE('2008/2/12','YYYY/MM/DD'), TO_DATE('2019/11/11','YYYY/MM/DD'), 2);
insert into experience
    (id,company_name,currentvalue,enddate,startdate,profile_id)
values(9, 'INFOSYS', 1, TO_DATE('2008/3/15','YYYY/MM/DD'), TO_DATE('2019/11/11','YYYY/MM/DD'), 2);
insert into experience
    (id,company_name,currentvalue,enddate,startdate,profile_id)
values(10, 'INFOTECH', 1, TO_DATE('2008/11/20','YYYY/MM/DD'), TO_DATE('2019/11/11','YYYY/MM/DD'), 2);
insert into experience
    (id,company_name,currentvalue,enddate,startdate,profile_id)
values(1, 'PART', 1, TO_DATE('2008/11/19','YYYY/MM/DD'), TO_DATE('2019/11/11','YYYY/MM/DD'), 2);


insert into project
    (id,name,number_of_members,profile_id,short_description)
values(1, 'Alumini management', 10, 1, 'for school and college');
insert into project
    (id,name,number_of_members,profile_id,short_description)
values(2, 'Library management', 11, 2, 'for school and college');
insert into project
    (id,name,number_of_members,profile_id,short_description)
values(3, 'Silver management', 9, 5, 'for school and college');
insert into project
    (id,name,number_of_members,profile_id,short_description)
values(4, 'Bronze management', 6, 7, 'for school and college');
insert into project
    (id,name,number_of_members,profile_id,short_description)
values(5, 'Copper management', 5, 8, 'for school and college');
insert into project
    (id,name,number_of_members,profile_id,short_description)
values(6, 'Gold management', 3, 9, 'for school and college');
insert into project
    (id,name,number_of_members,profile_id,short_description)
values(7, 'Lib management', 16, 3, 'for school and college');
insert into project
    (id,name,number_of_members,profile_id,short_description)
values(8, 'Lib1 management', 5, 1, 'for school and college');
insert into project
    (id,name,number_of_members,profile_id,short_description)
values(9, 'Lib2 management', 1, 3, 'for school and college');
insert into project
    (id,name,number_of_members,profile_id,short_description)
values(10, 'Lib3 management', 11, 7, 'for school and college');





insert into user_new
    (id,emailid,name,password,phonenumber,profile_id,role_id,username)
values(1, 'abcd@efgh.com', 'abcd', 'efgh', 9884642005, 1, 1, 'abcdefgh');
insert into user_new
    (id,emailid,name,password,phonenumber,profile_id,role_id,username)
values(2, 'ijkl@mnop.com', 'ijkl', 'mnop', 9845621745, 2, 2, 'ijklmnop');
insert into user_new
    (id,emailid,name,password,phonenumber,profile_id,role_id,username)
values(3, 'tes@mnop.com', 'tes', 'mnop', 9845623745, 3, 3, 'testes');
insert into user_new
    (id,emailid,name,password,phonenumber,profile_id,role_id,username)
values(4, 'ghj@mnop.com', 'ghj', 'mnop', 9842321745, 4, 4, 'ghjmop');
insert into user_new
    (id,emailid,name,password,phonenumber,profile_id,role_id,username)
values(5, 'uio@mnop.com', 'uio', 'mnop', 9842177645, 5, 5, 'uiomnop');
insert into user_new
    (id,emailid,name,password,phonenumber,profile_id,role_id,username)
values(6, 'plk@mnop.com', 'plk', 'mnop', 9235621745, 6, 6, 'plkmnop');
insert into user_new
    (id,emailid,name,password,phonenumber,profile_id,role_id,username)
values(7, 'qwerdfg@mnop.com', 'ijkl', 'qwerdfg', 9844521745, 7, 7, 'qwerdijk');
insert into user_new
    (id,emailid,name,password,phonenumber,profile_id,role_id,username)
values(8, 'fgh@mnop.com', 'ijkl', 'fgh', 9845621767, 8, 8, 'fghfgh');
insert into user_new
    (id,emailid,name,password,phonenumber,profile_id,role_id,username)
values(9, 'rty@mnop.com', 'ijkl', 'rty', 9845621778, 9, 9, 'rtyrty');
insert into user_new
    (id,emailid,name,password,phonenumber,profile_id,role_id,username)
values(10, 'sd@mnop.com', 'ijkl', 'sd', 9845621790, 2, 10, 'sdsd');




insert into querytable
    (id,content,dateof,parent_id,user_id)
values(1, 'Alumini management', TO_DATE('2008/11/11','YYYY/MM/DD'), 1, 1);
insert into querytable
    (id,content,dateof,parent_id,user_id)
values(2, 'Library management', To_DATE('2008/11/19','YYYY/MM/DD'), 2, 2);
insert into querytable
    (id,content,dateof,parent_id,user_id)
values(3, 'Silver management', To_DATE('2008/11/19','YYYY/MM/DD'), 2, 2);
insert into querytable
    (id,content,dateof,parent_id,user_id)
values(4, 'Copper management', To_DATE('2008/11/19','YYYY/MM/DD'), 2, 2);
insert into querytable
    (id,content,dateof,parent_id,user_id)
values(5, 'Bromze management', To_DATE('2008/11/19','YYYY/MM/DD'), 2, 2);
insert into querytable
    (id,content,dateof,parent_id,user_id)
values(6, 'Copper management', To_DATE('2008/11/19','YYYY/MM/DD'), 2, 2);
insert into querytable
    (id,content,dateof,parent_id,user_id)
values(7, 'Lib1 management', To_DATE('2008/11/19','YYYY/MM/DD'), 2, 2);
insert into querytable
    (id,content,dateof,parent_id,user_id)
values(8, 'Lib management', To_DATE('2008/11/19','YYYY/MM/DD'), 2, 2);
insert into querytable
    (id,content,dateof,parent_id,user_id)
values(9, 'Lib34 management', To_DATE('2008/11/19','YYYY/MM/DD'), 2, 2);
insert into querytable
    (id,content,dateof,parent_id,user_id)
values(10, 'Lib56 management', To_DATE('2008/11/19','YYYY/MM/DD'), 2, 2);

insert into event
    (id,dateof,descriptionValue,invitation,name,organiser_id)
values(1, TO_DATE('2008/11/11','YYYY/MM/DD'), 'Alumni meet', 'OBA', 'ProGrad', 1);
insert into event
    (id,dateof,descriptionValue,invitation,name,organiser_id)
values(2, TO_DATE('2008/11/11','YYYY/MM/DD'), 'Library opening', 'member', 'FACEPrep', 2);
insert into event
    (id,dateof,descriptionValue,invitation,name,organiser_id)
values(3, TO_DATE('2008/11/11','YYYY/MM/DD'), 'Silver opening', 'member', 'FACEPrep', 3);
insert into event
    (id,dateof,descriptionValue,invitation,name,organiser_id)
values(4, TO_DATE('2008/11/11','YYYY/MM/DD'), 'Copper opening', 'member', 'FACEPrep', 4);
insert into event
    (id,dateof,descriptionValue,invitation,name,organiser_id)
values(5, TO_DATE('2008/11/11','YYYY/MM/DD'), 'Bronze opening', 'member', 'FACEPrep', 5);
insert into event
    (id,dateof,descriptionValue,invitation,name,organiser_id)
values(6, TO_DATE('2008/11/11','YYYY/MM/DD'), 'Gold opening', 'member', 'FACEPrep', 6);
insert into event
    (id,dateof,descriptionValue,invitation,name,organiser_id)
values(7, TO_DATE('2008/11/11','YYYY/MM/DD'), 'Lib1 opening', 'member', 'FACEPrep', 7);
insert into event
    (id,dateof,descriptionValue,invitation,name,organiser_id)
values(8, TO_DATE('2008/11/11','YYYY/MM/DD'), 'Lib opening', 'member', 'FACEPrep', 8);
insert into event
    (id,dateof,descriptionValue,invitation,name,organiser_id)
values(9, TO_DATE('2008/11/11','YYYY/MM/DD'), 'Lib3 opening', 'member', 'FACEPrep', 9);
insert into event
    (id,dateof,descriptionValue,invitation,name,organiser_id)
values(10, TO_DATE('2008/11/11','YYYY/MM/DD'), 'Lib3 opening', 'member', 'FACEPrep', 10);
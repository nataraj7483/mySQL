CREATE DATABASE family_details;

use family_details;

CREATE TABLE family_details (id int primary key ,family_Name varchar(40) not null ,head_members_name varchar(40)not null ,
gender varchar(20)not null,Date_of_birth date not null,wife_name varchar(10),location varchar(50) not null,
 child_boy_name varchar(20) not null, child_girl_name varchar(20) not null ,
 grand_father_name varchar(20) , grand_mother_name varchar(60),phone_no bigint 
 ,working_Company varchar(50) not null ,company_name varchar(40),No_Of_members int ,vehicle boolean not null,
 chil_school varchar(40) not null ,principle_name varchar(50),school_id int not null,school_Time time ) ;
  
  drop table family_details;
  truncate table family_details;
  SELECT *FROM family_details;
  
  INSERT INTO family_details values(1,'  Brundavana  ','Venki','male','1890-12-1','sushila','Hosadurga','shiva','netra','ventash',
  'shushilamma',987654433,'Krushi','Raitha',87,true,'ppsc','druva',1,9-15);
    INSERT INTO family_details values(2,'ramanilaya','ravi','male','1885-12-1','drakshni','badravathi','teeju','ravika','ramappa',
  'nagamma',987659833,'police dept','police',8766,true,'kps','rahu',7,8-15);
    INSERT INTO family_details values(3,'ganganilaya','sannappa','male','1856-12-1','lalithamma','mathodu','abhi','pushpa','rajappa',
  'puttamma',987654433,'panchath raj','bill collector',13,true,'gps','ram',6,10-15);
    INSERT INTO family_details values(4,'venkateshwaranilaya','Venkatappa','male','1870-12-1','gowramma','circle','kumar','radha','ramappa',
  'goura',987654533,'panchayath','member',4,true,'rjs','ramu',4,11-15);
  
  
  create table frinds_details(slno int not null,frind_name varchar( 50) not null , date_of_birth date not null, gender varchar(70) ,
  father_name varchar(25)not null,mother_name varchar(80) not null ,district varchar (40),state varchar(50), 
  brother_name varchar(40)not null ,sister_name varchar(80) not null,
  grand_father_name varchar(90) not null ,grand_mother_name varchar(50) not null,no_OF_people int ,
 area varchar(50) not null ,ph_number bigint not null ,college_name varchar(90),using_vehicle varchar(30),single boolean not null ,
 family_name varchar(50),family_god_name varchar (80) not null ,foreign key (slno )references family_details(id))  ;
  
  SELECT *FROM frinds_details;
  
  INSERT INTO frinds_details values(1,'naveen','2000-12-1','male','gagappa','neelamma','chitradurga','karnataka','rama','radha','ramappa',
  'radhamma',6,'karehalli',988765445,'hgbhs','pulsor',false,'ganganilaya','gangadevi')
   INSERT INTO frinds_details values(2,'pravena','2002-12-1','male','ramappa','rajamma','davangere','karnataka','raju','radhika','rajappa',
  'gangamma',3,'mathodu',988764445,'ppshs','ktm',true,'devinilaya','devi')
   INSERT INTO frinds_details values(3,'shashi','1999-04-04','male','shivappa','vijiyamma','shivmoga','karnataka','gangappa','sushilamma','kittappa',
  'kittamma',5,'badravathi',9888775445,'carmel garden','Duke',false,'mathanilaya','mathagamma')
   INSERT INTO frinds_details values(4,'raj','1999-12-1','male','venki','shushila','tumkur','karnataka','raju','ramya','thimappa',
  'puttamma',7,'kamsagara',988765445,'baligondu guri','hero',true,'ramanilaya','rama')
  
  
alter table family_details add column  age varchar(70)default "29";
alter table family_details modify column  school_id   bigint ;
alter table family_details rename column  age to ages;
alter table family_details drop column  ages ;
desc family_details;
   
select  family_Name from family_details where id=3;
select family_Name ,id from family_details where id between 1 and 3;
select family_Name ,id from family_details where id not in (1,5);
select family_Name ,id from family_details where id =5 and No_Of_members=0;
select family_Name ,id from family_details where id =1 or  id=2;
                        
select ltrim(family_Name)from family_details;
select rtrim(family_Name)from family_details;

select lpad("nataraj" ,25 ,"koramangala");
select rpad("nataraj" ,15 ,"Xworkz");

select instr("family_Name","n") as position;

select substr("Xworkz",3,4);
select length("raj")as length;

SELECT REPLACE("nata raj", "raj", "java") as replacing;
SELECT POSITION("s" IN "natarajs.com") AS MatchPosition;
SELECT MID("nata raj", 5, 3) AS ExtractString;
SELECT REVERSE("raj");

select family_Name from  family_details where family_Name like "i%";
select family_Name from  family_details where family_Name between  "i"and "s";
select upper(family_Name) from family_details;
select lower(family_Name) from family_details;
select upper(family_Name) from family_details where id=1 ;
select lower(family_Name) from family_details where id=1 ;

select datediff("2020/05/25" , "2022/05/25")as diffrence;
select makedate(2000,31);

select date("2021/01/20");

select  date_add("2022/01/22 ,10:20:01" ,interval 10 day) as intervala;
select  date_add("2021/01/22 ,10:20:01" ,interval 10 month) as intervala;
select  date_add("2021/01/22 ,10:20:01" ,interval 18 quarter) as intervala;
select  date_add("2021/01/22 ,10:20:01" ,interval 7 week) as intervala;
select  date_add("2021/01/22 ,10:20:01" ,interval 50 second  ) as intervala;
select  date_add("2021/01/22 ,10:20:01" ,interval 50 hour) as intervala;
select  date_add("2021/01/22 ,10:20:01" ,interval 50 minute) as intervala;

select  date_add("2022/11/22,10:20:01" ,interval -5 day) as intervala;
select  date_add("2022/11/22 ,10:20:01" ,interval -21 month) as intervala;
select  date_add("2022/11/22 ,10:20:01" ,interval -12 quarter) as intervala;
select  date_add("2022/11/22 ,10:20:01" ,interval -17 week) as intervala;
select  date_add("2022/11/22 ,10:20:01" ,interval -55 second  ) as intervala;
select  date_add("2022/11/22 ,10:20:01" ,interval -43 hour) as intervala;
select  date_add("2022/11/22 ,10:20:01" ,interval -32 minute) as intervala;


select greatest(23,45,65,45,76,87,89)as greatest;
select dayname("2022/04/04")as day;

select sum(Date_of_birth) from family_details;
select avg(Date_of_birth) from family_details;
select max(Date_of_birth) from family_details;
select min(Date_of_birth) from family_details;
select count(Date_of_birth) from family_details;

select family_name from family_details group by school_id;
select family_name from family_details group by school_id having school_id=1;

select family_name from family_details order by family_name;
select family_name from family_details order by family_name desc ;

select id ,slno from family_details inner join frinds_details where id=slno;
select id ,slno from family_details left join frinds_details on id=slno;
select id ,slno from family_details right join frinds_details on id=slno;
select id ,slno from family_details , frinds_details;

select * from family_details;
select * from frinds_details;

  

   
   
 

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  


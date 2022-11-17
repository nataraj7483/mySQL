CREATE DATABASE TemplesTemple;
use TemplesTemple;

CREATE TABLE temple_details(id int not null,tmple_location varchar(40) not null,god_name varchar(30) unique,gender varchar(30) not null,
temple_color varchar(30) not null,temple_square_feet decimal(7,2) not null,no_of_doors int not null,no_of_wifes int not null,no_of_childres int not null,
god_wife_name varchar(40) not null,god_height int not null,no_of_rooms int not null,no_of_gods varchar(40) not null,poojari_name varchar(40) not null,
phone_no bigint not null,pojari_wife_name varchar(40) not null,wife_no bigint not null,pojari_salary bigint not null,pojari_weight int not null,
pojari_height int not null)

select *from temple_details;

INSERT INTO temple_details values(1,'tirupathi','Thimappa','male','Gold',200.30,40,2,0,'Lakshmi',10,40,20,'Govinda',87498774774,'Radha',
                                89898748,67347874,60,7)
INSERT INTO temple_details values(2,'tirupathi','Govindhrajswamy','male','white',150.30,15,2,3,'Srideevi',13,30,27,'Swamy',87498774790,'Radhika',
                                8989879778,67347898,69,6)
 INSERT INTO temple_details values(3,'Dharmastala','Manjunatha','male','merune',500.30,30,2,2,'parvathi',11,10,10,'Hegde',874987453,'Chinmayi',
                                898987647,67347874644,64,6)
 INSERT INTO temple_details values(4,'koluru','mookambike','female','white',300.30,30,1,3,'Shiva',11,20,30,'Govindaraj',87498774734,'Ramya',
                                898987987,6734785,65,5)
 INSERT INTO temple_details values(5,'katilu','durgaparameshvari','female','Gold',50.30,76,3,9,'Durdra',12,30,10,'rama',87487774774,'Rangamma',
                                898987876,67347764,55,8)
 INSERT INTO temple_details values(6,'chamoki','Badrinath','male','red',270.30,30,5,3,'ganga',3,30,10,'rajaram',874987748766,'rani',
                                8989898676,67347765,70,5)
 INSERT INTO temple_details values(7,'suntemple','konark','male','Gold',250.30,10,2,4,'chaya',15,30,10,'rama',874676774774,'rangamma',
                                89896757585,67347878,50,8)
 INSERT INTO temple_details values(8,'somanath','somanathpure','male','Silvar',300.30,30,2,5,'Gangamma',11,44,23,'Gaviraj',87468774774,'janakiamma',
                                898987746,6547874,40,5)
 INSERT INTO temple_details values(9,'rudraprayag','kedarnath','male','black',500.30,30,3,5,'Lakshmi',20,50,30,'thimappa',87495774774,'rangamma',
                                898987568,67347876,30,4)
 INSERT INTO temple_details values(10,'jammu','vaishno devi','female','yellow',100.30,30,1,4,'Bairava',11,43,21,'Puttappa',874974774,'ramamma',
                                89896748,64847874,40,9)
 INSERT INTO temple_details values(11,'amrithsar','golden temple','male','Gold',150.30,20,1,5,'radha',13,45,28,'Anjanappa',87497774774,'Sarojamma',
                                898788748,678547874,40,8)
 INSERT INTO temple_details values(12,'madurai','meenakshi','female','red',60.30,20,1,7,'Shiva',11,10,40,'narasimha',87467774774,'ganga',
                                89898128,673247874,50,4)
 INSERT INTO temple_details values(13,'jammu','amarnath','male','white',400.30,1,3,3,'durge',12,20,30,'shivappa',874987774774,'girijamma',
                                898985948,67877874,30,6)
 INSERT INTO temple_details values(14,'bhuvaneshwar','lingaraja','male','Gold',200.30,40,2,0,'radha',10,40,20,'govinda',87498779774,'lakshmi',
                                898988748,67874,50,9)
 INSERT INTO temple_details values(15,'kanchipuram','kanchipuram','female','whilet',2500.30,30,3,6,'rudra',50,78,60,'shivalingappa',87498774774,'ramna',
                                898987878,678747874,70,6)
 INSERT INTO temple_details values(16,'pali','ranakur','female','dark red',50.30,20,1,10,'kedarnath',11,44,22,'rajappa',87458774774,'sharadamma',
                                8989498748,673747874,90,8)
 INSERT INTO temple_details values(17,'shirdi','sai baba','male','white',2080.30,3,0,0,'null',12,43,25,'rama',87498774774,'ramya',
                                898987448,673478274,55,5)
 INSERT INTO temple_details values(18,'dwarka','dwarkadish','male','yellow',400.30,44,23,5,'radha',14,4,2,'ramappa',87498774474,'thiru',
                                89898748,67347874,60,7)
 INSERT INTO temple_details values(19,'vrindavan','iskcon','male','dark yellow',300.30,0,0,0,'null',18,49,29,'basavaraj',87497774774,'netra',
                                89898748,6777847874,99,8)
 INSERT INTO temple_details values(20,'gaya','mahabodhi','male','white',8.30,4,2,7,'sarvathi',11,46,28,'rrajappa',87598774774,'Radhikamma',
                                8989848,677787874,100,12)

 SELECT *FROM temple_details;
 
 select *from temple_details where god_name="thimappa" AND id=1;
  select *from temple_details where god_name="manjunatha" OR id=2;
 select * from temple_details where id between 3 and 4;
 
select god_name from temple_details where god_name like '%r';
select god_name from temple_details where god_name like 't%';

select *from temple_details where id not in(1,6,7);
select *from temple_details where id  in(2,7,8);

 select * from temple_details order by god_name desc;
 
 select id,god_name from temple_details group by id having count(temple_color)<10;
 
 select temple_color, SUM(god_name) from temple_details;
select temple_color, count(god_name) from temple_details;
select temple_color, min(god_name) from temple_details;
select temple_color, avg(god_name) from temple_details;


Create table KARNATAKA_district_details (id int primary key ,district_name varchar(50)not null unique,mp_name varchar(30) not null unique,
mp_no bigint not null, no_wifes int,experience int,year_of_ruling int,votes_leaded bigint,gender varchar(40),mp_salary bigint not null,
tq_name varchar(30) not null,circle_inspector_name varchar(30),inspector_no bigint,inspector_salary bigint,no_stations int,
no_of_constebles int,no_of_ladyconstable int,no_of_cells int,mla_name varchar(50) not null,mla_salary bigint,mla_no bigint,
mla_wife_name varchar(30),no_of_child int,no_of_adyaksha int,total_members int,adyaksha_salary bigint,member_salary bigint,
no_of_villages int not null,no_of_post int,total_population bigint not null,mla_wife_no bigint,total_panchathraj int not null ,
district_commitionar_name varchar(50),gende varchar(40),commistionar_salary bigint not null,commitionar_no bigint not null,
married_or_not varchar(20) not null,wife_name varchar(50) not null,no_children int,wife_no bigint)

select *from KARNATAKA_district_details;

INSERT INTO KARNATAKA_district_details values(1,'chitradurga','govindappa',8789976556,1,15,5,65489,'male',567898,'hosadurga',
'raj',76875577778,54677,20,100,40,10,'gulehatti',6765787,7656878766,'xrxd',3,4,20,6580,3000,54324466,25,5667899986543,87666,20,
'raj','male',657897656,8976008754,'married','radha',2,78975445444);
INSERT INTO KARNATAKA_district_details values(2,'belgam','suresh',8789976586,1,10,10,69489,'male',507898,'saghyt',
'raju',768755987778,54977,25,109,41,11,'hffff',6765687,7650978766,'xrxtr',2,3,21,6589,3009,54324468,26,5667899986543,87686,28,
'raju','male',657897856,8986008754,'married','yterr',3,789754985444);
INSERT INTO KARNATAKA_district_details values(3,'bagalkote','parvatagouda',8789976556,2,16,6,65689,'male',569898,'teetre',
'rami',7687577778,5677,21,108,42,12,'hft',765787,765688766,'hjg',4,5,21,7580,3010,5424466,26,5697899986543,8766,22,
'raji','male',65789765,897600875,'married','njiu',2,789745444);
INSERT INTO KARNATAKA_district_details values(4,'bijapur','ramesh',8789976557,2,5,6,65488,'male',567897,'tyrr',
'null',7687557775,54667,25,108,43,13,'hjdhh',6765784,7656848766,'mkk',4,5,23,6560,3060,5434466,2,56699986543,87667,23,
'rjf','male',657897656,8976008754,'married','radha',2,78975445444);
INSERT INTO KARNATAKA_district_details values(5,'gulbarga','umesh',8789996556,1,10,9,65089,'male',567098,'hggg',
'hghh',7687557778,5467,26,190,46,16,'gfgf',6765687,7655878766,'gsg',4,5,25,6589,3050,5434466,26,56679986543,87665,25,
'kk','male',657897656,8976008754,'married','kkk',5,789755444);
INSERT INTO KARNATAKA_district_details values(6,'bidar','khuba',8789976546,1,14,3,65439,'male',567398,'hddhh',
'rrwg',7685577778,54637,24,106,45,16,'hghjgj',676575,7656878766,'ijkl',5,6,26,6585,3040,54324466,25,5667899986543,87666,20,
'gfghf','male',657897656,8976008754,'married','hhg',2,7875445444);
INSERT INTO KARNATAKA_district_details values(7,'haveri','shivkumar',8789576556,1,16,7,65485,'male',567868,'hgjg',
'jgg',76876577778,54777,27,106,47,17,'hhh',6765887,765678766,'kjh',6,7,27,6680,3050,5432466,2,566799986543,8766,20,
'kljjk','male',65787656,897008754,'married','jh',2,7897545444);
INSERT INTO KARNATAKA_district_details values(8,'dharwad','venkatesh',8789966556,1,6,4,6589,'male',56898,'kjhjj',
'kdgk',7685577778,5477,25,109,30,20,'ghfgfg',676787,765878766,'rrr',7,8,28,650,300,5432466,28,566789986543,8766,2,
'jkkj','male',65787656,897608754,'married','kjj',2,7897544444);
INSERT INTO KARNATAKA_district_details values(9,'davangere','gowdar',878997556,1,16,7,6589,'male',56788,'hjghg',
'ghjg',7687577778,5467,24,200,30,30,'hhhjg',676787,765678766,'xrhghxd',8,5,25,658,300,5432466,2,566789986543,8766,20,
'jkjh','male',65787656,897600754,'married','nmbb',2,789754444);
INSERT INTO KARNATAKA_district_details values(10,'shivmoga','rhagavendra',878976556,1,10,3,6589,'male',566898,'jjj',
'jjj',768777778,5467,25,145,45,11,'hhhh',675787,765678766,'xrxeed',6,5,26,650,30005,5434466,25,567899986543,8766,20,
'jkk','male',657897656,8976008754,'married','jkljk',2,7875445444);
INSERT INTO KARNATAKA_district_details values(11,'udupi','shoba',878997656,1,19,8,69489,'female',567898,'chhf',
'fdf',875577778,5467,2,10,4,1,'ffdd',676578,76568787,'gghgf',9,8,2,680,300,5424466,2,566899986543,7666,2,
'hgf','male',65789656,89706008754,'married','hgfg',2,789754454);
INSERT INTO KARNATAKA_district_details values(12,'hassan','manju',87899876556,1,6,7,675,'male',7876,'hghg',
'hfh',765754574,43543,43,654,766,10,'gulehatti',6765787,7656878766,'xrxd',3,4,20,6580,3000,54324466,25,5667899986543,87666,20,
'6hj','male',67567,8765675,'married','gfgf',2,7876876876);
INSERT INTO KARNATAKA_district_details values(13,'tumkur','basavvaraju',768767,1,77,7,76767,'male',88687,'hjghjgkj',
'ghjg',789675678789,6534,67,100,40,10,'gulehatti',6765787,7656878766,'xrxd',3,4,20,6580,3000,54324466,25,5667899986543,87666,20,
'gfg','male',657897656,8976008754,'married','hgjg',2,78975445444);
INSERT INTO KARNATAKA_district_details values(14,'mysoru','prathap',76656756,1,7,6,676567,'male',7675,'hjgfgf',
'thg',76875577778,54677,20,100,40,10,'hgf',8746564,66576565,'kjggf',65,65,65,87877,6655,65,25,67575,876677666,26770,
'jhgg','male',657897656,8976008754,'married','yyutu',2,78975445444);
INSERT INTO KARNATAKA_district_details values(15,'chamrajnagar','srinivas',875675,1,76,58,876,'male',896656,'ujgbhv',
'gfgf',87665656,7686,65,8667,8786,767,'kjgh',876777,8955686554,'jhghgf',66,78,76,7676,78667,6565,25,5669986543,8766,20,
'gdf','male',65789768756,89708754,'married','hghf',77,7895445444);
INSERT INTO KARNATAKA_district_details values(16,'bangalore north','sadanandh',878997656,1,8,8,659489,'male',560898,'hghj',
'gfgf',768777778,577,2,10,4,19,'hjj',7986,9867676,'jggh',3,4,20,6580,300,5432446,25,566789998643,8766,20,
'gfgfg','male',6578656,89760054,'married','786767',2,78445444);
INSERT INTO KARNATAKA_district_details values(17,'bangalore central','mohan',786676,1,15,5,756556,'male',6767765,'gfgfgh',
'tdfd',777778,786656,667,667,65,65,'ghfdfgd',7555,7656766,'xrxgfd',3,4,676,6675,6754,54324466,25,898767,876575,20,
'hjfghf','male',657897656,8976008754,'married','gfghfg',2,8756456454);
INSERT INTO KARNATAKA_district_details values(18,'dakshinakannada','kateel',8789976556,1,15,5,65489,'male',567898,'hosadurga',
'raj',76875577778,54677,20,100,40,10,'gulehatti',6765787,7656878766,'xrxd',3,4,20,6580,3000,54324466,25,5667899986543,87666,20,
'raj','male',657897656,8976008754,'married','radha',2,78975445444);
INSERT INTO KARNATAKA_district_details values(19,'chikkballapura','bachchegowda',8665656,1,76,76,9787676,'male',989787,'jmjhghjg',
'hhjh',876655654,8766,20,76,40,10,'jhg',6765787,7656878766,'jhghjg',3,4,20,6580,3000,54324466,25,5667899986543,87666,20,
'jggfg','male',657897656,8976008754,'married','hjgg',2,78975445444);
INSERT INTO KARNATAKA_district_details values(20,'bellary','devendra',786656765,1,15,5,8766,'male',5665,'hjggfg',
'jhg',76875577778,54677,20,100,40,10,'hjghgf',6765787,6677545,'jhgjg',3,4,20,6580,6675,876876,25,878656756,87666,20,
'ggfg','male',657897656,8976008754,'married','radha',2,78975445444);

select *from KARNATAKA_district_details;



select temple_details.id as temple_details,KARNATAKA_district_details.id as KARNATAKA_district_details from temple_details inner join KARNATAKA_district_details on temple_details.id=KARNATAKA_district_details.id;

select temple_details.id as temple_details,KARNATAKA_district_details.id as KARNATAKA_district_details from temple_details left join KARNATAKA_district_details on temple_details.id=KARNATAKA_district_details.id;

select temple_details.id as temple_details,KARNATAKA_district_details.id as KARNATAKA_district_details from temple_details right join KARNATAKA_district_details on temple_details.id=KARNATAKA_district_details.id;

select temple_details.god_name, KARNATAKA_district_details.district_name from temple_details,KARNATAKA_district_details;

select tmple_location from temple_details where temple_color=(select god_name from KARNATAKA_district_details where id=4);
select tmple_location from temple_details where temple_color=(select temple_square_feet from KARNATAKA_district_details where id=4);










 
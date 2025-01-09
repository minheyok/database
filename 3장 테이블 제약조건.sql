SELECT * FROM studydb.user1;

use `studydb`;

create table `User2` (
`uid` varchar(10) primary key,
`name`varchar(10),
`birth` CHAR(10),
`addr` VARCHAR(50)
);

insert into `User2` values ('A101','김유신','1968-05-09','경남 김해시');
insert into `User2` values ('A102','김춘추','1972-11-23','경남 경주시');
insert into `User2` values ('A103','장보고','1978-03-01','전남 완도군');
insert into `User2` values ('A104','강감찬','1979-08-16','서울시 관악구');
insert into `User2` values ('A105','이순신','1981-05-23','부산시 진구');

select * FROM `User2`;

create table `User3` (
`uid` VARCHAR(10) primary key,
`name` varchar(10),
`gender` CHAR(1),
`age` int,
`hp` varchar(13) unique,
`addr` varchar(10)
);

insert into `User3` values ('A101','김유신','M',25,'010-1234-1111','경남 김해시');
insert into `User3` values ('A102','김춘추','M',23,'010-1234-2222','경남 경주시');
insert into `User3` values ('A103','장보고','M',25,'010-1234-3333','전남 완도시');
insert into `User3` values ('A104','감감찬','M',25,'010-1234-4444','서울시 관악구');
insert into `User3` values ('A105',null,'M',null,'010-1234-5555','부산시 진구');
insert into `User3` values ('A106','신사임당','F',32,null,'깅릉시');
insert into `User3` values ('A107','허나설현','F',27,null,'경기도 광주시');

update `User3` set `hp`='010-1234-6666' where `uid`='A106';

select * from `User3`;
 
 create table `Parent` (
 `pid` varchar(10) primary key,
 `name` varchar(10),
 `birth` char(10),
 `addr` varchar(10)
 );
 
 select * from `parent`;
 
 create table `child` (
 `cid` varchar(10) primary key,
 `name`varchar(10),
 `hp` varchar(13) unique,
 `parent`varchar(10), 
 foreign key (`parent`) references `Parent` (`pid`)
 );
 
 select * from `child`;
 
 insert into `Parent` value ('P101','김유신','1968-05-09','경남 김해시'); 
 insert into `Parent` value('P102','김춘추','1972-11-23','경남 경주시'); 
 insert into `Parent` value('P103','장보고','1978-03-01','전남 완도시'); 
 insert into `Parent` value('P104','강감찬','1979-08-16','서울시 관악구'); 
 insert into `Parent` value('P105','이순신','1981-05-23','부산시 진구'); 
 
 select * from `Parent`;
 
 insert into `child` value('C101','김철수','010-1234-1001','P101');
 insert into `child` value('C102','김영희','010-1234-1002','P101');
 insert into `child` value('C103','강철수','010-1234-1003','P103');
 insert into `child` value('C104','이철수','010-1234-1004','P105');
 
 select * FROM `child`;
 
 CREATE table `User4` (
 `uid` varchar(10) primary key,
 `name`varchar(10) not null,
 `gender`char(1) ,
 `age` int default 1,
 `hp` varchar(13) unique,
 `addr`varchar(10)
 );
 
 select * from `User4`;
 
 insert into `User4` value('A101','김유신','M',25,'010-1234-1111','경남 김해시');
 
 
 
 
 
 
 
 
 

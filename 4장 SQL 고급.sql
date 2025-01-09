# 날짜 :2025/01/09
# 이름 : 장민혁
# 내용 : 4장 그룹화 실습하기

create table `Member`(
`uid` varchar(10),
`name`varchar(10),
`hp`varchar(13),
`pos`varchar(10),
`dep`int,
`rdate`datetime not null
);
 select * from `Member`;

create table `Department`(
`depNo` int primary key,
`name` varchar(10)not null,
`tel` varchar(12) not null
);

 select * from `Department`;

create table `Sales` (
`seq`int auto_increment primary key,
`uid` varchar(10),
`year`year not null,
`month`tinyint not null,
`sale` int
);
 select * from `Sales`;

insert into `Member` values ('a101','박혁거세','010-1234-1001','부장',101,now());
insert into `Member` values ('a102','김유신','010-1234-1002','차장',101,now());
insert into `Member` values ('a103','김춘추','010-1234-1003','사원',101,now());
insert into `Member` values ('a104','장보고','010-1234-1004','대리',102,now());
insert into `Member` values ('a105','강감찬','010-1234-1005','과장',102,now());
insert into `Member` values ('a106','이성계','010-1234-1006','차장',103,now());
insert into `Member` values ('a107','정철','010-1234-1007','차장',103,now());
insert into `Member` values ('a108','이순신','010-1234-1008','부장', 104,now());
insert into `Member` values ('a109','허균','010-1234-1009','부장', 104,now());
insert into `Member` values ('a110','정약용','010-1234-1010','사원', 105,now());
insert into `Member` values ('a111','박지원','010-1234-1011','사원', 105,now());

insert into `Department` values ('101','영업1부','051-512-1001');
insert into `Department` values ('102','영업2부','051-512-1001');
insert into `Department` values ('103','영업3부','051-512-1001');
insert into `Department` values ('104','영업4부','051-512-1001');
insert into `Department` values ('105','영업5부','051-512-1001');
insert into `Department` values ('106','영업지원부','051-512-1001');
insert into `Department` values ('107','인사부','051-512-1001');

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a101', 2018, 1,  98100);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2018, 1, 136000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2018, 1,  80100);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2018, 1,  78000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2018, 1,  93000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a101', 2018, 2,  23500);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2018, 2, 126000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2018, 2,  18500);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2018, 2,  19000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a106', 2018, 2,  53000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a101', 2019, 1,  24000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2019, 1, 109000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2019, 1, 101000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2019, 1,  53500);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a107', 2019, 1,  24000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2019, 2, 160000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2019, 2, 101000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2019, 2,  43000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2019, 2,  24000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a106', 2019, 2, 109000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2020, 1, 201000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2020, 1,  63000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2020, 1,  74000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a106', 2020, 1, 122000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a107', 2020, 1, 111000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2020, 2, 120000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2020, 2,  93000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2020, 2,  84000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2020, 2, 180000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a108', 2020, 2,  76000);




# 실습4-3
select * from `Member`where`name`='김유신';
select * from `Member`where`name`<>'김춘추';
select * from `Member`where`pos`='사원' or `pos`=`대리`;
select * from `Member`where`pos`IN ('사원','대리');
select * from `Member`where`name` like '%신';
select * from `Member`where`name` like '정_';
select * from `Member`where`name` like'김%';
select * from `Member`where`name` like'김__';
select * from `Member`where`name` like'_성_';
SELECT * FROM `Sales` WHERE `sale` > 50000;
SELECT * FROM `Sales` WHERE `sale` >= 50000 AND `sale` < 100000 AND `month`=1;
 SELECT * FROM `Sales` WHERE `sale` BETWEEN 50000 AND 100000;
 SELECT * FROM `Sales` WHERE `sale` NOT BETWEEN 50000 AND 100000;
 SELECT * FROM `Sales` WHERE `year` IN(2020);
 SELECT * FROM `Sales` WHERE `month` IN(1, 2);
 
 
 
 
 #실습 4-4
 select * from `Sales` ORDER by `sale`;
 select * from `Sales` ORDER by `sale` ASC;
 select * from `Sales` ORDER by `sale` DESC;
 
 
 # 실습 4-5
 select * from `Sales` LIMIT 3;
 select * from `Sales` LIMIT 0, 3;
 select * from `Sales` LIMIT 1, 2;
 select * from `Sales` LIMIT 5, 3;
 
 #실습 4-6
 
select SUM(`sale`) AS `합계`from`Sales`;
select ceiling(1.2);
select ceiling(1.8);
select floor(1.2);
select floor(1.8);
select round(1.2);
select round(1.8);
select rand();    #0~1 사이 실수
SELECT ceiling(RAND() * 10);   #1~10 사이 정수
 
select count(*) as `갯수` from `Sales`;
select left('HelloWorld',5);
select right('HelloWorld',5);
select substring('HelloWorld',6,5);
select concat('Hello','World');

select now();
insert into `Member` values ('a112','유관순','010-1234-1012','대리',107,now());


#실습 4-7
select sum(`sale`)as`2018년 1월 매출 총합`from `Sales` where `year`=2018 and`month`=1;

#실습 4-8
select
	sum(`sale`) as `총합`,
    avg(`sale`) as `평균`
from 
`Sales`
 where
	`year`=2019 and 
    `month`=2 and
    `sele` >=50000;
#실습 4-9

select
 min(`sale`) as `최저`,
 max(`sale`) as `최고`
 from
	`Sales`
 where
	`year`=2020;
    
    
    #실습 4-10
    select @@sql_mode;
    
    set session sql_mode='STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

    
    select * from `Sales` group by `uid`;
    select * from `Sales` group by `year`;
    select * from `Sales` group by `uid`,`year`;
    select `uid`,count(*) as `건수` from `Sales` group by `uid`;
    select `uid`,sum(`sale`) as `합계` from `Sales` group by `uid`;
    
    #실습 4-11
    select
		`uid`,sum(`sale`) as `합계`
	from
		`Sales`
	group by
		`uid`
	having
		`합계` >= 200000;
        
	select
		`uid`,`year`,sum(sale)as`합계`
	from
		`sales`
	where
		`sale` >= 100000
	group by
		`uid`,`year`
	having
		`합계` >=200000
	order by
		`합계` desc;
	
# 실습 4-12
create table `Sales2` like `Sales`;
insert into `sales2` select * from `Sales`;
update `Sales2` set `year` =`year` + 3;
select * from `Sales2`;

select * from `Sales`
union
select *from `Sales2`;

select * from `Sales` union select * from `Sales2`;
select * from `Sales` where `sale` >= 100000
union
select * from `Sales2` where `sale` >100000;

select `uid`,`year`,`sale` from sales
union
select `uid`,`year`,`sale` from sales2;

select `uid`,`year`, sum(sale) as `합계`
from `Sales`
group by `uid`,`year`
union
select `uid`,`year`,sum(sale) as `합계`
from `Sales2`
group by `uid`,`year`
order by `year` asc,`합계` desc;

# 실습 4-13
select* from `Sales`join `Member` on `Sales`.`uid` = `Member`.`uid`;
 
 select 
 *
 from `Member` as a
 join`Department` as b
 on a.dep=b.depNo;
 
 select
	*
from `Sales` as a join `Member` as b using(`uid`);


select
	*
from `Sales` as a
join `Member` as b on a.uid = b.uid
join `Department` AS c on b.dep = c.depNo;

# 실습 4-14
insert into `Sales` (`uid`,`year`,`month`,`sale`) values('a201',2020,2,15500);

select 
	*
from `Sales` as a
right join `Member` as b on a.uid = b.uid;  #inner,left,right 차이 확인

select a.`seq`,a.`uid`,`sale`,`name`,`pos` from `Sales` as a
join `Member` as b on a.`uid` = b.`uid`;

select a.`seq`,a.`uid`,`sale`,`name`,`pos` from `Sales` as a
join `Member` as b using (uid);

select a.`seq`,a.`uid`,`sale`,`name`,`pos` from `Sales` as a
join `Member`as b on a.`uid`=b.`uid`
where `sale` >= 100000;

select a.`seq`,a.`uid`,b.`name`,`year`,sum(`sale`) as `합계` from `Sales` as a
join `Member` as b on a.`uid` = b.`uid`
group by a.`uid`,a.`year` having `합계` >=100000
order by a.`year`ASC,`합계` DESC;

select*from `Sales` as a,`Member` AS b
where a.uid=b.uid;

# 4-15
SELECT
    `uid`,a.`name`,`pos`,b.`name`
FROM `Member`as a
join `Department` as b on a.dep =b.depNo;

# 실습 4-16
select 
	sum(`sale`) as `김유신 2019년 매출 합`
 from `Sales`as a
join`Member` as b on a.uid = b.uid
where
`name` = '김유신' and
`year` = 2019;


# 실습 4-17
select 
	b.`name`,
    c.`name`,
    b.`pos`,
    a.`year`,
	sum(`sale`) as `매출합`
from `Sales` as a
join `Member` as b on a.uid=b.uid
join `Department` as c on b.dep = depNo
where `year`=2019 and `sale` >=50000
group by a.`uid`
having `매출합` >= 100000
order by `매출합` desc;





 





	
    
    
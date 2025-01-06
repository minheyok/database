USE

#날짜 : 2025/01/06
#이름 : 장민혁
#내용 : 2창 SQL 기초

#실습 2-1
use StudyDB;
CREATE table `User1` (
`uid` varchar(10),
`name` varchar(10),
`hp` char(13),
`age` int
);

drop table `User1`;

#실습 2-2
INSERT INTO `User1` VALUES ('A101', '김유신', '010-1234-1111', 25);
INSERT INTO `User1` VALUES ('A102', '김춘추', '010-1234-2222', 23);
INSERT INTO `User1` VALUES ('A103', '장보고', '010-1234-3333', 32);
INSERT INTO `User1` (`uid`, `name`, `age`) VALUES ('A104', '강감찬', 45);
INSERT INTO `User1` SET `uid`='A105', `name`='이순신', `hp`='010-1234-5555';

#실습 2-3
SELECT * FROM `User1`;
SELECT * FROM `User1` WHERE `uid`='A101';
SELECT * FROM `User1` WHERE `name`='김춘추';
SELECT * FROM `User1` WHERE `age` < 30;
SELECT * FROM `User1` WHERE `age` >= 30;
SELECT `uid`, `name`, `age` FROM `User1`;
#실습 2-4
UPDATE `User1` SET `hp`='010-1234-4444' WHERE `uid`='A104';
UPDATE `User1` SET `age`=51 WHERE `uid`='A105';
UPDATE `User1` SET `hp`='010-1234-1001', `age`=27 WHERE `uid`='A101';


#실습 2-5
DELETE FROM `User1` WHERE `uid`='A101';
DELETE FROM `User1` WHERE `uid`='A102' AND `age`=25;
DELETE FROM `User1` WHERE `age` >= 30;

#실습 2-6
alter table `User1` add `gender` tinyint;
alter table `User1` add `birth` char(10)after ` name`;
alter table `User1` modify `gender` char(1);
alter table `User1` modify `age` tinyint;
alter table `user1` drop `gender`;

#실습 2-7
create table `User1cpoy` LIKE `User1`;
INSERT INTO `User1copy` SELECT * FROM `User1`;

use StudyDB;

#실습 2-8
create table `TblUser` (
`user_id` VARCHAR(10),
`user_name` VARCHAR(10),
`user_hp` CHAR(13),
`user_age` TINYINT,
`user_addr` VARCHAR(100)
);

CREATE TABLE `Tblproduct` (
    `ptod_no` INT,
    `prod_name` VARCHAR(10),
    `prod_price` INT,
    `prod_stock` INT,
    `prod_company` VARCHAR(10),
    `prod_date` DATE
);


INSERT INTO `Tblproduct` VALUES (1001, '냉장고', 800000, 25, 'LG전자', '2022-01-06');
INSERT INTO `Tblproduct` VALUES (1002, '노트북', 1200000, 120, '삼성전자', '2022-01-07');
INSERT INTO `Tblproduct` VALUES (1003, '모니터', 350000, 35, 'LG전자', '2023-01-13');
INSERT INTO `Tblproduct` VALUES (1004, '세탁기', 1000000, 80, '삼성전자', '2021-01-01');
INSERT INTO `Tblproduct` VALUES (1005, '컴퓨터', 1500000, 20, '삼성전자', '2023-10-01');
INSERT INTO `Tblproduct` VALUES (1006, '휴대폰', 950000, 102, '(NULL)', '(NULL)');




SELECT*FROM `User1`;



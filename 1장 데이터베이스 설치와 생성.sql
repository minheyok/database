#날짜 : 2025/01/06
#이름 : 장민혁
#내용 : 1장 데이터베이스 설치와 생성

#실습1-1
CREATE database `StudyDB1`;
DROP database `studydb` ;

#실습 1-2
CREATE USER 'wkdalsgur5556'@'%' IDENTIFIED BY '1234';

GRANT ALL privileges on StudyDB.*to'wkdalsgur5556'@'%';
FLUSH PRIVILEGES;
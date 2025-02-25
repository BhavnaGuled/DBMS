Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
Server version: 8.0.41 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+------------------------------------+
| Database                           |
+------------------------------------+
| d0453                              |
| ecommerce                          |
| information_schema                 |
| mysql                              |
| performance_schema                 |
| sakila                             |
| student_database_management_system |
| sys                                |
| world                              |
+------------------------------------+
9 rows in set (0.00 sec)

mysql> create database Anudip;
Query OK, 1 row affected (0.02 sec)

mysql> show databases;
+------------------------------------+
| Database                           |
+------------------------------------+
| anudip                             |
| d0453                              |
| ecommerce                          |
| information_schema                 |
| mysql                              |
| performance_schema                 |
| sakila                             |
| student_database_management_system |
| sys                                |
| world                              |
+------------------------------------+
10 rows in set (0.00 sec)

mysql> use anudip;
Database changed
mysql> create table emp(ID varchar(5)not null primary key,NAME varchar(20) not null,MOBILE_NO VARCHAR(20) not null,ADDRESS varchar(20) not null,SALARY int n
ot null);
Query OK, 0 rows affected (0.04 sec)

mysql> insert into emp values('E1','Sayali',7070806879,'Solapur',50000);
Query OK, 1 row affected (0.02 sec)

mysql> insert into emp values('E2','Sai',8090674578,'Pune',70000);
Query OK, 1 row affected (0.02 sec)

mysql> insert into emp values('E3','Kiran',8790605890,'Mumbai',60000);
Query OK, 1 row affected (0.02 sec)

mysql> insert into emp values('E4','Anita',8090608090,'Kerala',80000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into emp values('E5','Rani',7090650805,'Bengalore',75000);
Query OK, 1 row affected (0.01 sec)

mysql> select * from emp;
+----+--------+-------------+-----------+--------+
| ID | NAME   | MOBILE_NO   | ADDRESS   | SALARY |
+----+--------+-------------+-----------+--------+
| E1 | Sayali | 7070806879  | Solapur   |  50000 |
| E2 | Sai    | 8090674578  | Pune      |  70000 |
| E3 | Kiran  | 8790605890  | Mumbai    |  60000 |
| E4 | Anita  | 8090608090 | Kerala    |  80000 |
| E5 | Rani   | 7090650805  | Bengalore |  75000 |
+----+--------+-------------+-----------+--------+
5 rows in set (0.01 sec)

mysql> delete from emp where ID='E5';
Query OK, 1 row affected (0.02 sec)

mysql> select * from emp;
+----+--------+-------------+---------+--------+
| ID | NAME   | MOBILE_NO   | ADDRESS | SALARY |
+----+--------+-------------+---------+--------+
| E1 | Sayali | 7070806879  | Solapur |  50000 |
| E2 | Sai    | 8090674578  | Pune    |  70000 |
| E3 | Kiran  | 8790605890  | Mumbai  |  60000 |
| E4 | Anita  | 8090608090 | Kerala  |  80000 |
+----+--------+-------------+---------+--------+
4 rows in set (0.00 sec)

mysql> update emp set SALARY=75000 where ID='E3';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from emp;
+----+--------+-------------+---------+--------+
| ID | NAME   | MOBILE_NO   | ADDRESS | SALARY |
+----+--------+-------------+---------+--------+
| E1 | Sayali | 7070806879  | Solapur |  50000 |
| E2 | Sai    | 8090674578  | Pune    |  70000 |
| E3 | Kiran  | 8790605890  | Mumbai  |  75000 |
| E4 | Anita  | 8090608090 | Kerala  |  80000 |
+----+--------+-------------+---------+--------+
4 rows in set (0.00 sec)

mysql> select *from emp where NAME LIKE 'S%';
+----+--------+------------+---------+--------+
| ID | NAME   | MOBILE_NO  | ADDRESS | SALARY |
+----+--------+------------+---------+--------+
| E1 | Sayali | 7070806879 | Solapur |  50000 |
| E2 | Sai    | 8090674578 | Pune    |  70000 |
+----+--------+------------+---------+--------+
2 rows in set (0.01 sec)

mysql> select *from emp where ADDRESS LIKE '%e';
+----+------+------------+---------+--------+
| ID | NAME | MOBILE_NO  | ADDRESS | SALARY |
+----+------+------------+---------+--------+
| E2 | Sai  | 8090674578 | Pune    |  70000 |
+----+------+------------+---------+--------+
1 row in set (0.00 sec)

mysql> select *from emp where ADDRESS LIKE '%a%';
+----+--------+-------------+---------+--------+
| ID | NAME   | MOBILE_NO   | ADDRESS | SALARY |
+----+--------+-------------+---------+--------+
| E1 | Sayali | 7070806879  | Solapur |  50000 |
| E3 | Kiran  | 8790605890  | Mumbai  |  75000 |
| E4 | Anita  | 8090608090 | Kerala  |  80000 |
+----+--------+-------------+---------+--------+
3 rows in set (0.00 sec)

mysql> select *from emp where NAME LIKE 'K____' ;
+----+-------+------------+---------+--------+
| ID | NAME  | MOBILE_NO  | ADDRESS | SALARY |
+----+-------+------------+---------+--------+
| E3 | Kiran | 8790605890 | Mumbai  |  75000 |
+----+-------+------------+---------+--------+
1 row in set (0.00 sec)

mysql> select *from emp where NAME LIKE '__i' ;
+----+------+------------+---------+--------+
| ID | NAME | MOBILE_NO  | ADDRESS | SALARY |
+----+------+------------+---------+--------+
| E2 | Sai  | 8090674578 | Pune    |  70000 |
+----+------+------------+---------+--------+
1 row in set (0.00 sec)

mysql> select *from emp where NAME LIKE 'a___a' ;
+----+-------+-------------+---------+--------+
| ID | NAME  | MOBILE_NO   | ADDRESS | SALARY |
+----+-------+-------------+---------+--------+
| E4 | Anita | 8090608090 | Kerala  |  80000 |
+----+-------+-------------+---------+--------+
1 row in set (0.00 sec)

mysql> select *from emp where SALARY>50000;
+----+-------+-------------+---------+--------+
| ID | NAME  | MOBILE_NO   | ADDRESS | SALARY |
+----+-------+-------------+---------+--------+
| E2 | Sai   | 8090674578  | Pune    |  70000 |
| E3 | Kiran | 8790605890  | Mumbai  |  75000 |
| E4 | Anita | 8090608090 | Kerala  |  80000 |
+----+-------+-------------+---------+--------+
3 rows in set (0.01 sec)

mysql> select *from emp where SALARY>80000;
Empty set (0.00 sec)

mysql> select *from emp where SALARY>=75000;
+----+-------+-------------+---------+--------+
| ID | NAME  | MOBILE_NO   | ADDRESS | SALARY |
+----+-------+-------------+---------+--------+
| E3 | Kiran | 8790605890  | Mumbai  |  75000 |
| E4 | Anita | 8090608090 | Kerala  |  80000 |
+----+-------+-------------+---------+--------+
2 rows in set (0.00 sec)

mysql> select *from emp where SALARY<75000;
+----+--------+------------+---------+--------+
| ID | NAME   | MOBILE_NO  | ADDRESS | SALARY |
+----+--------+------------+---------+--------+
| E1 | Sayali | 7070806879 | Solapur |  50000 |
| E2 | Sai    | 8090674578 | Pune    |  70000 |
+----+--------+------------+---------+--------+
2 rows in set (0.00 sec)

mysql> select *from emp where SALARY<=75000;
+----+--------+------------+---------+--------+
| ID | NAME   | MOBILE_NO  | ADDRESS | SALARY |
+----+--------+------------+---------+--------+
| E1 | Sayali | 7070806879 | Solapur |  50000 |
| E2 | Sai    | 8090674578 | Pune    |  70000 |
| E3 | Kiran  | 8790605890 | Mumbai  |  75000 |
+----+--------+------------+---------+--------+
3 rows in set (0.00 sec)

mysql> update emp set ADDRESS='Pune' where ID='E3';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from emp;
+----+--------+-------------+---------+--------+
| ID | NAME   | MOBILE_NO   | ADDRESS | SALARY |
+----+--------+-------------+---------+--------+
| E1 | Sayali | 7070806879  | Solapur |  50000 |
| E2 | Sai    | 8090674578  | Pune    |  70000 |
| E3 | Kiran  | 8790605890  | Pune    |  75000 |
| E4 | Anita  | 8090608090 | Kerala  |  80000 |
+----+--------+-------------+---------+--------+
4 rows in set (0.00 sec)
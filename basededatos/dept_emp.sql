DROP DATABASE IF EXISTS dept_emp;
CREATE DATABASE dept_emp;
USE dept_emp;

CREATE TABLE dept(
depno numeric(2) primary key,
dname varchar (10),
loc varchar(12) not null
);

INSERT INTO dept(depno, dname, loc) VALUE ( 10, 'ACCOUTING','NEW_YORK');
INSERT INTO dept(depno, dname, loc) VALUE ( 20, 'RESEARCH', 'DALLAS');
INSERT INTO dept(depno, dname, loc) VALUE ( 30, 'SALES', 'CHICAGO');
INSERT INTO dept(depno, dname, loc) VALUE ( 40, 'OPERATIONS', 'BOSTON');


CREATE TABLE emp(
epno decimal(4) not null primary key,
ename varchar(11) not null,
job varchar(13) not null,
mgr decimal (4,0),
hiredate date not null,
sal decimal(7,2) not null,
comm decimal (7,2),
depno decimal(2,0)
);
INSERT INTO emp(epno, ename, job, mgr, hiredate, sal, comm, depno) Value(7839, 'KING','PRESIDENT', null,'2011-11-17', 5000,null, 10);
INSERT INTO emp(epno, ename, job, mgr, hiredate, sal, comm, depno) Value(7698, 'BLAKE','MANAGER', 7839, '2011-05-01', 2850, null, 10);
INSERT INTO emp(epno, ename, job, mgr, hiredate, sal, comm, depno) Value(7782, 'CLARK', 'MANAGER', 7839, '2011-06-01', 2450, null, 10);
INSERT INTO emp(epno, ename, job, mgr, hiredate, sal, comm, depno) Value(7566, 'JONES', 'MANAGER', 7839, '2011-04-02', 2975, null, 20);
INSERT INTO emp(epno, ename, job, mgr, hiredate, sal, comm, depno) Value(7654, 'MARTIN', 'SALESMAN', 7698, '2011-09-28', 1250, 1400, 30);
INSERT INTO emp(epno, ename, job, mgr, hiredate, sal, comm, depno) Value(7499, 'ALLEN', 'SALESMAN', 7698, '2011-02-20', 1250, 300, 30);
INSERT INTO emp(epno, ename, job, mgr, hiredate, sal, comm, depno) Value(7844, 'TURNER', 'SALESMAN', 7698, '2011-09-08', 1500, 0, 30);
INSERT INTO emp(epno, ename, job, mgr, hiredate, sal, comm, depno) Value(7900, 'JAMES', 'CLERK', 7698, '2011-12-03', 950, null, 30);
INSERT INTO emp(epno, ename, job, mgr, hiredate, sal, comm, depno) Value(7521, 'WARD', 'SALESMAN', 7698, '2011-02-22', 1250, 500, 30);
INSERT INTO emp(epno, ename, job, mgr, hiredate, sal, comm, depno) Value(7902, 'FORD', 'ANALYST', 7566, '2011-12-03', 3000, null, 20);
INSERT INTO emp(epno, ename, job, mgr, hiredate, sal, comm, depno) Value(7639, 'SMITH', 'CLERK', 7902, '2010-12-17', 800, null, 20);
INSERT INTO emp(epno, ename, job, mgr, hiredate, sal, comm, depno) Value(7788, 'SCOTT', 'ANALYST', 7566, '2012-12-09', 3000, null, 20);
INSERT INTO emp(epno, ename, job, mgr, hiredate, sal, comm, depno) Value(7876, 'ADAMS', 'CLERK', 7788, '2012-01-12', 1100, null, 20);
INSERT INTO emp(epno, ename, job, mgr, hiredate, sal, comm, depno) Value(7934, 'MILLER','CLERK', 7782, '2012-01-23', 1300, null, 10);

CREATE TABLE salgrade(
grade decimal (1,0) primary key not null,
losal decimal (6,2) not null,
hisal decimal (6,2) not null
);
INSERT INTO salgrade(grade, losal, hisal) VALUE(1, 700, 1200);
INSERT INTO salgrade(grade, losal, hisal) VALUE(2, 1201, 1400);
INSERT INTO salgrade(grade, losal, hisal) VALUE(3, 1401, 2000);
INSERT INTO salgrade(grade, losal, hisal) VALUE(4, 2001, 3000);
INSERT INTO salgrade(grade, losal, hisal) VALUE(5, 3001, 9999);

select * from  emp;
select * from salgrade;
select * from  dept; 

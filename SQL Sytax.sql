ID      LEVEL
-- ----------
A           1
B           1
C           1

--connect by
--假设表中有row条记录,column_num(row,num)是此语句的结果集数目
select id,level column_num
from table
connect by level<num
---------------------------------------------------------------
column_num(row,1) = row
column_num(row,num) = column_num(row,num-1)*num + num

1、子句的语法书写顺序。
select -> from -> where -> start with -> connect by -> order by
where写在connect by后面就不行，报错
2、子句的执行顺序
from -> start with -> connect by -> where -> select -> order by

sqlplus-->	conn user/passwd [as sysdba]




--------------------------------------------------------------
lead(列名,n,m):  当前记录后面第n行记录的<列名>的值，没有则默认值为m；如果不带参数n,m，则查找当前记录后面第一行的记录<列名>的值，没有则默认值为null。
lag(列名,n,m):  当前记录前面第n行记录的<列名>的值，没有则默认值为m；如果不带参数n,m，则查找当前记录前面第一行的记录<列名>的值，没有则默认值为null。

SELECT empno,
       ename,
       job,
       sal,
       LEAD(sal, 1, 0) OVER (ORDER BY sal) AS sal_next,
       LEAD(sal, 1, 0) OVER (ORDER BY sal) - sal AS sal_diff
FROM   emp;

     EMPNO ENAME      JOB              SAL   SAL_NEXT   SAL_DIFF
---------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK            800        950        150
      7900 JAMES      CLERK            950       1100        150
      7876 ADAMS      CLERK           1100       1250        150
      7521 WARD       SALESMAN        1250       1250          0
      7654 MARTIN     SALESMAN        1250       1300         50
      7934 MILLER     CLERK           1300       1500        200
      7844 TURNER     SALESMAN        1500       1600        100
      7499 ALLEN      SALESMAN        1600       2450        850
      7782 CLARK      MANAGER         2450       2850        400
      7698 BLAKE      MANAGER         2850       2975        125
      7566 JONES      MANAGER         2975       3000         25
      7788 SCOTT      ANALYST         3000       3000          0
      7902 FORD       ANALYST         3000       5000       2000
      7839 KING       PRESIDENT       5000          0      -5000





oracle 忘记sys，system密码

1：以管理员启动cmd命令，然后用cd命令进入到oracle服务端安装根目录中的bin目录内。

2：登陆SQL plus，命令（sqlplus /nolog）

3：alter user sys identified by sys; (把sys用户密码替换成sys)




















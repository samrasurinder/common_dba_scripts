--I see there were 5 failed login attempts by him yesterday. Please see below .


SELECT das.username,
       das.os_username,
       das.terminal,
       TO_CHAR(das.timeStamp,'DD Mon YYYY HH24:MI') timestamp,
       das.returnCode
  FROM sys.dba_audit_session das
WHERE das.timeStamp > SYSDATE-7
   and das.username = 'BADGATE'
   AND das.returnCode != 0;


--1              BADGATE            mf3162 FLD-JT24MG1    13 Feb 2012 17:14             28000
--2              BADGATE            mf3162 FLD-JT24MG1    13 Feb 2012 13:00             1017
--3              BADGATE            mf3162 FLD-JT24MG1    13 Feb 2012 13:00             1017
--4              BADGATE            mf3162 FLD-JT24MG1    13 Feb 2012 17:13             28000
--5              BADGATE            mf3162 FLD-JT24MG1    13 Feb 2012 13:00             1017

--Alpoor
-- find user that locked the account.
-- look for the row just before reurncode 28000 and you will get when,
-- which os user from which terminal the account got unlocked. 

SELECT username, account_status,lock_date, PROFILE FROM dba_users WHERE username='AHENDERSON02';
Select os_username, username,userhost,terminal,timestamp,action_name,logoff_time,RETURNCODE
from DBA_AUDIT_SESSION where username = 'INTPLUMTREE' and RETURNCODE in (1017,28000) 
and timeStamp > SYSDATE-1/2 order by timestamp desc;
SELECT das.username,
das.os_username,userhost,
das.terminal,
TO_CHAR(das.timeStamp,'DD Mon YYYY HH24:MI') timestamp,
das.returnCode
FROM sys.dba_audit_session das
WHERE das.timeStamp > SYSDATE-7
and das.username = 'RMAN'
AND das.returnCode != 0 order by 4 desc;


















-- Description




-- http://blog.yannickjaquier.com/oracle/who-is-locking-your-accounts-ora-01017-and-ora-28000-errors.html 




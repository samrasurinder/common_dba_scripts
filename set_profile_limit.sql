[?7/?9/?2019 1:38 PM]  Ntoko, Jonathan N:  
* For MASKED envs

set lines 200;
col USERNAME format a40;
col PROFILE format a40;
select name,open_mode from v$database;
select username,profile,account_status, lock_date, expiry_date from dba_users where expiry_date between '01-JUL-19' and '01-AUG-19';
select * from dba_profiles where resource_name like '%LIFE%';
alter profile HR_PROFILE_PSOFT limit PASSWORD_LIFE_TIME 399;
alter profile HR_PROFILE limit PASSWORD_LIFE_TIME 399;
alter profile DEFAULT limit PASSWORD_LIFE_TIME 399;
alter profile ADMIN limit PASSWORD_LIFE_TIME 399; 
select * from dba_profiles where resource_name like '%LIFE%'; 

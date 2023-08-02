set line 200
select name,open_mode from v$database;
select username,account_status ,profile from dba_users where username like '%SCHW%' ;
alter user SCHWIERRE identified by Schwierre01# ;
alter user SCHWIERRE account unlock ;
select username,account_status ,profile from dba_users where username like '%SCHW%' ;
conn SCHWIERRE/Schwierre01#
show user
select * from global_name;

-- Find sessions connected to a database
set line 200
col MACHINE for a26
col OSUSER for a24
COL USERNAME for a24
set pagesize 600
select
 s.machine,s.osuser,s.username,s.last_call_et,
 to_char(s.logon_time, 'mm/dd/yy hh24:mi:ss') logon_time,
 s.sid,s.serial#,p.spid,s.status
 from
 gv$session s
 JOIN gv$process p ON p.addr = s.paddr AND p.inst_id = s.inst_id
 where
 s.type != 'BACKGROUND'
 order by 1,2,3,4,5 ;

 

select username,machine,count(*) from v$session
group by username,machine
order by username
/
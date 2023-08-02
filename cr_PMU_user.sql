--- Create PMU user
CREATE USER admreddya1
  IDENTIFIED BY   password 
  DEFAULT TABLESPACE USERS
  TEMPORARY TABLESPACE TEMP
  PROFILE HR_PROFILE_USER
  ACCOUNT unLOCK;
  
grant create session to admreddya1;
grant execute on pmu.pkg_admin to admreddya1;
grant execute on pmu.pkg_log to admreddya1;
grant execute on pmu.pkg_main to admreddya1;
ALTER USER admreddya1 DEFAULT ROLE ALL;

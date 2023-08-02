CREATE USER ADMANAGHOSA
  IDENTIFIED BY mytemp_pass1234$ password expire
  DEFAULT TABLESPACE USERS
  TEMPORARY TABLESPACE TEMP
  PROFILE HR_PROFILE_USER
  ACCOUNT unLOCK;
  
grant create session to ADMANAGHOSA;
grant execute on pmu.pkg_admin to ADMANAGHOSA;
grant execute on pmu.pkg_log to ADMANAGHOSA;
grant execute on pmu.pkg_main to ADMANAGHOSA;
ALTER USER ADMANAGHOSA DEFAULT ROLE ALL;



-- USER SQL
CREATE USER GILMOREBS identified by Temppassword01#
DEFAULT TABLESPACE "USERS"
TEMPORARY TABLESPACE "TEMP"
profile HR_PROFILE_USER ;

-- ROLES
grant connect to GILMOREBS;
grant create session to GILMOREBS;
ALTER USER GILMOREBS DEFAULT ROLE "SYSADM_S";

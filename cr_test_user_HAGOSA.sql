create role SYSADM_S;
create role REPOLEVED;
-- USER SQL
CREATE USER "HAGOSA" identified by "Rockstar123#"
DEFAULT TABLESPACE "USERS"
TEMPORARY TABLESPACE "TEMP"
ACCOUNT UNLOCK ;
grant create session to HAGOSA;
grant "EXECUTE_CATALOG_ROLE","SYSADM_S","SELECT_CATALOG_ROLE","REPOLEVED" to "HAGOSA";
-- ALTER USER "HAGOSA" DEFAULT ROLE "EXECUTE_CATALOG_ROLE","SYSADM_S","SELECT_CATALOG_ROLE","REPOLEVED";

CREATE  USER "CHOWDHURYIM" identified by "Rockstar123#"
DEFAULT TABLESPACE "USERS"
TEMPORARY TABLESPACE "TEMP"
ACCOUNT UNLOCK ;
grant create session to "CHOWDHURYIM";
grant "EXECUTE_CATALOG_ROLE","SYSADM_S","SELECT_CATALOG_ROLE","REPOLEVED" to "CHOWDHURYIM";

CREATE  USER CareySM2 identified by "Rockstar123#"
DEFAULT TABLESPACE "USERS"
TEMPORARY TABLESPACE "TEMP"
ACCOUNT UNLOCK ;
grant create session to CareySM2;
grant "EXECUTE_CATALOG_ROLE","SYSADM_S","SELECT_CATALOG_ROLE","REPOLEVED" to CareySM2;

CREATE  USER PalazzoP identified by "Rockstar123#"
DEFAULT TABLESPACE "USERS"
TEMPORARY TABLESPACE "TEMP"
ACCOUNT UNLOCK ;
grant create session to PalazzoP;
grant "EXECUTE_CATALOG_ROLE","SYSADM_S","SELECT_CATALOG_ROLE","REPOLEVED" to "PalazzoP";

CREATE  USER Vott1 identified by "Rockstar123#"
DEFAULT TABLESPACE "USERS"
TEMPORARY TABLESPACE "TEMP"
ACCOUNT UNLOCK ;
grant create session to Vott1;
grant "EXECUTE_CATALOG_ROLE","SYSADM_S","SELECT_CATALOG_ROLE","REPOLEVED" to Vott1;

alter user HAGOSA password expire;
alter user CHOWDHURYIM password expire;
alter user CareySM2 password expire;
alter user PalazzoP password expire;
alter user Vott1 password expire;

set line 220
col GLOBAL_NAME for a35
select * from global_name;
col USERNAME for a35
select username,account_status from dba_users where username in ('HAGOSA','CHOWDHURYIM','CAREYSM2','PALAZZOP','VOTT1');
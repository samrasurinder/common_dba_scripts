-- Change  password with same one.
-- execute as SQL> @spf.sql system TRNPxxxxxxx
-- Forcibly set user password.
--
-- Arg1 - User
-- Arg2 - Password
--

SET VERIFY OFF FEEDBACK OFF

COLUMN profile    NEW_VALUE old_profile NOPRINT
COLUMN tmpprofcol NEW_VALUE tmp_profile NOPRINT

SELECT profile, SUBSTR( 'x_' || username, 1, 30 ) tmpprofcol
  FROM dba_users WHERE username = UPPER( '&1' );

SET FEEDBACK ON

CREATE PROFILE &&tmp_profile LIMIT
	PASSWORD_REUSE_MAX  UNLIMITED
	PASSWORD_REUSE_TIME UNLIMITED
	PASSWORD_VERIFY_FUNCTION NULL;

ALTER USER &1 PROFILE &&tmp_profile;

ALTER USER &1 IDENTIFIED BY &2;

ALTER USER &1 PROFILE &&old_profile;

DROP PROFILE &&tmp_profile CASCADE;

CLEAR COLUMN
UNDEFINE tmp_profile

SET VERIFY ON 

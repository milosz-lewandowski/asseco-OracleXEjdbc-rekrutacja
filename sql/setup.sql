ALTER SESSION set "_ORACLE_SCRIPT"=true;
CREATE USER asseco IDENTIFIED BY asseco;
GRANT CONNECT, RESOURCE TO asseco;

-- Possible issues:
-- 1. To start oracle XE listener use `lsnrctl start`
-- 2. To login to the database in sqlplus mode use:
--    1. `sqlplus /nolog`
--    2. `connect SYS@XE as SYSDBA`
-- 3. HR schema script requires creating user. To unlock creating user do `alter session set "_ORACLE_SCRIPT"=true;`
-- 4. Script @?/demo/schema/human_resources/hr_main.sql contains a mistake: password cannot contain digits or special characters.
-- 5. To remove malformed hr schema use @?/demo/schema/human_resources/hr_drop.sql
-- 6. JDBC and other drivers may require 0.0.0.0 instead of localhost



CREATE DATABASE complisolv_updates_amlan;

-- See all the table names under a schema
SELECT TABLE_NAME
FROM information_schema.TABLES 
WHERE TABLE_SCHEMA = 'complisolv_updates';


-- Generate RENAME statements for all tables
SELECT CONCAT('RENAME TABLE complisolv_updates.', TABLE_NAME, 
              ' TO complisolv_updates_amlan.', TABLE_NAME, ';')
FROM information_schema.TABLES 
WHERE TABLE_SCHEMA = 'complisolv_updates';

-- Export the output to a CSV file and get the clean statements after removing the "
-- These statements will move all the tables from the old schema to the new schema
RENAME TABLE complisolv_updates.author TO complisolv_updates_amlan.author;
RENAME TABLE complisolv_updates.bill_key TO complisolv_updates_amlan.bill_key;
RENAME TABLE complisolv_updates.bill_profile TO complisolv_updates_amlan.bill_profile;
RENAME TABLE complisolv_updates.bill_tag TO complisolv_updates_amlan.bill_tag;
RENAME TABLE complisolv_updates.citation TO complisolv_updates_amlan.citation;
RENAME TABLE complisolv_updates.citation_updates TO complisolv_updates_amlan.citation_updates;
RENAME TABLE complisolv_updates.code_impact TO complisolv_updates_amlan.code_impact;
RENAME TABLE complisolv_updates.final_status TO complisolv_updates_amlan.final_status;
RENAME TABLE complisolv_updates.rdoc_key TO complisolv_updates_amlan.rdoc_key;
RENAME TABLE complisolv_updates.rdoc_profile TO complisolv_updates_amlan.rdoc_profile;
RENAME TABLE complisolv_updates.rdoc_reg_tag TO complisolv_updates_amlan.rdoc_reg_tag;
RENAME TABLE complisolv_updates.reg_key TO complisolv_updates_amlan.reg_key;
RENAME TABLE complisolv_updates.reg_profile TO complisolv_updates_amlan.reg_profile;
RENAME TABLE complisolv_updates.reg_status_action TO complisolv_updates_amlan.reg_status_action;
RENAME TABLE complisolv_updates.reg_tag TO complisolv_updates_amlan.reg_tag;
RENAME TABLE complisolv_updates.status_action TO complisolv_updates_amlan.status_action;
RENAME TABLE complisolv_updates.upload_file TO complisolv_updates_amlan.upload_file;

-- This is an amazing thing I learned today

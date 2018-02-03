-- alter table CEUPA_COURSE add column GRADE_ID varchar(36) ^
-- update CEUPA_COURSE set GRADE_ID = <default_value> ;
-- alter table CEUPA_COURSE alter column GRADE_ID set not null ;
alter table CEUPA_COURSE add column GRADE_ID varchar(36) not null ;

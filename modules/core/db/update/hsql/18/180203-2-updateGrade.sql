alter table CEUPA_GRADE add column GRADE_NUMBER integer ^
update CEUPA_GRADE set GRADE_NUMBER = 0 where GRADE_NUMBER is null ;
alter table CEUPA_GRADE alter column GRADE_NUMBER set not null ;

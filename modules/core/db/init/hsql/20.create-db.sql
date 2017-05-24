-- begin CEUPA_PERSON
alter table CEUPA_PERSON add constraint FK_CEUPA_PERSON_USER foreign key (USER_ID) references SEC_USER(ID)^
create index IDX_CEUPA_PERSON_USER on CEUPA_PERSON (USER_ID)^
-- end CEUPA_PERSON
-- begin CEUPA_TEACHER
alter table CEUPA_TEACHER add constraint FK_CEUPA_TEACHER_ID foreign key (ID) references CEUPA_PERSON(ID)^
-- end CEUPA_TEACHER
-- begin CEUPA_PARENT
alter table CEUPA_PARENT add constraint FK_CEUPA_PARENT_ID foreign key (ID) references CEUPA_PERSON(ID)^
-- end CEUPA_PARENT
-- begin CEUPA_TEACHER_GRADE_LINK
alter table CEUPA_TEACHER_GRADE_LINK add constraint FK_CTGL_GRADE foreign key (GRADE_ID) references CEUPA_GRADE(ID)^
alter table CEUPA_TEACHER_GRADE_LINK add constraint FK_CTGL_TEACHER foreign key (TEACHER_ID) references CEUPA_TEACHER(ID)^
-- end CEUPA_TEACHER_GRADE_LINK

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

-- begin CEUPA_STUDENT
alter table CEUPA_STUDENT add constraint FK_CEUPA_STUDENT_GRADE foreign key (GRADE_ID) references CEUPA_GRADE(ID)^
alter table CEUPA_STUDENT add constraint FK_CEUPA_STUDENT_ID foreign key (ID) references CEUPA_PERSON(ID)^
create index IDX_CEUPA_STUDENT_GRADE on CEUPA_STUDENT (GRADE_ID)^
-- end CEUPA_STUDENT
-- begin CEUPA_COURSE
alter table CEUPA_COURSE add constraint FK_CEUPA_COURSE_TEACHER foreign key (TEACHER_ID) references CEUPA_TEACHER(ID)^
alter table CEUPA_COURSE add constraint FK_CEUPA_COURSE_GRADE foreign key (GRADE_ID) references CEUPA_GRADE(ID)^
create index IDX_CEUPA_COURSE_TEACHER on CEUPA_COURSE (TEACHER_ID)^
create index IDX_CEUPA_COURSE_GRADE on CEUPA_COURSE (GRADE_ID)^
-- end CEUPA_COURSE

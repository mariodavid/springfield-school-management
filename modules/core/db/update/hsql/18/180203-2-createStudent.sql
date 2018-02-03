alter table CEUPA_STUDENT add constraint FK_CEUPA_STUDENT_GRADE foreign key (GRADE_ID) references CEUPA_GRADE(ID);
alter table CEUPA_STUDENT add constraint FK_CEUPA_STUDENT_ID foreign key (ID) references CEUPA_PERSON(ID);
create index IDX_CEUPA_STUDENT_GRADE on CEUPA_STUDENT (GRADE_ID);

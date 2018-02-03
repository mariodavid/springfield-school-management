alter table CEUPA_COURSE add constraint FK_CEUPA_COURSE_GRADE foreign key (GRADE_ID) references CEUPA_GRADE(ID);
create index IDX_CEUPA_COURSE_GRADE on CEUPA_COURSE (GRADE_ID);

alter table CEUPA_EXAM add constraint FK_CEUPA_EXAM_COURSE foreign key (COURSE_ID) references CEUPA_COURSE(ID);
create index IDX_CEUPA_EXAM_COURSE on CEUPA_EXAM (COURSE_ID);

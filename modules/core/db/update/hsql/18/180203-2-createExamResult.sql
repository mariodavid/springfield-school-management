alter table CEUPA_EXAM_RESULT add constraint FK_CEUPA_EXAM_RESULT_EXAM foreign key (EXAM_ID) references CEUPA_EXAM(ID);
alter table CEUPA_EXAM_RESULT add constraint FK_CEUPA_EXAM_RESULT_STUDENT foreign key (STUDENT_ID) references CEUPA_STUDENT(ID);
create index IDX_CEUPA_EXAM_RESULT_EXAM on CEUPA_EXAM_RESULT (EXAM_ID);
create index IDX_CEUPA_EXAM_RESULT_STUDENT on CEUPA_EXAM_RESULT (STUDENT_ID);

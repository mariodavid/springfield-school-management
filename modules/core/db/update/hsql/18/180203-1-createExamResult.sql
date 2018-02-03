create table CEUPA_EXAM_RESULT (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    EXAM_ID varchar(36) not null,
    STUDENT_ID varchar(36) not null,
    RESULT_ integer not null,
    --
    primary key (ID)
);

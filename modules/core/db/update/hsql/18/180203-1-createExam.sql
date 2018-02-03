create table CEUPA_EXAM (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    COURSE_ID varchar(36) not null,
    TOPIC varchar(255) not null,
    EXAMINATION_DATE date not null,
    --
    primary key (ID)
);

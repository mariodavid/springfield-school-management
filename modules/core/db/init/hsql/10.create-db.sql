-- begin CEUPA_PERSON
create table CEUPA_PERSON (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    DTYPE varchar(31),
    --
    NAME varchar(255) not null,
    USER_ID varchar(36),
    --
    primary key (ID)
)^
-- end CEUPA_PERSON
-- begin CEUPA_TEACHER
create table CEUPA_TEACHER (
    ID varchar(36) not null,
    --
    TYPE_ varchar(50) not null,
    --
    primary key (ID)
)^
-- end CEUPA_TEACHER
-- begin CEUPA_GRADE
create table CEUPA_GRADE (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255),
    --
    primary key (ID)
)^
-- end CEUPA_GRADE
-- begin CEUPA_PARENT
create table CEUPA_PARENT (
    ID varchar(36) not null,
    --
    PHONE varchar(255) not null,
    EMAIL varchar(255) not null,
    --
    primary key (ID)
)^
-- end CEUPA_PARENT
-- begin CEUPA_TEACHER_GRADE_LINK
create table CEUPA_TEACHER_GRADE_LINK (
    GRADE_ID varchar(36) not null,
    TEACHER_ID varchar(36) not null,
    primary key (GRADE_ID, TEACHER_ID)
)^
-- end CEUPA_TEACHER_GRADE_LINK

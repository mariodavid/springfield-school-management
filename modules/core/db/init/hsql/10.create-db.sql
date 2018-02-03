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
    GRADE_NUMBER integer not null,
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

-- begin CEUPA_STUDENT
create table CEUPA_STUDENT (
    ID varchar(36) not null,
    --
    GRADE_ID varchar(36) not null,
    --
    primary key (ID)
)^
-- end CEUPA_STUDENT
-- begin CEUPA_COURSE
create table CEUPA_COURSE (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255) not null,
    TEACHER_ID varchar(36) not null,
    GRADE_ID varchar(36) not null,
    --
    primary key (ID)
)^
-- end CEUPA_COURSE
-- begin CEUPA_EXAM
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
)^
-- end CEUPA_EXAM
-- begin CEUPA_EXAM_RESULT
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
)^
-- end CEUPA_EXAM_RESULT

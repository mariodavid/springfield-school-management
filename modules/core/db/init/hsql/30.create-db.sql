------------------------------------------------------------------------------------------------------------
-- Grades
------------------------------------------------------------------------------------------------------------

insert into CEUPA_GRADE
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME)
values ('50d82a22-76da-3635-caf1-78525a9b19ef', 1, '2017-05-24 19:05:33', 'admin', '2017-05-24 19:05:33', null, null, null, 'Lisa''s 2nd Grade');

insert into CEUPA_GRADE
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME)
values ('c42974e3-73f9-db78-c405-c150e94a0eff', 2, '2017-05-24 19:04:27', 'admin', '2017-05-24 19:08:48', 'admin', null, null, 'Bart''s 4th Grade');


------------------------------------------------------------------------------------------------------------
-- Users
------------------------------------------------------------------------------------------------------------

insert into SEC_USER
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, LOGIN, LOGIN_LC, PASSWORD, NAME, FIRST_NAME, LAST_NAME, MIDDLE_NAME, POSITION_, EMAIL, LANGUAGE_, TIME_ZONE, TIME_ZONE_AUTO, ACTIVE, CHANGE_PASSWORD_AT_LOGON, GROUP_ID, IP_MASK)
values ('0c969c76-8448-ce6e-be40-bb824aee9337', 1, '2017-05-24 19:01:50', 'admin', '2017-05-24 19:01:50', null, null, null, 'marge', 'marge', '21b4dabd90dda086acc885208dab46bedc609646', 'Marge Simpson', 'Marge', 'Simpson', null, null, null, 'en', null, null, true, false, '0fa2b1a5-1d68-4d69-9fbd-dff348347f93', null);
insert into SEC_USER
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, LOGIN, LOGIN_LC, PASSWORD, NAME, FIRST_NAME, LAST_NAME, MIDDLE_NAME, POSITION_, EMAIL, LANGUAGE_, TIME_ZONE, TIME_ZONE_AUTO, ACTIVE, CHANGE_PASSWORD_AT_LOGON, GROUP_ID, IP_MASK)
values ('c19bfe90-6a10-e90b-ab69-61815d46cf0f', 2, '2017-05-24 18:59:09', 'admin', '2017-05-24 19:01:58', 'admin', null, null, 'homer', 'homer', 'c04a2c2676cc1f401ad2e3d3e75fb7e1ddf6914d', 'Homer Simpson', 'Homer', 'Simpson', null, null, null, 'en', null, null, true, false, '0fa2b1a5-1d68-4d69-9fbd-dff348347f93', null);
insert into SEC_USER
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, LOGIN, LOGIN_LC, PASSWORD, NAME, FIRST_NAME, LAST_NAME, MIDDLE_NAME, POSITION_, EMAIL, LANGUAGE_, TIME_ZONE, TIME_ZONE_AUTO, ACTIVE, CHANGE_PASSWORD_AT_LOGON, GROUP_ID, IP_MASK)
values ('c7b4141c-fc21-acae-06e2-f98d5dd077a8', 1, '2017-05-24 19:03:02', 'admin', '2017-05-24 19:03:02', null, null, null, 'edna', 'edna', '6d998af43b3dbc78a13cf87e771c30be0b2a6f62', 'Edna Krabappel', 'Edna', 'Krabappel', null, null, null, 'en', null, null, true, false, '0fa2b1a5-1d68-4d69-9fbd-dff348347f93', null);
insert into SEC_USER
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, LOGIN, LOGIN_LC, PASSWORD, NAME, FIRST_NAME, LAST_NAME, MIDDLE_NAME, POSITION_, EMAIL, LANGUAGE_, TIME_ZONE, TIME_ZONE_AUTO, ACTIVE, CHANGE_PASSWORD_AT_LOGON, GROUP_ID, IP_MASK)
values ('d03ad74b-e3be-919f-5745-a61c2c9ff628', 1, '2017-05-24 19:08:08', 'admin', '2017-05-24 19:08:08', null, null, null, 'dewey', 'dewey', 'bd0117d7aa35036d55c33f5a7263a6b3b88fbbe9', 'Dewey Largo', 'Dewey', 'Largo', null, null, null, 'en', null, null, true, false, '0fa2b1a5-1d68-4d69-9fbd-dff348347f93', null);
insert into SEC_USER
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, LOGIN, LOGIN_LC, PASSWORD, NAME, FIRST_NAME, LAST_NAME, MIDDLE_NAME, POSITION_, EMAIL, LANGUAGE_, TIME_ZONE, TIME_ZONE_AUTO, ACTIVE, CHANGE_PASSWORD_AT_LOGON, GROUP_ID, IP_MASK)
values ('ec0a970e-3b5c-ff9d-278f-cfba13203009', 1, '2017-05-24 19:07:08', 'admin', '2017-05-24 19:07:08', null, null, null, 'elizabeth', 'elizabeth', '8d2efb00eb63d4761d4cea0b546925e9073ec6d7', 'Elizabeth Hoover', 'Elizabeth', 'Hoover', null, null, null, 'en', null, null, true, false, '0fa2b1a5-1d68-4d69-9fbd-dff348347f93', null);


------------------------------------------------------------------------------------------------------------
-- Parents
------------------------------------------------------------------------------------------------------------

insert into CEUPA_PERSON
(DTYPE, ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, USER_ID)
values ('ceupa$Parent', '40e2406b-3aad-c2df-df18-f5d6d99e1efc', 1, '2017-05-24 19:01:09', 'admin', '2017-05-24 19:01:09', null, null, null, 'Homer Simpson', 'c19bfe90-6a10-e90b-ab69-61815d46cf0f');
insert into CEUPA_PARENT
(ID, PHONE, EMAIL)
values ('40e2406b-3aad-c2df-df18-f5d6d99e1efc', '01612767162', 'homer@simpsons.com');

insert into CEUPA_PERSON
(DTYPE, ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, USER_ID)
values ('ceupa$Parent', 'cf593c45-e5e0-6100-64d8-7ef596df0b32', 1, '2017-05-24 19:02:19', 'admin', '2017-05-24 19:02:19', null, null, null, 'Marge Simpson', '0c969c76-8448-ce6e-be40-bb824aee9337');
insert into CEUPA_PARENT
(ID, PHONE, EMAIL)
values ('cf593c45-e5e0-6100-64d8-7ef596df0b32', '78342349792', 'marge@simpsons.com');



------------------------------------------------------------------------------------------------------------
-- Teachers
------------------------------------------------------------------------------------------------------------

insert into CEUPA_PERSON
(DTYPE, ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, USER_ID)
values ('ceupa$Teacher', '432f89e4-4110-d04f-a254-5c9c2cc9c529', 2, '2017-05-24 19:08:38', 'admin', '2017-05-24 19:11:32', 'admin', null, null, 'Dewey Largo', 'd03ad74b-e3be-919f-5745-a61c2c9ff628');
insert into CEUPA_TEACHER
(ID, TYPE_)
values ('432f89e4-4110-d04f-a254-5c9c2cc9c529', 'MUSIC');
insert into CEUPA_PERSON
(DTYPE, ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, USER_ID)
values ('ceupa$Teacher', 'cd1b7589-64fb-c206-29a5-e8526033dfb9', 1, '2017-05-24 19:04:29', 'admin', '2017-05-24 19:04:29', null, null, null, 'Edna Krabappel', 'c7b4141c-fc21-acae-06e2-f98d5dd077a8');
insert into CEUPA_TEACHER
(ID, TYPE_)
values ('cd1b7589-64fb-c206-29a5-e8526033dfb9', 'ENGLISH');
insert into CEUPA_PERSON
(DTYPE, ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, USER_ID)
values ('ceupa$Teacher', 'f7fd0e4b-2bfc-bafe-8c13-1e997cc7a337', 2, '2017-05-24 19:05:37', 'admin', '2017-05-24 19:07:16', 'admin', null, null, 'Elizabeth Hoover', 'ec0a970e-3b5c-ff9d-278f-cfba13203009');
insert into CEUPA_TEACHER
(ID, TYPE_)
values ('f7fd0e4b-2bfc-bafe-8c13-1e997cc7a337', 'SPORT');

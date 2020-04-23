/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2020/4/21 18:28:52                           */
/*==============================================================*/


drop table if exists T_ACTIVITY_HIASTORY;

drop table if exists T_ACTIVITY_HIASTORY_DETAIL;

drop table if exists T_ACTIVITY_PROPERTY;

drop table if exists T_ACTIVITY_VALUE;

drop table if exists T_ACTIVITY_VALUE_HISTORY;

drop table if exists T_ALL_ACTIVITY_PROPERTY;

drop table if exists T_ALL_ASSOCAIATION_PROPERTY;

drop table if exists T_ASSAIATION_APPLY;

drop table if exists T_ASSAIATION_APPLY_HISTORY;

drop table if exists T_ASSOAIATION_VALUE;

drop table if exists T_ASSOCAIATION;

drop table if exists T_ASSOCAIATION_PROPERTY;

drop table if exists T_CONTROL_DEPT;

drop table if exists T_DEPARTMENT;

drop table if exists T_DICT;

drop table if exists T_FIXTIION——ACTIVITY;

drop table if exists T_MANAGER;

drop table if exists T_MANAGER_ROLE;

drop table if exists T_MENU;

drop table if exists T_PERSON;

drop table if exists T_RESOURCE;

drop table if exists T_RESOURCE_GRAPH;

drop table if exists T_ROLE;

drop table if exists T_ROLE_MENU;

/*==============================================================*/
/* Table: T_ACTIVITY_HIASTORY                                   */
/*==============================================================*/
create table T_ACTIVITY_HIASTORY
(
  C_ID                 VARCHAR(32) not null,
  C_DEPT_ID            VARCHAR(32),
  C_ASSOCAIATION_ID    VARCHAR(32),
  N_BEING_STATE        integer(2),
  N_START_TIMESTAMP    integer(20),
  N_END_TIMESTAMP      integer(20),
  C_LNG_LAT            VARCHAR(256),
  N_STATE              integer(2),
  C_COMMON             VARCHAR(320),
  C_BELONG_DEPT_ID     VARCHAR(512) not null,
  C_CREATER_ID         VARCHAR(32) not null,
  C_PHONE              VARCHAR(32) not null,
  C_SOURCE_ID          VARCHAR(32),
  NEED_ORDER           integer(2),
  N_CAPACITY           integer(10),
  N_REMAIN_CAPACITY    integer(10),
  PRIMARY KEY (`C_ID`) USING BTREE
);

/*==============================================================*/
/* Table: T_ACTIVITY_HIASTORY_DETAIL                            */
/*==============================================================*/
create table T_ACTIVITY_HIASTORY_DETAIL
(
  C_ID                 VARCHAR(32) not null,
  C_ACTIVITY_HIASTORY_ID VARCHAR(32),
  C_PERSON_ID          VARCHAR(32),
  N_STATE              integer(2),
  N_START_TIMESTAMP    integer(20),
  N_END_TIMESTAMP      integer(20),
  C_LNG_LAT            VARCHAR(256),
  PRIMARY KEY (`C_ID`) USING BTREE
);

/*==============================================================*/
/* Table: T_ACTIVITY_PROPERTY                                   */
/*==============================================================*/
create table T_ACTIVITY_PROPERTY
(
  C_ID                 VARCHAR(32) not null,
  C_NAME               VARCHAR(32) not null,
  N_CREATE_TIMESTAMP   integer(20) not null,
  N_UPDATE_TIMESTAMP   integer(20) not null,
  N_STATE              integer(2) not null,
  C_ASSOAIATION_ID     VARCHAR(32),
  PRIMARY KEY (`C_ID`) USING BTREE
);

/*==============================================================*/
/* Table: T_ACTIVITY_VALUE                                      */
/*==============================================================*/
create table T_ACTIVITY_VALUE
(
  C_ID                 VARCHAR(32) not null,
  C_VALUE              VARCHAR(32) not null,
  C_CODE               VARCHAR(32) not null,
  C_BEING_TIME         VARCHAR(32) not null,
  PRIMARY KEY (`C_ID`) USING BTREE
);

/*==============================================================*/
/* Table: T_ACTIVITY_VALUE_HISTORY                              */
/*==============================================================*/
create table T_ACTIVITY_VALUE_HISTORY
(
  C_ID                 VARCHAR(32) not null,
  C_VALUE              VARCHAR(32) not null,
  C_CODE               VARCHAR(32) not null,
  C_BEING_TIME         VARCHAR(32) not null,
  PRIMARY KEY (`C_ID`) USING BTREE
);

/*==============================================================*/
/* Table: T_ALL_ACTIVITY_PROPERTY                               */
/*==============================================================*/
create table T_ALL_ACTIVITY_PROPERTY
(
  C_ID                 VARCHAR(32) not null,
  C_NAME               VARCHAR(32) not null,
  N_CREATE_TIMESTAMP   integer(20) not null,
  N_UPDATE_TIMESTAMP   integer(20) not null,
  N_STATE              integer(2) not null,
  C_ASSOAIATION_ID     VARCHAR(32),
  PRIMARY KEY (`C_ID`) USING BTREE
);

/*==============================================================*/
/* Table: T_ALL_ASSOCAIATION_PROPERTY                           */
/*==============================================================*/
create table T_ALL_ASSOCAIATION_PROPERTY
(
  C_ID                 VARCHAR(32) not null,
  C_ASSOAICATION_ID    VARCHAR(32) not null,
  C_ITEM               VARCHAR(32),
  C_CREATER_ID         VARCHAR(32) not null,
  N_IS_SEARCH          integer(2),
  C_CODE               integer(2),
  N_IS_KEY             integer(2),
  PRIMARY KEY (`C_ID`) USING BTREE
);

/*==============================================================*/
/* Table: T_ASSAIATION_APPLY                                    */
/*==============================================================*/
create table T_ASSAIATION_APPLY
(
  C_ID                 VARCHAR(32) not null,
  C_ASSAIATION_ID      VARCHAR(32) not null,
  C_APPLY_TIME         VARCHAR(32) not null,
  C_APPROVE_TIME       VARCHAR(32) not null,
  N_STATE              integer(2),
  C_CRETOR_ID          VARCHAR(32),
  PRIMARY KEY (`C_ID`) USING BTREE
);

/*==============================================================*/
/* Table: T_ASSAIATION_APPLY_HISTORY                            */
/*==============================================================*/
create table T_ASSAIATION_APPLY_HISTORY
(
  C_ID                 VARCHAR(32) not null,
  C_ASSAIATION_ID      VARCHAR(32) not null,
  C_APPLY_TIME         VARCHAR(32) not null,
  C_APPROVE_TIME       VARCHAR(32) not null,
  N_STATE              integer(2),
  C_CRETOR_ID          VARCHAR(32),
  PRIMARY KEY (`C_ID`) USING BTREE
);

/*==============================================================*/
/* Table: T_ASSOAIATION_VALUE                                   */
/*==============================================================*/
create table T_ASSOAIATION_VALUE
(
  C_ID                 VARCHAR(32) not null,
  C_TYPE               VARCHAR(32) not null,
  N_CREATE_TIMESTAMP   integer(20) not null,
  N_UPDATE_TIMESTAMP   integer(20) not null,
  C_CREATER_ID         VARCHAR(32) not null,
  C_ICON_URL           VARCHAR(64),
  N_STATE              integer(2) not null,
  PRIMARY KEY (`C_ID`) USING BTREE
);

/*==============================================================*/
/* Table: T_ASSOCAIATION                                        */
/*==============================================================*/
create table T_ASSOCAIATION
(
  C_ID                 VARCHAR(32) not null,
  C_NAME               VARCHAR(64) not null,
  N_CREATE_TIMESTAMP   integer(20) not null,
  N_UPDATE_TIMESTAMP   integer(20) not null,
  C_CREATER_ID         VARCHAR(32) not null,
  C_ICON_URL           VARCHAR(64),
  N_STATE              integer(2) not null,
  C_COLLAEGE_ID        VARCHAR(32),
  C_LNG_LAT            VARCHAR(256),
  PRIMARY KEY (`C_ID`) USING BTREE
);

/*==============================================================*/
/* Table: T_ASSOCAIATION_PROPERTY                               */
/*==============================================================*/
create table T_ASSOCAIATION_PROPERTY
(
  C_ID                 VARCHAR(32) not null,
  C_ASSOAICATION_ID    VARCHAR(32) not null,
  C_ITEM               VARCHAR(32),
  C_CREATER_ID         VARCHAR(32) not null,
  N_IS_SEARCH          integer(2),
  C_CODE               integer(2),
  N_CANEDIT            integer(2),
  PRIMARY KEY (`C_ID`) USING BTREE
);

/*==============================================================*/
/* Table: T_CONTROL_DEPT                                        */
/*==============================================================*/
create table T_CONTROL_DEPT
(
  C_ID                 VARCHAR(32) not null,
  C_MANAGER_ID         VARCHAR(32) not null,
  C_DEPT_ID            VARCHAR(32) not null,
  PRIMARY KEY (`C_ID`) USING BTREE
);

/*==============================================================*/
/* Table: T_DEPARTMENT                                          */
/*==============================================================*/
create table T_DEPARTMENT
(
  C_ID                 VARCHAR(32) not null,
  C_NAME               VARCHAR(256) not null,
  C_PARENT_ID          VARCHAR(32),
  C_GRADE              VARCHAR(8),
  C_TREE_ID            VARCHAR(1024) not null,
  C_TREE_CODE          VARCHAR(1024) not null,
  N_UPDATE_TIMESTAMP   integer(19) not null,
  C_STATE              VARCHAR(1) not null,
  N_ORDER_NUM          integer(19),
  C_CODE               VARCHAR(32) not null,
  PRIMARY KEY (`C_ID`) USING BTREE
);

/*==============================================================*/
/* Table: T_DICT                                                */
/*==============================================================*/
create table T_DICT
(
  C_ID                 VARCHAR(32) not null,
  C_NAME               VARCHAR(256) not null,
  C_CODE               VARCHAR(32) not null,
  C_TYPE_CODE          VARCHAR(32),
  C_ORDER_NUM          integer(19),
  C_ICON_URL           VARCHAR(64),
  N_STATE              integer(2) not null,
  PRIMARY KEY (`C_ID`) USING BTREE
);

/*==============================================================*/
/* Table: T_FIXTIION——ACTIVITY                                  */
/*==============================================================*/
create table T_FIXTIION——ACTIVITY
(
  C_ID                 VARCHAR(32) not null,
  C_NAME               VARCHAR(256) not null,
  C_ASSCAIATION_ID     VARCHAR(64),
  C_BELONG_DEPT_ID     VARCHAR(512) not null,
  N_CREATE_TIMESTAMP   integer(20) not null,
  N_UPDATE_TIMESTAMP   integer(20) not null,
  C_CREATER_ID         VARCHAR(32) not null,
  C_PHONE              VARCHAR(32) not null,
  N_STATE              integer(2) not null,
  C_SOURCE_ID          VARCHAR(32),
  N_START_TIMESTAMP    integer(20),
  N_END_TIMESTAMP      integer(20),
  NEED_ORDER           integer(2),
  N_CAPACITY           integer(10),
  N_REMAIN_CAPACITY    integer(10),
  PRIMARY KEY (`C_ID`) USING BTREE
  );

/*==============================================================*/
/* Table: T_MANAGER                                             */
/*==============================================================*/
create table T_MANAGER
(
  C_ID                 VARCHAR(32) not null,
  C_PERSON_ID          VARCHAR(32) not null,
  N_CREATE_TIMESTAMP   integer(20) not null,
  N_UPDATE_TIMESTAMP   integer(20) not null,
  PRIMARY KEY (`C_ID`) USING BTREE
);

/*==============================================================*/
/* Table: T_MANAGER_ROLE                                        */
/*==============================================================*/
create table T_MANAGER_ROLE
(
  C_ID                 VARCHAR(32) not null,
  C_MANAGER_ID         VARCHAR(32) not null,
  C_ROLE_ID            VARCHAR(32) not null,
  PRIMARY KEY (`C_ID`) USING BTREE
);

/*==============================================================*/
/* Table: T_MENU                                                */
/*==============================================================*/
create table T_MENU
(
  C_ID                 VARCHAR(32) not null,
  C_NAME               VARCHAR(256) not null,
  C_CODE               VARCHAR(32) not null,
  C_PARENT_ID          VARCHAR(32),
  C_ORDER_NUM          integer(19),
  C_ICON               VARCHAR(64),
  C_TYPE               integer(2),
  C_URL                VARCHAR(64),
  N_BE_USED            integer(2) not null,
  N_CAN_EDIT           integer(2) not null,
  PRIMARY KEY (`C_ID`) USING BTREE
);

/*==============================================================*/
/* Table: T_PERSON                                              */
/*==============================================================*/
create table T_PERSON
(
  C_ID                 VARCHAR(32) not null,
  C_NAME               VARCHAR(20) not null,
  C_CODE               VARCHAR(32) not null,
  C_IDENTIFIER         VARCHAR(20),
  N_UPDATE_TIMESTAMP   integer(20) not null,
  C_STATE              VARCHAR(1) not null,
  C_MOBILE             VARCHAR(255) not null,
  C_OFFICE_PHONE       VARCHAR(21),
  N_ORDER_NUM          integer(19),
  C_PASSWORD           VARCHAR(128) not null,
  C_POSITION           VARCHAR(5),
  C_SEX                VARCHAR(1),
  C_JOB                VARCHAR(256),
  C_COLLEAGE_ID        VARCHAR(32),
  C_NOTE               VARCHAR(400),
  PRIMARY KEY (`C_ID`) USING BTREE
);

/*==============================================================*/
/* Table: T_RESOURCE                                            */
/*==============================================================*/
create table T_RESOURCE
(
  C_ID                 VARCHAR(32) not null,
  C_NAME               VARCHAR(256) not null,
  C_PARENT_ID          VARCHAR(32),
  C_GRADE              VARCHAR(8),
  C_TREE_ID            VARCHAR(1024) not null,
  C_TREE_CODE          VARCHAR(1024) not null,
  N_UPDATE_TIMESTAMP   integer(19) not null,
  C_STATE              VARCHAR(1) not null,
  N_ORDER_NUM          integer(19),
  C_CODE               VARCHAR(32) not null,
  PRIMARY KEY (`C_ID`) USING BTREE
);

/*==============================================================*/
/* Table: T_RESOURCE_GRAPH                                      */
/*==============================================================*/
create table T_RESOURCE_GRAPH
(
  C_ID                 VARCHAR(32) not null,
  C_NAME               VARCHAR(256) not null,
  N_UPDATE_TIMESTAMP   integer(19) not null,
  C_STATE              VARCHAR(1) not null,
  C_GRAPH              BLOB (65535) not null,
  C_LNG_LAT            VARCHAR(256),
  PRIMARY KEY (`C_ID`) USING BTREE
);

/*==============================================================*/
/* Table: T_ROLE                                                */
/*==============================================================*/
create table T_ROLE
(
  C_ID                 VARCHAR(32) not null,
  C_NAME               VARCHAR(256) not null,
  N_CAN_EDIT           integer(2) not null,
  N_CREATE_TIMESTAMP   integer(20) not null,
  N_UPDATE_TIMESTAMP   integer(20) not null,
  PRIMARY KEY (`C_ID`) USING BTREE
);

/*==============================================================*/
/* Table: T_ROLE_MENU                                           */
/*==============================================================*/
create table T_ROLE_MENU
(
  C_ID                 VARCHAR(32) not null,
  C_ROLE_ID            VARCHAR(32) not null,
  C_MENU_ID            VARCHAR(32),
  N_CAN_EDIT           integer(2),
  PRIMARY KEY (`C_ID`) USING BTREE
);


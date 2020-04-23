/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2020/4/23 9:31:00                            */
/*==============================================================*/


drop table T_ACTIVITY_HIASTORY cascade constraints;

drop table T_ACTIVITY_HIASTORY_DETAIL cascade constraints;

drop table T_ACTIVITY_PROPERTY cascade constraints;

drop table T_ACTIVITY_VALUE cascade constraints;

drop table T_ACTIVITY_VALUE_HISTORY cascade constraints;

drop table T_ALL_ACTIVITY_PROPERTY cascade constraints;

drop table T_ALL_ASSOCAIATION_PROPERTY cascade constraints;

drop table T_APPLY cascade constraints;

drop table T_ASSAIATION_APPLY_HISTORY cascade constraints;

drop table T_ASSOAIATION_VALUE cascade constraints;

drop table T_ASSOCAIATION cascade constraints;

drop table T_ASSOCAIATION_PROPERTY cascade constraints;

drop table T_CONTROL_DEPT cascade constraints;

drop table T_DEPARTMENT cascade constraints;

drop table T_DICT cascade constraints;

drop table T_FIXTIION——ACTIVITY cascade constraints;

drop table T_FOREVER_APPLY cascade constraints;

drop table T_MANAGER cascade constraints;

drop table T_MANAGER_ROLE cascade constraints;

drop table T_MENU cascade constraints;

drop table T_ORDER_APPLY cascade constraints;

drop table T_PASS_RESOURCE cascade constraints;

drop table T_PERSON cascade constraints;

drop table T_RESOURCE cascade constraints;

drop table T_RESOURCE_GRAPH cascade constraints;

drop table T_ROLE cascade constraints;

drop table T_ROLE_MENU cascade constraints;

/*==============================================================*/
/* Table: T_ACTIVITY_HIASTORY                                   */
/*==============================================================*/
create table T_ACTIVITY_HIASTORY
(
  C_ID                 VARCHAR2(32)         not null,
  C_DEPT_ID            VARCHAR2(32),
  C_ASSOCAIATION_ID    VARCHAR2(32),
  N_BEING_STATE        NUMBER(2),
  N_START_TIMESTAMP    NUMBER(20),
  N_END_TIMESTAMP      NUMBER(20),
  C_LNG_LAT            VARCHAR2(256),
  N_STATE              NUMBER(2),
  C_COMMON             VARCHAR2(320),
  C_BELONG_DEPT_ID     VARCHAR2(512)        not null,
  C_CREATER_ID         VARCHAR2(32)         not null,
  C_PHONE              VARCHAR2(32)         not null,
  C_SOURCE_ID          VARCHAR2(32),
  NEED_ORDER           NUMBER(2),
  N_CAPACITY           NUMBER(10),
  N_REMAIN_CAPACITY    NUMBER(10),
  constraint PK_T_ACTIVITY_HIASTORY primary key (C_ID)
);

comment on table T_ACTIVITY_HIASTORY is
'社团活动记录表（统计用）';

comment on column T_ACTIVITY_HIASTORY.C_ID is
'主键';

comment on column T_ACTIVITY_HIASTORY.C_DEPT_ID is
'部门id';

comment on column T_ACTIVITY_HIASTORY.C_ASSOCAIATION_ID is
'人员id';

comment on column T_ACTIVITY_HIASTORY.N_BEING_STATE is
'是否在岗 1-在岗，0-不在岗， 2-超时到岗';

comment on column T_ACTIVITY_HIASTORY.N_START_TIMESTAMP is
'班次开始时间';

comment on column T_ACTIVITY_HIASTORY.N_END_TIMESTAMP is
'班次结束时间';

comment on column T_ACTIVITY_HIASTORY.C_LNG_LAT is
'班次id';

comment on column T_ACTIVITY_HIASTORY.C_BELONG_DEPT_ID is
'归属单位';

comment on column T_ACTIVITY_HIASTORY.C_CREATER_ID is
'创建人';

comment on column T_ACTIVITY_HIASTORY.C_PHONE is
'手机号';

/*==============================================================*/
/* Table: T_ACTIVITY_HIASTORY_DETAIL                            */
/*==============================================================*/
create table T_ACTIVITY_HIASTORY_DETAIL
(
  C_ID                 VARCHAR2(32)         not null,
  C_ACTIVITY_HIASTORY_ID VARCHAR2(32),
  C_PERSON_ID          VARCHAR2(32),
  N_STATE              NUMBER(2),
  N_START_TIMESTAMP    NUMBER(20),
  N_END_TIMESTAMP      NUMBER(20),
  C_LNG_LAT            VARCHAR2(256),
  constraint PK_T_ACTIVITY_HIASTORY_DETAIL primary key (C_ID)
);

comment on table T_ACTIVITY_HIASTORY_DETAIL is
'社团活动详情记录表（统计用）';

comment on column T_ACTIVITY_HIASTORY_DETAIL.C_ID is
'主键';

comment on column T_ACTIVITY_HIASTORY_DETAIL.C_ACTIVITY_HIASTORY_ID is
'部门id';

comment on column T_ACTIVITY_HIASTORY_DETAIL.N_STATE is
'是否在岗 1-在岗，0-不在岗， 2-超时到岗';

comment on column T_ACTIVITY_HIASTORY_DETAIL.N_START_TIMESTAMP is
'班次开始时间';

comment on column T_ACTIVITY_HIASTORY_DETAIL.N_END_TIMESTAMP is
'班次结束时间';

comment on column T_ACTIVITY_HIASTORY_DETAIL.C_LNG_LAT is
'班次id';

/*==============================================================*/
/* Table: T_ACTIVITY_PROPERTY                                   */
/*==============================================================*/
create table T_ACTIVITY_PROPERTY
(
  C_ID                 VARCHAR2(32)         not null,
  C_NAME               VARCHAR2(32)         not null,
  N_CREATE_TIMESTAMP   NUMBER(20)           not null,
  N_UPDATE_TIMESTAMP   NUMBER(20)           not null,
  N_STATE              NUMBER(2)            not null,
  C_ASSOAIATION_ID     VARCHAR2(32),
  constraint PK_T_ACTIVITY_PROPERTY primary key (C_ID)
);

comment on table T_ACTIVITY_PROPERTY is
'活动指标表';

comment on column T_ACTIVITY_PROPERTY.C_ID is
'主键';

comment on column T_ACTIVITY_PROPERTY.C_NAME is
'名称';

comment on column T_ACTIVITY_PROPERTY.N_CREATE_TIMESTAMP is
'创建时间';

comment on column T_ACTIVITY_PROPERTY.N_UPDATE_TIMESTAMP is
'更新时间';

comment on column T_ACTIVITY_PROPERTY.N_STATE is
'0已删除1未删除';

/*==============================================================*/
/* Table: T_ACTIVITY_VALUE                                      */
/*==============================================================*/
create table T_ACTIVITY_VALUE
(
  C_ID                 VARCHAR2(32)         not null,
  C_VALUE              VARCHAR2(32)         not null,
  C_CODE               VARCHAR2(32)         not null,
  C_BEING_TIME         VARCHAR2(32)         not null,
  constraint PK_T_ACTIVITY_VALUE primary key (C_ID)
);

comment on table T_ACTIVITY_VALUE is
'活动属性值表';

comment on column T_ACTIVITY_VALUE.C_ID is
'主键';

comment on column T_ACTIVITY_VALUE.C_VALUE is
'名称';

comment on column T_ACTIVITY_VALUE.C_CODE is
'始发站';

comment on column T_ACTIVITY_VALUE.C_BEING_TIME is
'终点时间';

/*==============================================================*/
/* Table: T_ACTIVITY_VALUE_HISTORY                              */
/*==============================================================*/
create table T_ACTIVITY_VALUE_HISTORY
(
  C_ID                 VARCHAR2(32)         not null,
  C_VALUE              VARCHAR2(32)         not null,
  C_CODE               VARCHAR2(32)         not null,
  C_BEING_TIME         VARCHAR2(32)         not null,
  constraint PK_T_ACTIVITY_VALUE_HISTORY primary key (C_ID)
);

comment on table T_ACTIVITY_VALUE_HISTORY is
'活动属性历史值表';

comment on column T_ACTIVITY_VALUE_HISTORY.C_ID is
'主键';

comment on column T_ACTIVITY_VALUE_HISTORY.C_VALUE is
'名称';

comment on column T_ACTIVITY_VALUE_HISTORY.C_CODE is
'始发站';

comment on column T_ACTIVITY_VALUE_HISTORY.C_BEING_TIME is
'终点时间';

/*==============================================================*/
/* Table: T_ALL_ACTIVITY_PROPERTY                               */
/*==============================================================*/
create table T_ALL_ACTIVITY_PROPERTY
(
  C_ID                 VARCHAR2(32)         not null,
  C_NAME               VARCHAR2(32)         not null,
  N_CREATE_TIMESTAMP   NUMBER(20)           not null,
  N_UPDATE_TIMESTAMP   NUMBER(20)           not null,
  N_STATE              NUMBER(2)            not null,
  constraint PK_T_ALL_ACTIVITY_PROPERTY primary key (C_ID)
);

comment on table T_ALL_ACTIVITY_PROPERTY is
'社团全活动指标表';

comment on column T_ALL_ACTIVITY_PROPERTY.C_ID is
'主键';

comment on column T_ALL_ACTIVITY_PROPERTY.C_NAME is
'名称';

comment on column T_ALL_ACTIVITY_PROPERTY.N_CREATE_TIMESTAMP is
'创建时间';

comment on column T_ALL_ACTIVITY_PROPERTY.N_UPDATE_TIMESTAMP is
'更新时间';

comment on column T_ALL_ACTIVITY_PROPERTY.N_STATE is
'0已删除1未删除';

/*==============================================================*/
/* Table: T_ALL_ASSOCAIATION_PROPERTY                           */
/*==============================================================*/
create table T_ALL_ASSOCAIATION_PROPERTY
(
  C_ID                 VARCHAR2(32)         not null,
  C_ASSOAICATION_ID    VARCHAR2(32)         not null,
  C_ITEM               VARCHAR2(32),
  C_CREATER_ID         VARCHAR2(32)         not null,
  N_IS_SEARCH          NUMBER(2),
  C_CODE               NUMBER(2),
  N_IS_KEY             NUMBER(2),
  constraint PK_T_ALL_ASSOCAIATION_PROPERTY primary key (C_ID)
);

comment on table T_ALL_ASSOCAIATION_PROPERTY is
'社团指标信息表';

comment on column T_ALL_ASSOCAIATION_PROPERTY.C_ID is
'主键';

comment on column T_ALL_ASSOCAIATION_PROPERTY.C_ASSOAICATION_ID is
'类型ID';

comment on column T_ALL_ASSOCAIATION_PROPERTY.C_ITEM is
'检查项目';

comment on column T_ALL_ASSOCAIATION_PROPERTY.C_CREATER_ID is
'创建人';

/*==============================================================*/
/* Table: T_APPLY                                               */
/*==============================================================*/
create table T_APPLY
(
  C_ID                 VARCHAR2(32)         not null,
  C_ASSAIATION_ID      VARCHAR2(32)         not null,
  C_APPLY_TIME         VARCHAR2(32)         not null,
  C_APPROVE_TIME       VARCHAR2(32)         not null,
  N_STATE              NUMBER(2),
  C_CRETOR_ID          VARCHAR2(32),
  C_RESOURCE_ID        VARCHAR2(32),
  IS_FOREVER           NUMBER(2),
  constraint PK_T_APPLY primary key (C_ID)
);

comment on table T_APPLY is
'社团申请 表';

comment on column T_APPLY.C_ID is
'主键';

comment on column T_APPLY.C_ASSAIATION_ID is
'站点名称';

comment on column T_APPLY.C_APPLY_TIME is
'始发站';

comment on column T_APPLY.C_APPROVE_TIME is
'终点站';

comment on column T_APPLY.N_STATE is
'所属车次';

/*==============================================================*/
/* Table: T_ASSAIATION_APPLY_HISTORY                            */
/*==============================================================*/
create table T_ASSAIATION_APPLY_HISTORY
(
  C_ID                 VARCHAR2(32)         not null,
  C_ASSAIATION_ID      VARCHAR2(32)         not null,
  C_APPLY_TIME         VARCHAR2(32)         not null,
  C_APPROVE_TIME       VARCHAR2(32)         not null,
  N_STATE              NUMBER(2),
  C_CRETOR_ID          VARCHAR2(32),
  C_RESOURCE_ID        VARCHAR2(32),
  IS_FOREVER           NUMBER(2),
  constraint PK_T_ASSAIATION_APPLY_HISTORY primary key (C_ID)
);

comment on table T_ASSAIATION_APPLY_HISTORY is
'社团申请历史表';

comment on column T_ASSAIATION_APPLY_HISTORY.C_ID is
'主键';

comment on column T_ASSAIATION_APPLY_HISTORY.C_ASSAIATION_ID is
'站点名称';

comment on column T_ASSAIATION_APPLY_HISTORY.C_APPLY_TIME is
'始发站';

comment on column T_ASSAIATION_APPLY_HISTORY.C_APPROVE_TIME is
'终点站';

comment on column T_ASSAIATION_APPLY_HISTORY.N_STATE is
'所属车次';

/*==============================================================*/
/* Table: T_ASSOAIATION_VALUE                                   */
/*==============================================================*/
create table T_ASSOAIATION_VALUE
(
  C_ID                 VARCHAR2(32)         not null,
  C_TYPE               VARCHAR2(32)         not null,
  N_CREATE_TIMESTAMP   NUMBER(20)           not null,
  N_UPDATE_TIMESTAMP   NUMBER(20)           not null,
  C_CREATER_ID         VARCHAR2(32)         not null,
  N_STATE              NUMBER(2)            not null,
  constraint PK_T_ASSOAIATION_VALUE primary key (C_ID)
);

comment on table T_ASSOAIATION_VALUE is
'社团属性值表';

comment on column T_ASSOAIATION_VALUE.C_ID is
'主键';

comment on column T_ASSOAIATION_VALUE.C_TYPE is
'类型名称';

comment on column T_ASSOAIATION_VALUE.N_CREATE_TIMESTAMP is
'创建时间';

comment on column T_ASSOAIATION_VALUE.N_UPDATE_TIMESTAMP is
'修改时间';

comment on column T_ASSOAIATION_VALUE.C_CREATER_ID is
'创建人';

comment on column T_ASSOAIATION_VALUE.N_STATE is
'0已删除1未删除';

/*==============================================================*/
/* Table: T_ASSOCAIATION                                        */
/*==============================================================*/
create table T_ASSOCAIATION
(
  C_ID                 VARCHAR2(32)         not null,
  C_NAME               VARCHAR2(64)         not null,
  N_CREATE_TIMESTAMP   NUMBER(20)           not null,
  N_UPDATE_TIMESTAMP   NUMBER(20)           not null,
  C_CREATER_ID         VARCHAR2(32)         not null,
  C_ICON_URL           VARCHAR2(64),
  N_STATE              NUMBER(2)            not null,
  C_COLLAEGE_ID        VARCHAR2(32),
  C_LNG_LAT            VARCHAR2(256),
  constraint PK_T_ASSOCAIATION primary key (C_ID)
);

comment on table T_ASSOCAIATION is
'社团信息表';

comment on column T_ASSOCAIATION.C_ID is
'主键';

comment on column T_ASSOCAIATION.C_NAME is
'类型名称';

comment on column T_ASSOCAIATION.N_CREATE_TIMESTAMP is
'创建时间';

comment on column T_ASSOCAIATION.N_UPDATE_TIMESTAMP is
'修改时间';

comment on column T_ASSOCAIATION.C_CREATER_ID is
'创建人';

comment on column T_ASSOCAIATION.C_ICON_URL is
'缩略图';

comment on column T_ASSOCAIATION.N_STATE is
'0已删除1未删除';

/*==============================================================*/
/* Table: T_ASSOCAIATION_PROPERTY                               */
/*==============================================================*/
create table T_ASSOCAIATION_PROPERTY
(
  C_ID                 VARCHAR2(32)         not null,
  C_ASSOAICATION_ID    VARCHAR2(32)         not null,
  C_ITEM               VARCHAR2(32),
  C_CREATER_ID         VARCHAR2(32)         not null,
  N_IS_SEARCH          NUMBER(2),
  C_CODE               NUMBER(2),
  N_CANEDIT            NUMBER(2),
  constraint PK_T_ASSOCAIATION_PROPERTY primary key (C_ID)
);

comment on table T_ASSOCAIATION_PROPERTY is
'社团指标信息表';

comment on column T_ASSOCAIATION_PROPERTY.C_ID is
'主键';

comment on column T_ASSOCAIATION_PROPERTY.C_ASSOAICATION_ID is
'类型ID';

comment on column T_ASSOCAIATION_PROPERTY.C_ITEM is
'检查项目';

comment on column T_ASSOCAIATION_PROPERTY.C_CREATER_ID is
'创建人';

/*==============================================================*/
/* Table: T_CONTROL_DEPT                                        */
/*==============================================================*/
create table T_CONTROL_DEPT
(
  C_ID                 VARCHAR2(32)         not null,
  C_MANAGER_ID         VARCHAR2(32)         not null,
  C_DEPT_ID            VARCHAR2(32)         not null,
  constraint PK_T_CONTROL_DEPT primary key (C_ID)
);

comment on table T_CONTROL_DEPT is
'管辖单位信息表';

comment on column T_CONTROL_DEPT.C_ID is
'主键';

comment on column T_CONTROL_DEPT.C_MANAGER_ID is
'管理员ID';

comment on column T_CONTROL_DEPT.C_DEPT_ID is
'部门ID';

/*==============================================================*/
/* Table: T_DEPARTMENT                                          */
/*==============================================================*/
create table T_DEPARTMENT
(
  C_ID                 VARCHAR2(32)         not null,
  C_NAME               VARCHAR2(256)        not null,
  C_PARENT_ID          VARCHAR2(32),
  C_GRADE              VARCHAR2(8),
  C_TREE_ID            VARCHAR2(1024)       not null,
  C_TREE_CODE          VARCHAR2(1024)       not null,
  N_UPDATE_TIMESTAMP   NUMBER(19)           not null,
  C_STATE              VARCHAR2(1)          not null,
  N_ORDER_NUM          NUMBER(19),
  C_CODE               VARCHAR2(32)         not null,
  constraint PK_T_DEPARTMENT primary key (C_ID)
);

comment on table T_DEPARTMENT is
'部门信息表';

comment on column T_DEPARTMENT.C_ID is
'主键';

comment on column T_DEPARTMENT.C_NAME is
'名称';

comment on column T_DEPARTMENT.C_PARENT_ID is
'父级部门';

comment on column T_DEPARTMENT.C_GRADE is
'部门级别';

comment on column T_DEPARTMENT.C_TREE_ID is
'部门ID全排序';

comment on column T_DEPARTMENT.C_TREE_CODE is
'单位编码全排序';

comment on column T_DEPARTMENT.N_UPDATE_TIMESTAMP is
'部门编码全排序';

comment on column T_DEPARTMENT.C_STATE is
'状态0正常1删除';

comment on column T_DEPARTMENT.N_ORDER_NUM is
'排序';

comment on column T_DEPARTMENT.C_CODE is
'部门编码';

/*==============================================================*/
/* Table: T_DICT                                                */
/*==============================================================*/
create table T_DICT
(
  C_ID                 VARCHAR2(32)         not null,
  C_NAME               VARCHAR2(256)        not null,
  C_CODE               VARCHAR2(32)         not null,
  C_TYPE_CODE          VARCHAR2(32),
  C_ORDER_NUM          NUMBER(19),
  C_ICON_URL           VARCHAR2(64),
  N_STATE              NUMBER(2)            not null,
  constraint PK_T_DICT primary key (C_ID)
);

comment on table T_DICT is
'字典信息表';

comment on column T_DICT.C_ID is
'主键';

comment on column T_DICT.C_NAME is
'名称';

comment on column T_DICT.C_CODE is
'编码';

comment on column T_DICT.C_TYPE_CODE is
'类别编码';

comment on column T_DICT.C_ORDER_NUM is
'排序';

comment on column T_DICT.C_ICON_URL is
'缩略图';

comment on column T_DICT.N_STATE is
'0已删除1未删除';

/*==============================================================*/
/* Table: T_FIXTIION——ACTIVITY                                  */
/*==============================================================*/
create table T_FIXTIION——ACTIVITY
(
  C_ID                 VARCHAR2(32)         not null,
  C_NAME               VARCHAR2(256)        not null,
  C_ASSCAIATION_ID     VARCHAR2(64),
  C_BELONG_DEPT_ID     VARCHAR2(512)        not null,
  N_CREATE_TIMESTAMP   NUMBER(20)           not null,
  N_UPDATE_TIMESTAMP   NUMBER(20)           not null,
  C_CREATER_ID         VARCHAR2(32)         not null,
  C_PHONE              VARCHAR2(32)         not null,
  N_STATE              NUMBER(2)            not null,
  C_SOURCE_ID          VARCHAR2(32),
  N_START_TIMESTAMP    NUMBER(20),
  N_END_TIMESTAMP      NUMBER(20),
  NEED_ORDER           NUMBER(2),
  N_CAPACITY           NUMBER(10),
  N_REMAIN_CAPACITY    NUMBER(10),
  constraint PK_T_FIXTIION——ACTIVITY primary key (C_ID)
  );

comment on table T_FIXTIION——ACTIVITY is
'社团活动信息表';

comment on column T_FIXTIION——ACTIVITY.C_ID is
'主键';

comment on column T_FIXTIION——ACTIVITY.C_NAME is
'名称';

comment on column T_FIXTIION——ACTIVITY.C_ASSCAIATION_ID is
'照片';

comment on column T_FIXTIION——ACTIVITY.C_BELONG_DEPT_ID is
'归属单位';

comment on column T_FIXTIION——ACTIVITY.N_CREATE_TIMESTAMP is
'创建时间';

comment on column T_FIXTIION——ACTIVITY.N_UPDATE_TIMESTAMP is
'修改时间';

comment on column T_FIXTIION——ACTIVITY.C_CREATER_ID is
'创建人';

comment on column T_FIXTIION——ACTIVITY.C_PHONE is
'手机号';

comment on column T_FIXTIION——ACTIVITY.N_STATE is
'0已删除1未删除';

comment on column T_FIXTIION——ACTIVITY.N_START_TIMESTAMP is
'班次开始时间';

comment on column T_FIXTIION——ACTIVITY.N_END_TIMESTAMP is
'班次结束时间';

/*==============================================================*/
/* Table: T_FOREVER_APPLY                                       */
/*==============================================================*/
create table T_FOREVER_APPLY
(
  C_ID                 VARCHAR2(32)         not null,
  T_APPLY——ID          VARCHAR2(32),
  C_UNIT               NUMBER(2),
  是否永久（0：否，1：是）        NUMBER(2),
  C_FRECUCY            NUMBER(2),
  constraint PK_T_FOREVER_APPLY primary key (C_ID)
);

comment on table T_FOREVER_APPLY is
'资源永久申请表';

comment on column T_FOREVER_APPLY.C_ID is
'主键';

/*==============================================================*/
/* Table: T_MANAGER                                             */
/*==============================================================*/
create table T_MANAGER
(
  C_ID                 VARCHAR2(32)         not null,
  C_PERSON_ID          VARCHAR2(32)         not null,
  N_CREATE_TIMESTAMP   NUMBER(20)           not null,
  N_UPDATE_TIMESTAMP   NUMBER(20)           not null,
  constraint PK_T_MANAGER primary key (C_ID)
);

comment on table T_MANAGER is
'管理员信息表';

comment on column T_MANAGER.C_ID is
'主键';

comment on column T_MANAGER.C_PERSON_ID is
'人员ID';

comment on column T_MANAGER.N_CREATE_TIMESTAMP is
'创建时间';

comment on column T_MANAGER.N_UPDATE_TIMESTAMP is
'修改时间';

/*==============================================================*/
/* Table: T_MANAGER_ROLE                                        */
/*==============================================================*/
create table T_MANAGER_ROLE
(
  C_ID                 VARCHAR2(32)         not null,
  C_MANAGER_ID         VARCHAR2(32)         not null,
  C_ROLE_ID            VARCHAR2(32)         not null,
  constraint PK_T_MANAGER_ROLE primary key (C_ID)
);

comment on table T_MANAGER_ROLE is
'管理员角色信息表';

comment on column T_MANAGER_ROLE.C_ID is
'主键';

comment on column T_MANAGER_ROLE.C_MANAGER_ID is
'管理员ID';

comment on column T_MANAGER_ROLE.C_ROLE_ID is
'角色ID';

/*==============================================================*/
/* Table: T_MENU                                                */
/*==============================================================*/
create table T_MENU
(
  C_ID                 VARCHAR2(32)         not null,
  C_NAME               VARCHAR2(256)        not null,
  C_CODE               VARCHAR2(32)         not null,
  C_PARENT_ID          VARCHAR2(32),
  C_ORDER_NUM          NUMBER(19),
  C_ICON               VARCHAR(64),
  C_TYPE               NUMBER(2),
  C_URL                VARCHAR(64),
  N_BE_USED            NUMBER(2)            not null,
  N_CAN_EDIT           NUMBER(2)            not null,
  constraint PK_T_MENU primary key (C_ID)
);

comment on table T_MENU is
'菜单信息表';

comment on column T_MENU.C_ID is
'主键';

comment on column T_MENU.C_NAME is
'名称';

comment on column T_MENU.C_CODE is
'编码';

comment on column T_MENU.C_PARENT_ID is
'上级菜单';

comment on column T_MENU.C_ORDER_NUM is
'排序';

comment on column T_MENU.C_ICON is
'图标';

comment on column T_MENU.C_TYPE is
'类型1链接2按钮';

comment on column T_MENU.C_URL is
'链接';

comment on column T_MENU.N_BE_USED is
'应用于1前端2终端';

comment on column T_MENU.N_CAN_EDIT is
'0否1是';

/*==============================================================*/
/* Table: T_ORDER_APPLY                                         */
/*==============================================================*/
create table T_ORDER_APPLY
(
  C_ID                 VARCHAR2(32)         not null,
  C_ASSAIATION_ID      VARCHAR2(32)         not null,
  C_APPLY_TIME         VARCHAR2(32)         not null,
  C_APPROVE_TIME       VARCHAR2(32)         not null,
  C_CRETOR_ID          VARCHAR2(32),
  C_RESOURCE_ID        VARCHAR2(32),
  N_START_TIMESTAMP    NUMBER(20),
  N_END_TIMESTAMP      NUMBER(20),
  N_STATE              NUMBER(2),
  constraint PK_T_ORDER_APPLY primary key (C_ID)
);

comment on table T_ORDER_APPLY is
'预约资源表';

comment on column T_ORDER_APPLY.C_ID is
'主键';

comment on column T_ORDER_APPLY.C_ASSAIATION_ID is
'站点名称';

comment on column T_ORDER_APPLY.C_APPLY_TIME is
'始发站';

comment on column T_ORDER_APPLY.C_APPROVE_TIME is
'终点站';

comment on column T_ORDER_APPLY.N_START_TIMESTAMP is
'班次开始时间';

comment on column T_ORDER_APPLY.N_END_TIMESTAMP is
'班次结束时间';

/*==============================================================*/
/* Table: T_PASS_RESOURCE                                       */
/*==============================================================*/
create table T_PASS_RESOURCE
(
  C_ID                 VARCHAR2(32)         not null,
  C_ASSAIATION_ID      VARCHAR2(32)         not null,
  C_APPLY_TIME         VARCHAR2(32)         not null,
  C_APPROVE_TIME       VARCHAR2(32)         not null,
  N_STATE              NUMBER(2),
  C_CRETOR_ID          VARCHAR2(32),
  C_RESOURCE_ID        VARCHAR2(32),
  IS_FOREVER）          NUMBER(2),
  C_UNIT               NUMBER(2),
  C_FRECUCY            NUMBER(2),
  constraint PK_T_PASS_RESOURCE primary key (C_ID)
);

comment on table T_PASS_RESOURCE is
'社团无需申请资源关联表';

comment on column T_PASS_RESOURCE.C_ID is
'主键';

comment on column T_PASS_RESOURCE.C_ASSAIATION_ID is
'站点名称';

comment on column T_PASS_RESOURCE.C_APPLY_TIME is
'始发站';

comment on column T_PASS_RESOURCE.C_APPROVE_TIME is
'终点站';

comment on column T_PASS_RESOURCE.N_STATE is
'所属车次';

/*==============================================================*/
/* Table: T_PERSON                                              */
/*==============================================================*/
create table T_PERSON
(
  C_ID                 VARCHAR2(32)         not null,
  C_NAME               VARCHAR2(20)         not null,
  C_CODE               VARCHAR2(32)         not null,
  C_IDENTIFIER         VARCHAR2(20),
  N_UPDATE_TIMESTAMP   NUMBER(20)           not null,
  C_STATE              VARCHAR2(1)          not null,
  C_MOBILE             VARCHAR2(255)        not null,
  C_OFFICE_PHONE       VARCHAR2(21),
  N_ORDER_NUM          NUMBER(19),
  C_PASSWORD           VARCHAR2(128)        not null,
  C_POSITION           VARCHAR2(5),
  C_SEX                VARCHAR2(1),
  C_JOB                VARCHAR2(256),
  C_COLLEAGE_ID        VARCHAR2(32),
  C_NOTE               VARCHAR2(400),
  constraint PK_T_PERSON primary key (C_ID)
);

comment on table T_PERSON is
'人员信息表';

comment on column T_PERSON.C_ID is
'主键';

comment on column T_PERSON.C_NAME is
'姓名';

comment on column T_PERSON.C_CODE is
'警号';

comment on column T_PERSON.C_IDENTIFIER is
'身份证号';

comment on column T_PERSON.N_UPDATE_TIMESTAMP is
'最后更新时间戳';

comment on column T_PERSON.C_STATE is
'状态0正常1删除';

comment on column T_PERSON.C_MOBILE is
'手机号';

comment on column T_PERSON.C_OFFICE_PHONE is
'办公电话';

comment on column T_PERSON.N_ORDER_NUM is
'排序';

comment on column T_PERSON.C_PASSWORD is
'密码';

comment on column T_PERSON.C_POSITION is
'职级';

comment on column T_PERSON.C_SEX is
'性别';

comment on column T_PERSON.C_JOB is
'岗位';

comment on column T_PERSON.C_COLLEAGE_ID is
'所属部门';

comment on column T_PERSON.C_NOTE is
'备注';

/*==============================================================*/
/* Table: T_RESOURCE                                            */
/*==============================================================*/
create table T_RESOURCE
(
  C_ID                 VARCHAR2(32)         not null,
  C_NAME               VARCHAR2(256)        not null,
  C_PARENT_ID          VARCHAR2(32),
  C_GRADE              VARCHAR2(8),
  C_TREE_ID            VARCHAR2(1024)       not null,
  C_TREE_CODE          VARCHAR2(1024)       not null,
  N_UPDATE_TIMESTAMP   NUMBER(19)           not null,
  C_STATE              VARCHAR2(1)          not null,
  N_ORDER_NUM          NUMBER(19),
  C_CODE               VARCHAR2(32)         not null,
  N_NEED_ORDER         NUMBER(2),
  constraint PK_T_RESOURCE primary key (C_ID)
);

comment on table T_RESOURCE is
'资源信息表';

comment on column T_RESOURCE.C_ID is
'主键';

comment on column T_RESOURCE.C_NAME is
'名称';

comment on column T_RESOURCE.C_PARENT_ID is
'父级部门';

comment on column T_RESOURCE.C_GRADE is
'部门级别';

comment on column T_RESOURCE.C_TREE_ID is
'部门ID全排序';

comment on column T_RESOURCE.C_TREE_CODE is
'单位编码全排序';

comment on column T_RESOURCE.N_UPDATE_TIMESTAMP is
'部门编码全排序';

comment on column T_RESOURCE.C_STATE is
'状态0正常1删除';

comment on column T_RESOURCE.N_ORDER_NUM is
'排序';

comment on column T_RESOURCE.C_CODE is
'部门编码';

/*==============================================================*/
/* Table: T_RESOURCE_GRAPH                                      */
/*==============================================================*/
create table T_RESOURCE_GRAPH
(
  C_ID                 VARCHAR2(32)         not null,
  C_NAME               VARCHAR2(256)        not null,
  N_UPDATE_TIMESTAMP   NUMBER(19)           not null,
  C_STATE              VARCHAR2(1)          not null,
  C_GRAPH              VARCHAR2(65535)      not null,
  C_LNG_LAT            VARCHAR2(256),
  constraint PK_T_RESOURCE_GRAPH primary key (C_ID)
);

comment on table T_RESOURCE_GRAPH is
'资源图表表';

comment on column T_RESOURCE_GRAPH.C_ID is
'主键';

comment on column T_RESOURCE_GRAPH.C_NAME is
'名称';

comment on column T_RESOURCE_GRAPH.N_UPDATE_TIMESTAMP is
'部门编码全排序';

comment on column T_RESOURCE_GRAPH.C_STATE is
'状态0正常1删除';

comment on column T_RESOURCE_GRAPH.C_GRAPH is
'部门编码';

/*==============================================================*/
/* Table: T_ROLE                                                */
/*==============================================================*/
create table T_ROLE
(
  C_ID                 VARCHAR2(32)         not null,
  C_NAME               VARCHAR2(256)        not null,
  N_CAN_EDIT           NUMBER(2)            not null,
  N_CREATE_TIMESTAMP   NUMBER(20)           not null,
  N_UPDATE_TIMESTAMP   NUMBER(20)           not null,
  constraint PK_T_ROLE primary key (C_ID)
);

comment on table T_ROLE is
'角色信息表';

comment on column T_ROLE.C_ID is
'主键';

comment on column T_ROLE.C_NAME is
'名称';

comment on column T_ROLE.N_CAN_EDIT is
'是否可编辑0否1是';

comment on column T_ROLE.N_CREATE_TIMESTAMP is
'创建时间';

comment on column T_ROLE.N_UPDATE_TIMESTAMP is
'修改时间';

/*==============================================================*/
/* Table: T_ROLE_MENU                                           */
/*==============================================================*/
create table T_ROLE_MENU
(
  C_ID                 VARCHAR2(32)         not null,
  C_ROLE_ID            VARCHAR2(32)         not null,
  C_MENU_ID            VARCHAR2(32),
  N_CAN_EDIT           NUMBER(2),
  constraint PK_T_ROLE_MENU primary key (C_ID)
);

comment on table T_ROLE_MENU is
'角色菜单信息表';

comment on column T_ROLE_MENU.C_ID is
'主键';

comment on column T_ROLE_MENU.C_ROLE_ID is
'角色主键';

comment on column T_ROLE_MENU.C_MENU_ID is
'菜单主键';


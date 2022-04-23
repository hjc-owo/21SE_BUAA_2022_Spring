/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2022/4/9 20:26:26                            */
/*==============================================================*/


drop table if exists ϰ��;

drop table if exists �����¼;

drop table if exists ѧϰ�γ�;

drop table if exists ��˼�¼;

drop table if exists �û�;

drop table if exists ����Ա;

drop table if exists ��Ƶ;

drop table if exists ��֤֤��;

drop table if exists �γ�;

drop table if exists ���⼯;

/*==============================================================*/
/* Table: ϰ��                                                    */
/*==============================================================*/
create table ϰ��
(
   ϰ��ID                 int not null,
   �γ�ID                 int,
   �û�ID                 int,
   �������                 text,
   �ο���                 text,
   primary key (ϰ��ID)
);

/*==============================================================*/
/* Table: �����¼                                                  */
/*==============================================================*/
create table �����¼
(
   �����¼ID               int not null,
   ϰ��ID                 int not null,
   ���⼯ID                int not null,
   �Ƿ���ȷ                 bool,
   �û���                 varchar(256),
   primary key (�����¼ID)
);

/*==============================================================*/
/* Table: ѧϰ�γ�                                                  */
/*==============================================================*/
create table ѧϰ�γ�
(
   �û�ID                 int not null,
   �γ�ID                 int not null,
   primary key (�û�ID, �γ�ID)
);

/*==============================================================*/
/* Table: ��˼�¼                                                  */
/*==============================================================*/
create table ��˼�¼
(
   �����ϢID               int not null,
   ����ԱID                int not null,
   �������                 datetime,
   ��˽��                 int,
   �����ƵID               int,
   primary key (�����ϢID)
);

/*==============================================================*/
/* Table: �û�                                                    */
/*==============================================================*/
create table �û�
(
   �û�ID                 int not null,
   �û���                  varchar(256),
   ����                   varchar(256),
   �Ƿ���                 bool,
   �����ֹʱ��               date,
   �Ƿ���ƽ�ʦ               bool,
   primary key (�û�ID)
);

/*==============================================================*/
/* Table: ����Ա                                                   */
/*==============================================================*/
create table ����Ա
(
   ����ԱID                int not null,
   ����Ա�û���               varchar(256),
   ����Ա����                varchar(256),
   primary key (����ԱID)
);

/*==============================================================*/
/* Table: ��Ƶ                                                    */
/*==============================================================*/
create table ��Ƶ
(
   ��ƵID                 int not null,
   ����ԱID                int,
   �γ�ID                 int,
   �û�ID                 int,
   ���ղ�����                int,
   �ܲ�����                 bigint,
   ��Ƶ����                 varchar(256),
   ��Ƶurl                varchar(256),
   ���״̬                 int,
   primary key (��ƵID)
);

/*==============================================================*/
/* Table: ��֤֤��                                                  */
/*==============================================================*/
create table ��֤֤��
(
   ѧϰ�������               date,
   ֤����                 int not null,
   �û�ID                 int not null,
   ASMARTƽ̨ͼ��           longblob,
   primary key (֤����)
);

/*==============================================================*/
/* Table: �γ�                                                    */
/*==============================================================*/
create table �γ�
(
   �γ�ID                 int not null,
   �γ̼��                 text,
   primary key (�γ�ID)
);

/*==============================================================*/
/* Table: ���⼯                                                   */
/*==============================================================*/
create table ���⼯
(
   ���⼯ID                int not null,
   �û�ID                 int not null,
   primary key (���⼯ID)
);

alter table ϰ�� add constraint FK_�ϴ�ϰ�� foreign key (�û�ID)
      references �û� (�û�ID) on delete restrict on update restrict;

alter table ϰ�� add constraint FK_����ϰ�� foreign key (�γ�ID)
      references �γ� (�γ�ID) on delete restrict on update restrict;

alter table �����¼ add constraint FK_���������¼ foreign key (���⼯ID)
      references ���⼯ (���⼯ID) on delete restrict on update restrict;

alter table �����¼ add constraint FK_�鿴�����¼ foreign key (ϰ��ID)
      references ϰ�� (ϰ��ID) on delete restrict on update restrict;

alter table ѧϰ�γ� add constraint FK_ѧϰ�γ� foreign key (�û�ID)
      references �û� (�û�ID) on delete restrict on update restrict;

alter table ѧϰ�γ� add constraint FK_ѧϰ�γ�2 foreign key (�γ�ID)
      references �γ� (�γ�ID) on delete restrict on update restrict;

alter table ��˼�¼ add constraint FK_������˼�¼ foreign key (����ԱID)
      references ����Ա (����ԱID) on delete restrict on update restrict;

alter table ��Ƶ add constraint FK_������Ƶ foreign key (�γ�ID)
      references �γ� (�γ�ID) on delete restrict on update restrict;

alter table ��Ƶ add constraint FK_�û��ϴ���Ƶ foreign key (�û�ID)
      references �û� (�û�ID) on delete restrict on update restrict;

alter table ��Ƶ add constraint FK_����Ա�ϴ���Ƶ foreign key (����ԱID)
      references ����Ա (����ԱID) on delete restrict on update restrict;

alter table ��֤֤�� add constraint FK_�����֤֤�� foreign key (�û�ID)
      references �û� (�û�ID) on delete restrict on update restrict;

alter table ���⼯ add constraint FK_�������⼯ foreign key (�û�ID)
      references �û� (�û�ID) on delete restrict on update restrict;


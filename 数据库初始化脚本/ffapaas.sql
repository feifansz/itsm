drop table if exists doc_t_catalog_info;

drop table if exists doc_t_document_info;

drop table if exists doc_t_person_recycle;

drop table if exists doc_t_personal_document;

drop table if exists doc_t_shared_info;

drop table if exists doc_t_shared_with_me_skip;

drop table if exists ff_apaas_app_oper_log;

drop table if exists ff_apaas_bulletin;

drop table if exists ff_apaas_bulletin_record;

drop table if exists ff_apaas_business_api;

drop table if exists ff_apaas_business_ref_app_config;

drop table if exists ff_apaas_es_actorcond;

drop table if exists ff_apaas_es_actorextdef;

drop table if exists ff_apaas_es_agent;

drop table if exists ff_apaas_es_app;

drop table if exists ff_apaas_es_app_actiontype;

drop table if exists ff_apaas_es_app_actiontype_default;

drop table if exists ff_apaas_es_app_organization;

drop table if exists ff_apaas_es_app_special;

drop table if exists ff_apaas_es_app_submit_limit;

drop table if exists ff_apaas_es_app_submit_log;

drop table if exists ff_apaas_es_catalog;

drop table if exists ff_apaas_es_f_actors;

drop table if exists ff_apaas_es_f_specactor;

drop index index_es_fields_formid on ff_apaas_es_fields;

drop index index_es_fields_appid on ff_apaas_es_fields;

drop table if exists ff_apaas_es_fields;

drop table if exists ff_apaas_es_fields_special;

drop index es_flow_premessageid on ff_apaas_es_flow;

drop table if exists ff_apaas_es_flow;

drop table if exists ff_apaas_es_flowdelelog;

drop table if exists ff_apaas_es_flowfromto;

drop table if exists ff_apaas_es_flowmodel;

drop table if exists ff_apaas_es_flowmodel_notice_config;

drop table if exists ff_apaas_es_flowmodel_visit_config;

drop table if exists ff_apaas_es_flowpauselog;

drop table if exists ff_apaas_es_influx_result;

drop index index_message_flowid on ff_apaas_es_message;

drop table if exists ff_apaas_es_message;

drop index messagefromto_fmessageid on ff_apaas_es_messagefromto;

drop table if exists ff_apaas_es_messagefromto;

drop table if exists ff_apaas_es_messageopinion;

drop table if exists ff_apaas_es_msgprocess;

drop table if exists ff_apaas_es_msgsupervise;

drop table if exists ff_apaas_es_msgurg_log;

drop table if exists ff_apaas_es_n_m_action;

drop table if exists ff_apaas_es_n_m_action_bind;

drop table if exists ff_apaas_es_n_m_action_influxactor;

drop table if exists ff_apaas_es_n_m_actor;

drop table if exists ff_apaas_es_n_m_att_config;

drop index index_n_m_field_flowmodelid on ff_apaas_es_n_m_field;

drop table if exists ff_apaas_es_n_m_field;

drop table if exists ff_apaas_es_n_m_flow;

drop table if exists ff_apaas_es_n_m_link;

drop table if exists ff_apaas_es_n_m_specactor;

drop index index_es_node_flowmodelid on ff_apaas_es_node;

drop index index_es_node_flowid on ff_apaas_es_node;

drop table if exists ff_apaas_es_node;

drop table if exists ff_apaas_es_node_temp;

drop table if exists ff_apaas_es_nodefromto;

drop table if exists ff_apaas_es_nodemodel;

drop table if exists ff_apaas_es_notice_log;

drop table if exists ff_apaas_es_overtime_notice_config;

drop table if exists ff_apaas_es_receivelist;

drop table if exists ff_apaas_es_site_news;

drop table if exists ff_apaas_open_api;

drop table if exists ff_apaas_sys_config;

drop table if exists ff_apaas_sys_job;

drop table if exists ff_apaas_sys_job_log;

drop table if exists ff_apaas_sys_logininfor;

drop table if exists ff_apaas_sys_oper_log;

drop table if exists ff_apaas_t_api_authorization;

drop table if exists ff_apaas_t_api_authorization_terminal;

drop table if exists ff_apaas_t_batch_operate_log;

drop table if exists ff_apaas_t_bookmark;

drop table if exists ff_apaas_t_bookmark_catalog;

drop table if exists ff_apaas_t_business_operation_log;

drop table if exists ff_apaas_t_business_right;

drop table if exists ff_apaas_t_business_right_item;

drop table if exists ff_apaas_t_business_right_whitelist;

drop table if exists ff_apaas_t_coderule;

drop table if exists ff_apaas_t_codevalue;

drop table if exists ff_apaas_t_custom_door;

drop table if exists ff_apaas_t_custom_door_right;

drop index index_custom_deleted_refappid on ff_apaas_t_custom_flowinfo;

drop index index_custom_flowid on ff_apaas_t_custom_flowinfo;

drop table if exists ff_apaas_t_custom_flowinfo;

drop table if exists ff_apaas_t_custom_form;

drop table if exists ff_apaas_t_display_column;

drop table if exists ff_apaas_t_exception_record;

drop table if exists ff_apaas_t_fastopinion;

drop table if exists ff_apaas_t_flowlink_info;

drop table if exists ff_apaas_t_local_method;

drop table if exists ff_apaas_t_login_lock;

drop table if exists ff_apaas_t_manager_app_info;

drop table if exists ff_apaas_t_manager_info;

drop table if exists ff_apaas_t_mobile_app_bind;

drop table if exists ff_apaas_t_mobile_terminal_bind;

drop table if exists ff_apaas_t_mobile_terminal_user;

drop table if exists ff_apaas_t_notice_log;

drop table if exists ff_apaas_t_notice_method;

drop table if exists ff_apaas_t_notice_method_config;

drop table if exists ff_apaas_t_notice_method_config_wxmp;

drop table if exists ff_apaas_t_notice_method_enable;

drop table if exists ff_apaas_t_online_users;

drop index index_outer_link on ff_apaas_t_outer_link;

drop table if exists ff_apaas_t_outer_link;

drop table if exists ff_apaas_t_outer_link_config;

drop table if exists ff_apaas_t_password_history_tracker;

drop table if exists ff_apaas_t_password_strength;

drop table if exists ff_apaas_t_platform_config;

drop table if exists ff_apaas_t_project_info;

drop table if exists ff_apaas_t_qiyuesuo_config;

drop table if exists ff_apaas_t_qiyuesuo_contract;

drop table if exists ff_apaas_t_register_exporter;

drop table if exists ff_apaas_t_relation_view_config;

drop table if exists ff_apaas_t_right_app_lot;

drop table if exists ff_apaas_t_right_lot;

drop table if exists ff_apaas_t_searchcond;

drop table if exists ff_apaas_t_serial_number_coderule;

drop table if exists ff_apaas_t_synch_field_mapping;

drop table if exists ff_apaas_t_synch_log;

drop table if exists ff_apaas_t_synch_rule;

drop table if exists ff_apaas_t_template_config;

drop table if exists ff_apaas_t_time_process;

drop table if exists ff_apaas_t_timing_task;

drop table if exists ff_apaas_t_user_regist;

drop table if exists ff_apaas_ts_actormembers;

drop table if exists ff_apaas_ts_actors;

drop table if exists ff_apaas_ts_business_api_group;

drop table if exists ff_apaas_ts_cross_project_right;

drop table if exists ff_apaas_ts_dept;

drop table if exists ff_apaas_ts_menu;

drop table if exists ff_apaas_ts_menu_mobile;

drop table if exists ff_apaas_ts_open_api_group;

drop table if exists ff_apaas_ts_oprateallot;

drop table if exists ff_apaas_ts_oprateallot_field;

drop index index_oprateallot_field_objectid on ff_apaas_ts_oprateallot_field_user;

drop table if exists ff_apaas_ts_oprateallot_field_user;

drop table if exists ff_apaas_ts_oprateallot_rightrange;

drop table if exists ff_apaas_ts_platform_manager;

drop table if exists ff_apaas_ts_user;

drop table if exists ff_apaas_ts_user_expand;

drop table if exists ff_apaas_ts_user_launch_new_top;

drop index index_oprateallot_objectid on ff_apaas_ts_user_oprateallot;

drop table if exists ff_apaas_ts_user_oprateallot;

drop index index_oprateallot_rightrange_objectid on ff_apaas_ts_user_oprateallot_rightrange;

drop table if exists ff_apaas_ts_user_oprateallot_rightrange;

drop table if exists ff_apaas_ts_user_temp;

drop table if exists ff_apaas_up_attachment;

drop table if exists ff_apaas_up_attasecurity;

drop table if exists knowledge_t_base_info;

drop table if exists knowledge_t_catalog;

drop table if exists knowledge_t_comment;

drop table if exists knowledge_t_filed;

drop table if exists knowledge_t_flow_info;

drop table if exists knowledge_t_reference;

drop table if exists knowledge_t_related;

drop table if exists qrtz_blob_triggers;

drop table if exists qrtz_calendars;

drop table if exists qrtz_cron_triggers;

drop table if exists qrtz_fired_triggers;

drop table if exists qrtz_job_details;

drop table if exists qrtz_locks;

drop table if exists qrtz_paused_trigger_grps;

drop table if exists qrtz_scheduler_state;

drop table if exists qrtz_simple_triggers;

drop table if exists qrtz_simprop_triggers;

drop table if exists qrtz_triggers;

drop table if exists t_expenses_chaim;

drop table if exists t_expenses_chaim_detail;

/*==============================================================*/
/* Table: doc_t_catalog_info                                    */
/*==============================================================*/
create table doc_t_catalog_info
(
   catalog_id           varchar(50) not null comment 'Ŀ¼���',
   catalog_name         varchar(200) not null comment 'Ŀ¼����',
   parent_id            varchar(50) not null default '0' comment '�������',
   full_id              varchar(2000) not null comment 'Ŀ¼�������(��ʽ:parent_id +,+ catalog_id)',
   classyear            int not null default 1 comment 'Ŀ¼�㼶',
   sortid               int not null default 1 comment 'Ŀ¼���',
   doc_belong_type      int not null default 2 comment 'Ŀ¼��������(1-����,2-�Ǹ���)',
   ref_deptid           varchar(50) not null comment '��˾���',
   create_id            varchar(50) comment '������ID',
   create_name          varchar(200) comment '����������',
   create_deptid        varchar(50) comment '��������ID',
   create_deptname      varchar(200) comment '������������',
   create_orgid         varchar(50) comment '��������',
   create_time          datetime comment '����ʱ��',
   update_id            varchar(50) comment '������ID',
   update_name          varchar(200) comment '����������',
   update_time          datetime comment '����ʱ��',
   deleted              int not null default 0 comment '�Ƿ�ɾ��(0-δɾ��,1-��ɾ��)',
   primary key (catalog_id)
)
COMMENT '�ĵ�Ŀ¼��Ϣ��';

alter table doc_t_catalog_info comment '�ĵ�Ŀ¼��Ϣ��';

/*==============================================================*/
/* Table: doc_t_document_info                                   */
/*==============================================================*/
create table doc_t_document_info
(
   iidd                 varchar(50) not null comment '�ĵ����',
   doc_name             varchar(200) not null comment '�ĵ�����',
   doc_size             bigint not null default 0 comment '�ĵ���С',
   doc_path             varchar(200) not null comment '�ļ��洢��minio��·��',
   preview_path         varchar(200) not null comment 'Ԥ��PDF�ļ�·��',
   doc_suffix           varchar(20) not null default 'unknown' comment '�ĵ���׺(�е��ļ�û�к�׺����ʹ��unknow��Ϊ����)',
   doc_catalog_id       varchar(50) not null default '0' comment '�ĵ�Ŀ¼��ţ�û��Ŀ¼��Ĭ��Ϊ0��',
   doc_belong_type      int(2) not null default 2 comment '�ĵ���������(1-�����ĵ�,2-�Ǹ���)',
   up_user_id           varchar(50) not null comment '�ϴ��û����',
   up_user_name         varchar(200) not null comment '�ϴ��û�����',
   up_time              timestamp not null default CURRENT_TIMESTAMP comment '�ĵ��ϴ�ʱ��',
   deleted              int(1) not null default 0 comment '0:δɾ����1:��ɾ��',
   deleted_time         timestamp not null default CURRENT_TIMESTAMP comment 'ɾ��ʱ��',
   ref_deptid           varchar(50) not null comment '��˾���',
   primary key (iidd)
);

alter table doc_t_document_info comment '�ĵ���Ϣ��';

/*==============================================================*/
/* Table: doc_t_person_recycle                                  */
/*==============================================================*/
create table doc_t_person_recycle
(
   iidd                 varchar(50) not null comment 'Ψһ���',
   userid               varchar(50) not null comment '�û����',
   doc_type             enum ('0', '1') not null default '0' comment '�ļ���Ŀ¼, 0:Ŀ¼,1:�ļ�',
   doc_id               varchar(50) not null comment '�ĵ���Ż���Ŀ¼���',
   deleted_time         timestamp not null default CURRENT_TIMESTAMP comment 'ɾ��ʱ��',
   doc_name             varchar(200) not null comment '�ĵ���Ŀ¼����',
   primary key (iidd)
);

/*==============================================================*/
/* Table: doc_t_personal_document                               */
/*==============================================================*/
create table doc_t_personal_document
(
   iidd                 varchar(50) not null comment 'Ψһ���',
   userid               varchar(50) not null comment '�û����',
   doc_id               varchar(50) not null comment '�ĵ����',
   deleted              int(1) not null comment '�Ƿ�ɾ��(0-δɾ��,1-��ɾ��)',
   ref_deptid           varchar(50) not null comment '��˾���',
   primary key (iidd)
);

alter table doc_t_personal_document comment '�����ĵ���Ϣ��';

/*==============================================================*/
/* Table: doc_t_shared_info                                     */
/*==============================================================*/
create table doc_t_shared_info
(
   iidd                 varchar(50) not null comment 'Ψһ���',
   doc_iidd             varchar(50) not null comment '�ĵ����',
   shared_type          int(1) not null comment '��������(0-Ŀ¼��1-�ļ�)',
   batch_id             bigint not null comment '�������α��',
   shared_time          timestamp not null default CURRENT_TIMESTAMP comment '����ʱ��',
   shared_userid        varchar(50) not null comment '�����û����',
   shared_username      varchar(200) not null comment '�����û�����',
   shared_receive_type  int(1) not null comment '������ն�������(0-��ʾ�û�,1-��ʾ�û���, 2-��ʾ����)',
   shared_receive_object_id varchar(50) not null comment '�û����û��飬���ű��',
   ref_deptid           varchar(50) not null comment '��˾���',
   root_node            int not null default 0 comment '0:�Ǹ�Ŀ¼,1:�Ǹ�Ŀ¼',
   primary key (iidd)
);

alter table doc_t_shared_info comment '�ĵ�������Ϣ��';

/*==============================================================*/
/* Table: doc_t_shared_with_me_skip                             */
/*==============================================================*/
create table doc_t_shared_with_me_skip
(
   iidd                 varchar(50) not null comment '����ID',
   userid               varchar(50) not null comment 'ɾ���û����',
   shared_id            varchar(50) not null comment '�����¼������ID',
   primary key (iidd)
)
ENGINE = innodb DEFAULT CHARACTER SET = 'utf8' COMMENT '�������ɾ����';

/*==============================================================*/
/* Table: ff_apaas_app_oper_log                                 */
/*==============================================================*/
create table ff_apaas_app_oper_log
(
   oper_id              bigint(20) not null auto_increment comment '��־����',
   oper_account         varchar(50) default '' comment '�����˺�',
   oper_name            varchar(50) default '' comment '������Ա(ҳ����ʾ)',
   oper_time            datetime comment '����ʱ��',
   belong_app           varchar(200) default '' comment '����Ӧ��',
   business_type        int default 1 comment 'ҵ�����ͣ�1���� 2�޸� 3ɾ����',
   oper_channel         int default 1 comment '����������1WEBվ�� 2΢�Ź��ں� 3OPENAPI��',
   oper_ip              varchar(128) default '' comment '������IP',
   oper_desc            varchar(2000) default '' comment '��������',
   ref_deptid           varchar(50) comment '��˾���',
   dept_name            varchar(50) default '' comment '��������',
   ref_appid            varchar(50) comment 'Ӧ�ñ��',
   app_type             int default 0 comment 'ҵ�����ͣ�0�������� 1����Ӧ�ã�',
   log_type             int default 0 comment '��־���ͣ�0������־ 1������־��',
   oper_content         longtext default NULL comment '������������',
   content              text default NULL comment '�洢����',
   primary key (oper_id)
)
comment 'Ӧ�ò�����־��¼��';

alter table ff_apaas_app_oper_log comment 'Ӧ�ò�����־��¼��';

/*==============================================================*/
/* Table: ff_apaas_bulletin                                     */
/*==============================================================*/
create table ff_apaas_bulletin
(
   flowid               varchar(50) not null comment '����id',
   flowmodelid          varchar(50) default NULL comment '����ģ��id',
   nodemodelid          varchar(50) default NULL comment '����ģ��id',
   flowno               varchar(200) default NULL comment '���̵���',
   create_userid        varchar(50) default NULL comment '������id',
   create_username      varchar(200) default NULL comment '����������',
   create_deptid        varchar(50) default NULL comment '��������id',
   create_deptname      varchar(200) default NULL comment '������������',
   create_orgid         varchar(50) default NULL comment '��������id',
   create_orgname       varchar(200) default NULL comment '������������',
   create_time          datetime default NULL comment '����ʱ��',
   update_userid        varchar(50) default NULL comment '�޸���id',
   update_username      varchar(200) default NULL comment '�޸�������',
   update_time          datetime default NULL comment '�޸�ʱ��',
   ref_deptid           varchar(50) default NULL comment '������˾id',
   ref_projectid        varchar(50) default NULL comment '������Ŀid',
   deleted              int not null default '0' comment '�Ƿ�ɾ��',
   current_nodename     varchar(1000) default NULL comment '��ǰ������',
   current_hander       varchar(1000) default NULL comment '��ǰ������',
   business_status      varchar(500) default NULL comment 'ҵ��״̬',
   bulletin_type        tinyint not null comment '�������� (0:ȫ����1:��Ӫ�̡�2:������ע����ҵ��3:ָ����Χ)',
   title                varchar(500) not null comment '��������',
   content              text not null comment '��������',
   fixed_deptid         text comment 'ָ����˾id,���Ӣ�Ķ��ŷָ�',
   deadline             datetime comment '֪ͨ������Ч����ʱ��',
   message_type         tinyint not null default 0 comment '��Ϣ����(0:˳����Ϣ,1:�ӳ���Ϣ,2:��ʱ��Ϣ)',
   delay_time           INT comment '�ӳٶ�����',
   scheduled_time       datetime comment '��ʱ���;���ʱ��',
   primary key (flowid)
)
engine = innodb
  default charset = utf8mb4
  collate = utf8mb4_0900_ai_ci
    comment ='���������¼��';

/*==============================================================*/
/* Table: ff_apaas_bulletin_record                              */
/*==============================================================*/
create table ff_apaas_bulletin_record
(
   iidd                 varchar(50) not null comment '����',
   bulletin_id          varchar(50) not null comment '�����id',
   userid               varchar(50) not null comment '��Ҫ֪ͨ���û�id',
   ref_deptid           varchar(50) not null comment '�û���˾id',
   status               tinyint not null default 0 comment '��Ϣ״̬ (0:δ��,1:�Ѷ�)',
   primary key (iidd)
)
engine = innodb
  default charset = utf8mb4
  collate = utf8mb4_0900_ai_ci
    comment ='����֪ͨ��¼��';

/*==============================================================*/
/* Table: ff_apaas_business_api                                 */
/*==============================================================*/
create table ff_apaas_business_api
(
   iidd                 varchar(50) not null comment '����',
   name                 varchar(250) not null comment '�ӿ�����',
   group_id             text not null comment '������',
   group_name           varchar(500) not null comment '��������',
   url                  varchar(500) not null comment '�����ַ��׺(/user/login)',
   method               int not null comment '���󷽷�(1:GET,2:POST)',
   sign                 int not null default 0 comment '�Ƿ���֤ǩ��(0: ��, 1: ��)',
   context_type         int not null comment '��������:(0: none, 1:application/x-www-form-urlencoded, 2: multipart/form-data, 3: application/json, 4: application/octet-stream)',
   body                 text comment '�������',
   response             text not null comment '��Ӧ����',
   sort_id              int not null default 0 comment '����ֵ',
   create_time          datetime not null comment '����ʱ��',
   create_id            varchar(50) not null comment '������ID',
   create_person        varchar(50) not null comment '����������',
   update_time          datetime not null comment '����ʱ��',
   update_id            varchar(50) not null comment '������ID',
   update_person        varchar(50) not null comment '����������',
   ref_app_id           varchar(50) not null comment 'Ӧ�ñ��',
   ref_app_name         varchar(500) not null comment 'Ӧ������',
   ref_project_id       varchar(50) not null comment '��Ŀ���',
   ref_dept_id          varchar(50) not null comment '��˾���',
   primary key (iidd)
)
COMMENT 'open api ��';

/*==============================================================*/
/* Table: ff_apaas_business_ref_app_config                      */
/*==============================================================*/
create table ff_apaas_business_ref_app_config
(
   iidd                 varchar(50) not null comment '����',
   business_api_id      varchar(50) not null comment 'ҵ��ӿ�ID',
   business_api_name    varchar(250) not null comment 'ҵ��ӿ�����',
   trigger_type         tinyint(1) not null comment '��������(1: ��ʱ����, 2: ����)',
   trigger_rule         varchar(50) comment '��������(1: �������ǰ,2: ������ɺ�)',
   trigger_server       varchar(50) comment '��������',
   trigger_server_name  varchar(200) comment '������������',
   node_id              varchar(50) comment '����ID',
   node_name            varchar(250) comment '��������',
   action_id            varchar(50) comment '����ID',
   action_name          varchar(50) comment '��������',
   remark               text comment '˵��',
   create_time          datetime not null comment '����ʱ��',
   create_id            varchar(50) not null comment '������ID',
   create_name          varchar(200) not null comment '����������',
   update_time          datetime not null comment '����ʱ��',
   update_id            varchar(50) not null comment '������ID',
   update_name          varchar(200) not null comment '����������',
   flowmodelid          varchar(50) comment '����ģ��ID',
   flowmodelname        varchar(500) comment '����ģ������',
   oflowmodelid         varchar(50) comment '����ģ��IDԭʼֵ',
   primary key (iidd)
)
COMMENT 'ҵ�����Ӧ������';

/*==============================================================*/
/* Table: ff_apaas_es_actorcond                                 */
/*==============================================================*/
create table ff_apaas_es_actorcond
(
   condid               varchar(50) not null comment '���',
   flowmodelid          varchar(50) not null comment '��������ģ�ͱ��',
   condname             varchar(200) comment '������Ա����',
   statement            text comment '�������',
   remark               varchar(2000) comment '��ע',
   primary key (condid, flowmodelid)
);

alter table ff_apaas_es_actorcond comment '���̻���������Ա���ñ�';

/*==============================================================*/
/* Table: ff_apaas_es_actorextdef                               */
/*==============================================================*/
create table ff_apaas_es_actorextdef
(
   actorext_id          varchar(50) not null comment '���',
   actorext_name        varchar(200) comment '��չ��Ա����',
   actorext_desc        varchar(500) comment '��չ����',
   assemblyname         varchar(200) comment '��������',
   actorext_type        int not null comment '��չ���� 0ȫ�� 1��Ŀ��',
   ref_projectid        varchar(50) comment '������ĿID',
   ref_deptid           varchar(50) comment '������˾ID',
   primary key (actorext_id)
);

alter table ff_apaas_es_actorextdef comment '������չ��Ա���ñ�';

/*==============================================================*/
/* Table: ff_apaas_es_agent                                     */
/*==============================================================*/
create table ff_apaas_es_agent
(
   iidd                 varchar(50) not null comment '����ID',
   userid               varchar(50) comment '�û����',
   appid                varchar(50) comment 'Ӧ�ñ��',
   agentid              varchar(50) comment '�����˱��',
   begintime            datetime comment '��ʼʱ��',
   endtime              datetime comment '����ʱ��',
   agentstatus          int not null default 0 comment '����״̬ 0 δ���� 1����',
   createtime           datetime not null comment '����ʱ��',
   primary key (iidd)
);

alter table ff_apaas_es_agent comment '������Ȩ��';

/*==============================================================*/
/* Table: ff_apaas_es_app                                       */
/*==============================================================*/
create table ff_apaas_es_app
(
   appid                varchar(50) not null comment 'Ӧ�ñ��',
   appname              varchar(200) comment 'Ӧ������',
   app_tablename        varchar(100) comment 'Ӧ�ñ�',
   listurl              varchar(500) comment 'Ӧ���б��ַ',
   formurl              varchar(500) comment 'Ӧ�������ַ',
   subject_config       varchar(500) comment '���̴�����������',
   remark               varchar(2000) comment 'Ӧ������',
   project              varchar(200) comment '��Ŀ���',
   appcode              varchar(200) comment 'Ӧ�ô���',
   source_type          int not null default 0 comment 'Ӧ����Դ 0 �Զ��� 1���ο���',
   app_type             int not null default 1 comment 'Ӧ������ 0�������� 1����Ӧ��',
   creater_id           varchar(50) comment '������ID',
   creater_name         varchar(200) comment '����������',
   create_deptid        varchar(50) comment '��������ID',
   create_deptname      varchar(200) comment '������������',
   create_time          datetime comment '����ʱ��',
   update_id            varchar(50) comment '��������ID',
   update_name          varchar(200) comment '������������',
   update_time          datetime comment '������ʱ��',
   deleted              int not null default 0 comment '�Ƿ�ɾ�� 0�� 1��',
   status               int not null default 0 comment 'Ӧ��״̬ 0ͣ�� 1����',
   icon                 varchar(300) comment 'Ӧ��ͼ��',
   projectid            varchar(50) comment '������ĿID',
   ref_deptid           varchar(50) comment '������˾ID',
   show_config          longtext comment 'չʾ��ʽ �洢��ʽ����JSON�ַ���',
   primary key (appid)
);

alter table ff_apaas_es_app comment 'Ӧ�ñ�';

/*==============================================================*/
/* Table: ff_apaas_es_app_actiontype                            */
/*==============================================================*/
create table ff_apaas_es_app_actiontype
(
   iidd                 varchar(50) not null comment '����ID',
   ref_appid            varchar(50) comment '����Ӧ��ID',
   actiontype_name      varchar(100) comment '����������',
   actiontype           varchar(50) comment '������',
   sortid               int not null default 0 comment '����ֵ',
   primary key (iidd)
);

alter table ff_apaas_es_app_actiontype comment 'Ӧ�ò������';

/*==============================================================*/
/* Table: ff_apaas_es_app_actiontype_default                    */
/*==============================================================*/
create table ff_apaas_es_app_actiontype_default
(
   iidd                 varchar(50) not null comment '����ID',
   app_type             int not null default 1 comment 'Ӧ������ 0�������� 1����Ӧ��',
   actiontype_name      varchar(100) comment '����������',
   actiontype           varchar(50) comment '������',
   sortid               int not null default 0 comment '����ֵ',
   primary key (iidd)
);

alter table ff_apaas_es_app_actiontype_default comment 'Ĭ��Ӧ�ò������';

/*==============================================================*/
/* Table: ff_apaas_es_app_organization                          */
/*==============================================================*/
create table ff_apaas_es_app_organization
(
   iidd                 varchar(50) not null comment '����ID',
   appid                varchar(50) not null comment 'Ӧ�ñ��',
   config_info          longtext not null comment '������Ϣ',
   trigger_mode         int not null comment '������ʽ 1���� 2 �޸� 3ɾ��',
   update_id            varchar(50) comment '��������ID',
   update_name          varchar(200) comment '������������',
   update_time          datetime comment '������ʱ��',
   projectid            varchar(50) not null comment '������ĿID',
   ref_deptid           varchar(50) not null comment '������˾ID',
   primary key (iidd)
);

alter table ff_apaas_es_app_organization comment 'Ӧ��������֯�ܹ���';

/*==============================================================*/
/* Table: ff_apaas_es_app_special                               */
/*==============================================================*/
create table ff_apaas_es_app_special
(
   appid                varchar(50) not null comment 'Ӧ�ñ��',
   appname              varchar(200) comment 'Ӧ������',
   app_tablename        varchar(100) comment 'Ӧ�ñ�',
   app_type             int not null default 1 comment 'Ӧ������ 0ȫ��Ӧ�� 1��ĿӦ��',
   ref_deptid           varchar(50) comment '������˾ID',
   creater_id           varchar(50) comment '������ID',
   creater_name         varchar(200) comment '����������',
   create_deptid        varchar(50) comment '��������ID',
   create_deptname      varchar(200) comment '������������',
   create_time          datetime comment '����ʱ��',
   update_id            varchar(50) comment '��������ID',
   update_name          varchar(200) comment '������������',
   update_time          datetime comment '������ʱ��',
   projectid            varchar(50) comment '������ĿID',
   primary key (appid)
);

alter table ff_apaas_es_app_special comment '����Ӧ�ñ�';

/*==============================================================*/
/* Table: ff_apaas_es_app_submit_limit                          */
/*==============================================================*/
create table ff_apaas_es_app_submit_limit
(
   appid                varchar(50) not null comment 'Ӧ��ID',
   is_all_limit         int comment '�Ƿ������ύ����(0��1��)',
   all_limit_total      int comment '�ύ��������',
   is_month_limit       int comment '�Ƿ��������ύ����(0��1��)',
   month_limit_total    int comment '���ύ��������',
   is_timing_limit      int comment '�Ƿ�ʱ����(0��1��)',
   begin_time           datetime comment '�����ύ��ʼʱ��',
   end_time             datetime comment '�����ύ����ʱ��',
   extention            longtext comment '��չ��Ϣ',
   create_userid        varchar(50) comment '������ID',
   create_username      varchar(200) comment '����������',
   create_time          datetime comment '����ʱ��',
   deleted              int comment '�Ƿ�ɾ��(0��1��)',
   ref_project          varchar(50) comment '������Ŀ',
   ref_deptid           varchar(50) comment '������˾',
   primary key (appid)
);

alter table ff_apaas_es_app_submit_limit comment 'Ӧ�������ύ���Ʊ�';

/*==============================================================*/
/* Table: ff_apaas_es_app_submit_log                            */
/*==============================================================*/
create table ff_apaas_es_app_submit_log
(
   iidd                 varchar(50) not null comment '����ID',
   extention            longtext comment '��չ��Ϣ',
   create_userid        varchar(50) comment '������ID',
   create_username      varchar(200) comment '����������',
   create_time          datetime comment '����ʱ��',
   deleted              int comment '�Ƿ�ɾ��(0��1��)',
   ref_appid            varchar(50) comment '����Ӧ��',
   ref_projectid        varchar(50) comment '������Ŀ',
   ref_deptid           varchar(50) comment '������˾',
   primary key (iidd)
);

alter table ff_apaas_es_app_submit_log comment 'Ӧ�������ύ��־��';

/*==============================================================*/
/* Table: ff_apaas_es_catalog                                   */
/*==============================================================*/
create table ff_apaas_es_catalog
(
   catalogid            varchar(50) not null comment '�����',
   fullid               varchar(1000) comment 'FULL���',
   catalogname          varchar(200) comment '�������',
   parentid             varchar(50) comment '�ϼ�����',
   remark               varchar(500) comment '��ע',
   sortid               int comment '����ֵ',
   classlayer           int not null default 1 comment '�㼶',
   deleted              int comment '�Ƿ�ɾ��',
   ref_projectid        varchar(50) comment '������ĿID',
   ref_deptid           varchar(50) comment '������˾ID',
   addtime              datetime comment '���ʱ��',
   creater_id           varchar(50) comment '������ID',
   creater_name         varchar(200) comment '����������',
   special_type         int not null default 0 comment '�Ƿ�������� 0�� 1��',
   primary key (catalogid)
);

alter table ff_apaas_es_catalog comment '��������';

/*==============================================================*/
/* Table: ff_apaas_es_f_actors                                  */
/*==============================================================*/
create table ff_apaas_es_f_actors
(
   faid                 varchar(50) not null comment '���',
   flowmodelid          varchar(50) not null comment '��������ģ�ͱ��',
   actorseq             int not null default 1 comment '��ɫ���',
   actortype            int not null default 10 comment '��ɫ��� 10���š�20�û���40�û���',
   actorid              varchar(50) comment '��ɫ���',
   primary key (faid)
);

alter table ff_apaas_es_f_actors comment '����������Ա��';

/*==============================================================*/
/* Table: ff_apaas_es_f_specactor                               */
/*==============================================================*/
create table ff_apaas_es_f_specactor
(
   fspeid               varchar(50) not null comment '���',
   flowmodelid          varchar(50) not null comment '��������ģ�ͱ��',
   actorseq             int not null default 1 comment '��ɫ���',
   spectype             int not null default 0 comment '����Ȩ����� 10���ġ�20��ֹ��30ɾ����40�߰졢50���ȡ�60��ͣ��70����',
   actortype            int not null default 10 comment '��ɫ��� 10���š�20�û���40�û���',
   actorid              varchar(50) comment '��ɫ���',
   primary key (fspeid)
);

alter table ff_apaas_es_f_specactor comment '��������Ȩ�����ñ�';

/*==============================================================*/
/* Table: ff_apaas_es_fields                                    */
/*==============================================================*/
create table ff_apaas_es_fields
(
   fieldid              varchar(50) not null comment '�ֶα��',
   appid                varchar(50) not null comment '����Ӧ�ñ��',
   fieldname            varchar(200) comment '�ֶ�����',
   fieldname_alias      varchar(200) comment '�ֶ����Ʊ���',
   cname                varchar(200) comment '��������',
   dtype                varchar(100) comment '�ֶθ�ʽ',
   dtypelength          int comment '��ʽ����',
   dtypepre             int comment 'С��λ',
   fieldtype            int not null default -1 comment 'һ������',
   isset                int not null default 0 comment '�������� 0��ͨ -1����·�� -2��ʾ����',
   refid                int not null default 0 comment '��������',
   refremote            int not null default 0 comment '������Χ���� 1�Զ��巶Χ 2���ݹ���',
   refvalue             longtext comment '��������ֵ',
   iskey                int not null comment '����ֵ',
   ref_formid           varchar(50) comment '������ID',
   deleted              integer default 0 comment '�Ƿ�ɾ��',
   primary key (fieldid)
);

alter table ff_apaas_es_fields comment 'Ӧ����Ϣ��';

/*==============================================================*/
/* Index: index_es_fields_appid                                 */
/*==============================================================*/
create index index_es_fields_appid on ff_apaas_es_fields
(
   appid,
   deleted
);

/*==============================================================*/
/* Index: index_es_fields_formid                                */
/*==============================================================*/
create index index_es_fields_formid on ff_apaas_es_fields
(
   ref_formid,
   deleted
);

/*==============================================================*/
/* Table: ff_apaas_es_fields_special                            */
/*==============================================================*/
create table ff_apaas_es_fields_special
(
   fieldid              varchar(50) not null comment '�ֶα��',
   appid                varchar(50) not null comment '����Ӧ�ñ��',
   fieldname            varchar(200) comment '�ֶ�����',
   cname                varchar(200) comment '��������',
   fieldtype            int not null default -1 comment 'һ������',
   refid                int not null default 0 comment '��������',
   refvalue             longtext comment '��������ֵ',
   iskey                int not null comment '����ֵ',
   primary key (fieldid)
);

alter table ff_apaas_es_fields_special comment '����Ӧ����Ϣ��';

/*==============================================================*/
/* Table: ff_apaas_es_flow                                      */
/*==============================================================*/
create table ff_apaas_es_flow
(
   flowid               varchar(50) not null comment '���̱��',
   flowmodelid          varchar(50) comment '��������ģ�ͱ��',
   appid                varchar(50) comment 'Ӧ�ñ��',
   subject              varchar(500) comment '����',
   premessageid         varchar(50) comment 'ǰ����Ϣ���',
   preflowid            varchar(50) comment 'ǰ�����̱��',
   jointype             int not null default 10 comment '�ν���� 10��ͨ��20�νӡ�30Ƕ��',
   starttime            datetime comment '����ʱ��',
   endtime              datetime comment '����ʱ��',
   starterid            varchar(50) comment '������Ա���',
   expectendtime        datetime comment 'Ԥ�ƽ���ʱ��',
   status               int not null default 0 comment '����״̬',
   attachment           int not null default 0 comment '�Ƿ���ڸ���',
   flowno               varchar(100) comment '���̵���',
   deleted              int not null comment '�Ƿ�ɾ�� 0�� 1��',
   business_status      varchar(500) comment '��Ӧҵ��״̬',
   projectid            varchar(50) comment '������ĿID',
   ref_deptid           varchar(50) comment '������˾ID',
   current_handerid     varchar(1000) comment '��ǰ������ID',
   current_hander       varchar(1000) comment '��ǰ����������',
   current_nodeid       varchar(1000) comment '��ǰ������ID',
   current_nodename     varchar(1000) comment '��ǰ����������',
   primary key (flowid)
);

alter table ff_apaas_es_flow comment '����ʵ����';

/*==============================================================*/
/* Index: es_flow_premessageid                                  */
/*==============================================================*/
create index es_flow_premessageid on ff_apaas_es_flow
(
   premessageid
);

/*==============================================================*/
/* Table: ff_apaas_es_flowdelelog                               */
/*==============================================================*/
create table ff_apaas_es_flowdelelog
(
   flowid               varchar(50) not null comment '���̱��',
   appid                varchar(50) comment 'Ӧ�ñ��',
   subject              varchar(500) comment '��������',
   remark               varchar(2000) comment 'ɾ��ԭ��',
   deletedtime          datetime comment 'ɾ��ʱ��',
   douserid             varchar(50) comment 'ɾ���˱��',
   primary key (flowid)
);

alter table ff_apaas_es_flowdelelog comment '����ʵ��ɾ����־��';

/*==============================================================*/
/* Table: ff_apaas_es_flowfromto                                */
/*==============================================================*/
create table ff_apaas_es_flowfromto
(
   ftid                 varchar(50) not null comment '���',
   fflowid              varchar(50) comment '��ʼ���̱��',
   tflowid              varchar(50) comment '��β���̱��',
   premessageid         varchar(50) comment 'ǰ����Ϣ���',
   linkmessageid        varchar(50) comment '������Ϣ���',
   jointype             int not null default 10 comment '�ν���� 10��ͨ��20�νӡ�30Ƕ��',
   primary key (ftid)
);

alter table ff_apaas_es_flowfromto comment '����ʵ��˳���';

/*==============================================================*/
/* Table: ff_apaas_es_flowmodel                                 */
/*==============================================================*/
create table ff_apaas_es_flowmodel
(
   flowmodelid          varchar(50) not null comment '����ģ�ͱ��',
   flowname             varchar(200) comment '����ģ������',
   appid                varchar(50) comment '����Ӧ�ñ��',
   preflowmodelid       varchar(50) comment 'ǰ������ģ�ͱ��',
   oflowmodelid         varchar(50) comment 'ԭʼ����ģ�ͱ��',
   status               int not null default 0 comment '����״̬ 0δ���� 1����',
   remark               varchar(500) comment '����',
   unit_config          longtext comment 'ʱ������JSON��',
   totalhours           int not null default 0 comment '��ʱ��',
   timeunit             int not null default 0 comment 'ʱ�޵�λ',
   deleted              int not null default 0 comment '�Ƿ�ɾ��',
   flowchart            longtext comment '����ͼ�ַ���',
   flowbusid            varchar(50) comment 'ҵ�����̱��',
   creater_id           varchar(50) comment '������ID',
   creater_name         varchar(200) comment '����������',
   create_deptid        varchar(50) comment '��������ID',
   create_deptname      varchar(200) comment '������������',
   create_time          datetime comment '����ʱ��',
   update_id            varchar(50) comment '��������ID',
   update_name          varchar(200) comment '������������',
   update_time          datetime comment '������ʱ��',
   ref_deptid           varchar(50) comment '������˾ID',
   publish_id           varchar(50) comment '������ID',
   publish_name         varchar(200) comment '������',
   publish_time         datetime comment '����ʱ��',
   is_publish           int default 0 comment '�Ƿ񷢲���',
   specactordata        longtext comment 'ȫ������Ȩ����Ա���ü��� ����ǰ��ҳ��չʾ',
   primary key (flowmodelid)
);

alter table ff_apaas_es_flowmodel comment '����ģ�ͱ�';

/*==============================================================*/
/* Table: ff_apaas_es_flowmodel_notice_config                   */
/*==============================================================*/
create table ff_apaas_es_flowmodel_notice_config
(
   iidd                 varchar(50) not null comment '����ID',
   flowmodelid          varchar(50) not null comment '����ģ�ͱ��',
   configtype           int not null default 0 comment '���ö��� 0ȫ�� 1����',
   noticetype           int not null default 0 comment '֪ͨ��ʽ 0����֪ͨ',
   operattype           text comment '������� �洢JSON�ַ���[{value:10,name:''�ύ''}],��̨��ʹ��ʱ���н���',
   noticemethod         text comment '֪ͨ��ʽ�洢JSON�ַ���[{value:0,name:''����''}],��̨��ʹ��ʱ���н���',
   noticeobject         text comment '֪ͨ����洢JSON�ַ���[{value:0,name:''������''}],��̨��ʹ��ʱ���н���
            ���������֪ͨ����Ϊ������������Ƕ���Ӽ����󼯺ϵ����',
   noticeobject_other   text comment '֪ͨ����������ֵ',
   form_appoint         varchar(1000) comment '��ָ�� �洢��ʽ{"type":200,"list:":[''����Ա�ֶα���'']} type:200 ��ʾ��Ա 210��ʾ���� 220��ʾ��ɫ',
   noticecontent        text comment '֪ͨ����',
   sortid               int not null default 0 comment '����ֵ',
   ref_deptid           varchar(50) comment '������˾ID',
   primary key (iidd)
);

alter table ff_apaas_es_flowmodel_notice_config comment '���̴���֪ͨ���ñ�';

/*==============================================================*/
/* Table: ff_apaas_es_flowmodel_visit_config                    */
/*==============================================================*/
create table ff_apaas_es_flowmodel_visit_config
(
   flowmodelid          varchar(50) not null comment '����ģ�ͱ��',
   islimitcount         int not null default 0 comment '�Ƿ������ύ���� 0�� 1��',
   limitcount           int not null default 0 comment '�����ύ����',
   islimitmonthcount    int not null default 0 comment '�Ƿ�����ÿ���ύ���� 0�� 1��',
   limitmonthcount      int not null default 0 comment '����ÿ���ύ����',
   islimitpersoncount   int not null default 0 comment '���Ƶ����ύ�ܴ��� 0�� 1��',
   limitpersoncount     int not null default 0 comment '���Ƶ����ύ����',
   islimitaddway        int not null default 0 comment '�Ƿ��������ͨ��',
   limitbegintime       datetime comment '������ʼʱ��',
   limitendtime         datetime comment '��������ʱ��',
   isallowfree          int not null default 0 comment '�Ƿ��������ܵ�¼',
   allowfree_url        varchar(500) comment '���ܷ��ʵ�ַ',
   ref_deptid           varchar(50) comment '������˾ID',
   primary key (flowmodelid)
);

alter table ff_apaas_es_flowmodel_visit_config comment '���̷��ʻ������ñ�';

/*==============================================================*/
/* Table: ff_apaas_es_flowpauselog                              */
/*==============================================================*/
create table ff_apaas_es_flowpauselog
(
   id                   varchar(50) not null comment '���',
   flowid               varchar(50) comment '���̱��',
   pauserreason         varchar(500) comment '��ͣԭ��',
   pausetime            datetime comment '��ͣʱ��',
   douserid             varchar(50) comment '��ͣ�˱��',
   continuetime         datetime comment '����ʱ��',
   contuserid           varchar(50) comment '�����˱��',
   status               int not null default 0 comment '״̬',
   primary key (id)
);

alter table ff_apaas_es_flowpauselog comment '����ʵ����ͣ��־��';

/*==============================================================*/
/* Table: ff_apaas_es_influx_result                             */
/*==============================================================*/
create table ff_apaas_es_influx_result
(
   messageid            varchar(50) not null comment '��Ϣ���',
   flowid               varchar(50) comment '���̱��',
   nodeid               varchar(50) comment '���ڱ��',
   flowmodelid          varchar(50) comment '����ģ��ID',
   nodemodelid          varchar(50) comment '����ģ��ID',
   actionid             int not null default 1 comment '��������� 1ͬ�� 0��ͬ��',
   userid               varchar(50) comment '������ID',
   primary key (messageid)
);

alter table ff_apaas_es_influx_result comment '��ǩ�����¼��';

/*==============================================================*/
/* Table: ff_apaas_es_message                                   */
/*==============================================================*/
create table ff_apaas_es_message
(
   messageid            varchar(50) not null comment '��Ϣ���',
   flowid               varchar(50) comment '���̱��',
   nodeid               varchar(50) comment '���ڱ��',
   messagetype          int not null default 0 comment '��Ϣ���',
   receiverid           varchar(50) comment '��ǰ������',
   recdeptid            varchar(50) comment '��ǰ������',
   recorgid             varchar(50) comment '��ǰ�������',
   originid             varchar(50) comment 'ԭ������',
   senderid             varchar(50) comment 'ǰ������',
   senderdeptid         varchar(50) comment 'ǰ������',
   senderorgid          varchar(50) comment 'ǰ�������',
   sendtime             datetime comment '�ʹ�ʱ��',
   receivetime          datetime comment '����ʱ��',
   readtime             datetime comment '����ʱ��',
   receivetype          int comment '�������',
   expected             datetime comment 'Ԥ�ƽ���ʱ��',
   warntime             datetime comment '��Ӧ����ʱ��',
   recentprocesstime    datetime comment '�������ʱ��',
   factors              varchar(100) comment '��Դ��Ա�б�',
   tactors              varchar(1000) comment '������Ա�б�',
   actortype            int not null default 0 comment '��ɫ���',
   actionid             int not null default 0 comment '���������',
   receivertype         int not null default 0 comment '��������ʱ���������',
   orgrecid             varchar(50) comment '��������ʱ���յ�λID',
   orgrecname           varchar(300) comment '��������ʱ���յ�λ����',
   opinion              varchar(1000) comment '�������',
   isread               int not null default 0 comment '�Ƿ�����',
   important            int not null default 1 comment '��Ϣ���� 0�ϵ͡�1һ�㡢2��Ҫ',
   deleted              int not null default 0 comment '�Ƿ�ɾ��',
   status               int not null default 0 comment '��Ϣ״̬',
   prepausestatus       int not null default 0 comment '��ͣǰ״̬',
   timeout_before       int not null default 0 comment '��ʱǰ��־(0:�Ǽ�����ʱ, 1: ������ʱ))',
   timeout_after        int not null default 0 comment '��ʱ���־(0:�Ǽ�����ʱ, 1: ������ʱ))',
   update_time          datetime default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '�޸�ʱ��',
   shelve               int not null default 0 comment '�Ƿ����',
   primary key (messageid)
);

alter table ff_apaas_es_message comment '������Ϣ��¼��';

/*==============================================================*/
/* Index: index_message_flowid                                  */
/*==============================================================*/
create index index_message_flowid on ff_apaas_es_message
(
   flowid
);

/*==============================================================*/
/* Table: ff_apaas_es_messagefromto                             */
/*==============================================================*/
create table ff_apaas_es_messagefromto
(
   iidd                 varchar(50) not null comment '����',
   fmessageid           varchar(50) comment '��ʼ��Ϣ���',
   tmessageid           varchar(50) comment '��β��Ϣ���',
   primary key (iidd)
);

alter table ff_apaas_es_messagefromto comment '������Ϣ˳���';

/*==============================================================*/
/* Index: messagefromto_fmessageid                              */
/*==============================================================*/
create index messagefromto_fmessageid on ff_apaas_es_messagefromto
(
   fmessageid
);

/*==============================================================*/
/* Table: ff_apaas_es_messageopinion                            */
/*==============================================================*/
create table ff_apaas_es_messageopinion
(
   iidd                 varchar(50) not null comment '����',
   messageid            varchar(50) comment '��Ϣ���',
   mpcontent            text comment '����',
   updatetime           datetime comment '���ʱ��',
   primary key (iidd)
);

alter table ff_apaas_es_messageopinion comment '��չ�����';

/*==============================================================*/
/* Table: ff_apaas_es_msgprocess                                */
/*==============================================================*/
create table ff_apaas_es_msgprocess
(
   mpid                 varchar(50) not null comment '����',
   flowid               varchar(50) comment '���̱��',
   userid               varchar(50) comment '�û����',
   username             varchar(200) comment '�û�����',
   msgtype              int not null comment '����������� 0������� 1��ͣ���� 2�ָ����� 3��ֹ���� 50ȡ������ 60���봫�� 70����Э�� 80���빵ͨ',
   mpcontent            text comment '�������',
   mptime               datetime comment '����ʱ��',
   flowmodelid          varchar(50) comment '����ģ�ͱ��',
   nodemodelid          varchar(50) comment '����ģ�ͱ��',
   messageid            varchar(50) comment '��Ϣ���',
   primary key (mpid)
);

alter table ff_apaas_es_msgprocess comment '���������';

/*==============================================================*/
/* Table: ff_apaas_es_msgsupervise                              */
/*==============================================================*/
create table ff_apaas_es_msgsupervise
(
   mpid                 varchar(50) not null comment '����',
   flowid               varchar(50) comment '���̱��',
   userid               varchar(50) comment '�û����',
   username             varchar(200) comment '�û�����',
   mpcontent            text comment '�������',
   addtime              datetime comment '���ʱ��',
   primary key (mpid)
);

alter table ff_apaas_es_msgsupervise comment '���������';

/*==============================================================*/
/* Table: ff_apaas_es_msgurg_log                                */
/*==============================================================*/
create table ff_apaas_es_msgurg_log
(
   mpid                 varchar(50) not null comment '����',
   flowid               varchar(50) comment '���̱��',
   userid               varchar(50) comment '�û����',
   username             varchar(200) comment '�û�����',
   receiverid           varchar(50) comment '��֪ͨ��ID',
   receivername         varchar(200) comment '��֪ͨ������',
   mpcontent            text comment '�߰�����',
   addtime              datetime comment '���ʱ��',
   primary key (mpid)
);

alter table ff_apaas_es_msgurg_log comment '�߰���־��';

/*==============================================================*/
/* Table: ff_apaas_es_n_m_action                                */
/*==============================================================*/
create table ff_apaas_es_n_m_action
(
   nmactionid           varchar(50) not null comment '���',
   flowmodelid          varchar(50) not null comment '��������ģ�ͱ��',
   nodemodelid          varchar(50) not null comment '��������ģ��',
   actionid             int not null default 1 comment '����ID',
   actionname           varchar(50) comment '��������',
   isdefault            int not null default 0 comment '�Ƿ�ȱʡ',
   sync_exec            int not null default 0 comment '�Ƿ�ͬ��ִ�� 0�� 1��',
   busactionid          varchar(50) comment '��ҵ�������',
   primary key (nmactionid)
);

alter table ff_apaas_es_n_m_action comment '���̻��ڶ�����';

/*==============================================================*/
/* Table: ff_apaas_es_n_m_action_bind                           */
/*==============================================================*/
create table ff_apaas_es_n_m_action_bind
(
   nmactionid           varchar(50) not null comment '���',
   flowmodelid          varchar(50) not null comment '��������ģ�ͱ��',
   nodemodelid          varchar(50) not null comment '��������ģ��',
   actionid             int not null default 1 comment '����ID',
   bind_type            int not null default 0 comment '������ 0�������� 1�����޸� 2�Զ��� 3����ǩԼ',
   bind_appid           varchar(200) comment '��Ӧ��ID ��ʽΪ[��Ŀid,Ӧ��id]',
   bind_oflowmodelid    varchar(50) comment '������ģ��ID',
   bind_actionid        int default 0 comment '����ݻ��ڰ�ť',
   trigger_rule         longtext comment '��������',
   cond_rule            longtext comment '��������',
   value_rule           longtext comment '��ֵ����',
   custom_identy        varchar(100) comment '�Զ����ʶ',
   bind_title           varchar(100) comment '�󶨱���',
   sortid               int not null comment '����ֵ',
   primary key (nmactionid)
);

alter table ff_apaas_es_n_m_action_bind comment '���̻��ڶ����󶨹����ӱ�';

/*==============================================================*/
/* Table: ff_apaas_es_n_m_action_influxactor                    */
/*==============================================================*/
create table ff_apaas_es_n_m_action_influxactor
(
   nmactionid           varchar(50) not null comment '���',
   flowmodelid          varchar(50) not null comment '��������ģ�ͱ��',
   nodemodelid          varchar(50) not null comment '��������ģ��',
   actionid             int not null default 1 comment '����ID',
   actionname           varchar(50) comment '��������',
   primary key (nmactionid)
);

alter table ff_apaas_es_n_m_action_influxactor comment '���̻�ǩ���ڶ�����';

/*==============================================================*/
/* Table: ff_apaas_es_n_m_actor                                 */
/*==============================================================*/
create table ff_apaas_es_n_m_actor
(
   nmactorid            varchar(50) not null comment '���',
   flowmodelid          varchar(50) not null comment '��������ģ�ͱ��',
   nodemodelid          varchar(50) not null comment '��������ģ��',
   actorseq             int not null default 1 comment '��ɫ���',
   actorclass           int not null default 0 comment '��Ա������� 0���졢1��֪/Э��',
   actortype            int not null default 10 comment '��ɫ��� 10���š�20�û���30������Ա��40�û���',
   actorid              varchar(50) comment '��ɫ���',
   primary key (nmactorid)
);

alter table ff_apaas_es_n_m_actor comment '���̻�����Ա��';

/*==============================================================*/
/* Table: ff_apaas_es_n_m_att_config                            */
/*==============================================================*/
create table ff_apaas_es_n_m_att_config
(
   iidd                 varchar(50) not null comment '���',
   flowmodelid          varchar(50) not null comment '��������ģ�ͱ��',
   nodemodelid          varchar(50) not null comment '��������ģ��',
   condrule             longtext comment '��������',
   addtime              datetime comment '���ʱ��',
   primary key (iidd),
   unique key AK_key_flowmodel_nodemodel (flowmodelid, nodemodelid)
);

alter table ff_apaas_es_n_m_att_config comment '���̻��ڸ�����������';

/*==============================================================*/
/* Table: ff_apaas_es_n_m_field                                 */
/*==============================================================*/
create table ff_apaas_es_n_m_field
(
   nmfieldid            varchar(50) not null comment '���',
   flowmodelid          varchar(50) not null comment '��������ģ�ͱ��',
   nodemodelid          varchar(50) not null comment '��������ģ��',
   fieldid              varchar(50) comment '������Ϣ����',
   fieldname            varchar(200) comment '�ֶ�����',
   cname                varchar(200) comment '��������',
   isvisible            int not null default 1 comment '�Ƿ�ɼ�',
   isedit               int not null default 1 comment '�Ƿ�ɱ༭',
   isrequired           int not null default 1 comment '�Ƿ����',
   iskey                int not null default 0 comment '����ֵ',
   subtable_config      longtext comment '�ӱ���������',
   primary key (nmfieldid)
);

alter table ff_apaas_es_n_m_field comment '���̻�����Ϣ���';

/*==============================================================*/
/* Index: index_n_m_field_flowmodelid                           */
/*==============================================================*/
create index index_n_m_field_flowmodelid on ff_apaas_es_n_m_field
(
   flowmodelid,
   nodemodelid
);

/*==============================================================*/
/* Table: ff_apaas_es_n_m_flow                                  */
/*==============================================================*/
create table ff_apaas_es_n_m_flow
(
   nmflowid             varchar(50) not null comment '���',
   flowmodelid          varchar(50) not null comment '��������ģ�ͱ��',
   nodemodelid          varchar(50) not null comment '��������ģ��',
   flowseq              int not null default 1 comment '˳���',
   linkflowmodelid      varchar(50) comment '���ӵ�����ģ�ͱ��',
   ismaster             int not null default 1 comment '����',
   isreader             int not null default 0 comment '��֪',
   isassist             int not null default 0 comment 'Э��',
   trackrange           int not null default 0 comment '�����̸���Ȩ��',
   islink               int not null default 0 comment '�������� 0Ƕ�� 1�ν�',
   nmflow_config        longtext comment '�߼����� ��¼����������ʱ���ֶ�ӳ���ϵ����Ҫ���ڳ�ʼ����ֵ',
   primary key (nmflowid)
);

alter table ff_apaas_es_n_m_flow comment '���̻������������ñ�';

/*==============================================================*/
/* Table: ff_apaas_es_n_m_link                                  */
/*==============================================================*/
create table ff_apaas_es_n_m_link
(
   linkid               varchar(50) not null comment '���',
   flowmodelid          varchar(50) not null comment '��������ģ�ͱ��',
   nodemodela           varchar(50) not null comment '����A',
   nodemodelb           varchar(50) not null comment '����B',
   actionid             int not null default 0 comment '����ID',
   linkname             varchar(200) comment '��������',
   linkrule             text comment '��������',
   remark               varchar(2000) comment '��ע',
   counter              int not null default 0 comment '�����߼�����',
   tipsname             varchar(200) comment '��ʾ����',
   primary key (linkid, flowmodelid)
);

alter table ff_apaas_es_n_m_link comment '���̻������ӱ�';

/*==============================================================*/
/* Table: ff_apaas_es_n_m_specactor                             */
/*==============================================================*/
create table ff_apaas_es_n_m_specactor
(
   nmspeid              varchar(50) not null comment '���',
   flowmodelid          varchar(50) not null comment '��������ģ�ͱ��',
   nodemodelid          varchar(50) not null comment '��������ģ��',
   actorseq             int not null default 1 comment '˳���',
   spectype             int not null default 0 comment '����Ȩ�����',
   actortype            int not null default 10 comment '��ɫ��� 10���š�20�û���40�û���',
   actorid              varchar(50) comment '��ɫ���',
   primary key (nmspeid)
);

alter table ff_apaas_es_n_m_specactor comment '���̻�������Ȩ�����ñ�';

/*==============================================================*/
/* Table: ff_apaas_es_node                                      */
/*==============================================================*/
create table ff_apaas_es_node
(
   nodeid               varchar(50) not null comment '���ڱ��',
   flowid               varchar(50) comment '���̱��',
   flowmodelid          varchar(50) comment '����ģ�ͱ��',
   nodemodelid          varchar(50) not null comment '����ģ�ͱ��',
   nodemodeltype        int not null default 0 comment '����ģ�����',
   worktype             int not null default 0 comment '���ڹ������',
   starttime            datetime comment '����ʱ��',
   actionid             int not null default 0 comment '���ڳ���״̬',
   expectnumber         int not null default 1 comment '����Ӧ������(����)',
   arrivednumber        int not null default 1 comment 'ʵ���Ѵ�����',
   status               int not null default 0 comment '����״̬',
   prepausestatus       int not null default 0 comment '��ͣǰ״̬����',
   statustime           datetime comment '���״̬���ʱ��',
   primary key (nodeid)
);

alter table ff_apaas_es_node comment '���̻���ʵ����';

/*==============================================================*/
/* Index: index_es_node_flowid                                  */
/*==============================================================*/
create index index_es_node_flowid on ff_apaas_es_node
(
   flowid
);

/*==============================================================*/
/* Index: index_es_node_flowmodelid                             */
/*==============================================================*/
create index index_es_node_flowmodelid on ff_apaas_es_node
(
   flowmodelid,
   nodemodelid
);

/*==============================================================*/
/* Table: ff_apaas_es_node_temp                                 */
/*==============================================================*/
create table ff_apaas_es_node_temp
(
   nodeid               varchar(50) not null comment '����',
   actionsave           int comment '����ID',
   receiversave         varchar(2000) comment '������XML��',
   primary key (nodeid)
);

alter table ff_apaas_es_node_temp comment '���̻�����ʱ��';

/*==============================================================*/
/* Table: ff_apaas_es_nodefromto                                */
/*==============================================================*/
create table ff_apaas_es_nodefromto
(
   iidd                 varchar(50) not null comment '����',
   fnodeid              varchar(50) comment '��ʼ���ڱ��',
   tnodeid              varchar(50) comment '��β���ڱ��',
   primary key (iidd)
);

alter table ff_apaas_es_nodefromto comment '���̻���˳���';

/*==============================================================*/
/* Table: ff_apaas_es_nodemodel                                 */
/*==============================================================*/
create table ff_apaas_es_nodemodel
(
   flowmodelid          varchar(50) not null comment '����ģ�ͱ��',
   nodemodelid          varchar(50) not null comment '���̻��ڱ��',
   nodebusid            varchar(50) comment '�󶨵�ҵ�񻷽ڱ��',
   nodename             varchar(200) comment '��������',
   opid                 varchar(50) comment '������ͼ���',
   type                 int not null comment '�������',
   pathid               int comment '����·��',
   counter              int not null default 1 comment '����Ļ�����',
   masternode           varchar(50) comment '���ͻ���ģ��',
   masterpath           int comment '����·��',
   remark               varchar(500) comment '����',
   respond_unit_config  longtext comment '��Ӧʱ������JSON��',
   respondhours         int not null default 0 comment '��Ӧʱ��',
   respond_timeunit     int not null default 0 comment '��Ӧʱ�޵�λ',
   unit_config          longtext comment '����ʱ������JSON��',
   totalhours           int not null default 0 comment '����ʱ��',
   timeunit             int not null default 0 comment '����ʱ�޵�λ',
   viewattach           varchar(50) not null default '0' comment '����Ȩ��',
   warninghours         numeric(18,2) default 0 comment 'Ԥ��ʱ��',
   canautopass          int not null default 0 comment '�ܷ��Զ�ͨ��',
   cancustlimit         int not null default 0 comment '�ܷ�ָ��ʱ��',
   takeover             int not null default 0 comment '�Ƿ�������',
   stopflow             int not null default 0 comment '�Ƿ�������ֹ',
   canjump              int not null default 0 comment '�Ƿ�������ת',
   canback              int not null default 0 comment '�Ƿ������˻�',
   cantakeback          int not null default 0 comment '�Ƿ��������',
   canattemper          int not null default 0 comment '�Ƿ��������',
   cantransmit          int not null default 0 comment '�Ƿ�������',
   cancommunic          int not null default 0 comment '�Ƿ�����ͨ',
   canbackhasdone       int not null default 0 comment '�Ƿ�������',
   canassist            int not null default 0 comment '�Ƿ�����Э��',
   canfreetakeover      int not null default 0 comment '�Ƿ��������ɽ���',
   canshowprocess       int not null default 1 comment '�Ƿ���ʾ�������',
   requiredopinion      int not null default 1 comment '�Ƿ����������',
   actordata            longtext comment '������Ա���ü��� ����ǰ��ҳ��չʾ',
   specactordata        longtext comment '��������Ȩ����Ա���ü��� ����ǰ��ҳ��չʾ',
   business_status      varchar(200) comment '��Ӧҵ��״̬',
   check_for_all        int default 1 comment '�Ƿ���Ҫ�����˻�ǩ',
   check_by_back        int default 0 comment '�Ƿ�ͨ����̨�����ǩ',
   chooseperson         int default 1 comment '�Ƿ���Ҫ������ѡ���ǩ��Ա',
   relation_app         longtext comment '��������Ӧ�÷�Χ �洢��ʽ[{"name":"Ӧ������","value":"Ӧ��id"}]',
   relation_app_tip     varchar(500) comment '��������ͼ������',
   allow_close_relation_app int not null default 1 comment '�Ƿ�����رչ������� 1���� 0������',
   not_find_node_tip    varchar(400) comment '�Ҳ�����һ������·����ʾ��',
   auto_send            int default 0 comment '���������Ƿ��Զ����� 0�� 1��',
   primary key (flowmodelid, nodemodelid)
);

alter table ff_apaas_es_nodemodel comment '���̻���ģ�ͱ�';

/*==============================================================*/
/* Table: ff_apaas_es_notice_log                                */
/*==============================================================*/
create table ff_apaas_es_notice_log
(
   iidd                 varchar(50) not null comment '����ID',
   noticetype_one       int not null comment '֪ͨ���� ���졢�߰졢��ʱ����',
   noticetype_two       int default -1 comment '֪ͨС�� ���ݲ�֪ͬͨ����������֪ͨС����Ϣ',
   noticemethod         int not null default 0 comment '֪ͨ��ʽ',
   noticeobject         varchar(500) comment '֪ͨ�����ʶ ���ݲ�֪ͬͨ��ʽ��¼��صĶ����ʶ ����Ŷ�Ӧ�ֻ�����',
   noticecontent        text comment '֪ͨ����',
   noticeurl            varchar(500) comment '֪ͨ����url',
   receiverid           varchar(50) comment '��֪ͨ��ID',
   receivername         varchar(200) comment '��֪ͨ������',
   noticetime           datetime comment '֪ͨʱ��',
   ref_flowid           varchar(50) comment '��������ID',
   ref_messageid        varchar(50) comment '������ϢID',
   projectid            varchar(50) comment '������ĿID',
   ref_deptid           varchar(50) comment '������˾ID',
   deleted              int not null default 0 comment '�Ƿ�ɾ�� 0�� 1��',
   ref_overtime_iidd    varchar(50) comment '������ʱ֪ͨ���ñ�IIDD',
   primary key (iidd)
);

alter table ff_apaas_es_notice_log comment '֪ͨ��Ϣ��־��¼��';

/*==============================================================*/
/* Table: ff_apaas_es_overtime_notice_config                    */
/*==============================================================*/
create table ff_apaas_es_overtime_notice_config
(
   iidd                 varchar(50) not null comment '����ID',
   configtype           int not null default 0 comment '���ö��� 0ȫ���� 1ĳ������',
   flowmodelid          varchar(50) comment '����ģ�ͱ��',
   nodemodelid          varchar(50) comment '����ģ�ͱ��',
   noticetype           int not null default 0 comment '֪ͨ��ʽ 0��Ӧ 1����',
   operattype           int not null default 0 comment '������� 0��ʱǰ 1��ʱ��',
   overtime             int not null default 0 comment '��ʱֵ',
   timeunit             int not null comment '��ʱֵ��� ���ӡ�Сʱ����',
   noticemethod         text comment '֪ͨ��ʽ�洢JSON�ַ���[{value:0,name:''����''}],��̨��ʹ��ʱ���н���',
   noticeobject         text comment '֪ͨ����洢JSON�ַ���[{value:0,name:''������''}],��̨��ʹ��ʱ���н���
            ���������֪ͨ����Ϊ������������Ƕ���Ӽ����󼯺ϵ����',
   noticeobject_other   text comment '֪ͨ����������ֵ',
   form_appoint         varchar(1000) comment '��ָ�� �洢��ʽ{"type":200,"list:":[''����Ա�ֶα���'']} type:200 ��ʾ��Ա 210��ʾ���� 220��ʾ��ɫ',
   noticecontent        text comment '֪ͨ����',
   sortid               int not null default 0 comment '����ֵ',
   ref_deptid           varchar(50) comment '������˾ID',
   primary key (iidd)
);

alter table ff_apaas_es_overtime_notice_config comment '��ʱ֪ͨ���ñ�';

/*==============================================================*/
/* Table: ff_apaas_es_receivelist                               */
/*==============================================================*/
create table ff_apaas_es_receivelist
(
   id                   varchar(50) not null comment '����',
   messageid            varchar(50) comment '��Ϣ���',
   receiveid            varchar(50) comment '�����˱��',
   originid             varchar(50) comment 'ԭ�����˱��',
   status               int not null default 0 comment '״̬',
   primary key (id)
);

alter table ff_apaas_es_receivelist comment '��������Ա��';

/*==============================================================*/
/* Table: ff_apaas_es_site_news                                 */
/*==============================================================*/
create table ff_apaas_es_site_news
(
   iidd                 varchar(50) not null comment '����ID',
   noticetype_one       int not null comment '֪ͨ���� 0��Ϣ���ѡ�1ʱЧ���ѵ�',
   noticetype_two       int default -1 comment '֪ͨС�� ���ݲ�֪ͬͨ����������֪ͨС����Ϣ',
   noticecontent        text comment '֪ͨ����',
   notice_flowid        varchar(50) comment '֪ͨ��������ID',
   notice_messageid     varchar(50) comment '֪ͨ������ϢID',
   receiverid           varchar(50) comment '��֪ͨ��ID',
   receivername         varchar(200) comment '��֪ͨ������',
   noticetime           datetime comment '֪ͨʱ��',
   isread               int not null default 0 comment '�Ƿ����� 0�� 1��',
   projectid            varchar(50) comment '������ĿID',
   ref_deptid           varchar(50) comment '������˾ID',
   deleted              int not null default 0 comment '�Ƿ�ɾ�� 0�� 1��',
   ref_overtime_iidd    varchar(50) comment '������ʱ֪ͨ���ñ�IIDD',
   primary key (iidd)
);

alter table ff_apaas_es_site_news comment 'վ����Ϣ��¼��';

/*==============================================================*/
/* Table: ff_apaas_open_api                                     */
/*==============================================================*/
create table ff_apaas_open_api
(
   iidd                 varchar(50) not null comment '����',
   name                 varchar(250) not null comment '�ӿ�����',
   group_id             varchar(50) not null comment '������',
   group_name           varchar(255) not null comment '��������',
   url                  varchar(500) not null comment '�����ַ��׺(/user/login)',
   method               int not null comment '���󷽷�(1:GET,2:POST)',
   context_type         int not null comment '��������:(0: none, 1:application/x-www-form-urlencoded, 2: multipart/form-data, 3: application/json, 4: application/octet-stream)',
   body                 text comment '�������',
   response             text not null comment '��Ӧ����',
   success_examples     text not null comment '��Ӧ�ɹ�ʾ��',
   fail_examples        text not null comment 'ʧ��ʾ��',
   sort_id              int not null default 0 comment '����ֵ',
   update_time          datetime not null comment '����ʱ��',
   create_person        varchar(250) not null comment '������',
   primary key (iidd)
)
COMMENT 'open api ��';

/*==============================================================*/
/* Table: ff_apaas_sys_config                                   */
/*==============================================================*/
create table ff_apaas_sys_config
(
   config_id            varchar(50) not null comment '����',
   config_name          varchar(100) comment '��������',
   config_key           varchar(100) comment '��������',
   config_value         varchar(500) comment '������ֵ',
   config_type          varchar(1) comment 'ϵͳ����(Y�� N��)',
   create_by            varchar(50) comment '������',
   create_time          datetime comment '����ʱ��',
   update_by            varchar(50) comment '������',
   update_time          datetime comment '����ʱ��',
   remark               varchar(1000) comment '��ע',
   group_name           varchar(200) comment '��������',
   ref_dept_id          VARCHAR(50) comment '��˾���',
   ref_projectid        varchar(50) comment '��Ŀ���',
   types                int not null default 1 comment '��ʱ��������(0:�ⲿ,1:�ڲ�)',
   primary key (config_id)
);

alter table ff_apaas_sys_config comment '�������ñ�';

/*==============================================================*/
/* Table: ff_apaas_sys_job                                      */
/*==============================================================*/
create table ff_apaas_sys_job
(
   job_id               varchar(50) not null comment '��������',
   job_name             varchar(200) not null comment '��������',
   job_group            varchar(200) not null comment '��������',
   invoke_target        varchar(500) not null comment '����Ŀ���ַ���',
   cron_expression      varchar(255) comment 'cronִ�б��ʽ',
   misfire_policy       int not null default 3 comment '�ƻ�ִ�д�����ԣ�1����ִ�� 2ִ��һ�� 3����ִ�У�',
   concurrent           int not null default 1 comment '�Ƿ񲢷�ִ��(0���� 1��ֹ)',
   status               int not null default 0 comment '״̬��0���� 1��ͣ��',
   create_by            varchar(200) comment '������',
   create_time          datetime comment '����ʱ��',
   update_by            varchar(200) comment '������',
   update_time          datetime comment '����ʱ��',
   remark               varchar(500) comment '��ע��Ϣ',
   ref_deptid           varchar(50) comment '��˾���',
   primary key (job_id)
);

alter table ff_apaas_sys_job comment '��ʱ������ȱ�';

/*==============================================================*/
/* Table: ff_apaas_sys_job_log                                  */
/*==============================================================*/
create table ff_apaas_sys_job_log
(
   job_log_id           varchar(50) not null comment '����',
   job_name             varchar(200) not null comment '��������',
   job_group            varchar(200) not null comment '��������',
   invoke_target        varchar(500) not null comment '����Ŀ���ַ���',
   job_message          varchar(500) comment '��־��Ϣ',
   status               int not null default 0 comment '״̬(0���� 1ʧ��)',
   exception_info       text comment '�쳣��Ϣ',
   create_time          datetime comment '����ʱ��',
   ref_deptid           varchar(50) comment '��˾���',
   primary key (job_log_id)
);

alter table ff_apaas_sys_job_log comment '��ʱ���������־��';

/*==============================================================*/
/* Table: ff_apaas_sys_logininfor                               */
/*==============================================================*/
create table ff_apaas_sys_logininfor
(
   info_id              varchar(50) not null comment '����ID',
   user_name            varchar(50) default '' comment '�û��˺�',
   name                 varchar(100) default '' comment '��½������',
   ipaddr               varchar(128) default '' comment '��¼IP��ַ',
   login_location       varchar(255) default '' comment '��¼�ص�',
   browser              varchar(50) default '' comment '���������',
   os                   varchar(50) default '' comment '����ϵͳ',
   status               char(1) default '0' comment '��¼״̬��0�ɹ� 1ʧ�ܣ�',
   msg                  varchar(255) default '' comment '��ʾ��Ϣ',
   login_time           timestamp comment '����ʱ��',
   ref_deptid           varchar(50) not null comment '��˾���',
   primary key (info_id)
);

alter table ff_apaas_sys_logininfor comment 'ϵͳ��¼��־��';

/*==============================================================*/
/* Table: ff_apaas_sys_oper_log                                 */
/*==============================================================*/
create table ff_apaas_sys_oper_log
(
   oper_id              varchar(50) not null comment '��־����',
   title                varchar(50) default '' comment 'ģ�����',
   business_type        int(2) default 0 comment 'ҵ�����ͣ�0���� 1���� 2�޸� 3ɾ����',
   method_desc          varchar(200) comment '��������',
   method               varchar(100) default '' comment '��������',
   request_method       varchar(10) default '' comment '����ʽ',
   operator_type        int(1)  default '0' comment '�������0���� 1��̨�û� 2�ֻ����û���',
   oper_name            varchar(50) default '' comment '������Ա',
   dept_name             varchar(50) default '' comment '��������',
   oper_url             varchar(255) default '' comment '����URL',
   oper_ip              varchar(128) default '' comment '������ַ',
   oper_location        varchar(255) default '' comment '�����ص�',
   oper_param           varchar(2000) default '' comment '�������',
   json_result          longtext comment '���ز���',
   status               int(1)  default '0' comment '����״̬��0���� 1�쳣��',
   error_msg            varchar(2000) default '' comment '������Ϣ',
   oper_time            datetime comment '����ʱ��',
   primary key (oper_id)
);

alter table ff_apaas_sys_oper_log comment '������־��¼��';

/*==============================================================*/
/* Table: ff_apaas_t_api_authorization                          */
/*==============================================================*/
create table ff_apaas_t_api_authorization
(
   app_key              nvarchar(8) not null comment 'Ӧ��Ψһ���',
   company_id           varchar(50) not null comment '��˾���',
   company_name         varchar(200) not null comment '��˾����',
   create_time          timestamp not null default CURRENT_TIMESTAMP comment '����ʱ��',
   deleted              tinyint not null default '0' comment '�Ƿ�ɾ��',
   primary key (app_key)
)
ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

alter table ff_apaas_t_api_authorization comment '��˾��֤��';

/*==============================================================*/
/* Table: ff_apaas_t_api_authorization_terminal                 */
/*==============================================================*/
create table ff_apaas_t_api_authorization_terminal
(
   iidd                 varchar(32) not null comment 'Ψһ���',
   app_key              varchar(32) not null comment '��֤Ψһ���',
   app_secret           varchar(40) not null comment '����ǩ����Կ',
   company_id           varchar(50) not null comment '��˾���',
   company_name         varchar(200) not null comment '��˾����',
   terminal_name        varchar(200) not null comment '�ն�����',
   termination_time     datetime comment '��Ȩ��������: null��ʾ����',
   create_time          timestamp not null default CURRENT_TIMESTAMP comment '����ʱ��',
   create_user_id       varchar(50) not null comment '�����˱��',
   create_user_name     varchar(50) not null comment '����������',
   update_time          timestamp not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   update_user_id       varchar(50) not null comment '�����˱��',
   update_user_name     varchar(50) not null comment '����������',
   deleted              tinyint not null default '0' comment '�Ƿ�ɾ��: 0:δɾ��,1:��ɾ��',
   primary key (iidd)
)
ENGINE InnoDB
  DEFAULT CHARSET = UTF8;

alter table ff_apaas_t_api_authorization_terminal comment '��˾��֤ƽ̨��';

/*==============================================================*/
/* Table: ff_apaas_t_batch_operate_log                          */
/*==============================================================*/
create table ff_apaas_t_batch_operate_log
(
   iidd                 varchar(50) not null comment '����id',
   operate_type         int not null default 0 comment '�������� 0ɾ�� 1�޸� 2����',
   app_type             int not null default 1 comment 'Ӧ������ 0�������� 1����Ӧ��',
   operate_content      text comment '�������� ���󼯺ϵ�JSON��',
   delete_reason        text comment 'ɾ��ԭ��',
   create_id            varchar(50) comment '������ID',
   create_name          varchar(200) comment '����������',
   create_deptid        varchar(50) comment '��������ID',
   create_deptname      varchar(200) comment '������������',
   create_time          datetime comment '����ʱ��',
   ref_appid            varchar(50) comment '����Ӧ�ñ��',
   ref_projectid        varchar(50) comment '������ĿID',
   ref_deptid           varchar(50) comment '������˾ID',
   primary key (iidd)
);

alter table ff_apaas_t_batch_operate_log comment '����������־';

/*==============================================================*/
/* Table: ff_apaas_t_bookmark                                   */
/*==============================================================*/
create table ff_apaas_t_bookmark
(
   iidd                 varchar(50) not null comment '����',
   mark_type            int default 0 comment '�ղ�����',
   mark_name            varchar(200) comment '�ղ�����',
   catalog_id           varchar(50) comment '��������ID',
   catalog_name         varchar(200) comment '������������',
   mark_url             varchar(1000) comment '·�ɵ�ַ',
   creater_id           varchar(50) comment '������ID',
   creater_name         varchar(200) comment '����������',
   create_time          datetime comment '����ʱ��',
   projectid            varchar(50) comment '������ĿID',
   ref_deptid           varchar(50) comment '������˾ID',
   deleted              int not null default 0 comment '�Ƿ�ɾ�� 0�� 1��',
   primary key (iidd)
);

alter table ff_apaas_t_bookmark comment '�ղؼд洢��';

/*==============================================================*/
/* Table: ff_apaas_t_bookmark_catalog                           */
/*==============================================================*/
create table ff_apaas_t_bookmark_catalog
(
   iidd                 varchar(50) not null comment '����',
   catalog_name         varchar(200) comment '��������',
   creater_id           varchar(50) comment '������ID',
   creater_name         varchar(200) comment '����������',
   create_time          datetime comment '����ʱ��',
   projectid            varchar(50) comment '������ĿID',
   ref_deptid           varchar(50) comment '������˾ID',
   sortid               int not null default 0 comment '����ֵ',
   deleted              int not null default 0 comment '�Ƿ�ɾ�� 0�� 1��',
   primary key (iidd)
);

alter table ff_apaas_t_bookmark_catalog comment '�ղؼз����';

/*==============================================================*/
/* Table: ff_apaas_t_business_operation_log                     */
/*==============================================================*/
create table ff_apaas_t_business_operation_log
(
   iidd                 varchar(50) not null comment 'Ψһ���',
   operator_user_id     varchar(50) not null comment '�����˱��',
   operator_username    varchar(200) not null comment '����������',
   operator_time        datetime not null comment '����ʱ��',
   operator_item        int(8) not null comment '������,10:�û���20:���ţ�30:��ɫ,40:��Ŀ��41����Ŀ����Ա��50��Ӧ�ã�51��Ӧ�ù���Ա',
   operator_item_desc   varchar(200) not null comment '����������',
   operator_action      int(8) not null comment '����������2:���, 3:�޸�,4:ɾ��,5:Ȩ�ޱ��,6ͣ��,7:����',
   operator_action_desc varchar(200) not null comment '������������',
   operator_object_id   varchar(50) not null comment '����������',
   operator_content_value varchar(200) not null comment '��������',
   status               int(2) not null comment '����״̬ 0��ʧ�ܣ�1���ɹ�',
   ref_dept             varchar(50) not null comment '������˾',
   primary key (iidd)
);

alter table ff_apaas_t_business_operation_log comment 'ҵ����־��';

/*==============================================================*/
/* Table: ff_apaas_t_business_right                             */
/*==============================================================*/
create table ff_apaas_t_business_right
(
   iidd                 varchar(50) not null comment 'Ψһ���',
   business_code        varchar(50) not null comment 'ҵ���־',
   right_type_code      int(1) not null comment 'Ȩ�����ͣ�0-����Ȩ��,1-����Ȩ�ޣ�',
   right_type_name      varchar(50) comment 'Ȩ����������',
   allot_object_type    int(1) not null comment '��Ȩ��������(0-��ʾ�û�,1-��ʾ�û���,2-��ʾ����)',
   allot_object_id      varchar(50) not null comment '��Ȩ������(�û����,�û�����,���ű��)',
   right_item_id        varchar(50) not null comment '����Ȩ������',
   ref_deptid           varchar(50) not null comment '��˾���',
   right_source         int not null comment 'Ȩ����Դ 0�ĵ����� 1֪ʶ 2���ù���',
   update_time          timestamp not null default CURRENT_TIMESTAMP comment '����ʱ��',
   update_userid        varchar(50) not null comment '�����û����',
   primary key (iidd)
);

alter table ff_apaas_t_business_right comment 'ҵ��Ȩ�ޱ�';

/*==============================================================*/
/* Table: ff_apaas_t_business_right_item                        */
/*==============================================================*/
create table ff_apaas_t_business_right_item
(
   iidd                 varchar(50) not null comment 'Ψһ���',
   business_code        varchar(50) not null comment 'ҵ���ʶ',
   right_type_code      int(1) not null comment 'Ȩ�����ͣ�0-����Ȩ��,1-����Ȩ�ޣ�',
   right_item_code      varchar(50) not null comment 'Ȩ�����ʶ',
   right_item_name      varchar(50) not null comment 'Ȩ�����ʶ����',
   sordid               int(8) not null default 1 comment '����ֵ',
   update_time          timestamp not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��',
   update_userid        varchar(50) not null comment '�����û����',
   primary key (iidd)
);

alter table ff_apaas_t_business_right_item comment 'ҵ��Ȩ�����';

/*==============================================================*/
/* Table: ff_apaas_t_business_right_whitelist                   */
/*==============================================================*/
create table ff_apaas_t_business_right_whitelist
(
   iidd                 varchar(50) not null comment 'Ψһ���',
   business_code        varchar(50) not null comment 'ҵ���ʶ',
   grant_object_id      varchar(50) not null comment '��Ȩ�����ʶ',
   ip_address           varchar(15) not null comment 'IP��ַ',
   creater_userid       varchar(50) not null comment '�����˱��',
   creater_time         timestamp not null default CURRENT_TIMESTAMP comment '����ʱ��',
   ref_deptid           varchar(50) not null comment '��˾���',
   primary key (iidd)
);

alter table ff_apaas_t_business_right_whitelist comment 'ҵ��Ȩ�ް�������';

/*==============================================================*/
/* Table: ff_apaas_t_coderule                                   */
/*==============================================================*/
create table ff_apaas_t_coderule
(
   iidd                 varchar(50) not null comment '��ʶID',
   rulename             varchar(200) comment '��������',
   reset_typeid         int not null default 0 comment '�������� 0 �������� 1�������� 2�������� 3��������',
   rule_length          int not null default 3 comment '����ų���',
   step                 int not null default 1 comment '����ֵ',
   appid                varchar(50) comment '����Ӧ��ID',
   deleted              int not null default 0 comment '�Ƿ�ɾ��',
   primary key (iidd)
);

alter table ff_apaas_t_coderule comment '�������ɹ����';

/*==============================================================*/
/* Table: ff_apaas_t_codevalue                                  */
/*==============================================================*/
create table ff_apaas_t_codevalue
(
   ruleid               varchar(50) not null comment '����ID',
   currbh               int not null default 1 comment '��ŵ�ǰ��ֵ',
   last_date            date comment '���һ����������',
   primary key (ruleid)
);

alter table ff_apaas_t_codevalue comment '�������ɼ�¼��';

/*==============================================================*/
/* Table: ff_apaas_t_custom_door                                */
/*==============================================================*/
create table ff_apaas_t_custom_door
(
   iidd                 varchar(50) not null comment '����ID',
   door_name            varchar(200) comment '�Ż�����',
   door_remark          varchar(500) comment '�Ż�����',
   source_type          int not null default 0 comment '�Ż���Դ 0ƽ̨ �Ż� 1��Ŀ�Ż�',
   icon                 varchar(300) comment '�Ż�ͼ��',
   configjson           longtext comment '����JSON�ַ���',
   creater_id           varchar(50) comment '������ID',
   creater_name         varchar(200) comment '����������',
   create_deptid        varchar(50) comment '��������ID',
   create_deptname      varchar(200) comment '������������',
   create_time          datetime comment '����ʱ��',
   update_id            varchar(50) comment '��������ID',
   update_name          varchar(200) comment '������������',
   update_time          datetime comment '������ʱ��',
   ref_projectid        varchar(50) comment '������ĿID',
   ref_deptid           varchar(50) comment '������˾ID',
   status               int not null default 1 comment '״̬ 0ͣ�� 1����',
   deleted              int not null default 0 comment '�Ƿ�ɾ�� 0�� 1��',
   primary key (iidd)
);

alter table ff_apaas_t_custom_door comment '�Զ����Ż�';

/*==============================================================*/
/* Table: ff_apaas_t_custom_door_right                          */
/*==============================================================*/
create table ff_apaas_t_custom_door_right
(
   iidd                 varchar(50) not null comment '����',
   userid               varchar(50) comment '����ԱID',
   username             varchar(200) comment '����Ա����',
   ref_doorid           varchar(50) not null comment '�����Ż����',
   ref_projectid        varchar(50) comment '������ĿID',
   ref_deptid           varchar(50) comment '������˾ID',
   addtime              datetime not null comment '���ʱ��',
   primary key (iidd)
);

alter table ff_apaas_t_custom_door_right comment '�Ż�����ԱȨ����Ϣ��';

/*==============================================================*/
/* Table: ff_apaas_t_custom_flowinfo                            */
/*==============================================================*/
create table ff_apaas_t_custom_flowinfo
(
   iidd                 varchar(50) not null comment '����ID',
   flowid               varchar(50) comment '����ID',
   flowmodelid          varchar(50) comment '����ģ��ID',
   nodemodelid          varchar(50) comment '����ģ��ID',
   flowno               varchar(200) comment '���̵���',
   create_userid        varchar(50) comment '������ID',
   create_username      varchar(200) comment '����������',
   create_deptid        varchar(50) comment '��������ID',
   create_deptname      varchar(200) comment '������������',
   create_orgid         varchar(50) comment '��������ID',
   create_orgname       varchar(200) comment '������������',
   create_time          datetime comment '����ʱ��',
   update_userid        varchar(50) comment '�޸���ID',
   update_username      varchar(200) comment '�޸�������',
   update_time          datetime default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '�޸�ʱ��',
   ref_appid            varchar(50) comment '����Ӧ��ID',
   ref_formid           varchar(50) comment '������ID',
   ref_deptid           varchar(50) comment '������˾ID',
   ref_projectid        varchar(50) comment '������ĿID',
   deleted              integer default 0 comment '�Ƿ�ɾ��',
   contentjson          longtext comment '������',
   contentfield         longtext comment '���ֶ�',
   current_nodename     varchar(1000) comment '��ǰ������',
   current_hander       varchar(1000) comment '��ǰ������',
   business_status      varchar(500) comment 'ҵ��״̬',
   primary key (iidd)
);

alter table ff_apaas_t_custom_flowinfo comment '�Զ���Ӧ�ü�¼��';

/*==============================================================*/
/* Index: index_custom_flowid                                   */
/*==============================================================*/
create index index_custom_flowid on ff_apaas_t_custom_flowinfo
(
   flowid
);

/*==============================================================*/
/* Index: index_custom_deleted_refappid                         */
/*==============================================================*/
create index index_custom_deleted_refappid on ff_apaas_t_custom_flowinfo
(
   deleted,
   ref_appid,
   ref_deptid
);

/*==============================================================*/
/* Table: ff_apaas_t_custom_form                                */
/*==============================================================*/
create table ff_apaas_t_custom_form
(
   iidd                 varchar(50) not null comment '����ID',
   ref_appid            varchar(50) comment '����Ӧ��ID',
   formjson             longtext comment '�����ã�����ƴ洢JSON�ַ���',
   oformid              varchar(50) comment 'ԭʼ��ID',
   addtime              datetime comment '���ʱ��',
   ref_deptid           varchar(50) comment '������˾ID',
   deleted              int not null default 0 comment '�Ƿ�ɾ��',
   primary key (iidd)
);

alter table ff_apaas_t_custom_form comment '�Զ������¼��';

/*==============================================================*/
/* Table: ff_apaas_t_display_column                             */
/*==============================================================*/
create table ff_apaas_t_display_column
(
   iidd                 varchar(50) not null comment '����',
   fieldname            varchar(200) comment '�ֶ�����',
   cname                varchar(200) comment '��������',
   isshow               int not null default 0 comment '�Ƿ�չʾ 0�� 1��',
   sortid               int comment '����ֵ',
   creater_id           varchar(50) comment '������ID',
   creater_name         varchar(200) comment '����������',
   create_time          datetime comment '����ʱ��',
   appid                varchar(50) comment '����Ӧ��ID',
   projectid            varchar(50) comment '������ĿID',
   ref_deptid           varchar(50) comment '������˾ID',
   deleted              int not null default 0 comment '�Ƿ�ɾ�� 0�� 1��',
   primary key (iidd)
);

alter table ff_apaas_t_display_column comment '�����б�չʾ�д洢��';

/*==============================================================*/
/* Table: ff_apaas_t_exception_record                           */
/*==============================================================*/
create table ff_apaas_t_exception_record
(
   iidd                 varchar(50) not null comment 'Ψһ���',
   exid                 varchar(50) not null comment '�����¼Ψһ����',
   task_config_id       varchar(50) not null comment '�����������ñ��',
   create_time          datetime comment '����ʱ��',
   primary key (iidd)
);

alter table ff_apaas_t_exception_record comment '��ʱ���������¼��';

/*==============================================================*/
/* Table: ff_apaas_t_fastopinion                                */
/*==============================================================*/
create table ff_apaas_t_fastopinion
(
   iidd                 varchar(50) not null,
   opinion              varchar(50),
   createrid            varchar(50),
   creater              varchar(50),
   addtime              datetime,
   primary key (iidd)
);

alter table ff_apaas_t_fastopinion comment '������������';

/*==============================================================*/
/* Table: ff_apaas_t_flowlink_info                              */
/*==============================================================*/
create table ff_apaas_t_flowlink_info
(
   iidd                 varchar(50) not null comment '���ݱ��',
   flowid               varchar(50) comment '�����̱��',
   flowno               varchar(50) comment '�����̵���',
   flowmodelid          varchar(50) comment '����ģ�ͱ��',
   nodemodelid          varchar(50) comment '����ģ�ͱ��',
   link_flowid          varchar(50) comment '�������̱��',
   link_flowno          varchar(50) comment '�������̵���',
   link_type            int comment '�������� (0��������1-�����̴��У�2�����̲���)',
   close_mode           int comment '�������� 0�������� 1ǿ�ƽ���',
   ref_projectid        varchar(50) comment '������ĿID',
   ref_deptid           varchar(50) comment '������˾ID',
   create_id            varchar(50) comment '�����û����',
   create_name          varchar(50) comment '�����û�����',
   create_time          datetime comment '���ݴ���ʱ��',
   primary key (iidd)
);

alter table ff_apaas_t_flowlink_info comment '���̹�����Ϣ��';

/*==============================================================*/
/* Table: ff_apaas_t_local_method                               */
/*==============================================================*/
create table ff_apaas_t_local_method
(
   iidd                 varchar(50) not null comment 'Ψһ���',
   chinese_name         varchar(200) not null comment '������������',
   method_name          varchar(200) not null comment '������',
   sort                 int(2) not null default 1 comment '����ֵ',
   create_time          timestamp not null default CURRENT_TIMESTAMP comment '����ʱ��',
   ref_dept_id          varchar(50) comment '��˾���',
   ref_projectid        varchar(50) comment '��Ŀ���',
   types                int not null default 1 comment '��ʱ��������',
   primary key (iidd)
);

alter table ff_apaas_t_local_method comment '���ط�����';

/*==============================================================*/
/* Table: ff_apaas_t_login_lock                                 */
/*==============================================================*/
create table ff_apaas_t_login_lock
(
   login_name           varchar(50) not null comment '��¼�˺�',
   user_name            varchar(50) not null comment '�û�����',
   lock_time            datetime not null comment '����ʱ��',
   account_lock_time    decimal(18, 1) not null comment '����ʱ��(Сʱ)',
   expire_time          datetime not null comment 'ʧЧʱ��',
   apply_unlock         tinyint(5) not null default 0 comment '�Ƿ��������(0��,1:��)',
   primary key (login_name)
)
ENGINE = InnoDB
  DEFAULT CHARACTER SET = 'utf8' COMMENT = '�������˺��嵥��';

alter table ff_apaas_t_login_lock comment '�������˺��嵥��';

/*==============================================================*/
/* Table: ff_apaas_t_manager_app_info                           */
/*==============================================================*/
create table ff_apaas_t_manager_app_info
(
   iidd                 varchar(50) not null comment '����',
   userid               varchar(50) comment '����ԱID',
   username             varchar(200) comment '����Ա����',
   loginname            varchar(100) comment '��¼�˺�',
   creater_id           varchar(50) comment '������ID',
   creater_name         varchar(200) comment '����������',
   create_deptid        varchar(50) comment '��������ID',
   create_deptname      varchar(200) comment '������������',
   create_time          datetime comment '����ʱ��',
   ref_projectid        varchar(50) comment '������ĿID',
   ref_deptid           varchar(50) comment '������˾ID',
   sortid               int not null default 0 comment '����ID',
   primary key (iidd)
);

alter table ff_apaas_t_manager_app_info comment 'Ӧ�ù���Ա��Ϣ��';

/*==============================================================*/
/* Table: ff_apaas_t_manager_info                               */
/*==============================================================*/
create table ff_apaas_t_manager_info
(
   iidd                 varchar(50) not null comment '����',
   userid               varchar(50) comment '����ԱID',
   username             varchar(200) comment '����Ա����',
   loginname            varchar(100) comment '��¼�˺�',
   addtime              datetime not null comment '���ʱ��',
   ref_deptid           varchar(50) comment '������˾ID',
   primary key (iidd)
);

alter table ff_apaas_t_manager_info comment '��Ŀ����Ա��Ϣ������������������ʾ�û����������Ŀ';

/*==============================================================*/
/* Table: ff_apaas_t_mobile_app_bind                            */
/*==============================================================*/
create table ff_apaas_t_mobile_app_bind
(
   iidd                 varchar(50) not null comment '����',
   cid                  varchar(200) not null comment '����CID',
   sys_userid           varchar(50) not null comment '��̨�û�id',
   addtime              datetime not null comment '���ʱ��',
   ref_deptid           varchar(50) not null comment '������˾ID',
   primary key (iidd)
);

alter table ff_apaas_t_mobile_app_bind comment '��¼����cid���̨�û��󶨹�ϵ';

/*==============================================================*/
/* Table: ff_apaas_t_mobile_terminal_bind                       */
/*==============================================================*/
create table ff_apaas_t_mobile_terminal_bind
(
   iidd                 varchar(50) not null comment '����',
   source_type          int not null default 1 comment '��Դ���� 1΢�Ź��ں� 2΢��С���� 3��ҵ΢�� 4����',
   source_identy        varchar(200) not null comment '��Դ��ʶ ��΢�Ź��ں�appid����ҵ΢��Ӧ�õ�AgentId',
   user_identy          varchar(200) not null default '10' comment '�û���ʶ����΢�Ź��ںŵ�openid����ҵ΢�ŵ�userid',
   sys_userid           varchar(50) not null comment '��̨�û�id',
   addtime              datetime not null comment '���ʱ��',
   ref_deptid           varchar(50) not null comment '������˾ID',
   primary key (iidd)
);

alter table ff_apaas_t_mobile_terminal_bind comment '�ƶ��˰��û���¼';

/*==============================================================*/
/* Table: ff_apaas_t_mobile_terminal_user                       */
/*==============================================================*/
create table ff_apaas_t_mobile_terminal_user
(
   iidd                 varchar(50) not null comment '����',
   source_type          int not null default 1 comment '��Դ���� 1΢�Ź��ں� 2΢��С���� 3��ҵ΢�� 4����',
   source_identy        varchar(200) not null comment '��Դ��ʶ ��΢�Ź��ں�appid����ҵ΢��Ӧ�õ�AgentId',
   user_identy          varchar(200) not null default '10' comment '�û���ʶ����΢�Ź��ںŵ�openid����ҵ΢�ŵ�userid',
   user_name            varchar(200) comment '�û��ǳ�',
   sex                  integer not null default 0 comment '�û��Ա� 1�� 2Ů 0δ֪',
   province             varchar(200) comment 'ʡ��',
   city                 varchar(200) comment '����',
   country              varchar(200) comment '����',
   headimgurl           varchar(500) comment 'ͷ��',
   addtime              datetime not null comment '���ʱ��',
   primary key (iidd)
);

alter table ff_apaas_t_mobile_terminal_user comment '�ƶ��˹�ע�û���¼';

/*==============================================================*/
/* Table: ff_apaas_t_notice_log                                 */
/*==============================================================*/
create table ff_apaas_t_notice_log
(
   iidd                 varchar(50) not null comment '����ID',
   notice_type          longtext comment '֪ͨ��ʽ',
   notice_object        longtext comment '֪ͨ����',
   notice_content       longtext comment '֪ͨ����',
   notice_source        varchar(50) comment '֪ͨ��Դ(�Զ����ʶ���ڲ�ѯ)',
   remark               longtext comment '��ע��Ϣ',
   create_userid        varchar(50) comment '������ID',
   create_username      varchar(200) comment '����������',
   create_deptid        varchar(50) comment '��������ID',
   create_deptname      varchar(200) comment '������������',
   create_orgid         varchar(50) comment '��������ID',
   create_orgname       varchar(200) comment '������������',
   create_time          datetime comment '����ʱ��',
   primary key (iidd)
);

alter table ff_apaas_t_notice_log comment '֪ͨ��־��';

/*==============================================================*/
/* Table: ff_apaas_t_notice_method                              */
/*==============================================================*/
create table ff_apaas_t_notice_method
(
   method_id            int not null comment '����ID',
   method_name          varchar(100) comment '������',
   is_show              int not null default 0 comment '�Ƿ���ʾ (1����ʾ,0������ʾ)',
   primary key (method_id)
);

alter table ff_apaas_t_notice_method comment '֪ͨ���������';

/*==============================================================*/
/* Table: ff_apaas_t_notice_method_config                       */
/*==============================================================*/
create table ff_apaas_t_notice_method_config
(
   iidd                 varchar(50) not null comment '����ID',
   method_id            int not null comment '����id',
   method_name          varchar(100) comment '������',
   config_value         text comment '����JSON����',
   is_platform          int not null default 0 comment '�Ƿ�Ϊƽ̨���� 0�� 1��',
   external_enable      tinyint(1) comment '�ⲿ�Ƿ�����(0:��, 1: ��)',
   ref_deptid           varchar(50) comment '������˾ID',
   primary key (iidd),
   unique key AK_uq_method_id (method_id)
);

alter table ff_apaas_t_notice_method_config comment '֪ͨ��ʽ���ñ�';

/*==============================================================*/
/* Table: ff_apaas_t_notice_method_config_wxmp                  */
/*==============================================================*/
create table ff_apaas_t_notice_method_config_wxmp
(
   template_id          varchar(100) not null comment 'ģ��ID',
   template_title       varchar(300) comment 'ģ�����',
   content_rule         text comment 'ģ�����ݸ�ʽ',
   content_format       text comment 'ģ���������� JSON�ַ���{"aaa":"#XXX#","bbb":"#����#"}',
   template_scene       text comment 'ģ�����ó���[{"name": "��Ϣ����>������Ϣ","value": "0>0"}, {"name": "ʱЧ����>��Ӧ��ʱǰ","value":"1>0"}]',
   primary key (template_id)
);

alter table ff_apaas_t_notice_method_config_wxmp comment '΢��ģ����Ϣ���ü�¼��';

/*==============================================================*/
/* Table: ff_apaas_t_notice_method_enable                       */
/*==============================================================*/
create table ff_apaas_t_notice_method_enable
(
   iidd                 varchar(50) not null comment '����ID',
   method_id            int comment '����id',
   method_name          varchar(100) comment '������',
   projectid            varchar(50) comment '������ĿID',
   ref_deptid           varchar(50) comment '������˾ID',
   primary key (iidd)
);

alter table ff_apaas_t_notice_method_enable comment '֪ͨ��ʽ���ñ�';

/*==============================================================*/
/* Table: ff_apaas_t_online_users                               */
/*==============================================================*/
create table ff_apaas_t_online_users
(
   token                varchar(50) not null comment 'token���',
   userid               varchar(50) not null comment '�û�Ψһ���',
   ref_deptid           varchar(50) not null comment '��˾���',
   login_time           datetime not null comment '�û���¼ʱ��',
   expire_time          datetime not null comment 'ʧЧʱ��',
   primary key (token)
);

alter table ff_apaas_t_online_users comment '�����û�';

/*==============================================================*/
/* Table: ff_apaas_t_outer_link                                 */
/*==============================================================*/
create table ff_apaas_t_outer_link
(
   iidd                 varchar(50) not null comment '����ID',
   link_type            int not null default 0 comment '�������� 0���ݷ��� 1���ݲ�¼ 2�������� 3���ݲ�ѯ',
   creater_id           varchar(50) comment '������ID',
   creater_name         varchar(200) comment '����������',
   create_deptid        varchar(50) comment '��������ID',
   create_deptname      varchar(200) comment '������������',
   create_time          datetime comment '����ʱ��',
   ref_appid            varchar(50) comment '����Ӧ��ID',
   ref_deptid           varchar(50) comment '������˾ID',
   order_id             varchar(50) comment '��������ID ��Ӧ������Ϊ��������ʱ�����ֶβ�Ϊ�գ�ֵΪҵ����¼����IDֵ',
   messageid            varchar(50) comment '����messageid ��Ӧ������Ϊ����Ӧ�ã����ݷ��������ݲ�¼ʱ���ֶβ�Ϊ�գ�ȡ��Ӧ���̹�������ϢIDֵ',
   flowid               varchar(50) comment '����flowid',
   flowmodelid          varchar(50) comment '����flowmodelid ��Ӧ������Ϊ����Ӧ�ã���������ʱ���ֶβ�Ϊ�գ�ȡ��Ӧ����ģ��idֵ',
   begin_time           datetime comment '���ӷ��ʿ�ʼʱ�� ��Ϊ���ݲ�¼ʱ�����ӷ��ʿ�ʼʱ�䡢����ʱ�䡢���������ֶζ�����Ϊ��',
   end_time             datetime comment '���ӷ��ʽ���ʱ��',
   visit_pwd            varchar(50) comment '���ӷ�������',
   outer_link_url       varchar(500) comment '�������ӵ�ַ',
   primary key (iidd)
);

alter table ff_apaas_t_outer_link comment 'Ӧ������������¼��';

/*==============================================================*/
/* Index: index_outer_link                                      */
/*==============================================================*/
create index index_outer_link on ff_apaas_t_outer_link
(
   link_type,
   ref_appid
);

/*==============================================================*/
/* Table: ff_apaas_t_outer_link_config                          */
/*==============================================================*/
create table ff_apaas_t_outer_link_config
(
   iidd                 varchar(50) not null comment '����ID',
   link_type            int not null default 0 comment '�������� 0���ݷ��� 1���ݲ�¼ 2�������� 3���ݲ�ѯ',
   enabled              int not null default 0 comment '�Ƿ����� 0�� 1��',
   creater_id           varchar(50) comment '������ID',
   creater_name         varchar(200) comment '����������',
   create_deptid        varchar(50) comment '��������ID',
   create_deptname      varchar(200) comment '������������',
   create_time          datetime comment '����ʱ��',
   ref_appid            varchar(50) comment '����Ӧ��ID',
   ref_deptid           varchar(50) comment '������˾ID',
   link_rule_json       longtext comment '��������',
   primary key (iidd)
);

alter table ff_apaas_t_outer_link_config comment 'Ӧ�������������ñ�';

/*==============================================================*/
/* Table: ff_apaas_t_password_history_tracker                   */
/*==============================================================*/
create table ff_apaas_t_password_history_tracker
(
   iidd                 bigint(20) unsigned not null auto_increment comment '�������',
   userid               varchar(50) not null comment '�û����',
   passwd               varchar(100) not null comment '��ʷ����',
   create_time          datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   primary key (iidd)
)
ENGINE = InnoDB
  DEFAULT CHARACTER SET = 'utf8' COMMENT = '��ʷ���������';

alter table ff_apaas_t_password_history_tracker comment '��ʷ���������';

/*==============================================================*/
/* Table: ff_apaas_t_password_strength                          */
/*==============================================================*/
create table ff_apaas_t_password_strength
(
   rule_id              varchar(50) not null comment '�������',
   pwd_strength_policy_switch tinyint(1) default 0 comment '����ǿ�Ȳ��Կ���(0:false, 1:true)',
   password_min_length  int(18) comment '������С����(λ)',
   password_rule        varchar(20) comment '������ɹ���(��д,Сд,�����ַ�,����,0�ر�,1:����, 0,1,0,0)',
   account_lock_policy_switch tinyint(1) default 0 comment '�˺��������Կ���(0:false, 1:true)',
   password_retry_count int(18) comment '���������������',
   account_lock_time    decimal(18, 1) comment '�˺ŵ�¼����ʱ��(Сʱ)',
   pwd_use_policy_switch tinyint(1) default 0 comment '����ʹ�ò��Կ���(0:false, 1:true)',
   allow_password_duplication tinyint(1) default 1 comment '�Ƿ�����ʹ����ʷ����',
   password_change_cycle int(18) comment '����ʹ������(��)',
   force_change_passwd_rule varchar(10) default '0,0' comment 'ǿ���޸��������(������ǿ�Ȳ��ԡ�ʹ����������,0�ر�,1:����, 1,0)',
   primary key (rule_id)
)
ENGINE = InnoDB
  DEFAULT CHARACTER SET = 'utf8' COMMENT = '����������ñ�';

alter table ff_apaas_t_password_strength comment '����������ñ�';

/*==============================================================*/
/* Table: ff_apaas_t_platform_config                            */
/*==============================================================*/
create table ff_apaas_t_platform_config
(
   iidd                 varchar(50) not null comment '����ID',
   platform_name        varchar(200) comment 'ƽ̨����',
   platform_logo        text comment 'ƽ̨logo �洢ͼƬbase64�ַ���',
   favicon              text comment '��վFavicon �洢ͼƬbase64�ַ���',
   language_version     varchar(50) comment '���԰汾',
   platform_color       varchar(300) comment 'ƽ̨��ɫ �洢��ɫ����',
   form_rank            int not null default 0 comment '��ǩ���뷽ʽ 0 ����� 1 �Ҷ��� 2��������',
   form_field_width     int not null default 0 comment '���ֶο��',
   ref_deptid           varchar(50) comment '������˾ID',
   platform_small_icon  text comment 'ƽ̨Сͼ��',
   home_page_style      int default 0 comment '��ҳ��� (0:���½ṹ 1:���ҽṹ)',
   home_page_project_style int default 0 comment '��ҳ��Ŀչʾ��� (0:��Ŀƽ��  1:Ӧ��ƽ��)',
   home_banner          longtext comment '��ҳbannerͼ����',
   primary key (iidd),
   unique key AK_key_refdeptid (ref_deptid)
);

alter table ff_apaas_t_platform_config comment 'ƽ̨���ñ�';

/*==============================================================*/
/* Table: ff_apaas_t_project_info                               */
/*==============================================================*/
create table ff_apaas_t_project_info
(
   iidd                 varchar(50) not null comment '����ID',
   project_name         varchar(300) comment '��Ŀ����',
   remark               text comment '��Ŀ����',
   logo_url             varchar(300) comment '��ĿLOGO',
   creater_id           varchar(50) comment '������ID',
   creater_name         varchar(200) comment '����������',
   create_deptid        varchar(50) comment '��������ID',
   create_deptname      varchar(200) comment '������������',
   create_time          datetime comment '����ʱ��',
   update_id            varchar(50) comment '��������ID',
   update_name          varchar(200) comment '������������',
   update_time          datetime comment '������ʱ��',
   deleted              int not null default 0 comment '�Ƿ�ɾ�� 0�� 1��',
   project_status       int not null default 1 comment '��Ŀ״̬ 0ͣ�� 1����',
   sortid               int not null default 0 comment '��������',
   ref_deptid           varchar(50) comment '������˾ID',
   primary key (iidd)
);

alter table ff_apaas_t_project_info comment '��Ŀ��Ϣ��';

/*==============================================================*/
/* Table: ff_apaas_t_qiyuesuo_config                            */
/*==============================================================*/
create table ff_apaas_t_qiyuesuo_config
(
   iidd                 varchar(50) not null comment '����ID',
   api_url              varchar(200) comment '����ƽ̨�ӿڵ�ַ',
   app_token            varchar(200) comment 'AppToken',
   app_secret           varchar(200) comment 'AppSecret',
   app_range            longtext comment '��ȨӦ�÷�Χ',
   create_userid        varchar(50) comment '������ID',
   create_username      varchar(200) comment '����������',
   create_deptid        varchar(50) comment '��������ID',
   create_deptname      varchar(200) comment '������������',
   create_orgid         varchar(50) comment '��������ID',
   create_orgname       varchar(200) comment '������������',
   create_time          datetime comment '����ʱ��',
   update_userid        varchar(50) comment '�޸���ID',
   update_username      varchar(200) comment '�޸�������',
   update_time          datetime comment '�޸�ʱ��',
   deleted              integer default 0 comment '�Ƿ�ɾ��',
   ref_deptid           varchar(50) comment '������˾ID',
   callback_secret_key  varchar(200) comment '���ܻص���Ϣ��SecretKey',
   company_name         varchar(100) comment '��֤��˾����',
   admin_name           varchar(50) comment '����Ա����',
   admin_mobile         varchar(50) comment '����Ա�ֻ���',
   primary key (iidd)
);

alter table ff_apaas_t_qiyuesuo_config comment '��Լ�����ñ�';

/*==============================================================*/
/* Table: ff_apaas_t_qiyuesuo_contract                          */
/*==============================================================*/
create table ff_apaas_t_qiyuesuo_contract
(
   iidd                 varchar(50) not null comment '��ͬID',
   subject              varchar(200) comment '��ͬ����',
   sn                   varchar(200) comment '��ͬ���',
   status               varchar(200) comment '��ͬ״̬',
   publish_time         datetime comment '����ʱ��',
   result_json          longtext comment '���ؽ��',
   field_mapping        longtext comment '�ֶ�ӳ��',
   remark               longtext comment '��ע��Ϣ',
   create_userid        varchar(50) comment '������ID',
   create_username      varchar(200) comment '����������',
   create_deptid        varchar(50) comment '��������ID',
   create_deptname      varchar(200) comment '������������',
   create_orgid         varchar(50) comment '��������ID',
   create_orgname       varchar(200) comment '������������',
   create_time          datetime comment '����ʱ��',
   update_userid        varchar(50) comment '�޸���ID',
   update_username      varchar(200) comment '�޸�������',
   update_time          datetime comment '�޸�ʱ��',
   deleted              integer default 0 comment '�Ƿ�ɾ��',
   ref_deptid           varchar(50) comment '������˾ID',
   ref_appid            varchar(50) comment '����Ӧ��ID',
   ref_flowid           varchar(50) comment '��������ID',
   primary key (iidd)
);

alter table ff_apaas_t_qiyuesuo_contract comment '��Լ����ͬ��¼��';

/*==============================================================*/
/* Table: ff_apaas_t_register_exporter                          */
/*==============================================================*/
create table ff_apaas_t_register_exporter
(
   iidd                 varchar(50) not null comment '����',
   ref_deptid           varchar(50) not null comment 'ע�ṫ˾ID',
   create_userid        varchar(50) not null comment '����ִ���û�ID',
   create_time          datetime not null comment '������ʼʱ��',
   completion_time      datetime not null comment '�������ʱ��',
   status               int not null default 0 comment '�������(0�ɹ�,1ʧ��)',
   export_paths         varchar(300) not null comment '��������·��',
   request_param        varchar(500) not null comment '�������',
   deleted              int not null default 0 comment '�Ƿ�ɾ��(0��,1��)',
   primary key (iidd)
);

/*==============================================================*/
/* Table: ff_apaas_t_relation_view_config                       */
/*==============================================================*/
create table ff_apaas_t_relation_view_config
(
   iidd                 varchar(50) not null comment '����ID',
   view_name            varchar(200) comment '������ͼ����',
   source_app_id        varchar(50) comment 'ԴӦ��ID',
   source_app_name      varchar(200) comment 'ԴӦ������',
   target_app_id        varchar(50) comment 'Ŀ��Ӧ��ID',
   target_app_name      varchar(200) comment 'Ŀ��Ӧ������',
   rule_json            longtext comment '������ͼ��������',
   field_map_json       longtext comment '��������ӳ������',
   create_userid        varchar(50) comment '������ID',
   create_username      varchar(200) comment '����������',
   create_deptid        varchar(50) comment '��������ID',
   create_deptname      varchar(200) comment '������������',
   create_orgid         varchar(50) comment '��������ID',
   create_orgname       varchar(200) comment '������������',
   create_time          datetime comment '����ʱ��',
   update_userid        varchar(50) comment '�޸���ID',
   update_username      varchar(200) comment '�޸�������',
   update_time          datetime comment '�޸�ʱ��',
   ref_projectid        varchar(50) comment '������ĿID',
   ref_deptid           varchar(50) comment '������˾ID',
   deleted              integer default 0 comment '�Ƿ�ɾ��',
   sortid               integer comment '�����',
   primary key (iidd)
);

alter table ff_apaas_t_relation_view_config comment '������ͼ���ñ�';

/*==============================================================*/
/* Table: ff_apaas_t_right_app_lot                              */
/*==============================================================*/
create table ff_apaas_t_right_app_lot
(
   iidd                 varchar(50) not null comment '����',
   actiontype           int not null comment 'Ȩ����� 0�������� 1Ӧ�ù���',
   userid               varchar(50) comment '����ԱID',
   username             varchar(200) comment '����Ա����',
   loginname            varchar(100) comment '��¼�˺�',
   ref_appid            varchar(50) not null comment '����Ӧ�ñ��',
   ref_projectid        varchar(50) comment '������ĿID',
   ref_deptid           varchar(50) comment '������˾ID',
   addtime              datetime not null comment '���ʱ��',
   primary key (iidd)
);

alter table ff_apaas_t_right_app_lot comment 'Ӧ�ù���ԱȨ����Ϣ�� ����������������ʾ�û�����ѡ�� ���� ����ĳ��Ӧ��';

/*==============================================================*/
/* Table: ff_apaas_t_right_lot                                  */
/*==============================================================*/
create table ff_apaas_t_right_lot
(
   iidd                 varchar(50) not null comment '����',
   userid               varchar(50) comment '����ԱID',
   username             varchar(200) comment '����Ա����',
   loginname            varchar(100) comment '��¼�˺�',
   ref_projectid        varchar(50) comment '������ĿID',
   ref_deptid           varchar(50) comment '������˾ID',
   addtime              datetime not null comment '���ʱ��',
   primary key (iidd)
);

alter table ff_apaas_t_right_lot comment '��Ŀ����ԱȨ����Ϣ�� ��������������ʾ�û�����ĳ����Ŀ��Ϣ����ά��';

/*==============================================================*/
/* Table: ff_apaas_t_searchcond                                 */
/*==============================================================*/
create table ff_apaas_t_searchcond
(
   iidd                 varchar(50) not null comment '����',
   condname             varchar(200) comment '��������',
   cname                text comment '�������� �洢������JSON�ַ���',
   creater_id           varchar(50) comment '������ID',
   creater_name         varchar(200) comment '����������',
   create_time          datetime comment '����ʱ��',
   appid                varchar(50) comment '����Ӧ��ID',
   projectid            varchar(50) comment '������ĿID',
   ref_deptid           varchar(50) comment '������˾ID',
   deleted              int not null default 0 comment '�Ƿ�ɾ�� 0�� 1��',
   primary key (iidd)
);

alter table ff_apaas_t_searchcond comment '���������洢��';

/*==============================================================*/
/* Table: ff_apaas_t_serial_number_coderule                     */
/*==============================================================*/
create table ff_apaas_t_serial_number_coderule
(
   iidd                 varchar(50) not null comment '����ID',
   currbh               int not null default 1 comment '��ŵ�ǰ��ֵ',
   last_date            date comment '���һ����������',
   fieldname            varchar(50) not null comment '�ֶ�����',
   appid                varchar(50) not null comment '����Ӧ��ID',
   projectid            varchar(50) comment '������ĿID',
   primary key (iidd)
);

alter table ff_apaas_t_serial_number_coderule comment '��ˮ�����ɼ�¼��';

/*==============================================================*/
/* Table: ff_apaas_t_synch_field_mapping                        */
/*==============================================================*/
create table ff_apaas_t_synch_field_mapping
(
   iidd                 varchar(50) not null comment '����ID',
   ref_synch_id         varchar(50) comment '����ͬ���������ñ�����',
   source_field_name    varchar(200) comment 'ԭʼ�ֶ�����',
   source_field_code    varchar(200) comment 'ԭʼ�ֶα���',
   is_primary_key       int not null default 0 comment '�Ƿ�����',
   apaas_field_name     varchar(200) comment '������Ӧ���ֶ�����',
   apaas_field_code     varchar(200) comment '������Ӧ���ֶα���',
   is_update            int not null default 0 comment '�Ƿ����',
   primary key (iidd)
);

alter table ff_apaas_t_synch_field_mapping comment 'ͬ���ֶ�ӳ���';

/*==============================================================*/
/* Table: ff_apaas_t_synch_log                                  */
/*==============================================================*/
create table ff_apaas_t_synch_log
(
   iidd                 varchar(50) not null comment '����ID',
   ref_synch_id         varchar(50) comment '����ͬ���������ñ�����',
   success_msg          varchar(500) comment 'ͬ���ɹ���־',
   error_json           longtext comment 'ͬ��ʧ����־',
   addtime              datetime comment '���ʱ��',
   primary key (iidd)
);

alter table ff_apaas_t_synch_log comment 'ͬ����־��¼��';

/*==============================================================*/
/* Table: ff_apaas_t_synch_rule                                 */
/*==============================================================*/
create table ff_apaas_t_synch_rule
(
   iidd                 varchar(50) not null comment '����ID',
   synch_type           int not null default 0 comment 'ͬ����ʽ 0ֱ�����ݿ� 1��ȡ�ļ� 2����ӿ� 3AD��',
   synch_config         longtext comment '��Ӧͬ����ʽ����',
   synch_appid          varchar(50) comment 'ͬ����Ӧ��ID',
   synch_flowmodel_id   varchar(50) comment 'ͬ��������ģ��ID',
   synch_action_id      integer comment 'ͬ������ģ����ݻ��ڰ�ťID',
   synch_userid         varchar(50) comment 'ͬ���û�ID',
   remark               varchar(500) comment '��ע',
   primary key (iidd)
);

alter table ff_apaas_t_synch_rule comment 'ͬ���������ñ�';

/*==============================================================*/
/* Table: ff_apaas_t_template_config                            */
/*==============================================================*/
create table ff_apaas_t_template_config
(
   iidd                 varchar(50) not null comment 'Ψһ���',
   template_type        int(2) not null comment '���ͣ�1:������������,2:Ӧ�ø���,3:Ӧ����������',
   template             text not null comment 'ģ��json',
   placeholder          varchar(2000) not null comment 'ģ��ֵjson',
   ref_deptid           varchar(50) not null comment '��˾���',
   create_id            varchar(50) not null comment '�����˱��',
   primary key (iidd)
);

alter table ff_apaas_t_template_config comment '��ʱ����ģ���';

/*==============================================================*/
/* Table: ff_apaas_t_time_process                               */
/*==============================================================*/
create table ff_apaas_t_time_process
(
   iidd                 varchar(50) not null comment 'Ψһ����',
   task_type            int(2) not null comment '1:��ʱ��������2����ʱ�������� 3����ʱ��������  4����ʱ����',
   task_name            varchar(200) not null comment '��������',
   execute_type         int(2) not null comment '1:�����̷���2:��ϵͳѡ��һ��������3����Ӧ�ø��£�4����ϵͳѡ��һ���������£�5����Ӧ���������ݣ�6����ϵͳѡ��һ��������������',
   target_flow_model_id varchar(50) comment 'Ŀ�����̱��',
   appid                varchar(50) comment 'Ӧ�ñ��',
   invoke_target        varchar(200) not null comment 'fftask�ķ�����',
   allottype            int(2) comment '���� 0��ʾ�û� 1��ʾ�û��� 2��ʾ����',
   allotobjectid        varchar(2000) comment '����������ID',
   data_template_config varchar(50) comment 'ģ����',
   remark               varchar(500) comment '��ע',
   create_id            varchar(50) comment '������,���ڷ�������',
   create_name          varchar(100) comment '����������',
   create_time          datetime not null comment '����ʱ��',
   ref_dept_id          varchar(50) comment '��˾���',
   job_id               varchar(50) not null comment 'sys_job����',
   ref_projectid        varchar(50) comment '��Ŀ���',
   types                int not null default 1 comment '��ʱ��������',
   primary key (iidd)
);

alter table ff_apaas_t_time_process comment '��ʱ�������ñ�';

/*==============================================================*/
/* Table: ff_apaas_t_timing_task                                */
/*==============================================================*/
create table ff_apaas_t_timing_task
(
   iidd                 varchar(50) not null comment 'Ψһ����',
   task_type            int not null comment '1����ʱ���� 2����ʱ���� 3����ά������ 4������������',
   task_name            varchar(200) not null comment '��������',
   execute_type         int not null comment '1���������� 2�������ֶι����� 3����ϵͳѡ��һ������ִ�� 4���������� 5�������ύ 6�����ݸ���',
   form_field_rule      longtext comment '���ֶι���',
   invoke_target        varchar(2000) comment 'fftask�ķ�����',
   tartget_projectid    varchar(50) comment 'Ŀ����Ŀ���',
   tartget_appid        varchar(50) comment 'Ŀ��Ӧ�ñ��',
   target_flow_model_id varchar(200) comment 'Ŀ�����̱��',
   target_flow_action_id int comment '���̶������',
   default_value_rule   longtext comment 'Ĭ��ֵ����',
   receiver_rule        longtext comment '�����˹���',
   is_repeat            int comment '�Ƿ���ظ����� 0�� 1��',
   job_id               varchar(50) not null comment 'sys_job����',
   create_id            varchar(50) not null comment '������',
   create_name          varchar(100) not null comment '����������',
   create_time          datetime not null comment '����ʱ��',
   ref_appid            varchar(50) not null comment 'Ӧ�ñ��',
   ref_projectid        varchar(50) not null comment '��Ŀ���',
   ref_dept_id          varchar(50) not null comment '��˾���',
   primary key (iidd)
);

alter table ff_apaas_t_timing_task comment '�¶�ʱ�������ñ�';

/*==============================================================*/
/* Table: ff_apaas_t_user_regist                                */
/*==============================================================*/
create table ff_apaas_t_user_regist
(
   iidd                 varchar(50) not null comment '����ID',
   account_type         int default 1 comment 'ע����; 0��ҵ���� 1�������',
   user_name            varchar(200) comment '����',
   email                varchar(300) comment '�����ַ',
   mobile               varchar(30) comment '�ֻ�����',
   company_name         varchar(300) comment '��ҵ����',
   job_name             varchar(100) comment 'ְλ',
   belong_trade_one     varchar(100) comment '����һ����ҵ',
   belong_trade_two     varchar(100) comment '����������ҵ',
   company_scale        varchar(100) comment '��ҵ��ģ',
   is_active            int default 0 comment '�Ƿ񼤻� 0�� 1��',
   deleted              int default 0 comment '�Ƿ�ɾ��',
   addtime              datetime comment '���ʱ��',
   ref_deptid           varchar(50) comment '������˾ID',
   ref_userid           varchar(50) comment '�����û�ID',
   inviter_info         text comment '��������Ϣ ',
   primary key (iidd)
);

alter table ff_apaas_t_user_regist comment '�û�ע����Ϣ��';

/*==============================================================*/
/* Table: ff_apaas_ts_actormembers                              */
/*==============================================================*/
create table ff_apaas_ts_actormembers
(
   id                   varchar(50) not null comment '����',
   actorid              varchar(50) not null comment '�û�����',
   actortype            int not null comment '��Ա���',
   objectid             varchar(50) not null comment '��Ա���',
   primary key (id)
);

alter table ff_apaas_ts_actormembers comment '�û����Ա��';

/*==============================================================*/
/* Table: ff_apaas_ts_actors                                    */
/*==============================================================*/
create table ff_apaas_ts_actors
(
   actorid              varchar(50) not null comment '�û�����',
   actorname            varchar(200) comment '�û�������',
   actordesc            text comment '����',
   manager_id           text comment '����Ա���',
   manager_name         text comment '����Ա����',
   use_area             int default 0 comment 'ʹ�÷�Χ 0��Ŀ�� 1ȫ��',
   ref_projectid        varchar(50) comment '������ĿID',
   ref_deptid           varchar(50) comment '������˾ID',
   creater_id           varchar(50) comment '������ID',
   creater_name         varchar(200) comment '����������',
   addtime              datetime comment '���ʱ��',
   primary key (actorid)
);

alter table ff_apaas_ts_actors comment '�û�����Ϣ��';

/*==============================================================*/
/* Table: ff_apaas_ts_business_api_group                        */
/*==============================================================*/
create table ff_apaas_ts_business_api_group
(
   iidd                 varchar(50) not null comment '����ID',
   group_name           varchar(255) not null comment '��������',
   parent_id            varchar(50) comment '�������',
   sort_id              int not null default 0 comment '����ֵ',
   class_layer          int not null default 1 comment '�����㼶',
   class_list           varchar(500) not null comment '�㼶�ַ���',
   create_time          datetime not null comment '����ʱ��',
   create_id            varchar(50) not null comment '������ID',
   create_person        varchar(50) not null comment '����������',
   update_time          datetime not null comment '����ʱ��',
   update_id            varchar(50) not null comment '������ID',
   update_person        varchar(50) not null comment '����������',
   ref_project_id       varchar(50) not null comment '��Ŀ���',
   ref_dept_id          varchar(50) not null comment '��˾���',
   primary key (iidd)
)
COMMENT 'ҵ��API�������';

/*==============================================================*/
/* Table: ff_apaas_ts_cross_project_right                       */
/*==============================================================*/
create table ff_apaas_ts_cross_project_right
(
   iidd                 varchar(50) not null comment '����',
   userid               varchar(50) not null comment '��Ȩ�û�ID',
   username             varchar(200) not null comment '��Ȩ�û�����',
   project_id           varchar(50) not null comment '��ĿID',
   project_name         varchar(300) comment '��Ŀ����',
   app_value            text comment 'Ӧ�ü��� �洢��ʽΪ[{value:''Ӧ��id'',name:''Ӧ������''}]',
   sortid               int not null comment '����ֵ',
   addtime              datetime not null comment '���ʱ��',
   ref_deptid           varchar(50) not null comment '������˾ID',
   primary key (iidd)
);

alter table ff_apaas_ts_cross_project_right comment '����Ŀ������Ȩ��¼��';

/*==============================================================*/
/* Table: ff_apaas_ts_dept                                      */
/*==============================================================*/
create table ff_apaas_ts_dept
(
   deptid               varchar(50) not null comment '���ű��',
   fullid               varchar(1000) comment '����ȫ����ַ���',
   orgid                varchar(50) comment '���ڻ������',
   deptkind             int not null default 0 comment '��������',
   parentid             varchar(50) comment '�ϼ����ű���',
   deptname             varchar(200) comment '��������',
   sortid               int not null default 0 comment '����ֵ',
   managerid            text comment '���Ź���Ա���',
   leaderid             text comment '�����쵼���',
   description          varchar(1000) comment '��������',
   deleted              int not null default 0 comment '�Ƿ�ɾ�� 0��1��',
   createid             varchar(50) comment '�����˱��',
   createdate           datetime comment '����ʱ��',
   updateid             varchar(50) comment '�޸��˱��',
   updatedate           datetime comment '�޸�ʱ��',
   deptcode             varchar(100) comment '���ű��� ���ֶ���Ҫ����ͬ������������ʱ �洢����������Ψһ��ʶ',
   ref_deptid           varchar(50) comment '������˾ID',
   primary key (deptid)
);

alter table ff_apaas_ts_dept comment '������Ϣ��';

/*==============================================================*/
/* Table: ff_apaas_ts_menu                                      */
/*==============================================================*/
create table ff_apaas_ts_menu
(
   iidd                 varchar(50) not null comment '����',
   menuname             varchar(200) not null comment '�˵�����',
   menucode             varchar(50) not null comment '�˵�����',
   menuurl              varchar(200) comment '�˵�URL',
   parentiidd           varchar(50) comment '���˵�ID',
   classlist            varchar(500) not null comment '�˵���ID��',
   classlayer           int not null default 1 comment '�˵��㼶',
   sortid               int not null default 0 comment '��������',
   menutype             int not null default 0 comment '�˵����� 0���� 1�˵� 2Ȩ��',
   deleted              int not null default 0 comment '�Ƿ�ɾ��(1�� 0��)',
   icon                 varchar(300) comment '�˵�ͼ��',
   ref_appid            varchar(50) comment '����Ӧ��ID',
   ref_projectid        varchar(50) comment '������ĿID',
   ref_deptid           varchar(50) comment '������˾ID',
   addtime              datetime comment '���ʱ��',
   primary key (iidd)
);

alter table ff_apaas_ts_menu comment '�˵���';

/*==============================================================*/
/* Table: ff_apaas_ts_menu_mobile                               */
/*==============================================================*/
create table ff_apaas_ts_menu_mobile
(
   iidd                 varchar(50) not null comment '����id',
   menucode             varchar(50) comment '�˵�����',
   menuname             varchar(200) comment '�˵�����',
   create_id            varchar(50) comment '������ID',
   create_name          varchar(200) comment '����������',
   create_deptid        varchar(50) comment '��������ID',
   create_deptname      varchar(200) comment '������������',
   create_time          datetime comment '����ʱ��',
   ref_projectid        varchar(50) comment '������ĿID',
   ref_deptid           varchar(50) comment '������˾ID',
   primary key (iidd)
);

alter table ff_apaas_ts_menu_mobile comment '�ƶ��˲���չʾ�Ĳ˵�';

/*==============================================================*/
/* Table: ff_apaas_ts_open_api_group                            */
/*==============================================================*/
create table ff_apaas_ts_open_api_group
(
   iidd                 varchar(50) not null comment '����ID',
   group_name           varchar(255) not null comment '��������',
   parent_id            varchar(50) comment '�������',
   sort_id              int not null default 0 comment '����ֵ',
   class_layer          int not null default 1 comment '�����㼶',
   class_list           varchar(500) not null comment '�㼶�ַ���',
   update_time          datetime not null comment '����ʱ��',
   create_person        varchar(50) not null comment '������',
   primary key (iidd)
)
COMMENT 'openApi�������';

/*==============================================================*/
/* Table: ff_apaas_ts_oprateallot                               */
/*==============================================================*/
create table ff_apaas_ts_oprateallot
(
   iidd                 varchar(50) not null comment '����',
   allottype            int not null default 0 comment '��Ȩ���� 0��ʾ�û� 1��ʾ�û��� 2��ʾ����',
   allotobjectid        varchar(50) not null comment '��Ȩ������',
   menuid               varchar(50) not null comment '�˵�ID',
   menucode             varchar(50) not null comment '�˵�����',
   actiontype           varchar(200) not null comment 'Ȩ�����',
   addtime              datetime not null comment '���ʱ��',
   ref_deptid           varchar(50) comment '������˾ID',
   ref_projectid        varchar(50) not null comment '������ĿID',
   primary key (iidd)
);

alter table ff_apaas_ts_oprateallot comment 'Ȩ�޷����¼��';

/*==============================================================*/
/* Table: ff_apaas_ts_oprateallot_field                         */
/*==============================================================*/
create table ff_apaas_ts_oprateallot_field
(
   iidd                 varchar(50) not null comment '����',
   allottype            int not null default 0 comment '��Ȩ���� 0��ʾ�û� 1��ʾ�û��� 2��ʾ����',
   allotobjectid        varchar(50) not null comment '��Ȩ������',
   menuid               varchar(50) not null comment '�˵�ID',
   righttype            int not null default 0 comment 'Ȩ������ 0������1�༭��2�鿴��3�б�չʾ',
   fieldname            varchar(200) not null comment '�ֶ�����',
   isvisible            int not null default 1 comment '�Ƿ�ɼ�',
   isedit               int not null default 1 comment '�Ƿ�ɱ༭',
   isrequired           int not null default 1 comment '�Ƿ����',
   addtime              datetime not null comment '���ʱ��',
   ref_deptid           varchar(50) comment '������˾ID',
   ref_projectid        varchar(50) not null comment '������ĿID',
   subtable_config      text comment '�ӱ���������',
   primary key (iidd)
);

alter table ff_apaas_ts_oprateallot_field comment '�ֶ�Ȩ�޷����¼��';

/*==============================================================*/
/* Table: ff_apaas_ts_oprateallot_field_user                    */
/*==============================================================*/
create table ff_apaas_ts_oprateallot_field_user
(
   iidd                 varchar(50) not null comment '����',
   allotobjectid        varchar(50) not null comment '��Ȩ������',
   menuid               varchar(50) not null comment '�˵�ID',
   righttype            int not null default 0 comment 'Ȩ������ 0������1�༭��2�鿴��3�б�չʾ',
   fieldname            varchar(200) not null comment '�ֶ�����',
   isvisible            int not null default 1 comment '�Ƿ�ɼ�',
   isedit               int not null default 1 comment '�Ƿ�ɱ༭',
   isrequired           int not null default 1 comment '�Ƿ����',
   source_type          int not null default 0 comment '��Դ���� 0��ʾ�û� 1��ʾ�û��� 2��ʾ����',
   source_id            varchar(50) comment '��Դ������',
   addtime              datetime not null comment '���ʱ��',
   ref_deptid           varchar(50) comment '������˾ID',
   ref_projectid        varchar(50) not null comment '������ĿID',
   subtable_config      text comment '�ӱ���������',
   primary key (iidd)
);

alter table ff_apaas_ts_oprateallot_field_user comment '�������û��ֶ�Ȩ�޷����¼��';

/*==============================================================*/
/* Index: index_oprateallot_field_objectid                      */
/*==============================================================*/
create index index_oprateallot_field_objectid on ff_apaas_ts_oprateallot_field_user
(
   allotobjectid
);

/*==============================================================*/
/* Table: ff_apaas_ts_oprateallot_rightrange                    */
/*==============================================================*/
create table ff_apaas_ts_oprateallot_rightrange
(
   iidd                 varchar(50) not null comment '����',
   allottype            int not null default 0 comment '��Ȩ���� 0��ʾ�û� 1��ʾ�û��� 2��ʾ����',
   allotobjectid        varchar(50) not null comment '��Ȩ������',
   menuid               varchar(50) not null comment '�˵�ID',
   menucode             varchar(50) not null comment '�˵�����',
   rightrange           int not null comment 'Ȩ�޷�Χ 0ȫ�� 1���˷��� 2������ 3�¼����� 4������ 5�¼�����  6�Զ��� ',
   rule_name            varchar(200) comment '��������',
   rule_config          text comment '��������',
   addtime              datetime not null comment '���ʱ��',
   ref_deptid           varchar(50) comment '������˾ID',
   ref_projectid        varchar(50) not null comment '������ĿID',
   primary key (iidd)
);

alter table ff_apaas_ts_oprateallot_rightrange comment 'Ȩ�޲�ѯ��Χ�����¼��';

/*==============================================================*/
/* Table: ff_apaas_ts_platform_manager                          */
/*==============================================================*/
create table ff_apaas_ts_platform_manager
(
   iidd                 varchar(50) not null comment '����',
   userid               varchar(50) not null comment '��Ȩ�û�ID',
   username             varchar(200) not null comment '��Ȩ�û�����',
   sortid               int not null comment '����ֵ',
   addtime              datetime not null comment '���ʱ��',
   ref_deptid           varchar(50) not null comment '������˾ID',
   primary key (iidd)
);

alter table ff_apaas_ts_platform_manager comment 'ƽ̨�Ż�����Ա';

/*==============================================================*/
/* Table: ff_apaas_ts_user                                      */
/*==============================================================*/
create table ff_apaas_ts_user
(
   userid               varchar(50) not null comment '�û����',
   loginname            varchar(100) comment '��¼�˺�',
   password             varchar(100) comment '��¼����',
   name                 varchar(200) comment '�û�����',
   sex                  varchar(10) comment '�Ա�',
   jobid                varchar(200) comment 'ְλ���',
   job                  varchar(200) comment 'ְλ����',
   edulevelid           varchar(200) comment 'ѧ�����',
   edulevel             varchar(200) comment 'ѧ��',
   telno                varchar(50) comment '�绰',
   mobile               varchar(50) comment '�ֻ�����',
   email                varchar(200) comment '����',
   head_img             varchar(300) comment 'ͷ��',
   deleted              int not null default 0 comment '�Ƿ�ɾ�� 0��1��',
   agentstatus          int not null default 0 comment '����״̬',
   createid             varchar(50) comment '�����˱��',
   createdate           datetime comment '����ʱ��',
   updateid             varchar(50) comment '�޸��˱��',
   updatedate           datetime comment '�޸�ʱ��',
   lockstatus           int not null default 0 comment '�Ƿ����� 0��1��',
   isactive             int not null default 0 comment '�Ƿ񼤻� 0��1��',
   usersalt             varchar(50) comment '�û�������������',
   sortid               int not null default 0 comment '����ֵ',
   deptid               varchar(50) comment '���ڲ��ű��',
   account_level        int not null default 0 comment '�˺ż��� 0 ��ͨ�û� 1��������Ա',
   ref_deptid           varchar(50) comment '������˾ID',
   is_register_user     int default 0 comment '�Ƿ�ע���û�',
   user_code            varchar(100) comment 'Ա����� ���ֶ���Ҫ����ͬ���������˺�ʱ �洢�������û�Ψһ��ʶ',
   primary key (userid)
);

alter table ff_apaas_ts_user comment '�û���Ϣ��';

/*==============================================================*/
/* Table: ff_apaas_ts_user_expand                               */
/*==============================================================*/
create table ff_apaas_ts_user_expand
(
   userid               varchar(50) not null comment '�û����',
   loginname            varchar(100) comment '��¼�˺�',
   signature            longtext comment '��дǩ��',
   create_time          datetime comment '����ʱ��',
   create_app_is_notice int default 0 comment '����Ӧ�ú��Ƿ���ʾ(0,��Ҫ��ʾ��1������Ҫ��ʾ)',
   primary key (userid)
);

alter table ff_apaas_ts_user_expand comment '�û���չ��';

/*==============================================================*/
/* Table: ff_apaas_ts_user_launch_new_top                       */
/*==============================================================*/
create table ff_apaas_ts_user_launch_new_top
(
   iidd                 varchar(50) not null comment '����ID',
   userid               varchar(50) not null comment '�û�ID',
   oflowmodelid         varchar(50) not null comment 'ԭʼ���̱��',
   toptime              datetime not null comment '�ö�ʱ��',
   primary key (iidd)
);

alter table ff_apaas_ts_user_launch_new_top comment '��ҳ�û������µ��ö���';

/*==============================================================*/
/* Table: ff_apaas_ts_user_oprateallot                          */
/*==============================================================*/
create table ff_apaas_ts_user_oprateallot
(
   iidd                 varchar(50) not null comment '����',
   allotobjectid        varchar(50) not null comment '��Ȩ������',
   menuid               varchar(50) not null comment '�˵�ID',
   menucode             varchar(50) not null comment '�˵�����',
   actiontype           varchar(200) not null comment 'Ȩ�����',
   source_type          int not null default 0 comment '��Դ���� 0��ʾ�û� 1��ʾ�û��� 2��ʾ����',
   source_id            varchar(50) comment '��Դ������',
   addtime              datetime not null comment '���ʱ��',
   ref_deptid           varchar(50) comment '������˾ID',
   ref_projectid        varchar(50) not null comment '������ĿID',
   primary key (iidd)
);

alter table ff_apaas_ts_user_oprateallot comment '�������û�Ȩ�޷����¼��';

/*==============================================================*/
/* Index: index_oprateallot_objectid                            */
/*==============================================================*/
create index index_oprateallot_objectid on ff_apaas_ts_user_oprateallot
(
   allotobjectid
);

/*==============================================================*/
/* Table: ff_apaas_ts_user_oprateallot_rightrange               */
/*==============================================================*/
create table ff_apaas_ts_user_oprateallot_rightrange
(
   iidd                 varchar(50) not null comment '����',
   allotobjectid        varchar(50) not null comment '��Ȩ������',
   menuid               varchar(50) not null comment '�˵�ID',
   menucode             varchar(50) not null comment '�˵�����',
   rightrange           int not null comment 'Ȩ�޷�Χ 0ȫ�� 1���˷��� 2������ 3�¼����� 4������ 5�¼�����  6�Զ��� ',
   rule_name            varchar(200) comment '��������',
   rule_config          text comment '��������',
   source_type          int not null default 0 comment '��Դ���� 0��ʾ�û� 1��ʾ�û��� 2��ʾ����',
   source_id            varchar(50) comment '��Դ������',
   addtime              datetime not null comment '���ʱ��',
   ref_deptid           varchar(50) comment '������˾ID',
   ref_projectid        varchar(50) not null comment '������ĿID',
   ref_rangeid          varchar(50) comment '����Ȩ�޷�Χ�����id',
   primary key (iidd)
);

alter table ff_apaas_ts_user_oprateallot_rightrange comment '�������û�Ȩ�޲�ѯ��Χ�����¼��';

/*==============================================================*/
/* Index: index_oprateallot_rightrange_objectid                 */
/*==============================================================*/
create index index_oprateallot_rightrange_objectid on ff_apaas_ts_user_oprateallot_rightrange
(
   allotobjectid
);

/*==============================================================*/
/* Table: ff_apaas_ts_user_temp                                 */
/*==============================================================*/
create table ff_apaas_ts_user_temp
(
   id                   varchar(50) not null comment '����',
   userid               varchar(50) comment '�û����',
   batch                varchar(50) comment '�����',
   indate               datetime comment '���ʱ��',
   primary key (id)
);

alter table ff_apaas_ts_user_temp comment '��ʱ�û���';

/*==============================================================*/
/* Table: ff_apaas_up_attachment                                */
/*==============================================================*/
create table ff_apaas_up_attachment
(
   iidd                 varchar(50) not null comment '����',
   userid               varchar(50) comment '�û�ID',
   filename             varchar(200) comment '�ļ�����',
   filepath             varchar(1000) comment '�ļ���ַ',
   uptime               datetime comment '�ϴ�ʱ��',
   deleted              int default 0 comment '�Ƿ�ɾ��(0�� 1��)',
   deletetime           datetime comment 'ɾ��ʱ��',
   deptid               varchar(50) comment '����ID',
   orgid                varchar(50) comment '����ID',
   appid                varchar(200) comment '����ID',
   sufname              varchar(100) comment '�ļ���չ��',
   objecttype           varchar(200) comment '��������',
   objectid             varchar(50) comment '��������ID',
   username             varchar(200) comment '�ϴ���',
   deptname             varchar(200) comment '�ϴ�����',
   nodemodelid          varchar(50) comment '����ģ��ID',
   ref_appid            varchar(50) comment '����Ӧ��id',
   primary key (iidd)
);

alter table ff_apaas_up_attachment comment '�����ϴ���';

/*==============================================================*/
/* Table: ff_apaas_up_attasecurity                              */
/*==============================================================*/
create table ff_apaas_up_attasecurity
(
   iidd                 varchar(50) not null comment '����',
   appid                varchar(200) not null comment 'ϵͳID',
   appsecurity          varchar(200) not null comment '��Կ',
   loginname            varchar(100) comment '��¼����',
   primary key (iidd)
);

alter table ff_apaas_up_attasecurity comment '����Ȩ�ޱ�';

/*==============================================================*/
/* Table: knowledge_t_base_info                                 */
/*==============================================================*/
create table knowledge_t_base_info
(
   iidd                 varchar(50) not null comment '����',
   create_userid        varchar(50) comment '������ID',
   create_username      varchar(200) comment '����������',
   create_deptid        varchar(50) comment '��������ID',
   create_deptname      varchar(200) comment '������������',
   create_orgid         varchar(50) comment '��������ID',
   create_orgname       varchar(200) comment '������������',
   create_time          datetime comment '����ʱ��',
   update_userid        varchar(50) comment '�޸���ID',
   update_username      varchar(200) comment '�޸�������',
   update_time          datetime comment '�޸�ʱ��',
   ref_deptid           varchar(50) comment '������˾ID',
   ref_projectid        varchar(50) comment '������ĿID',
   deleted              integer default 0 comment '�Ƿ�ɾ��',
   subject              varchar(200) comment '����',
   tags                 varchar(200) comment '�ؼ���',
   content              text comment '֪ʶ����',
   type                 text comment '֪ʶ���ID',
   refflowid            varchar(50) comment '��������ID',
   is_top               int(2) default 0 comment '�Ƿ�ָ����0����ͨ��1���ö���',
   top_time             timestamp default CURRENT_TIMESTAMP comment '�ö�ʱ��,Ĭ��Ϊ֪ʶ����ʱ��',
   attachments          text comment '��ظ���',
   primary key (iidd)
)
COMMENT '֪ʶ�����';

alter table knowledge_t_base_info comment '֪ʶ��Ϣ��';

/*==============================================================*/
/* Table: knowledge_t_catalog                                   */
/*==============================================================*/
create table knowledge_t_catalog
(
   iidd                 varchar(50) not null comment '����ID',
   catalogname          varchar(100) comment '�������',
   parentid             varchar(50) comment '����ID',
   classlayer           int default 1 comment '�����㼶',
   classlist            varchar(500) comment '�㼶�ַ���',
   sortid               int(2) default 0 comment '����ֵ',
   deleted              int(2) default 0 comment '�Ƿ�ɾ��',
   ref_projectid        varchar(50) comment '��Ŀ���',
   ref_deptid           varchar(50) comment '��˾���',
   create_userid        varchar(50) comment '������ID',
   create_username      varchar(200) comment '����������',
   create_time          timestamp default CURRENT_TIMESTAMP comment '����ʱ��',
   create_deptid        varchar(50) comment '��������ID',
   create_deptname      varchar(200) comment '������������',
   create_orgid         varchar(50) comment '��������ID',
   update_userid        varchar(50) comment '�޸���ID',
   update_username      varchar(200) comment '�޸�������',
   update_time          datetime comment '�޸�ʱ��',
   primary key (iidd)
)
COMMENT '֪ʶ����';

alter table knowledge_t_catalog comment '֪ʶ����';

/*==============================================================*/
/* Table: knowledge_t_comment                                   */
/*==============================================================*/
create table knowledge_t_comment
(
   iidd                 varchar(50) not null comment '���۱��',
   content              varchar(500) comment '��������',
   reply_id             varchar(50) comment '�ظ�����ID��֪ʶID',
   ref_commentid        varchar(50) comment '��������ID',
   ref_knowledgeid      varchar(50) comment '����֪ʶID',
   user_id              varchar(50) comment '�����˱��',
   ref_deptid           varchar(50) comment '��˾���',
   ref_projectid        varchar(50) comment '��Ŀ���',
   publish_time         timestamp default CURRENT_TIMESTAMP comment '����ʱ��',
   primary key (iidd)
);

alter table knowledge_t_comment comment '֪ʶ���۱�';

/*==============================================================*/
/* Table: knowledge_t_filed                                     */
/*==============================================================*/
create table knowledge_t_filed
(
   iidd                 varchar(50) not null comment '����ID',
   create_userid        varchar(50) comment '������ID',
   create_username      varchar(200) comment '����������',
   create_deptid        varchar(50) comment '��������ID',
   create_deptname      varchar(200) comment '������������',
   create_orgid         varchar(50) comment '��������ID',
   create_time          datetime comment '����ʱ��',
   project_id           varchar(50) not null comment '��ĿID',
   app_id               varchar(50) not null comment 'Ӧ��ID',
   subject              text comment '֪ʶ����',
   keyword              text not null comment '�ؼ���',
   attachments          text comment '��ظ���',
   content              text comment '֪ʶ����',
   sort                 int not null comment '����ֵ',
   ref_deptid           varchar(50) comment '������˾ID',
   primary key (iidd)
);

alter table knowledge_t_filed comment '֪ʶ�鵵�����';

/*==============================================================*/
/* Table: knowledge_t_flow_info                                 */
/*==============================================================*/
create table knowledge_t_flow_info
(
   flowid               varchar(50) not null comment '����ID',
   flowmodelid          varchar(50) comment '����ģ��ID',
   nodemodelid          varchar(50) comment '����ģ��ID',
   flowno               varchar(200) comment '���̵���',
   create_userid        varchar(50) comment '������ID',
   create_username      varchar(200) comment '����������',
   create_deptid        varchar(50) comment '������ID',
   create_deptname      varchar(200) comment '����������',
   create_orgid         varchar(50) comment '�������ID',
   create_orgname       varchar(200) comment '�����������',
   create_time          datetime comment '����ʱ��',
   update_userid        varchar(50) comment '�޸���ID',
   update_username      varchar(200) comment '�޸�������',
   update_time          datetime comment '�޸�ʱ��',
   ref_deptid           varchar(50) comment '������˾ID',
   ref_projectid        varchar(50) comment '������ĿID',
   deleted              integer default 0 comment '�Ƿ�ɾ��',
   current_nodename     varchar(1000) comment '��ǰ������',
   current_hander       varchar(1000) comment '��ǰ������',
   business_status      varchar(500) comment 'ҵ��״̬',
   type                 text comment '֪ʶ���',
   subject              varchar(200) comment '֪ʶ����',
   tags                 text comment '�ؼ���',
   content              text comment '֪ʶ����',
   attachments          text comment '��ظ���',
   primary key (flowid)
);

alter table knowledge_t_flow_info comment '֪ʶ������Ϣ��';

/*==============================================================*/
/* Table: knowledge_t_reference                                 */
/*==============================================================*/
create table knowledge_t_reference
(
   iidd                 varchar(50) not null comment '����ID',
   create_userid        varchar(50) comment '������ID',
   create_username      varchar(200) comment '����������',
   create_deptid        varchar(50) comment '��������ID',
   create_deptname      varchar(200) comment '������������',
   create_orgid         varchar(50) comment '��������ID',
   create_time          datetime comment '����ʱ��',
   project_id           varchar(50) not null comment '��ĿID',
   app_id               varchar(50) not null comment 'Ӧ��ID',
   keyword              text not null comment '�ؼ����ֶ�',
   sort                 int not null comment '����ֵ',
   ref_deptid           varchar(50) comment '������˾ID',
   primary key (iidd)
);

alter table knowledge_t_reference comment '֪ʶ�ο������';

/*==============================================================*/
/* Table: knowledge_t_related                                   */
/*==============================================================*/
create table knowledge_t_related
(
   iidd                 varchar(50) not null comment 'Ψһ���',
   like_type            int(2) default 0 comment '���ͣ�1 �Ķ���2 ���� 3 �ղ�',
   data_number          varchar(50) comment '֪ʶ��Ż����۱��',
   user_id              varchar(50) comment '�û����',
   create_time          timestamp default CURRENT_TIMESTAMP comment '����ʱ��',
   ref_deptid           varchar(50) comment '��˾���',
   ref_projectid        varchar(50) comment '��Ŀ���',
   primary key (iidd)
);

alter table knowledge_t_related comment '֪ʶ��ز�����(����/�ղ�/�Ķ�)';

/*==============================================================*/
/* Table: qrtz_blob_triggers                                    */
/*==============================================================*/
create table qrtz_blob_triggers
(
   sched_name           varchar(120) not null comment '��������',
   trigger_name         varchar(200) not null comment 'qrtz_triggers��trigger_name�����',
   trigger_group        varchar(200) not null comment 'qrtz_triggers��trigger_group�����',
   blob_data            blob comment '��ų־û�Trigger����',
   primary key (sched_name, trigger_name, trigger_group)
)
engine=innodb comment = 'Blob���͵Ĵ�������';

alter table qrtz_blob_triggers comment 'Blob���͵Ĵ�������';

/*==============================================================*/
/* Table: qrtz_calendars                                        */
/*==============================================================*/
create table qrtz_calendars
(
   sched_name           varchar(120) not null comment '��������',
   calendar_name        varchar(200) not null comment '��������',
   calendar             blob not null comment '��ų־û�calendar����',
   primary key (sched_name, calendar_name)
)
engine=innodb comment = '������Ϣ��';

alter table qrtz_calendars comment '������Ϣ��';

/*==============================================================*/
/* Table: qrtz_cron_triggers                                    */
/*==============================================================*/
create table qrtz_cron_triggers
(
   sched_name           varchar(120) not null comment '��������',
   trigger_name         varchar(200) not null comment 'qrtz_triggers��trigger_name�����',
   trigger_group        varchar(200) not null comment 'qrtz_triggers��trigger_group�����',
   cron_expression      varchar(200) not null comment 'cron���ʽ',
   time_zone_id         varchar(80) comment 'ʱ��',
   primary key (sched_name, trigger_name, trigger_group)
)
engine=innodb comment = 'Cron���͵Ĵ�������';

alter table qrtz_cron_triggers comment 'Cron���͵Ĵ�������';

/*==============================================================*/
/* Table: qrtz_fired_triggers                                   */
/*==============================================================*/
create table qrtz_fired_triggers
(
   sched_name           varchar(120) not null comment '��������',
   entry_id             varchar(95) not null comment '������ʵ��id',
   trigger_name         varchar(200) not null comment 'qrtz_triggers��trigger_name�����',
   trigger_group        varchar(200) not null comment 'qrtz_triggers��trigger_group�����',
   instance_name        varchar(200) not null comment '������ʵ����',
   fired_time           bigint(13) not null comment '������ʱ��',
   sched_time           bigint(13) not null comment '��ʱ���ƶ���ʱ��',
   priority             integer not null comment '���ȼ�',
   state                varchar(16) not null comment '״̬',
   job_name             varchar(200) comment '��������',
   job_group            varchar(200) comment '��������',
   is_nonconcurrent     varchar(1) comment '�Ƿ񲢷�',
   requests_recovery    varchar(1) comment '�Ƿ���ָܻ�ִ��',
   primary key (sched_name, entry_id)
)
engine=innodb comment = '�Ѵ����Ĵ�������';

alter table qrtz_fired_triggers comment '�Ѵ����Ĵ�������';

/*==============================================================*/
/* Table: qrtz_job_details                                      */
/*==============================================================*/
create table qrtz_job_details
(
   sched_name           varchar(120) not null comment '��������',
   job_name             varchar(200) not null comment '��������',
   job_group            varchar(200) not null comment '��������',
   description          varchar(250) comment '��ؽ���',
   job_class_name       varchar(250) not null comment 'ִ������������',
   is_durable           varchar(1) not null comment '�Ƿ�־û�',
   is_nonconcurrent     varchar(1) not null comment '�Ƿ񲢷�',
   is_update_data       varchar(1) not null comment '�Ƿ��������',
   requests_recovery    varchar(1) not null comment '�Ƿ���ָܻ�ִ��',
   job_data             blob comment '��ų־û�job����',
   primary key (sched_name, job_name, job_group)
)
engine=innodb comment = '������ϸ��Ϣ��';

alter table qrtz_job_details comment '������ϸ��Ϣ��';

/*==============================================================*/
/* Table: qrtz_locks                                            */
/*==============================================================*/
create table qrtz_locks
(
   sched_name           varchar(120) not null comment '��������',
   lock_name            varchar(40) not null comment '����������',
   primary key (sched_name, lock_name)
)
engine=innodb comment = '�洢�ı�������Ϣ��';

alter table qrtz_locks comment '�洢�ı�������Ϣ��';

/*==============================================================*/
/* Table: qrtz_paused_trigger_grps                              */
/*==============================================================*/
create table qrtz_paused_trigger_grps
(
   sched_name           varchar(120) not null comment '��������',
   trigger_group        varchar(200) not null comment 'qrtz_triggers��trigger_group�����',
   primary key (sched_name, trigger_group)
)
engine=innodb comment = '��ͣ�Ĵ�������';

alter table qrtz_paused_trigger_grps comment '��ͣ�Ĵ�������';

/*==============================================================*/
/* Table: qrtz_scheduler_state                                  */
/*==============================================================*/
create table qrtz_scheduler_state
(
   sched_name           varchar(120) not null comment '��������',
   instance_name        varchar(200) not null comment 'ʵ������',
   last_checkin_time    bigint(13) not null comment '�ϴμ��ʱ��',
   checkin_interval     bigint(13) not null comment '�����ʱ��',
   primary key (sched_name, instance_name)
)
engine=innodb comment = '������״̬��';

alter table qrtz_scheduler_state comment '������״̬��';

/*==============================================================*/
/* Table: qrtz_simple_triggers                                  */
/*==============================================================*/
create table qrtz_simple_triggers
(
   sched_name           varchar(120) not null comment '��������',
   trigger_name         varchar(200) not null comment 'qrtz_triggers��trigger_name�����',
   trigger_group        varchar(200) not null comment 'qrtz_triggers��trigger_group�����',
   repeat_count         bigint(7) not null comment '�ظ��Ĵ���ͳ��',
   repeat_interval      bigint(12) not null comment '�ظ��ļ��ʱ��',
   times_triggered      bigint(10) not null comment '�Ѿ������Ĵ���',
   primary key (sched_name, trigger_name, trigger_group)
)
engine=innodb comment = '�򵥴���������Ϣ��';

alter table qrtz_simple_triggers comment '�򵥴���������Ϣ��';

/*==============================================================*/
/* Table: qrtz_simprop_triggers                                 */
/*==============================================================*/
create table qrtz_simprop_triggers
(
   sched_name           varchar(120) not null comment '��������',
   trigger_name         varchar(200) not null comment 'qrtz_triggers��trigger_name�����',
   trigger_group        varchar(200) not null comment 'qrtz_triggers��trigger_group�����',
   str_prop_1           varchar(512) comment 'String���͵�trigger�ĵ�һ������',
   str_prop_2           varchar(512) comment 'String���͵�trigger�ĵڶ�������',
   str_prop_3           varchar(512) comment 'String���͵�trigger�ĵ���������',
   int_prop_1           int comment 'int���͵�trigger�ĵ�һ������',
   int_prop_2           int comment 'int���͵�trigger�ĵڶ�������',
   long_prop_1          bigint comment 'long���͵�trigger�ĵ�һ������',
   long_prop_2          bigint comment 'long���͵�trigger�ĵڶ�������',
   dec_prop_1           numeric(13,4) comment 'decimal���͵�trigger�ĵ�һ������',
   dec_prop_2           numeric(13,4) comment 'decimal���͵�trigger�ĵڶ�������',
   bool_prop_1          varchar(1) comment 'Boolean���͵�trigger�ĵ�һ������',
   bool_prop_2          varchar(1) comment 'Boolean���͵�trigger�ĵڶ�������',
   primary key (sched_name, trigger_name, trigger_group)
)
engine=innodb comment = 'ͬ�����Ƶ�������';

alter table qrtz_simprop_triggers comment 'ͬ�����Ƶ�������';

/*==============================================================*/
/* Table: qrtz_triggers                                         */
/*==============================================================*/
create table qrtz_triggers
(
   sched_name           varchar(120) not null comment '��������',
   trigger_name         varchar(200) not null comment '������������',
   trigger_group        varchar(200) not null comment '�����������������',
   job_name             varchar(200) not null comment 'qrtz_job_details��job_name�����',
   job_group            varchar(200) not null comment 'qrtz_job_details��job_group�����',
   description          varchar(250) comment '��ؽ���',
   next_fire_time       bigint(13) comment '��һ�δ���ʱ�䣨���룩',
   prev_fire_time       bigint(13) comment '��һ�δ���ʱ�䣨Ĭ��Ϊ-1��ʾ��������',
   priority             integer comment '���ȼ�',
   trigger_state        varchar(16) not null comment '������״̬',
   trigger_type         varchar(8) not null comment '������������',
   start_time           bigint(13) not null comment '��ʼʱ��',
   end_time             bigint(13) comment '����ʱ��',
   calendar_name        varchar(200) comment '�ճ̱�����',
   misfire_instr        smallint(2) comment '����ִ�еĲ���',
   job_data             blob comment '��ų־û�job����',
   primary key (sched_name, trigger_name, trigger_group)
)
engine=innodb comment = '��������ϸ��Ϣ��';

alter table qrtz_triggers comment '��������ϸ��Ϣ��';

/*==============================================================*/
/* Table: t_expenses_chaim                                      */
/*==============================================================*/
create table t_expenses_chaim
(
   flowid               varchar(50) not null comment '����ID',
   flowmodelid          varchar(50) comment '����ģ��ID',
   nodemodelid          varchar(50) comment '����ģ��ID',
   flowno               varchar(200) comment '���̵���',
   create_userid        varchar(50) comment '������ID',
   create_username      varchar(200) comment '����������',
   create_deptid        varchar(50) comment '��������ID',
   create_deptname      varchar(200) comment '������������',
   create_orgid         varchar(50) comment '��������ID',
   create_orgname       varchar(200) comment '������������',
   create_time          datetime comment '����ʱ��',
   update_userid        varchar(50) comment '�޸���ID',
   update_username      varchar(200) comment '�޸�������',
   update_time          datetime comment '�޸�ʱ��',
   ref_deptid           varchar(50) comment '������˾ID',
   ref_projectid        varchar(50) comment '������ĿID',
   deleted              integer default 0 comment '�Ƿ�ɾ��',
   current_nodename     varchar(1000) comment '��ǰ������',
   current_hander       varchar(1000) comment '��ǰ������',
   business_status      varchar(500) comment 'ҵ��״̬',
   billnum              integer comment '������',
   total_amount         decimal(18,2) comment '�ϼƽ��',
   borrow_money         decimal(18,2) comment 'ԭ���',
   spare_money          decimal(18,2) comment 'Ӧ�����',
   pay_reason           varchar(2000) comment '����ԭ��',
   detail_reperson      text comment '����������',
   detail_department    text comment '������������',
   detail_classification text comment '��������',
   detail_date          datetime comment '������д����',
   detail_deamount      int comment '�����ֿ۽��',
   detail_description   varchar(200) comment '��������',
   cost_attribution     text comment '���ù���',
   detail_role          text comment '����������ɫ',
   primary key (flowid)
);

alter table t_expenses_chaim comment '���ñ�����¼��';

/*==============================================================*/
/* Table: t_expenses_chaim_detail                               */
/*==============================================================*/
create table t_expenses_chaim_detail
(
   iidd                 varchar(50) not null comment '����ID',
   ref_flowid           varchar(50) comment '�������ñ�������ID',
   purpose              varchar(200) comment '��;',
   catalog_info         text comment '������Ŀ',
   chaim_money          decimal(18,2) comment '�������',
   primary key (iidd)
);

alter table t_expenses_chaim_detail comment '���ñ�����ϸ��';

alter table qrtz_blob_triggers add constraint FK_reference_4 foreign key (sched_name, trigger_name, trigger_group)
      references qrtz_triggers (sched_name, trigger_name, trigger_group);

alter table qrtz_cron_triggers add constraint FK_reference_3 foreign key (sched_name, trigger_name, trigger_group)
      references qrtz_triggers (sched_name, trigger_name, trigger_group);

alter table qrtz_simple_triggers add constraint FK_reference_2 foreign key (sched_name, trigger_name, trigger_group)
      references qrtz_triggers (sched_name, trigger_name, trigger_group);

alter table qrtz_simprop_triggers add constraint FK_reference_5 foreign key (sched_name, trigger_name, trigger_group)
      references qrtz_triggers (sched_name, trigger_name, trigger_group);

alter table qrtz_triggers add constraint FK_reference_1 foreign key (sched_name, job_name, job_group)
      references qrtz_job_details (sched_name, job_name, job_group);



INSERT INTO ff_apaas_sys_config (config_id, config_name, config_key, config_value, config_type, create_by, create_time,
                                 update_by, update_time, remark, group_name,types)
VALUES ('9E8D879AE17C40F7AC5ED3C0B5E7FAA5', '֪ʶȫ�����ID', 'knowledge-all-type-id', '8E3D879AE17C40F7AC5ED3C0B5E7FAA5',
        'Y', 'F1DD5C21715A4DA7B873AD98BC5D1494', sysdate(), NULL, NULL, NULL, '֪ʶ',0);


-- ---------------------------------------------------------
-- ��ʼ��OpenApi�ű�
-- ---------------------------------------------------------
INSERT INTO ff_apaas_ts_open_api_group (iidd, group_name, parent_id, sort_id, class_layer, class_list, update_time, create_person) VALUES ('DD2849C5028B44A7A08E0972A29D552C', '����Ӧ��', '', 0, 1, 'DD2849C5028B44A7A08E0972A29D552C', '2022-05-30 10:46:13', '�Ƿ�');
INSERT INTO ff_apaas_ts_open_api_group (iidd, group_name, parent_id, sort_id, class_layer, class_list, update_time, create_person) VALUES ('EA6D284FBAFF430DA9F945ADE74CFA8D', '���̷���', '', 1, 1, 'EA6D284FBAFF430DA9F945ADE74CFA8D', '2022-05-30 10:46:35', '�Ƿ�');

INSERT INTO ff_apaas_sys_config (config_id, config_name, config_key, config_value, config_type, create_by, create_time,
                                 update_by, update_time, remark, group_name)
VALUES ('34CF987C3B084EFDAB4BBB81D92C5C46', 'openApi�������Ϸ���ID', 'open_api_basic_data_group_id',
        'DD2849C5028B44A7A08E0972A29D552C', 'Y', '72306761D85B44C685F0617E74562E0E', sysdate(), NULL, NULL, NULL, 'OPEN-API');
INSERT INTO ff_apaas_sys_config (config_id, config_name, config_key, config_value, config_type, create_by, create_time,
                                 update_by, update_time, remark, group_name)
VALUES ('D1731A916AC24861A219A2D83D38A1E0', 'openApi���̷���ID', 'open_api_flow_group_id',
        'EA6D284FBAFF430DA9F945ADE74CFA8D', 'Y', '72306761D85B44C685F0617E74562E0E', sysdate(), NULL, NULL, NULL, 'OPEN-API');

INSERT INTO `ff_apaas_open_api`(`iidd`, `name`, `group_id`, `group_name`, `url`, `method`, `context_type`, `body`, `response`, `success_examples`, `fail_examples`, `sort_id`, `update_time`, `create_person`) VALUES ('34BE3978AE304A30954D3BB2AF6E628B', '��������-�޸�', 'DD2849C5028B44A7A08E0972A29D552C', '����Ӧ��', 'pub/editBasics', 2, 3, '[{\"id\":\"498C4E30FE1F7303AEA79097D94C318D\",\"name\":\"appid\",\"type\":\"String\",\"explain\":\"Ӧ��ID����({\\\"name\\\":\\\"appid\\\",\\\"value\\\":\\\"appid\\\"})\",\"children\":[],\"required\":\"����\"},{\"id\":\"15D8447234D67A69BA10EA492864DE40\",\"name\":\"iidd\",\"type\":\"String\",\"explain\":\"������������ID����({\\\"name\\\":\\\"iidd\\\",\\\"value\\\":\\\"iidd\\\"})\",\"children\":[],\"required\":\"����\"},{\"id\":\"68D0ECF17A042063FEB1E3DE4CBD09CF\",\"name\":\"userId\",\"type\":\"String\",\"explain\":\"�޸ĵ�¼�˺ţ���({\\\"name\\\":\\\"userId\\\",\\\"value\\\":\\\"userId\\\"})\",\"children\":[],\"required\":\"����\"},{\"id\":\"42AA967132D10F792B979A3DA3E8B363\",\"name\":\"data\",\"type\":\"Object\",\"explain\":\"ҵ������(JSON�ַ���)\",\"children\":[],\"required\":\"����\"}]', '[{\"id\":\"2BA21B95289C82EB111C424ECC48E1EE\",\"name\":\"code\",\"type\":\"Number\",\"explain\":\"��Ӧ��\",\"children\":[],\"required\":\"����\"},{\"id\":\"A25816AE30CD4E65808F57B9AADF9015\",\"name\":\"msg\",\"type\":\"String\",\"explain\":\"��Ӧ˵��\",\"children\":[],\"required\":\"����\"},{\"id\":\"371A6CFD26077E9608A95E76F17040F0\",\"name\":\"data\",\"type\":\"Object\",\"explain\":\"��Ӧ����\",\"children\":[],\"required\":\"����\"}]', '{\r\n  \"code\": 200,\r\n  \"msg\": \"\",\r\n  \"data\": \"\"\r\n}', '{\r\n  \"code\": 200,\r\n  \"msg\": \"\",\r\n  \"data\": \"\"\r\n}', 0, '2022-07-18 17:55:02', '������');
INSERT INTO `ff_apaas_open_api`(`iidd`, `name`, `group_id`, `group_name`, `url`, `method`, `context_type`, `body`, `response`, `success_examples`, `fail_examples`, `sort_id`, `update_time`, `create_person`) VALUES ('890BCA77D52B4683BCC027A1F3156D17', '��������-�б�', 'DD2849C5028B44A7A08E0972A29D552C', '����Ӧ��', 'pub/listBasic', 2, 3, '[{\"id\":\"E123E7E02059603F554732E4216ED0E6\",\"name\":\"appid\",\"explain\":\"Ӧ��ID����({\\\"name\\\":\\\"appid\\\",\\\"value\\\":\\\"appid\\\"})\",\"type\":\"String\",\"required\":\"����\",\"children\":[]},{\"id\":\"78392042EBA7705EEEEDDB3BC583410F\",\"name\":\"userId\",\"explain\":\"��¼�˺ţ���({\\\"name\\\":\\\"userId\\\",\\\"value\\\":\\\"userId\\\"})\",\"type\":\"String\",\"required\":\"����\",\"children\":[]},{\"id\":\"83D847A6CFEBB934B9C9729D413C3404\",\"name\":\"pageNum\",\"explain\":\"ҳ�룬������ѯ����\",\"type\":\"Number\",\"required\":\"����\",\"children\":[]},{\"id\":\"A3B8F8BA02F6058AAF2E69662C250677\",\"name\":\"pageSize\",\"explain\":\"ÿҳ��С��������ѯ����\",\"type\":\"Number\",\"required\":\"����\",\"children\":[]},{\"id\":\"F0C3A41174FE818C038D1F472D314FD1\",\"name\":\"queryConditions\",\"explain\":\"��ѯ����,[{\\\"column\\\":\\\"E1CC30923E5040E7EA247A0066B85905\\\",\\\"queryType\\\":\\\"like\\\",\\\"value\\\":[{\\\"name\\\":\\\"Ӧ�ù�������\\\",\\\"value\\\":\\\"Ӧ�ù�������\\\"}]}]\",\"type\":\"Object\",\"required\":\"����\",\"children\":[]}]', '[{\"id\":\"C3EE139C30504E4D86D1B5BE8B78CF9A\",\"name\":\"code\",\"explain\":\"��Ӧ��\",\"type\":\"String\",\"required\":\"����\",\"children\":[]},{\"id\":\"291A9D5A536C9B5D9D43230559A7BEE8\",\"name\":\"msg\",\"explain\":\"��Ӧ˵��\",\"type\":\"String\",\"required\":\"����\",\"children\":[]},{\"id\":\"EB32E5AFECC0163271C630CFBAC0D882\",\"name\":\"data\",\"explain\":\"��Ӧ����\",\"type\":\"Object\",\"required\":\"����\",\"children\":[]}]', '{\n	\"total\": 1,\n	\"rows\": [{\n		\"refFormid\": \"D4BE7D56324042EFAE786E380A5BDDF4\",\n		\"updateUserid\": \"04BBE297F27149B08CD3DFE64ADC711A\",\n		\"DE6696C3920427CDEC10FBC76A787E6E\": \"[{\\\"name\\\":\\\"��Ŀ��Ϣά��\\\",\\\"value\\\":\\\"��Ŀ��Ϣά��\\\"}]\",\n		\"refDeptid\": \"3435840D6BB648228100C54175439012\",\n		\"createDeptname\": \"�����зǷ���Ϣ�������޹�˾\",\n		\"createOrgid\": \"3435840D6BB648228100C54175439012\",\n		\"iidd\": \"CACEE62DFDF74B00941BB3D2F02E69DC\",\n		\"createUsername\": \"������\",\n		\"refProjectid\": \"A03769DA38284D138A1356DC93C2F9C9\",\n		\"refAppid\": \"8F3F2AE6F2D34FBAB14A0BBA3E7C3721\",\n		\"createDeptid\": \"3435840D6BB648228100C54175439012\",\n		\"createUserid\": \"04BBE297F27149B08CD3DFE64ADC711A\",\n		\"updateTime\": \"2023-03-23 14:50:32\",\n		\"createOrgname\": \"�����зǷ���Ϣ�������޹�˾\",\n		\"ref_projectid\": \"A03769DA38284D138A1356DC93C2F9C9\",\n		\"deleted\": 0,\n		\"createTime\": \"2023-03-23 14:50:29\",\n		\"updateUsername\": \"������\",\n		\"contentjson\": \"{\\\"DE6696C3920427CDEC10FBC76A787E6E\\\":[{\\\"name\\\":\\\"��Ŀ��Ϣά��\\\",\\\"value\\\":\\\"��Ŀ��Ϣά��\\\"}],\\\"ref_projectid\\\":\\\"A03769DA38284D138A1356DC93C2F9C9\\\"}\"\n	}],\n	\"code\": 200\n}', '{\n	\"code\": 401,\n	\"msg\": \"������ʣ�/ffapaas/pub/listBasic����֤ʧ�ܣ��޷�����ϵͳ��Դ\"\n}', 0, '2023-03-23 15:59:40', '������');
INSERT INTO `ff_apaas_open_api`(`iidd`, `name`, `group_id`, `group_name`, `url`, `method`, `context_type`, `body`, `response`, `success_examples`, `fail_examples`, `sort_id`, `update_time`, `create_person`) VALUES ('8AF57982C71F492AA96F25145D2F3547', '��������-ɾ��', 'DD2849C5028B44A7A08E0972A29D552C', '����Ӧ��', 'pub/deletedBasic', 2, 3, '[{\"id\":\"3D6F8F00DC0734B5A1E8A7C2819E1BCC\",\"name\":\"appid\",\"type\":\"String\",\"explain\":\"Ӧ�ñ�ţ���({\\\"name\\\":\\\"appid\\\",\\\"value\\\":\\\"appid\\\"})\",\"children\":[],\"required\":\"����\"},{\"id\":\"2F605F857A314BDBB6C31CC0A6E558C2\",\"name\":\"userId\",\"type\":\"String\",\"explain\":\"�޸ĵ�¼�˺ţ���({\\\"name\\\":\\\"userId\\\",\\\"value\\\":\\\"userId\\\"})\",\"children\":[],\"required\":\"����\"},{\"id\":\"B53F27593AF5229A7F717FDF475524BD\",\"name\":\"iidds\",\"type\":\"String\",\"explain\":\"��¼ID,���Ӣ�Ķ��ŷָ��({\\\"name\\\":\\\"iidds\\\",\\\"value\\\":\\\"iidds\\\"})\",\"children\":[],\"required\":\"����\"}]', '[{\"id\":\"E87795ECE4AE7860559646CC4FE9E363\",\"name\":\"code\",\"type\":\"Number\",\"explain\":\"��Ӧ��\",\"children\":[],\"required\":\"����\"},{\"id\":\"4C7776B4A2AA28D5D8C7749F13207C4F\",\"name\":\"msg\",\"type\":\"String\",\"explain\":\"��Ӧ˵��\",\"children\":[],\"required\":\"����\"},{\"id\":\"D94E71F67F1D992401FA8B8B74844481\",\"name\":\"data\",\"type\":\"Object\",\"explain\":\"��Ӧ����\",\"children\":[],\"required\":\"����\"}]', '{\r\n  \"code\": 200,\r\n  \"msg\": \"\",\r\n  \"data\": \"\"\r\n}', '{\r\n  \"code\": 500,\r\n  \"msg\": \"\",\r\n  \"data\": \"\"\r\n}', 0, '2022-07-18 17:55:02', '������');
INSERT INTO `ff_apaas_open_api`(`iidd`, `name`, `group_id`, `group_name`, `url`, `method`, `context_type`, `body`, `response`, `success_examples`, `fail_examples`, `sort_id`, `update_time`, `create_person`) VALUES ('ABBAE00027DF4970B6340BE4DD0E4930', '��������-����', 'DD2849C5028B44A7A08E0972A29D552C', '����Ӧ��', 'pub/saveBasics', 2, 3, '[{\"id\":\"1C1E5044FD02A93377962F1976FC1F31\",\"name\":\"appid\",\"type\":\"String\",\"explain\":\"Ӧ��ID����({\\\"name\\\":\\\"appid\\\",\\\"value\\\":\\\"appid\\\"})\",\"children\":[],\"required\":\"����\"},{\"id\":\"2A13307CC5FC138FA55093AC71CAED0F\",\"name\":\"userId\",\"type\":\"String\",\"explain\":\"�����˵�¼�˺ţ���({\\\"name\\\":\\\"userId\\\",\\\"value\\\":\\\"userId\\\"})\",\"children\":[],\"required\":\"����\"},{\"id\":\"75CD59012F362D3CF08BE005466454B3\",\"name\":\"data\",\"type\":\"Object\",\"explain\":\"ҵ������(JSON�ַ���)\",\"children\":[],\"required\":\"����\"}]', '[{\"id\":\"BA74C5D2497F5CA8BF84C247994D214F\",\"name\":\"code\",\"type\":\"Number\",\"explain\":\"��Ӧ��\",\"children\":[],\"required\":\"����\"},{\"id\":\"59E4223E5A3ABB2574DB49C2A20E090B\",\"name\":\"msg\",\"type\":\"String\",\"explain\":\"��Ӧ˵��\",\"children\":[],\"required\":\"����\"},{\"id\":\"25C35852E5C0B369F8540B338996D245\",\"name\":\"data\",\"type\":\"Object\",\"explain\":\"��Ӧ����\",\"children\":[],\"required\":\"����\"}]', '{\r\n  \"code\": 200,\r\n  \"msg\": \"\",\r\n  \"data\": \"\"\r\n}', '{\r\n  \"code\": 500,\r\n  \"msg\": \"\",\r\n  \"data\": \"�������ڲ�����\"\r\n}', 0, '2022-07-18 17:55:02', '������');
INSERT INTO `ff_apaas_open_api`(`iidd`, `name`, `group_id`, `group_name`, `url`, `method`, `context_type`, `body`, `response`, `success_examples`, `fail_examples`, `sort_id`, `update_time`, `create_person`) VALUES ('AFF83C3AFACA42779225BBE6C75070B7', '��������-����', 'DD2849C5028B44A7A08E0972A29D552C', '����Ӧ��', 'pub/detailBasic', 2, 3, '[{\"id\":\"A0C83DD4E7CCE22FA497AEDFD5B9F5F6\",\"name\":\"appid\",\"type\":\"String\",\"explain\":\"Ӧ��ID����({\\\"name\\\":\\\"appid\\\",\\\"value\\\":\\\"appid\\\"})\",\"children\":[],\"required\":\"����\"},{\"id\":\"4ADB7C0E119DCA11B9C2542F0AABD7B7\",\"name\":\"iidds\",\"type\":\"String\",\"explain\":\"����ID����({\\\"name\\\":\\\"iidds\\\",\\\"value\\\":\\\"iidds\\\"})\",\"children\":[],\"required\":\"����\"}]', '[{\"id\":\"B6160C6D2B1014ACF90EE91C9331A188\",\"name\":\"code\",\"type\":\"Number\",\"explain\":\"��Ӧ��\",\"children\":[],\"required\":\"����\"},{\"id\":\"7D7BEA3ECAE5ADD4EE2F859192D64B4C\",\"name\":\"msg\",\"type\":\"String\",\"explain\":\"��Ӧ˵��\",\"children\":[],\"required\":\"����\"},{\"id\":\"48E650C8D4B0CF1E00EBD4B76DAFA702\",\"name\":\"data\",\"type\":\"Object\",\"explain\":\"��Ӧ����\",\"children\":[],\"required\":\"����\"}]', '{\r\n  \"code\": 200,\r\n  \"msg\": \"\",\r\n  \"data\": \"\"\r\n}', '{\r\n  \"code\": 200,\r\n  \"msg\": \"\",\r\n  \"data\": \"\"\r\n}', 0, '2022-07-18 17:55:02', '������');
INSERT INTO `ff_apaas_open_api`(`iidd`, `name`, `group_id`, `group_name`, `url`, `method`, `context_type`, `body`, `response`, `success_examples`, `fail_examples`, `sort_id`, `update_time`, `create_person`) VALUES ('1BE64A11E01345F4B1AE033FCD576CC7', '����Ӧ��-ɾ��', 'EA6D284FBAFF430DA9F945ADE74CFA8D', '���̷���', 'pub/deletedProc', 2, 3, '[{\"id\":\"D3A0CA120E000B8E890B51B695EE0149\",\"name\":\"userId\",\"type\":\"String\",\"explain\":\"�����˵�¼�˺ţ���({\\\"name\\\":\\\"userId\\\",\\\"value\\\":\\\"userId\\\"})\",\"children\":[],\"required\":\"����\"},{\"id\":\"9E27E73A1CD4580D601E41CFA0B86638\",\"name\":\"flowIds\",\"type\":\"String\",\"explain\":\"����ID�����Ӣ�Ķ��ŷָ��({\\\"name\\\":\\\"flowIds\\\",\\\"value\\\":\\\"flowIds\\\"})\",\"children\":[],\"required\":\"����\"},{\"id\":\"461894D1C33469764685B7A1762FFCF9\",\"name\":\"delRelease\",\"type\":\"String\",\"explain\":\"ɾ��ԭ�򣬻�({\\\"name\\\":\\\"delRelease\\\",\\\"value\\\":\\\"delRelease\\\"})\",\"children\":[],\"required\":\"�Ǳ���\"}]', '[{\"id\":\"D04B60D26F78601736A701BD768BDA5F\",\"name\":\"code\",\"type\":\"Number\",\"explain\":\"��Ӧ��\",\"children\":[],\"required\":\"����\"},{\"id\":\"FA4AA1162D90B0B8323107540C48E945\",\"name\":\"msg\",\"type\":\"String\",\"explain\":\"��Ӧ˵��\",\"children\":[],\"required\":\"����\"},{\"id\":\"493DE16DB3976DD6D189A65FCD4596EC\",\"name\":\"data\",\"type\":\"Object\",\"explain\":\"��Ӧ����\",\"children\":[],\"required\":\"����\"}]', '{\r\n  \"code\": 200,\r\n  \"msg\": \"\",\r\n  \"data\": \"\"\r\n}', '{\r\n  \"code\": 200,\r\n  \"msg\": \"\",\r\n  \"data\": \"\"\r\n}', 0, '2022-07-18 17:55:02', '������');
INSERT INTO `ff_apaas_open_api`(`iidd`, `name`, `group_id`, `group_name`, `url`, `method`, `context_type`, `body`, `response`, `success_examples`, `fail_examples`, `sort_id`, `update_time`, `create_person`) VALUES ('5479888D89D145EC8032BC7E5049D6C0', '����Ӧ��-����', 'EA6D284FBAFF430DA9F945ADE74CFA8D', '���̷���', 'pub/detailProc', 2, 3, '[{\"id\":\"DF974A6F91F8CDE4CC1CF90CE85AEC30\",\"name\":\"flowIds\",\"type\":\"String\",\"explain\":\"����ID��������ŷָ��({\\\"name\\\":\\\"flowIds\\\",\\\"value\\\":\\\"flowIds\\\"})\",\"children\":[],\"required\":\"����\"}]', '[{\"id\":\"2BCB6561DBFAB30C069665C960B263C4\",\"name\":\"code\",\"type\":\"Number\",\"explain\":\"��Ӧ��\",\"children\":[],\"required\":\"����\"},{\"id\":\"EDF987CEE4F065BE0B8422FB57BE17DE\",\"name\":\"msg\",\"type\":\"String\",\"explain\":\"��Ӧ˵��\",\"children\":[],\"required\":\"����\"},{\"id\":\"CDAE2299DC50EF26DB39D64AF1FB44FB\",\"name\":\"data\",\"type\":\"Object\",\"explain\":\"��Ӧ����\",\"children\":[],\"required\":\"����\"}]', '{\r\n  \"code\": 200,\r\n  \"msg\": \"\",\r\n  \"data\": \"\"\r\n}', '{\r\n  \"code\": 200,\r\n  \"msg\": \"\",\r\n  \"data\": \"\"\r\n}', 0, '2022-07-18 17:55:02', '������');
INSERT INTO `ff_apaas_open_api`(`iidd`, `name`, `group_id`, `group_name`, `url`, `method`, `context_type`, `body`, `response`, `success_examples`, `fail_examples`, `sort_id`, `update_time`, `create_person`) VALUES ('6680F4C6BEEF4CDCB6E487C67B3F5D5D', '����Ӧ��-����', 'EA6D284FBAFF430DA9F945ADE74CFA8D', '���̷���', 'pub/completeProc', 2, 3, '[{\"id\":\"F29A0FB2AAC8546A48277E194FA4BD9D\",\"name\":\"flowId\",\"type\":\"String\",\"explain\":\"����ID����({\\\"name\\\":\\\"flowid\\\",\\\"value\\\":\\\"flowid\\\"})\",\"children\":[],\"required\":\"����\"},{\"id\":\"8DDDA9DE79A095046B35787E59EA15B4\",\"name\":\"userId\",\"type\":\"String\",\"explain\":\"�����˵�¼�˺ţ���({\\\"name\\\":\\\"userId\\\",\\\"value\\\":\\\"userId\\\"})\",\"children\":[],\"required\":\"����\"},{\"id\":\"23A3FE631531870FFFE754E005356F93\",\"name\":\"data\",\"type\":\"Object\",\"explain\":\"ҵ������(JOSN�ַ���)\",\"children\":[],\"required\":\"����\"},{\"id\":\"5D11413E623C2D76F7960FF0B2988F48\",\"name\":\"fileBase64\",\"type\":\"Object\",\"explain\":\"[{\\\"name\\\":\\\"������.jpg\\\",\\\"value\\\":\\\"base64����\\\"},{\\\"name\\\":\\\"img103.png\\\",\\\"value\\\":\\\"base64����\\\"}]\",\"children\":[],\"required\":\"�Ǳ���\"}]', '[{\"id\":\"33D9314D38D14701E658AAFE90898FBE\",\"name\":\"code\",\"type\":\"Number\",\"explain\":\"��Ӧ��\",\"children\":[],\"required\":\"����\"},{\"id\":\"F0D4C304BC723D8B8E4A1BF7576964FF\",\"name\":\"msg\",\"type\":\"String\",\"explain\":\"��Ӧ˵��\",\"children\":[],\"required\":\"����\"},{\"id\":\"43B250187324C04CA5ACE699A7F51B15\",\"name\":\"data\",\"type\":\"Object\",\"explain\":\"��Ӧ����\",\"children\":[],\"required\":\"����\"}]', '{\r\n  \"code\": 200,\r\n  \"msg\": \"\",\r\n  \"data\": \"\"\r\n}', '{\r\n  \"code\": 200,\r\n  \"msg\": \"\",\r\n  \"data\": \"\"\r\n}', 0, '2022-07-18 17:55:02', '������');
INSERT INTO `ff_apaas_open_api`(`iidd`, `name`, `group_id`, `group_name`, `url`, `method`, `context_type`, `body`, `response`, `success_examples`, `fail_examples`, `sort_id`, `update_time`, `create_person`) VALUES ('976AE1F624594FC494FFFA4AFB40B8CA', '����Ӧ��-����', 'EA6D284FBAFF430DA9F945ADE74CFA8D', '���̷���', 'pub/startProc', 2, 3, '[{\"id\":\"E959CA7D27B3CB7179AB776D74995465\",\"name\":\"flowModelId\",\"type\":\"String\",\"explain\":\"����ģ�ͣ�ID��({\\\"name\\\":\\\"flowModelId\\\",\\\"value\\\":\\\"flowModelId\\\"})\",\"children\":[],\"required\":\"����\"},{\"id\":\"E2C6C141C4ABBA3ECDFFDC09A35E601D\",\"name\":\"userId\",\"type\":\"String\",\"explain\":\"�����˵�¼�˺ţ���({\\\"name\\\":\\\"userId\\\",\\\"value\\\":\\\"userId\\\"})\",\"children\":[],\"required\":\"����\"},{\"id\":\"CBCFA83F8EC0FA7381212A698359FA13\",\"name\":\"data\",\"type\":\"Object\",\"explain\":\"ҵ�����(JSON�ַ���)\",\"children\":[],\"required\":\"����\"},{\"id\":\"E050333F4077078485AA5CBB79DB8D4C\",\"name\":\"fileBase64\",\"type\":\"Object\",\"explain\":\"[{\\\"name\\\":\\\"������.jpg\\\",\\\"value\\\":\\\"base64����\\\"},{\\\"name\\\":\\\"img103.png\\\",\\\"value\\\":\\\"base64����\\\"}]\",\"children\":[],\"required\":\"�Ǳ���\"}]', '[{\"id\":\"4283D53E8D44C05EF5C21CB6BC2C317B\",\"name\":\"code\",\"type\":\"Number\",\"explain\":\"��Ӧ��\",\"children\":[],\"required\":\"����\"},{\"id\":\"BB3DCDDF45C93B5A84FF4BE121FFFEAF\",\"name\":\"msg\",\"type\":\"String\",\"explain\":\"��Ӧ��Ϣ\",\"children\":[],\"required\":\"����\"},{\"id\":\"525BFE5947F771A4F0893B190E8E1309\",\"name\":\"data\",\"type\":\"Object\",\"explain\":\"��Ӧ����\",\"children\":[],\"required\":\"����\"}]', '{\r\n    \"code\": 200,\r\n    \"msg\": \"�����ɹ�\",\r\n    \"data\": {\r\n        \"flowNo\": \"WTGDXXB2022060028\",\r\n        \"flowId\": \"9688A3C1B5A9442E9531863D2D84F590\"\r\n    }\r\n}', '{\r\n  \"code\": 200,\r\n  \"msg\": \"\",\r\n  \"data\": \"\"\r\n}', 0, '2022-07-18 17:55:02', '������');
INSERT INTO `ff_apaas_open_api`(`iidd`, `name`, `group_id`, `group_name`, `url`, `method`, `context_type`, `body`, `response`, `success_examples`, `fail_examples`, `sort_id`, `update_time`, `create_person`) VALUES ('D69681B88427464BA48057D391E76EA1', '����Ӧ��-�޸�', 'EA6D284FBAFF430DA9F945ADE74CFA8D', '���̷���', 'pub/modifyingFormData', 2, 3, '[{\"id\":\"ED1C81684FB0A912A0BC858D23C35FE8\",\"name\":\"appid\",\"explain\":\"Ӧ��ID����({\\\"name\\\":\\\"appid\\\",\\\"value\\\":\\\"appid\\\"})\",\"type\":\"String\",\"required\":\"����\",\"children\":[]},{\"id\":\"3B028E67E3C701AD2CA493376E93BCA1\",\"name\":\"userId\",\"explain\":\"��¼�˺ţ���({\\\"name\\\":\\\"userId\\\",\\\"value\\\":\\\"userId\\\"})\",\"type\":\"String\",\"required\":\"����\",\"children\":[]},{\"id\":\"4B4EB514A4CDBDC95F434429A10F509F\",\"name\":\"id\",\"explain\":\"�޸ļ�¼����id(flowid)����({\\\"name\\\":\\\"id\\\",\\\"value\\\":\\\"id\\\"})\",\"type\":\"String\",\"required\":\"����\",\"children\":[]},{\"id\":\"37ABF573171C061C582EFB0115DB1A18\",\"name\":\"body\",\"explain\":\"[{\\\"fieldname\\\":\\\"6227F42445151407A63AD817D08A6BC3\\\",\\\"updateEnd\\\":[{\\\"name\\\":\\\"1133xx\\\",\\\"value\\\":\\\"1133xx\\\"}]}]\",\"type\":\"Object\",\"required\":\"����\",\"children\":[]}]', '[{\"id\":\"77FBA64AD2D0CE64C2111F7698E5E7B8\",\"name\":\"code\",\"explain\":\"��Ӧ��\",\"type\":\"String\",\"required\":\"����\",\"children\":[]},{\"id\":\"A79ACB7759C5586052DEB7A08F7536E8\",\"name\":\"msg\",\"explain\":\"��Ӧ˵��\",\"type\":\"String\",\"required\":\"����\",\"children\":[]},{\"id\":\"86101A799A0620E7D773280100A3032C\",\"name\":\"data\",\"explain\":\"��Ӧ����\",\"type\":\"Object\",\"required\":\"����\",\"children\":[]}]', '{\n  \"code\": 200,\n  \"msg\": \"\",\n  \"data\": \"\"\n}', '{\n  \"code\": 401,\n  \"msg\": \"������ʣ�/ffapaas/pub/listBasic����֤ʧ�ܣ��޷�����ϵͳ��Դ\"\n}', 0, '2023-03-23 18:09:37', '������');
INSERT INTO `ff_apaas_open_api`(`iidd`, `name`, `group_id`, `group_name`, `url`, `method`, `context_type`, `body`, `response`, `success_examples`, `fail_examples`, `sort_id`, `update_time`, `create_person`) VALUES ('FC6B4D9A7669472AA6BA15B702328C1D', '����Ӧ��-�б�', 'EA6D284FBAFF430DA9F945ADE74CFA8D', '���̷���', 'pub/listBasic', 2, 3, '[{\"id\":\"3E82F2284D81877C072BD6F349511D12\",\"name\":\"appid\",\"explain\":\"Ӧ��ID����({\\\"name\\\":\\\"appid\\\",\\\"value\\\":\\\"appid\\\"})\",\"type\":\"String\",\"required\":\"����\",\"children\":[]},{\"id\":\"5FAC062D9FAAA635D710C7E31FB5B858\",\"name\":\"userId\",\"explain\":\"��¼�˺ţ���({\\\"name\\\":\\\"userId\\\",\\\"value\\\":\\\"userId\\\"})\",\"type\":\"String\",\"required\":\"����\",\"children\":[]},{\"id\":\"E6C02CE1F51C5E9D73CE60C11B3DC9D7\",\"name\":\"pageNum\",\"explain\":\"ҳ�룬������ѯ����\",\"type\":\"Number\",\"required\":\"����\",\"children\":[]},{\"id\":\"DDED86B09ADB9661BF9CC8F67854E7EC\",\"name\":\"pageSize\",\"explain\":\"ÿҳ��С��������ѯ����\",\"type\":\"Number\",\"required\":\"����\",\"children\":[]},{\"id\":\"B4F4D186C7E73720E65341E1AFDA20C6\",\"name\":\"queryConditions\",\"explain\":\"��ѯ����,[{\\\"column\\\":\\\"E1CC30923E5040E7EA247A0066B85905\\\",\\\"queryType\\\":\\\"like\\\",\\\"value\\\":[{\\\"name\\\":\\\"Ӧ�ù�������\\\",\\\"value\\\":\\\"Ӧ�ù�������\\\"}]}]\",\"type\":\"Object\",\"required\":\"����\",\"children\":[]}]', '[{\"id\":\"9C3BABD0AB6F5F583A888CC0093A0FF8\",\"name\":\"code\",\"explain\":\"��Ӧ��\",\"type\":\"String\",\"required\":\"����\",\"children\":[]},{\"id\":\"C281663A7A8EDCF7BD7B9C4F471D1433\",\"name\":\"msg\",\"explain\":\"��Ӧ˵��\",\"type\":\"String\",\"required\":\"����\",\"children\":[]},{\"id\":\"79E11342F86A0E0211CD4E7D2C3E365B\",\"name\":\"data\",\"explain\":\"��Ӧ����\",\"type\":\"Object\",\"required\":\"����\",\"children\":[]}]', '{\n  \"total\": 1,\n  \"rows\": [\n    {\n      \"refFormid\": \"D4BE7D56324042EFAE786E380A5BDDF4\",\n      \"updateUserid\": \"04BBE297F27149B08CD3DFE64ADC711A\",\n      \"DE6696C3920427CDEC10FBC76A787E6E\": \"[{\\\"name\\\":\\\"��Ŀ��Ϣά��\\\",\\\"value\\\":\\\"��Ŀ��Ϣά��\\\"}]\",\n      \"refDeptid\": \"3435840D6BB648228100C54175439012\",\n      \"createDeptname\": \"�����зǷ���Ϣ�������޹�˾\",\n      \"createOrgid\": \"3435840D6BB648228100C54175439012\",\n      \"iidd\": \"CACEE62DFDF74B00941BB3D2F02E69DC\",\n      \"createUsername\": \"������\",\n      \"refProjectid\": \"A03769DA38284D138A1356DC93C2F9C9\",\n      \"refAppid\": \"8F3F2AE6F2D34FBAB14A0BBA3E7C3721\",\n      \"createDeptid\": \"3435840D6BB648228100C54175439012\",\n      \"createUserid\": \"04BBE297F27149B08CD3DFE64ADC711A\",\n      \"updateTime\": \"2023-03-23 14:50:32\",\n      \"createOrgname\": \"�����зǷ���Ϣ�������޹�˾\",\n      \"ref_projectid\": \"A03769DA38284D138A1356DC93C2F9C9\",\n      \"deleted\": 0,\n      \"createTime\": \"2023-03-23 14:50:29\",\n      \"updateUsername\": \"������\",\n      \"contentjson\": \"{\\\"DE6696C3920427CDEC10FBC76A787E6E\\\":[{\\\"name\\\":\\\"��Ŀ��Ϣά��\\\",\\\"value\\\":\\\"��Ŀ��Ϣά��\\\"}],\\\"ref_projectid\\\":\\\"A03769DA38284D138A1356DC93C2F9C9\\\"}\"\n    }\n  ],\n  \"code\": 200\n}', '\n{\n  \"code\": 401,\n  \"msg\": \"������ʣ�/ffapaas/pub/listBasic����֤ʧ�ܣ��޷�����ϵͳ��Դ\"\n}', 0, '2023-03-23 16:11:25', '������');

-- �ӿڰ������ģ�ͳһ�ӿ�����
UPDATE ff_apaas_open_api a set a.`name` = REPLACE(a.`name`, '��������-', '����');
UPDATE ff_apaas_open_api a set a.`name` = REPLACE(a.`name`, '����Ӧ��-', '����');
UPDATE ff_apaas_open_api a set a.`name` = '��������' where a.`name` = '���ݷ���';
UPDATE ff_apaas_open_api a set a.`name` = '��������' where a.`name` = '��������';

-- ---------------------------------------------------------
-- ��ʼ��Ӧ��Ĭ�ϲ�����
-- ---------------------------------------------------------

insert into ff_apaas_es_app_actiontype_default values('A3FADADD52F54C899BFE08395788C30A',0,'�鿴','View',0);
insert into ff_apaas_es_app_actiontype_default values('D4D99B43E7DA4D98BBF1D1F6DD9B638D',0,'���','Add',1);
insert into ff_apaas_es_app_actiontype_default values('9BA36B78FB604A89AB55230311E547EE',0,'�޸�','Edit',2);
insert into ff_apaas_es_app_actiontype_default values('C21909DAC994401F8E91CE5B2D07C1DC',0,'ɾ��','Delete',3);
insert into ff_apaas_es_app_actiontype_default values('50E42D343F71463DBC8439E48A16CA56',0,'����','ExlOut',4);
insert into ff_apaas_es_app_actiontype_default values('BDFAF31031CC11EE81AA000C2948FADF',0,'����','Import',5);
insert into ff_apaas_es_app_actiontype_default values('BDFAF31031CC11EE81AA000C294PRINT',0,'��ӡ','Print',6);

insert into ff_apaas_es_app_actiontype_default values('B0F416664AF34A17AAFF22D5A4C4C9BB',1,'�鿴','View',0);
insert into ff_apaas_es_app_actiontype_default values('5562E6BB476D45DA8D43C0675C12C01A',1,'���','Add',1);
insert into ff_apaas_es_app_actiontype_default values('A2C88FA1E01C4F9B8C1D90506C525260',1,'�޸�','Edit',2);
insert into ff_apaas_es_app_actiontype_default values('7521CC9C15F54CC88188BF908436E718',1,'ɾ��','Delete',3);
insert into ff_apaas_es_app_actiontype_default values('8E2A69E7CA9047949B2A7046B7A09D14',1,'����','ExlOut',4);
insert into ff_apaas_es_app_actiontype_default values('C599854F31CC11EE81AA000C2948FADF',1,'����','Import',5);
insert into ff_apaas_es_app_actiontype_default values('C599854F31CC11EE81AA000C294PRINT',1,'��ӡ','Print',6);
insert into ff_apaas_es_app_actiontype_default values('FA4D1DD0A91311EEB8E4000C29CB1D9E',1,'Ӧ�ø���','AppOverview',7);

-- ---------------------------------------------------------
-- ��ʼ���ĵ�����
-- ---------------------------------------------------------
INSERT INTO ff_apaas_t_business_right_item (iidd, business_code, right_type_code, right_item_code, right_item_name, sordid, update_time, update_userid) VALUES ('C9F7DB76D08B410EB96CEAE93FEF7001', 'doc_t_catalog_info', 0, 'NewFolder', '�½���Ŀ¼', 1, '2021-11-12 11:39:29', 'F1C8933146E746BDBC3C0BF4E4CBDE6C');
INSERT INTO ff_apaas_t_business_right_item (iidd, business_code, right_type_code, right_item_code, right_item_name, sordid, update_time, update_userid) VALUES ('C9F7DB76D08B410EB96CEAE93FEF7002', 'doc_t_catalog_info', 0, 'DeleteFolder', 'ɾ����Ŀ¼', 2, '2021-11-12 11:39:29', 'F1C8933146E746BDBC3C0BF4E4CBDE6C');
INSERT INTO ff_apaas_t_business_right_item (iidd, business_code, right_type_code, right_item_code, right_item_name, sordid, update_time, update_userid) VALUES ('C9F7DB76D08B410EB96CEAE93FEF7003', 'doc_t_catalog_info', 0, 'Upload', '�ϴ��ļ�', 3, '2021-11-12 11:39:29', 'F1C8933146E746BDBC3C0BF4E4CBDE6C');
INSERT INTO ff_apaas_t_business_right_item (iidd, business_code, right_type_code, right_item_code, right_item_name, sordid, update_time, update_userid) VALUES ('C9F7DB76D08B410EB96CEAE93FEF7004', 'doc_t_catalog_info', 0, 'DeleteFile', 'ɾ���ļ�', 4, '2021-11-12 11:39:29', 'F1C8933146E746BDBC3C0BF4E4CBDE6C');
INSERT INTO ff_apaas_t_business_right_item (iidd, business_code, right_type_code, right_item_code, right_item_name, sordid, update_time, update_userid) VALUES ('C9F7DB76D08B410EB96CEAE93FEF7005', 'doc_t_catalog_info', 0, 'ManagerWhitelist', '���������', 5, '2021-11-12 11:39:29', 'F1C8933146E746BDBC3C0BF4E4CBDE6C');
INSERT INTO ff_apaas_t_business_right_item (iidd, business_code, right_type_code, right_item_code, right_item_name, sordid, update_time, update_userid) VALUES ('E9F7DB76D08B410EB96CEAE93FEF7001', 'doc_t_catalog_info', 1, 'View', '�鿴', 1, '2021-11-12 11:39:29', 'F1C8933146E746BDBC3C0BF4E4CBDE6C');
INSERT INTO ff_apaas_t_business_right_item (iidd, business_code, right_type_code, right_item_code, right_item_name, sordid, update_time, update_userid) VALUES ('E9F7DB76D08B410EB96CEAE93FEF7003', 'doc_t_catalog_info', 1, 'Download', '����', 2, '2021-11-12 11:39:29', 'F1C8933146E746BDBC3C0BF4E4CBDE6C');

-- ---------------------------------------------------------
-- ��ʼ������֪ͨ��ʱ����
-- ---------------------------------------------------------
INSERT INTO ff_apaas_sys_job (job_id, job_name, job_group, invoke_target, cron_expression, misfire_policy,
                                     concurrent, status, create_by, create_time, update_by, update_time, remark,
                                     ref_deptid)
VALUES ('610295454243434099', 'ȫ���̳�ʱ���', 'DEFAULT', 'ffTask.completeFlowNotice()',
        '0 0/5 * * * ? *', 3, 1, 0, '����', sysdate(), NULL, null, NULL,NULL);


INSERT INTO ff_apaas_sys_job (job_id, job_name, job_group, invoke_target, cron_expression, misfire_policy,
                              concurrent, status, create_by, create_time, update_by, update_time, remark,
                              ref_deptid)
VALUES ('620295454243434100', '���̻��ڳ�ʱ���', 'DEFAULT', 'ffTask.singleNodeFlowNotice()',
        '0 0/5 * * * ? *', 3, 1, 0, '����', sysdate(), NULL, null, NULL,NULL);

INSERT INTO FF_APAAS_T_TIME_PROCESS (IIDD, TASK_TYPE, TASK_NAME, EXECUTE_TYPE, TARGET_FLOW_MODEL_ID, APPID, INVOKE_TARGET, ALLOTTYPE, ALLOTOBJECTID, DATA_TEMPLATE_CONFIG, REMARK, CREATE_ID, CREATE_NAME, CREATE_TIME, REF_DEPT_ID, JOB_ID, REF_PROJECTID, TYPES) VALUES ('186250F610154B8CA2C66F1E8ACCE2AA', 1, 'ȫ����֪ͨ��ʱ����', '2', null, null, 'ffTask.completeFlowNotice()', null, null, null, null, 'F1DD5C21715A4DA7B873AD98BC5D1494', 'admin', '2021-11-18 09:20:15', null, '610295454243434099', null, 0);
INSERT INTO FF_APAAS_T_TIME_PROCESS (IIDD, TASK_TYPE, TASK_NAME, EXECUTE_TYPE, TARGET_FLOW_MODEL_ID, APPID, INVOKE_TARGET, ALLOTTYPE, ALLOTOBJECTID, DATA_TEMPLATE_CONFIG, REMARK, CREATE_ID, CREATE_NAME, CREATE_TIME, REF_DEPT_ID, JOB_ID, REF_PROJECTID, TYPES) VALUES ('286250F610154B8CA2C66F1E8ACCE2BB', 1, '���ڵ�����֪ͨ', '2', null, null, 'ffTask.singleNodeFlowNotice()', null, null, null, null, 'F1DD5C21715A4DA7B873AD98BC5D1494', 'admin', '2021-11-18 09:20:16', null, '620295454243434100', null, 0);
INSERT INTO FF_APAAS_T_LOCAL_METHOD (IIDD, CHINESE_NAME, METHOD_NAME, SORT, CREATE_TIME, REF_DEPT_ID, REF_PROJECTID, TYPES) VALUES ('10CB7C37D1AD8DAB20913FFCE60F3D11', 'ȫ���̳�ʱ���', 'ffTask.completeFlowNotice()', -2, '2021-11-18 09:20:15', null, null, 0);
INSERT INTO FF_APAAS_T_LOCAL_METHOD (IIDD, CHINESE_NAME, METHOD_NAME, SORT, CREATE_TIME, REF_DEPT_ID, REF_PROJECTID, TYPES) VALUES ('20CB7C37D1AD8DAB20913FFCE60F3D22', '���̻��ڳ�ʱ���', 'ffTask.singleNodeFlowNotice()', -1, '2021-11-18 09:20:15', null, null, 0);

-- ---------------------------------------------------------
-- ��ʼ��ϵͳ���ò���
-- ---------------------------------------------------------
INSERT INTO ff_apaas_sys_config (config_id, config_name, config_key, config_value, config_type, create_by, create_time,
                                 update_by, update_time, remark, group_name,types)
VALUES ('FC67C33AEB8C4CBAB81AC39CC471EB03', 'Ĭ������', 'DefaultSubject', '������','Y', null, sysdate(), NULL, NULL, NULL, 'ϵͳ',0);

INSERT INTO ff_apaas_sys_config (config_id, config_name, config_key, config_value, config_type, create_by, create_time, update_by, update_time, remark, group_name, ref_dept_id, ref_projectid, types) VALUES ('XNXN2FDA175845E392977EE55EB6BB99', '�Զ���Ӧ�������б���֪ͨ��ʽ', 'importerNoticeMethod', '1', 'Y', null, sysdate(), null, sysdate(), '�Զ���Ӧ�����ݵ������֪ͨ��ʽ����:
0(��Ѷ�ƶ���)
1(�ʼ�)
2(΢����ҵ��)
3(�����ƶ���)
4(����)
5(����)
6(΢�Ź��ں�)
7(΢��С����)
8(����)
9(ESB����)', 'ϵͳ', null, null, 0);

INSERT INTO ff_apaas_sys_config (config_id, config_name, config_key, config_value, config_type, create_by, create_time,
                                 update_by, update_time, remark, group_name,types)
VALUES ('96C9CE3E457011EE81AA000C2948FADF', 'PC������', 'PCUrl', 'http://192.168.0.86','Y', null, sysdate(), NULL, NULL, NULL, 'ϵͳ',0);

INSERT INTO ff_apaas_sys_config (config_id, config_name, config_key, config_value, config_type, create_by, create_time,
                                 update_by, update_time, remark, group_name,types)
VALUES ('019D2D96F06641C9BB990F5982F04176', '�ƶ�������', 'MobileUrl', 'http://192.168.0.86','Y', null, sysdate(), NULL, NULL, NULL, 'ϵͳ',0);

INSERT INTO ff_apaas_sys_config (config_id, config_name, config_key, config_value, config_type, create_by, create_time,
                                 update_by, update_time, remark, group_name, ref_dept_id, ref_projectid, types)
VALUES ('AABB2FDA175845E392977EE55EB6CC88', '�ն˵�¼', 'soloLogin', 'true', 'Y', null, '2022-08-17 16:03:34', null, null,
        '�Ƿ������˻����ն�ͬʱ��¼��true���� false������', 'ϵͳ', null, null, 0);

INSERT INTO ff_apaas_sys_config (config_id, config_name, config_key, config_value, config_type, create_by, create_time,
                                 update_by, update_time, remark, group_name,types)
VALUES ('019D2D96F06641C9BB990F5982F04177', '�����б�Ĭ�Ϸ�ҳ��', 'defaultPageSize', '15','Y', null, sysdate(), NULL, NULL, '����ϵͳ���������б��Ĭ�Ϸ�ҳ��', 'ϵͳ',0);

INSERT INTO ff_apaas_sys_config (config_id, config_name, config_key, config_value, config_type, create_by, create_time,
                                 update_by, update_time, remark, group_name,types)
VALUES ('019D2D96F06641C9BB990F5982F04178', 'Ĭ��չ���������ҳǩ', 'defaultShowFlowProcess', '��','Y', null, sysdate(), NULL, NULL, '������������ҳ��Ĭ���Ƿ�չ���������ҳǩ', 'ϵͳ',0);

INSERT INTO ff_apaas_sys_config (config_id, config_name, config_key, config_value, config_type, create_by, create_time, update_by, update_time, remark, group_name, ref_dept_id, ref_projectid, types)
VALUES ('5B3D2FDA175845E392977EE55EB6A653', '��������', 'allowed_extension', 'bmp,gif,jpg,jpeg,png,doc,docx,xls,xlsx,ppt,pptx,html,htm,txt,rar,zip,gz,bz2,pdf,ico', 'Y', null, sysdate(), null, null, '�����ϴ��ĸ�������(Ӣ�Ķ��ŷָ�)', 'ϵͳ����', null, null, 0);

INSERT INTO ff_apaas_sys_config (config_id, config_name, config_key, config_value, config_type, create_by, create_time,
                                 update_by, update_time, remark, group_name,types)
VALUES ('2BE8EE39F7A511EE8A0F000C29CB1D9E', '�ٶȵ�ͼӦ��Key', 'map_baidu_key', '','Y', null, sysdate(), NULL, NULL, NULL, 'ϵͳ',0);
INSERT INTO ff_apaas_sys_config (config_id, config_name, config_key, config_value, config_type, create_by, create_time,
                                 update_by, update_time, remark, group_name,types)
VALUES ('7BC9585AF7A511EE8A0F000C29CB1D9E', '��Ѷ��ͼӦ��Key', 'map_tx_key', '','Y', null, sysdate(), NULL, NULL, NULL, 'ϵͳ',0);
INSERT INTO ff_apaas_sys_config (config_id, config_name, config_key, config_value, config_type, create_by, create_time,
                                 update_by, update_time, remark, group_name,types)
VALUES ('7F6B52C8F7A511EE8A0F000C29CB1D9E', '�ߵµ�ͼӦ��Key', 'map_gaode_key', '','Y', null, sysdate(), NULL, NULL, NULL, 'ϵͳ',0);
INSERT INTO ff_apaas_sys_config (config_id, config_name, config_key, config_value, config_type, create_by,
                                         create_time, update_by, update_time, remark, group_name, ref_dept_id,
                                         ref_projectid, types)
VALUES ('0B31B924FD514DF9BAC698B4B086715B', 'ͬ����������', 'syncDownloadLimit',
        '500', 'Y', '72306761D85B44C685F0617E74562E0E', '2023-08-02 12:22:14', null, null,
        'ͬ����������,δ������Ĭ��С�ڵ���500��', 'ϵͳ', null, null, 0);
INSERT INTO ff_apaas_sys_config (config_id, config_name, config_key, config_value, config_type, create_by,
                                         create_time, update_by, update_time, remark, group_name, ref_dept_id,
                                         ref_projectid, types)
VALUES ('9DFDD8B8B2AC11EFBC33000C29CB1D9E', '������¼��֤��', 'open_verify_code',
        'true', 'Y', null, sysdate(), NULL, NULL, NULL, 'ϵͳ',null, null,0);

INSERT INTO ff_apaas_sys_config (config_id, config_name, config_key, config_value, config_type, create_by, create_time,
                                 update_by, update_time, remark, group_name,types)
VALUES ('019D2D96F06641C9BB990F5982F02025', 'Ĭ����ʾ����Ӧ�ð�ť', 'default_show_create_app_button', '��','Y', null, sysdate(), NULL, NULL, 'Ĭ����ʾ����Ӧ�ð�ť', 'ϵͳ',0);

CREATE INDEX receiverid_deptid_projectid_isread_noticetype_one_noticetype_two ON ff_apaas_es_site_news (receiverid, ref_deptid, projectid, isread, noticetype_one, noticetype_two);
-- ---------------------------------------------------------
-- ��ʼ��֪ͨ��ʽ
-- ---------------------------------------------------------
INSERT INTO ff_apaas_t_notice_method(`method_id`, `method_name`, `is_show`) VALUES (0, '����(��Ѷ)', 1);
INSERT INTO ff_apaas_t_notice_method(`method_id`, `method_name`, `is_show`) VALUES (1, '�ʼ�', 1);
INSERT INTO ff_apaas_t_notice_method(`method_id`, `method_name`, `is_show`) VALUES (2, '΢����ҵ��', 1);
INSERT INTO ff_apaas_t_notice_method(`method_id`, `method_name`, `is_show`) VALUES (3, '����(������)', 1);
INSERT INTO ff_apaas_t_notice_method(`method_id`, `method_name`, `is_show`) VALUES (4, '����', 1);
INSERT INTO ff_apaas_t_notice_method(`method_id`, `method_name`, `is_show`) VALUES (5, '����', 1);
INSERT INTO ff_apaas_t_notice_method(`method_id`, `method_name`, `is_show`) VALUES (6, '���ں�', 1);
INSERT INTO ff_apaas_t_notice_method(`method_id`, `method_name`, `is_show`) VALUES (7, 'С����', 1);
INSERT INTO ff_apaas_t_notice_method(`method_id`, `method_name`, `is_show`) VALUES (8, '����', 1);
INSERT INTO ff_apaas_t_notice_method(`method_id`, `method_name`, `is_show`) VALUES (9, '����(ESB)', 1);
INSERT INTO ff_apaas_t_notice_method(`method_id`, `method_name`, `is_show`) VALUES (10, 'uni-push', 1);
INSERT INTO ff_apaas_t_notice_method(`method_id`, `method_name`, `is_show`) VALUES (11, '΢�ſ���ƽ̨', 1);

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
   catalog_id           varchar(50) not null comment '目录编号',
   catalog_name         varchar(200) not null comment '目录名称',
   parent_id            varchar(50) not null default '0' comment '父级编号',
   full_id              varchar(2000) not null comment '目录导航编号(格式:parent_id +,+ catalog_id)',
   classyear            int not null default 1 comment '目录层级',
   sortid               int not null default 1 comment '目录序号',
   doc_belong_type      int not null default 2 comment '目录归属分类(1-个人,2-非个人)',
   ref_deptid           varchar(50) not null comment '公司编号',
   create_id            varchar(50) comment '创建人ID',
   create_name          varchar(200) comment '创建人名称',
   create_deptid        varchar(50) comment '创建部门ID',
   create_deptname      varchar(200) comment '创建部门名称',
   create_orgid         varchar(50) comment '创建机构',
   create_time          datetime comment '创建时间',
   update_id            varchar(50) comment '更新人ID',
   update_name          varchar(200) comment '更新人名称',
   update_time          datetime comment '更新时间',
   deleted              int not null default 0 comment '是否删除(0-未删除,1-已删除)',
   primary key (catalog_id)
)
COMMENT '文档目录信息表';

alter table doc_t_catalog_info comment '文档目录信息表';

/*==============================================================*/
/* Table: doc_t_document_info                                   */
/*==============================================================*/
create table doc_t_document_info
(
   iidd                 varchar(50) not null comment '文档编号',
   doc_name             varchar(200) not null comment '文档名称',
   doc_size             bigint not null default 0 comment '文档大小',
   doc_path             varchar(200) not null comment '文件存储在minio的路径',
   preview_path         varchar(200) not null comment '预览PDF文件路径',
   doc_suffix           varchar(20) not null default 'unknown' comment '文档后缀(有的文件没有后缀，则使用unknow作为区分)',
   doc_catalog_id       varchar(50) not null default '0' comment '文档目录编号（没有目录的默认为0）',
   doc_belong_type      int(2) not null default 2 comment '文档归属分类(1-个人文档,2-非个人)',
   up_user_id           varchar(50) not null comment '上传用户编号',
   up_user_name         varchar(200) not null comment '上传用户名称',
   up_time              timestamp not null default CURRENT_TIMESTAMP comment '文档上传时间',
   deleted              int(1) not null default 0 comment '0:未删除，1:已删除',
   deleted_time         timestamp not null default CURRENT_TIMESTAMP comment '删除时间',
   ref_deptid           varchar(50) not null comment '公司编号',
   primary key (iidd)
);

alter table doc_t_document_info comment '文档信息表';

/*==============================================================*/
/* Table: doc_t_person_recycle                                  */
/*==============================================================*/
create table doc_t_person_recycle
(
   iidd                 varchar(50) not null comment '唯一编号',
   userid               varchar(50) not null comment '用户编号',
   doc_type             enum ('0', '1') not null default '0' comment '文件或目录, 0:目录,1:文件',
   doc_id               varchar(50) not null comment '文档编号或者目录编号',
   deleted_time         timestamp not null default CURRENT_TIMESTAMP comment '删除时间',
   doc_name             varchar(200) not null comment '文档或目录名称',
   primary key (iidd)
);

/*==============================================================*/
/* Table: doc_t_personal_document                               */
/*==============================================================*/
create table doc_t_personal_document
(
   iidd                 varchar(50) not null comment '唯一编号',
   userid               varchar(50) not null comment '用户编号',
   doc_id               varchar(50) not null comment '文档编号',
   deleted              int(1) not null comment '是否删除(0-未删除,1-已删除)',
   ref_deptid           varchar(50) not null comment '公司编号',
   primary key (iidd)
);

alter table doc_t_personal_document comment '个人文档信息表';

/*==============================================================*/
/* Table: doc_t_shared_info                                     */
/*==============================================================*/
create table doc_t_shared_info
(
   iidd                 varchar(50) not null comment '唯一编号',
   doc_iidd             varchar(50) not null comment '文档编号',
   shared_type          int(1) not null comment '共享类型(0-目录，1-文件)',
   batch_id             bigint not null comment '共享批次编号',
   shared_time          timestamp not null default CURRENT_TIMESTAMP comment '共享时间',
   shared_userid        varchar(50) not null comment '共享用户编号',
   shared_username      varchar(200) not null comment '共享用户名称',
   shared_receive_type  int(1) not null comment '共享接收对象类型(0-表示用户,1-表示用户组, 2-表示部门)',
   shared_receive_object_id varchar(50) not null comment '用户，用户组，部门编号',
   ref_deptid           varchar(50) not null comment '公司编号',
   root_node            int not null default 0 comment '0:非根目录,1:是根目录',
   primary key (iidd)
);

alter table doc_t_shared_info comment '文档分享信息表';

/*==============================================================*/
/* Table: doc_t_shared_with_me_skip                             */
/*==============================================================*/
create table doc_t_shared_with_me_skip
(
   iidd                 varchar(50) not null comment '主键ID',
   userid               varchar(50) not null comment '删除用户编号',
   shared_id            varchar(50) not null comment '分享记录的主键ID',
   primary key (iidd)
)
ENGINE = innodb DEFAULT CHARACTER SET = 'utf8' COMMENT '共享给我删除表';

/*==============================================================*/
/* Table: ff_apaas_app_oper_log                                 */
/*==============================================================*/
create table ff_apaas_app_oper_log
(
   oper_id              bigint(20) not null auto_increment comment '日志主键',
   oper_account         varchar(50) default '' comment '操作账号',
   oper_name            varchar(50) default '' comment '操作人员(页面显示)',
   oper_time            datetime comment '操作时间',
   belong_app           varchar(200) default '' comment '所属应用',
   business_type        int default 1 comment '业务类型（1新增 2修改 3删除）',
   oper_channel         int default 1 comment '操作渠道（1WEB站点 2微信公众号 3OPENAPI）',
   oper_ip              varchar(128) default '' comment '操作人IP',
   oper_desc            varchar(2000) default '' comment '操作描述',
   ref_deptid           varchar(50) comment '公司编号',
   dept_name            varchar(50) default '' comment '部门名称',
   ref_appid            varchar(50) comment '应用编号',
   app_type             int default 0 comment '业务类型（0基础资料 1流程应用）',
   log_type             int default 0 comment '日志类型（0数据日志 1附件日志）',
   oper_content         longtext default NULL comment '操作数据内容',
   content              text default NULL comment '存储内容',
   primary key (oper_id)
)
comment '应用操作日志记录表';

alter table ff_apaas_app_oper_log comment '应用操作日志记录表';

/*==============================================================*/
/* Table: ff_apaas_bulletin                                     */
/*==============================================================*/
create table ff_apaas_bulletin
(
   flowid               varchar(50) not null comment '流程id',
   flowmodelid          varchar(50) default NULL comment '流程模型id',
   nodemodelid          varchar(50) default NULL comment '环节模型id',
   flowno               varchar(200) default NULL comment '流程单号',
   create_userid        varchar(50) default NULL comment '创建人id',
   create_username      varchar(200) default NULL comment '创建人名称',
   create_deptid        varchar(50) default NULL comment '创建部门id',
   create_deptname      varchar(200) default NULL comment '创建部门名称',
   create_orgid         varchar(50) default NULL comment '创建机构id',
   create_orgname       varchar(200) default NULL comment '创建机构名称',
   create_time          datetime default NULL comment '创建时间',
   update_userid        varchar(50) default NULL comment '修改人id',
   update_username      varchar(200) default NULL comment '修改人名称',
   update_time          datetime default NULL comment '修改时间',
   ref_deptid           varchar(50) default NULL comment '关联公司id',
   ref_projectid        varchar(50) default NULL comment '所属项目id',
   deleted              int not null default '0' comment '是否删除',
   current_nodename     varchar(1000) default NULL comment '当前处理环节',
   current_hander       varchar(1000) default NULL comment '当前处理人',
   business_status      varchar(500) default NULL comment '业务状态',
   bulletin_type        tinyint not null comment '公告类型 (0:全部、1:运营商、2:公有云注册企业、3:指定范围)',
   title                varchar(500) not null comment '公告主题',
   content              text not null comment '公告内容',
   fixed_deptid         text comment '指定公司id,多个英文逗号分隔',
   deadline             datetime comment '通知内容有效截至时间',
   message_type         tinyint not null default 0 comment '消息类型(0:顺序消息,1:延迟消息,2:定时消息)',
   delay_time           INT comment '延迟多少秒',
   scheduled_time       datetime comment '定时发送具体时间',
   primary key (flowid)
)
engine = innodb
  default charset = utf8mb4
  collate = utf8mb4_0900_ai_ci
    comment ='发布公告记录表';

/*==============================================================*/
/* Table: ff_apaas_bulletin_record                              */
/*==============================================================*/
create table ff_apaas_bulletin_record
(
   iidd                 varchar(50) not null comment '主键',
   bulletin_id          varchar(50) not null comment '公告表id',
   userid               varchar(50) not null comment '需要通知的用户id',
   ref_deptid           varchar(50) not null comment '用户公司id',
   status               tinyint not null default 0 comment '消息状态 (0:未读,1:已读)',
   primary key (iidd)
)
engine = innodb
  default charset = utf8mb4
  collate = utf8mb4_0900_ai_ci
    comment ='公告通知记录表';

/*==============================================================*/
/* Table: ff_apaas_business_api                                 */
/*==============================================================*/
create table ff_apaas_business_api
(
   iidd                 varchar(50) not null comment '主键',
   name                 varchar(250) not null comment '接口名称',
   group_id             text not null comment '分组编号',
   group_name           varchar(500) not null comment '分组名称',
   url                  varchar(500) not null comment '请求地址后缀(/user/login)',
   method               int not null comment '请求方法(1:GET,2:POST)',
   sign                 int not null default 0 comment '是否验证签名(0: 否, 1: 是)',
   context_type         int not null comment '内容类型:(0: none, 1:application/x-www-form-urlencoded, 2: multipart/form-data, 3: application/json, 4: application/octet-stream)',
   body                 text comment '请求参数',
   response             text not null comment '响应参数',
   sort_id              int not null default 0 comment '排序值',
   create_time          datetime not null comment '创建时间',
   create_id            varchar(50) not null comment '创建人ID',
   create_person        varchar(50) not null comment '创建人名称',
   update_time          datetime not null comment '更新时间',
   update_id            varchar(50) not null comment '更新人ID',
   update_person        varchar(50) not null comment '更新人名称',
   ref_app_id           varchar(50) not null comment '应用编号',
   ref_app_name         varchar(500) not null comment '应用名称',
   ref_project_id       varchar(50) not null comment '项目编号',
   ref_dept_id          varchar(50) not null comment '公司编号',
   primary key (iidd)
)
COMMENT 'open api 表';

/*==============================================================*/
/* Table: ff_apaas_business_ref_app_config                      */
/*==============================================================*/
create table ff_apaas_business_ref_app_config
(
   iidd                 varchar(50) not null comment '主键',
   business_api_id      varchar(50) not null comment '业务接口ID',
   business_api_name    varchar(250) not null comment '业务接口名称',
   trigger_type         tinyint(1) not null comment '触发类型(1: 定时服务, 2: 流程)',
   trigger_rule         varchar(50) comment '触发规则(1: 操作完成前,2: 操作完成后)',
   trigger_server       varchar(50) comment '触发服务',
   trigger_server_name  varchar(200) comment '触发服务名称',
   node_id              varchar(50) comment '环节ID',
   node_name            varchar(250) comment '环节名称',
   action_id            varchar(50) comment '动作ID',
   action_name          varchar(50) comment '动作名称',
   remark               text comment '说明',
   create_time          datetime not null comment '创建时间',
   create_id            varchar(50) not null comment '创建人ID',
   create_name          varchar(200) not null comment '创建人名称',
   update_time          datetime not null comment '更新时间',
   update_id            varchar(50) not null comment '更新人ID',
   update_name          varchar(200) not null comment '更新人名称',
   flowmodelid          varchar(50) comment '流程模型ID',
   flowmodelname        varchar(500) comment '流程模型名称',
   oflowmodelid         varchar(50) comment '流程模型ID原始值',
   primary key (iidd)
)
COMMENT '业务关联应用配置';

/*==============================================================*/
/* Table: ff_apaas_es_actorcond                                 */
/*==============================================================*/
create table ff_apaas_es_actorcond
(
   condid               varchar(50) not null comment '编号',
   flowmodelid          varchar(50) not null comment '关联流程模型编号',
   condname             varchar(200) comment '条件人员名称',
   statement            text comment '条件语句',
   remark               varchar(2000) comment '备注',
   primary key (condid, flowmodelid)
);

alter table ff_apaas_es_actorcond comment '流程环节条件人员配置表';

/*==============================================================*/
/* Table: ff_apaas_es_actorextdef                               */
/*==============================================================*/
create table ff_apaas_es_actorextdef
(
   actorext_id          varchar(50) not null comment '编号',
   actorext_name        varchar(200) comment '扩展人员名称',
   actorext_desc        varchar(500) comment '扩展描述',
   assemblyname         varchar(200) comment '程序类名',
   actorext_type        int not null comment '扩展类型 0全局 1项目内',
   ref_projectid        varchar(50) comment '所属项目ID',
   ref_deptid           varchar(50) comment '归属公司ID',
   primary key (actorext_id)
);

alter table ff_apaas_es_actorextdef comment '流程扩展人员配置表';

/*==============================================================*/
/* Table: ff_apaas_es_agent                                     */
/*==============================================================*/
create table ff_apaas_es_agent
(
   iidd                 varchar(50) not null comment '主键ID',
   userid               varchar(50) comment '用户编号',
   appid                varchar(50) comment '应用编号',
   agentid              varchar(50) comment '代理人编号',
   begintime            datetime comment '开始时间',
   endtime              datetime comment '结束时间',
   agentstatus          int not null default 0 comment '代理状态 0 未启用 1启用',
   createtime           datetime not null comment '创建时间',
   primary key (iidd)
);

alter table ff_apaas_es_agent comment '出差授权表';

/*==============================================================*/
/* Table: ff_apaas_es_app                                       */
/*==============================================================*/
create table ff_apaas_es_app
(
   appid                varchar(50) not null comment '应用编号',
   appname              varchar(200) comment '应用名称',
   app_tablename        varchar(100) comment '应用表',
   listurl              varchar(500) comment '应用列表地址',
   formurl              varchar(500) comment '应用详情地址',
   subject_config       varchar(500) comment '流程待办主题配置',
   remark               varchar(2000) comment '应用描述',
   project              varchar(200) comment '项目标记',
   appcode              varchar(200) comment '应用代号',
   source_type          int not null default 0 comment '应用来源 0 自定义 1二次开发',
   app_type             int not null default 1 comment '应用类型 0基础资料 1流程应用',
   creater_id           varchar(50) comment '创建人ID',
   creater_name         varchar(200) comment '创建人名称',
   create_deptid        varchar(50) comment '创建部门ID',
   create_deptname      varchar(200) comment '创建部门名称',
   create_time          datetime comment '创建时间',
   update_id            varchar(50) comment '最后更新人ID',
   update_name          varchar(200) comment '最后更新人名称',
   update_time          datetime comment '最后更新时间',
   deleted              int not null default 0 comment '是否删除 0否 1是',
   status               int not null default 0 comment '应用状态 0停用 1启用',
   icon                 varchar(300) comment '应用图标',
   projectid            varchar(50) comment '所属项目ID',
   ref_deptid           varchar(50) comment '归属公司ID',
   show_config          longtext comment '展示方式 存储方式配置JSON字符串',
   primary key (appid)
);

alter table ff_apaas_es_app comment '应用表';

/*==============================================================*/
/* Table: ff_apaas_es_app_actiontype                            */
/*==============================================================*/
create table ff_apaas_es_app_actiontype
(
   iidd                 varchar(50) not null comment '主键ID',
   ref_appid            varchar(50) comment '关联应用ID',
   actiontype_name      varchar(100) comment '操作项名称',
   actiontype           varchar(50) comment '操作项',
   sortid               int not null default 0 comment '排序值',
   primary key (iidd)
);

alter table ff_apaas_es_app_actiontype comment '应用操作项表';

/*==============================================================*/
/* Table: ff_apaas_es_app_actiontype_default                    */
/*==============================================================*/
create table ff_apaas_es_app_actiontype_default
(
   iidd                 varchar(50) not null comment '主键ID',
   app_type             int not null default 1 comment '应用类型 0基础资料 1流程应用',
   actiontype_name      varchar(100) comment '操作项名称',
   actiontype           varchar(50) comment '操作项',
   sortid               int not null default 0 comment '排序值',
   primary key (iidd)
);

alter table ff_apaas_es_app_actiontype_default comment '默认应用操作项表';

/*==============================================================*/
/* Table: ff_apaas_es_app_organization                          */
/*==============================================================*/
create table ff_apaas_es_app_organization
(
   iidd                 varchar(50) not null comment '主键ID',
   appid                varchar(50) not null comment '应用编号',
   config_info          longtext not null comment '配置信息',
   trigger_mode         int not null comment '触发方式 1新增 2 修改 3删除',
   update_id            varchar(50) comment '最后更新人ID',
   update_name          varchar(200) comment '最后更新人名称',
   update_time          datetime comment '最后更新时间',
   projectid            varchar(50) not null comment '所属项目ID',
   ref_deptid           varchar(50) not null comment '归属公司ID',
   primary key (iidd)
);

alter table ff_apaas_es_app_organization comment '应用联动组织架构表';

/*==============================================================*/
/* Table: ff_apaas_es_app_special                               */
/*==============================================================*/
create table ff_apaas_es_app_special
(
   appid                varchar(50) not null comment '应用编号',
   appname              varchar(200) comment '应用名称',
   app_tablename        varchar(100) comment '应用表',
   app_type             int not null default 1 comment '应用类型 0全局应用 1项目应用',
   ref_deptid           varchar(50) comment '归属公司ID',
   creater_id           varchar(50) comment '创建人ID',
   creater_name         varchar(200) comment '创建人名称',
   create_deptid        varchar(50) comment '创建部门ID',
   create_deptname      varchar(200) comment '创建部门名称',
   create_time          datetime comment '创建时间',
   update_id            varchar(50) comment '最后更新人ID',
   update_name          varchar(200) comment '最后更新人名称',
   update_time          datetime comment '最后更新时间',
   projectid            varchar(50) comment '所属项目ID',
   primary key (appid)
);

alter table ff_apaas_es_app_special comment '特殊应用表';

/*==============================================================*/
/* Table: ff_apaas_es_app_submit_limit                          */
/*==============================================================*/
create table ff_apaas_es_app_submit_limit
(
   appid                varchar(50) not null comment '应用ID',
   is_all_limit         int comment '是否限制提交总量(0否1是)',
   all_limit_total      int comment '提交限制总量',
   is_month_limit       int comment '是否限制月提交总量(0否1是)',
   month_limit_total    int comment '月提交限制总量',
   is_timing_limit      int comment '是否定时限制(0否1是)',
   begin_time           datetime comment '限制提交起始时间',
   end_time             datetime comment '限制提交结束时间',
   extention            longtext comment '扩展信息',
   create_userid        varchar(50) comment '创建人ID',
   create_username      varchar(200) comment '创建人名称',
   create_time          datetime comment '创建时间',
   deleted              int comment '是否删除(0否1是)',
   ref_project          varchar(50) comment '所属项目',
   ref_deptid           varchar(50) comment '所属公司',
   primary key (appid)
);

alter table ff_apaas_es_app_submit_limit comment '应用数据提交限制表';

/*==============================================================*/
/* Table: ff_apaas_es_app_submit_log                            */
/*==============================================================*/
create table ff_apaas_es_app_submit_log
(
   iidd                 varchar(50) not null comment '主键ID',
   extention            longtext comment '扩展信息',
   create_userid        varchar(50) comment '创建人ID',
   create_username      varchar(200) comment '创建人名称',
   create_time          datetime comment '创建时间',
   deleted              int comment '是否删除(0否1是)',
   ref_appid            varchar(50) comment '所属应用',
   ref_projectid        varchar(50) comment '所属项目',
   ref_deptid           varchar(50) comment '所属公司',
   primary key (iidd)
);

alter table ff_apaas_es_app_submit_log comment '应用数据提交日志表';

/*==============================================================*/
/* Table: ff_apaas_es_catalog                                   */
/*==============================================================*/
create table ff_apaas_es_catalog
(
   catalogid            varchar(50) not null comment '类别编号',
   fullid               varchar(1000) comment 'FULL编号',
   catalogname          varchar(200) comment '类别名称',
   parentid             varchar(50) comment '上级分类',
   remark               varchar(500) comment '备注',
   sortid               int comment '排序值',
   classlayer           int not null default 1 comment '层级',
   deleted              int comment '是否删除',
   ref_projectid        varchar(50) comment '所属项目ID',
   ref_deptid           varchar(50) comment '关联公司ID',
   addtime              datetime comment '添加时间',
   creater_id           varchar(50) comment '创建人ID',
   creater_name         varchar(200) comment '创建人名称',
   special_type         int not null default 0 comment '是否特殊类别 0否 1是',
   primary key (catalogid)
);

alter table ff_apaas_es_catalog comment '常用类别表';

/*==============================================================*/
/* Table: ff_apaas_es_f_actors                                  */
/*==============================================================*/
create table ff_apaas_es_f_actors
(
   faid                 varchar(50) not null comment '编号',
   flowmodelid          varchar(50) not null comment '关联流程模型编号',
   actorseq             int not null default 1 comment '角色序号',
   actortype            int not null default 10 comment '角色类别 10部门、20用户、40用户组',
   actorid              varchar(50) comment '角色编号',
   primary key (faid)
);

alter table ff_apaas_es_f_actors comment '流程启动人员表';

/*==============================================================*/
/* Table: ff_apaas_es_f_specactor                               */
/*==============================================================*/
create table ff_apaas_es_f_specactor
(
   fspeid               varchar(50) not null comment '编号',
   flowmodelid          varchar(50) not null comment '关联流程模型编号',
   actorseq             int not null default 1 comment '角色序号',
   spectype             int not null default 0 comment '特殊权限类别 10传阅、20终止、30删除、40催办、50调度、60暂停、70督办',
   actortype            int not null default 10 comment '角色类别 10部门、20用户、40用户组',
   actorid              varchar(50) comment '角色编号',
   primary key (fspeid)
);

alter table ff_apaas_es_f_specactor comment '流程特殊权限配置表';

/*==============================================================*/
/* Table: ff_apaas_es_fields                                    */
/*==============================================================*/
create table ff_apaas_es_fields
(
   fieldid              varchar(50) not null comment '字段编号',
   appid                varchar(50) not null comment '关联应用编号',
   fieldname            varchar(200) comment '字段名称',
   fieldname_alias      varchar(200) comment '字段名称别名',
   cname                varchar(200) comment '中文名称',
   dtype                varchar(100) comment '字段格式',
   dtypelength          int comment '格式长度',
   dtypepre             int comment '小数位',
   fieldtype            int not null default -1 comment '一级分类',
   isset                int not null default 0 comment '设置类型 0普通 -1条件路径 -2显示控制',
   refid                int not null default 0 comment '二级分类',
   refremote            int not null default 0 comment '关联范围类型 1自定义范围 2数据关联',
   refvalue             longtext comment '关联配置值',
   iskey                int not null comment '排序值',
   ref_formid           varchar(50) comment '关联表单ID',
   deleted              integer default 0 comment '是否删除',
   primary key (fieldid)
);

alter table ff_apaas_es_fields comment '应用信息项';

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
   fieldid              varchar(50) not null comment '字段编号',
   appid                varchar(50) not null comment '关联应用编号',
   fieldname            varchar(200) comment '字段名称',
   cname                varchar(200) comment '中文名称',
   fieldtype            int not null default -1 comment '一级分类',
   refid                int not null default 0 comment '二级分类',
   refvalue             longtext comment '关联配置值',
   iskey                int not null comment '排序值',
   primary key (fieldid)
);

alter table ff_apaas_es_fields_special comment '特殊应用信息项';

/*==============================================================*/
/* Table: ff_apaas_es_flow                                      */
/*==============================================================*/
create table ff_apaas_es_flow
(
   flowid               varchar(50) not null comment '流程编号',
   flowmodelid          varchar(50) comment '关联流程模型编号',
   appid                varchar(50) comment '应用编号',
   subject              varchar(500) comment '主题',
   premessageid         varchar(50) comment '前置消息编号',
   preflowid            varchar(50) comment '前置流程编号',
   jointype             int not null default 10 comment '衔接类别 10普通、20衔接、30嵌套',
   starttime            datetime comment '启动时间',
   endtime              datetime comment '结束时间',
   starterid            varchar(50) comment '启动人员编号',
   expectendtime        datetime comment '预计结束时间',
   status               int not null default 0 comment '流程状态',
   attachment           int not null default 0 comment '是否存在附件',
   flowno               varchar(100) comment '流程单号',
   deleted              int not null comment '是否删除 0否 1是',
   business_status      varchar(500) comment '对应业务状态',
   projectid            varchar(50) comment '所属项目ID',
   ref_deptid           varchar(50) comment '归属公司ID',
   current_handerid     varchar(1000) comment '当前处理人ID',
   current_hander       varchar(1000) comment '当前处理人名称',
   current_nodeid       varchar(1000) comment '当前处理环节ID',
   current_nodename     varchar(1000) comment '当前处理环节名称',
   primary key (flowid)
);

alter table ff_apaas_es_flow comment '流程实例表';

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
   flowid               varchar(50) not null comment '流程编号',
   appid                varchar(50) comment '应用编号',
   subject              varchar(500) comment '流程主题',
   remark               varchar(2000) comment '删除原因',
   deletedtime          datetime comment '删除时间',
   douserid             varchar(50) comment '删除人编号',
   primary key (flowid)
);

alter table ff_apaas_es_flowdelelog comment '流程实例删除日志表';

/*==============================================================*/
/* Table: ff_apaas_es_flowfromto                                */
/*==============================================================*/
create table ff_apaas_es_flowfromto
(
   ftid                 varchar(50) not null comment '编号',
   fflowid              varchar(50) comment '开始流程编号',
   tflowid              varchar(50) comment '结尾流程编号',
   premessageid         varchar(50) comment '前置消息编号',
   linkmessageid        varchar(50) comment '连接消息编号',
   jointype             int not null default 10 comment '衔接类别 10普通、20衔接、30嵌套',
   primary key (ftid)
);

alter table ff_apaas_es_flowfromto comment '流程实例顺序表';

/*==============================================================*/
/* Table: ff_apaas_es_flowmodel                                 */
/*==============================================================*/
create table ff_apaas_es_flowmodel
(
   flowmodelid          varchar(50) not null comment '流程模型编号',
   flowname             varchar(200) comment '流程模型名称',
   appid                varchar(50) comment '关联应用编号',
   preflowmodelid       varchar(50) comment '前置流程模型编号',
   oflowmodelid         varchar(50) comment '原始流程模型编号',
   status               int not null default 0 comment '流程状态 0未启动 1启动',
   remark               varchar(500) comment '描述',
   unit_config          longtext comment '时限配置JSON串',
   totalhours           int not null default 0 comment '总时限',
   timeunit             int not null default 0 comment '时限单位',
   deleted              int not null default 0 comment '是否删除',
   flowchart            longtext comment '流程图字符串',
   flowbusid            varchar(50) comment '业务流程编号',
   creater_id           varchar(50) comment '创建人ID',
   creater_name         varchar(200) comment '创建人名称',
   create_deptid        varchar(50) comment '创建部门ID',
   create_deptname      varchar(200) comment '创建部门名称',
   create_time          datetime comment '创建时间',
   update_id            varchar(50) comment '最后更新人ID',
   update_name          varchar(200) comment '最后更新人名称',
   update_time          datetime comment '最后更新时间',
   ref_deptid           varchar(50) comment '归属公司ID',
   publish_id           varchar(50) comment '发布人ID',
   publish_name         varchar(200) comment '发布人',
   publish_time         datetime comment '发布时间',
   is_publish           int default 0 comment '是否发布过',
   specactordata        longtext comment '全局特殊权限人员配置集合 用于前端页面展示',
   primary key (flowmodelid)
);

alter table ff_apaas_es_flowmodel comment '流程模型表';

/*==============================================================*/
/* Table: ff_apaas_es_flowmodel_notice_config                   */
/*==============================================================*/
create table ff_apaas_es_flowmodel_notice_config
(
   iidd                 varchar(50) not null comment '主键ID',
   flowmodelid          varchar(50) not null comment '流程模型编号',
   configtype           int not null default 0 comment '配置对象 0全局 1环节',
   noticetype           int not null default 0 comment '通知方式 0待办通知',
   operattype           text comment '操作类别 存储JSON字符串[{value:10,name:''提交''}],后台在使用时进行解析',
   noticemethod         text comment '通知方式存储JSON字符串[{value:0,name:''短信''}],后台在使用时进行解析',
   noticeobject         text comment '通知对象存储JSON字符串[{value:0,name:''发起人''}],后台在使用时进行解析
            如果配置了通知对象为其他，则会存在嵌套子级对象集合的情况',
   noticeobject_other   text comment '通知的其他对象值',
   form_appoint         varchar(1000) comment '表单指定 存储格式{"type":200,"list:":[''表单人员字段编码'']} type:200 表示人员 210表示部门 220表示角色',
   noticecontent        text comment '通知内容',
   sortid               int not null default 0 comment '排序值',
   ref_deptid           varchar(50) comment '归属公司ID',
   primary key (iidd)
);

alter table ff_apaas_es_flowmodel_notice_config comment '流程待办通知配置表';

/*==============================================================*/
/* Table: ff_apaas_es_flowmodel_visit_config                    */
/*==============================================================*/
create table ff_apaas_es_flowmodel_visit_config
(
   flowmodelid          varchar(50) not null comment '流程模型编号',
   islimitcount         int not null default 0 comment '是否限制提交总量 0否 1是',
   limitcount           int not null default 0 comment '限制提交总量',
   islimitmonthcount    int not null default 0 comment '是否限制每月提交上限 0否 1是',
   limitmonthcount      int not null default 0 comment '限制每月提交总量',
   islimitpersoncount   int not null default 0 comment '限制单人提交总次数 0否 1是',
   limitpersoncount     int not null default 0 comment '限制单人提交总量',
   islimitaddway        int not null default 0 comment '是否控制申请通道',
   limitbegintime       datetime comment '开启开始时间',
   limitendtime         datetime comment '开启结束时间',
   isallowfree          int not null default 0 comment '是否允许免密登录',
   allowfree_url        varchar(500) comment '免密访问地址',
   ref_deptid           varchar(50) comment '归属公司ID',
   primary key (flowmodelid)
);

alter table ff_apaas_es_flowmodel_visit_config comment '流程访问机制配置表';

/*==============================================================*/
/* Table: ff_apaas_es_flowpauselog                              */
/*==============================================================*/
create table ff_apaas_es_flowpauselog
(
   id                   varchar(50) not null comment '编号',
   flowid               varchar(50) comment '流程编号',
   pauserreason         varchar(500) comment '暂停原因',
   pausetime            datetime comment '暂停时间',
   douserid             varchar(50) comment '暂停人编号',
   continuetime         datetime comment '继续时间',
   contuserid           varchar(50) comment '继续人编号',
   status               int not null default 0 comment '状态',
   primary key (id)
);

alter table ff_apaas_es_flowpauselog comment '流程实例暂停日志表';

/*==============================================================*/
/* Table: ff_apaas_es_influx_result                             */
/*==============================================================*/
create table ff_apaas_es_influx_result
(
   messageid            varchar(50) not null comment '消息编号',
   flowid               varchar(50) comment '流程编号',
   nodeid               varchar(50) comment '环节编号',
   flowmodelid          varchar(50) comment '流程模型ID',
   nodemodelid          varchar(50) comment '环节模型ID',
   actionid             int not null default 1 comment '处理动作编号 1同意 0不同意',
   userid               varchar(50) comment '处理人ID',
   primary key (messageid)
);

alter table ff_apaas_es_influx_result comment '会签结果记录表';

/*==============================================================*/
/* Table: ff_apaas_es_message                                   */
/*==============================================================*/
create table ff_apaas_es_message
(
   messageid            varchar(50) not null comment '消息编号',
   flowid               varchar(50) comment '流程编号',
   nodeid               varchar(50) comment '环节编号',
   messagetype          int not null default 0 comment '消息类别',
   receiverid           varchar(50) comment '当前处理人',
   recdeptid            varchar(50) comment '当前处理部门',
   recorgid             varchar(50) comment '当前处理机构',
   originid             varchar(50) comment '原处理人',
   senderid             varchar(50) comment '前处理人',
   senderdeptid         varchar(50) comment '前处理部门',
   senderorgid          varchar(50) comment '前处理机构',
   sendtime             datetime comment '送达时间',
   receivetime          datetime comment '接收时间',
   readtime             datetime comment '已阅时间',
   receivetype          int comment '接收类别',
   expected             datetime comment '预计结束时间',
   warntime             datetime comment '响应结束时间',
   recentprocesstime    datetime comment '最近处理时间',
   factors              varchar(100) comment '来源人员列表',
   tactors              varchar(1000) comment '发送人员列表',
   actortype            int not null default 0 comment '角色类别',
   actionid             int not null default 0 comment '处理动作编号',
   receivertype         int not null default 0 comment '机构环节时接收者类别',
   orgrecid             varchar(50) comment '机构环节时接收单位ID',
   orgrecname           varchar(300) comment '机构环节时接收单位名称',
   opinion              varchar(1000) comment '办理意见',
   isread               int not null default 0 comment '是否已阅',
   important            int not null default 1 comment '消息级别 0较低、1一般、2重要',
   deleted              int not null default 0 comment '是否删除',
   status               int not null default 0 comment '消息状态',
   prepausestatus       int not null default 0 comment '暂停前状态',
   timeout_before       int not null default 0 comment '超时前标志(0:非即将超时, 1: 即将超时))',
   timeout_after        int not null default 0 comment '超时后标志(0:非即将超时, 1: 即将超时))',
   update_time          datetime default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '修改时间',
   shelve               int not null default 0 comment '是否搁置',
   primary key (messageid)
);

alter table ff_apaas_es_message comment '流程消息记录表';

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
   iidd                 varchar(50) not null comment '主键',
   fmessageid           varchar(50) comment '开始消息编号',
   tmessageid           varchar(50) comment '结尾消息编号',
   primary key (iidd)
);

alter table ff_apaas_es_messagefromto comment '流程消息顺序表';

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
   iidd                 varchar(50) not null comment '主键',
   messageid            varchar(50) comment '消息编号',
   mpcontent            text comment '内容',
   updatetime           datetime comment '添加时间',
   primary key (iidd)
);

alter table ff_apaas_es_messageopinion comment '扩展意见表';

/*==============================================================*/
/* Table: ff_apaas_es_msgprocess                                */
/*==============================================================*/
create table ff_apaas_es_msgprocess
(
   mpid                 varchar(50) not null comment '主键',
   flowid               varchar(50) comment '流程编号',
   userid               varchar(50) comment '用户编号',
   username             varchar(200) comment '用户名称',
   msgtype              int not null comment '补充意见类型 0补充意见 1暂停流程 2恢复流程 3终止流程 50取消邀请 60邀请传阅 70邀请协办 80邀请沟通',
   mpcontent            text comment '补充意见',
   mptime               datetime comment '补充时间',
   flowmodelid          varchar(50) comment '流程模型编号',
   nodemodelid          varchar(50) comment '环节模型编号',
   messageid            varchar(50) comment '消息编号',
   primary key (mpid)
);

alter table ff_apaas_es_msgprocess comment '补充意见表';

/*==============================================================*/
/* Table: ff_apaas_es_msgsupervise                              */
/*==============================================================*/
create table ff_apaas_es_msgsupervise
(
   mpid                 varchar(50) not null comment '主键',
   flowid               varchar(50) comment '流程编号',
   userid               varchar(50) comment '用户编号',
   username             varchar(200) comment '用户名称',
   mpcontent            text comment '督办意见',
   addtime              datetime comment '添加时间',
   primary key (mpid)
);

alter table ff_apaas_es_msgsupervise comment '督办意见表';

/*==============================================================*/
/* Table: ff_apaas_es_msgurg_log                                */
/*==============================================================*/
create table ff_apaas_es_msgurg_log
(
   mpid                 varchar(50) not null comment '主键',
   flowid               varchar(50) comment '流程编号',
   userid               varchar(50) comment '用户编号',
   username             varchar(200) comment '用户名称',
   receiverid           varchar(50) comment '被通知人ID',
   receivername         varchar(200) comment '被通知人名称',
   mpcontent            text comment '催办内容',
   addtime              datetime comment '添加时间',
   primary key (mpid)
);

alter table ff_apaas_es_msgurg_log comment '催办日志表';

/*==============================================================*/
/* Table: ff_apaas_es_n_m_action                                */
/*==============================================================*/
create table ff_apaas_es_n_m_action
(
   nmactionid           varchar(50) not null comment '编号',
   flowmodelid          varchar(50) not null comment '关联流程模型编号',
   nodemodelid          varchar(50) not null comment '关联环节模型',
   actionid             int not null default 1 comment '动作ID',
   actionname           varchar(50) comment '动作名称',
   isdefault            int not null default 0 comment '是否缺省',
   sync_exec            int not null default 0 comment '是否同步执行 0否 1是',
   busactionid          varchar(50) comment '绑定业务动作编号',
   primary key (nmactionid)
);

alter table ff_apaas_es_n_m_action comment '流程环节动作表';

/*==============================================================*/
/* Table: ff_apaas_es_n_m_action_bind                           */
/*==============================================================*/
create table ff_apaas_es_n_m_action_bind
(
   nmactionid           varchar(50) not null comment '编号',
   flowmodelid          varchar(50) not null comment '关联流程模型编号',
   nodemodelid          varchar(50) not null comment '关联环节模型',
   actionid             int not null default 1 comment '动作ID',
   bind_type            int not null default 0 comment '绑定类型 0数据新增 1数据修改 2自定义 3电子签约',
   bind_appid           varchar(200) comment '绑定应用ID 格式为[项目id,应用id]',
   bind_oflowmodelid    varchar(50) comment '绑定流程模型ID',
   bind_actionid        int default 0 comment '绑定起草环节按钮',
   trigger_rule         longtext comment '触发规则',
   cond_rule            longtext comment '条件规则',
   value_rule           longtext comment '赋值规则',
   custom_identy        varchar(100) comment '自定义标识',
   bind_title           varchar(100) comment '绑定标题',
   sortid               int not null comment '排序值',
   primary key (nmactionid)
);

alter table ff_apaas_es_n_m_action_bind comment '流程环节动作绑定关联子表';

/*==============================================================*/
/* Table: ff_apaas_es_n_m_action_influxactor                    */
/*==============================================================*/
create table ff_apaas_es_n_m_action_influxactor
(
   nmactionid           varchar(50) not null comment '编号',
   flowmodelid          varchar(50) not null comment '关联流程模型编号',
   nodemodelid          varchar(50) not null comment '关联环节模型',
   actionid             int not null default 1 comment '动作ID',
   actionname           varchar(50) comment '动作名称',
   primary key (nmactionid)
);

alter table ff_apaas_es_n_m_action_influxactor comment '流程会签环节动作表';

/*==============================================================*/
/* Table: ff_apaas_es_n_m_actor                                 */
/*==============================================================*/
create table ff_apaas_es_n_m_actor
(
   nmactorid            varchar(50) not null comment '编号',
   flowmodelid          varchar(50) not null comment '关联流程模型编号',
   nodemodelid          varchar(50) not null comment '关联环节模型',
   actorseq             int not null default 1 comment '角色序号',
   actorclass           int not null default 0 comment '人员处理类别 0主办、1阅知/协办',
   actortype            int not null default 10 comment '角色类别 10部门、20用户、30条件人员、40用户组',
   actorid              varchar(50) comment '角色编号',
   primary key (nmactorid)
);

alter table ff_apaas_es_n_m_actor comment '流程环节人员表';

/*==============================================================*/
/* Table: ff_apaas_es_n_m_att_config                            */
/*==============================================================*/
create table ff_apaas_es_n_m_att_config
(
   iidd                 varchar(50) not null comment '编号',
   flowmodelid          varchar(50) not null comment '关联流程模型编号',
   nodemodelid          varchar(50) not null comment '关联环节模型',
   condrule             longtext comment '条件规则',
   addtime              datetime comment '添加时间',
   primary key (iidd),
   unique key AK_key_flowmodel_nodemodel (flowmodelid, nodemodelid)
);

alter table ff_apaas_es_n_m_att_config comment '流程环节附件必填配置';

/*==============================================================*/
/* Table: ff_apaas_es_n_m_field                                 */
/*==============================================================*/
create table ff_apaas_es_n_m_field
(
   nmfieldid            varchar(50) not null comment '编号',
   flowmodelid          varchar(50) not null comment '关联流程模型编号',
   nodemodelid          varchar(50) not null comment '关联环节模型',
   fieldid              varchar(50) comment '关联信息项编号',
   fieldname            varchar(200) comment '字段名称',
   cname                varchar(200) comment '中文名称',
   isvisible            int not null default 1 comment '是否可见',
   isedit               int not null default 1 comment '是否可编辑',
   isrequired           int not null default 1 comment '是否必填',
   iskey                int not null default 0 comment '排序值',
   subtable_config      longtext comment '子表特殊配置',
   primary key (nmfieldid)
);

alter table ff_apaas_es_n_m_field comment '流程环节信息项表';

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
   nmflowid             varchar(50) not null comment '编号',
   flowmodelid          varchar(50) not null comment '关联流程模型编号',
   nodemodelid          varchar(50) not null comment '关联环节模型',
   flowseq              int not null default 1 comment '顺序号',
   linkflowmodelid      varchar(50) comment '连接的流程模型编号',
   ismaster             int not null default 1 comment '主办',
   isreader             int not null default 0 comment '阅知',
   isassist             int not null default 0 comment '协办',
   trackrange           int not null default 0 comment '子流程跟踪权限',
   islink               int not null default 0 comment '连接类型 0嵌套 1衔接',
   nmflow_config        longtext comment '高级配置 记录发起子流程时，字段映射关系，主要用于初始化赋值',
   primary key (nmflowid)
);

alter table ff_apaas_es_n_m_flow comment '流程环节子流程配置表';

/*==============================================================*/
/* Table: ff_apaas_es_n_m_link                                  */
/*==============================================================*/
create table ff_apaas_es_n_m_link
(
   linkid               varchar(50) not null comment '编号',
   flowmodelid          varchar(50) not null comment '关联流程模型编号',
   nodemodela           varchar(50) not null comment '环节A',
   nodemodelb           varchar(50) not null comment '环节B',
   actionid             int not null default 0 comment '动作ID',
   linkname             varchar(200) comment '连接名称',
   linkrule             text comment '条件规则',
   remark               varchar(2000) comment '备注',
   counter              int not null default 0 comment '连接线计数器',
   tipsname             varchar(200) comment '提示名称',
   primary key (linkid, flowmodelid)
);

alter table ff_apaas_es_n_m_link comment '流程环节连接表';

/*==============================================================*/
/* Table: ff_apaas_es_n_m_specactor                             */
/*==============================================================*/
create table ff_apaas_es_n_m_specactor
(
   nmspeid              varchar(50) not null comment '编号',
   flowmodelid          varchar(50) not null comment '关联流程模型编号',
   nodemodelid          varchar(50) not null comment '关联环节模型',
   actorseq             int not null default 1 comment '顺序号',
   spectype             int not null default 0 comment '特殊权限类别',
   actortype            int not null default 10 comment '角色类别 10部门、20用户、40用户组',
   actorid              varchar(50) comment '角色编号',
   primary key (nmspeid)
);

alter table ff_apaas_es_n_m_specactor comment '流程环节特殊权限配置表';

/*==============================================================*/
/* Table: ff_apaas_es_node                                      */
/*==============================================================*/
create table ff_apaas_es_node
(
   nodeid               varchar(50) not null comment '环节编号',
   flowid               varchar(50) comment '流程编号',
   flowmodelid          varchar(50) comment '流程模型编号',
   nodemodelid          varchar(50) not null comment '环节模型编号',
   nodemodeltype        int not null default 0 comment '环节模型类别',
   worktype             int not null default 0 comment '环节工作类别',
   starttime            datetime comment '启动时间',
   actionid             int not null default 0 comment '环节出口状态',
   expectnumber         int not null default 1 comment '环节应达人数(合流)',
   arrivednumber        int not null default 1 comment '实际已达人数',
   status               int not null default 0 comment '环节状态',
   prepausestatus       int not null default 0 comment '暂停前状态保存',
   statustime           datetime comment '最近状态变更时间',
   primary key (nodeid)
);

alter table ff_apaas_es_node comment '流程环节实例表';

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
   nodeid               varchar(50) not null comment '主键',
   actionsave           int comment '动作ID',
   receiversave         varchar(2000) comment '接收人XML串',
   primary key (nodeid)
);

alter table ff_apaas_es_node_temp comment '流程环节临时表';

/*==============================================================*/
/* Table: ff_apaas_es_nodefromto                                */
/*==============================================================*/
create table ff_apaas_es_nodefromto
(
   iidd                 varchar(50) not null comment '主键',
   fnodeid              varchar(50) comment '开始环节编号',
   tnodeid              varchar(50) comment '结尾环节编号',
   primary key (iidd)
);

alter table ff_apaas_es_nodefromto comment '流程环节顺序表';

/*==============================================================*/
/* Table: ff_apaas_es_nodemodel                                 */
/*==============================================================*/
create table ff_apaas_es_nodemodel
(
   flowmodelid          varchar(50) not null comment '流程模型编号',
   nodemodelid          varchar(50) not null comment '流程环节编号',
   nodebusid            varchar(50) comment '绑定的业务环节编号',
   nodename             varchar(200) comment '环节名称',
   opid                 varchar(50) comment '操作视图编号',
   type                 int not null comment '环节类别',
   pathid               int comment '环节路径',
   counter              int not null default 1 comment '到达的环节数',
   masternode           varchar(50) comment '主送环节模型',
   masterpath           int comment '主送路径',
   remark               varchar(500) comment '描述',
   respond_unit_config  longtext comment '响应时限配置JSON串',
   respondhours         int not null default 0 comment '响应时限',
   respond_timeunit     int not null default 0 comment '响应时限单位',
   unit_config          longtext comment '处理时限配置JSON串',
   totalhours           int not null default 0 comment '处理时限',
   timeunit             int not null default 0 comment '处理时限单位',
   viewattach           varchar(50) not null default '0' comment '附件权限',
   warninghours         numeric(18,2) default 0 comment '预警时限',
   canautopass          int not null default 0 comment '能否自动通过',
   cancustlimit         int not null default 0 comment '能否指定时限',
   takeover             int not null default 0 comment '是否允许交接',
   stopflow             int not null default 0 comment '是否允许终止',
   canjump              int not null default 0 comment '是否允许跳转',
   canback              int not null default 0 comment '是否允许退回',
   cantakeback          int not null default 0 comment '是否允许回收',
   canattemper          int not null default 0 comment '是否允许调度',
   cantransmit          int not null default 0 comment '是否允许传阅',
   cancommunic          int not null default 0 comment '是否允许沟通',
   canbackhasdone       int not null default 0 comment '是否允许驳回',
   canassist            int not null default 0 comment '是否允许协办',
   canfreetakeover      int not null default 0 comment '是否允许自由交接',
   canshowprocess       int not null default 1 comment '是否显示处理过程',
   requiredopinion      int not null default 1 comment '是否必填办理意见',
   actordata            longtext comment '环节人员配置集合 用于前端页面展示',
   specactordata        longtext comment '环节特殊权限人员配置集合 用于前端页面展示',
   business_status      varchar(200) comment '对应业务状态',
   check_for_all        int default 1 comment '是否需要所有人会签',
   check_by_back        int default 0 comment '是否通过后台计算会签',
   chooseperson         int default 1 comment '是否需要发起人选择会签人员',
   relation_app         longtext comment '关联工单应用范围 存储格式[{"name":"应用名称","value":"应用id"}]',
   relation_app_tip     varchar(500) comment '关联工单图标描述',
   allow_close_relation_app int not null default 1 comment '是否允许关闭关联工单 1允许 0不允许',
   not_find_node_tip    varchar(400) comment '找不到下一个环节路径提示语',
   auto_send            int default 0 comment '分流环节是否自动发送 0否 1是',
   primary key (flowmodelid, nodemodelid)
);

alter table ff_apaas_es_nodemodel comment '流程环节模型表';

/*==============================================================*/
/* Table: ff_apaas_es_notice_log                                */
/*==============================================================*/
create table ff_apaas_es_notice_log
(
   iidd                 varchar(50) not null comment '主键ID',
   noticetype_one       int not null comment '通知大类 待办、催办、超时提醒',
   noticetype_two       int default -1 comment '通知小类 根据不同通知大类填充相关通知小类信息',
   noticemethod         int not null default 0 comment '通知方式',
   noticeobject         varchar(500) comment '通知对象标识 根据不同通知方式记录相关的对象标识 如短信对应手机号码',
   noticecontent        text comment '通知内容',
   noticeurl            varchar(500) comment '通知关联url',
   receiverid           varchar(50) comment '被通知人ID',
   receivername         varchar(200) comment '被通知人名称',
   noticetime           datetime comment '通知时间',
   ref_flowid           varchar(50) comment '关联流程ID',
   ref_messageid        varchar(50) comment '关联消息ID',
   projectid            varchar(50) comment '所属项目ID',
   ref_deptid           varchar(50) comment '归属公司ID',
   deleted              int not null default 0 comment '是否删除 0否 1是',
   ref_overtime_iidd    varchar(50) comment '关联超时通知配置表IIDD',
   primary key (iidd)
);

alter table ff_apaas_es_notice_log comment '通知消息日志记录表';

/*==============================================================*/
/* Table: ff_apaas_es_overtime_notice_config                    */
/*==============================================================*/
create table ff_apaas_es_overtime_notice_config
(
   iidd                 varchar(50) not null comment '主键ID',
   configtype           int not null default 0 comment '配置对象 0全流程 1某个环节',
   flowmodelid          varchar(50) comment '流程模型编号',
   nodemodelid          varchar(50) comment '环节模型编号',
   noticetype           int not null default 0 comment '通知方式 0响应 1处理',
   operattype           int not null default 0 comment '操作类别 0超时前 1超时后',
   overtime             int not null default 0 comment '超时值',
   timeunit             int not null comment '超时值类别 分钟、小时、天',
   noticemethod         text comment '通知方式存储JSON字符串[{value:0,name:''短信''}],后台在使用时进行解析',
   noticeobject         text comment '通知对象存储JSON字符串[{value:0,name:''发起人''}],后台在使用时进行解析
            如果配置了通知对象为其他，则会存在嵌套子级对象集合的情况',
   noticeobject_other   text comment '通知的其他对象值',
   form_appoint         varchar(1000) comment '表单指定 存储格式{"type":200,"list:":[''表单人员字段编码'']} type:200 表示人员 210表示部门 220表示角色',
   noticecontent        text comment '通知内容',
   sortid               int not null default 0 comment '排序值',
   ref_deptid           varchar(50) comment '归属公司ID',
   primary key (iidd)
);

alter table ff_apaas_es_overtime_notice_config comment '超时通知配置表';

/*==============================================================*/
/* Table: ff_apaas_es_receivelist                               */
/*==============================================================*/
create table ff_apaas_es_receivelist
(
   id                   varchar(50) not null comment '主键',
   messageid            varchar(50) comment '消息编号',
   receiveid            varchar(50) comment '接收人编号',
   originid             varchar(50) comment '原接收人编号',
   status               int not null default 0 comment '状态',
   primary key (id)
);

alter table ff_apaas_es_receivelist comment '待接收人员表';

/*==============================================================*/
/* Table: ff_apaas_es_site_news                                 */
/*==============================================================*/
create table ff_apaas_es_site_news
(
   iidd                 varchar(50) not null comment '主键ID',
   noticetype_one       int not null comment '通知大类 0消息提醒、1时效提醒等',
   noticetype_two       int default -1 comment '通知小类 根据不同通知大类填充相关通知小类信息',
   noticecontent        text comment '通知内容',
   notice_flowid        varchar(50) comment '通知关联流程ID',
   notice_messageid     varchar(50) comment '通知关联消息ID',
   receiverid           varchar(50) comment '被通知人ID',
   receivername         varchar(200) comment '被通知人名称',
   noticetime           datetime comment '通知时间',
   isread               int not null default 0 comment '是否已阅 0否 1是',
   projectid            varchar(50) comment '所属项目ID',
   ref_deptid           varchar(50) comment '归属公司ID',
   deleted              int not null default 0 comment '是否删除 0否 1是',
   ref_overtime_iidd    varchar(50) comment '关联超时通知配置表IIDD',
   primary key (iidd)
);

alter table ff_apaas_es_site_news comment '站内消息记录表';

/*==============================================================*/
/* Table: ff_apaas_open_api                                     */
/*==============================================================*/
create table ff_apaas_open_api
(
   iidd                 varchar(50) not null comment '主键',
   name                 varchar(250) not null comment '接口名称',
   group_id             varchar(50) not null comment '分组编号',
   group_name           varchar(255) not null comment '分组名称',
   url                  varchar(500) not null comment '请求地址后缀(/user/login)',
   method               int not null comment '请求方法(1:GET,2:POST)',
   context_type         int not null comment '内容类型:(0: none, 1:application/x-www-form-urlencoded, 2: multipart/form-data, 3: application/json, 4: application/octet-stream)',
   body                 text comment '请求参数',
   response             text not null comment '响应参数',
   success_examples     text not null comment '响应成功示例',
   fail_examples        text not null comment '失败示例',
   sort_id              int not null default 0 comment '排序值',
   update_time          datetime not null comment '更新时间',
   create_person        varchar(250) not null comment '负责人',
   primary key (iidd)
)
COMMENT 'open api 表';

/*==============================================================*/
/* Table: ff_apaas_sys_config                                   */
/*==============================================================*/
create table ff_apaas_sys_config
(
   config_id            varchar(50) not null comment '主键',
   config_name          varchar(100) comment '参数名称',
   config_key           varchar(100) comment '参数键名',
   config_value         varchar(500) comment '参数键值',
   config_type          varchar(1) comment '系统内置(Y是 N否)',
   create_by            varchar(50) comment '创建者',
   create_time          datetime comment '创建时间',
   update_by            varchar(50) comment '更新人',
   update_time          datetime comment '更新时间',
   remark               varchar(1000) comment '备注',
   group_name           varchar(200) comment '分组名称',
   ref_dept_id          VARCHAR(50) comment '公司编号',
   ref_projectid        varchar(50) comment '项目编号',
   types                int not null default 1 comment '定时任务类型(0:外部,1:内部)',
   primary key (config_id)
);

alter table ff_apaas_sys_config comment '参数配置表';

/*==============================================================*/
/* Table: ff_apaas_sys_job                                      */
/*==============================================================*/
create table ff_apaas_sys_job
(
   job_id               varchar(50) not null comment '任务主键',
   job_name             varchar(200) not null comment '任务名称',
   job_group            varchar(200) not null comment '任务组名',
   invoke_target        varchar(500) not null comment '调用目标字符串',
   cron_expression      varchar(255) comment 'cron执行表达式',
   misfire_policy       int not null default 3 comment '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
   concurrent           int not null default 1 comment '是否并发执行(0允许 1禁止)',
   status               int not null default 0 comment '状态（0正常 1暂停）',
   create_by            varchar(200) comment '创建者',
   create_time          datetime comment '创建时间',
   update_by            varchar(200) comment '更新者',
   update_time          datetime comment '更新时间',
   remark               varchar(500) comment '备注信息',
   ref_deptid           varchar(50) comment '公司编号',
   primary key (job_id)
);

alter table ff_apaas_sys_job comment '定时任务调度表';

/*==============================================================*/
/* Table: ff_apaas_sys_job_log                                  */
/*==============================================================*/
create table ff_apaas_sys_job_log
(
   job_log_id           varchar(50) not null comment '主键',
   job_name             varchar(200) not null comment '任务名称',
   job_group            varchar(200) not null comment '任务组名',
   invoke_target        varchar(500) not null comment '调用目标字符串',
   job_message          varchar(500) comment '日志信息',
   status               int not null default 0 comment '状态(0正常 1失败)',
   exception_info       text comment '异常信息',
   create_time          datetime comment '创建时间',
   ref_deptid           varchar(50) comment '公司编号',
   primary key (job_log_id)
);

alter table ff_apaas_sys_job_log comment '定时任务调度日志表';

/*==============================================================*/
/* Table: ff_apaas_sys_logininfor                               */
/*==============================================================*/
create table ff_apaas_sys_logininfor
(
   info_id              varchar(50) not null comment '访问ID',
   user_name            varchar(50) default '' comment '用户账号',
   name                 varchar(100) default '' comment '登陆人名称',
   ipaddr               varchar(128) default '' comment '登录IP地址',
   login_location       varchar(255) default '' comment '登录地点',
   browser              varchar(50) default '' comment '浏览器类型',
   os                   varchar(50) default '' comment '操作系统',
   status               char(1) default '0' comment '登录状态（0成功 1失败）',
   msg                  varchar(255) default '' comment '提示消息',
   login_time           timestamp comment '访问时间',
   ref_deptid           varchar(50) not null comment '公司编号',
   primary key (info_id)
);

alter table ff_apaas_sys_logininfor comment '系统登录日志表';

/*==============================================================*/
/* Table: ff_apaas_sys_oper_log                                 */
/*==============================================================*/
create table ff_apaas_sys_oper_log
(
   oper_id              varchar(50) not null comment '日志主键',
   title                varchar(50) default '' comment '模块标题',
   business_type        int(2) default 0 comment '业务类型（0其它 1新增 2修改 3删除）',
   method_desc          varchar(200) comment '方法描述',
   method               varchar(100) default '' comment '方法名称',
   request_method       varchar(10) default '' comment '请求方式',
   operator_type        int(1)  default '0' comment '操作类别（0其它 1后台用户 2手机端用户）',
   oper_name            varchar(50) default '' comment '操作人员',
   dept_name             varchar(50) default '' comment '部门名称',
   oper_url             varchar(255) default '' comment '请求URL',
   oper_ip              varchar(128) default '' comment '主机地址',
   oper_location        varchar(255) default '' comment '操作地点',
   oper_param           varchar(2000) default '' comment '请求参数',
   json_result          longtext comment '返回参数',
   status               int(1)  default '0' comment '操作状态（0正常 1异常）',
   error_msg            varchar(2000) default '' comment '错误消息',
   oper_time            datetime comment '操作时间',
   primary key (oper_id)
);

alter table ff_apaas_sys_oper_log comment '操作日志记录表';

/*==============================================================*/
/* Table: ff_apaas_t_api_authorization                          */
/*==============================================================*/
create table ff_apaas_t_api_authorization
(
   app_key              nvarchar(8) not null comment '应用唯一编号',
   company_id           varchar(50) not null comment '公司编号',
   company_name         varchar(200) not null comment '公司名称',
   create_time          timestamp not null default CURRENT_TIMESTAMP comment '创建时间',
   deleted              tinyint not null default '0' comment '是否删除',
   primary key (app_key)
)
ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

alter table ff_apaas_t_api_authorization comment '公司认证表';

/*==============================================================*/
/* Table: ff_apaas_t_api_authorization_terminal                 */
/*==============================================================*/
create table ff_apaas_t_api_authorization_terminal
(
   iidd                 varchar(32) not null comment '唯一编号',
   app_key              varchar(32) not null comment '认证唯一编号',
   app_secret           varchar(40) not null comment '参数签名密钥',
   company_id           varchar(50) not null comment '公司编号',
   company_name         varchar(200) not null comment '公司名称',
   terminal_name        varchar(200) not null comment '终端名称',
   termination_time     datetime comment '授权截至日期: null表示永久',
   create_time          timestamp not null default CURRENT_TIMESTAMP comment '创建时间',
   create_user_id       varchar(50) not null comment '创建人编号',
   create_user_name     varchar(50) not null comment '创建人名称',
   update_time          timestamp not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '更新时间',
   update_user_id       varchar(50) not null comment '更新人编号',
   update_user_name     varchar(50) not null comment '更新人名称',
   deleted              tinyint not null default '0' comment '是否删除: 0:未删除,1:已删除',
   primary key (iidd)
)
ENGINE InnoDB
  DEFAULT CHARSET = UTF8;

alter table ff_apaas_t_api_authorization_terminal comment '公司认证平台表';

/*==============================================================*/
/* Table: ff_apaas_t_batch_operate_log                          */
/*==============================================================*/
create table ff_apaas_t_batch_operate_log
(
   iidd                 varchar(50) not null comment '主键id',
   operate_type         int not null default 0 comment '操作类型 0删除 1修改 2交接',
   app_type             int not null default 1 comment '应用类型 0基础资料 1流程应用',
   operate_content      text comment '操作内容 对象集合的JSON串',
   delete_reason        text comment '删除原因',
   create_id            varchar(50) comment '创建人ID',
   create_name          varchar(200) comment '创建人名称',
   create_deptid        varchar(50) comment '创建部门ID',
   create_deptname      varchar(200) comment '创建部门名称',
   create_time          datetime comment '创建时间',
   ref_appid            varchar(50) comment '关联应用编号',
   ref_projectid        varchar(50) comment '关联项目ID',
   ref_deptid           varchar(50) comment '归属公司ID',
   primary key (iidd)
);

alter table ff_apaas_t_batch_operate_log comment '批量操作日志';

/*==============================================================*/
/* Table: ff_apaas_t_bookmark                                   */
/*==============================================================*/
create table ff_apaas_t_bookmark
(
   iidd                 varchar(50) not null comment '主键',
   mark_type            int default 0 comment '收藏类型',
   mark_name            varchar(200) comment '收藏名称',
   catalog_id           varchar(50) comment '归属分类ID',
   catalog_name         varchar(200) comment '归属分类名称',
   mark_url             varchar(1000) comment '路由地址',
   creater_id           varchar(50) comment '创建人ID',
   creater_name         varchar(200) comment '创建人名称',
   create_time          datetime comment '创建时间',
   projectid            varchar(50) comment '所属项目ID',
   ref_deptid           varchar(50) comment '归属公司ID',
   deleted              int not null default 0 comment '是否删除 0否 1是',
   primary key (iidd)
);

alter table ff_apaas_t_bookmark comment '收藏夹存储表';

/*==============================================================*/
/* Table: ff_apaas_t_bookmark_catalog                           */
/*==============================================================*/
create table ff_apaas_t_bookmark_catalog
(
   iidd                 varchar(50) not null comment '主键',
   catalog_name         varchar(200) comment '分类名称',
   creater_id           varchar(50) comment '创建人ID',
   creater_name         varchar(200) comment '创建人名称',
   create_time          datetime comment '创建时间',
   projectid            varchar(50) comment '所属项目ID',
   ref_deptid           varchar(50) comment '归属公司ID',
   sortid               int not null default 0 comment '排序值',
   deleted              int not null default 0 comment '是否删除 0否 1是',
   primary key (iidd)
);

alter table ff_apaas_t_bookmark_catalog comment '收藏夹分类表';

/*==============================================================*/
/* Table: ff_apaas_t_business_operation_log                     */
/*==============================================================*/
create table ff_apaas_t_business_operation_log
(
   iidd                 varchar(50) not null comment '唯一编号',
   operator_user_id     varchar(50) not null comment '操作人编号',
   operator_username    varchar(200) not null comment '操作人名称',
   operator_time        datetime not null comment '操作时间',
   operator_item        int(8) not null comment '操作项,10:用户，20:部门，30:角色,40:项目，41：项目管理员，50：应用，51：应用管理员',
   operator_item_desc   varchar(200) not null comment '操作项描述',
   operator_action      int(8) not null comment '操作动作，2:添加, 3:修改,4:删除,5:权限变更,6停用,7:启用',
   operator_action_desc varchar(200) not null comment '操作动作描述',
   operator_object_id   varchar(50) not null comment '操作对象编号',
   operator_content_value varchar(200) not null comment '操作内容',
   status               int(2) not null comment '操作状态 0：失败，1：成功',
   ref_dept             varchar(50) not null comment '所属公司',
   primary key (iidd)
);

alter table ff_apaas_t_business_operation_log comment '业务日志表';

/*==============================================================*/
/* Table: ff_apaas_t_business_right                             */
/*==============================================================*/
create table ff_apaas_t_business_right
(
   iidd                 varchar(50) not null comment '唯一编号',
   business_code        varchar(50) not null comment '业务标志',
   right_type_code      int(1) not null comment '权限类型（0-管理权限,1-访问权限）',
   right_type_name      varchar(50) comment '权限类型名称',
   allot_object_type    int(1) not null comment '授权对象类型(0-表示用户,1-表示用户组,2-表示部门)',
   allot_object_id      varchar(50) not null comment '授权对象编号(用户编号,用户组编号,部门编号)',
   right_item_id        varchar(50) not null comment '单个权限项编号',
   ref_deptid           varchar(50) not null comment '公司编号',
   right_source         int not null comment '权限来源 0文档管理 1知识 2配置管理',
   update_time          timestamp not null default CURRENT_TIMESTAMP comment '更新时间',
   update_userid        varchar(50) not null comment '更新用户编号',
   primary key (iidd)
);

alter table ff_apaas_t_business_right comment '业务权限表';

/*==============================================================*/
/* Table: ff_apaas_t_business_right_item                        */
/*==============================================================*/
create table ff_apaas_t_business_right_item
(
   iidd                 varchar(50) not null comment '唯一编号',
   business_code        varchar(50) not null comment '业务标识',
   right_type_code      int(1) not null comment '权限类型（0-管理权限,1-访问权限）',
   right_item_code      varchar(50) not null comment '权限项标识',
   right_item_name      varchar(50) not null comment '权限项标识名称',
   sordid               int(8) not null default 1 comment '排序值',
   update_time          timestamp not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '更新时间',
   update_userid        varchar(50) not null comment '更新用户编号',
   primary key (iidd)
);

alter table ff_apaas_t_business_right_item comment '业务权限项表';

/*==============================================================*/
/* Table: ff_apaas_t_business_right_whitelist                   */
/*==============================================================*/
create table ff_apaas_t_business_right_whitelist
(
   iidd                 varchar(50) not null comment '唯一编号',
   business_code        varchar(50) not null comment '业务标识',
   grant_object_id      varchar(50) not null comment '授权对象标识',
   ip_address           varchar(15) not null comment 'IP地址',
   creater_userid       varchar(50) not null comment '创建人编号',
   creater_time         timestamp not null default CURRENT_TIMESTAMP comment '创建时间',
   ref_deptid           varchar(50) not null comment '公司编号',
   primary key (iidd)
);

alter table ff_apaas_t_business_right_whitelist comment '业务权限白名单表';

/*==============================================================*/
/* Table: ff_apaas_t_coderule                                   */
/*==============================================================*/
create table ff_apaas_t_coderule
(
   iidd                 varchar(50) not null comment '标识ID',
   rulename             varchar(200) comment '规则名称',
   reset_typeid         int not null default 0 comment '重置类型 0 永不重置 1按日重置 2按月重置 3按年重置',
   rule_length          int not null default 3 comment '规则号长度',
   step                 int not null default 1 comment '步进值',
   appid                varchar(50) comment '关联应用ID',
   deleted              int not null default 0 comment '是否删除',
   primary key (iidd)
);

alter table ff_apaas_t_coderule comment '单号生成规则表';

/*==============================================================*/
/* Table: ff_apaas_t_codevalue                                  */
/*==============================================================*/
create table ff_apaas_t_codevalue
(
   ruleid               varchar(50) not null comment '规则ID',
   currbh               int not null default 1 comment '编号当前数值',
   last_date            date comment '最后一次生成日期',
   primary key (ruleid)
);

alter table ff_apaas_t_codevalue comment '单号生成记录表';

/*==============================================================*/
/* Table: ff_apaas_t_custom_door                                */
/*==============================================================*/
create table ff_apaas_t_custom_door
(
   iidd                 varchar(50) not null comment '主键ID',
   door_name            varchar(200) comment '门户名称',
   door_remark          varchar(500) comment '门户描述',
   source_type          int not null default 0 comment '门户来源 0平台 门户 1项目门户',
   icon                 varchar(300) comment '门户图标',
   configjson           longtext comment '配置JSON字符串',
   creater_id           varchar(50) comment '创建人ID',
   creater_name         varchar(200) comment '创建人名称',
   create_deptid        varchar(50) comment '创建部门ID',
   create_deptname      varchar(200) comment '创建部门名称',
   create_time          datetime comment '创建时间',
   update_id            varchar(50) comment '最后更新人ID',
   update_name          varchar(200) comment '最后更新人名称',
   update_time          datetime comment '最后更新时间',
   ref_projectid        varchar(50) comment '所属项目ID',
   ref_deptid           varchar(50) comment '归属公司ID',
   status               int not null default 1 comment '状态 0停用 1启用',
   deleted              int not null default 0 comment '是否删除 0否 1是',
   primary key (iidd)
);

alter table ff_apaas_t_custom_door comment '自定义门户';

/*==============================================================*/
/* Table: ff_apaas_t_custom_door_right                          */
/*==============================================================*/
create table ff_apaas_t_custom_door_right
(
   iidd                 varchar(50) not null comment '主键',
   userid               varchar(50) comment '管理员ID',
   username             varchar(200) comment '管理员名称',
   ref_doorid           varchar(50) not null comment '关联门户编号',
   ref_projectid        varchar(50) comment '所属项目ID',
   ref_deptid           varchar(50) comment '归属公司ID',
   addtime              datetime not null comment '添加时间',
   primary key (iidd)
);

alter table ff_apaas_t_custom_door_right comment '门户管理员权限信息表';

/*==============================================================*/
/* Table: ff_apaas_t_custom_flowinfo                            */
/*==============================================================*/
create table ff_apaas_t_custom_flowinfo
(
   iidd                 varchar(50) not null comment '主键ID',
   flowid               varchar(50) comment '流程ID',
   flowmodelid          varchar(50) comment '流程模型ID',
   nodemodelid          varchar(50) comment '环节模型ID',
   flowno               varchar(200) comment '流程单号',
   create_userid        varchar(50) comment '创建人ID',
   create_username      varchar(200) comment '创建人名称',
   create_deptid        varchar(50) comment '创建部门ID',
   create_deptname      varchar(200) comment '创建部门名称',
   create_orgid         varchar(50) comment '创建机构ID',
   create_orgname       varchar(200) comment '创建机构名称',
   create_time          datetime comment '创建时间',
   update_userid        varchar(50) comment '修改人ID',
   update_username      varchar(200) comment '修改人名称',
   update_time          datetime default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '修改时间',
   ref_appid            varchar(50) comment '关联应用ID',
   ref_formid           varchar(50) comment '关联表单ID',
   ref_deptid           varchar(50) comment '关联公司ID',
   ref_projectid        varchar(50) comment '关联项目ID',
   deleted              integer default 0 comment '是否删除',
   contentjson          longtext comment '表单内容',
   contentfield         longtext comment '表单字段',
   current_nodename     varchar(1000) comment '当前处理环节',
   current_hander       varchar(1000) comment '当前处理人',
   business_status      varchar(500) comment '业务状态',
   primary key (iidd)
);

alter table ff_apaas_t_custom_flowinfo comment '自定义应用记录表';

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
   iidd                 varchar(50) not null comment '主键ID',
   ref_appid            varchar(50) comment '关联应用ID',
   formjson             longtext comment '表单配置，表单设计存储JSON字符串',
   oformid              varchar(50) comment '原始表单ID',
   addtime              datetime comment '添加时间',
   ref_deptid           varchar(50) comment '关联公司ID',
   deleted              int not null default 0 comment '是否删除',
   primary key (iidd)
);

alter table ff_apaas_t_custom_form comment '自定义表单记录表';

/*==============================================================*/
/* Table: ff_apaas_t_display_column                             */
/*==============================================================*/
create table ff_apaas_t_display_column
(
   iidd                 varchar(50) not null comment '主键',
   fieldname            varchar(200) comment '字段名称',
   cname                varchar(200) comment '中文名称',
   isshow               int not null default 0 comment '是否展示 0否 1是',
   sortid               int comment '排序值',
   creater_id           varchar(50) comment '创建人ID',
   creater_name         varchar(200) comment '创建人名称',
   create_time          datetime comment '创建时间',
   appid                varchar(50) comment '所属应用ID',
   projectid            varchar(50) comment '所属项目ID',
   ref_deptid           varchar(50) comment '归属公司ID',
   deleted              int not null default 0 comment '是否删除 0否 1是',
   primary key (iidd)
);

alter table ff_apaas_t_display_column comment '数据列表展示列存储表';

/*==============================================================*/
/* Table: ff_apaas_t_exception_record                           */
/*==============================================================*/
create table ff_apaas_t_exception_record
(
   iidd                 varchar(50) not null comment '唯一编号',
   exid                 varchar(50) not null comment '例外记录唯一编码',
   task_config_id       varchar(50) not null comment '定制任务配置编号',
   create_time          datetime comment '创建时间',
   primary key (iidd)
);

alter table ff_apaas_t_exception_record comment '定时任务例外记录表';

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

alter table ff_apaas_t_fastopinion comment '快速意见管理表';

/*==============================================================*/
/* Table: ff_apaas_t_flowlink_info                              */
/*==============================================================*/
create table ff_apaas_t_flowlink_info
(
   iidd                 varchar(50) not null comment '数据编号',
   flowid               varchar(50) comment '主流程编号',
   flowno               varchar(50) comment '主流程单号',
   flowmodelid          varchar(50) comment '流程模型编号',
   nodemodelid          varchar(50) comment '环节模型编号',
   link_flowid          varchar(50) comment '关联流程编号',
   link_flowno          varchar(50) comment '关联流程单号',
   link_type            int comment '关联类型 (0，关联，1-子流程串行，2子流程并行)',
   close_mode           int comment '连接类型 0正常结束 1强制结束',
   ref_projectid        varchar(50) comment '所属项目ID',
   ref_deptid           varchar(50) comment '关联公司ID',
   create_id            varchar(50) comment '创建用户编号',
   create_name          varchar(50) comment '创建用户名称',
   create_time          datetime comment '数据创建时间',
   primary key (iidd)
);

alter table ff_apaas_t_flowlink_info comment '流程关联信息表';

/*==============================================================*/
/* Table: ff_apaas_t_local_method                               */
/*==============================================================*/
create table ff_apaas_t_local_method
(
   iidd                 varchar(50) not null comment '唯一编号',
   chinese_name         varchar(200) not null comment '方法功能名字',
   method_name          varchar(200) not null comment '方法名',
   sort                 int(2) not null default 1 comment '排序值',
   create_time          timestamp not null default CURRENT_TIMESTAMP comment '创建时间',
   ref_dept_id          varchar(50) comment '公司编号',
   ref_projectid        varchar(50) comment '项目编号',
   types                int not null default 1 comment '定时任务类型',
   primary key (iidd)
);

alter table ff_apaas_t_local_method comment '本地方法表';

/*==============================================================*/
/* Table: ff_apaas_t_login_lock                                 */
/*==============================================================*/
create table ff_apaas_t_login_lock
(
   login_name           varchar(50) not null comment '登录账号',
   user_name            varchar(50) not null comment '用户名称',
   lock_time            datetime not null comment '锁定时间',
   account_lock_time    decimal(18, 1) not null comment '锁定时长(小时)',
   expire_time          datetime not null comment '失效时间',
   apply_unlock         tinyint(5) not null default 0 comment '是否申请解锁(0否,1:是)',
   primary key (login_name)
)
ENGINE = InnoDB
  DEFAULT CHARACTER SET = 'utf8' COMMENT = '已锁定账号清单表';

alter table ff_apaas_t_login_lock comment '已锁定账号清单表';

/*==============================================================*/
/* Table: ff_apaas_t_manager_app_info                           */
/*==============================================================*/
create table ff_apaas_t_manager_app_info
(
   iidd                 varchar(50) not null comment '主键',
   userid               varchar(50) comment '管理员ID',
   username             varchar(200) comment '管理员名称',
   loginname            varchar(100) comment '登录账号',
   creater_id           varchar(50) comment '创建人ID',
   creater_name         varchar(200) comment '创建人名称',
   create_deptid        varchar(50) comment '创建部门ID',
   create_deptname      varchar(200) comment '创建部门名称',
   create_time          datetime comment '创建时间',
   ref_projectid        varchar(50) comment '所属项目ID',
   ref_deptid           varchar(50) comment '归属公司ID',
   sortid               int not null default 0 comment '排序ID',
   primary key (iidd)
);

alter table ff_apaas_t_manager_app_info comment '应用管理员信息表';

/*==============================================================*/
/* Table: ff_apaas_t_manager_info                               */
/*==============================================================*/
create table ff_apaas_t_manager_info
(
   iidd                 varchar(50) not null comment '主键',
   userid               varchar(50) comment '管理员ID',
   username             varchar(200) comment '管理员名称',
   loginname            varchar(100) comment '登录账号',
   addtime              datetime not null comment '添加时间',
   ref_deptid           varchar(50) comment '归属公司ID',
   primary key (iidd)
);

alter table ff_apaas_t_manager_info comment '项目管理员信息表，如果在这个表存在则表示用户可以添加项目';

/*==============================================================*/
/* Table: ff_apaas_t_mobile_app_bind                            */
/*==============================================================*/
create table ff_apaas_t_mobile_app_bind
(
   iidd                 varchar(50) not null comment '主键',
   cid                  varchar(200) not null comment '个推CID',
   sys_userid           varchar(50) not null comment '后台用户id',
   addtime              datetime not null comment '添加时间',
   ref_deptid           varchar(50) not null comment '归属公司ID',
   primary key (iidd)
);

alter table ff_apaas_t_mobile_app_bind comment '记录个推cid与后台用户绑定关系';

/*==============================================================*/
/* Table: ff_apaas_t_mobile_terminal_bind                       */
/*==============================================================*/
create table ff_apaas_t_mobile_terminal_bind
(
   iidd                 varchar(50) not null comment '主键',
   source_type          int not null default 1 comment '来源类型 1微信公众号 2微信小程序 3企业微信 4钉钉',
   source_identy        varchar(200) not null comment '来源标识 如微信公众号appid，企业微信应用的AgentId',
   user_identy          varchar(200) not null default '10' comment '用户标识，如微信公众号的openid，企业微信的userid',
   sys_userid           varchar(50) not null comment '后台用户id',
   addtime              datetime not null comment '添加时间',
   ref_deptid           varchar(50) not null comment '归属公司ID',
   primary key (iidd)
);

alter table ff_apaas_t_mobile_terminal_bind comment '移动端绑定用户记录';

/*==============================================================*/
/* Table: ff_apaas_t_mobile_terminal_user                       */
/*==============================================================*/
create table ff_apaas_t_mobile_terminal_user
(
   iidd                 varchar(50) not null comment '主键',
   source_type          int not null default 1 comment '来源类型 1微信公众号 2微信小程序 3企业微信 4钉钉',
   source_identy        varchar(200) not null comment '来源标识 如微信公众号appid，企业微信应用的AgentId',
   user_identy          varchar(200) not null default '10' comment '用户标识，如微信公众号的openid，企业微信的userid',
   user_name            varchar(200) comment '用户昵称',
   sex                  integer not null default 0 comment '用户性别 1男 2女 0未知',
   province             varchar(200) comment '省份',
   city                 varchar(200) comment '城市',
   country              varchar(200) comment '国家',
   headimgurl           varchar(500) comment '头像',
   addtime              datetime not null comment '添加时间',
   primary key (iidd)
);

alter table ff_apaas_t_mobile_terminal_user comment '移动端关注用户记录';

/*==============================================================*/
/* Table: ff_apaas_t_notice_log                                 */
/*==============================================================*/
create table ff_apaas_t_notice_log
(
   iidd                 varchar(50) not null comment '主键ID',
   notice_type          longtext comment '通知方式',
   notice_object        longtext comment '通知对象',
   notice_content       longtext comment '通知内容',
   notice_source        varchar(50) comment '通知来源(自定义标识用于查询)',
   remark               longtext comment '备注信息',
   create_userid        varchar(50) comment '创建人ID',
   create_username      varchar(200) comment '创建人名称',
   create_deptid        varchar(50) comment '创建部门ID',
   create_deptname      varchar(200) comment '创建部门名称',
   create_orgid         varchar(50) comment '创建机构ID',
   create_orgname       varchar(200) comment '创建机构名称',
   create_time          datetime comment '创建时间',
   primary key (iidd)
);

alter table ff_apaas_t_notice_log comment '通知日志表';

/*==============================================================*/
/* Table: ff_apaas_t_notice_method                              */
/*==============================================================*/
create table ff_apaas_t_notice_method
(
   method_id            int not null comment '主键ID',
   method_name          varchar(100) comment '方法名',
   is_show              int not null default 0 comment '是否显示 (1：显示,0：不显示)',
   primary key (method_id)
);

alter table ff_apaas_t_notice_method comment '通知方法种类表';

/*==============================================================*/
/* Table: ff_apaas_t_notice_method_config                       */
/*==============================================================*/
create table ff_apaas_t_notice_method_config
(
   iidd                 varchar(50) not null comment '主键ID',
   method_id            int not null comment '方法id',
   method_name          varchar(100) comment '方法名',
   config_value         text comment '配置JSON对象',
   is_platform          int not null default 0 comment '是否为平台配置 0否 1是',
   external_enable      tinyint(1) comment '外部是否启用(0:否, 1: 是)',
   ref_deptid           varchar(50) comment '归属公司ID',
   primary key (iidd),
   unique key AK_uq_method_id (method_id)
);

alter table ff_apaas_t_notice_method_config comment '通知方式配置表';

/*==============================================================*/
/* Table: ff_apaas_t_notice_method_config_wxmp                  */
/*==============================================================*/
create table ff_apaas_t_notice_method_config_wxmp
(
   template_id          varchar(100) not null comment '模板ID',
   template_title       varchar(300) comment '模板标题',
   content_rule         text comment '模板内容格式',
   content_format       text comment '模板内容配置 JSON字符串{"aaa":"#XXX#","bbb":"#单号#"}',
   template_scene       text comment '模板适用场景[{"name": "消息提醒>待办消息","value": "0>0"}, {"name": "时效提醒>响应超时前","value":"1>0"}]',
   primary key (template_id)
);

alter table ff_apaas_t_notice_method_config_wxmp comment '微信模板消息配置记录表';

/*==============================================================*/
/* Table: ff_apaas_t_notice_method_enable                       */
/*==============================================================*/
create table ff_apaas_t_notice_method_enable
(
   iidd                 varchar(50) not null comment '主键ID',
   method_id            int comment '方法id',
   method_name          varchar(100) comment '方法名',
   projectid            varchar(50) comment '所属项目ID',
   ref_deptid           varchar(50) comment '归属公司ID',
   primary key (iidd)
);

alter table ff_apaas_t_notice_method_enable comment '通知方式启用表';

/*==============================================================*/
/* Table: ff_apaas_t_online_users                               */
/*==============================================================*/
create table ff_apaas_t_online_users
(
   token                varchar(50) not null comment 'token编号',
   userid               varchar(50) not null comment '用户唯一编号',
   ref_deptid           varchar(50) not null comment '公司编号',
   login_time           datetime not null comment '用户登录时间',
   expire_time          datetime not null comment '失效时间',
   primary key (token)
);

alter table ff_apaas_t_online_users comment '在线用户';

/*==============================================================*/
/* Table: ff_apaas_t_outer_link                                 */
/*==============================================================*/
create table ff_apaas_t_outer_link
(
   iidd                 varchar(50) not null comment '主键ID',
   link_type            int not null default 0 comment '外链类型 0数据分享 1数据补录 2数据新增 3数据查询',
   creater_id           varchar(50) comment '创建人ID',
   creater_name         varchar(200) comment '创建人名称',
   create_deptid        varchar(50) comment '创建部门ID',
   create_deptname      varchar(200) comment '创建部门名称',
   create_time          datetime comment '创建时间',
   ref_appid            varchar(50) comment '关联应用ID',
   ref_deptid           varchar(50) comment '归属公司ID',
   order_id             varchar(50) comment '工单主键ID 当应用类型为基础资料时，此字段不为空，值为业务表记录主键ID值',
   messageid            varchar(50) comment '工单messageid 当应用类型为流程应用，数据分享与数据补录时此字段不为空，取对应流程工单的消息ID值',
   flowid               varchar(50) comment '工单flowid',
   flowmodelid          varchar(50) comment '工单flowmodelid 当应用类型为流程应用，数据新增时此字段不为空，取对应流程模型id值',
   begin_time           datetime comment '链接访问开始时间 当为数据补录时，链接访问开始时间、结束时间、访问密码字段都不能为空',
   end_time             datetime comment '链接访问结束时间',
   visit_pwd            varchar(50) comment '链接访问密码',
   outer_link_url       varchar(500) comment '外链链接地址',
   primary key (iidd)
);

alter table ff_apaas_t_outer_link comment '应用数据外链记录表';

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
   iidd                 varchar(50) not null comment '主键ID',
   link_type            int not null default 0 comment '外链类型 0数据分享 1数据补录 2数据新增 3数据查询',
   enabled              int not null default 0 comment '是否启用 0否 1是',
   creater_id           varchar(50) comment '创建人ID',
   creater_name         varchar(200) comment '创建人名称',
   create_deptid        varchar(50) comment '创建部门ID',
   create_deptname      varchar(200) comment '创建部门名称',
   create_time          datetime comment '创建时间',
   ref_appid            varchar(50) comment '关联应用ID',
   ref_deptid           varchar(50) comment '归属公司ID',
   link_rule_json       longtext comment '外链配置',
   primary key (iidd)
);

alter table ff_apaas_t_outer_link_config comment '应用数据外链配置表';

/*==============================================================*/
/* Table: ff_apaas_t_password_history_tracker                   */
/*==============================================================*/
create table ff_apaas_t_password_history_tracker
(
   iidd                 bigint(20) unsigned not null auto_increment comment '主键编号',
   userid               varchar(50) not null comment '用户编号',
   passwd               varchar(100) not null comment '历史密码',
   create_time          datetime not null default CURRENT_TIMESTAMP comment '创建时间',
   primary key (iidd)
)
ENGINE = InnoDB
  DEFAULT CHARACTER SET = 'utf8' COMMENT = '历史密码跟踪器';

alter table ff_apaas_t_password_history_tracker comment '历史密码跟踪器';

/*==============================================================*/
/* Table: ff_apaas_t_password_strength                          */
/*==============================================================*/
create table ff_apaas_t_password_strength
(
   rule_id              varchar(50) not null comment '主键编号',
   pwd_strength_policy_switch tinyint(1) default 0 comment '密码强度策略开关(0:false, 1:true)',
   password_min_length  int(18) comment '密码最小长度(位)',
   password_rule        varchar(20) comment '密码组成规则(大写,小写,特殊字符,数字,0关闭,1:开启, 0,1,0,0)',
   account_lock_policy_switch tinyint(1) default 0 comment '账号锁定策略开关(0:false, 1:true)',
   password_retry_count int(18) comment '密码连续错误次数',
   account_lock_time    decimal(18, 1) comment '账号登录锁定时长(小时)',
   pwd_use_policy_switch tinyint(1) default 0 comment '密码使用策略开关(0:false, 1:true)',
   allow_password_duplication tinyint(1) default 1 comment '是否允许使用历史密码',
   password_change_cycle int(18) comment '允许使用周期(天)',
   force_change_passwd_rule varchar(10) default '0,0' comment '强制修改密码规则(不满足强度策略、使用周期限制,0关闭,1:开启, 1,0)',
   primary key (rule_id)
)
ENGINE = InnoDB
  DEFAULT CHARACTER SET = 'utf8' COMMENT = '密码策略设置表';

alter table ff_apaas_t_password_strength comment '密码策略设置表';

/*==============================================================*/
/* Table: ff_apaas_t_platform_config                            */
/*==============================================================*/
create table ff_apaas_t_platform_config
(
   iidd                 varchar(50) not null comment '主键ID',
   platform_name        varchar(200) comment '平台名称',
   platform_logo        text comment '平台logo 存储图片base64字符串',
   favicon              text comment '网站Favicon 存储图片base64字符串',
   language_version     varchar(50) comment '语言版本',
   platform_color       varchar(300) comment '平台主色 存储颜色编码',
   form_rank            int not null default 0 comment '标签对齐方式 0 左对齐 1 右对齐 2顶部对齐',
   form_field_width     int not null default 0 comment '表单字段宽度',
   ref_deptid           varchar(50) comment '归属公司ID',
   platform_small_icon  text comment '平台小图标',
   home_page_style      int default 0 comment '首页风格 (0:上下结构 1:左右结构)',
   home_page_project_style int default 0 comment '首页项目展示风格 (0:项目平铺  1:应用平铺)',
   home_banner          longtext comment '首页banner图配置',
   primary key (iidd),
   unique key AK_key_refdeptid (ref_deptid)
);

alter table ff_apaas_t_platform_config comment '平台配置表';

/*==============================================================*/
/* Table: ff_apaas_t_project_info                               */
/*==============================================================*/
create table ff_apaas_t_project_info
(
   iidd                 varchar(50) not null comment '主键ID',
   project_name         varchar(300) comment '项目名称',
   remark               text comment '项目描述',
   logo_url             varchar(300) comment '项目LOGO',
   creater_id           varchar(50) comment '创建人ID',
   creater_name         varchar(200) comment '创建人名称',
   create_deptid        varchar(50) comment '创建部门ID',
   create_deptname      varchar(200) comment '创建部门名称',
   create_time          datetime comment '创建时间',
   update_id            varchar(50) comment '最后更新人ID',
   update_name          varchar(200) comment '最后更新人名称',
   update_time          datetime comment '最后更新时间',
   deleted              int not null default 0 comment '是否删除 0否 1是',
   project_status       int not null default 1 comment '项目状态 0停用 1启用',
   sortid               int not null default 0 comment '排序数字',
   ref_deptid           varchar(50) comment '归属公司ID',
   primary key (iidd)
);

alter table ff_apaas_t_project_info comment '项目信息表';

/*==============================================================*/
/* Table: ff_apaas_t_qiyuesuo_config                            */
/*==============================================================*/
create table ff_apaas_t_qiyuesuo_config
(
   iidd                 varchar(50) not null comment '主键ID',
   api_url              varchar(200) comment '开放平台接口地址',
   app_token            varchar(200) comment 'AppToken',
   app_secret           varchar(200) comment 'AppSecret',
   app_range            longtext comment '授权应用范围',
   create_userid        varchar(50) comment '创建人ID',
   create_username      varchar(200) comment '创建人名称',
   create_deptid        varchar(50) comment '创建部门ID',
   create_deptname      varchar(200) comment '创建部门名称',
   create_orgid         varchar(50) comment '创建机构ID',
   create_orgname       varchar(200) comment '创建机构名称',
   create_time          datetime comment '创建时间',
   update_userid        varchar(50) comment '修改人ID',
   update_username      varchar(200) comment '修改人名称',
   update_time          datetime comment '修改时间',
   deleted              integer default 0 comment '是否删除',
   ref_deptid           varchar(50) comment '关联公司ID',
   callback_secret_key  varchar(200) comment '加密回调信息的SecretKey',
   company_name         varchar(100) comment '认证公司名称',
   admin_name           varchar(50) comment '管理员姓名',
   admin_mobile         varchar(50) comment '管理员手机号',
   primary key (iidd)
);

alter table ff_apaas_t_qiyuesuo_config comment '契约锁配置表';

/*==============================================================*/
/* Table: ff_apaas_t_qiyuesuo_contract                          */
/*==============================================================*/
create table ff_apaas_t_qiyuesuo_contract
(
   iidd                 varchar(50) not null comment '合同ID',
   subject              varchar(200) comment '合同主题',
   sn                   varchar(200) comment '合同编号',
   status               varchar(200) comment '合同状态',
   publish_time         datetime comment '发起时间',
   result_json          longtext comment '返回结果',
   field_mapping        longtext comment '字段映射',
   remark               longtext comment '备注信息',
   create_userid        varchar(50) comment '创建人ID',
   create_username      varchar(200) comment '创建人名称',
   create_deptid        varchar(50) comment '创建部门ID',
   create_deptname      varchar(200) comment '创建部门名称',
   create_orgid         varchar(50) comment '创建机构ID',
   create_orgname       varchar(200) comment '创建机构名称',
   create_time          datetime comment '创建时间',
   update_userid        varchar(50) comment '修改人ID',
   update_username      varchar(200) comment '修改人名称',
   update_time          datetime comment '修改时间',
   deleted              integer default 0 comment '是否删除',
   ref_deptid           varchar(50) comment '关联公司ID',
   ref_appid            varchar(50) comment '关联应用ID',
   ref_flowid           varchar(50) comment '关联流程ID',
   primary key (iidd)
);

alter table ff_apaas_t_qiyuesuo_contract comment '契约锁合同记录表';

/*==============================================================*/
/* Table: ff_apaas_t_register_exporter                          */
/*==============================================================*/
create table ff_apaas_t_register_exporter
(
   iidd                 varchar(50) not null comment '主键',
   ref_deptid           varchar(50) not null comment '注册公司ID',
   create_userid        varchar(50) not null comment '导出执行用户ID',
   create_time          datetime not null comment '导出开始时间',
   completion_time      datetime not null comment '导出完成时间',
   status               int not null default 0 comment '导出结果(0成功,1失败)',
   export_paths         varchar(300) not null comment '导出数据路径',
   request_param        varchar(500) not null comment '请求参数',
   deleted              int not null default 0 comment '是否删除(0否,1是)',
   primary key (iidd)
);

/*==============================================================*/
/* Table: ff_apaas_t_relation_view_config                       */
/*==============================================================*/
create table ff_apaas_t_relation_view_config
(
   iidd                 varchar(50) not null comment '主键ID',
   view_name            varchar(200) comment '关联视图名称',
   source_app_id        varchar(50) comment '源应用ID',
   source_app_name      varchar(200) comment '源应用名称',
   target_app_id        varchar(50) comment '目标应用ID',
   target_app_name      varchar(200) comment '目标应用名称',
   rule_json            longtext comment '关联视图规则配置',
   field_map_json       longtext comment '关联属性映射配置',
   create_userid        varchar(50) comment '创建人ID',
   create_username      varchar(200) comment '创建人名称',
   create_deptid        varchar(50) comment '创建部门ID',
   create_deptname      varchar(200) comment '创建部门名称',
   create_orgid         varchar(50) comment '创建机构ID',
   create_orgname       varchar(200) comment '创建机构名称',
   create_time          datetime comment '创建时间',
   update_userid        varchar(50) comment '修改人ID',
   update_username      varchar(200) comment '修改人名称',
   update_time          datetime comment '修改时间',
   ref_projectid        varchar(50) comment '关联项目ID',
   ref_deptid           varchar(50) comment '关联公司ID',
   deleted              integer default 0 comment '是否删除',
   sortid               integer comment '排序号',
   primary key (iidd)
);

alter table ff_apaas_t_relation_view_config comment '关联视图配置表';

/*==============================================================*/
/* Table: ff_apaas_t_right_app_lot                              */
/*==============================================================*/
create table ff_apaas_t_right_app_lot
(
   iidd                 varchar(50) not null comment '主键',
   actiontype           int not null comment '权限类别 0数据引用 1应用管理',
   userid               varchar(50) comment '管理员ID',
   username             varchar(200) comment '管理员名称',
   loginname            varchar(100) comment '登录账号',
   ref_appid            varchar(50) not null comment '关联应用编号',
   ref_projectid        varchar(50) comment '所属项目ID',
   ref_deptid           varchar(50) comment '归属公司ID',
   addtime              datetime not null comment '添加时间',
   primary key (iidd)
);

alter table ff_apaas_t_right_app_lot comment '应用管理员权限信息表 如果在这个表存在则表示用户可以选择 或者 管理某个应用';

/*==============================================================*/
/* Table: ff_apaas_t_right_lot                                  */
/*==============================================================*/
create table ff_apaas_t_right_lot
(
   iidd                 varchar(50) not null comment '主键',
   userid               varchar(50) comment '管理员ID',
   username             varchar(200) comment '管理员名称',
   loginname            varchar(100) comment '登录账号',
   ref_projectid        varchar(50) comment '所属项目ID',
   ref_deptid           varchar(50) comment '归属公司ID',
   addtime              datetime not null comment '添加时间',
   primary key (iidd)
);

alter table ff_apaas_t_right_lot comment '项目管理员权限信息表 如果在这表存在则表示用户对于某个项目信息可以维护';

/*==============================================================*/
/* Table: ff_apaas_t_searchcond                                 */
/*==============================================================*/
create table ff_apaas_t_searchcond
(
   iidd                 varchar(50) not null comment '主键',
   condname             varchar(200) comment '条件名称',
   cname                text comment '条件规则 存储条件的JSON字符串',
   creater_id           varchar(50) comment '创建人ID',
   creater_name         varchar(200) comment '创建人名称',
   create_time          datetime comment '创建时间',
   appid                varchar(50) comment '所属应用ID',
   projectid            varchar(50) comment '所属项目ID',
   ref_deptid           varchar(50) comment '归属公司ID',
   deleted              int not null default 0 comment '是否删除 0否 1是',
   primary key (iidd)
);

alter table ff_apaas_t_searchcond comment '搜索条件存储表';

/*==============================================================*/
/* Table: ff_apaas_t_serial_number_coderule                     */
/*==============================================================*/
create table ff_apaas_t_serial_number_coderule
(
   iidd                 varchar(50) not null comment '主键ID',
   currbh               int not null default 1 comment '编号当前数值',
   last_date            date comment '最后一次生成日期',
   fieldname            varchar(50) not null comment '字段名称',
   appid                varchar(50) not null comment '所属应用ID',
   projectid            varchar(50) comment '所属项目ID',
   primary key (iidd)
);

alter table ff_apaas_t_serial_number_coderule comment '流水号生成记录表';

/*==============================================================*/
/* Table: ff_apaas_t_synch_field_mapping                        */
/*==============================================================*/
create table ff_apaas_t_synch_field_mapping
(
   iidd                 varchar(50) not null comment '主键ID',
   ref_synch_id         varchar(50) comment '关联同步规则配置表主键',
   source_field_name    varchar(200) comment '原始字段名称',
   source_field_code    varchar(200) comment '原始字段编码',
   is_primary_key       int not null default 0 comment '是否主键',
   apaas_field_name     varchar(200) comment '阿凡搭应用字段名称',
   apaas_field_code     varchar(200) comment '阿凡搭应用字段编码',
   is_update            int not null default 0 comment '是否更新',
   primary key (iidd)
);

alter table ff_apaas_t_synch_field_mapping comment '同步字段映射表';

/*==============================================================*/
/* Table: ff_apaas_t_synch_log                                  */
/*==============================================================*/
create table ff_apaas_t_synch_log
(
   iidd                 varchar(50) not null comment '主键ID',
   ref_synch_id         varchar(50) comment '关联同步规则配置表主键',
   success_msg          varchar(500) comment '同步成功日志',
   error_json           longtext comment '同步失败日志',
   addtime              datetime comment '添加时间',
   primary key (iidd)
);

alter table ff_apaas_t_synch_log comment '同步日志记录表';

/*==============================================================*/
/* Table: ff_apaas_t_synch_rule                                 */
/*==============================================================*/
create table ff_apaas_t_synch_rule
(
   iidd                 varchar(50) not null comment '主键ID',
   synch_type           int not null default 0 comment '同步方式 0直连数据库 1读取文件 2请求接口 3AD域',
   synch_config         longtext comment '对应同步方式配置',
   synch_appid          varchar(50) comment '同步的应用ID',
   synch_flowmodel_id   varchar(50) comment '同步的流程模型ID',
   synch_action_id      integer comment '同步流程模型起草环节按钮ID',
   synch_userid         varchar(50) comment '同步用户ID',
   remark               varchar(500) comment '备注',
   primary key (iidd)
);

alter table ff_apaas_t_synch_rule comment '同步规则配置表';

/*==============================================================*/
/* Table: ff_apaas_t_template_config                            */
/*==============================================================*/
create table ff_apaas_t_template_config
(
   iidd                 varchar(50) not null comment '唯一编号',
   template_type        int(2) not null comment '类型：1:发起流程任务,2:应用更新,3:应用数据推送',
   template             text not null comment '模板json',
   placeholder          varchar(2000) not null comment '模板值json',
   ref_deptid           varchar(50) not null comment '公司编号',
   create_id            varchar(50) not null comment '创建人编号',
   primary key (iidd)
);

alter table ff_apaas_t_template_config comment '定时任务模板表';

/*==============================================================*/
/* Table: ff_apaas_t_time_process                               */
/*==============================================================*/
create table ff_apaas_t_time_process
(
   iidd                 varchar(50) not null comment '唯一编码',
   task_type            int(2) not null comment '1:定时发起任务2：定时更新数据 3：定时推送数据  4：定时任务',
   task_name            varchar(200) not null comment '任务名称',
   execute_type         int(2) not null comment '1:按流程发起，2:从系统选择一个任务发起，3：按应用更新，4：从系统选择一个方法更新，5：按应用推送数据，6：从系统选择一个方法推送数据',
   target_flow_model_id varchar(50) comment '目标流程编号',
   appid                varchar(50) comment '应用编号',
   invoke_target        varchar(200) not null comment 'fftask的方法名',
   allottype            int(2) comment '类型 0表示用户 1表示用户组 2表示部门',
   allotobjectid        varchar(2000) comment '任务责任人ID',
   data_template_config varchar(50) comment '模板编号',
   remark               varchar(500) comment '备注',
   create_id            varchar(50) comment '创建人,用于发起流程',
   create_name          varchar(100) comment '创建人名称',
   create_time          datetime not null comment '创建时间',
   ref_dept_id          varchar(50) comment '公司编号',
   job_id               varchar(50) not null comment 'sys_job表编号',
   ref_projectid        varchar(50) comment '项目编号',
   types                int not null default 1 comment '定时任务类型',
   primary key (iidd)
);

alter table ff_apaas_t_time_process comment '定时任务配置表';

/*==============================================================*/
/* Table: ff_apaas_t_timing_task                                */
/*==============================================================*/
create table ff_apaas_t_timing_task
(
   iidd                 varchar(50) not null comment '唯一编码',
   task_type            int not null comment '1：定时任务 2：定时推送 3：二维码配置 4：操作列配置',
   task_name            varchar(200) not null comment '任务名称',
   execute_type         int not null comment '1：正常发起 2：按表单字段规则发起 3：从系统选择一个任务执行 4：数据新增 5：数据提交 6：数据更新',
   form_field_rule      longtext comment '表单字段规则',
   invoke_target        varchar(2000) comment 'fftask的方法名',
   tartget_projectid    varchar(50) comment '目标项目编号',
   tartget_appid        varchar(50) comment '目标应用编号',
   target_flow_model_id varchar(200) comment '目标流程编号',
   target_flow_action_id int comment '流程动作编号',
   default_value_rule   longtext comment '默认值规则',
   receiver_rule        longtext comment '接收人规则',
   is_repeat            int comment '是否可重复生成 0否 1是',
   job_id               varchar(50) not null comment 'sys_job表编号',
   create_id            varchar(50) not null comment '创建人',
   create_name          varchar(100) not null comment '创建人名称',
   create_time          datetime not null comment '创建时间',
   ref_appid            varchar(50) not null comment '应用编号',
   ref_projectid        varchar(50) not null comment '项目编号',
   ref_dept_id          varchar(50) not null comment '公司编号',
   primary key (iidd)
);

alter table ff_apaas_t_timing_task comment '新定时任务配置表';

/*==============================================================*/
/* Table: ff_apaas_t_user_regist                                */
/*==============================================================*/
create table ff_apaas_t_user_regist
(
   iidd                 varchar(50) not null comment '主键ID',
   account_type         int default 1 comment '注册用途 0企业自用 1对外服务',
   user_name            varchar(200) comment '姓名',
   email                varchar(300) comment '邮箱地址',
   mobile               varchar(30) comment '手机号码',
   company_name         varchar(300) comment '企业名称',
   job_name             varchar(100) comment '职位',
   belong_trade_one     varchar(100) comment '所属一级行业',
   belong_trade_two     varchar(100) comment '所属二级行业',
   company_scale        varchar(100) comment '企业规模',
   is_active            int default 0 comment '是否激活 0否 1是',
   deleted              int default 0 comment '是否删除',
   addtime              datetime comment '添加时间',
   ref_deptid           varchar(50) comment '关联公司ID',
   ref_userid           varchar(50) comment '关联用户ID',
   inviter_info         text comment '邀请人信息 ',
   primary key (iidd)
);

alter table ff_apaas_t_user_regist comment '用户注册信息表';

/*==============================================================*/
/* Table: ff_apaas_ts_actormembers                              */
/*==============================================================*/
create table ff_apaas_ts_actormembers
(
   id                   varchar(50) not null comment '主键',
   actorid              varchar(50) not null comment '用户组编号',
   actortype            int not null comment '成员类别',
   objectid             varchar(50) not null comment '成员编号',
   primary key (id)
);

alter table ff_apaas_ts_actormembers comment '用户组成员表';

/*==============================================================*/
/* Table: ff_apaas_ts_actors                                    */
/*==============================================================*/
create table ff_apaas_ts_actors
(
   actorid              varchar(50) not null comment '用户组编号',
   actorname            varchar(200) comment '用户组名称',
   actordesc            text comment '描述',
   manager_id           text comment '管理员编号',
   manager_name         text comment '管理员名称',
   use_area             int default 0 comment '使用范围 0项目内 1全局',
   ref_projectid        varchar(50) comment '所属项目ID',
   ref_deptid           varchar(50) comment '归属公司ID',
   creater_id           varchar(50) comment '创建人ID',
   creater_name         varchar(200) comment '创建人名称',
   addtime              datetime comment '添加时间',
   primary key (actorid)
);

alter table ff_apaas_ts_actors comment '用户组信息表';

/*==============================================================*/
/* Table: ff_apaas_ts_business_api_group                        */
/*==============================================================*/
create table ff_apaas_ts_business_api_group
(
   iidd                 varchar(50) not null comment '分组ID',
   group_name           varchar(255) not null comment '分组名称',
   parent_id            varchar(50) comment '父级编号',
   sort_id              int not null default 0 comment '排序值',
   class_layer          int not null default 1 comment '所属层级',
   class_list           varchar(500) not null comment '层级字符组',
   create_time          datetime not null comment '创建时间',
   create_id            varchar(50) not null comment '创建人ID',
   create_person        varchar(50) not null comment '创建人名称',
   update_time          datetime not null comment '更新时间',
   update_id            varchar(50) not null comment '更新人ID',
   update_person        varchar(50) not null comment '更新人名称',
   ref_project_id       varchar(50) not null comment '项目编号',
   ref_dept_id          varchar(50) not null comment '公司编号',
   primary key (iidd)
)
COMMENT '业务API分组管理';

/*==============================================================*/
/* Table: ff_apaas_ts_cross_project_right                       */
/*==============================================================*/
create table ff_apaas_ts_cross_project_right
(
   iidd                 varchar(50) not null comment '主键',
   userid               varchar(50) not null comment '授权用户ID',
   username             varchar(200) not null comment '授权用户名称',
   project_id           varchar(50) not null comment '项目ID',
   project_name         varchar(300) comment '项目名称',
   app_value            text comment '应用集合 存储格式为[{value:''应用id'',name:''应用名称''}]',
   sortid               int not null comment '排序值',
   addtime              datetime not null comment '添加时间',
   ref_deptid           varchar(50) not null comment '归属公司ID',
   primary key (iidd)
);

alter table ff_apaas_ts_cross_project_right comment '跨项目调用授权记录表';

/*==============================================================*/
/* Table: ff_apaas_ts_dept                                      */
/*==============================================================*/
create table ff_apaas_ts_dept
(
   deptid               varchar(50) not null comment '部门编号',
   fullid               varchar(1000) comment '部门全编号字符串',
   orgid                varchar(50) comment '所在机构编号',
   deptkind             int not null default 0 comment '部门性质',
   parentid             varchar(50) comment '上级部门编码',
   deptname             varchar(200) comment '部门名称',
   sortid               int not null default 0 comment '排序值',
   managerid            text comment '部门管理员编号',
   leaderid             text comment '部门领导编号',
   description          varchar(1000) comment '部门描述',
   deleted              int not null default 0 comment '是否删除 0否、1是',
   createid             varchar(50) comment '创建人编号',
   createdate           datetime comment '创建时间',
   updateid             varchar(50) comment '修改人编号',
   updatedate           datetime comment '修改时间',
   deptcode             varchar(100) comment '部门编码 此字段主要用于同步第三方部门时 存储第三方部门唯一标识',
   ref_deptid           varchar(50) comment '归属公司ID',
   primary key (deptid)
);

alter table ff_apaas_ts_dept comment '部门信息表';

/*==============================================================*/
/* Table: ff_apaas_ts_menu                                      */
/*==============================================================*/
create table ff_apaas_ts_menu
(
   iidd                 varchar(50) not null comment '主键',
   menuname             varchar(200) not null comment '菜单名称',
   menucode             varchar(50) not null comment '菜单编码',
   menuurl              varchar(200) comment '菜单URL',
   parentiidd           varchar(50) comment '父菜单ID',
   classlist            varchar(500) not null comment '菜单父ID组',
   classlayer           int not null default 1 comment '菜单层级',
   sortid               int not null default 0 comment '排序数字',
   menutype             int not null default 0 comment '菜单类型 0分组 1菜单 2权限',
   deleted              int not null default 0 comment '是否删除(1是 0否)',
   icon                 varchar(300) comment '菜单图标',
   ref_appid            varchar(50) comment '关联应用ID',
   ref_projectid        varchar(50) comment '所属项目ID',
   ref_deptid           varchar(50) comment '归属公司ID',
   addtime              datetime comment '添加时间',
   primary key (iidd)
);

alter table ff_apaas_ts_menu comment '菜单表';

/*==============================================================*/
/* Table: ff_apaas_ts_menu_mobile                               */
/*==============================================================*/
create table ff_apaas_ts_menu_mobile
(
   iidd                 varchar(50) not null comment '主键id',
   menucode             varchar(50) comment '菜单编码',
   menuname             varchar(200) comment '菜单名称',
   create_id            varchar(50) comment '创建人ID',
   create_name          varchar(200) comment '创建人名称',
   create_deptid        varchar(50) comment '创建部门ID',
   create_deptname      varchar(200) comment '创建部门名称',
   create_time          datetime comment '创建时间',
   ref_projectid        varchar(50) comment '关联项目ID',
   ref_deptid           varchar(50) comment '归属公司ID',
   primary key (iidd)
);

alter table ff_apaas_ts_menu_mobile comment '移动端不可展示的菜单';

/*==============================================================*/
/* Table: ff_apaas_ts_open_api_group                            */
/*==============================================================*/
create table ff_apaas_ts_open_api_group
(
   iidd                 varchar(50) not null comment '分组ID',
   group_name           varchar(255) not null comment '分组名称',
   parent_id            varchar(50) comment '父级编号',
   sort_id              int not null default 0 comment '排序值',
   class_layer          int not null default 1 comment '所属层级',
   class_list           varchar(500) not null comment '层级字符组',
   update_time          datetime not null comment '更新时间',
   create_person        varchar(50) not null comment '创建人',
   primary key (iidd)
)
COMMENT 'openApi分组管理';

/*==============================================================*/
/* Table: ff_apaas_ts_oprateallot                               */
/*==============================================================*/
create table ff_apaas_ts_oprateallot
(
   iidd                 varchar(50) not null comment '主键',
   allottype            int not null default 0 comment '授权类型 0表示用户 1表示用户组 2表示部门',
   allotobjectid        varchar(50) not null comment '授权对象编号',
   menuid               varchar(50) not null comment '菜单ID',
   menucode             varchar(50) not null comment '菜单编码',
   actiontype           varchar(200) not null comment '权限类别',
   addtime              datetime not null comment '添加时间',
   ref_deptid           varchar(50) comment '归属公司ID',
   ref_projectid        varchar(50) not null comment '归属项目ID',
   primary key (iidd)
);

alter table ff_apaas_ts_oprateallot comment '权限分配记录表';

/*==============================================================*/
/* Table: ff_apaas_ts_oprateallot_field                         */
/*==============================================================*/
create table ff_apaas_ts_oprateallot_field
(
   iidd                 varchar(50) not null comment '主键',
   allottype            int not null default 0 comment '授权类型 0表示用户 1表示用户组 2表示部门',
   allotobjectid        varchar(50) not null comment '授权对象编号',
   menuid               varchar(50) not null comment '菜单ID',
   righttype            int not null default 0 comment '权限类型 0新增、1编辑、2查看、3列表展示',
   fieldname            varchar(200) not null comment '字段名称',
   isvisible            int not null default 1 comment '是否可见',
   isedit               int not null default 1 comment '是否可编辑',
   isrequired           int not null default 1 comment '是否必填',
   addtime              datetime not null comment '添加时间',
   ref_deptid           varchar(50) comment '归属公司ID',
   ref_projectid        varchar(50) not null comment '归属项目ID',
   subtable_config      text comment '子表特殊配置',
   primary key (iidd)
);

alter table ff_apaas_ts_oprateallot_field comment '字段权限分配记录表';

/*==============================================================*/
/* Table: ff_apaas_ts_oprateallot_field_user                    */
/*==============================================================*/
create table ff_apaas_ts_oprateallot_field_user
(
   iidd                 varchar(50) not null comment '主键',
   allotobjectid        varchar(50) not null comment '授权对象编号',
   menuid               varchar(50) not null comment '菜单ID',
   righttype            int not null default 0 comment '权限类型 0新增、1编辑、2查看、3列表展示',
   fieldname            varchar(200) not null comment '字段名称',
   isvisible            int not null default 1 comment '是否可见',
   isedit               int not null default 1 comment '是否可编辑',
   isrequired           int not null default 1 comment '是否必填',
   source_type          int not null default 0 comment '来源类型 0表示用户 1表示用户组 2表示部门',
   source_id            varchar(50) comment '来源对象编号',
   addtime              datetime not null comment '添加时间',
   ref_deptid           varchar(50) comment '归属公司ID',
   ref_projectid        varchar(50) not null comment '归属项目ID',
   subtable_config      text comment '子表特殊配置',
   primary key (iidd)
);

alter table ff_apaas_ts_oprateallot_field_user comment '计算后的用户字段权限分配记录表';

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
   iidd                 varchar(50) not null comment '主键',
   allottype            int not null default 0 comment '授权类型 0表示用户 1表示用户组 2表示部门',
   allotobjectid        varchar(50) not null comment '授权对象编号',
   menuid               varchar(50) not null comment '菜单ID',
   menucode             varchar(50) not null comment '菜单编码',
   rightrange           int not null comment '权限范围 0全局 1本人发起 2本部门 3下级部门 4本机构 5下级机构  6自定义 ',
   rule_name            varchar(200) comment '规则名称',
   rule_config          text comment '规则配置',
   addtime              datetime not null comment '添加时间',
   ref_deptid           varchar(50) comment '归属公司ID',
   ref_projectid        varchar(50) not null comment '归属项目ID',
   primary key (iidd)
);

alter table ff_apaas_ts_oprateallot_rightrange comment '权限查询范围分配记录表';

/*==============================================================*/
/* Table: ff_apaas_ts_platform_manager                          */
/*==============================================================*/
create table ff_apaas_ts_platform_manager
(
   iidd                 varchar(50) not null comment '主键',
   userid               varchar(50) not null comment '授权用户ID',
   username             varchar(200) not null comment '授权用户名称',
   sortid               int not null comment '排序值',
   addtime              datetime not null comment '添加时间',
   ref_deptid           varchar(50) not null comment '归属公司ID',
   primary key (iidd)
);

alter table ff_apaas_ts_platform_manager comment '平台门户管理员';

/*==============================================================*/
/* Table: ff_apaas_ts_user                                      */
/*==============================================================*/
create table ff_apaas_ts_user
(
   userid               varchar(50) not null comment '用户编号',
   loginname            varchar(100) comment '登录账号',
   password             varchar(100) comment '登录密码',
   name                 varchar(200) comment '用户名称',
   sex                  varchar(10) comment '性别',
   jobid                varchar(200) comment '职位编号',
   job                  varchar(200) comment '职位名称',
   edulevelid           varchar(200) comment '学历编号',
   edulevel             varchar(200) comment '学历',
   telno                varchar(50) comment '电话',
   mobile               varchar(50) comment '手机号码',
   email                varchar(200) comment '邮箱',
   head_img             varchar(300) comment '头像',
   deleted              int not null default 0 comment '是否删除 0否、1是',
   agentstatus          int not null default 0 comment '代理状态',
   createid             varchar(50) comment '创建人编号',
   createdate           datetime comment '创建时间',
   updateid             varchar(50) comment '修改人编号',
   updatedate           datetime comment '修改时间',
   lockstatus           int not null default 0 comment '是否锁定 0否、1是',
   isactive             int not null default 0 comment '是否激活 0否、1是',
   usersalt             varchar(50) comment '用户密码加密随机串',
   sortid               int not null default 0 comment '排序值',
   deptid               varchar(50) comment '所在部门编号',
   account_level        int not null default 0 comment '账号级别 0 普通用户 1超级管理员',
   ref_deptid           varchar(50) comment '归属公司ID',
   is_register_user     int default 0 comment '是否注册用户',
   user_code            varchar(100) comment '员工编号 此字段主要用于同步第三方账号时 存储第三方用户唯一标识',
   primary key (userid)
);

alter table ff_apaas_ts_user comment '用户信息表';

/*==============================================================*/
/* Table: ff_apaas_ts_user_expand                               */
/*==============================================================*/
create table ff_apaas_ts_user_expand
(
   userid               varchar(50) not null comment '用户编号',
   loginname            varchar(100) comment '登录账号',
   signature            longtext comment '手写签名',
   create_time          datetime comment '创建时间',
   create_app_is_notice int default 0 comment '创建应用后是否提示(0,需要提示，1，不需要提示)',
   primary key (userid)
);

alter table ff_apaas_ts_user_expand comment '用户拓展表';

/*==============================================================*/
/* Table: ff_apaas_ts_user_launch_new_top                       */
/*==============================================================*/
create table ff_apaas_ts_user_launch_new_top
(
   iidd                 varchar(50) not null comment '主键ID',
   userid               varchar(50) not null comment '用户ID',
   oflowmodelid         varchar(50) not null comment '原始流程编号',
   toptime              datetime not null comment '置顶时间',
   primary key (iidd)
);

alter table ff_apaas_ts_user_launch_new_top comment '首页用户发起新的置顶表';

/*==============================================================*/
/* Table: ff_apaas_ts_user_oprateallot                          */
/*==============================================================*/
create table ff_apaas_ts_user_oprateallot
(
   iidd                 varchar(50) not null comment '主键',
   allotobjectid        varchar(50) not null comment '授权对象编号',
   menuid               varchar(50) not null comment '菜单ID',
   menucode             varchar(50) not null comment '菜单编码',
   actiontype           varchar(200) not null comment '权限类别',
   source_type          int not null default 0 comment '来源类型 0表示用户 1表示用户组 2表示部门',
   source_id            varchar(50) comment '来源对象编号',
   addtime              datetime not null comment '添加时间',
   ref_deptid           varchar(50) comment '归属公司ID',
   ref_projectid        varchar(50) not null comment '归属项目ID',
   primary key (iidd)
);

alter table ff_apaas_ts_user_oprateallot comment '计算后的用户权限分配记录表';

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
   iidd                 varchar(50) not null comment '主键',
   allotobjectid        varchar(50) not null comment '授权对象编号',
   menuid               varchar(50) not null comment '菜单ID',
   menucode             varchar(50) not null comment '菜单编码',
   rightrange           int not null comment '权限范围 0全局 1本人发起 2本部门 3下级部门 4本机构 5下级机构  6自定义 ',
   rule_name            varchar(200) comment '规则名称',
   rule_config          text comment '规则配置',
   source_type          int not null default 0 comment '来源类型 0表示用户 1表示用户组 2表示部门',
   source_id            varchar(50) comment '来源对象编号',
   addtime              datetime not null comment '添加时间',
   ref_deptid           varchar(50) comment '归属公司ID',
   ref_projectid        varchar(50) not null comment '归属项目ID',
   ref_rangeid          varchar(50) comment '关联权限范围分配表id',
   primary key (iidd)
);

alter table ff_apaas_ts_user_oprateallot_rightrange comment '计算后的用户权限查询范围分配记录表';

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
   id                   varchar(50) not null comment '主键',
   userid               varchar(50) comment '用户编号',
   batch                varchar(50) comment '随机串',
   indate               datetime comment '添加时间',
   primary key (id)
);

alter table ff_apaas_ts_user_temp comment '临时用户表';

/*==============================================================*/
/* Table: ff_apaas_up_attachment                                */
/*==============================================================*/
create table ff_apaas_up_attachment
(
   iidd                 varchar(50) not null comment '主键',
   userid               varchar(50) comment '用户ID',
   filename             varchar(200) comment '文件名称',
   filepath             varchar(1000) comment '文件地址',
   uptime               datetime comment '上传时间',
   deleted              int default 0 comment '是否删除(0否 1是)',
   deletetime           datetime comment '删除时间',
   deptid               varchar(50) comment '部门ID',
   orgid                varchar(50) comment '机构ID',
   appid                varchar(200) comment '机构ID',
   sufname              varchar(100) comment '文件扩展名',
   objecttype           varchar(200) comment '关联类型',
   objectid             varchar(50) comment '关联主键ID',
   username             varchar(200) comment '上传人',
   deptname             varchar(200) comment '上传部门',
   nodemodelid          varchar(50) comment '环节模型ID',
   ref_appid            varchar(50) comment '关联应用id',
   primary key (iidd)
);

alter table ff_apaas_up_attachment comment '附件上传表';

/*==============================================================*/
/* Table: ff_apaas_up_attasecurity                              */
/*==============================================================*/
create table ff_apaas_up_attasecurity
(
   iidd                 varchar(50) not null comment '主键',
   appid                varchar(200) not null comment '系统ID',
   appsecurity          varchar(200) not null comment '秘钥',
   loginname            varchar(100) comment '登录名称',
   primary key (iidd)
);

alter table ff_apaas_up_attasecurity comment '附件权限表';

/*==============================================================*/
/* Table: knowledge_t_base_info                                 */
/*==============================================================*/
create table knowledge_t_base_info
(
   iidd                 varchar(50) not null comment '主键',
   create_userid        varchar(50) comment '创建人ID',
   create_username      varchar(200) comment '创建人名称',
   create_deptid        varchar(50) comment '创建部门ID',
   create_deptname      varchar(200) comment '创建部门名称',
   create_orgid         varchar(50) comment '创建机构ID',
   create_orgname       varchar(200) comment '创建机构名称',
   create_time          datetime comment '创建时间',
   update_userid        varchar(50) comment '修改人ID',
   update_username      varchar(200) comment '修改人名称',
   update_time          datetime comment '修改时间',
   ref_deptid           varchar(50) comment '关联公司ID',
   ref_projectid        varchar(50) comment '关联项目ID',
   deleted              integer default 0 comment '是否删除',
   subject              varchar(200) comment '主题',
   tags                 varchar(200) comment '关键字',
   content              text comment '知识内容',
   type                 text comment '知识类别ID',
   refflowid            varchar(50) comment '关联流程ID',
   is_top               int(2) default 0 comment '是否指定（0：普通，1：置顶）',
   top_time             timestamp default CURRENT_TIMESTAMP comment '置顶时间,默认为知识发布时间',
   attachments          text comment '相关附件',
   primary key (iidd)
)
COMMENT '知识管理表';

alter table knowledge_t_base_info comment '知识信息表';

/*==============================================================*/
/* Table: knowledge_t_catalog                                   */
/*==============================================================*/
create table knowledge_t_catalog
(
   iidd                 varchar(50) not null comment '主键ID',
   catalogname          varchar(100) comment '类别名称',
   parentid             varchar(50) comment '父类ID',
   classlayer           int default 1 comment '所属层级',
   classlist            varchar(500) comment '层级字符组',
   sortid               int(2) default 0 comment '排序值',
   deleted              int(2) default 0 comment '是否删除',
   ref_projectid        varchar(50) comment '项目编号',
   ref_deptid           varchar(50) comment '公司编号',
   create_userid        varchar(50) comment '创建人ID',
   create_username      varchar(200) comment '创建人名称',
   create_time          timestamp default CURRENT_TIMESTAMP comment '创建时间',
   create_deptid        varchar(50) comment '创建部门ID',
   create_deptname      varchar(200) comment '创建部门名称',
   create_orgid         varchar(50) comment '创建机构ID',
   update_userid        varchar(50) comment '修改人ID',
   update_username      varchar(200) comment '修改人名称',
   update_time          datetime comment '修改时间',
   primary key (iidd)
)
COMMENT '知识类别表';

alter table knowledge_t_catalog comment '知识类别表';

/*==============================================================*/
/* Table: knowledge_t_comment                                   */
/*==============================================================*/
create table knowledge_t_comment
(
   iidd                 varchar(50) not null comment '评论编号',
   content              varchar(500) comment '评论内容',
   reply_id             varchar(50) comment '回复评论ID或知识ID',
   ref_commentid        varchar(50) comment '所属评论ID',
   ref_knowledgeid      varchar(50) comment '所属知识ID',
   user_id              varchar(50) comment '评论人编号',
   ref_deptid           varchar(50) comment '公司编号',
   ref_projectid        varchar(50) comment '项目编号',
   publish_time         timestamp default CURRENT_TIMESTAMP comment '评论时间',
   primary key (iidd)
);

alter table knowledge_t_comment comment '知识评论表';

/*==============================================================*/
/* Table: knowledge_t_filed                                     */
/*==============================================================*/
create table knowledge_t_filed
(
   iidd                 varchar(50) not null comment '主键ID',
   create_userid        varchar(50) comment '创建人ID',
   create_username      varchar(200) comment '创建人名称',
   create_deptid        varchar(50) comment '创建部门ID',
   create_deptname      varchar(200) comment '创建部门名称',
   create_orgid         varchar(50) comment '创建机构ID',
   create_time          datetime comment '创建时间',
   project_id           varchar(50) not null comment '项目ID',
   app_id               varchar(50) not null comment '应用ID',
   subject              text comment '知识主题',
   keyword              text not null comment '关键词',
   attachments          text comment '相关附件',
   content              text comment '知识内容',
   sort                 int not null comment '排序值',
   ref_deptid           varchar(50) comment '关联公司ID',
   primary key (iidd)
);

alter table knowledge_t_filed comment '知识归档规则表';

/*==============================================================*/
/* Table: knowledge_t_flow_info                                 */
/*==============================================================*/
create table knowledge_t_flow_info
(
   flowid               varchar(50) not null comment '流程ID',
   flowmodelid          varchar(50) comment '流程模型ID',
   nodemodelid          varchar(50) comment '环节模型ID',
   flowno               varchar(200) comment '流程单号',
   create_userid        varchar(50) comment '发起人ID',
   create_username      varchar(200) comment '发起人名称',
   create_deptid        varchar(50) comment '发起部门ID',
   create_deptname      varchar(200) comment '发起部门名称',
   create_orgid         varchar(50) comment '发起机构ID',
   create_orgname       varchar(200) comment '发起机构名称',
   create_time          datetime comment '发起时间',
   update_userid        varchar(50) comment '修改人ID',
   update_username      varchar(200) comment '修改人名称',
   update_time          datetime comment '修改时间',
   ref_deptid           varchar(50) comment '关联公司ID',
   ref_projectid        varchar(50) comment '关联项目ID',
   deleted              integer default 0 comment '是否删除',
   current_nodename     varchar(1000) comment '当前处理环节',
   current_hander       varchar(1000) comment '当前处理人',
   business_status      varchar(500) comment '业务状态',
   type                 text comment '知识类别',
   subject              varchar(200) comment '知识主题',
   tags                 text comment '关键字',
   content              text comment '知识内容',
   attachments          text comment '相关附件',
   primary key (flowid)
);

alter table knowledge_t_flow_info comment '知识流程信息表';

/*==============================================================*/
/* Table: knowledge_t_reference                                 */
/*==============================================================*/
create table knowledge_t_reference
(
   iidd                 varchar(50) not null comment '主键ID',
   create_userid        varchar(50) comment '创建人ID',
   create_username      varchar(200) comment '创建人名称',
   create_deptid        varchar(50) comment '创建部门ID',
   create_deptname      varchar(200) comment '创建部门名称',
   create_orgid         varchar(50) comment '创建机构ID',
   create_time          datetime comment '创建时间',
   project_id           varchar(50) not null comment '项目ID',
   app_id               varchar(50) not null comment '应用ID',
   keyword              text not null comment '关键词字段',
   sort                 int not null comment '排序值',
   ref_deptid           varchar(50) comment '关联公司ID',
   primary key (iidd)
);

alter table knowledge_t_reference comment '知识参考规则表';

/*==============================================================*/
/* Table: knowledge_t_related                                   */
/*==============================================================*/
create table knowledge_t_related
(
   iidd                 varchar(50) not null comment '唯一编号',
   like_type            int(2) default 0 comment '类型：1 阅读，2 点赞 3 收藏',
   data_number          varchar(50) comment '知识编号或评论编号',
   user_id              varchar(50) comment '用户编号',
   create_time          timestamp default CURRENT_TIMESTAMP comment '创建时间',
   ref_deptid           varchar(50) comment '公司编号',
   ref_projectid        varchar(50) comment '项目编号',
   primary key (iidd)
);

alter table knowledge_t_related comment '知识相关操作表(点赞/收藏/阅读)';

/*==============================================================*/
/* Table: qrtz_blob_triggers                                    */
/*==============================================================*/
create table qrtz_blob_triggers
(
   sched_name           varchar(120) not null comment '调度名称',
   trigger_name         varchar(200) not null comment 'qrtz_triggers表trigger_name的外键',
   trigger_group        varchar(200) not null comment 'qrtz_triggers表trigger_group的外键',
   blob_data            blob comment '存放持久化Trigger对象',
   primary key (sched_name, trigger_name, trigger_group)
)
engine=innodb comment = 'Blob类型的触发器表';

alter table qrtz_blob_triggers comment 'Blob类型的触发器表';

/*==============================================================*/
/* Table: qrtz_calendars                                        */
/*==============================================================*/
create table qrtz_calendars
(
   sched_name           varchar(120) not null comment '调度名称',
   calendar_name        varchar(200) not null comment '日历名称',
   calendar             blob not null comment '存放持久化calendar对象',
   primary key (sched_name, calendar_name)
)
engine=innodb comment = '日历信息表';

alter table qrtz_calendars comment '日历信息表';

/*==============================================================*/
/* Table: qrtz_cron_triggers                                    */
/*==============================================================*/
create table qrtz_cron_triggers
(
   sched_name           varchar(120) not null comment '调度名称',
   trigger_name         varchar(200) not null comment 'qrtz_triggers表trigger_name的外键',
   trigger_group        varchar(200) not null comment 'qrtz_triggers表trigger_group的外键',
   cron_expression      varchar(200) not null comment 'cron表达式',
   time_zone_id         varchar(80) comment '时区',
   primary key (sched_name, trigger_name, trigger_group)
)
engine=innodb comment = 'Cron类型的触发器表';

alter table qrtz_cron_triggers comment 'Cron类型的触发器表';

/*==============================================================*/
/* Table: qrtz_fired_triggers                                   */
/*==============================================================*/
create table qrtz_fired_triggers
(
   sched_name           varchar(120) not null comment '调度名称',
   entry_id             varchar(95) not null comment '调度器实例id',
   trigger_name         varchar(200) not null comment 'qrtz_triggers表trigger_name的外键',
   trigger_group        varchar(200) not null comment 'qrtz_triggers表trigger_group的外键',
   instance_name        varchar(200) not null comment '调度器实例名',
   fired_time           bigint(13) not null comment '触发的时间',
   sched_time           bigint(13) not null comment '定时器制定的时间',
   priority             integer not null comment '优先级',
   state                varchar(16) not null comment '状态',
   job_name             varchar(200) comment '任务名称',
   job_group            varchar(200) comment '任务组名',
   is_nonconcurrent     varchar(1) comment '是否并发',
   requests_recovery    varchar(1) comment '是否接受恢复执行',
   primary key (sched_name, entry_id)
)
engine=innodb comment = '已触发的触发器表';

alter table qrtz_fired_triggers comment '已触发的触发器表';

/*==============================================================*/
/* Table: qrtz_job_details                                      */
/*==============================================================*/
create table qrtz_job_details
(
   sched_name           varchar(120) not null comment '调度名称',
   job_name             varchar(200) not null comment '任务名称',
   job_group            varchar(200) not null comment '任务组名',
   description          varchar(250) comment '相关介绍',
   job_class_name       varchar(250) not null comment '执行任务类名称',
   is_durable           varchar(1) not null comment '是否持久化',
   is_nonconcurrent     varchar(1) not null comment '是否并发',
   is_update_data       varchar(1) not null comment '是否更新数据',
   requests_recovery    varchar(1) not null comment '是否接受恢复执行',
   job_data             blob comment '存放持久化job对象',
   primary key (sched_name, job_name, job_group)
)
engine=innodb comment = '任务详细信息表';

alter table qrtz_job_details comment '任务详细信息表';

/*==============================================================*/
/* Table: qrtz_locks                                            */
/*==============================================================*/
create table qrtz_locks
(
   sched_name           varchar(120) not null comment '调度名称',
   lock_name            varchar(40) not null comment '悲观锁名称',
   primary key (sched_name, lock_name)
)
engine=innodb comment = '存储的悲观锁信息表';

alter table qrtz_locks comment '存储的悲观锁信息表';

/*==============================================================*/
/* Table: qrtz_paused_trigger_grps                              */
/*==============================================================*/
create table qrtz_paused_trigger_grps
(
   sched_name           varchar(120) not null comment '调度名称',
   trigger_group        varchar(200) not null comment 'qrtz_triggers表trigger_group的外键',
   primary key (sched_name, trigger_group)
)
engine=innodb comment = '暂停的触发器表';

alter table qrtz_paused_trigger_grps comment '暂停的触发器表';

/*==============================================================*/
/* Table: qrtz_scheduler_state                                  */
/*==============================================================*/
create table qrtz_scheduler_state
(
   sched_name           varchar(120) not null comment '调度名称',
   instance_name        varchar(200) not null comment '实例名称',
   last_checkin_time    bigint(13) not null comment '上次检查时间',
   checkin_interval     bigint(13) not null comment '检查间隔时间',
   primary key (sched_name, instance_name)
)
engine=innodb comment = '调度器状态表';

alter table qrtz_scheduler_state comment '调度器状态表';

/*==============================================================*/
/* Table: qrtz_simple_triggers                                  */
/*==============================================================*/
create table qrtz_simple_triggers
(
   sched_name           varchar(120) not null comment '调度名称',
   trigger_name         varchar(200) not null comment 'qrtz_triggers表trigger_name的外键',
   trigger_group        varchar(200) not null comment 'qrtz_triggers表trigger_group的外键',
   repeat_count         bigint(7) not null comment '重复的次数统计',
   repeat_interval      bigint(12) not null comment '重复的间隔时间',
   times_triggered      bigint(10) not null comment '已经触发的次数',
   primary key (sched_name, trigger_name, trigger_group)
)
engine=innodb comment = '简单触发器的信息表';

alter table qrtz_simple_triggers comment '简单触发器的信息表';

/*==============================================================*/
/* Table: qrtz_simprop_triggers                                 */
/*==============================================================*/
create table qrtz_simprop_triggers
(
   sched_name           varchar(120) not null comment '调度名称',
   trigger_name         varchar(200) not null comment 'qrtz_triggers表trigger_name的外键',
   trigger_group        varchar(200) not null comment 'qrtz_triggers表trigger_group的外键',
   str_prop_1           varchar(512) comment 'String类型的trigger的第一个参数',
   str_prop_2           varchar(512) comment 'String类型的trigger的第二个参数',
   str_prop_3           varchar(512) comment 'String类型的trigger的第三个参数',
   int_prop_1           int comment 'int类型的trigger的第一个参数',
   int_prop_2           int comment 'int类型的trigger的第二个参数',
   long_prop_1          bigint comment 'long类型的trigger的第一个参数',
   long_prop_2          bigint comment 'long类型的trigger的第二个参数',
   dec_prop_1           numeric(13,4) comment 'decimal类型的trigger的第一个参数',
   dec_prop_2           numeric(13,4) comment 'decimal类型的trigger的第二个参数',
   bool_prop_1          varchar(1) comment 'Boolean类型的trigger的第一个参数',
   bool_prop_2          varchar(1) comment 'Boolean类型的trigger的第二个参数',
   primary key (sched_name, trigger_name, trigger_group)
)
engine=innodb comment = '同步机制的行锁表';

alter table qrtz_simprop_triggers comment '同步机制的行锁表';

/*==============================================================*/
/* Table: qrtz_triggers                                         */
/*==============================================================*/
create table qrtz_triggers
(
   sched_name           varchar(120) not null comment '调度名称',
   trigger_name         varchar(200) not null comment '触发器的名字',
   trigger_group        varchar(200) not null comment '触发器所属组的名字',
   job_name             varchar(200) not null comment 'qrtz_job_details表job_name的外键',
   job_group            varchar(200) not null comment 'qrtz_job_details表job_group的外键',
   description          varchar(250) comment '相关介绍',
   next_fire_time       bigint(13) comment '上一次触发时间（毫秒）',
   prev_fire_time       bigint(13) comment '下一次触发时间（默认为-1表示不触发）',
   priority             integer comment '优先级',
   trigger_state        varchar(16) not null comment '触发器状态',
   trigger_type         varchar(8) not null comment '触发器的类型',
   start_time           bigint(13) not null comment '开始时间',
   end_time             bigint(13) comment '结束时间',
   calendar_name        varchar(200) comment '日程表名称',
   misfire_instr        smallint(2) comment '补偿执行的策略',
   job_data             blob comment '存放持久化job对象',
   primary key (sched_name, trigger_name, trigger_group)
)
engine=innodb comment = '触发器详细信息表';

alter table qrtz_triggers comment '触发器详细信息表';

/*==============================================================*/
/* Table: t_expenses_chaim                                      */
/*==============================================================*/
create table t_expenses_chaim
(
   flowid               varchar(50) not null comment '流程ID',
   flowmodelid          varchar(50) comment '流程模型ID',
   nodemodelid          varchar(50) comment '环节模型ID',
   flowno               varchar(200) comment '流程单号',
   create_userid        varchar(50) comment '创建人ID',
   create_username      varchar(200) comment '创建人名称',
   create_deptid        varchar(50) comment '创建部门ID',
   create_deptname      varchar(200) comment '创建部门名称',
   create_orgid         varchar(50) comment '创建机构ID',
   create_orgname       varchar(200) comment '创建机构名称',
   create_time          datetime comment '创建时间',
   update_userid        varchar(50) comment '修改人ID',
   update_username      varchar(200) comment '修改人名称',
   update_time          datetime comment '修改时间',
   ref_deptid           varchar(50) comment '关联公司ID',
   ref_projectid        varchar(50) comment '所属项目ID',
   deleted              integer default 0 comment '是否删除',
   current_nodename     varchar(1000) comment '当前处理环节',
   current_hander       varchar(1000) comment '当前处理人',
   business_status      varchar(500) comment '业务状态',
   billnum              integer comment '附单据',
   total_amount         decimal(18,2) comment '合计金额',
   borrow_money         decimal(18,2) comment '原借款',
   spare_money          decimal(18,2) comment '应退余款',
   pay_reason           varchar(2000) comment '付款原因',
   detail_reperson      text comment '报销关联人',
   detail_department    text comment '报销关联部门',
   detail_classification text comment '报销分类',
   detail_date          datetime comment '单据填写日期',
   detail_deamount      int comment '报销抵扣金额',
   detail_description   varchar(200) comment '报销描述',
   cost_attribution     text comment '费用归属',
   detail_role          text comment '报销关联角色',
   primary key (flowid)
);

alter table t_expenses_chaim comment '费用报销记录表';

/*==============================================================*/
/* Table: t_expenses_chaim_detail                               */
/*==============================================================*/
create table t_expenses_chaim_detail
(
   iidd                 varchar(50) not null comment '主键ID',
   ref_flowid           varchar(50) comment '关联费用报销流程ID',
   purpose              varchar(200) comment '用途',
   catalog_info         text comment '所属科目',
   chaim_money          decimal(18,2) comment '报销金额',
   primary key (iidd)
);

alter table t_expenses_chaim_detail comment '费用报销明细表';

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
VALUES ('9E8D879AE17C40F7AC5ED3C0B5E7FAA5', '知识全部类别ID', 'knowledge-all-type-id', '8E3D879AE17C40F7AC5ED3C0B5E7FAA5',
        'Y', 'F1DD5C21715A4DA7B873AD98BC5D1494', sysdate(), NULL, NULL, NULL, '知识',0);


-- ---------------------------------------------------------
-- 初始化OpenApi脚本
-- ---------------------------------------------------------
INSERT INTO ff_apaas_ts_open_api_group (iidd, group_name, parent_id, sort_id, class_layer, class_list, update_time, create_person) VALUES ('DD2849C5028B44A7A08E0972A29D552C', '基础应用', '', 0, 1, 'DD2849C5028B44A7A08E0972A29D552C', '2022-05-30 10:46:13', '非凡');
INSERT INTO ff_apaas_ts_open_api_group (iidd, group_name, parent_id, sort_id, class_layer, class_list, update_time, create_person) VALUES ('EA6D284FBAFF430DA9F945ADE74CFA8D', '流程分组', '', 1, 1, 'EA6D284FBAFF430DA9F945ADE74CFA8D', '2022-05-30 10:46:35', '非凡');

INSERT INTO ff_apaas_sys_config (config_id, config_name, config_key, config_value, config_type, create_by, create_time,
                                 update_by, update_time, remark, group_name)
VALUES ('34CF987C3B084EFDAB4BBB81D92C5C46', 'openApi基础资料分组ID', 'open_api_basic_data_group_id',
        'DD2849C5028B44A7A08E0972A29D552C', 'Y', '72306761D85B44C685F0617E74562E0E', sysdate(), NULL, NULL, NULL, 'OPEN-API');
INSERT INTO ff_apaas_sys_config (config_id, config_name, config_key, config_value, config_type, create_by, create_time,
                                 update_by, update_time, remark, group_name)
VALUES ('D1731A916AC24861A219A2D83D38A1E0', 'openApi流程分组ID', 'open_api_flow_group_id',
        'EA6D284FBAFF430DA9F945ADE74CFA8D', 'Y', '72306761D85B44C685F0617E74562E0E', sysdate(), NULL, NULL, NULL, 'OPEN-API');

INSERT INTO `ff_apaas_open_api`(`iidd`, `name`, `group_id`, `group_name`, `url`, `method`, `context_type`, `body`, `response`, `success_examples`, `fail_examples`, `sort_id`, `update_time`, `create_person`) VALUES ('34BE3978AE304A30954D3BB2AF6E628B', '基础资料-修改', 'DD2849C5028B44A7A08E0972A29D552C', '基础应用', 'pub/editBasics', 2, 3, '[{\"id\":\"498C4E30FE1F7303AEA79097D94C318D\",\"name\":\"appid\",\"type\":\"String\",\"explain\":\"应用ID，或({\\\"name\\\":\\\"appid\\\",\\\"value\\\":\\\"appid\\\"})\",\"children\":[],\"required\":\"必填\"},{\"id\":\"15D8447234D67A69BA10EA492864DE40\",\"name\":\"iidd\",\"type\":\"String\",\"explain\":\"基础资料主键ID，或({\\\"name\\\":\\\"iidd\\\",\\\"value\\\":\\\"iidd\\\"})\",\"children\":[],\"required\":\"必填\"},{\"id\":\"68D0ECF17A042063FEB1E3DE4CBD09CF\",\"name\":\"userId\",\"type\":\"String\",\"explain\":\"修改登录账号，或({\\\"name\\\":\\\"userId\\\",\\\"value\\\":\\\"userId\\\"})\",\"children\":[],\"required\":\"必填\"},{\"id\":\"42AA967132D10F792B979A3DA3E8B363\",\"name\":\"data\",\"type\":\"Object\",\"explain\":\"业务数据(JSON字符串)\",\"children\":[],\"required\":\"必填\"}]', '[{\"id\":\"2BA21B95289C82EB111C424ECC48E1EE\",\"name\":\"code\",\"type\":\"Number\",\"explain\":\"响应码\",\"children\":[],\"required\":\"必填\"},{\"id\":\"A25816AE30CD4E65808F57B9AADF9015\",\"name\":\"msg\",\"type\":\"String\",\"explain\":\"响应说明\",\"children\":[],\"required\":\"必填\"},{\"id\":\"371A6CFD26077E9608A95E76F17040F0\",\"name\":\"data\",\"type\":\"Object\",\"explain\":\"响应数据\",\"children\":[],\"required\":\"必填\"}]', '{\r\n  \"code\": 200,\r\n  \"msg\": \"\",\r\n  \"data\": \"\"\r\n}', '{\r\n  \"code\": 200,\r\n  \"msg\": \"\",\r\n  \"data\": \"\"\r\n}', 0, '2022-07-18 17:55:02', '余先生');
INSERT INTO `ff_apaas_open_api`(`iidd`, `name`, `group_id`, `group_name`, `url`, `method`, `context_type`, `body`, `response`, `success_examples`, `fail_examples`, `sort_id`, `update_time`, `create_person`) VALUES ('890BCA77D52B4683BCC027A1F3156D17', '基础资料-列表', 'DD2849C5028B44A7A08E0972A29D552C', '基础应用', 'pub/listBasic', 2, 3, '[{\"id\":\"E123E7E02059603F554732E4216ED0E6\",\"name\":\"appid\",\"explain\":\"应用ID，或({\\\"name\\\":\\\"appid\\\",\\\"value\\\":\\\"appid\\\"})\",\"type\":\"String\",\"required\":\"必填\",\"children\":[]},{\"id\":\"78392042EBA7705EEEEDDB3BC583410F\",\"name\":\"userId\",\"explain\":\"登录账号，或({\\\"name\\\":\\\"userId\\\",\\\"value\\\":\\\"userId\\\"})\",\"type\":\"String\",\"required\":\"必填\",\"children\":[]},{\"id\":\"83D847A6CFEBB934B9C9729D413C3404\",\"name\":\"pageNum\",\"explain\":\"页码，不传查询所有\",\"type\":\"Number\",\"required\":\"必填\",\"children\":[]},{\"id\":\"A3B8F8BA02F6058AAF2E69662C250677\",\"name\":\"pageSize\",\"explain\":\"每页大小，不传查询所有\",\"type\":\"Number\",\"required\":\"必填\",\"children\":[]},{\"id\":\"F0C3A41174FE818C038D1F472D314FD1\",\"name\":\"queryConditions\",\"explain\":\"查询条件,[{\\\"column\\\":\\\"E1CC30923E5040E7EA247A0066B85905\\\",\\\"queryType\\\":\\\"like\\\",\\\"value\\\":[{\\\"name\\\":\\\"应用管理中心\\\",\\\"value\\\":\\\"应用管理中心\\\"}]}]\",\"type\":\"Object\",\"required\":\"必填\",\"children\":[]}]', '[{\"id\":\"C3EE139C30504E4D86D1B5BE8B78CF9A\",\"name\":\"code\",\"explain\":\"响应码\",\"type\":\"String\",\"required\":\"必填\",\"children\":[]},{\"id\":\"291A9D5A536C9B5D9D43230559A7BEE8\",\"name\":\"msg\",\"explain\":\"响应说明\",\"type\":\"String\",\"required\":\"必填\",\"children\":[]},{\"id\":\"EB32E5AFECC0163271C630CFBAC0D882\",\"name\":\"data\",\"explain\":\"响应数据\",\"type\":\"Object\",\"required\":\"必填\",\"children\":[]}]', '{\n	\"total\": 1,\n	\"rows\": [{\n		\"refFormid\": \"D4BE7D56324042EFAE786E380A5BDDF4\",\n		\"updateUserid\": \"04BBE297F27149B08CD3DFE64ADC711A\",\n		\"DE6696C3920427CDEC10FBC76A787E6E\": \"[{\\\"name\\\":\\\"项目信息维护\\\",\\\"value\\\":\\\"项目信息维护\\\"}]\",\n		\"refDeptid\": \"3435840D6BB648228100C54175439012\",\n		\"createDeptname\": \"深圳市非凡信息技术有限公司\",\n		\"createOrgid\": \"3435840D6BB648228100C54175439012\",\n		\"iidd\": \"CACEE62DFDF74B00941BB3D2F02E69DC\",\n		\"createUsername\": \"姜特洋\",\n		\"refProjectid\": \"A03769DA38284D138A1356DC93C2F9C9\",\n		\"refAppid\": \"8F3F2AE6F2D34FBAB14A0BBA3E7C3721\",\n		\"createDeptid\": \"3435840D6BB648228100C54175439012\",\n		\"createUserid\": \"04BBE297F27149B08CD3DFE64ADC711A\",\n		\"updateTime\": \"2023-03-23 14:50:32\",\n		\"createOrgname\": \"深圳市非凡信息技术有限公司\",\n		\"ref_projectid\": \"A03769DA38284D138A1356DC93C2F9C9\",\n		\"deleted\": 0,\n		\"createTime\": \"2023-03-23 14:50:29\",\n		\"updateUsername\": \"姜特洋\",\n		\"contentjson\": \"{\\\"DE6696C3920427CDEC10FBC76A787E6E\\\":[{\\\"name\\\":\\\"项目信息维护\\\",\\\"value\\\":\\\"项目信息维护\\\"}],\\\"ref_projectid\\\":\\\"A03769DA38284D138A1356DC93C2F9C9\\\"}\"\n	}],\n	\"code\": 200\n}', '{\n	\"code\": 401,\n	\"msg\": \"请求访问：/ffapaas/pub/listBasic，认证失败，无法访问系统资源\"\n}', 0, '2023-03-23 15:59:40', '余先生');
INSERT INTO `ff_apaas_open_api`(`iidd`, `name`, `group_id`, `group_name`, `url`, `method`, `context_type`, `body`, `response`, `success_examples`, `fail_examples`, `sort_id`, `update_time`, `create_person`) VALUES ('8AF57982C71F492AA96F25145D2F3547', '基础资料-删除', 'DD2849C5028B44A7A08E0972A29D552C', '基础应用', 'pub/deletedBasic', 2, 3, '[{\"id\":\"3D6F8F00DC0734B5A1E8A7C2819E1BCC\",\"name\":\"appid\",\"type\":\"String\",\"explain\":\"应用编号，或({\\\"name\\\":\\\"appid\\\",\\\"value\\\":\\\"appid\\\"})\",\"children\":[],\"required\":\"必填\"},{\"id\":\"2F605F857A314BDBB6C31CC0A6E558C2\",\"name\":\"userId\",\"type\":\"String\",\"explain\":\"修改登录账号，或({\\\"name\\\":\\\"userId\\\",\\\"value\\\":\\\"userId\\\"})\",\"children\":[],\"required\":\"必填\"},{\"id\":\"B53F27593AF5229A7F717FDF475524BD\",\"name\":\"iidds\",\"type\":\"String\",\"explain\":\"记录ID,多个英文逗号分割，或({\\\"name\\\":\\\"iidds\\\",\\\"value\\\":\\\"iidds\\\"})\",\"children\":[],\"required\":\"必填\"}]', '[{\"id\":\"E87795ECE4AE7860559646CC4FE9E363\",\"name\":\"code\",\"type\":\"Number\",\"explain\":\"响应码\",\"children\":[],\"required\":\"必填\"},{\"id\":\"4C7776B4A2AA28D5D8C7749F13207C4F\",\"name\":\"msg\",\"type\":\"String\",\"explain\":\"响应说明\",\"children\":[],\"required\":\"必填\"},{\"id\":\"D94E71F67F1D992401FA8B8B74844481\",\"name\":\"data\",\"type\":\"Object\",\"explain\":\"响应数据\",\"children\":[],\"required\":\"必填\"}]', '{\r\n  \"code\": 200,\r\n  \"msg\": \"\",\r\n  \"data\": \"\"\r\n}', '{\r\n  \"code\": 500,\r\n  \"msg\": \"\",\r\n  \"data\": \"\"\r\n}', 0, '2022-07-18 17:55:02', '余先生');
INSERT INTO `ff_apaas_open_api`(`iidd`, `name`, `group_id`, `group_name`, `url`, `method`, `context_type`, `body`, `response`, `success_examples`, `fail_examples`, `sort_id`, `update_time`, `create_person`) VALUES ('ABBAE00027DF4970B6340BE4DD0E4930', '基础资料-新增', 'DD2849C5028B44A7A08E0972A29D552C', '基础应用', 'pub/saveBasics', 2, 3, '[{\"id\":\"1C1E5044FD02A93377962F1976FC1F31\",\"name\":\"appid\",\"type\":\"String\",\"explain\":\"应用ID，或({\\\"name\\\":\\\"appid\\\",\\\"value\\\":\\\"appid\\\"})\",\"children\":[],\"required\":\"必填\"},{\"id\":\"2A13307CC5FC138FA55093AC71CAED0F\",\"name\":\"userId\",\"type\":\"String\",\"explain\":\"发起人登录账号，或({\\\"name\\\":\\\"userId\\\",\\\"value\\\":\\\"userId\\\"})\",\"children\":[],\"required\":\"必填\"},{\"id\":\"75CD59012F362D3CF08BE005466454B3\",\"name\":\"data\",\"type\":\"Object\",\"explain\":\"业务数据(JSON字符串)\",\"children\":[],\"required\":\"必填\"}]', '[{\"id\":\"BA74C5D2497F5CA8BF84C247994D214F\",\"name\":\"code\",\"type\":\"Number\",\"explain\":\"响应码\",\"children\":[],\"required\":\"必填\"},{\"id\":\"59E4223E5A3ABB2574DB49C2A20E090B\",\"name\":\"msg\",\"type\":\"String\",\"explain\":\"响应说明\",\"children\":[],\"required\":\"必填\"},{\"id\":\"25C35852E5C0B369F8540B338996D245\",\"name\":\"data\",\"type\":\"Object\",\"explain\":\"响应数据\",\"children\":[],\"required\":\"必填\"}]', '{\r\n  \"code\": 200,\r\n  \"msg\": \"\",\r\n  \"data\": \"\"\r\n}', '{\r\n  \"code\": 500,\r\n  \"msg\": \"\",\r\n  \"data\": \"服务器内部错误\"\r\n}', 0, '2022-07-18 17:55:02', '余先生');
INSERT INTO `ff_apaas_open_api`(`iidd`, `name`, `group_id`, `group_name`, `url`, `method`, `context_type`, `body`, `response`, `success_examples`, `fail_examples`, `sort_id`, `update_time`, `create_person`) VALUES ('AFF83C3AFACA42779225BBE6C75070B7', '基础资料-详情', 'DD2849C5028B44A7A08E0972A29D552C', '基础应用', 'pub/detailBasic', 2, 3, '[{\"id\":\"A0C83DD4E7CCE22FA497AEDFD5B9F5F6\",\"name\":\"appid\",\"type\":\"String\",\"explain\":\"应用ID，或({\\\"name\\\":\\\"appid\\\",\\\"value\\\":\\\"appid\\\"})\",\"children\":[],\"required\":\"必填\"},{\"id\":\"4ADB7C0E119DCA11B9C2542F0AABD7B7\",\"name\":\"iidds\",\"type\":\"String\",\"explain\":\"主键ID，或({\\\"name\\\":\\\"iidds\\\",\\\"value\\\":\\\"iidds\\\"})\",\"children\":[],\"required\":\"必填\"}]', '[{\"id\":\"B6160C6D2B1014ACF90EE91C9331A188\",\"name\":\"code\",\"type\":\"Number\",\"explain\":\"响应码\",\"children\":[],\"required\":\"必填\"},{\"id\":\"7D7BEA3ECAE5ADD4EE2F859192D64B4C\",\"name\":\"msg\",\"type\":\"String\",\"explain\":\"响应说明\",\"children\":[],\"required\":\"必填\"},{\"id\":\"48E650C8D4B0CF1E00EBD4B76DAFA702\",\"name\":\"data\",\"type\":\"Object\",\"explain\":\"响应数据\",\"children\":[],\"required\":\"必填\"}]', '{\r\n  \"code\": 200,\r\n  \"msg\": \"\",\r\n  \"data\": \"\"\r\n}', '{\r\n  \"code\": 200,\r\n  \"msg\": \"\",\r\n  \"data\": \"\"\r\n}', 0, '2022-07-18 17:55:02', '余先生');
INSERT INTO `ff_apaas_open_api`(`iidd`, `name`, `group_id`, `group_name`, `url`, `method`, `context_type`, `body`, `response`, `success_examples`, `fail_examples`, `sort_id`, `update_time`, `create_person`) VALUES ('1BE64A11E01345F4B1AE033FCD576CC7', '流程应用-删除', 'EA6D284FBAFF430DA9F945ADE74CFA8D', '流程分组', 'pub/deletedProc', 2, 3, '[{\"id\":\"D3A0CA120E000B8E890B51B695EE0149\",\"name\":\"userId\",\"type\":\"String\",\"explain\":\"操作人登录账号，或({\\\"name\\\":\\\"userId\\\",\\\"value\\\":\\\"userId\\\"})\",\"children\":[],\"required\":\"必填\"},{\"id\":\"9E27E73A1CD4580D601E41CFA0B86638\",\"name\":\"flowIds\",\"type\":\"String\",\"explain\":\"流程ID，多个英文逗号分割，或({\\\"name\\\":\\\"flowIds\\\",\\\"value\\\":\\\"flowIds\\\"})\",\"children\":[],\"required\":\"必填\"},{\"id\":\"461894D1C33469764685B7A1762FFCF9\",\"name\":\"delRelease\",\"type\":\"String\",\"explain\":\"删除原因，或({\\\"name\\\":\\\"delRelease\\\",\\\"value\\\":\\\"delRelease\\\"})\",\"children\":[],\"required\":\"非必填\"}]', '[{\"id\":\"D04B60D26F78601736A701BD768BDA5F\",\"name\":\"code\",\"type\":\"Number\",\"explain\":\"响应码\",\"children\":[],\"required\":\"必填\"},{\"id\":\"FA4AA1162D90B0B8323107540C48E945\",\"name\":\"msg\",\"type\":\"String\",\"explain\":\"响应说明\",\"children\":[],\"required\":\"必填\"},{\"id\":\"493DE16DB3976DD6D189A65FCD4596EC\",\"name\":\"data\",\"type\":\"Object\",\"explain\":\"响应数据\",\"children\":[],\"required\":\"必填\"}]', '{\r\n  \"code\": 200,\r\n  \"msg\": \"\",\r\n  \"data\": \"\"\r\n}', '{\r\n  \"code\": 200,\r\n  \"msg\": \"\",\r\n  \"data\": \"\"\r\n}', 0, '2022-07-18 17:55:02', '余先生');
INSERT INTO `ff_apaas_open_api`(`iidd`, `name`, `group_id`, `group_name`, `url`, `method`, `context_type`, `body`, `response`, `success_examples`, `fail_examples`, `sort_id`, `update_time`, `create_person`) VALUES ('5479888D89D145EC8032BC7E5049D6C0', '流程应用-详情', 'EA6D284FBAFF430DA9F945ADE74CFA8D', '流程分组', 'pub/detailProc', 2, 3, '[{\"id\":\"DF974A6F91F8CDE4CC1CF90CE85AEC30\",\"name\":\"flowIds\",\"type\":\"String\",\"explain\":\"流程ID，多个逗号分割，或({\\\"name\\\":\\\"flowIds\\\",\\\"value\\\":\\\"flowIds\\\"})\",\"children\":[],\"required\":\"必填\"}]', '[{\"id\":\"2BCB6561DBFAB30C069665C960B263C4\",\"name\":\"code\",\"type\":\"Number\",\"explain\":\"响应码\",\"children\":[],\"required\":\"必填\"},{\"id\":\"EDF987CEE4F065BE0B8422FB57BE17DE\",\"name\":\"msg\",\"type\":\"String\",\"explain\":\"响应说明\",\"children\":[],\"required\":\"必填\"},{\"id\":\"CDAE2299DC50EF26DB39D64AF1FB44FB\",\"name\":\"data\",\"type\":\"Object\",\"explain\":\"响应数据\",\"children\":[],\"required\":\"必填\"}]', '{\r\n  \"code\": 200,\r\n  \"msg\": \"\",\r\n  \"data\": \"\"\r\n}', '{\r\n  \"code\": 200,\r\n  \"msg\": \"\",\r\n  \"data\": \"\"\r\n}', 0, '2022-07-18 17:55:02', '余先生');
INSERT INTO `ff_apaas_open_api`(`iidd`, `name`, `group_id`, `group_name`, `url`, `method`, `context_type`, `body`, `response`, `success_examples`, `fail_examples`, `sort_id`, `update_time`, `create_person`) VALUES ('6680F4C6BEEF4CDCB6E487C67B3F5D5D', '流程应用-审批', 'EA6D284FBAFF430DA9F945ADE74CFA8D', '流程分组', 'pub/completeProc', 2, 3, '[{\"id\":\"F29A0FB2AAC8546A48277E194FA4BD9D\",\"name\":\"flowId\",\"type\":\"String\",\"explain\":\"流程ID，或({\\\"name\\\":\\\"flowid\\\",\\\"value\\\":\\\"flowid\\\"})\",\"children\":[],\"required\":\"必填\"},{\"id\":\"8DDDA9DE79A095046B35787E59EA15B4\",\"name\":\"userId\",\"type\":\"String\",\"explain\":\"审批人登录账号，或({\\\"name\\\":\\\"userId\\\",\\\"value\\\":\\\"userId\\\"})\",\"children\":[],\"required\":\"必填\"},{\"id\":\"23A3FE631531870FFFE754E005356F93\",\"name\":\"data\",\"type\":\"Object\",\"explain\":\"业务数据(JOSN字符串)\",\"children\":[],\"required\":\"必填\"},{\"id\":\"5D11413E623C2D76F7960FF0B2988F48\",\"name\":\"fileBase64\",\"type\":\"Object\",\"explain\":\"[{\\\"name\\\":\\\"流川枫.jpg\\\",\\\"value\\\":\\\"base64编码\\\"},{\\\"name\\\":\\\"img103.png\\\",\\\"value\\\":\\\"base64编码\\\"}]\",\"children\":[],\"required\":\"非必填\"}]', '[{\"id\":\"33D9314D38D14701E658AAFE90898FBE\",\"name\":\"code\",\"type\":\"Number\",\"explain\":\"响应码\",\"children\":[],\"required\":\"必填\"},{\"id\":\"F0D4C304BC723D8B8E4A1BF7576964FF\",\"name\":\"msg\",\"type\":\"String\",\"explain\":\"响应说明\",\"children\":[],\"required\":\"必填\"},{\"id\":\"43B250187324C04CA5ACE699A7F51B15\",\"name\":\"data\",\"type\":\"Object\",\"explain\":\"响应数据\",\"children\":[],\"required\":\"必填\"}]', '{\r\n  \"code\": 200,\r\n  \"msg\": \"\",\r\n  \"data\": \"\"\r\n}', '{\r\n  \"code\": 200,\r\n  \"msg\": \"\",\r\n  \"data\": \"\"\r\n}', 0, '2022-07-18 17:55:02', '余先生');
INSERT INTO `ff_apaas_open_api`(`iidd`, `name`, `group_id`, `group_name`, `url`, `method`, `context_type`, `body`, `response`, `success_examples`, `fail_examples`, `sort_id`, `update_time`, `create_person`) VALUES ('976AE1F624594FC494FFFA4AFB40B8CA', '流程应用-发起', 'EA6D284FBAFF430DA9F945ADE74CFA8D', '流程分组', 'pub/startProc', 2, 3, '[{\"id\":\"E959CA7D27B3CB7179AB776D74995465\",\"name\":\"flowModelId\",\"type\":\"String\",\"explain\":\"流程模型，ID或({\\\"name\\\":\\\"flowModelId\\\",\\\"value\\\":\\\"flowModelId\\\"})\",\"children\":[],\"required\":\"必填\"},{\"id\":\"E2C6C141C4ABBA3ECDFFDC09A35E601D\",\"name\":\"userId\",\"type\":\"String\",\"explain\":\"发起人登录账号，或({\\\"name\\\":\\\"userId\\\",\\\"value\\\":\\\"userId\\\"})\",\"children\":[],\"required\":\"必填\"},{\"id\":\"CBCFA83F8EC0FA7381212A698359FA13\",\"name\":\"data\",\"type\":\"Object\",\"explain\":\"业务参数(JSON字符串)\",\"children\":[],\"required\":\"必填\"},{\"id\":\"E050333F4077078485AA5CBB79DB8D4C\",\"name\":\"fileBase64\",\"type\":\"Object\",\"explain\":\"[{\\\"name\\\":\\\"流川枫.jpg\\\",\\\"value\\\":\\\"base64编码\\\"},{\\\"name\\\":\\\"img103.png\\\",\\\"value\\\":\\\"base64编码\\\"}]\",\"children\":[],\"required\":\"非必填\"}]', '[{\"id\":\"4283D53E8D44C05EF5C21CB6BC2C317B\",\"name\":\"code\",\"type\":\"Number\",\"explain\":\"响应码\",\"children\":[],\"required\":\"必填\"},{\"id\":\"BB3DCDDF45C93B5A84FF4BE121FFFEAF\",\"name\":\"msg\",\"type\":\"String\",\"explain\":\"响应消息\",\"children\":[],\"required\":\"必填\"},{\"id\":\"525BFE5947F771A4F0893B190E8E1309\",\"name\":\"data\",\"type\":\"Object\",\"explain\":\"响应数据\",\"children\":[],\"required\":\"必填\"}]', '{\r\n    \"code\": 200,\r\n    \"msg\": \"操作成功\",\r\n    \"data\": {\r\n        \"flowNo\": \"WTGDXXB2022060028\",\r\n        \"flowId\": \"9688A3C1B5A9442E9531863D2D84F590\"\r\n    }\r\n}', '{\r\n  \"code\": 200,\r\n  \"msg\": \"\",\r\n  \"data\": \"\"\r\n}', 0, '2022-07-18 17:55:02', '余先生');
INSERT INTO `ff_apaas_open_api`(`iidd`, `name`, `group_id`, `group_name`, `url`, `method`, `context_type`, `body`, `response`, `success_examples`, `fail_examples`, `sort_id`, `update_time`, `create_person`) VALUES ('D69681B88427464BA48057D391E76EA1', '流程应用-修改', 'EA6D284FBAFF430DA9F945ADE74CFA8D', '流程分组', 'pub/modifyingFormData', 2, 3, '[{\"id\":\"ED1C81684FB0A912A0BC858D23C35FE8\",\"name\":\"appid\",\"explain\":\"应用ID，或({\\\"name\\\":\\\"appid\\\",\\\"value\\\":\\\"appid\\\"})\",\"type\":\"String\",\"required\":\"必填\",\"children\":[]},{\"id\":\"3B028E67E3C701AD2CA493376E93BCA1\",\"name\":\"userId\",\"explain\":\"登录账号，或({\\\"name\\\":\\\"userId\\\",\\\"value\\\":\\\"userId\\\"})\",\"type\":\"String\",\"required\":\"必填\",\"children\":[]},{\"id\":\"4B4EB514A4CDBDC95F434429A10F509F\",\"name\":\"id\",\"explain\":\"修改记录流程id(flowid)，或({\\\"name\\\":\\\"id\\\",\\\"value\\\":\\\"id\\\"})\",\"type\":\"String\",\"required\":\"必填\",\"children\":[]},{\"id\":\"37ABF573171C061C582EFB0115DB1A18\",\"name\":\"body\",\"explain\":\"[{\\\"fieldname\\\":\\\"6227F42445151407A63AD817D08A6BC3\\\",\\\"updateEnd\\\":[{\\\"name\\\":\\\"1133xx\\\",\\\"value\\\":\\\"1133xx\\\"}]}]\",\"type\":\"Object\",\"required\":\"必填\",\"children\":[]}]', '[{\"id\":\"77FBA64AD2D0CE64C2111F7698E5E7B8\",\"name\":\"code\",\"explain\":\"响应码\",\"type\":\"String\",\"required\":\"必填\",\"children\":[]},{\"id\":\"A79ACB7759C5586052DEB7A08F7536E8\",\"name\":\"msg\",\"explain\":\"响应说明\",\"type\":\"String\",\"required\":\"必填\",\"children\":[]},{\"id\":\"86101A799A0620E7D773280100A3032C\",\"name\":\"data\",\"explain\":\"响应数据\",\"type\":\"Object\",\"required\":\"必填\",\"children\":[]}]', '{\n  \"code\": 200,\n  \"msg\": \"\",\n  \"data\": \"\"\n}', '{\n  \"code\": 401,\n  \"msg\": \"请求访问：/ffapaas/pub/listBasic，认证失败，无法访问系统资源\"\n}', 0, '2023-03-23 18:09:37', '余先生');
INSERT INTO `ff_apaas_open_api`(`iidd`, `name`, `group_id`, `group_name`, `url`, `method`, `context_type`, `body`, `response`, `success_examples`, `fail_examples`, `sort_id`, `update_time`, `create_person`) VALUES ('FC6B4D9A7669472AA6BA15B702328C1D', '流程应用-列表', 'EA6D284FBAFF430DA9F945ADE74CFA8D', '流程分组', 'pub/listBasic', 2, 3, '[{\"id\":\"3E82F2284D81877C072BD6F349511D12\",\"name\":\"appid\",\"explain\":\"应用ID，或({\\\"name\\\":\\\"appid\\\",\\\"value\\\":\\\"appid\\\"})\",\"type\":\"String\",\"required\":\"必填\",\"children\":[]},{\"id\":\"5FAC062D9FAAA635D710C7E31FB5B858\",\"name\":\"userId\",\"explain\":\"登录账号，或({\\\"name\\\":\\\"userId\\\",\\\"value\\\":\\\"userId\\\"})\",\"type\":\"String\",\"required\":\"必填\",\"children\":[]},{\"id\":\"E6C02CE1F51C5E9D73CE60C11B3DC9D7\",\"name\":\"pageNum\",\"explain\":\"页码，不传查询所有\",\"type\":\"Number\",\"required\":\"必填\",\"children\":[]},{\"id\":\"DDED86B09ADB9661BF9CC8F67854E7EC\",\"name\":\"pageSize\",\"explain\":\"每页大小，不传查询所有\",\"type\":\"Number\",\"required\":\"必填\",\"children\":[]},{\"id\":\"B4F4D186C7E73720E65341E1AFDA20C6\",\"name\":\"queryConditions\",\"explain\":\"查询条件,[{\\\"column\\\":\\\"E1CC30923E5040E7EA247A0066B85905\\\",\\\"queryType\\\":\\\"like\\\",\\\"value\\\":[{\\\"name\\\":\\\"应用管理中心\\\",\\\"value\\\":\\\"应用管理中心\\\"}]}]\",\"type\":\"Object\",\"required\":\"必填\",\"children\":[]}]', '[{\"id\":\"9C3BABD0AB6F5F583A888CC0093A0FF8\",\"name\":\"code\",\"explain\":\"响应码\",\"type\":\"String\",\"required\":\"必填\",\"children\":[]},{\"id\":\"C281663A7A8EDCF7BD7B9C4F471D1433\",\"name\":\"msg\",\"explain\":\"响应说明\",\"type\":\"String\",\"required\":\"必填\",\"children\":[]},{\"id\":\"79E11342F86A0E0211CD4E7D2C3E365B\",\"name\":\"data\",\"explain\":\"响应数据\",\"type\":\"Object\",\"required\":\"必填\",\"children\":[]}]', '{\n  \"total\": 1,\n  \"rows\": [\n    {\n      \"refFormid\": \"D4BE7D56324042EFAE786E380A5BDDF4\",\n      \"updateUserid\": \"04BBE297F27149B08CD3DFE64ADC711A\",\n      \"DE6696C3920427CDEC10FBC76A787E6E\": \"[{\\\"name\\\":\\\"项目信息维护\\\",\\\"value\\\":\\\"项目信息维护\\\"}]\",\n      \"refDeptid\": \"3435840D6BB648228100C54175439012\",\n      \"createDeptname\": \"深圳市非凡信息技术有限公司\",\n      \"createOrgid\": \"3435840D6BB648228100C54175439012\",\n      \"iidd\": \"CACEE62DFDF74B00941BB3D2F02E69DC\",\n      \"createUsername\": \"姜特洋\",\n      \"refProjectid\": \"A03769DA38284D138A1356DC93C2F9C9\",\n      \"refAppid\": \"8F3F2AE6F2D34FBAB14A0BBA3E7C3721\",\n      \"createDeptid\": \"3435840D6BB648228100C54175439012\",\n      \"createUserid\": \"04BBE297F27149B08CD3DFE64ADC711A\",\n      \"updateTime\": \"2023-03-23 14:50:32\",\n      \"createOrgname\": \"深圳市非凡信息技术有限公司\",\n      \"ref_projectid\": \"A03769DA38284D138A1356DC93C2F9C9\",\n      \"deleted\": 0,\n      \"createTime\": \"2023-03-23 14:50:29\",\n      \"updateUsername\": \"姜特洋\",\n      \"contentjson\": \"{\\\"DE6696C3920427CDEC10FBC76A787E6E\\\":[{\\\"name\\\":\\\"项目信息维护\\\",\\\"value\\\":\\\"项目信息维护\\\"}],\\\"ref_projectid\\\":\\\"A03769DA38284D138A1356DC93C2F9C9\\\"}\"\n    }\n  ],\n  \"code\": 200\n}', '\n{\n  \"code\": 401,\n  \"msg\": \"请求访问：/ffapaas/pub/listBasic，认证失败，无法访问系统资源\"\n}', 0, '2023-03-23 16:11:25', '余先生');

-- 接口帮助中心，统一接口名称
UPDATE ff_apaas_open_api a set a.`name` = REPLACE(a.`name`, '基础资料-', '数据');
UPDATE ff_apaas_open_api a set a.`name` = REPLACE(a.`name`, '流程应用-', '数据');
UPDATE ff_apaas_open_api a set a.`name` = '数据新增' where a.`name` = '数据发起';
UPDATE ff_apaas_open_api a set a.`name` = '流程审批' where a.`name` = '数据审批';

-- ---------------------------------------------------------
-- 初始化应用默认操作项
-- ---------------------------------------------------------

insert into ff_apaas_es_app_actiontype_default values('A3FADADD52F54C899BFE08395788C30A',0,'查看','View',0);
insert into ff_apaas_es_app_actiontype_default values('D4D99B43E7DA4D98BBF1D1F6DD9B638D',0,'添加','Add',1);
insert into ff_apaas_es_app_actiontype_default values('9BA36B78FB604A89AB55230311E547EE',0,'修改','Edit',2);
insert into ff_apaas_es_app_actiontype_default values('C21909DAC994401F8E91CE5B2D07C1DC',0,'删除','Delete',3);
insert into ff_apaas_es_app_actiontype_default values('50E42D343F71463DBC8439E48A16CA56',0,'导出','ExlOut',4);
insert into ff_apaas_es_app_actiontype_default values('BDFAF31031CC11EE81AA000C2948FADF',0,'导入','Import',5);
insert into ff_apaas_es_app_actiontype_default values('BDFAF31031CC11EE81AA000C294PRINT',0,'打印','Print',6);

insert into ff_apaas_es_app_actiontype_default values('B0F416664AF34A17AAFF22D5A4C4C9BB',1,'查看','View',0);
insert into ff_apaas_es_app_actiontype_default values('5562E6BB476D45DA8D43C0675C12C01A',1,'添加','Add',1);
insert into ff_apaas_es_app_actiontype_default values('A2C88FA1E01C4F9B8C1D90506C525260',1,'修改','Edit',2);
insert into ff_apaas_es_app_actiontype_default values('7521CC9C15F54CC88188BF908436E718',1,'删除','Delete',3);
insert into ff_apaas_es_app_actiontype_default values('8E2A69E7CA9047949B2A7046B7A09D14',1,'导出','ExlOut',4);
insert into ff_apaas_es_app_actiontype_default values('C599854F31CC11EE81AA000C2948FADF',1,'导入','Import',5);
insert into ff_apaas_es_app_actiontype_default values('C599854F31CC11EE81AA000C294PRINT',1,'打印','Print',6);
insert into ff_apaas_es_app_actiontype_default values('FA4D1DD0A91311EEB8E4000C29CB1D9E',1,'应用概览','AppOverview',7);

-- ---------------------------------------------------------
-- 初始化文档管理
-- ---------------------------------------------------------
INSERT INTO ff_apaas_t_business_right_item (iidd, business_code, right_type_code, right_item_code, right_item_name, sordid, update_time, update_userid) VALUES ('C9F7DB76D08B410EB96CEAE93FEF7001', 'doc_t_catalog_info', 0, 'NewFolder', '新建子目录', 1, '2021-11-12 11:39:29', 'F1C8933146E746BDBC3C0BF4E4CBDE6C');
INSERT INTO ff_apaas_t_business_right_item (iidd, business_code, right_type_code, right_item_code, right_item_name, sordid, update_time, update_userid) VALUES ('C9F7DB76D08B410EB96CEAE93FEF7002', 'doc_t_catalog_info', 0, 'DeleteFolder', '删除子目录', 2, '2021-11-12 11:39:29', 'F1C8933146E746BDBC3C0BF4E4CBDE6C');
INSERT INTO ff_apaas_t_business_right_item (iidd, business_code, right_type_code, right_item_code, right_item_name, sordid, update_time, update_userid) VALUES ('C9F7DB76D08B410EB96CEAE93FEF7003', 'doc_t_catalog_info', 0, 'Upload', '上传文件', 3, '2021-11-12 11:39:29', 'F1C8933146E746BDBC3C0BF4E4CBDE6C');
INSERT INTO ff_apaas_t_business_right_item (iidd, business_code, right_type_code, right_item_code, right_item_name, sordid, update_time, update_userid) VALUES ('C9F7DB76D08B410EB96CEAE93FEF7004', 'doc_t_catalog_info', 0, 'DeleteFile', '删除文件', 4, '2021-11-12 11:39:29', 'F1C8933146E746BDBC3C0BF4E4CBDE6C');
INSERT INTO ff_apaas_t_business_right_item (iidd, business_code, right_type_code, right_item_code, right_item_name, sordid, update_time, update_userid) VALUES ('C9F7DB76D08B410EB96CEAE93FEF7005', 'doc_t_catalog_info', 0, 'ManagerWhitelist', '管理白名单', 5, '2021-11-12 11:39:29', 'F1C8933146E746BDBC3C0BF4E4CBDE6C');
INSERT INTO ff_apaas_t_business_right_item (iidd, business_code, right_type_code, right_item_code, right_item_name, sordid, update_time, update_userid) VALUES ('E9F7DB76D08B410EB96CEAE93FEF7001', 'doc_t_catalog_info', 1, 'View', '查看', 1, '2021-11-12 11:39:29', 'F1C8933146E746BDBC3C0BF4E4CBDE6C');
INSERT INTO ff_apaas_t_business_right_item (iidd, business_code, right_type_code, right_item_code, right_item_name, sordid, update_time, update_userid) VALUES ('E9F7DB76D08B410EB96CEAE93FEF7003', 'doc_t_catalog_info', 1, 'Download', '下载', 2, '2021-11-12 11:39:29', 'F1C8933146E746BDBC3C0BF4E4CBDE6C');

-- ---------------------------------------------------------
-- 初始化环节通知定时任务
-- ---------------------------------------------------------
INSERT INTO ff_apaas_sys_job (job_id, job_name, job_group, invoke_target, cron_expression, misfire_policy,
                                     concurrent, status, create_by, create_time, update_by, update_time, remark,
                                     ref_deptid)
VALUES ('610295454243434099', '全流程超时检查', 'DEFAULT', 'ffTask.completeFlowNotice()',
        '0 0/5 * * * ? *', 3, 1, 0, '张三', sysdate(), NULL, null, NULL,NULL);


INSERT INTO ff_apaas_sys_job (job_id, job_name, job_group, invoke_target, cron_expression, misfire_policy,
                              concurrent, status, create_by, create_time, update_by, update_time, remark,
                              ref_deptid)
VALUES ('620295454243434100', '流程环节超时检查', 'DEFAULT', 'ffTask.singleNodeFlowNotice()',
        '0 0/5 * * * ? *', 3, 1, 0, '张三', sysdate(), NULL, null, NULL,NULL);

INSERT INTO FF_APAAS_T_TIME_PROCESS (IIDD, TASK_TYPE, TASK_NAME, EXECUTE_TYPE, TARGET_FLOW_MODEL_ID, APPID, INVOKE_TARGET, ALLOTTYPE, ALLOTOBJECTID, DATA_TEMPLATE_CONFIG, REMARK, CREATE_ID, CREATE_NAME, CREATE_TIME, REF_DEPT_ID, JOB_ID, REF_PROJECTID, TYPES) VALUES ('186250F610154B8CA2C66F1E8ACCE2AA', 1, '全流程通知定时任务', '2', null, null, 'ffTask.completeFlowNotice()', null, null, null, null, 'F1DD5C21715A4DA7B873AD98BC5D1494', 'admin', '2021-11-18 09:20:15', null, '610295454243434099', null, 0);
INSERT INTO FF_APAAS_T_TIME_PROCESS (IIDD, TASK_TYPE, TASK_NAME, EXECUTE_TYPE, TARGET_FLOW_MODEL_ID, APPID, INVOKE_TARGET, ALLOTTYPE, ALLOTOBJECTID, DATA_TEMPLATE_CONFIG, REMARK, CREATE_ID, CREATE_NAME, CREATE_TIME, REF_DEPT_ID, JOB_ID, REF_PROJECTID, TYPES) VALUES ('286250F610154B8CA2C66F1E8ACCE2BB', 1, '单节点流程通知', '2', null, null, 'ffTask.singleNodeFlowNotice()', null, null, null, null, 'F1DD5C21715A4DA7B873AD98BC5D1494', 'admin', '2021-11-18 09:20:16', null, '620295454243434100', null, 0);
INSERT INTO FF_APAAS_T_LOCAL_METHOD (IIDD, CHINESE_NAME, METHOD_NAME, SORT, CREATE_TIME, REF_DEPT_ID, REF_PROJECTID, TYPES) VALUES ('10CB7C37D1AD8DAB20913FFCE60F3D11', '全流程超时检查', 'ffTask.completeFlowNotice()', -2, '2021-11-18 09:20:15', null, null, 0);
INSERT INTO FF_APAAS_T_LOCAL_METHOD (IIDD, CHINESE_NAME, METHOD_NAME, SORT, CREATE_TIME, REF_DEPT_ID, REF_PROJECTID, TYPES) VALUES ('20CB7C37D1AD8DAB20913FFCE60F3D22', '流程环节超时检查', 'ffTask.singleNodeFlowNotice()', -1, '2021-11-18 09:20:15', null, null, 0);

-- ---------------------------------------------------------
-- 初始化系统配置参数
-- ---------------------------------------------------------
INSERT INTO ff_apaas_sys_config (config_id, config_name, config_key, config_value, config_type, create_by, create_time,
                                 update_by, update_time, remark, group_name,types)
VALUES ('FC67C33AEB8C4CBAB81AC39CC471EB03', '默认主题', 'DefaultSubject', '无主题','Y', null, sysdate(), NULL, NULL, NULL, '系统',0);

INSERT INTO ff_apaas_sys_config (config_id, config_name, config_key, config_value, config_type, create_by, create_time, update_by, update_time, remark, group_name, ref_dept_id, ref_projectid, types) VALUES ('XNXN2FDA175845E392977EE55EB6BB99', '自定义应用数据列表导入通知方式', 'importerNoticeMethod', '1', 'Y', null, sysdate(), null, sysdate(), '自定义应用数据导入完成通知方式如下:
0(腾讯云短信)
1(邮件)
2(微信企业号)
3(阿里云短信)
4(钉钉)
5(飞书)
6(微信公众号)
7(微信小程序)
8(敏行)
9(ESB短信)', '系统', null, null, 0);

INSERT INTO ff_apaas_sys_config (config_id, config_name, config_key, config_value, config_type, create_by, create_time,
                                 update_by, update_time, remark, group_name,types)
VALUES ('96C9CE3E457011EE81AA000C2948FADF', 'PC端域名', 'PCUrl', 'http://192.168.0.86','Y', null, sysdate(), NULL, NULL, NULL, '系统',0);

INSERT INTO ff_apaas_sys_config (config_id, config_name, config_key, config_value, config_type, create_by, create_time,
                                 update_by, update_time, remark, group_name,types)
VALUES ('019D2D96F06641C9BB990F5982F04176', '移动端域名', 'MobileUrl', 'http://192.168.0.86','Y', null, sysdate(), NULL, NULL, NULL, '系统',0);

INSERT INTO ff_apaas_sys_config (config_id, config_name, config_key, config_value, config_type, create_by, create_time,
                                 update_by, update_time, remark, group_name, ref_dept_id, ref_projectid, types)
VALUES ('AABB2FDA175845E392977EE55EB6CC88', '终端登录', 'soloLogin', 'true', 'Y', null, '2022-08-17 16:03:34', null, null,
        '是否允许账户多终端同时登录（true允许 false不允许）', '系统', null, null, 0);

INSERT INTO ff_apaas_sys_config (config_id, config_name, config_key, config_value, config_type, create_by, create_time,
                                 update_by, update_time, remark, group_name,types)
VALUES ('019D2D96F06641C9BB990F5982F04177', '数据列表默认分页数', 'defaultPageSize', '15','Y', null, sysdate(), NULL, NULL, '设置系统所有数据列表的默认分页数', '系统',0);

INSERT INTO ff_apaas_sys_config (config_id, config_name, config_key, config_value, config_type, create_by, create_time,
                                 update_by, update_time, remark, group_name,types)
VALUES ('019D2D96F06641C9BB990F5982F04178', '默认展开处理过程页签', 'defaultShowFlowProcess', '是','Y', null, sysdate(), NULL, NULL, '控制流程详情页面默认是否展开处理过程页签', '系统',0);

INSERT INTO ff_apaas_sys_config (config_id, config_name, config_key, config_value, config_type, create_by, create_time, update_by, update_time, remark, group_name, ref_dept_id, ref_projectid, types)
VALUES ('5B3D2FDA175845E392977EE55EB6A653', '附件类型', 'allowed_extension', 'bmp,gif,jpg,jpeg,png,doc,docx,xls,xlsx,ppt,pptx,html,htm,txt,rar,zip,gz,bz2,pdf,ico', 'Y', null, sysdate(), null, null, '允许上传的附件类型(英文逗号分割)', '系统附件', null, null, 0);

INSERT INTO ff_apaas_sys_config (config_id, config_name, config_key, config_value, config_type, create_by, create_time,
                                 update_by, update_time, remark, group_name,types)
VALUES ('2BE8EE39F7A511EE8A0F000C29CB1D9E', '百度地图应用Key', 'map_baidu_key', '','Y', null, sysdate(), NULL, NULL, NULL, '系统',0);
INSERT INTO ff_apaas_sys_config (config_id, config_name, config_key, config_value, config_type, create_by, create_time,
                                 update_by, update_time, remark, group_name,types)
VALUES ('7BC9585AF7A511EE8A0F000C29CB1D9E', '腾讯地图应用Key', 'map_tx_key', '','Y', null, sysdate(), NULL, NULL, NULL, '系统',0);
INSERT INTO ff_apaas_sys_config (config_id, config_name, config_key, config_value, config_type, create_by, create_time,
                                 update_by, update_time, remark, group_name,types)
VALUES ('7F6B52C8F7A511EE8A0F000C29CB1D9E', '高德地图应用Key', 'map_gaode_key', '','Y', null, sysdate(), NULL, NULL, NULL, '系统',0);
INSERT INTO ff_apaas_sys_config (config_id, config_name, config_key, config_value, config_type, create_by,
                                         create_time, update_by, update_time, remark, group_name, ref_dept_id,
                                         ref_projectid, types)
VALUES ('0B31B924FD514DF9BAC698B4B086715B', '同步下载限制', 'syncDownloadLimit',
        '500', 'Y', '72306761D85B44C685F0617E74562E0E', '2023-08-02 12:22:14', null, null,
        '同步下载限制,未配置则默认小于等于500条', '系统', null, null, 0);
INSERT INTO ff_apaas_sys_config (config_id, config_name, config_key, config_value, config_type, create_by,
                                         create_time, update_by, update_time, remark, group_name, ref_dept_id,
                                         ref_projectid, types)
VALUES ('9DFDD8B8B2AC11EFBC33000C29CB1D9E', '开启登录验证码', 'open_verify_code',
        'true', 'Y', null, sysdate(), NULL, NULL, NULL, '系统',null, null,0);

INSERT INTO ff_apaas_sys_config (config_id, config_name, config_key, config_value, config_type, create_by, create_time,
                                 update_by, update_time, remark, group_name,types)
VALUES ('019D2D96F06641C9BB990F5982F02025', '默认显示创建应用按钮', 'default_show_create_app_button', '是','Y', null, sysdate(), NULL, NULL, '默认显示创建应用按钮', '系统',0);

CREATE INDEX receiverid_deptid_projectid_isread_noticetype_one_noticetype_two ON ff_apaas_es_site_news (receiverid, ref_deptid, projectid, isread, noticetype_one, noticetype_two);
-- ---------------------------------------------------------
-- 初始化通知方式
-- ---------------------------------------------------------
INSERT INTO ff_apaas_t_notice_method(`method_id`, `method_name`, `is_show`) VALUES (0, '短信(腾讯)', 1);
INSERT INTO ff_apaas_t_notice_method(`method_id`, `method_name`, `is_show`) VALUES (1, '邮件', 1);
INSERT INTO ff_apaas_t_notice_method(`method_id`, `method_name`, `is_show`) VALUES (2, '微信企业号', 1);
INSERT INTO ff_apaas_t_notice_method(`method_id`, `method_name`, `is_show`) VALUES (3, '短信(阿里云)', 1);
INSERT INTO ff_apaas_t_notice_method(`method_id`, `method_name`, `is_show`) VALUES (4, '钉钉', 1);
INSERT INTO ff_apaas_t_notice_method(`method_id`, `method_name`, `is_show`) VALUES (5, '飞书', 1);
INSERT INTO ff_apaas_t_notice_method(`method_id`, `method_name`, `is_show`) VALUES (6, '公众号', 1);
INSERT INTO ff_apaas_t_notice_method(`method_id`, `method_name`, `is_show`) VALUES (7, '小程序', 1);
INSERT INTO ff_apaas_t_notice_method(`method_id`, `method_name`, `is_show`) VALUES (8, '敏行', 1);
INSERT INTO ff_apaas_t_notice_method(`method_id`, `method_name`, `is_show`) VALUES (9, '短信(ESB)', 1);
INSERT INTO ff_apaas_t_notice_method(`method_id`, `method_name`, `is_show`) VALUES (10, 'uni-push', 1);
INSERT INTO ff_apaas_t_notice_method(`method_id`, `method_name`, `is_show`) VALUES (11, '微信开放平台', 1);

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for doc_t_catalog_info
-- ----------------------------
DROP TABLE IF EXISTS `doc_t_catalog_info`;
CREATE TABLE `doc_t_catalog_info`  (
  `catalog_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '目录编号',
  `catalog_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '目录名称',
  `parent_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '父级编号',
  `full_id` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '目录导航编号(格式:parent_id +,+ catalog_id)',
  `classyear` int(0) NOT NULL DEFAULT 1 COMMENT '目录层级',
  `sortid` int(0) NOT NULL DEFAULT 1 COMMENT '目录序号',
  `doc_belong_type` int(0) NOT NULL DEFAULT 2 COMMENT '目录归属分类(1-个人,2-非个人)',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公司编号',
  `create_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `create_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_orgid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新人ID',
  `update_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` int(0) NOT NULL DEFAULT 0 COMMENT '是否删除(0-未删除,1-已删除)',
  PRIMARY KEY (`catalog_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '文档目录信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for doc_t_document_info
-- ----------------------------
DROP TABLE IF EXISTS `doc_t_document_info`;
CREATE TABLE `doc_t_document_info`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '文档编号',
  `doc_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '文档名称',
  `doc_size` bigint(0) NOT NULL DEFAULT 0 COMMENT '文档大小',
  `doc_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '文件存储在minio的路径',
  `preview_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '预览PDF文件路径',
  `doc_suffix` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'unknown' COMMENT '文档后缀(有的文件没有后缀，则使用unknow作为区分)',
  `doc_catalog_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '文档目录编号（没有目录的默认为0）',
  `doc_belong_type` int(0) NOT NULL DEFAULT 2 COMMENT '文档归属分类(1-个人文档,2-非个人)',
  `up_user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '上传用户编号',
  `up_user_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '上传用户名称',
  `up_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '文档上传时间',
  `deleted` int(0) NOT NULL DEFAULT 0 COMMENT '0:未删除，1:已删除',
  `deleted_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公司编号',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '文档信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for doc_t_person_recycle
-- ----------------------------
DROP TABLE IF EXISTS `doc_t_person_recycle`;
CREATE TABLE `doc_t_person_recycle`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '唯一编号',
  `userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户编号',
  `doc_type` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '文件或目录, 0:目录,1:文件',
  `doc_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '文档编号或者目录编号',
  `deleted_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `doc_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '文档或目录名称',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for doc_t_personal_document
-- ----------------------------
DROP TABLE IF EXISTS `doc_t_personal_document`;
CREATE TABLE `doc_t_personal_document`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '唯一编号',
  `userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户编号',
  `doc_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '文档编号',
  `deleted` int(0) NOT NULL COMMENT '是否删除(0-未删除,1-已删除)',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公司编号',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '个人文档信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for doc_t_shared_info
-- ----------------------------
DROP TABLE IF EXISTS `doc_t_shared_info`;
CREATE TABLE `doc_t_shared_info`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '唯一编号',
  `doc_iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '文档编号',
  `shared_type` int(0) NOT NULL COMMENT '共享类型(0-目录，1-文件)',
  `batch_id` bigint(0) NOT NULL COMMENT '共享批次编号',
  `shared_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '共享时间',
  `shared_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '共享用户编号',
  `shared_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '共享用户名称',
  `shared_receive_type` int(0) NOT NULL COMMENT '共享接收对象类型(0-表示用户,1-表示用户组, 2-表示部门)',
  `shared_receive_object_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户，用户组，部门编号',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公司编号',
  `root_node` int(0) NOT NULL DEFAULT 0 COMMENT '0:非根目录,1:是根目录',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '文档分享信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for doc_t_shared_with_me_skip
-- ----------------------------
DROP TABLE IF EXISTS `doc_t_shared_with_me_skip`;
CREATE TABLE `doc_t_shared_with_me_skip`  (
  `iidd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键ID',
  `userid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '删除用户编号',
  `shared_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分享记录的主键ID',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '共享给我删除表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_app_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_app_oper_log`;
CREATE TABLE `ff_apaas_app_oper_log`  (
  `oper_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `oper_account` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作账号',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作人员(页面显示)',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  `belong_app` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '所属应用',
  `business_type` int(0) NULL DEFAULT 1 COMMENT '业务类型（1新增 2修改 3删除）',
  `oper_channel` int(0) NULL DEFAULT 1 COMMENT '操作渠道（1WEB站点 2微信公众号 3OPENAPI）',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作人IP',
  `oper_desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '公司编号',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `ref_appid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '应用编号',
  `app_type` int(0) NULL DEFAULT 0 COMMENT '应用类型（0基础资料 1流程应用）',
  `log_type` int(0) NULL DEFAULT 0 COMMENT '日志类型（0数据日志 1附件日志）',
  `oper_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '操作数据内容',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '存储内容',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1025 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '应用操作日志记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_bulletin
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_bulletin`;
CREATE TABLE `ff_apaas_bulletin`  (
  `flowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '流程id',
  `flowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程模型id',
  `nodemodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '环节模型id',
  `flowno` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程单号',
  `create_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人id',
  `create_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门id',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_orgid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构id',
  `create_orgname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人id',
  `update_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联公司id',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目id',
  `deleted` int(0) NOT NULL DEFAULT 0 COMMENT '是否删除',
  `current_nodename` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前处理环节',
  `current_hander` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前处理人',
  `business_status` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '业务状态',
  `bulletin_type` tinyint(0) NOT NULL COMMENT '公告类型 (0:全部、1:运营商、2:公有云注册企业、3:指定范围)',
  `title` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告主题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告内容',
  `fixed_deptid` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '指定公司id,多个英文逗号分隔',
  `deadline` datetime(0) NULL DEFAULT NULL COMMENT '通知内容有效截至时间',
  `message_type` tinyint(0) NOT NULL DEFAULT 0 COMMENT '消息类型(0:顺序消息,1:延迟消息,2:定时消息)',
  `delay_time` int(0) NULL DEFAULT NULL COMMENT '延迟多少秒',
  `scheduled_time` datetime(0) NULL DEFAULT NULL COMMENT '定时发送具体时间',
  PRIMARY KEY (`flowid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '发布公告记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_bulletin_record
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_bulletin_record`;
CREATE TABLE `ff_apaas_bulletin_record`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键id',
  `bulletin_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告表id',
  `userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '需要通知的用户id',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户公司id',
  `status` tinyint(0) NOT NULL DEFAULT 0 COMMENT '消息状态 (0:未读,1:已读)',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '公告通知记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_business_api
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_business_api`;
CREATE TABLE `ff_apaas_business_api`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '接口名称',
  `group_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '分组编号',
  `group_name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '分组名称',
  `url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '请求地址后缀(/user/login)',
  `method` int(0) NOT NULL COMMENT '请求方法(1:GET,2:POST)',
  `sign` int(0) NOT NULL DEFAULT 0 COMMENT '是否验证签名(0: 否, 1: 是)',
  `context_type` int(0) NOT NULL COMMENT '内容类型:(0: none, 1:application/x-www-form-urlencoded, 2: multipart/form-data, 3: application/json, 4: application/octet-stream)',
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '请求参数',
  `response` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '响应参数',
  `sort_id` int(0) NOT NULL DEFAULT 0 COMMENT '排序值',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `create_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人ID',
  `create_person` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人名称',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  `update_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '更新人ID',
  `update_person` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '更新人名称',
  `ref_app_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '应用编号',
  `ref_app_name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '应用名称',
  `ref_project_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '项目编号',
  `ref_dept_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公司编号',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'open api 表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_business_api_model
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_business_api_model`;
CREATE TABLE `ff_apaas_business_api_model`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `api_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '接口名称',
  `api_mode` int(0) NOT NULL COMMENT '执行方式(1:自定义接口,2:系统方法)',
  `sys_method_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '系统方法ID',
  `sys_method_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '系统方法名称',
  `api_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '接口地址',
  `method` int(0) NULL DEFAULT NULL COMMENT '请求方法(1:GET,2:POST,3:PUT,4:DELETE)',
  `content_type` int(0) NULL DEFAULT NULL COMMENT '内容类型(1:none,2:x-www-form-urlencoded,3:json)',
  `is_sign` int(0) NULL DEFAULT 0 COMMENT '是否验证签名(0: 否, 1: 是)',
  `sign_mode` int(0) NULL DEFAULT NULL COMMENT '签名方式(1:MD5,2:SHA1,3:SHA256,4:SHA512,5:HMAC-SHA1,6:HMAC-SHA256,7:HMAC-SHA512,8:MD5WithRSA,9:SHA1WithRSA)',
  `secure_key` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '安全密钥',
  `sign_sort` int(0) NULL DEFAULT NULL COMMENT '签名排序(1:按参数名ASCII码从小到大, 2: 按参数名ASCII码从大到小)',
  `sign_convert` int(0) NULL DEFAULT NULL COMMENT '签名值转换(1:签名值全部转大写, 2: 签名值全部转小写)',
  `sign_add_to` int(0) NULL DEFAULT NULL COMMENT '签名添加到(1:RequestURL,2:RequestHeader,3:RequestBody)',
  `auth_type` int(0) NULL DEFAULT NULL COMMENT '授权类型(0:No Auth,1:API  Key,2:Bearer Token,3:Basic Auth)',
  `param_source` int(0) NULL DEFAULT NULL COMMENT '参数值来源(0:手动输入,1:前置请求)',
  `pre_request_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '前置请求ID',
  `pre_request_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '前置请求名称',
  `pre_request_val_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '前置请求变量ID',
  `pre_request_val_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '前置请求变量名称',
  `auth_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '授权KEY',
  `auth_value` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '授权VALUE',
  `auth_value_prefix` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '授权VALUE前缀',
  `auth_add_to` int(0) NULL DEFAULT NULL COMMENT 'APIKEY添加到(1:RequestURL,2:RequestHeader,3:RequestBody)',
  `bearer_token` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '令牌(BearerToken)',
  `basicauth_uname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名(BasicAuth)',
  `basicauth_pwd` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码(BasicAuth)',
  `deleted` int(0) NULL DEFAULT NULL COMMENT '是否删除(0: 否, 1: 是)',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `create_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新人ID',
  `update_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `ref_project_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '项目编号',
  `ref_dept_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公司编号',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '业务接口模型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_business_api_parameter
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_business_api_parameter`;
CREATE TABLE `ff_apaas_business_api_parameter`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `param_class` int(0) NOT NULL COMMENT '参数分类(1:RequestURL,2:RequestHeader,3:RequestBody)',
  `param_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '参数名',
  `param_title` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '参数说明',
  `param_type` int(0) NULL DEFAULT NULL COMMENT '参数类型(1:string,2:number,3:boolean,4:array,5:object,6:objectArray,7:sublist,8:null)',
  `required` int(0) NOT NULL DEFAULT 0 COMMENT '是否必填(0:否, 1:是)',
  `is_sign_param` int(0) NOT NULL COMMENT '是否参与签名(0:否, 1:是)',
  `remark` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `parentid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '父级ID',
  `sort_id` int(0) NOT NULL COMMENT '排序号',
  `ref_api_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '业务接口模型编号',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '业务接口参数表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_business_ref_app_config
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_business_ref_app_config`;
CREATE TABLE `ff_apaas_business_ref_app_config`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `business_api_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '业务接口ID',
  `business_api_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '业务接口名称',
  `trigger_type` tinyint(1) NOT NULL COMMENT '触发类型(1: 定时服务, 2: 流程)',
  `trigger_rule` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '触发规则(1: 操作完成前,2: 操作完成后)',
  `trigger_server` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '触发服务',
  `trigger_server_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '触发服务名称',
  `node_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '环节ID',
  `node_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '环节名称',
  `action_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '动作ID',
  `action_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '动作名称',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '说明',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `create_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人ID',
  `create_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人名称',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  `update_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '更新人ID',
  `update_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '更新人名称',
  `flowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程模型ID',
  `flowmodelname` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程模型名称',
  `oflowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程模型ID原始值',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '业务关联应用配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_actorcond
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_actorcond`;
CREATE TABLE `ff_apaas_es_actorcond`  (
  `condid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '编号',
  `flowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '关联流程模型编号',
  `condname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '条件人员名称',
  `statement` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '条件语句',
  `remark` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`condid`, `flowmodelid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '流程环节条件人员配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_actorextdef
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_actorextdef`;
CREATE TABLE `ff_apaas_es_actorextdef`  (
  `actorext_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '编号',
  `actorext_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '扩展人员名称',
  `actorext_desc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '扩展描述',
  `assemblyname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '程序类名',
  `actorext_type` int(0) NOT NULL COMMENT '扩展类型 0全局 1项目内',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  PRIMARY KEY (`actorext_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '流程扩展人员配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_agent
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_agent`;
CREATE TABLE `ff_apaas_es_agent`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户编号',
  `appid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '应用编号',
  `agentid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '代理人编号',
  `begintime` datetime(0) NULL DEFAULT NULL COMMENT '开始时间',
  `endtime` datetime(0) NULL DEFAULT NULL COMMENT '结束时间',
  `agentstatus` int(0) NOT NULL DEFAULT 0 COMMENT '代理状态 0 未启用 1启用',
  `createtime` datetime(0) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '出差授权表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_app
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_app`;
CREATE TABLE `ff_apaas_es_app`  (
  `appid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '应用编号',
  `appname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '应用名称',
  `app_tablename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '应用表',
  `listurl` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '应用列表地址',
  `formurl` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '应用详情地址',
  `subject_config` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程待办主题配置',
  `remark` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '应用描述',
  `project` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '项目标记',
  `appcode` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '应用代号',
  `source_type` int(0) NOT NULL DEFAULT 0 COMMENT '应用来源 0 自定义 1二次开发',
  `app_type` int(0) NOT NULL DEFAULT 1 COMMENT '应用类型 0基础资料 1流程应用',
  `creater_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `creater_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '最后更新人ID',
  `update_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '最后更新人名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '最后更新时间',
  `deleted` int(0) NOT NULL DEFAULT 0 COMMENT '是否删除 0否 1是',
  `status` int(0) NOT NULL DEFAULT 0 COMMENT '应用状态 0停用 1启用',
  `icon` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '应用图标',
  `projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  `show_config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '展示方式 存储方式配置JSON字符串',
  PRIMARY KEY (`appid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '应用表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_app_actiontype
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_app_actiontype`;
CREATE TABLE `ff_apaas_es_app_actiontype`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `ref_appid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联应用ID',
  `actiontype_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '操作项名称',
  `actiontype` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '操作项',
  `sortid` int(0) NOT NULL DEFAULT 0 COMMENT '排序值',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '应用操作项表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_app_actiontype_default
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_app_actiontype_default`;
CREATE TABLE `ff_apaas_es_app_actiontype_default`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `app_type` int(0) NOT NULL DEFAULT 1 COMMENT '应用类型 0基础资料 1流程应用',
  `actiontype_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '操作项名称',
  `actiontype` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '操作项',
  `sortid` int(0) NOT NULL DEFAULT 0 COMMENT '排序值',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '默认应用操作项表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_app_organization
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_app_organization`;
CREATE TABLE `ff_apaas_es_app_organization`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `appid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '应用编号',
  `config_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '配置信息',
  `trigger_mode` int(0) NOT NULL COMMENT '触发方式 1新增 2 修改 3删除',
  `update_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '最后更新人ID',
  `update_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '最后更新人名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '最后更新时间',
  `projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所属项目ID',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '归属公司ID',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '应用联动组织架构表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_app_special
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_app_special`;
CREATE TABLE `ff_apaas_es_app_special`  (
  `appid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '应用编号',
  `appname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '应用名称',
  `app_tablename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '应用表',
  `app_type` int(0) NOT NULL DEFAULT 1 COMMENT '应用类型 0全局应用 1项目应用',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  `creater_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `creater_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '最后更新人ID',
  `update_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '最后更新人名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '最后更新时间',
  `projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  PRIMARY KEY (`appid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '特殊应用表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_app_submit_limit
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_app_submit_limit`;
CREATE TABLE `ff_apaas_es_app_submit_limit`  (
  `appid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '应用ID',
  `is_all_limit` int(0) NULL DEFAULT NULL COMMENT '是否限制提交总量(0否1是)',
  `all_limit_total` int(0) NULL DEFAULT NULL COMMENT '提交限制总量',
  `is_month_limit` int(0) NULL DEFAULT NULL COMMENT '是否限制月提交总量(0否1是)',
  `month_limit_total` int(0) NULL DEFAULT NULL COMMENT '月提交限制总量',
  `is_timing_limit` int(0) NULL DEFAULT NULL COMMENT '是否定时限制(0否1是)',
  `begin_time` datetime(0) NULL DEFAULT NULL COMMENT '限制提交起始时间',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '限制提交结束时间',
  `extention` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '扩展信息',
  `create_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `deleted` int(0) NULL DEFAULT NULL COMMENT '是否删除(0否1是)',
  `ref_project` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属公司',
  PRIMARY KEY (`appid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '应用数据提交限制表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_app_submit_log
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_app_submit_log`;
CREATE TABLE `ff_apaas_es_app_submit_log`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `extention` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '扩展信息',
  `create_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `deleted` int(0) NULL DEFAULT NULL COMMENT '是否删除(0否1是)',
  `ref_appid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属应用',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属公司',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '应用数据提交日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_catalog
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_catalog`;
CREATE TABLE `ff_apaas_es_catalog`  (
  `catalogid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '类别编号',
  `fullid` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'FULL编号',
  `catalogname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类别名称',
  `parentid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '上级分类',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `sortid` int(0) NULL DEFAULT NULL COMMENT '排序值',
  `classlayer` int(0) NOT NULL DEFAULT 1 COMMENT '层级',
  `deleted` int(0) NULL DEFAULT NULL COMMENT '是否删除',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联公司ID',
  `addtime` datetime(0) NULL DEFAULT NULL COMMENT '添加时间',
  `creater_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `creater_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `special_type` int(0) NOT NULL DEFAULT 0 COMMENT '是否特殊类别 0否 1是',
  PRIMARY KEY (`catalogid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '常用类别表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_f_actors
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_f_actors`;
CREATE TABLE `ff_apaas_es_f_actors`  (
  `faid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '编号',
  `flowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '关联流程模型编号',
  `actorseq` int(0) NOT NULL DEFAULT 1 COMMENT '角色序号',
  `actortype` int(0) NOT NULL DEFAULT 10 COMMENT '角色类别 10部门、20用户、40用户组',
  `actorid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色编号',
  PRIMARY KEY (`faid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '流程启动人员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_f_specactor
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_f_specactor`;
CREATE TABLE `ff_apaas_es_f_specactor`  (
  `fspeid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '编号',
  `flowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '关联流程模型编号',
  `actorseq` int(0) NOT NULL DEFAULT 1 COMMENT '角色序号',
  `spectype` int(0) NOT NULL DEFAULT 0 COMMENT '特殊权限类别 10传阅、20终止、30删除、40催办、50调度、60暂停、70督办',
  `actortype` int(0) NOT NULL DEFAULT 10 COMMENT '角色类别 10部门、20用户、40用户组',
  `actorid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色编号',
  PRIMARY KEY (`fspeid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '流程特殊权限配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_fields
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_fields`;
CREATE TABLE `ff_apaas_es_fields`  (
  `fieldid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '字段编号',
  `appid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '关联应用编号',
  `fieldname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '字段名称',
  `cname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '中文名称',
  `dtype` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '字段格式',
  `dtypelength` int(0) NULL DEFAULT NULL COMMENT '格式长度',
  `dtypepre` int(0) NULL DEFAULT NULL COMMENT '小数位',
  `fieldtype` int(0) NOT NULL DEFAULT -1 COMMENT '一级分类',
  `isset` int(0) NOT NULL DEFAULT 0 COMMENT '设置类型 0普通 -1条件路径 -2显示控制',
  `refid` int(0) NOT NULL DEFAULT 0 COMMENT '二级分类',
  `refremote` int(0) NOT NULL DEFAULT 0 COMMENT '关联范围类型 1自定义范围 2数据关联',
  `refvalue` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '关联配置值',
  `iskey` int(0) NOT NULL COMMENT '排序值',
  `ref_formid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联表单ID',
  `deleted` int(0) NULL DEFAULT 0 COMMENT '是否删除',
  `fieldname_alias` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '字段名称别名',
  PRIMARY KEY (`fieldid`) USING BTREE,
  INDEX `index_es_fields_appid`(`appid`, `deleted`) USING BTREE,
  INDEX `index_es_fields_formid`(`ref_formid`, `deleted`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '应用信息项' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_fields_special
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_fields_special`;
CREATE TABLE `ff_apaas_es_fields_special`  (
  `fieldid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '字段编号',
  `appid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '关联应用编号',
  `fieldname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '字段名称',
  `cname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '中文名称',
  `fieldtype` int(0) NOT NULL DEFAULT -1 COMMENT '一级分类',
  `refid` int(0) NOT NULL DEFAULT 0 COMMENT '二级分类',
  `refvalue` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '关联配置值',
  `iskey` int(0) NOT NULL COMMENT '排序值',
  PRIMARY KEY (`fieldid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '特殊应用信息项' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_flow
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_flow`;
CREATE TABLE `ff_apaas_es_flow`  (
  `flowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '流程编号',
  `flowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联流程模型编号',
  `appid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '应用编号',
  `subject` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '主题',
  `premessageid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '前置消息编号',
  `preflowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '前置流程编号',
  `jointype` int(0) NOT NULL DEFAULT 10 COMMENT '衔接类别 10普通、20衔接、30嵌套',
  `starttime` datetime(0) NULL DEFAULT NULL COMMENT '启动时间',
  `endtime` datetime(0) NULL DEFAULT NULL COMMENT '结束时间',
  `starterid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '启动人员编号',
  `expectendtime` datetime(0) NULL DEFAULT NULL COMMENT '预计结束时间',
  `status` int(0) NOT NULL DEFAULT 0 COMMENT '流程状态',
  `attachment` int(0) NOT NULL DEFAULT 0 COMMENT '是否存在附件',
  `flowno` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程单号',
  `deleted` int(0) NOT NULL COMMENT '是否删除 0否 1是',
  `business_status` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '对应业务状态',
  `projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  `current_handerid` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前处理人ID',
  `current_hander` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前处理人名称',
  `current_nodeid` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前处理环节ID',
  `current_nodename` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前处理环节名称',
  PRIMARY KEY (`flowid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '流程实例表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_flowdelelog
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_flowdelelog`;
CREATE TABLE `ff_apaas_es_flowdelelog`  (
  `flowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '流程编号',
  `appid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '应用编号',
  `subject` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程主题',
  `remark` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '删除原因',
  `deletedtime` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  `douserid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '删除人编号',
  PRIMARY KEY (`flowid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '流程实例删除日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_flowfromto
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_flowfromto`;
CREATE TABLE `ff_apaas_es_flowfromto`  (
  `ftid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '编号',
  `fflowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '开始流程编号',
  `tflowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '结尾流程编号',
  `premessageid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '前置消息编号',
  `linkmessageid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '连接消息编号',
  `jointype` int(0) NOT NULL DEFAULT 10 COMMENT '衔接类别 10普通、20衔接、30嵌套',
  PRIMARY KEY (`ftid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '流程实例顺序表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_flowmodel
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_flowmodel`;
CREATE TABLE `ff_apaas_es_flowmodel`  (
  `flowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '流程模型编号',
  `flowname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程模型名称',
  `appid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联应用编号',
  `preflowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '前置流程模型编号',
  `oflowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '原始流程模型编号',
  `status` int(0) NOT NULL DEFAULT 0 COMMENT '流程状态 0未启动 1启动',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `totalhours` int(0) NOT NULL DEFAULT 0 COMMENT '总时限',
  `timeunit` int(0) NOT NULL DEFAULT 0 COMMENT '时限单位',
  `deleted` int(0) NOT NULL DEFAULT 0 COMMENT '是否删除',
  `flowchart` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '流程图字符串',
  `flowbusid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '业务流程编号',
  `creater_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `creater_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '最后更新人ID',
  `update_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '最后更新人名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '最后更新时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  `publish_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '发布人ID',
  `publish_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '发布人',
  `publish_time` datetime(0) NULL DEFAULT NULL COMMENT '发布时间',
  `is_publish` int(0) NULL DEFAULT 0 COMMENT '是否发布过',
  `specactordata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '全局特殊权限人员配置集合 用于前端页面展示',
  `unit_config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '时效配置JSON串',
  PRIMARY KEY (`flowmodelid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '流程模型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_flowmodel_notice_config
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_flowmodel_notice_config`;
CREATE TABLE `ff_apaas_es_flowmodel_notice_config`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `flowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '流程模型编号',
  `noticetype` int(0) NOT NULL DEFAULT 0 COMMENT '通知方式 0待办通知',
  `operattype` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '操作类别 存储JSON字符串[{value:10,name:\'提交\'}],后台在使用时进行解析',
  `noticemethod` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '通知方式存储JSON字符串[{value:0,name:\'短信\'}],后台在使用时进行解析',
  `noticeobject` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '通知对象存储JSON字符串[{value:0,name:\'发起人\'}],后台在使用时进行解析\r\n            如果配置了通知对象为其他，则会存在嵌套子级对象集合的情况',
  `noticeobject_other` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '通知的其他对象值',
  `noticecontent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '通知内容',
  `sortid` int(0) NOT NULL DEFAULT 0 COMMENT '排序值',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  `configtype` int(0) NOT NULL DEFAULT 0 COMMENT '配置对象 0全局 1环节',
  `form_appoint` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表单指定 存储格式{\"type\":200,\"list:\":[\'表单人员字段编码\']} type:200 表示人员 210表示部门 220表示角色',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '流程待办通知配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_flowmodel_visit_config
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_flowmodel_visit_config`;
CREATE TABLE `ff_apaas_es_flowmodel_visit_config`  (
  `flowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '流程模型编号',
  `islimitcount` int(0) NOT NULL DEFAULT 0 COMMENT '是否限制提交总量 0否 1是',
  `limitcount` int(0) NOT NULL DEFAULT 0 COMMENT '限制提交总量',
  `islimitmonthcount` int(0) NOT NULL DEFAULT 0 COMMENT '是否限制每月提交上限 0否 1是',
  `limitmonthcount` int(0) NOT NULL DEFAULT 0 COMMENT '限制每月提交总量',
  `islimitpersoncount` int(0) NOT NULL DEFAULT 0 COMMENT '限制单人提交总次数 0否 1是',
  `limitpersoncount` int(0) NOT NULL DEFAULT 0 COMMENT '限制单人提交总量',
  `islimitaddway` int(0) NOT NULL DEFAULT 0 COMMENT '是否控制申请通道',
  `limitbegintime` datetime(0) NULL DEFAULT NULL COMMENT '开启开始时间',
  `limitendtime` datetime(0) NULL DEFAULT NULL COMMENT '开启结束时间',
  `isallowfree` int(0) NOT NULL DEFAULT 0 COMMENT '是否允许免密登录',
  `allowfree_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '免密访问地址',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  PRIMARY KEY (`flowmodelid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '流程访问机制配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_flowpauselog
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_flowpauselog`;
CREATE TABLE `ff_apaas_es_flowpauselog`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '编号',
  `flowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程编号',
  `pauserreason` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '暂停原因',
  `pausetime` datetime(0) NULL DEFAULT NULL COMMENT '暂停时间',
  `douserid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '暂停人编号',
  `continuetime` datetime(0) NULL DEFAULT NULL COMMENT '继续时间',
  `contuserid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '继续人编号',
  `status` int(0) NOT NULL DEFAULT 0 COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '流程实例暂停日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_influx_result
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_influx_result`;
CREATE TABLE `ff_apaas_es_influx_result`  (
  `messageid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '消息编号',
  `flowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程编号',
  `nodeid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '环节编号',
  `flowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程模型ID',
  `nodemodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '环节模型ID',
  `actionid` int(0) NOT NULL DEFAULT 1 COMMENT '处理动作编号 1同意 0不同意',
  `userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '处理人ID',
  PRIMARY KEY (`messageid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '会签结果记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_message
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_message`;
CREATE TABLE `ff_apaas_es_message`  (
  `messageid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '消息编号',
  `flowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程编号',
  `nodeid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '环节编号',
  `messagetype` int(0) NOT NULL DEFAULT 0 COMMENT '消息类别',
  `receiverid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前处理人',
  `recdeptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前处理部门',
  `recorgid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前处理机构',
  `originid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '原处理人',
  `senderid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '前处理人',
  `senderdeptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '前处理部门',
  `senderorgid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '前处理机构',
  `sendtime` datetime(0) NULL DEFAULT NULL COMMENT '送达时间',
  `receivetime` datetime(0) NULL DEFAULT NULL COMMENT '接收时间',
  `readtime` datetime(0) NULL DEFAULT NULL COMMENT '已阅时间',
  `receivetype` int(0) NULL DEFAULT NULL COMMENT '接收类别',
  `expected` datetime(0) NULL DEFAULT NULL COMMENT '预计结束时间',
  `warntime` datetime(0) NULL DEFAULT NULL COMMENT '响应结束时间',
  `recentprocesstime` datetime(0) NULL DEFAULT NULL COMMENT '最近处理时间',
  `factors` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '来源人员列表',
  `tactors` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '发送人员列表',
  `actortype` int(0) NOT NULL DEFAULT 0 COMMENT '角色类别',
  `actionid` int(0) NOT NULL DEFAULT 0 COMMENT '处理动作编号',
  `receivertype` int(0) NOT NULL DEFAULT 0 COMMENT '机构环节时接收者类别',
  `orgrecid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机构环节时接收单位ID',
  `orgrecname` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机构环节时接收单位名称',
  `opinion` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '办理意见',
  `isread` int(0) NOT NULL DEFAULT 0 COMMENT '是否已阅',
  `important` int(0) NOT NULL DEFAULT 1 COMMENT '消息级别 0较低、1一般、2重要',
  `deleted` int(0) NOT NULL DEFAULT 0 COMMENT '是否删除',
  `status` int(0) NOT NULL DEFAULT 0 COMMENT '消息状态',
  `prepausestatus` int(0) NOT NULL DEFAULT 0 COMMENT '暂停前状态',
  `timeout_before` int(0) NOT NULL DEFAULT 0 COMMENT '超时前标志(0:非即将超时, 1: 即将超时)',
  `timeout_after` int(0) NOT NULL DEFAULT 0 COMMENT '超时后标志(0:非超时后, 1:超时后)',
  `shelve` int(0) NOT NULL DEFAULT 0 COMMENT '是否搁置',
  PRIMARY KEY (`messageid`) USING BTREE,
  INDEX `index_message_flowid`(`flowid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '流程消息记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_messagefromto
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_messagefromto`;
CREATE TABLE `ff_apaas_es_messagefromto`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `fmessageid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '开始消息编号',
  `tmessageid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '结尾消息编号',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '流程消息顺序表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_messageopinion
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_messageopinion`;
CREATE TABLE `ff_apaas_es_messageopinion`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `messageid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '消息编号',
  `mpcontent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '内容',
  `updatetime` datetime(0) NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '扩展意见表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_msgprocess
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_msgprocess`;
CREATE TABLE `ff_apaas_es_msgprocess`  (
  `mpid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `flowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程编号',
  `userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户编号',
  `username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名称',
  `msgtype` int(0) NOT NULL COMMENT '补充意见类型 0补充意见 1暂停流程 2恢复流程 3终止流程 50取消邀请 60邀请传阅 70邀请协办 80邀请沟通',
  `mpcontent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '补充意见',
  `mptime` datetime(0) NULL DEFAULT NULL COMMENT '补充时间',
  `flowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程模型编号',
  `nodemodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '环节模型编号',
  `messageid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '消息编号',
  PRIMARY KEY (`mpid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '补充意见表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_msgsupervise
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_msgsupervise`;
CREATE TABLE `ff_apaas_es_msgsupervise`  (
  `mpid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `flowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程编号',
  `userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户编号',
  `username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名称',
  `mpcontent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '督办意见',
  `addtime` datetime(0) NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`mpid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '督办意见表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_msgurg_log
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_msgurg_log`;
CREATE TABLE `ff_apaas_es_msgurg_log`  (
  `mpid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `flowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程编号',
  `userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户编号',
  `username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名称',
  `receiverid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '被通知人ID',
  `receivername` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '被通知人名称',
  `mpcontent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '催办内容',
  `addtime` datetime(0) NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`mpid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '催办日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_n_m_action
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_n_m_action`;
CREATE TABLE `ff_apaas_es_n_m_action`  (
  `nmactionid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '编号',
  `flowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '关联流程模型编号',
  `nodemodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '关联环节模型',
  `actionid` int(0) NOT NULL DEFAULT 1 COMMENT '动作ID',
  `actionname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '动作名称',
  `isdefault` int(0) NOT NULL DEFAULT 0 COMMENT '是否缺省',
  `busactionid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '绑定业务动作编号',
  `sync_exec` int(0) NOT NULL DEFAULT 0 COMMENT '是否同步执行 0否 1是',
  PRIMARY KEY (`nmactionid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '流程环节动作表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_n_m_action_bind
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_n_m_action_bind`;
CREATE TABLE `ff_apaas_es_n_m_action_bind`  (
  `nmactionid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '编号',
  `flowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '关联流程模型编号',
  `nodemodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '关联环节模型',
  `actionid` int(0) NOT NULL DEFAULT 1 COMMENT '动作ID',
  `bind_type` int(0) NOT NULL DEFAULT 0 COMMENT '绑定类型 0数据新增 1数据修改 2自定义',
  `bind_appid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '绑定应用ID 格式为[项目id,应用id]',
  `bind_oflowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '绑定流程模型ID',
  `bind_actionid` int(0) NULL DEFAULT 0 COMMENT '绑定起草环节按钮',
  `cond_rule` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '条件规则',
  `value_rule` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '赋值规则',
  `custom_identy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '自定义标识',
  `bind_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '绑定标题',
  `sortid` int(0) NOT NULL COMMENT '排序值',
  `trigger_rule` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '触发规则',
  PRIMARY KEY (`nmactionid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '流程环节动作绑定关联子表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_n_m_action_influxactor
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_n_m_action_influxactor`;
CREATE TABLE `ff_apaas_es_n_m_action_influxactor`  (
  `nmactionid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '编号',
  `flowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '关联流程模型编号',
  `nodemodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '关联环节模型',
  `actionid` int(0) NOT NULL DEFAULT 1 COMMENT '动作ID',
  `actionname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '动作名称',
  PRIMARY KEY (`nmactionid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '流程会签环节动作表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_n_m_actor
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_n_m_actor`;
CREATE TABLE `ff_apaas_es_n_m_actor`  (
  `nmactorid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '编号',
  `flowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '关联流程模型编号',
  `nodemodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '关联环节模型',
  `actorseq` int(0) NOT NULL DEFAULT 1 COMMENT '角色序号',
  `actorclass` int(0) NOT NULL DEFAULT 0 COMMENT '人员处理类别 0主办、1阅知/协办',
  `actortype` int(0) NOT NULL DEFAULT 10 COMMENT '角色类别 10部门、20用户、30条件人员、40用户组',
  `actorid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色编号',
  PRIMARY KEY (`nmactorid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '流程环节人员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_n_m_att_config
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_n_m_att_config`;
CREATE TABLE `ff_apaas_es_n_m_att_config`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '编号',
  `flowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '关联流程模型编号',
  `nodemodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '关联环节模型',
  `condrule` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `addtime` datetime(0) NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`iidd`) USING BTREE,
  UNIQUE INDEX `AK_key_flowmodel_nodemodel`(`flowmodelid`, `nodemodelid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '流程环节附件必填配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_n_m_field
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_n_m_field`;
CREATE TABLE `ff_apaas_es_n_m_field`  (
  `nmfieldid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '编号',
  `flowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '关联流程模型编号',
  `nodemodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '关联环节模型',
  `fieldid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联信息项编号',
  `fieldname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '字段名称',
  `cname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '中文名称',
  `isvisible` int(0) NOT NULL DEFAULT 1 COMMENT '是否可见',
  `isedit` int(0) NOT NULL DEFAULT 1 COMMENT '是否可编辑',
  `isrequired` int(0) NOT NULL DEFAULT 1 COMMENT '是否必填',
  `iskey` int(0) NOT NULL DEFAULT 0 COMMENT '排序值',
  `subtable_config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '子表特殊配置',
  PRIMARY KEY (`nmfieldid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '流程环节信息项表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_n_m_flow
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_n_m_flow`;
CREATE TABLE `ff_apaas_es_n_m_flow`  (
  `nmflowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '编号',
  `flowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '关联流程模型编号',
  `nodemodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '关联环节模型',
  `flowseq` int(0) NOT NULL DEFAULT 1 COMMENT '顺序号',
  `linkflowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '连接的流程模型编号',
  `ismaster` int(0) NOT NULL DEFAULT 1 COMMENT '主办',
  `isreader` int(0) NOT NULL DEFAULT 0 COMMENT '阅知',
  `isassist` int(0) NOT NULL DEFAULT 0 COMMENT '协办',
  `trackrange` int(0) NOT NULL DEFAULT 0 COMMENT '子流程跟踪权限',
  `islink` int(0) NOT NULL DEFAULT 0 COMMENT '连接类型 0嵌套 1衔接',
  `nmflow_config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '高级配置 记录发起子流程时，字段映射关系，主要用于初始化赋值',
  PRIMARY KEY (`nmflowid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '流程环节子流程配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_n_m_link
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_n_m_link`;
CREATE TABLE `ff_apaas_es_n_m_link`  (
  `linkid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '编号',
  `flowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '关联流程模型编号',
  `nodemodela` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '环节A',
  `nodemodelb` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '环节B',
  `actionid` int(0) NOT NULL DEFAULT 0 COMMENT '动作ID',
  `linkname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '连接名称',
  `linkrule` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '条件规则',
  `remark` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `counter` int(0) NOT NULL DEFAULT 0 COMMENT '连接线计数器',
  `tipsname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '提示名称',
  PRIMARY KEY (`linkid`, `flowmodelid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '流程环节连接表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_n_m_specactor
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_n_m_specactor`;
CREATE TABLE `ff_apaas_es_n_m_specactor`  (
  `nmspeid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '编号',
  `flowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '关联流程模型编号',
  `nodemodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '关联环节模型',
  `actorseq` int(0) NOT NULL DEFAULT 1 COMMENT '顺序号',
  `spectype` int(0) NOT NULL DEFAULT 0 COMMENT '特殊权限类别',
  `actortype` int(0) NOT NULL DEFAULT 10 COMMENT '角色类别 10部门、20用户、40用户组',
  `actorid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色编号',
  PRIMARY KEY (`nmspeid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '流程环节特殊权限配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_node
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_node`;
CREATE TABLE `ff_apaas_es_node`  (
  `nodeid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '环节编号',
  `flowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程编号',
  `flowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程模型编号',
  `nodemodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '环节模型编号',
  `nodemodeltype` int(0) NOT NULL DEFAULT 0 COMMENT '环节模型类别',
  `worktype` int(0) NOT NULL DEFAULT 0 COMMENT '环节工作类别',
  `starttime` datetime(0) NULL DEFAULT NULL COMMENT '启动时间',
  `actionid` int(0) NOT NULL DEFAULT 0 COMMENT '环节出口状态',
  `expectnumber` int(0) NOT NULL DEFAULT 1 COMMENT '环节应达人数(合流)',
  `arrivednumber` int(0) NOT NULL DEFAULT 1 COMMENT '实际已达人数',
  `status` int(0) NOT NULL DEFAULT 0 COMMENT '环节状态',
  `prepausestatus` int(0) NOT NULL DEFAULT 0 COMMENT '暂停前状态保存',
  `statustime` datetime(0) NULL DEFAULT NULL COMMENT '最近状态变更时间',
  PRIMARY KEY (`nodeid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '流程环节实例表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_node_temp
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_node_temp`;
CREATE TABLE `ff_apaas_es_node_temp`  (
  `nodeid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `actionsave` int(0) NULL DEFAULT NULL COMMENT '动作ID',
  `receiversave` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '接收人XML串',
  PRIMARY KEY (`nodeid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '流程环节临时表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_nodefromto
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_nodefromto`;
CREATE TABLE `ff_apaas_es_nodefromto`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `fnodeid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '开始环节编号',
  `tnodeid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '结尾环节编号',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '流程环节顺序表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_nodemodel
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_nodemodel`;
CREATE TABLE `ff_apaas_es_nodemodel`  (
  `flowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '流程模型编号',
  `nodemodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '流程环节编号',
  `nodebusid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '绑定的业务环节编号',
  `nodename` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '环节名称',
  `opid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '操作视图编号',
  `type` int(0) NOT NULL COMMENT '环节类别',
  `pathid` int(0) NULL DEFAULT NULL COMMENT '环节路径',
  `counter` int(0) NOT NULL DEFAULT 1 COMMENT '到达的环节数',
  `masternode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '主送环节模型',
  `masterpath` int(0) NULL DEFAULT NULL COMMENT '主送路径',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `respondhours` int(0) NOT NULL DEFAULT 0 COMMENT '响应时限',
  `respond_timeunit` int(0) NOT NULL DEFAULT 0 COMMENT '响应时限单位',
  `totalhours` int(0) NOT NULL DEFAULT 0 COMMENT '处理时限',
  `timeunit` int(0) NOT NULL DEFAULT 0 COMMENT '处理时限单位',
  `viewattach` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '附件权限',
  `warninghours` decimal(18, 2) NULL DEFAULT 0.00 COMMENT '预警时限',
  `canautopass` int(0) NOT NULL DEFAULT 0 COMMENT '能否自动通过',
  `cancustlimit` int(0) NOT NULL DEFAULT 0 COMMENT '能否指定时限',
  `takeover` int(0) NOT NULL DEFAULT 0 COMMENT '是否允许交接',
  `stopflow` int(0) NOT NULL DEFAULT 0 COMMENT '是否允许终止',
  `canjump` int(0) NOT NULL DEFAULT 0 COMMENT '是否允许跳转',
  `canback` int(0) NOT NULL DEFAULT 0 COMMENT '是否允许退回',
  `cantakeback` int(0) NOT NULL DEFAULT 0 COMMENT '是否允许回收',
  `canattemper` int(0) NOT NULL DEFAULT 0 COMMENT '是否允许调度',
  `cantransmit` int(0) NOT NULL DEFAULT 0 COMMENT '是否允许传阅',
  `cancommunic` int(0) NOT NULL DEFAULT 0 COMMENT '是否允许沟通',
  `canbackhasdone` int(0) NOT NULL DEFAULT 0 COMMENT '是否允许驳回',
  `canassist` int(0) NOT NULL DEFAULT 0 COMMENT '是否允许协办',
  `canfreetakeover` int(0) NOT NULL DEFAULT 0 COMMENT '是否允许自由交接',
  `canshowprocess` int(0) NOT NULL DEFAULT 1 COMMENT '是否显示处理过程',
  `requiredopinion` int(0) NOT NULL DEFAULT 1 COMMENT '是否必填办理意见',
  `actordata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `specactordata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `business_status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '对应业务状态',
  `check_for_all` int(0) NULL DEFAULT 1 COMMENT '是否需要所有人会签',
  `check_by_back` int(0) NULL DEFAULT 0 COMMENT '是否通过后台计算会签',
  `chooseperson` int(0) NULL DEFAULT 1 COMMENT '是否需要发起人选择会签人员',
  `relation_app` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '关联工单应用范围 存储格式[{\"name\":\"应用名称\",\"value\":\"应用id\"}]',
  `not_find_node_tip` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '找不到下一个环节路径提示语',
  `allow_close_relation_app` int(0) NOT NULL DEFAULT 1 COMMENT '是否允许关闭关联工单 1允许 0不允许',
  `relation_app_tip` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联工单图标描述',
  `auto_send` int(0) NULL DEFAULT 0 COMMENT '分流环节是否自动发送 0否 1是',
  `unit_config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '时效配置JSON串',
  `respond_unit_config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '响应时限配置JSON串',
  PRIMARY KEY (`flowmodelid`, `nodemodelid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '流程环节模型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_notice_log
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_notice_log`;
CREATE TABLE `ff_apaas_es_notice_log`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `noticetype_one` int(0) NOT NULL COMMENT '通知大类 待办、催办、超时提醒',
  `noticetype_two` int(0) NULL DEFAULT -1 COMMENT '通知小类 根据不同通知大类填充相关通知小类信息',
  `noticemethod` int(0) NOT NULL DEFAULT 0 COMMENT '通知方式',
  `noticeobject` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '通知对象标识 根据不同通知方式记录相关的对象标识 如短信对应手机号码',
  `noticecontent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '通知内容',
  `noticeurl` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '通知关联url',
  `receiverid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '被通知人ID',
  `receivername` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '被通知人名称',
  `noticetime` datetime(0) NULL DEFAULT NULL COMMENT '通知时间',
  `ref_flowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联流程ID',
  `ref_messageid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联消息ID',
  `projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  `deleted` int(0) NOT NULL DEFAULT 0 COMMENT '是否删除 0否 1是',
  `ref_overtime_iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联超时通知配置表IIDD',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '通知消息日志记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_overtime_notice_config
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_overtime_notice_config`;
CREATE TABLE `ff_apaas_es_overtime_notice_config`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `configtype` int(0) NOT NULL DEFAULT 0 COMMENT '配置对象 0全流程 1某个环节',
  `flowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程模型编号',
  `nodemodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '环节模型编号',
  `noticetype` int(0) NOT NULL DEFAULT 0 COMMENT '通知方式 0响应 1处理',
  `operattype` int(0) NOT NULL DEFAULT 0 COMMENT '操作类别 0超时前 1超时后',
  `overtime` int(0) NOT NULL DEFAULT 0 COMMENT '超时值',
  `timeunit` int(0) NOT NULL COMMENT '超时值类别 分钟、小时、天',
  `noticemethod` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '通知方式存储JSON字符串[{value:0,name:\'短信\'}],后台在使用时进行解析',
  `noticeobject` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '通知对象存储JSON字符串[{value:0,name:\'发起人\'}],后台在使用时进行解析\r\n            如果配置了通知对象为其他，则会存在嵌套子级对象集合的情况',
  `noticeobject_other` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '通知的其他对象值',
  `noticecontent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '通知内容',
  `sortid` int(0) NOT NULL DEFAULT 0 COMMENT '排序值',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  `form_appoint` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表单指定 存储格式{\"type\":200,\"list:\":[\'表单人员字段编码\']} type:200 表示人员 210表示部门 220表示角色',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '超时通知配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_receivelist
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_receivelist`;
CREATE TABLE `ff_apaas_es_receivelist`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `messageid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '消息编号',
  `receiveid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '接收人编号',
  `originid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '原接收人编号',
  `status` int(0) NOT NULL DEFAULT 0 COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '待接收人员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_es_site_news
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_es_site_news`;
CREATE TABLE `ff_apaas_es_site_news`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `noticetype_one` int(0) NOT NULL COMMENT '通知大类 0消息提醒、1时效提醒等',
  `noticetype_two` int(0) NULL DEFAULT -1 COMMENT '通知小类 根据不同通知大类填充相关通知小类信息',
  `noticecontent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '通知内容',
  `notice_flowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '通知关联流程ID',
  `notice_messageid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '通知关联消息ID',
  `receiverid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '被通知人ID',
  `receivername` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '被通知人名称',
  `noticetime` datetime(0) NULL DEFAULT NULL COMMENT '通知时间',
  `isread` int(0) NOT NULL DEFAULT 0 COMMENT '是否已阅 0否 1是',
  `projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  `deleted` int(0) NOT NULL DEFAULT 0 COMMENT '是否删除 0否 1是',
  `ref_overtime_iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`iidd`) USING BTREE,
  INDEX `receiverid_deptid_projectid_isread_noticetype_one_noticetype_two`(`receiverid`, `ref_deptid`, `projectid`, `isread`, `noticetype_one`, `noticetype_two`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '站内消息记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_open_api
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_open_api`;
CREATE TABLE `ff_apaas_open_api`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '接口名称',
  `group_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '分组编号',
  `group_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '分组名称',
  `url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '请求地址后缀(/user/login)',
  `method` int(0) NOT NULL COMMENT '请求方法(1:GET,2:POST)',
  `context_type` int(0) NOT NULL COMMENT '内容类型:(0: none, 1:application/x-www-form-urlencoded, 2: multipart/form-data, 3: application/json, 4: application/octet-stream)',
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '请求参数',
  `response` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '响应参数',
  `success_examples` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '响应成功示例',
  `fail_examples` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '失败示例',
  `sort_id` int(0) NOT NULL DEFAULT 0 COMMENT '排序值',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  `create_person` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '负责人',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'open api 表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_sys_config
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_sys_config`;
CREATE TABLE `ff_apaas_sys_config`  (
  `config_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '参数键值',
  `config_type` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '系统内置(Y是 N否)',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `group_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '分组名称',
  `ref_dept_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '公司编号',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '项目编号',
  `types` int(0) NULL DEFAULT 1 COMMENT '定时任务类型(0:外部,1:内部)',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_sys_job
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_sys_job`;
CREATE TABLE `ff_apaas_sys_job`  (
  `job_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务主键',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'cron执行表达式',
  `misfire_policy` int(0) NOT NULL DEFAULT 3 COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` int(0) NOT NULL DEFAULT 1 COMMENT '是否并发执行(0允许 1禁止)',
  `status` int(0) NOT NULL DEFAULT 0 COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注信息',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '公司编号',
  PRIMARY KEY (`job_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_sys_job_log`;
CREATE TABLE `ff_apaas_sys_job_log`  (
  `job_log_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` int(0) NOT NULL DEFAULT 0 COMMENT '状态(0正常 1失败)',
  `exception_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '公司编号',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_sys_logininfor`;
CREATE TABLE `ff_apaas_sys_logininfor`  (
  `info_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户账号',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登陆人名称',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` timestamp(0) NULL DEFAULT NULL COMMENT '访问时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公司编号',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统登录日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_sys_oper_log`;
CREATE TABLE `ff_apaas_sys_oper_log`  (
  `oper_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(0) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(0) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '返回参数',
  `status` int(0) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  `method_desc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '方法描述',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '操作日志记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_api_authorization
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_api_authorization`;
CREATE TABLE `ff_apaas_t_api_authorization`  (
  `app_key` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '应用唯一编号',
  `company_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司编号',
  `company_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司名称',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `deleted` tinyint(0) NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`app_key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公司认证表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_api_authorization_terminal
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_api_authorization_terminal`;
CREATE TABLE `ff_apaas_t_api_authorization_terminal`  (
  `iidd` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '唯一编号',
  `app_key` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '认证唯一编号',
  `app_secret` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '参数签名密钥',
  `company_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司编号',
  `company_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司名称',
  `terminal_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '终端名称',
  `termination_time` datetime(0) NULL DEFAULT NULL COMMENT '授权截至日期: null表示永久',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人编号',
  `create_user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人名称',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `update_user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新人编号',
  `update_user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新人名称',
  `deleted` tinyint(0) NOT NULL DEFAULT 0 COMMENT '是否删除: 0:未删除,1:已删除',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公司认证平台表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_batch_operate_log
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_batch_operate_log`;
CREATE TABLE `ff_apaas_t_batch_operate_log`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键id',
  `operate_type` int(0) NOT NULL DEFAULT 0 COMMENT '操作类型 0删除 1修改 2交接',
  `app_type` int(0) NOT NULL DEFAULT 1 COMMENT '应用类型 0基础资料 1流程应用',
  `operate_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '操作内容 对象集合的JSON串',
  `delete_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '删除原因',
  `create_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `create_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `ref_appid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联应用编号',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联项目ID',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '批量操作日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_bookmark`;
CREATE TABLE `ff_apaas_t_bookmark`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `mark_type` int(0) NULL DEFAULT 0 COMMENT '收藏类型',
  `mark_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '收藏名称',
  `catalog_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属分类ID',
  `catalog_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属分类名称',
  `mark_url` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '路由地址',
  `creater_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `creater_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  `deleted` int(0) NOT NULL DEFAULT 0 COMMENT '是否删除 0否 1是',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '收藏夹存储表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_bookmark_catalog
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_bookmark_catalog`;
CREATE TABLE `ff_apaas_t_bookmark_catalog`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `catalog_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '分类名称',
  `creater_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `creater_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  `sortid` int(0) NOT NULL DEFAULT 0 COMMENT '排序值',
  `deleted` int(0) NOT NULL DEFAULT 0 COMMENT '是否删除 0否 1是',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '收藏夹分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_business_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_business_operation_log`;
CREATE TABLE `ff_apaas_t_business_operation_log`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '唯一编号',
  `operator_user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作人编号',
  `operator_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作人名称',
  `operator_time` datetime(0) NOT NULL COMMENT '操作时间',
  `operator_item` int(0) NOT NULL COMMENT '操作项,10:用户，20:部门，30:角色,40:项目，41：项目管理员，50：应用，51：应用管理员',
  `operator_item_desc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作项描述',
  `operator_action` int(0) NOT NULL COMMENT '操作动作，2:添加, 3:修改,4:删除,5:权限变更,6停用,7:启用',
  `operator_action_desc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作动作描述',
  `operator_object_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作对象编号',
  `operator_content_value` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作内容',
  `status` int(0) NOT NULL COMMENT '操作状态 0：失败，1：成功',
  `ref_dept` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所属公司',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '业务日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_business_right
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_business_right`;
CREATE TABLE `ff_apaas_t_business_right`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '唯一编号',
  `business_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '业务标志',
  `right_type_code` int(0) NOT NULL COMMENT '权限类型（0-管理权限,1-访问权限）',
  `right_type_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限类型名称',
  `allot_object_type` int(0) NOT NULL COMMENT '授权对象类型(0-表示用户,1-表示用户组,2-表示部门)',
  `allot_object_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '授权对象编号(用户编号,用户组编号,部门编号)',
  `right_item_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '单个权限项编号',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公司编号',
  `right_source` int(0) NOT NULL COMMENT '权限来源 0文档管理 1知识 2配置管理',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '更新用户编号',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '业务权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_business_right_item
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_business_right_item`;
CREATE TABLE `ff_apaas_t_business_right_item`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '唯一编号',
  `business_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '业务标识',
  `right_type_code` int(0) NOT NULL COMMENT '权限类型（0-管理权限,1-访问权限）',
  `right_item_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '权限项标识',
  `right_item_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '权限项标识名称',
  `sordid` int(0) NOT NULL DEFAULT 1 COMMENT '排序值',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `update_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '更新用户编号',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '业务权限项表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_business_right_whitelist
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_business_right_whitelist`;
CREATE TABLE `ff_apaas_t_business_right_whitelist`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '唯一编号',
  `business_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '业务标识',
  `grant_object_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '授权对象标识',
  `ip_address` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'IP地址',
  `creater_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人编号',
  `creater_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公司编号',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '业务权限白名单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_coderule
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_coderule`;
CREATE TABLE `ff_apaas_t_coderule`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '标识ID',
  `rulename` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '规则名称',
  `reset_typeid` int(0) NOT NULL DEFAULT 0 COMMENT '重置类型 0 永不重置 1按日重置 2按月重置 3按年重置',
  `rule_length` int(0) NOT NULL DEFAULT 3 COMMENT '规则号长度',
  `step` int(0) NOT NULL DEFAULT 1 COMMENT '步进值',
  `appid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联应用ID',
  `deleted` int(0) NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '单号生成规则表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_codevalue
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_codevalue`;
CREATE TABLE `ff_apaas_t_codevalue`  (
  `ruleid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '规则ID',
  `currbh` int(0) NOT NULL DEFAULT 1 COMMENT '编号当前数值',
  `last_date` date NULL DEFAULT NULL COMMENT '最后一次生成日期',
  PRIMARY KEY (`ruleid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '单号生成记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_custom_door
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_custom_door`;
CREATE TABLE `ff_apaas_t_custom_door`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `door_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '门户名称',
  `door_remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '门户描述',
  `source_type` int(0) NOT NULL DEFAULT 0 COMMENT '门户来源 0平台 门户 1项目门户',
  `icon` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '门户图标',
  `configjson` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '配置JSON字符串',
  `creater_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `creater_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '最后更新人ID',
  `update_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '最后更新人名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '最后更新时间',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  `status` int(0) NOT NULL DEFAULT 1 COMMENT '状态 0停用 1启用',
  `deleted` int(0) NOT NULL DEFAULT 0 COMMENT '是否删除 0否 1是',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '自定义门户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_custom_door_right
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_custom_door_right`;
CREATE TABLE `ff_apaas_t_custom_door_right`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '管理员ID',
  `username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '管理员名称',
  `ref_doorid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '关联门户编号',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  `addtime` datetime(0) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '门户管理员权限信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_custom_flowinfo
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_custom_flowinfo`;
CREATE TABLE `ff_apaas_t_custom_flowinfo`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `flowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程ID',
  `flowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程模型ID',
  `nodemodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '环节模型ID',
  `flowno` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程单号',
  `create_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_orgid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构ID',
  `create_orgname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人ID',
  `update_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人名称',
  `update_time` datetime(0) NULL DEFAULT NULL,
  `ref_appid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联应用ID',
  `ref_formid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联表单ID',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联公司ID',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联项目ID',
  `deleted` int(0) NULL DEFAULT 0 COMMENT '是否删除',
  `contentjson` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '表单内容',
  `current_nodename` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前处理环节',
  `current_hander` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前处理人',
  `business_status` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '业务状态',
  `contentfield` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '表单字段',
  PRIMARY KEY (`iidd`) USING BTREE,
  INDEX `index_custom_flowid`(`flowid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '自定义应用记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_custom_form
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_custom_form`;
CREATE TABLE `ff_apaas_t_custom_form`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `ref_appid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联应用ID',
  `formjson` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '表单配置，表单设计存储JSON字符串',
  `oformid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '原始表单ID',
  `addtime` datetime(0) NULL DEFAULT NULL COMMENT '添加时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联公司ID',
  `deleted` int(0) NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '自定义表单记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_display_column
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_display_column`;
CREATE TABLE `ff_apaas_t_display_column`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `fieldname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '字段名称',
  `cname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '中文名称',
  `isshow` int(0) NOT NULL DEFAULT 0 COMMENT '是否展示 0否 1是',
  `sortid` int(0) NULL DEFAULT NULL COMMENT '排序值',
  `creater_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `creater_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `appid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属应用ID',
  `projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  `deleted` int(0) NOT NULL DEFAULT 0 COMMENT '是否删除 0否 1是',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '数据列表展示列存储表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_exception_record
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_exception_record`;
CREATE TABLE `ff_apaas_t_exception_record`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '唯一编号',
  `exid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '例外记录唯一编码',
  `task_config_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '定制任务配置编号',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务例外记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_fastopinion
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_fastopinion`;
CREATE TABLE `ff_apaas_t_fastopinion`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `opinion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `createrid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `creater` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `addtime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '快速意见管理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_flowlink_info
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_flowlink_info`;
CREATE TABLE `ff_apaas_t_flowlink_info`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '数据编号',
  `flowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '主流程编号',
  `flowno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '主流程单号',
  `flowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程模型编号',
  `nodemodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '环节模型编号',
  `link_flowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联流程编号',
  `link_flowno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联流程单号',
  `link_type` int(0) NULL DEFAULT NULL COMMENT '关联类型 (0，关联，1-子流程串行，2子流程并行)',
  `close_mode` int(0) NULL DEFAULT NULL COMMENT '连接类型 0正常结束 1强制结束',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联公司ID',
  `create_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建用户编号',
  `create_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建用户名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '数据创建时间',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '流程关联信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_local_method
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_local_method`;
CREATE TABLE `ff_apaas_t_local_method`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '唯一编号',
  `chinese_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '方法功能名字',
  `method_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '方法名',
  `sort` int(0) NOT NULL DEFAULT 1 COMMENT '排序值',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ref_dept_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '公司编号',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '项目编号',
  `types` int(0) NOT NULL DEFAULT 1 COMMENT '定时任务类型',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '本地方法表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_login_lock
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_login_lock`;
CREATE TABLE `ff_apaas_t_login_lock`  (
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录账号',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名称',
  `lock_time` datetime(0) NOT NULL COMMENT '锁定时间',
  `account_lock_time` decimal(18, 1) NOT NULL COMMENT '锁定时长(小时)',
  `apply_unlock` tinyint(0) NOT NULL DEFAULT 0 COMMENT '是否申请解锁(0否,1:是)',
  `expire_time` datetime(0) NOT NULL COMMENT '失效时间',
  `retry_count` int(0) NOT NULL DEFAULT 0,
  PRIMARY KEY (`login_name`) USING BTREE,
  UNIQUE INDEX `login_name`(`login_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '已锁定账号清单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_manager_app_info
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_manager_app_info`;
CREATE TABLE `ff_apaas_t_manager_app_info`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '管理员ID',
  `username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '管理员名称',
  `loginname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '登录账号',
  `creater_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `creater_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  `sortid` int(0) NOT NULL DEFAULT 0 COMMENT '排序ID',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '应用管理员信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_manager_info
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_manager_info`;
CREATE TABLE `ff_apaas_t_manager_info`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '管理员ID',
  `username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '管理员名称',
  `loginname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '登录账号',
  `addtime` datetime(0) NOT NULL COMMENT '添加时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '项目管理员信息表，如果在这个表存在则表示用户可以添加项目' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_mobile_app_bind
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_mobile_app_bind`;
CREATE TABLE `ff_apaas_t_mobile_app_bind`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `cid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '个推CID',
  `sys_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '后台用户id',
  `addtime` datetime(0) NOT NULL COMMENT '添加时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '归属公司ID',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '记录个推cid与后台用户绑定关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_mobile_terminal_bind
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_mobile_terminal_bind`;
CREATE TABLE `ff_apaas_t_mobile_terminal_bind`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `source_type` int(0) NOT NULL DEFAULT 1 COMMENT '来源类型 1微信公众号 2微信小程序 3企业微信 4钉钉',
  `source_identy` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '来源标识 如微信公众号appid，企业微信应用的AgentId',
  `user_identy` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '10' COMMENT '用户标识，如微信公众号的openid，企业微信的userid',
  `sys_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '后台用户id',
  `addtime` datetime(0) NOT NULL COMMENT '添加时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '移动端绑定用户记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_mobile_terminal_user
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_mobile_terminal_user`;
CREATE TABLE `ff_apaas_t_mobile_terminal_user`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `source_type` int(0) NOT NULL DEFAULT 1 COMMENT '来源类型 1微信公众号 2微信小程序 3企业微信 4钉钉',
  `source_identy` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '来源标识 如微信公众号appid，企业微信应用的AgentId',
  `user_identy` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '10' COMMENT '用户标识，如微信公众号的openid，企业微信的userid',
  `user_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `sex` int(0) NOT NULL DEFAULT 0 COMMENT '用户性别 1男 2女 0未知',
  `province` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '省份',
  `city` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '城市',
  `country` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '国家',
  `headimgurl` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像',
  `addtime` datetime(0) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '移动端关注用户记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_notice_log
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_notice_log`;
CREATE TABLE `ff_apaas_t_notice_log`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `notice_type` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '通知方式',
  `notice_object` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '通知对象',
  `notice_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '通知内容',
  `notice_source` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '通知来源(自定义标识用于查询)',
  `remark` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '备注信息',
  `create_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_orgid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构ID',
  `create_orgname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '通知日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_notice_method
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_notice_method`;
CREATE TABLE `ff_apaas_t_notice_method`  (
  `method_id` int(0) NOT NULL COMMENT '主键ID',
  `method_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '方法名',
  `is_show` int(0) NOT NULL DEFAULT 0 COMMENT '是否显示 (1：显示,0：不显示)',
  PRIMARY KEY (`method_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '通知方法种类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_notice_method_config
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_notice_method_config`;
CREATE TABLE `ff_apaas_t_notice_method_config`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `method_id` int(0) NOT NULL COMMENT '方法id',
  `method_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '方法名',
  `config_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '配置JSON对象',
  `is_platform` int(0) NOT NULL DEFAULT 0 COMMENT '是否为平台配置 0否 1是',
  `external_enable` tinyint(1) NULL DEFAULT NULL COMMENT '外部是否启用(0:否, 1: 是)',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  PRIMARY KEY (`iidd`) USING BTREE,
  UNIQUE INDEX `AK_uq_method_id`(`method_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '通知方式配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_notice_method_config_wxmp
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_notice_method_config_wxmp`;
CREATE TABLE `ff_apaas_t_notice_method_config_wxmp`  (
  `template_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '模板ID',
  `template_title` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '模板标题',
  `content_rule` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '模板内容格式',
  `content_format` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '模板内容配置 JSON字符串{\"aaa\":\"#XXX#\",\"bbb\":\"#单号#\"}',
  `template_scene` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '模板适用场景[{\"name\": \"消息提醒>待办消息\",\"value\": \"0>0\"}, {\"name\": \"时效提醒>响应超时前\",\"value\":\"1>0\"}]',
  PRIMARY KEY (`template_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '微信模板消息配置记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_notice_method_enable
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_notice_method_enable`;
CREATE TABLE `ff_apaas_t_notice_method_enable`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `method_id` int(0) NULL DEFAULT NULL COMMENT '方法id',
  `method_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '方法名',
  `projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '通知方式启用表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_online_users
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_online_users`;
CREATE TABLE `ff_apaas_t_online_users`  (
  `token` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'token编号',
  `userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户唯一编号',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公司编号',
  `login_time` datetime(0) NOT NULL COMMENT '用户登录时间',
  `expire_time` datetime(0) NOT NULL COMMENT '失效时间',
  PRIMARY KEY (`token`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '在线用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_outer_link
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_outer_link`;
CREATE TABLE `ff_apaas_t_outer_link`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `link_type` int(0) NOT NULL DEFAULT 0 COMMENT '外链类型 0数据分享 1数据补录 2数据新增 3数据查询',
  `creater_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `creater_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `ref_appid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联应用ID',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  `order_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工单主键ID 当应用类型为基础资料时，此字段不为空，值为业务表记录主键ID值',
  `messageid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工单messageid 当应用类型为流程应用，数据分享与数据补录时此字段不为空，取对应流程工单的消息ID值',
  `flowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工单flowid',
  `flowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工单flowmodelid 当应用类型为流程应用，数据新增时此字段不为空，取对应流程模型id值',
  `begin_time` datetime(0) NULL DEFAULT NULL COMMENT '链接访问开始时间 当为数据补录时，链接访问开始时间、结束时间、访问密码字段都不能为空',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '链接访问结束时间',
  `visit_pwd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '链接访问密码',
  `outer_link_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '外链链接地址',
  PRIMARY KEY (`iidd`) USING BTREE,
  INDEX `index_outer_link`(`link_type`, `ref_appid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '应用数据外链记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_outer_link_config
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_outer_link_config`;
CREATE TABLE `ff_apaas_t_outer_link_config`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `link_type` int(0) NOT NULL DEFAULT 0 COMMENT '外链类型 0数据分享 1数据补录 2数据新增 3数据查询',
  `enabled` int(0) NOT NULL DEFAULT 0 COMMENT '是否启用 0否 1是',
  `creater_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `creater_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `ref_appid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联应用ID',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  `link_rule_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '外链配置',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '应用数据外链配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_password_history_tracker
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_password_history_tracker`;
CREATE TABLE `ff_apaas_t_password_history_tracker`  (
  `iidd` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `userid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户编号',
  `passwd` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '历史密码',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 292 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '历史密码跟踪器' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_password_strength
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_password_strength`;
CREATE TABLE `ff_apaas_t_password_strength`  (
  `rule_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键编号',
  `pwd_strength_policy_switch` tinyint(1) NOT NULL DEFAULT 0 COMMENT '密码强度策略开关(0:false, 1:true)',
  `password_min_length` int(0) NULL DEFAULT NULL COMMENT '密码最小长度(位)',
  `password_rule` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码组成规则(大小写,特殊字符,数字,0关闭,1:开启, 1,0,0)',
  `account_lock_policy_switch` tinyint(1) NOT NULL DEFAULT 0 COMMENT '账号锁定策略开关(0:false, 1:true)',
  `password_retry_count` int(0) NULL DEFAULT NULL COMMENT '密码连续错误次数',
  `account_lock_time` decimal(18, 1) NULL DEFAULT NULL COMMENT '锁定时长(小时)',
  `pwd_use_policy_switch` tinyint(1) NOT NULL DEFAULT 0 COMMENT '密码使用策略开关(0:false, 1:true)',
  `allow_password_duplication` tinyint(1) NULL DEFAULT 1 COMMENT '是否允许密码重复',
  `password_change_cycle` int(0) NULL DEFAULT NULL COMMENT '密码强制修改周期(月)',
  `force_change_passwd_rule` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0,0' COMMENT '强制修改密码规则(不满足强度策略、使用周期限制)',
  PRIMARY KEY (`rule_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '密码策略设置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_platform_config
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_platform_config`;
CREATE TABLE `ff_apaas_t_platform_config`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `platform_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '平台名称',
  `platform_logo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '平台logo 存储图片base64字符串',
  `favicon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '网站Favicon 存储图片base64字符串',
  `language_version` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '语言版本',
  `platform_color` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '平台主色 存储颜色编码',
  `form_rank` int(0) NOT NULL DEFAULT 0 COMMENT '标签对齐方式 0 左对齐 1 右对齐 2顶部对齐',
  `form_field_width` int(0) NOT NULL DEFAULT 0 COMMENT '表单字段宽度',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  `platform_small_icon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '平台小图标',
  `home_page_style` int(0) NULL DEFAULT 0 COMMENT '首页风格 (0:上下结构 1:左右结构)',
  `home_page_project_style` int(0) NULL DEFAULT 0 COMMENT '首页项目展示风格 (0:项目平铺  1:应用平铺)',
  `home_banner` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '首页banner图配置',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '平台配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_project_info
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_project_info`;
CREATE TABLE `ff_apaas_t_project_info`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `project_name` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '项目名称',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '项目描述',
  `logo_url` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '项目LOGO',
  `creater_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `creater_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '最后更新人ID',
  `update_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '最后更新人名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '最后更新时间',
  `deleted` int(0) NOT NULL DEFAULT 0 COMMENT '是否删除 0否 1是',
  `project_status` int(0) NOT NULL DEFAULT 1 COMMENT '项目状态 0停用 1启用',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  `sortid` int(0) NOT NULL DEFAULT 0 COMMENT '排序数字',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '项目信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_qiyuesuo_config
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_qiyuesuo_config`;
CREATE TABLE `ff_apaas_t_qiyuesuo_config`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `api_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '开放平台接口地址',
  `app_token` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'AppToken',
  `app_secret` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'AppSecret',
  `app_range` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '授权应用范围',
  `create_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_orgid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构ID',
  `create_orgname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人ID',
  `update_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `deleted` int(0) NULL DEFAULT 0 COMMENT '是否删除',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联公司ID',
  `callback_secret_key` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '加密回调信息的SecretKey',
  `company_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '认证公司名称',
  `admin_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '管理员姓名',
  `admin_mobile` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '管理员手机号',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '契约锁配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_qiyuesuo_contract
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_qiyuesuo_contract`;
CREATE TABLE `ff_apaas_t_qiyuesuo_contract`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '合同ID',
  `subject` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '合同主题',
  `sn` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '合同编号',
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '合同状态',
  `publish_time` datetime(0) NULL DEFAULT NULL COMMENT '发起时间',
  `result_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '返回结果',
  `field_mapping` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '字段映射',
  `remark` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '备注信息',
  `create_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_orgid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构ID',
  `create_orgname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人ID',
  `update_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `deleted` int(0) NULL DEFAULT 0 COMMENT '是否删除',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联公司ID',
  `ref_appid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联应用ID',
  `ref_flowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联流程ID',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '契约锁配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_register_exporter
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_register_exporter`;
CREATE TABLE `ff_apaas_t_register_exporter`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '注册公司ID',
  `create_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '导出执行用户ID',
  `create_time` datetime(0) NOT NULL COMMENT '导出开始时间',
  `completion_time` datetime(0) NOT NULL COMMENT '导出结束时间',
  `status` int(0) NOT NULL DEFAULT 0 COMMENT '导出结果(0成功,1失败)',
  `export_paths` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '导出数据路径',
  `request_param` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '请求参数',
  `deleted` int(0) NOT NULL DEFAULT 0 COMMENT '是否删除(0否,1是)',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_relation_view_config
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_relation_view_config`;
CREATE TABLE `ff_apaas_t_relation_view_config`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `view_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联视图名称',
  `source_app_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '源应用ID',
  `source_app_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '源应用名称',
  `target_app_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '目标应用ID',
  `target_app_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '目标应用名称',
  `rule_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '关联视图规则配置',
  `field_map_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '关联属性映射配置',
  `create_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_orgid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构ID',
  `create_orgname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人ID',
  `update_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联项目ID',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联公司ID',
  `deleted` int(0) NULL DEFAULT 0 COMMENT '是否删除',
  `sortid` int(0) NULL DEFAULT NULL COMMENT '排序号',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '关联视图配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_right_app_lot
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_right_app_lot`;
CREATE TABLE `ff_apaas_t_right_app_lot`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `actiontype` int(0) NOT NULL COMMENT '权限类别 0数据引用 1应用管理',
  `userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '管理员ID',
  `username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '管理员名称',
  `loginname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '登录账号',
  `ref_appid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '关联应用编号',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  `addtime` datetime(0) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '应用管理员权限信息表 如果在这个表存在则表示用户可以选择 或者 管理某个应用' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_right_lot
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_right_lot`;
CREATE TABLE `ff_apaas_t_right_lot`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '管理员ID',
  `username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '管理员名称',
  `loginname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '登录账号',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  `addtime` datetime(0) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '项目管理员权限信息表 如果在这表存在则表示用户对于某个项目信息可以维护' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_searchcond
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_searchcond`;
CREATE TABLE `ff_apaas_t_searchcond`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `condname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '条件名称',
  `cname` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '条件规则 存储条件的JSON字符串',
  `creater_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `creater_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `appid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属应用ID',
  `projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  `deleted` int(0) NOT NULL DEFAULT 0 COMMENT '是否删除 0否 1是',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '搜索条件存储表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_serial_number
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_serial_number`;
CREATE TABLE `ff_apaas_t_serial_number`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `currbh` int(0) NOT NULL DEFAULT 1 COMMENT '编号当前数值',
  `last_date` date NULL DEFAULT NULL COMMENT '最后一次生成日期',
  `fieldname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '字段名称',
  `appid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所属应用ID',
  `projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '流水号生成记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_serial_number_coderule
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_serial_number_coderule`;
CREATE TABLE `ff_apaas_t_serial_number_coderule`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `currbh` int(0) NOT NULL DEFAULT 1 COMMENT '编号当前数值',
  `last_date` date NULL DEFAULT NULL COMMENT '最后一次生成日期',
  `fieldname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '字段名称',
  `appid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所属应用ID',
  `projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '流水号生成记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_synch_field_mapping
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_synch_field_mapping`;
CREATE TABLE `ff_apaas_t_synch_field_mapping`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `ref_synch_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联同步规则配置表主键',
  `source_field_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '原始字段名称',
  `source_field_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '原始字段编码',
  `apaas_field_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '阿凡搭应用字段名称',
  `apaas_field_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '阿凡搭应用字段编码',
  `is_primary_key` int(0) NOT NULL DEFAULT 0 COMMENT '是否主键',
  `is_update` int(0) NOT NULL DEFAULT 0 COMMENT '是否更新',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_synch_log
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_synch_log`;
CREATE TABLE `ff_apaas_t_synch_log`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `ref_synch_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联同步规则配置表主键',
  `success_msg` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '同步成功日志',
  `error_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '同步失败日志',
  `addtime` datetime(0) NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '同步日志记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_synch_rule
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_synch_rule`;
CREATE TABLE `ff_apaas_t_synch_rule`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `synch_type` int(0) NOT NULL DEFAULT 0 COMMENT '同步方式 0直连数据库 1读取文件 2请求接口 3AD域',
  `synch_config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '对应同步方式配置',
  `synch_appid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '同步的应用ID',
  `synch_flowmodel_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '同步的流程模型ID',
  `synch_action_id` int(0) NULL DEFAULT NULL COMMENT '同步流程模型起草环节按钮ID',
  `synch_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '同步用户ID',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '同步规则配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_template_config
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_template_config`;
CREATE TABLE `ff_apaas_t_template_config`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '唯一编号',
  `template_type` int(0) NOT NULL COMMENT '类型：1:发起流程任务,2:应用更新,3:应用数据推送',
  `template` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '模板json',
  `placeholder` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '模板值json',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公司编号',
  `create_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人编号',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务模板表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_time_process
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_time_process`;
CREATE TABLE `ff_apaas_t_time_process`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '唯一编码',
  `task_type` int(0) NOT NULL COMMENT '1:定时发起任务2：定时更新数据 3：定时推送数据  4：定时任务',
  `task_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `execute_type` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '1:按流程发起，2:从系统选择一个任务发起，3：按应用更新，4：从系统选择一个方法更新，5：按应用推送数据，6：从系统选择一个方法推送数据',
  `target_flow_model_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '目标流程编号',
  `appid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '应用编号',
  `invoke_target` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'fftask的方法名',
  `allottype` int(0) NULL DEFAULT NULL COMMENT '类型 0表示用户 1表示用户组 2表示部门',
  `allotobjectid` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务责任人ID',
  `data_template_config` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '模板编号',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `create_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人,用于发起流程',
  `create_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `ref_dept_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '公司编号',
  `job_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'sys_job表编号',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '项目编号',
  `types` int(0) NOT NULL DEFAULT 1 COMMENT '定时任务类型',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_timing_task
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_timing_task`;
CREATE TABLE `ff_apaas_t_timing_task`  (
  `iidd` varchar(50) CHARACTER SET utf16le COLLATE utf16le_general_ci NOT NULL COMMENT '唯一编码',
  `task_type` int(0) NOT NULL COMMENT '1：定时任务 2：定时推送 3：二维码配置 4：操作列配置',
  `task_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `execute_type` int(0) NOT NULL COMMENT '1：正常发起 2：按表单字段规则发起 3：从系统选择一个任务执行 4：数据新增 5：数据提交 6：数据更新',
  `form_field_rule` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '表单字段规则',
  `invoke_target` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'fftask的方法名',
  `tartget_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '目标项目编号',
  `tartget_appid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '目标应用编号',
  `target_flow_model_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '目标流程编号',
  `target_flow_action_id` int(0) NULL DEFAULT NULL COMMENT '流程动作编号',
  `default_value_rule` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '默认值规则',
  `receiver_rule` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '接收人规则',
  `is_repeat` int(0) NULL DEFAULT NULL COMMENT '是否可重复生成 0否 1是',
  `job_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'sys_job表编号',
  `create_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人,用于发起流程',
  `create_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人名称',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `ref_appid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '应用编号',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '项目编号',
  `ref_dept_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公司编号',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '新定时任务配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_t_user_regist
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_t_user_regist`;
CREATE TABLE `ff_apaas_t_user_regist`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `account_type` int(0) NULL DEFAULT 1 COMMENT '注册用途 0企业自用 1对外服务',
  `user_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `email` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱地址',
  `mobile` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号码',
  `company_name` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '企业名称',
  `job_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职位',
  `belong_trade_one` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属一级行业',
  `belong_trade_two` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属二级行业',
  `company_scale` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '企业规模',
  `is_active` int(0) NULL DEFAULT 0 COMMENT '是否激活 0否 1是',
  `deleted` int(0) NULL DEFAULT 0 COMMENT '是否删除',
  `addtime` datetime(0) NULL DEFAULT NULL COMMENT '添加时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联公司ID',
  `ref_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联用户ID',
  `inviter_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '邀请人信息',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户注册信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_ts_actormembers
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_ts_actormembers`;
CREATE TABLE `ff_apaas_ts_actormembers`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `actorid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户组编号',
  `actortype` int(0) NOT NULL COMMENT '成员类别',
  `objectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '成员编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户组成员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_ts_actors
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_ts_actors`;
CREATE TABLE `ff_apaas_ts_actors`  (
  `actorid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户组编号',
  `actorname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户组名称',
  `actordesc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '描述',
  `manager_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '管理员编号',
  `manager_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '管理员名称',
  `use_area` int(0) NULL DEFAULT 0 COMMENT '使用范围 0项目内 1全局',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  `creater_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `creater_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `addtime` datetime(0) NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`actorid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户组信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_ts_business_api_group
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_ts_business_api_group`;
CREATE TABLE `ff_apaas_ts_business_api_group`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '分组ID',
  `group_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '分组名称',
  `parent_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '父级编号',
  `sort_id` int(0) NOT NULL DEFAULT 0 COMMENT '排序值',
  `class_layer` int(0) NOT NULL DEFAULT 1 COMMENT '所属层级',
  `class_list` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '层级字符组',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `create_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人ID',
  `create_person` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人名称',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  `update_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '更新人ID',
  `update_person` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '更新人名称',
  `ref_project_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '项目编号',
  `ref_dept_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公司编号',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '业务API分组管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_ts_cross_project_right
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_ts_cross_project_right`;
CREATE TABLE `ff_apaas_ts_cross_project_right`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '授权用户ID',
  `username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '授权用户名称',
  `project_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '项目ID',
  `project_name` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '项目名称',
  `app_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '应用集合 存储格式为[{value:\'应用id\',name:\'应用名称\'}]',
  `sortid` int(0) NOT NULL COMMENT '排序值',
  `addtime` datetime(0) NOT NULL COMMENT '添加时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '归属公司ID',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '跨项目调用授权记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_ts_dept
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_ts_dept`;
CREATE TABLE `ff_apaas_ts_dept`  (
  `deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '部门编号',
  `fullid` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '部门全编号字符串',
  `orgid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所在机构编号',
  `deptkind` int(0) NOT NULL DEFAULT 0 COMMENT '部门性质',
  `parentid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '上级部门编码',
  `deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '部门名称',
  `sortid` int(0) NOT NULL DEFAULT 0 COMMENT '排序值',
  `managerid` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '部门管理员编号',
  `leaderid` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '部门领导编号',
  `description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '部门描述',
  `deleted` int(0) NOT NULL DEFAULT 0 COMMENT '是否删除 0否、1是',
  `createid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人编号',
  `createdate` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updateid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人编号',
  `updatedate` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `deptcode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '部门编码 此字段主要用于同步第三方部门时 存储第三方部门唯一标识',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  PRIMARY KEY (`deptid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部门信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_ts_menu
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_ts_menu`;
CREATE TABLE `ff_apaas_ts_menu`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `menuname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单名称',
  `menucode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单编码',
  `menuurl` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '菜单URL',
  `parentiidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '父菜单ID',
  `classlist` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单父ID组',
  `classlayer` int(0) NOT NULL DEFAULT 1 COMMENT '菜单层级',
  `sortid` int(0) NOT NULL DEFAULT 0 COMMENT '排序数字',
  `menutype` int(0) NOT NULL DEFAULT 0 COMMENT '菜单类型 0分组 1菜单 2权限',
  `deleted` int(0) NOT NULL DEFAULT 0 COMMENT '是否删除(1是 0否)',
  `icon` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `ref_appid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联应用ID',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  `addtime` datetime(0) NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_ts_menu_mobile
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_ts_menu_mobile`;
CREATE TABLE `ff_apaas_ts_menu_mobile`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键id',
  `menucode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '菜单编码',
  `menuname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `create_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `create_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联项目ID',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '移动端不可展示的菜单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_ts_open_api_group
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_ts_open_api_group`;
CREATE TABLE `ff_apaas_ts_open_api_group`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '分组ID',
  `group_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '分组名称',
  `parent_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '父级编号',
  `sort_id` int(0) NOT NULL DEFAULT 0 COMMENT '排序值',
  `class_layer` int(0) NOT NULL DEFAULT 1 COMMENT '所属层级',
  `class_list` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '层级字符组',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  `create_person` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'openApi分组管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_ts_oprateallot
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_ts_oprateallot`;
CREATE TABLE `ff_apaas_ts_oprateallot`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `allottype` int(0) NOT NULL DEFAULT 0 COMMENT '授权类型 0表示用户 1表示用户组 2表示部门',
  `allotobjectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '授权对象编号',
  `menuid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单ID',
  `menucode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单编码',
  `actiontype` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '权限类别',
  `addtime` datetime(0) NOT NULL COMMENT '添加时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '归属项目ID',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '权限分配记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_ts_oprateallot_field
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_ts_oprateallot_field`;
CREATE TABLE `ff_apaas_ts_oprateallot_field`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `allottype` int(0) NOT NULL DEFAULT 0 COMMENT '授权类型 0表示用户 1表示用户组 2表示部门',
  `allotobjectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '授权对象编号',
  `menuid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单ID',
  `righttype` int(0) NOT NULL DEFAULT 0 COMMENT '权限类型 0新增、1编辑、2查看、3列表展示',
  `fieldname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '字段名称',
  `isvisible` int(0) NOT NULL DEFAULT 1 COMMENT '是否可见',
  `isedit` int(0) NOT NULL DEFAULT 1 COMMENT '是否可编辑',
  `isrequired` int(0) NOT NULL DEFAULT 1 COMMENT '是否必填',
  `addtime` datetime(0) NOT NULL COMMENT '添加时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '归属项目ID',
  `subtable_config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '子表特殊配置',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字段权限分配记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_ts_oprateallot_field_user
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_ts_oprateallot_field_user`;
CREATE TABLE `ff_apaas_ts_oprateallot_field_user`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `allotobjectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '授权对象编号',
  `menuid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单ID',
  `righttype` int(0) NOT NULL DEFAULT 0 COMMENT '权限类型 0新增、1编辑、2查看、3列表展示',
  `fieldname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '字段名称',
  `isvisible` int(0) NOT NULL DEFAULT 1 COMMENT '是否可见',
  `isedit` int(0) NOT NULL DEFAULT 1 COMMENT '是否可编辑',
  `isrequired` int(0) NOT NULL DEFAULT 1 COMMENT '是否必填',
  `source_type` int(0) NOT NULL DEFAULT 0 COMMENT '来源类型 0表示用户 1表示用户组 2表示部门',
  `source_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '来源对象编号',
  `addtime` datetime(0) NOT NULL COMMENT '添加时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '归属项目ID',
  `subtable_config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '子表特殊配置',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '计算后的用户字段权限分配记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_ts_oprateallot_rightrange
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_ts_oprateallot_rightrange`;
CREATE TABLE `ff_apaas_ts_oprateallot_rightrange`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `allottype` int(0) NOT NULL DEFAULT 0 COMMENT '授权类型 0表示用户 1表示用户组 2表示部门',
  `allotobjectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '授权对象编号',
  `menuid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单ID',
  `menucode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单编码',
  `rightrange` int(0) NOT NULL COMMENT '权限范围 0全局 1本人发起 2本部门 3下级部门 4本机构 5下级机构  6自定义 ',
  `rule_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '规则名称',
  `rule_config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '规则配置',
  `addtime` datetime(0) NOT NULL COMMENT '添加时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '归属项目ID',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '权限查询范围分配记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_ts_platform_manager
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_ts_platform_manager`;
CREATE TABLE `ff_apaas_ts_platform_manager`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '授权用户ID',
  `username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '授权用户名称',
  `sortid` int(0) NOT NULL COMMENT '排序值',
  `addtime` datetime(0) NOT NULL COMMENT '添加时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '归属公司ID',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '平台门户管理员' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_ts_user
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_ts_user`;
CREATE TABLE `ff_apaas_ts_user`  (
  `userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户编号',
  `loginname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '登录账号',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '登录密码',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名称',
  `sex` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别',
  `jobid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职位编号',
  `job` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职位名称',
  `edulevelid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学历编号',
  `edulevel` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学历',
  `telno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电话',
  `mobile` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号码',
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `head_img` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像',
  `deleted` int(0) NOT NULL DEFAULT 0 COMMENT '是否删除 0否、1是',
  `agentstatus` int(0) NOT NULL DEFAULT 0 COMMENT '代理状态',
  `createid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人编号',
  `createdate` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updateid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人编号',
  `updatedate` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `lockstatus` int(0) NOT NULL DEFAULT 0 COMMENT '是否锁定 0否、1是',
  `isactive` int(0) NOT NULL DEFAULT 0 COMMENT '是否激活 0否、1是',
  `usersalt` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户密码加密随机串',
  `sortid` int(0) NOT NULL DEFAULT 0 COMMENT '排序值',
  `deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所在部门编号',
  `account_level` int(0) NOT NULL DEFAULT 0 COMMENT '账号级别 0 普通用户 1超级管理员',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  `is_register_user` int(0) NULL DEFAULT 0 COMMENT '是否注册用户',
  `user_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '员工编号 此字段主要用于同步第三方账号时 存储第三方用户唯一标识',
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_ts_user_expand
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_ts_user_expand`;
CREATE TABLE `ff_apaas_ts_user_expand`  (
  `userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户编号',
  `loginname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '登录账号',
  `signature` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '手写签名',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_app_is_notice` int(0) NULL DEFAULT 0 COMMENT '创建应用后是否提示(0,需要提示，1，不需要提示)',
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户拓展表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_ts_user_launch_new_top
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_ts_user_launch_new_top`;
CREATE TABLE `ff_apaas_ts_user_launch_new_top`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户ID',
  `oflowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '原始流程编号',
  `toptime` datetime(0) NOT NULL COMMENT '置顶时间',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '首页用户发起新的置顶表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_ts_user_oprateallot
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_ts_user_oprateallot`;
CREATE TABLE `ff_apaas_ts_user_oprateallot`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `allotobjectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '授权对象编号',
  `menuid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单ID',
  `menucode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单编码',
  `actiontype` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '权限类别',
  `source_type` int(0) NOT NULL DEFAULT 0 COMMENT '来源类型 0表示用户 1表示用户组 2表示部门',
  `source_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '来源对象编号',
  `addtime` datetime(0) NOT NULL COMMENT '添加时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '归属项目ID',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '计算后的用户权限分配记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_ts_user_oprateallot_rightrange
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_ts_user_oprateallot_rightrange`;
CREATE TABLE `ff_apaas_ts_user_oprateallot_rightrange`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `allotobjectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '授权对象编号',
  `menuid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单ID',
  `menucode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单编码',
  `rightrange` int(0) NOT NULL COMMENT '权限范围 0全局 1本人发起 2本部门 3下级部门 4本机构 5下级机构  6自定义 ',
  `rule_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '规则名称',
  `rule_config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '规则配置',
  `source_type` int(0) NOT NULL DEFAULT 0 COMMENT '来源类型 0表示用户 1表示用户组 2表示部门',
  `source_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '来源对象编号',
  `addtime` datetime(0) NOT NULL COMMENT '添加时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属公司ID',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '归属项目ID',
  `ref_rangeid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联权限范围分配表id',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '计算后的用户权限查询范围分配记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_ts_user_temp
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_ts_user_temp`;
CREATE TABLE `ff_apaas_ts_user_temp`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户编号',
  `batch` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '随机串',
  `indate` datetime(0) NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '临时用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_up_attachment
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_up_attachment`;
CREATE TABLE `ff_apaas_up_attachment`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户ID',
  `filename` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文件名称',
  `filepath` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文件地址',
  `uptime` datetime(0) NULL DEFAULT NULL COMMENT '上传时间',
  `deleted` int(0) NULL DEFAULT 0 COMMENT '是否删除(0否 1是)',
  `deletetime` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  `deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '部门ID',
  `orgid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机构ID',
  `appid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机构ID',
  `sufname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文件扩展名',
  `objecttype` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联类型',
  `objectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联主键ID',
  `username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '上传人',
  `deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '上传部门',
  `nodemodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '环节模型ID',
  `ref_appid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联应用id',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '附件上传表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ff_apaas_up_attasecurity
-- ----------------------------
DROP TABLE IF EXISTS `ff_apaas_up_attasecurity`;
CREATE TABLE `ff_apaas_up_attasecurity`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `appid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '系统ID',
  `appsecurity` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '秘钥',
  `loginname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '登录名称',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '附件权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for itsm_t_change_equ
-- ----------------------------
DROP TABLE IF EXISTS `itsm_t_change_equ`;
CREATE TABLE `itsm_t_change_equ`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `equ_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资产ID',
  `change_flowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '变更流程ID',
  `equ_catalog` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属类别',
  `equ_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资产名称',
  `cino` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'CI编号',
  `rolea` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '责任人A角',
  `roleb` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '责任人B角',
  `repair_begintime` datetime(0) NULL DEFAULT NULL COMMENT '维保开始时间',
  `repair_endtime` datetime(0) NULL DEFAULT NULL COMMENT '维保截止时间',
  `online_time` datetime(0) NULL DEFAULT NULL COMMENT '上线时间',
  `down_time` datetime(0) NULL DEFAULT NULL COMMENT '下线时间',
  `equ_level` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资产等级',
  `equ_status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资产状态',
  `remark` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '资产描述',
  `change_remark` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '变更备注',
  `addtime` datetime(0) NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '变更关联资产表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for itsm_t_change_network
-- ----------------------------
DROP TABLE IF EXISTS `itsm_t_change_network`;
CREATE TABLE `itsm_t_change_network`  (
  `flowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '流程ID',
  `flowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程模型ID',
  `nodemodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '环节模型ID',
  `flowno` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程单号',
  `create_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_orgid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构ID',
  `create_orgname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构名',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人ID',
  `update_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联公司ID',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  `deleted` int(0) NOT NULL DEFAULT 0 COMMENT '是否删除 0 :未删除 1:已删除',
  `current_nodename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前处理环节',
  `current_hander` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前处理人',
  `business_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '业务状态',
  `change_time` datetime(0) NULL DEFAULT NULL COMMENT '变更时间',
  `equ_info` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '系统信息',
  `change_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '变更内容',
  `impl_user` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '实施人员',
  `impl_time` datetime(0) NULL DEFAULT NULL COMMENT '实施时间',
  `impl_remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '实施说明',
  PRIMARY KEY (`flowid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '网络变更工单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for itsm_t_change_normal
-- ----------------------------
DROP TABLE IF EXISTS `itsm_t_change_normal`;
CREATE TABLE `itsm_t_change_normal`  (
  `flowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '流程ID',
  `flowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程模型ID',
  `nodemodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '环节模型ID',
  `flowno` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程单号',
  `create_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_orgid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构ID',
  `create_orgname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构名',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人ID',
  `update_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联公司ID',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  `deleted` int(0) NOT NULL DEFAULT 0 COMMENT '是否删除 0 :未删除 1:已删除',
  `current_nodename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前处理环节',
  `current_hander` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前处理人',
  `business_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '业务状态',
  `change_time` datetime(0) NULL DEFAULT NULL COMMENT '变更时间',
  `online_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '投产类型',
  `change_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '变更内容',
  `change_reson` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '紧急变更原因',
  `operational_step` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '操作步骤',
  `risk_assessment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '风险评估',
  `emergency_plan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '应急回退方案',
  `test_result` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '测试结果',
  `implement_result` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '实施结果',
  `dev_fileid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '元数据设计文件ID',
  `dev_filename` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '元数据设计文件名称',
  `uat_fileid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '元数据投产文件ID',
  `uat_filename` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '元数据投产文件名称',
  `dev_remark` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '元数据设计文件返回结果',
  `uat_remark` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '元数据投产文件返回结果',
  PRIMARY KEY (`flowid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '正常变更工单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for itsm_t_change_offline
-- ----------------------------
DROP TABLE IF EXISTS `itsm_t_change_offline`;
CREATE TABLE `itsm_t_change_offline`  (
  `flowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '流程ID',
  `flowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程模型ID',
  `nodemodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '环节模型ID',
  `flowno` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程单号',
  `create_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_orgid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构ID',
  `create_orgname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构名',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人ID',
  `update_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联公司ID',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  `deleted` int(0) NOT NULL DEFAULT 0 COMMENT '是否删除 0 :未删除 1:已删除',
  `current_nodename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前处理环节',
  `current_hander` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前处理人',
  `business_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '业务状态',
  `offline_time` datetime(0) NULL DEFAULT NULL COMMENT '下线时间',
  `offline_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '下线说明',
  `operational_step` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '操作步骤',
  `risk_assessment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '风险评估',
  PRIMARY KEY (`flowid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '下线变更工单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for itsm_t_change_online
-- ----------------------------
DROP TABLE IF EXISTS `itsm_t_change_online`;
CREATE TABLE `itsm_t_change_online`  (
  `flowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '流程ID',
  `flowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程模型ID',
  `nodemodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '环节模型ID',
  `flowno` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程单号',
  `create_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_orgid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构ID',
  `create_orgname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构名',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人ID',
  `update_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联公司ID',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  `deleted` int(0) NOT NULL DEFAULT 0 COMMENT '是否删除 0 :未删除 1:已删除',
  `current_nodename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前处理环节',
  `current_hander` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前处理人',
  `business_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '业务状态',
  `equ_info` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '系统信息',
  `online_time` datetime(0) NULL DEFAULT NULL COMMENT '上线时间',
  `online_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '上线内容',
  `test_user` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '测试人员',
  `test_result` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '测试结果',
  `test_remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '测试说明',
  `dev_fileid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '元数据设计文件ID',
  `dev_filename` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '元数据设计文件名称',
  `uat_fileid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '元数据投产文件ID',
  `uat_filename` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '元数据投产文件名称',
  `dev_remark` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '元数据设计文件返回结果',
  `uat_remark` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '元数据投产文件返回结果',
  PRIMARY KEY (`flowid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '上线变更工单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for itsm_t_change_operation
-- ----------------------------
DROP TABLE IF EXISTS `itsm_t_change_operation`;
CREATE TABLE `itsm_t_change_operation`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `change_flowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '变更流程ID',
  `equ_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资产ID',
  `equ_catalog` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '变更对象',
  `equ_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资产名称',
  `sortid` int(0) NOT NULL DEFAULT 0 COMMENT '排序值',
  `operation_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '变更操作',
  `step_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '变更步骤',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '变更操作信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for itsm_t_change_relation
-- ----------------------------
DROP TABLE IF EXISTS `itsm_t_change_relation`;
CREATE TABLE `itsm_t_change_relation`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `change_flowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '变更流程ID',
  `rel_flowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '需求流程ID',
  `rel_flowmodel_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '需求流程名称',
  `rel_flowno` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '需求流程单号',
  `rel_flowsubject` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '需求流程主题',
  `rel_startuser` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '需求登记人',
  `rel_addtime` datetime(0) NULL DEFAULT NULL COMMENT '需求登记时间',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '变更关联需求表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for itsm_t_change_server
-- ----------------------------
DROP TABLE IF EXISTS `itsm_t_change_server`;
CREATE TABLE `itsm_t_change_server`  (
  `flowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '流程ID',
  `flowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程模型ID',
  `nodemodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '环节模型ID',
  `flowno` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程单号',
  `create_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_orgid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构ID',
  `create_orgname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构名',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人ID',
  `update_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联公司ID',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  `deleted` int(0) NOT NULL DEFAULT 0 COMMENT '是否删除 0 :未删除 1:已删除',
  `current_nodename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前处理环节',
  `current_hander` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前处理人',
  `business_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '业务状态',
  `change_time` datetime(0) NULL DEFAULT NULL COMMENT '变更时间',
  `equ_info` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '系统信息',
  `change_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '变更内容',
  `impl_user` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '实施人员',
  `impl_time` datetime(0) NULL DEFAULT NULL COMMENT '实施时间',
  `impl_remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '实施说明',
  PRIMARY KEY (`flowid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '服务器变更工单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for itsm_t_change_urgent
-- ----------------------------
DROP TABLE IF EXISTS `itsm_t_change_urgent`;
CREATE TABLE `itsm_t_change_urgent`  (
  `flowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '流程ID',
  `flowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程模型ID',
  `nodemodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '环节模型ID',
  `flowno` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程单号',
  `create_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_orgid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构ID',
  `create_orgname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构名',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人ID',
  `update_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联公司ID',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  `deleted` int(0) NOT NULL DEFAULT 0 COMMENT '是否删除 0 :未删除 1:已删除',
  `current_nodename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前处理环节',
  `current_hander` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前处理人',
  `business_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '业务状态',
  `change_time` datetime(0) NULL DEFAULT NULL COMMENT '变更时间',
  `change_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '变更内容',
  `change_reson` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '紧急变更原因',
  `operational_step` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '操作步骤',
  `risk_assessment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '风险评估',
  `emergency_plan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '应急回退方案',
  `test_result` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '测试结果',
  `implement_result` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '实施结果',
  `dev_fileid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '元数据设计文件ID',
  `dev_filename` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '元数据设计文件名称',
  `uat_fileid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '元数据投产文件ID',
  `uat_filename` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '元数据投产文件名称',
  `dev_remark` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '元数据设计文件返回结果',
  `uat_remark` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '元数据投产文件返回结果',
  PRIMARY KEY (`flowid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '紧急变更工单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for itsm_t_firewall
-- ----------------------------
DROP TABLE IF EXISTS `itsm_t_firewall`;
CREATE TABLE `itsm_t_firewall`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `facility_name` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '设施名称',
  `facility_use_date` datetime(0) NULL DEFAULT NULL COMMENT '设施投产日期',
  `facility_ownership_agency` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单选(日照银行股份有限公司; 济宁高新村镇股份有限公司)',
  `facility_update_date` datetime(0) NULL DEFAULT NULL COMMENT '设施信息更新日期',
  `asset_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资产编码',
  `asset_serial_number` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '产品序列号',
  `asset_value` decimal(10, 2) NULL DEFAULT NULL COMMENT '资产价值',
  `device_height` int(0) NULL DEFAULT NULL COMMENT '设备高度',
  `management_ip` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '管理IP地址',
  `influence_system` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '影响系统',
  `network_security_capability` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '多选(00：IPSec; 01：MACSec; 02：L2TP; 03：SSLVPN; 99：其它)',
  `number_of_cards` float NULL DEFAULT NULL COMMENT '板卡数量',
  `security_function` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '多选(00-三层控制; 01-四层控制; 02-七层控制; 99-其它)',
  `bypass_function` int(0) NULL DEFAULT NULL COMMENT 'bypass功能',
  `handling_capacity` float NULL DEFAULT NULL COMMENT '吞吐量',
  `maximum_number` int(0) NULL DEFAULT NULL COMMENT '最大并发连接数',
  `maximum_new_connection_rate` float NULL DEFAULT NULL COMMENT '最大新建连接速率',
  `deployment_mode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单选(00-路由方式; 01-网桥方式; 02-旁路方式; 03-混合方式（路由方式+网桥方式）)',
  `deploy_gallery` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属楼座',
  `deploy_floor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属楼层',
  `deploy_area` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单选(00-主机房-服务器区; 01-主机房-网络区; 02-主机房-存储区; 03-主机房-其它区; 99-其它)',
  `operation_department` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单选(00-科技管理部门; 01-后勤管理部门; 02-业务管理部门; 03-保卫管理部门; 04-物业管理部门; 05-外包服务部门; 99-其它)',
  `administrative_department` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单选(00-科技管理部门; 01-后勤管理部门; 02-业务管理部门; 03-保卫管理部门; 04-物业管理部门; 05-外包服务部门; 99-其它)',
  `slot_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '槽位号',
  `log_location` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单选(00-本地存储; 01-日志服务器存储; 99-其它)\r\n            ',
  `storage_period` float NULL DEFAULT NULL COMMENT '存储周期(天)',
  `_idcrack` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资产选择(	CMDB模型选择-区域)',
  `area` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资产选择(CMDB模型选择-机柜)',
  `idc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资产选择(CMDB模型选择-数据中心)',
  `vendorinformation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商选择(CMDB模型选择-厂商信息)',
  `network_equipment_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '网络设备上架主表编号',
  `create_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_orgid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构ID',
  `create_orgname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人ID',
  `update_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联公司ID',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  `deleted` int(0) NOT NULL DEFAULT 0 COMMENT '是否删除 0 :未删除 1:已删除',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for itsm_t_ids_ips
-- ----------------------------
DROP TABLE IF EXISTS `itsm_t_ids_ips`;
CREATE TABLE `itsm_t_ids_ips`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `facility_name` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '设施名称',
  `facility_use_date` datetime(0) NULL DEFAULT NULL COMMENT '设施投产日期',
  `facility_ownership_agency` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单选(日照银行股份有限公司; 济宁高新村镇股份有限公司)',
  `facility_update_date` datetime(0) NULL DEFAULT NULL COMMENT '设施信息更新日期',
  `asset_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资产编码',
  `asset_serial_number` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '产品序列号',
  `asset_value` decimal(10, 2) NULL DEFAULT NULL COMMENT '资产价值',
  `device_height` int(0) NULL DEFAULT NULL COMMENT '设备高度',
  `management_ip` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '管理IP地址',
  `influence_system` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '影响系统',
  `network_security_capability` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '多选(00：IPSec; 01：MACSec; 02：L2TP; 03：SSLVPN; 99：其它)',
  `selling_license` int(0) NULL DEFAULT NULL COMMENT '安全销售许可',
  `safetydeployment_mode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单选(00：旁路; 01：串联-路由模式; 02：串联-网桥模式; 03：串联-混合模式; 04：直接接入网络; 99：其它)',
  `throughput_rate` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单选(00：小于等于100Mbps; 01：大于100Mbps小于等于1Gbps; 02：大于1Gbps小于等于10Gbps; 99：其它)',
  `category_of_equipment` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单选(00：IDS; 01：IPS; 99：其它)',
  `bypass_function` int(0) NULL DEFAULT NULL COMMENT '布尔型(0:true,1:fase)',
  `deploy_gallery` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属楼座',
  `deploy_floor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属楼层',
  `deploy_area` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单选(00-主机房-服务器区; 01-主机房-网络区; 02-主机房-存储区; 03-主机房-其它区; 99-其它)',
  `operation_department` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单选(00-科技管理部门; 01-后勤管理部门; 02-业务管理部门; 03-保卫管理部门; 04-物业管理部门; 05-外包服务部门; 99-其它)',
  `administrative_department` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单选(00-科技管理部门; 01-后勤管理部门; 02-业务管理部门; 03-保卫管理部门; 04-物业管理部门; 05-外包服务部门; 99-其它)',
  `slot_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '槽位号',
  `data_location` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单选(00-本地存储; 01-日志服务器存储; 99-其它)\r\n            ',
  `storage_period` float NULL DEFAULT NULL COMMENT '存储周期(天)',
  `_idcrack` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资产选择(	CMDB模型选择-区域)',
  `area` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资产选择(CMDB模型选择-机柜)',
  `idc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资产选择(CMDB模型选择-数据中心)',
  `vendorinformation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商选择(CMDB模型选择-厂商信息)',
  `network_equipment_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '网络设备上架主表编号',
  `create_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_orgid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构ID',
  `create_orgname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人ID',
  `update_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联公司ID',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  `deleted` int(0) NOT NULL DEFAULT 0 COMMENT '是否删除 0 :未删除 1:已删除',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for itsm_t_ids_load_balancing
-- ----------------------------
DROP TABLE IF EXISTS `itsm_t_ids_load_balancing`;
CREATE TABLE `itsm_t_ids_load_balancing`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `facility_name` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '设施名称',
  `facility_use_date` datetime(0) NULL DEFAULT NULL COMMENT '设施投产日期',
  `facility_ownership_agency` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单选(日照银行股份有限公司; 济宁高新村镇股份有限公司)',
  `facility_update_date` datetime(0) NULL DEFAULT NULL COMMENT '设施信息更新日期',
  `asset_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资产编码',
  `asset_serial_number` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '产品序列号',
  `asset_value` decimal(10, 2) NULL DEFAULT NULL COMMENT '资产价值',
  `device_height` int(0) NULL DEFAULT NULL COMMENT '设备高度',
  `management_ip` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '管理IP地址',
  `influence_system` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '影响系统',
  `network_security_capability` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '多选(00：IPSec; 01：MACSec; 02：L2TP; 03：SSLVPN; 99：其它)',
  `number_of_cards` float NULL DEFAULT NULL COMMENT '板卡数量',
  `safetydeployment_mode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单选(00-路由方式; 01-网桥方式; 02-旁路方式; 03-混合方式（路由方式+网桥方式）)',
  `handling_capacity` float NULL DEFAULT NULL COMMENT '吞吐量',
  `maximum_number` int(0) NULL DEFAULT NULL COMMENT '最大并发连接数',
  `maximum_new_connection_rate` float NULL DEFAULT NULL COMMENT '最大新建连接速率',
  `deploy_gallery` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属楼座',
  `deploy_floor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属楼层',
  `deploy_area` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单选(00-主机房-服务器区; 01-主机房-网络区; 02-主机房-存储区; 03-主机房-其它区; 99-其它)',
  `operation_department` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单选(00-科技管理部门; 01-后勤管理部门; 02-业务管理部门; 03-保卫管理部门; 04-物业管理部门; 05-外包服务部门; 99-其它)',
  `administrative_department` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单选(00-科技管理部门; 01-后勤管理部门; 02-业务管理部门; 03-保卫管理部门; 04-物业管理部门; 05-外包服务部门; 99-其它)',
  `slot_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '槽位号',
  `ipv6_basic_protocol` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'IPv6基础协议',
  `_idcrack` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资产选择(	CMDB模型选择-区域)',
  `area` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资产选择(CMDB模型选择-机柜)',
  `idc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资产选择(CMDB模型选择-数据中心)',
  `vendorinformation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商选择(CMDB模型选择-厂商信息)',
  `network_equipment_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '网络设备上架主表编号',
  `create_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_orgid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构ID',
  `create_orgname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人ID',
  `update_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联公司ID',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  `deleted` int(0) NOT NULL DEFAULT 0 COMMENT '是否删除 0 :未删除 1:已删除',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for itsm_t_leave_process
-- ----------------------------
DROP TABLE IF EXISTS `itsm_t_leave_process`;
CREATE TABLE `itsm_t_leave_process`  (
  `flowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '流程ID',
  `flowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程模型ID',
  `nodemodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '环节模型ID',
  `flowno` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程单号',
  `create_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_orgid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构ID',
  `create_orgname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人ID',
  `update_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联公司ID',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  `deleted` int(0) NULL DEFAULT 0 COMMENT '是否删除',
  `current_nodename` varchar(1000) CHARACTER SET utf16le COLLATE utf16le_general_ci NULL DEFAULT NULL COMMENT '当前处理环节',
  `current_hander` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前处理人',
  `business_status` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '业务状态',
  `vacationer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '休假人',
  `commencement_data` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '休假开始日期',
  `end_data` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '休假结束日期',
  `total_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '休假总天数',
  `deduct_vacation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '扣除去年年休假天数',
  `deduction_leave` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '剩余该扣除休假天数',
  `verification_instruction` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '休假校验说明',
  `vacation_reason` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '休假理由说明',
  `process_topic` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程主题',
  PRIMARY KEY (`flowid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for itsm_t_network_equipment
-- ----------------------------
DROP TABLE IF EXISTS `itsm_t_network_equipment`;
CREATE TABLE `itsm_t_network_equipment`  (
  `flowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '流程ID',
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单选(路由器；交换机；防火墙；入侵检测与防御设备；负载均衡设备)',
  `environment` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单选(测试；准生产；生产；互联网)',
  `flowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程模型ID',
  `nodemodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '环节模型ID',
  `flowno` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程单号',
  `create_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_orgid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构ID',
  `create_orgname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人ID',
  `update_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联公司ID',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  `deleted` int(0) NOT NULL DEFAULT 0 COMMENT '是否删除 0 :未删除 1:已删除',
  `current_nodename` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前处理环节',
  `current_hander` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前处理人',
  `business_status` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '业务状态',
  PRIMARY KEY (`flowid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for itsm_t_router
-- ----------------------------
DROP TABLE IF EXISTS `itsm_t_router`;
CREATE TABLE `itsm_t_router`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `facility_name` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '设施名称',
  `facility_use_date` datetime(0) NULL DEFAULT NULL COMMENT '设施投产日期',
  `facility_ownership_agency` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单选(日照银行股份有限公司; 济宁高新村镇股份有限公司)',
  `facility_update_date` datetime(0) NULL DEFAULT NULL COMMENT '设施信息更新日期',
  `asset_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资产编码',
  `asset_serial_number` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '产品序列号',
  `asset_value` decimal(10, 2) NULL DEFAULT NULL COMMENT '资产价值',
  `device_height` int(0) NULL DEFAULT NULL COMMENT '设备高度',
  `management_ip` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '管理IP地址',
  `influence_system` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '影响系统',
  `network_security_capability` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '多选(00：IPSec; 01：MACSec; 02：L2TP; 03：SSLVPN; 99：其它)',
  `number_of_cards` float NULL DEFAULT NULL COMMENT '板卡数量',
  `deploy_gallery` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属楼座',
  `deploy_floor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属楼层',
  `deploy_area` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单选(00-主机房-服务器区; 01-主机房-网络区; 02-主机房-存储区; 03-主机房-其它区; 99-其它)',
  `operation_department` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单选(00-科技管理部门; 01-后勤管理部门; 02-业务管理部门; 03-保卫管理部门; 04-物业管理部门; 05-外包服务部门; 99-其它)',
  `administrative_department` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单选(00-科技管理部门; 01-后勤管理部门; 02-业务管理部门; 03-保卫管理部门; 04-物业管理部门; 05-外包服务部门; 99-其它)',
  `slot_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '槽位号',
  `ipv6_basic_protocol` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'IPv6基础协议',
  `_idcrack` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资产选择(	CMDB模型选择-区域)',
  `area` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资产选择(CMDB模型选择-机柜)',
  `idc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资产选择(CMDB模型选择-数据中心)',
  `vendorinformation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商选择(CMDB模型选择-厂商信息)',
  `network_equipment_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '网络设备上架主表编号',
  `create_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_orgid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构ID',
  `create_orgname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人ID',
  `update_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联公司ID',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  `deleted` int(0) NOT NULL DEFAULT 0 COMMENT '是否删除 0 :未删除 1:已删除',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for itsm_t_switches
-- ----------------------------
DROP TABLE IF EXISTS `itsm_t_switches`;
CREATE TABLE `itsm_t_switches`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `facility_name` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '设施名称',
  `facility_use_date` datetime(0) NULL DEFAULT NULL COMMENT '设施投产日期',
  `facility_ownership_agency` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单选(日照银行股份有限公司; 济宁高新村镇股份有限公司)',
  `facility_update_date` datetime(0) NULL DEFAULT NULL COMMENT '设施信息更新日期',
  `asset_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资产编码',
  `asset_serial_number` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '产品序列号',
  `asset_value` decimal(10, 2) NULL DEFAULT NULL COMMENT '资产价值',
  `device_height` int(0) NULL DEFAULT NULL COMMENT '设备高度',
  `management_ip` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '管理IP地址',
  `influence_system` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '影响系统',
  `network_security_capability` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '多选(00：IPSec; 01：MACSec; 02：L2TP; 03：SSLVPN; 99：其它)',
  `number_of_cards` float NULL DEFAULT NULL COMMENT '板卡数量',
  `deploy_gallery` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属楼座',
  `deploy_floor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属楼层',
  `deploy_area` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单选(00-主机房-服务器区; 01-主机房-网络区; 02-主机房-存储区; 03-主机房-其它区; 99-其它)',
  `operation_department` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单选(00-科技管理部门; 01-后勤管理部门; 02-业务管理部门; 03-保卫管理部门; 04-物业管理部门; 05-外包服务部门; 99-其它)',
  `administrative_department` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单选(00-科技管理部门; 01-后勤管理部门; 02-业务管理部门; 03-保卫管理部门; 04-物业管理部门; 05-外包服务部门; 99-其它)',
  `slot_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '槽位号',
  `_idcrack` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资产选择(	CMDB模型选择-区域)',
  `area` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资产选择(CMDB模型选择-机柜)',
  `idc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资产选择(CMDB模型选择-数据中心)',
  `vendorinformation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商选择(CMDB模型选择-厂商信息)',
  `network_equipment_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '网络设备上架主表编号',
  `create_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_orgid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构ID',
  `create_orgname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人ID',
  `update_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联公司ID',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  `deleted` int(0) NOT NULL DEFAULT 0 COMMENT '是否删除 0 :未删除 1:已删除',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for knowledge_t_base_info
-- ----------------------------
DROP TABLE IF EXISTS `knowledge_t_base_info`;
CREATE TABLE `knowledge_t_base_info`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `create_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_orgid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构ID',
  `create_orgname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人ID',
  `update_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联公司ID',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联项目ID',
  `deleted` int(0) NULL DEFAULT 0 COMMENT '是否删除',
  `subject` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '主题',
  `tags` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关键字',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '知识内容',
  `type` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '知识类别ID',
  `refflowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联流程ID',
  `is_top` int(0) NULL DEFAULT 0 COMMENT '是否指定（0：普通，1：置顶）',
  `top_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '置顶时间,默认为知识发布时间',
  `attachments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '相关附件',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '知识信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for knowledge_t_catalog
-- ----------------------------
DROP TABLE IF EXISTS `knowledge_t_catalog`;
CREATE TABLE `knowledge_t_catalog`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `catalogname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类别名称',
  `parentid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '父类ID',
  `classlayer` int(0) NULL DEFAULT 1 COMMENT '所属层级',
  `classlist` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '层级字符组',
  `sortid` int(0) NULL DEFAULT 0 COMMENT '排序值',
  `deleted` int(0) NULL DEFAULT 0 COMMENT '是否删除',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '项目编号',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '公司编号',
  `create_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_orgid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构ID',
  `update_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人ID',
  `update_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '知识类别表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for knowledge_t_comment
-- ----------------------------
DROP TABLE IF EXISTS `knowledge_t_comment`;
CREATE TABLE `knowledge_t_comment`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '评论编号',
  `content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '评论内容',
  `reply_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '回复评论ID或知识ID',
  `ref_commentid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属评论ID',
  `ref_knowledgeid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属知识ID',
  `user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '评论人编号',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '公司编号',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '项目编号',
  `publish_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '评论时间',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '知识评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for knowledge_t_filed
-- ----------------------------
DROP TABLE IF EXISTS `knowledge_t_filed`;
CREATE TABLE `knowledge_t_filed`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `create_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_orgid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构ID',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `project_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '项目ID',
  `app_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '应用ID',
  `subject` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '知识主题',
  `keyword` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '关键词',
  `attachments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '相关附件',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '知识内容',
  `sort` int(0) NOT NULL COMMENT '排序值',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联公司ID',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '知识归档规则表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for knowledge_t_flow_info
-- ----------------------------
DROP TABLE IF EXISTS `knowledge_t_flow_info`;
CREATE TABLE `knowledge_t_flow_info`  (
  `flowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '流程ID',
  `flowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程模型ID',
  `nodemodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '环节模型ID',
  `flowno` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程单号',
  `create_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '发起人ID',
  `create_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '发起人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '发起部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '发起部门名称',
  `create_orgid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '发起机构ID',
  `create_orgname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '发起机构名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '发起时间',
  `update_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人ID',
  `update_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联公司ID',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联项目ID',
  `deleted` int(0) NULL DEFAULT 0 COMMENT '是否删除',
  `current_nodename` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前处理环节',
  `current_hander` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前处理人',
  `business_status` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '业务状态',
  `type` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '知识类别',
  `subject` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '知识主题',
  `tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '关键字',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '知识内容',
  `attachments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '相关附件',
  PRIMARY KEY (`flowid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '知识流程信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for knowledge_t_reference
-- ----------------------------
DROP TABLE IF EXISTS `knowledge_t_reference`;
CREATE TABLE `knowledge_t_reference`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `create_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_orgid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构ID',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `project_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '项目ID',
  `app_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '应用ID',
  `keyword` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '关键词字段',
  `sort` int(0) NOT NULL COMMENT '排序值',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联公司ID',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '知识参考规则表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for knowledge_t_related
-- ----------------------------
DROP TABLE IF EXISTS `knowledge_t_related`;
CREATE TABLE `knowledge_t_related`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '唯一编号',
  `like_type` int(0) NULL DEFAULT 0 COMMENT '类型：1 阅读，2 点赞 3 收藏',
  `data_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '知识编号或评论编号',
  `user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户编号',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '公司编号',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '项目编号',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '知识相关操作表(点赞/收藏/阅读)' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for new_vm_hosts
-- ----------------------------
DROP TABLE IF EXISTS `new_vm_hosts`;
CREATE TABLE `new_vm_hosts`  (
  `instance_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '实例名称',
  `instance_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '实例ID',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '运营状态，已关机/运行中',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'IP地址',
  `vm_ips` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '虚拟IP地址',
  `host_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '宿主机IP地址',
  `osDistro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '操作系统',
  `cpus` int(0) NULL DEFAULT NULL COMMENT 'cpu核数',
  `mem_size` double NULL DEFAULT NULL COMMENT '内存大小',
  `disk_size` double NULL DEFAULT NULL COMMENT '磁盘大小',
  `app_env` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '业务环境',
  `app_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '系统名称',
  `parent_dept_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '负责部门',
  `app_admin_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '主机负责人名称',
  `host_admin_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '主机维护人名称',
  PRIMARY KEY (`instance_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `FK_reference_4` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '日历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `FK_reference_3` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(0) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(0) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(0) NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '已触发的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '任务详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '暂停的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(0) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(0) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '调度器状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(0) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(0) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(0) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `FK_reference_2` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(0) NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(0) NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(0) NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(0) NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `FK_reference_5` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(0) NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(0) NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(0) NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(0) NOT NULL COMMENT '开始时间',
  `end_time` bigint(0) NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(0) NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `FK_reference_1`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `FK_reference_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '触发器详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_expenses_chaim
-- ----------------------------
DROP TABLE IF EXISTS `t_expenses_chaim`;
CREATE TABLE `t_expenses_chaim`  (
  `flowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '流程ID',
  `flowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程模型ID',
  `nodemodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '环节模型ID',
  `flowno` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程单号',
  `create_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_orgid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构ID',
  `create_orgname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人ID',
  `update_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联公司ID',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  `deleted` int(0) NULL DEFAULT 0 COMMENT '是否删除',
  `current_nodename` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前处理环节',
  `current_hander` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前处理人',
  `business_status` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '业务状态',
  `billnum` int(0) NULL DEFAULT NULL COMMENT '附单据',
  `total_amount` decimal(18, 2) NULL DEFAULT NULL COMMENT '合计金额',
  `borrow_money` decimal(18, 2) NULL DEFAULT NULL COMMENT '原借款',
  `spare_money` decimal(18, 2) NULL DEFAULT NULL COMMENT '应退余款',
  `pay_reason` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '付款原因',
  `detail_reperson` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '报销关联人',
  `detail_department` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '报销关联部门',
  `detail_classification` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '报销分类',
  `detail_date` datetime(0) NULL DEFAULT NULL COMMENT '单据填写日期',
  `detail_deamount` int(0) NULL DEFAULT NULL COMMENT '报销抵扣金额',
  `detail_description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '报销描述',
  `cost_attribution` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '费用归属',
  `detail_role` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '报销关联角色',
  PRIMARY KEY (`flowid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '费用报销记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_expenses_chaim_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_expenses_chaim_detail`;
CREATE TABLE `t_expenses_chaim_detail`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `ref_flowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联费用报销流程ID',
  `purpose` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用途',
  `catalog_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '所属科目',
  `chaim_money` decimal(18, 2) NULL DEFAULT NULL COMMENT '报销金额',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '费用报销明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_expenses_chaim_test
-- ----------------------------
DROP TABLE IF EXISTS `t_expenses_chaim_test`;
CREATE TABLE `t_expenses_chaim_test`  (
  `flowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '流程ID',
  `flowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程模型ID',
  `nodemodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '环节模型ID',
  `flowno` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程单号',
  `create_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_orgid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构ID',
  `create_orgname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人ID',
  `update_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联公司ID',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  `deleted` int(0) NULL DEFAULT 0 COMMENT '是否删除',
  `current_nodename` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前处理环节',
  `current_hander` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前处理人',
  `business_status` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '业务状态',
  `borrow_money` decimal(18, 2) NULL DEFAULT NULL COMMENT '原借款',
  `spare_money` decimal(18, 2) NULL DEFAULT NULL COMMENT '应退余款',
  `pay_reason` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '付款原因',
  `detail_reperson` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '报销关联人',
  PRIMARY KEY (`flowid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '费用报销记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_leave
-- ----------------------------
DROP TABLE IF EXISTS `t_leave`;
CREATE TABLE `t_leave`  (
  `flowid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '流程ID',
  `flowmodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程模型ID',
  `nodemodelid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '环节模型ID',
  `flowno` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '流程单号',
  `create_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_orgid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构ID',
  `create_orgname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人ID',
  `update_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联公司ID',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  `deleted` int(0) NULL DEFAULT 0 COMMENT '是否删除',
  `current_nodename` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前处理环节',
  `current_hander` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前处理人',
  `business_status` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '业务状态',
  `leave_user` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '请假人',
  `leave_day` int(0) NOT NULL DEFAULT 0 COMMENT '请假天数',
  `leave_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '请假原因',
  PRIMARY KEY (`flowid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '请假管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_leave_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_leave_detail`;
CREATE TABLE `t_leave_detail`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键ID',
  `create_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_orgid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构ID',
  `create_orgname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人ID',
  `update_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联公司ID',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  `deleted` int(0) NULL DEFAULT 0 COMMENT '是否删除',
  `leave_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '请假类目',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '请假备注',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '请假明细' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_test
-- ----------------------------
DROP TABLE IF EXISTS `t_test`;
CREATE TABLE `t_test`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_test_synch
-- ----------------------------
DROP TABLE IF EXISTS `t_test_synch`;
CREATE TABLE `t_test_synch`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `contratname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `job` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_text
-- ----------------------------
DROP TABLE IF EXISTS `t_text`;
CREATE TABLE `t_text`  (
  `iidd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键D',
  `create_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `create_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门ID',
  `create_deptname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建部门名称',
  `create_orgid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构ID',
  `create_orgname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建机构名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人ID',
  `update_username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人名称',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `ref_deptid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联公司ID',
  `ref_projectid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属项目ID',
  `deleted` int(0) NULL DEFAULT 0 COMMENT '是否删除',
  `billnum` int(0) NULL DEFAULT NULL COMMENT '附单据',
  `pay_reason` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '付款原因',
  `detail_reperson` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '报销关联人',
  PRIMARY KEY (`iidd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '测试二次开发基础资料' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;


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

INSERT INTO ff_apaas_sys_config (config_id, config_name, config_key, config_value, config_type, create_by, create_time,
                                 update_by, update_time, remark, group_name,types)
VALUES ('9E8D879AE17C40F7AC5ED3C0B5E7FAA5', '知识全部类别ID', 'knowledge-all-type-id', '8E3D879AE17C40F7AC5ED3C0B5E7FAA5',
        'Y', 'F1DD5C21715A4DA7B873AD98BC5D1494', sysdate(), NULL, NULL, NULL, '知识',0);
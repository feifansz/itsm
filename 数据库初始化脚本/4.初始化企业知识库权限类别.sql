# 注意 ref_appid 必须替换为所在公司企业知识库应用ID
DELETE FROM ff_apaas_es_app_actiontype WHERE ref_appid= 'F97811E7940945DCB9492C84B52BA280';
INSERT INTO ff_apaas_es_app_actiontype(iidd, ref_appid, actiontype_name, actiontype, sortid) VALUES ('086894D9646543B6991F10528E9F6FCF', 'F97811E7940945DCB9492C84B52BA280', '知识分类维护', 'Setting', 3);
INSERT INTO ff_apaas_es_app_actiontype(iidd, ref_appid, actiontype_name, actiontype, sortid) VALUES ('1DACEA14F9A14A89AE2D3F7331B23F01', 'F97811E7940945DCB9492C84B52BA280', '知识置顶', 'Top', 1);
INSERT INTO ff_apaas_es_app_actiontype(iidd, ref_appid, actiontype_name, actiontype, sortid) VALUES ('922C393EE5FC4F5BBEA8D714C11EA74A', 'F97811E7940945DCB9492C84B52BA280', '查看', 'View', 0);
INSERT INTO ff_apaas_es_app_actiontype(iidd, ref_appid, actiontype_name, actiontype, sortid) VALUES ('956E30DAECC74BF38B2419DE4828AD09', 'F97811E7940945DCB9492C84B52BA280', '知识归档与参考配置', 'Rule', 4);
INSERT INTO ff_apaas_es_app_actiontype(iidd, ref_appid, actiontype_name, actiontype, sortid) VALUES ('B8B983EC16C04F2EBDCF3D63F1EB9CA0', 'F97811E7940945DCB9492C84B52BA280', '知识分类授权', 'Power', 2);
INSERT INTO ff_apaas_es_app_actiontype(iidd, ref_appid, actiontype_name, actiontype, sortid) VALUES ('FADFBFFA0BA742B98B55B1273E50234B', 'F97811E7940945DCB9492C84B52BA280', '导出', 'ExlOut', 5);

CREATE TABLE `uac_user` (
  `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `version` int(11) DEFAULT '0' COMMENT '版本号',
  `username` varchar(50) NOT NULL COMMENT '登录名',
  `nickname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `passwordhash` varchar(300) NOT NULL COMMENT '登录密码',
  `passwordsalt` varchar(32) DEFAULT NULL COMMENT '盐,用于shiro加密, 字段停用',
  `gender` int(11) DEFAULT NULL COMMENT '性别',
  `status` varchar(20) DEFAULT '0' COMMENT '状态',
  `usercode` varchar(32) DEFAULT NULL COMMENT '工号',
  `mobile` varchar(15) DEFAULT NULL COMMENT '手机号',
  `is_mobile_active` int(11) DEFAULT '0' COMMENT '手机是否激活',
  `identitycard` varchar(30) DEFAULT NULL COMMENT '身份证',
  `email` varchar(50) DEFAULT '' COMMENT '邮件地址',
  `is_email_active` int(11) DEFAULT '0' COMMENT '邮箱是否激活',
  `source` varchar(32) DEFAULT NULL COMMENT '用户来源',
  `type` varchar(32) DEFAULT '' COMMENT '操作员类型（2000伙伴，3000客户，1000运营）',
  `qq` varchar(20) DEFAULT NULL,
  `deptid` bigint(20) DEFAULT NULL,
  `remark` varchar(300) DEFAULT '' COMMENT '描述',
  `creator` varchar(20) DEFAULT '' COMMENT '创建人',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_operator` varchar(20) DEFAULT NULL COMMENT '更新操作人',
  `update_operator_id` bigint(20) DEFAULT NULL COMMENT '更新操作人ID',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='操作员表';

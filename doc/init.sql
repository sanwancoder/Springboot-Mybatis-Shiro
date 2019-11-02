INSERT INTO `user_info` VALUES ('1', '管理员', 'd3c59d25033dbf980d29554025c23a75', '8d78869f470951332959580424d4bf4f', '1', 'admin');
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_role_permission` VALUES ('1', '1');
INSERT INTO `sys_role_permission` VALUES ('2', '1');
INSERT INTO `sys_role` VALUES ('1', '1', '管理员', 'admin');
INSERT INTO `sys_role` VALUES ('2', '1', 'VIP会员', 'vip');
INSERT INTO `sys_permission` VALUES ('1', '用户管理', 'userInfo:view', 'userInfo/userList');
INSERT INTO `sys_permission` VALUES ('2', '用户添加', 'userInfo:add', 'userInfo/userAdd');
INSERT INTO `sys_permission` VALUES ('3', '用户删除', 'userInfo:del', 'userInfo/userDel');

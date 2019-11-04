-- 保持幂等性质
DROP TABLE IF EXISTS shiro.sys_permission;


-- 建表
CREATE TABLE shiro.sys_permission(
  id INT(11) NOT NULL AUTO_INCREMENT  COMMENT '主键',
  NAME VARCHAR(64) NOT NULL COMMENT '名称',
  permission VARCHAR(100) COMMENT '权限',
  url VARCHAR(64) NOT NULL COMMENT 'url',
  PRIMARY KEY (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8 ;

-- 保持幂等性质
DROP TABLE IF EXISTS shiro.sys_role_permission;


-- 建表
CREATE TABLE shiro.sys_role_permission(
  permission_id INT(11) NOT NULL   COMMENT '权限表主键',
  role_id INT(11) NOT NULL   COMMENT '角色表主键'
) ENGINE=INNODB DEFAULT CHARSET=utf8 ;

-- 保持幂等性质
DROP TABLE IF EXISTS shiro.sys_user_role;


-- 建表
CREATE TABLE shiro.sys_user_role(
  role_id INT(11) NOT NULL   COMMENT '角色表主键',
  uid INT(11) NOT NULL   COMMENT '用户表主键' 
) ENGINE=INNODB DEFAULT CHARSET=utf8 ;

-- 保持幂等性质
DROP TABLE IF EXISTS shiro.user_info;


-- 建表
CREATE TABLE shiro.user_info(
  uid INT(11) NOT NULL AUTO_INCREMENT  COMMENT '主键',
  NAME VARCHAR(64) NOT NULL COMMENT '用户名',
  PASSWORD VARCHAR(100) COMMENT '密码',
  salt VARCHAR(64) NOT NULL COMMENT '盐',
  state  VARCHAR(3)  COMMENT '状态',
  username VARCHAR(50) DEFAULT NULL COMMENT '用户名',
  PRIMARY KEY (uid)
) ENGINE=INNODB DEFAULT CHARSET=utf8 ;

-- 保持幂等性质
DROP TABLE IF EXISTS shiro.sys_role;


-- 建表
CREATE TABLE shiro.sys_role(
  id INT(11) NOT NULL AUTO_INCREMENT  COMMENT '主键',
  available VARCHAR(2) NOT NULL COMMENT '是否可用',
  description VARCHAR(100) COMMENT '描述',
  role VARCHAR(64) NOT NULL COMMENT '角色',
  PRIMARY KEY (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8 ;

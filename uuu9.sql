SET NAMES UTF8;
DROP DATABASE IF EXISTS u9;
CREATE DATABASE u9 CHARSET=UTF8;
USE u9;


/**游戏地图分类**/
CREATE TABLE u9_class_group(
  gid INT PRIMARY KEY AUTO_INCREMENT,
  gname VARCHAR(32)
);

/** 地图详情 **/
CREATE TABLE u9_class(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  class_id INT,               #所属地图分类编号
  class_name VARCHAR(16),     #所属地图类名
  map_name VARCHAR(64),       #地图名称
  des_name VARCHAR(32),       #地图作者
  map_size DECIMAL(5,2),      #地图大小
  game_mata VARCHAR(32),      #地图支持版本
  map_language VARCHAR(16),   #地图支持语言

  upload_time BIGINT,         #上传时间
  download_count  BIGINT,     #下载总次数
  grade_count BIGINT,         #评分人数
  details VARCHAR(1024)       #地图介绍
);

/** 地图截图及封面 **/

/** 用户信息 **/
CREATE TABLE u9_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),      #帐号
  upwd VARCHAR(32),       #密码
  email VARCHAR(64),      #邮箱
  phone CHAR(16),         #电话

  avatar VARCHAR(164),    #头像路径
  user_name VARCHAR(32),  #真实姓名
  gender INT,             #性别
  id_card CHAR(18)        #身份证号
);

/*********************/
/*****数据导入********/
/*********************/

/** 地图类名 **/
INSERT INTO u9_class_group VALUES
(NULL,'防守地图'),
(NULL,'对抗地图'),
(NULL,'角色地图'),
(NULL,'TD塔防'),
(NULL,'战役地图'),
(NULL,'ORPG'),
(NULL,'生存地图'),
(NULL,'其他地图');

/** 地图详情 **/
INSERT INTO u9_class VALUES
(NULL,1,'防守地图','火影忍者羁绊7.05','暗君',70.4,'1.24-1.27','简体中文',150123456789,2109446,14966,'详情'),
(NULL,2,'对抗地图','疾风忍法帖6.5-再会','BT',6.48,'1.24-1.26','简体中文',150123456789,71426,428,'详情'),
(NULL,4,'TD塔防','混乱武林IIIA刀光剑影5.97','MissingNo',10.25,'1.24-1.27A(8M补丁)','简体中文',150123456789,157083,570,'详情');

/** 用户信息 **/
INSERT INTO u9_user VALUES
(NULL, 'dingding', '123456', 'ding@qq.com', '13501234567', 'img/avatar/default.png', '丁伟', '1',513030199505220212),
(NULL, 'dangdang', '123456', 'dang@qq.com', '13501234568', 'img/avatar/default.png', '林当', '1',513030199505220212),
(NULL, 'doudou', '123456', 'dou@qq.com', '13501234569', 'img/avatar/default.png', '窦志强', '1',513030199505220212),
(NULL, 'yaya', '123456', 'ya@qq.com', '13501234560', 'img/avatar/default.png', '秦小雅', '0',513030199505220222);

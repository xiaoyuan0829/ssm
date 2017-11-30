# ssm
1. mysql数据库新建表, sql语句如下:
```
SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
```
2. 导入项目到eclipse, 修改db.properties
3. 运行run on server, 选择tomcat7运行
4. 注：项目中maven有配置mybatis生成插件，配置文件在generatorConfig.xml，运行方法maven build... -> Goals填写 mybatis-generator:generate

/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : petshop

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-08-08 00:04:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_assignment
-- ----------------------------
DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_assignment
-- ----------------------------
INSERT INTO `auth_assignment` VALUES ('admin', '1', '1468421772');
INSERT INTO `auth_assignment` VALUES ('User', '2', '1533657185');
INSERT INTO `auth_assignment` VALUES ('User', '3', '1533657195');

-- ----------------------------
-- Table structure for auth_item
-- ----------------------------
DROP TABLE IF EXISTS `auth_item`;
CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_item
-- ----------------------------
INSERT INTO `auth_item` VALUES ('/*', '2', null, null, null, '1468421689', '1468421689');
INSERT INTO `auth_item` VALUES ('/admin/*', '2', null, null, null, '1468341067', '1468341067');
INSERT INTO `auth_item` VALUES ('/admin/assignment/*', '2', null, null, null, '1468339654', '1468339654');
INSERT INTO `auth_item` VALUES ('/admin/assignment/assign', '2', null, null, null, '1468339526', '1468339526');
INSERT INTO `auth_item` VALUES ('/admin/assignment/index', '2', null, null, null, '1468339490', '1468339490');
INSERT INTO `auth_item` VALUES ('/admin/assignment/revoke', '2', null, null, null, '1468339653', '1468339653');
INSERT INTO `auth_item` VALUES ('/admin/assignment/view', '2', null, null, null, '1468339512', '1468339512');
INSERT INTO `auth_item` VALUES ('/admin/default/*', '2', null, null, null, '1468339732', '1468339732');
INSERT INTO `auth_item` VALUES ('/admin/default/index', '2', null, null, null, '1468339725', '1468339725');
INSERT INTO `auth_item` VALUES ('/admin/menu/*', '2', null, null, null, '1468340134', '1468340134');
INSERT INTO `auth_item` VALUES ('/admin/menu/create', '2', null, null, null, '1468340044', '1468340044');
INSERT INTO `auth_item` VALUES ('/admin/menu/delete', '2', null, null, null, '1468340057', '1468340057');
INSERT INTO `auth_item` VALUES ('/admin/menu/index', '2', null, null, null, '1468339963', '1468339963');
INSERT INTO `auth_item` VALUES ('/admin/menu/update', '2', null, null, null, '1468340049', '1468340049');
INSERT INTO `auth_item` VALUES ('/admin/menu/view', '2', null, null, null, '1468339967', '1468339967');
INSERT INTO `auth_item` VALUES ('/admin/permission/*', '2', null, null, null, '1468341039', '1468341039');
INSERT INTO `auth_item` VALUES ('/admin/permission/assign', '2', null, null, null, '1468341032', '1468341032');
INSERT INTO `auth_item` VALUES ('/admin/permission/create', '2', null, null, null, '1468341001', '1468341001');
INSERT INTO `auth_item` VALUES ('/admin/permission/delete', '2', null, null, null, '1468341006', '1468341006');
INSERT INTO `auth_item` VALUES ('/admin/permission/index', '2', null, null, null, '1468340144', '1468340144');
INSERT INTO `auth_item` VALUES ('/admin/permission/remove', '2', null, null, null, '1468341033', '1468341033');
INSERT INTO `auth_item` VALUES ('/admin/permission/update', '2', null, null, null, '1468341003', '1468341003');
INSERT INTO `auth_item` VALUES ('/admin/permission/view', '2', null, null, null, '1468341000', '1468341000');
INSERT INTO `auth_item` VALUES ('/admin/role/*', '2', null, null, null, '1468341046', '1468341046');
INSERT INTO `auth_item` VALUES ('/admin/role/assign', '2', null, null, null, '1468341045', '1468341045');
INSERT INTO `auth_item` VALUES ('/admin/role/create', '2', null, null, null, '1468341044', '1468341044');
INSERT INTO `auth_item` VALUES ('/admin/role/delete', '2', null, null, null, '1468341045', '1468341045');
INSERT INTO `auth_item` VALUES ('/admin/role/index', '2', null, null, null, '1468341039', '1468341039');
INSERT INTO `auth_item` VALUES ('/admin/role/remove', '2', null, null, null, '1468341046', '1468341046');
INSERT INTO `auth_item` VALUES ('/admin/role/update', '2', null, null, null, '1468341045', '1468341045');
INSERT INTO `auth_item` VALUES ('/admin/role/view', '2', null, null, null, '1468341044', '1468341044');
INSERT INTO `auth_item` VALUES ('/admin/route/*', '2', null, null, null, '1468341048', '1468341048');
INSERT INTO `auth_item` VALUES ('/admin/route/assign', '2', null, null, null, '1468341047', '1468341047');
INSERT INTO `auth_item` VALUES ('/admin/route/create', '2', null, null, null, '1468341047', '1468341047');
INSERT INTO `auth_item` VALUES ('/admin/route/index', '2', null, null, null, '1468341046', '1468341046');
INSERT INTO `auth_item` VALUES ('/admin/route/refresh', '2', null, null, null, '1468341048', '1468341048');
INSERT INTO `auth_item` VALUES ('/admin/route/remove', '2', null, null, null, '1468341047', '1468341047');
INSERT INTO `auth_item` VALUES ('/admin/rule/*', '2', null, null, null, '1468341050', '1468341050');
INSERT INTO `auth_item` VALUES ('/admin/rule/create', '2', null, null, null, '1468341049', '1468341049');
INSERT INTO `auth_item` VALUES ('/admin/rule/delete', '2', null, null, null, '1468341049', '1468341049');
INSERT INTO `auth_item` VALUES ('/admin/rule/index', '2', null, null, null, '1468341048', '1468341048');
INSERT INTO `auth_item` VALUES ('/admin/rule/update', '2', null, null, null, '1468341049', '1468341049');
INSERT INTO `auth_item` VALUES ('/admin/rule/view', '2', null, null, null, '1468341049', '1468341049');
INSERT INTO `auth_item` VALUES ('/admin/user/*', '2', null, null, null, '1468341066', '1468341066');
INSERT INTO `auth_item` VALUES ('/admin/user/activate', '2', null, null, null, '1468341066', '1468341066');
INSERT INTO `auth_item` VALUES ('/admin/user/change-password', '2', null, null, null, '1468341066', '1468341066');
INSERT INTO `auth_item` VALUES ('/admin/user/delete', '2', null, null, null, '1468341053', '1468341053');
INSERT INTO `auth_item` VALUES ('/admin/user/index', '2', null, null, null, '1468341051', '1468341051');
INSERT INTO `auth_item` VALUES ('/admin/user/login', '2', null, null, null, '1468341054', '1468341054');
INSERT INTO `auth_item` VALUES ('/admin/user/logout', '2', null, null, null, '1468341055', '1468341055');
INSERT INTO `auth_item` VALUES ('/admin/user/request-password-reset', '2', null, null, null, '1468341065', '1468341065');
INSERT INTO `auth_item` VALUES ('/admin/user/reset-password', '2', null, null, null, '1468341065', '1468341065');
INSERT INTO `auth_item` VALUES ('/admin/user/signup', '2', null, null, null, '1468341064', '1468341064');
INSERT INTO `auth_item` VALUES ('/admin/user/view', '2', null, null, null, '1468341052', '1468341052');
INSERT INTO `auth_item` VALUES ('/app/*', '2', null, null, null, '1468341138', '1468341138');
INSERT INTO `auth_item` VALUES ('/app/galleryApi', '2', null, null, null, '1468341137', '1468341137');
INSERT INTO `auth_item` VALUES ('/banner/*', '2', null, null, null, '1468341159', '1468341159');
INSERT INTO `auth_item` VALUES ('/banner/create', '2', null, null, null, '1468341158', '1468341158');
INSERT INTO `auth_item` VALUES ('/banner/delete', '2', null, null, null, '1468341159', '1468341159');
INSERT INTO `auth_item` VALUES ('/banner/index', '2', null, null, null, '1468341149', '1468341149');
INSERT INTO `auth_item` VALUES ('/banner/update', '2', null, null, null, '1468341159', '1468341159');
INSERT INTO `auth_item` VALUES ('/banner/view', '2', null, null, null, '1468341157', '1468341157');
INSERT INTO `auth_item` VALUES ('/casting/*', '2', null, null, null, '1513093509', '1513093509');
INSERT INTO `auth_item` VALUES ('/casting/create', '2', null, null, null, '1513093508', '1513093508');
INSERT INTO `auth_item` VALUES ('/casting/index', '2', null, null, null, '1513093508', '1513093508');
INSERT INTO `auth_item` VALUES ('/casting/update', '2', null, null, null, '1513093508', '1513093508');
INSERT INTO `auth_item` VALUES ('/casting/view', '2', null, null, null, '1513093508', '1513093508');
INSERT INTO `auth_item` VALUES ('/contact/*', '2', null, null, null, '1513355227', '1513355227');
INSERT INTO `auth_item` VALUES ('/contact/index', '2', null, null, null, '1513355227', '1513355227');
INSERT INTO `auth_item` VALUES ('/contact/view', '2', null, null, null, '1513355227', '1513355227');
INSERT INTO `auth_item` VALUES ('/country/*', '2', null, null, null, '1468341170', '1468341170');
INSERT INTO `auth_item` VALUES ('/country/create', '2', null, null, null, '1468341160', '1468341160');
INSERT INTO `auth_item` VALUES ('/country/delete', '2', null, null, null, '1468341168', '1468341168');
INSERT INTO `auth_item` VALUES ('/country/index', '2', null, null, null, '1468341160', '1468341160');
INSERT INTO `auth_item` VALUES ('/country/update', '2', null, null, null, '1468341168', '1468341168');
INSERT INTO `auth_item` VALUES ('/country/view', '2', null, null, null, '1468341160', '1468341160');
INSERT INTO `auth_item` VALUES ('/debug/*', '2', null, null, null, '1468341111', '1468341111');
INSERT INTO `auth_item` VALUES ('/debug/default/*', '2', null, null, null, '1468341110', '1468341110');
INSERT INTO `auth_item` VALUES ('/debug/default/download-mail', '2', null, null, null, '1468341101', '1468341101');
INSERT INTO `auth_item` VALUES ('/debug/default/index', '2', null, null, null, '1468341071', '1468341071');
INSERT INTO `auth_item` VALUES ('/debug/default/toolbar', '2', null, null, null, '1468341077', '1468341077');
INSERT INTO `auth_item` VALUES ('/debug/default/view', '2', null, null, null, '1468341075', '1468341075');
INSERT INTO `auth_item` VALUES ('/distric/*', '2', null, null, null, '1468341185', '1468341185');
INSERT INTO `auth_item` VALUES ('/distric/create', '2', null, null, null, '1468341180', '1468341180');
INSERT INTO `auth_item` VALUES ('/distric/delete', '2', null, null, null, '1468341184', '1468341184');
INSERT INTO `auth_item` VALUES ('/distric/index', '2', null, null, null, '1468341176', '1468341176');
INSERT INTO `auth_item` VALUES ('/distric/update', '2', null, null, null, '1468341182', '1468341182');
INSERT INTO `auth_item` VALUES ('/distric/view', '2', null, null, null, '1468341179', '1468341179');
INSERT INTO `auth_item` VALUES ('/gii/*', '2', null, null, null, '1468341136', '1468341136');
INSERT INTO `auth_item` VALUES ('/gii/default/*', '2', null, null, null, '1468341135', '1468341135');
INSERT INTO `auth_item` VALUES ('/gii/default/action', '2', null, null, null, '1468341135', '1468341135');
INSERT INTO `auth_item` VALUES ('/gii/default/diff', '2', null, null, null, '1468341134', '1468341134');
INSERT INTO `auth_item` VALUES ('/gii/default/index', '2', null, null, null, '1468341113', '1468341113');
INSERT INTO `auth_item` VALUES ('/gii/default/preview', '2', null, null, null, '1468341134', '1468341134');
INSERT INTO `auth_item` VALUES ('/gii/default/view', '2', null, null, null, '1468341133', '1468341133');
INSERT INTO `auth_item` VALUES ('/menu/*', '2', null, null, null, '1468421684', '1468421684');
INSERT INTO `auth_item` VALUES ('/menu/create', '2', null, null, null, '1468421684', '1468421684');
INSERT INTO `auth_item` VALUES ('/menu/delete', '2', null, null, null, '1468421684', '1468421684');
INSERT INTO `auth_item` VALUES ('/menu/galleryApi', '2', null, null, null, '1468421684', '1468421684');
INSERT INTO `auth_item` VALUES ('/menu/index', '2', null, null, null, '1468421684', '1468421684');
INSERT INTO `auth_item` VALUES ('/menu/update', '2', null, null, null, '1468421684', '1468421684');
INSERT INTO `auth_item` VALUES ('/menu/view', '2', null, null, null, '1468421684', '1468421684');
INSERT INTO `auth_item` VALUES ('/mode/*', '2', null, null, null, '1468421686', '1468421686');
INSERT INTO `auth_item` VALUES ('/mode/create', '2', null, null, null, '1468421685', '1468421685');
INSERT INTO `auth_item` VALUES ('/mode/delete', '2', null, null, null, '1468421685', '1468421685');
INSERT INTO `auth_item` VALUES ('/mode/design', '2', null, null, null, '1479716667', '1479716667');
INSERT INTO `auth_item` VALUES ('/mode/index', '2', null, null, null, '1468421684', '1468421684');
INSERT INTO `auth_item` VALUES ('/mode/update', '2', null, null, null, '1468421685', '1468421685');
INSERT INTO `auth_item` VALUES ('/mode/view', '2', null, null, null, '1468421684', '1468421684');
INSERT INTO `auth_item` VALUES ('/module-status/*', '2', null, null, null, '1479716667', '1479716667');
INSERT INTO `auth_item` VALUES ('/module-status/create', '2', null, null, null, '1479716667', '1479716667');
INSERT INTO `auth_item` VALUES ('/module-status/delete', '2', null, null, null, '1479716667', '1479716667');
INSERT INTO `auth_item` VALUES ('/module-status/index', '2', null, null, null, '1479716667', '1479716667');
INSERT INTO `auth_item` VALUES ('/module-status/update', '2', null, null, null, '1479716667', '1479716667');
INSERT INTO `auth_item` VALUES ('/module-status/view', '2', null, null, null, '1479716667', '1479716667');
INSERT INTO `auth_item` VALUES ('/modules/*', '2', null, null, null, '1468421687', '1468421687');
INSERT INTO `auth_item` VALUES ('/modules/create', '2', null, null, null, '1468421686', '1468421686');
INSERT INTO `auth_item` VALUES ('/modules/delete', '2', null, null, null, '1468421687', '1468421687');
INSERT INTO `auth_item` VALUES ('/modules/index', '2', null, null, null, '1468421686', '1468421686');
INSERT INTO `auth_item` VALUES ('/modules/update', '2', null, null, null, '1468421686', '1468421686');
INSERT INTO `auth_item` VALUES ('/modules/view', '2', null, null, null, '1468421686', '1468421686');
INSERT INTO `auth_item` VALUES ('/movie/*', '2', null, null, null, '1512968287', '1512968287');
INSERT INTO `auth_item` VALUES ('/movie/create', '2', null, null, null, '1512984265', '1512984265');
INSERT INTO `auth_item` VALUES ('/movie/index', '2', null, null, null, '1512984259', '1512984259');
INSERT INTO `auth_item` VALUES ('/movie/update', '2', null, null, null, '1512984271', '1512984271');
INSERT INTO `auth_item` VALUES ('/news/*', '2', null, null, null, '1513263575', '1513263575');
INSERT INTO `auth_item` VALUES ('/news/create', '2', null, null, null, '1513263574', '1513263574');
INSERT INTO `auth_item` VALUES ('/news/index', '2', null, null, null, '1513263574', '1513263574');
INSERT INTO `auth_item` VALUES ('/news/update', '2', null, null, null, '1513263574', '1513263574');
INSERT INTO `auth_item` VALUES ('/news/view', '2', null, null, null, '1513263574', '1513263574');
INSERT INTO `auth_item` VALUES ('/output-mode/*', '2', null, null, null, '1468421688', '1468421688');
INSERT INTO `auth_item` VALUES ('/output-mode/create', '2', null, null, null, '1468421687', '1468421687');
INSERT INTO `auth_item` VALUES ('/output-mode/delete', '2', null, null, null, '1468421687', '1468421687');
INSERT INTO `auth_item` VALUES ('/output-mode/index', '2', null, null, null, '1468421687', '1468421687');
INSERT INTO `auth_item` VALUES ('/output-mode/update', '2', null, null, null, '1468421687', '1468421687');
INSERT INTO `auth_item` VALUES ('/output-mode/view', '2', null, null, null, '1468421687', '1468421687');
INSERT INTO `auth_item` VALUES ('/param-config/*', '2', null, null, null, '1468421688', '1468421688');
INSERT INTO `auth_item` VALUES ('/param-config/create', '2', null, null, null, '1468421688', '1468421688');
INSERT INTO `auth_item` VALUES ('/param-config/delete', '2', null, null, null, '1468421688', '1468421688');
INSERT INTO `auth_item` VALUES ('/param-config/index', '2', null, null, null, '1468421688', '1468421688');
INSERT INTO `auth_item` VALUES ('/param-config/update', '2', null, null, null, '1468421688', '1468421688');
INSERT INTO `auth_item` VALUES ('/param-config/view', '2', null, null, null, '1468421688', '1468421688');
INSERT INTO `auth_item` VALUES ('/pets/*', '2', null, null, null, '1533653576', '1533653576');
INSERT INTO `auth_item` VALUES ('/pets/create', '2', null, null, null, '1533653576', '1533653576');
INSERT INTO `auth_item` VALUES ('/pets/delete', '2', null, null, null, '1533653576', '1533653576');
INSERT INTO `auth_item` VALUES ('/pets/index', '2', null, null, null, '1533653576', '1533653576');
INSERT INTO `auth_item` VALUES ('/pets/update', '2', null, null, null, '1533653576', '1533653576');
INSERT INTO `auth_item` VALUES ('/pets/view', '2', null, null, null, '1533653576', '1533653576');
INSERT INTO `auth_item` VALUES ('/pettype/*', '2', null, null, null, '1533653577', '1533653577');
INSERT INTO `auth_item` VALUES ('/pettype/create', '2', null, null, null, '1533653577', '1533653577');
INSERT INTO `auth_item` VALUES ('/pettype/delete', '2', null, null, null, '1533653577', '1533653577');
INSERT INTO `auth_item` VALUES ('/pettype/index', '2', null, null, null, '1533653576', '1533653576');
INSERT INTO `auth_item` VALUES ('/pettype/update', '2', null, null, null, '1533653577', '1533653577');
INSERT INTO `auth_item` VALUES ('/pettype/view', '2', null, null, null, '1533653577', '1533653577');
INSERT INTO `auth_item` VALUES ('/provincial/*', '2', null, null, null, '1468421688', '1468421688');
INSERT INTO `auth_item` VALUES ('/provincial/create', '2', null, null, null, '1468421688', '1468421688');
INSERT INTO `auth_item` VALUES ('/provincial/delete', '2', null, null, null, '1468421688', '1468421688');
INSERT INTO `auth_item` VALUES ('/provincial/index', '2', null, null, null, '1468421688', '1468421688');
INSERT INTO `auth_item` VALUES ('/provincial/update', '2', null, null, null, '1468421688', '1468421688');
INSERT INTO `auth_item` VALUES ('/provincial/view', '2', null, null, null, '1468421688', '1468421688');
INSERT INTO `auth_item` VALUES ('/register/*', '2', null, null, null, '1513178312', '1513178312');
INSERT INTO `auth_item` VALUES ('/register/index', '2', null, null, null, '1513178312', '1513178312');
INSERT INTO `auth_item` VALUES ('/register/update', '2', null, null, null, '1513178312', '1513178312');
INSERT INTO `auth_item` VALUES ('/register/view', '2', null, null, null, '1513178312', '1513178312');
INSERT INTO `auth_item` VALUES ('/reset-password/*', '2', null, null, null, '1480405669', '1480405669');
INSERT INTO `auth_item` VALUES ('/reset-password/index', '2', null, null, null, '1480405669', '1480405669');
INSERT INTO `auth_item` VALUES ('/runtime-statistics/*', '2', null, null, null, '1479716667', '1479716667');
INSERT INTO `auth_item` VALUES ('/runtime-statistics/create', '2', null, null, null, '1479716667', '1479716667');
INSERT INTO `auth_item` VALUES ('/runtime-statistics/delete', '2', null, null, null, '1479716667', '1479716667');
INSERT INTO `auth_item` VALUES ('/runtime-statistics/index', '2', null, null, null, '1479716667', '1479716667');
INSERT INTO `auth_item` VALUES ('/runtime-statistics/update', '2', null, null, null, '1479716667', '1479716667');
INSERT INTO `auth_item` VALUES ('/runtime-statistics/view', '2', null, null, null, '1479716667', '1479716667');
INSERT INTO `auth_item` VALUES ('/runtime/*', '2', null, null, null, '1479716667', '1479716667');
INSERT INTO `auth_item` VALUES ('/runtime/create', '2', null, null, null, '1479716667', '1479716667');
INSERT INTO `auth_item` VALUES ('/runtime/delete', '2', null, null, null, '1479716667', '1479716667');
INSERT INTO `auth_item` VALUES ('/runtime/index', '2', null, null, null, '1479716667', '1479716667');
INSERT INTO `auth_item` VALUES ('/runtime/update', '2', null, null, null, '1479716667', '1479716667');
INSERT INTO `auth_item` VALUES ('/runtime/view', '2', null, null, null, '1479716667', '1479716667');
INSERT INTO `auth_item` VALUES ('/sensor/*', '2', null, null, null, '1479716667', '1479716667');
INSERT INTO `auth_item` VALUES ('/sensor/create', '2', null, null, null, '1479716667', '1479716667');
INSERT INTO `auth_item` VALUES ('/sensor/delete', '2', null, null, null, '1479716667', '1479716667');
INSERT INTO `auth_item` VALUES ('/sensor/index', '2', null, null, null, '1479716667', '1479716667');
INSERT INTO `auth_item` VALUES ('/sensor/update', '2', null, null, null, '1479716667', '1479716667');
INSERT INTO `auth_item` VALUES ('/sensor/view', '2', null, null, null, '1479716667', '1479716667');
INSERT INTO `auth_item` VALUES ('/site/*', '2', null, null, null, '1468421689', '1468421689');
INSERT INTO `auth_item` VALUES ('/site/captcha', '2', null, null, null, '1468421688', '1468421688');
INSERT INTO `auth_item` VALUES ('/site/error', '2', null, null, null, '1468421688', '1468421688');
INSERT INTO `auth_item` VALUES ('/site/index', '2', null, null, null, '1468421688', '1468421688');
INSERT INTO `auth_item` VALUES ('/site/login', '2', null, null, null, '1468421689', '1468421689');
INSERT INTO `auth_item` VALUES ('/site/logout', '2', null, null, null, '1468421689', '1468421689');
INSERT INTO `auth_item` VALUES ('/socket/*', '2', null, null, null, '1479716667', '1479716667');
INSERT INTO `auth_item` VALUES ('/socket/index', '2', null, null, null, '1479716667', '1479716667');
INSERT INTO `auth_item` VALUES ('/timer-counter/*', '2', null, null, null, '1479716667', '1479716667');
INSERT INTO `auth_item` VALUES ('/timer-counter/create', '2', null, null, null, '1479716667', '1479716667');
INSERT INTO `auth_item` VALUES ('/timer-counter/delete', '2', null, null, null, '1479716667', '1479716667');
INSERT INTO `auth_item` VALUES ('/timer-counter/index', '2', null, null, null, '1479716667', '1479716667');
INSERT INTO `auth_item` VALUES ('/timer-counter/update', '2', null, null, null, '1479716667', '1479716667');
INSERT INTO `auth_item` VALUES ('/timer-counter/view', '2', null, null, null, '1479716667', '1479716667');
INSERT INTO `auth_item` VALUES ('/user/*', '2', null, null, null, '1468421689', '1468421689');
INSERT INTO `auth_item` VALUES ('/user/create', '2', null, null, null, '1468421689', '1468421689');
INSERT INTO `auth_item` VALUES ('/user/delete', '2', null, null, null, '1468421689', '1468421689');
INSERT INTO `auth_item` VALUES ('/user/galleryApi', '2', null, null, null, '1468421689', '1468421689');
INSERT INTO `auth_item` VALUES ('/user/index', '2', null, null, null, '1468421689', '1468421689');
INSERT INTO `auth_item` VALUES ('/user/update', '2', null, null, null, '1468421689', '1468421689');
INSERT INTO `auth_item` VALUES ('/user/view', '2', null, null, null, '1468421689', '1468421689');
INSERT INTO `auth_item` VALUES ('admin', '1', 'Administrator', null, null, '1468421733', '1533656982');
INSERT INTO `auth_item` VALUES ('User', '1', null, null, null, '1513907402', '1533656895');

-- ----------------------------
-- Table structure for auth_item_child
-- ----------------------------
DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_item_child
-- ----------------------------
INSERT INTO `auth_item_child` VALUES ('admin', '/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/assignment/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/assignment/assign');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/assignment/index');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/assignment/revoke');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/assignment/view');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/default/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/default/index');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/menu/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/menu/create');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/menu/delete');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/menu/index');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/menu/update');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/menu/view');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/permission/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/permission/assign');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/permission/create');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/permission/delete');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/permission/index');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/permission/remove');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/permission/update');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/permission/view');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/role/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/role/assign');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/role/create');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/role/delete');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/role/index');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/role/remove');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/role/update');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/role/view');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/route/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/route/assign');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/route/create');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/route/index');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/route/refresh');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/route/remove');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/rule/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/rule/create');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/rule/delete');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/rule/index');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/rule/update');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/rule/view');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/user/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/user/activate');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/user/change-password');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/user/delete');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/user/index');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/user/login');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/user/logout');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/user/request-password-reset');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/user/reset-password');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/user/signup');
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/user/view');
INSERT INTO `auth_item_child` VALUES ('admin', '/app/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/app/galleryApi');
INSERT INTO `auth_item_child` VALUES ('admin', '/banner/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/banner/create');
INSERT INTO `auth_item_child` VALUES ('admin', '/banner/delete');
INSERT INTO `auth_item_child` VALUES ('admin', '/banner/index');
INSERT INTO `auth_item_child` VALUES ('admin', '/banner/update');
INSERT INTO `auth_item_child` VALUES ('admin', '/banner/view');
INSERT INTO `auth_item_child` VALUES ('admin', '/country/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/country/create');
INSERT INTO `auth_item_child` VALUES ('admin', '/country/delete');
INSERT INTO `auth_item_child` VALUES ('admin', '/country/index');
INSERT INTO `auth_item_child` VALUES ('admin', '/country/update');
INSERT INTO `auth_item_child` VALUES ('admin', '/country/view');
INSERT INTO `auth_item_child` VALUES ('admin', '/debug/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/debug/default/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/debug/default/download-mail');
INSERT INTO `auth_item_child` VALUES ('admin', '/debug/default/index');
INSERT INTO `auth_item_child` VALUES ('admin', '/debug/default/toolbar');
INSERT INTO `auth_item_child` VALUES ('admin', '/debug/default/view');
INSERT INTO `auth_item_child` VALUES ('admin', '/distric/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/distric/create');
INSERT INTO `auth_item_child` VALUES ('admin', '/distric/delete');
INSERT INTO `auth_item_child` VALUES ('admin', '/distric/index');
INSERT INTO `auth_item_child` VALUES ('admin', '/distric/update');
INSERT INTO `auth_item_child` VALUES ('admin', '/distric/view');
INSERT INTO `auth_item_child` VALUES ('admin', '/gii/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/gii/default/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/gii/default/action');
INSERT INTO `auth_item_child` VALUES ('admin', '/gii/default/diff');
INSERT INTO `auth_item_child` VALUES ('admin', '/gii/default/index');
INSERT INTO `auth_item_child` VALUES ('admin', '/gii/default/preview');
INSERT INTO `auth_item_child` VALUES ('admin', '/gii/default/view');
INSERT INTO `auth_item_child` VALUES ('admin', '/menu/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/menu/create');
INSERT INTO `auth_item_child` VALUES ('admin', '/menu/delete');
INSERT INTO `auth_item_child` VALUES ('admin', '/menu/galleryApi');
INSERT INTO `auth_item_child` VALUES ('admin', '/menu/index');
INSERT INTO `auth_item_child` VALUES ('admin', '/menu/update');
INSERT INTO `auth_item_child` VALUES ('admin', '/menu/view');
INSERT INTO `auth_item_child` VALUES ('admin', '/mode/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/mode/create');
INSERT INTO `auth_item_child` VALUES ('admin', '/mode/delete');
INSERT INTO `auth_item_child` VALUES ('admin', '/mode/design');
INSERT INTO `auth_item_child` VALUES ('admin', '/mode/index');
INSERT INTO `auth_item_child` VALUES ('admin', '/mode/update');
INSERT INTO `auth_item_child` VALUES ('admin', '/mode/view');
INSERT INTO `auth_item_child` VALUES ('admin', '/module-status/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/module-status/create');
INSERT INTO `auth_item_child` VALUES ('admin', '/module-status/delete');
INSERT INTO `auth_item_child` VALUES ('admin', '/module-status/index');
INSERT INTO `auth_item_child` VALUES ('admin', '/module-status/update');
INSERT INTO `auth_item_child` VALUES ('admin', '/module-status/view');
INSERT INTO `auth_item_child` VALUES ('admin', '/modules/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/modules/create');
INSERT INTO `auth_item_child` VALUES ('admin', '/modules/delete');
INSERT INTO `auth_item_child` VALUES ('admin', '/modules/index');
INSERT INTO `auth_item_child` VALUES ('admin', '/modules/update');
INSERT INTO `auth_item_child` VALUES ('admin', '/modules/view');
INSERT INTO `auth_item_child` VALUES ('admin', '/movie/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/output-mode/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/output-mode/create');
INSERT INTO `auth_item_child` VALUES ('admin', '/output-mode/delete');
INSERT INTO `auth_item_child` VALUES ('admin', '/output-mode/index');
INSERT INTO `auth_item_child` VALUES ('admin', '/output-mode/update');
INSERT INTO `auth_item_child` VALUES ('admin', '/output-mode/view');
INSERT INTO `auth_item_child` VALUES ('admin', '/param-config/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/param-config/create');
INSERT INTO `auth_item_child` VALUES ('admin', '/param-config/delete');
INSERT INTO `auth_item_child` VALUES ('admin', '/param-config/index');
INSERT INTO `auth_item_child` VALUES ('admin', '/param-config/update');
INSERT INTO `auth_item_child` VALUES ('admin', '/param-config/view');
INSERT INTO `auth_item_child` VALUES ('admin', '/provincial/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/provincial/create');
INSERT INTO `auth_item_child` VALUES ('admin', '/provincial/delete');
INSERT INTO `auth_item_child` VALUES ('admin', '/provincial/index');
INSERT INTO `auth_item_child` VALUES ('admin', '/provincial/update');
INSERT INTO `auth_item_child` VALUES ('admin', '/provincial/view');
INSERT INTO `auth_item_child` VALUES ('admin', '/reset-password/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/reset-password/index');
INSERT INTO `auth_item_child` VALUES ('admin', '/runtime-statistics/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/runtime-statistics/create');
INSERT INTO `auth_item_child` VALUES ('admin', '/runtime-statistics/delete');
INSERT INTO `auth_item_child` VALUES ('admin', '/runtime-statistics/index');
INSERT INTO `auth_item_child` VALUES ('admin', '/runtime-statistics/update');
INSERT INTO `auth_item_child` VALUES ('admin', '/runtime-statistics/view');
INSERT INTO `auth_item_child` VALUES ('admin', '/runtime/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/runtime/create');
INSERT INTO `auth_item_child` VALUES ('admin', '/runtime/delete');
INSERT INTO `auth_item_child` VALUES ('admin', '/runtime/index');
INSERT INTO `auth_item_child` VALUES ('admin', '/runtime/update');
INSERT INTO `auth_item_child` VALUES ('admin', '/runtime/view');
INSERT INTO `auth_item_child` VALUES ('admin', '/sensor/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/sensor/create');
INSERT INTO `auth_item_child` VALUES ('admin', '/sensor/delete');
INSERT INTO `auth_item_child` VALUES ('admin', '/sensor/index');
INSERT INTO `auth_item_child` VALUES ('admin', '/sensor/update');
INSERT INTO `auth_item_child` VALUES ('admin', '/sensor/view');
INSERT INTO `auth_item_child` VALUES ('admin', '/site/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/site/captcha');
INSERT INTO `auth_item_child` VALUES ('admin', '/site/error');
INSERT INTO `auth_item_child` VALUES ('admin', '/site/index');
INSERT INTO `auth_item_child` VALUES ('admin', '/site/login');
INSERT INTO `auth_item_child` VALUES ('admin', '/site/logout');
INSERT INTO `auth_item_child` VALUES ('admin', '/socket/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/socket/index');
INSERT INTO `auth_item_child` VALUES ('admin', '/timer-counter/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/timer-counter/create');
INSERT INTO `auth_item_child` VALUES ('admin', '/timer-counter/delete');
INSERT INTO `auth_item_child` VALUES ('admin', '/timer-counter/index');
INSERT INTO `auth_item_child` VALUES ('admin', '/timer-counter/update');
INSERT INTO `auth_item_child` VALUES ('admin', '/timer-counter/view');
INSERT INTO `auth_item_child` VALUES ('admin', '/user/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/user/create');
INSERT INTO `auth_item_child` VALUES ('admin', '/user/delete');
INSERT INTO `auth_item_child` VALUES ('admin', '/user/galleryApi');
INSERT INTO `auth_item_child` VALUES ('admin', '/user/index');
INSERT INTO `auth_item_child` VALUES ('admin', '/user/update');
INSERT INTO `auth_item_child` VALUES ('admin', '/user/view');
INSERT INTO `auth_item_child` VALUES ('User', '/pets/*');
INSERT INTO `auth_item_child` VALUES ('User', '/pets/create');
INSERT INTO `auth_item_child` VALUES ('User', '/pets/delete');
INSERT INTO `auth_item_child` VALUES ('User', '/pets/index');
INSERT INTO `auth_item_child` VALUES ('User', '/pets/update');
INSERT INTO `auth_item_child` VALUES ('User', '/pets/view');

-- ----------------------------
-- Table structure for auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_rule
-- ----------------------------

-- ----------------------------
-- Table structure for contact
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `msisdn` varchar(20) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `created_time` datetime(6) DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '1- da xem, 0 chua xem',
  `updated_time` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contact
-- ----------------------------
INSERT INTO `contact` VALUES ('1', 'khanh', '988781354', 'abc', '2017-12-15 23:35:58.000000', '1', '2017-12-15 23:36:42.000000');
INSERT INTO `contact` VALUES ('2', 'Ngyen quoc Khanh', '1234567', 'DDOngs phim', '2017-12-30 02:55:03.000000', null, '2017-12-30 02:55:03.000000');
INSERT INTO `contact` VALUES ('3', 'khanhnq16', '9843984093', 'test message', '2017-12-30 02:56:27.000000', null, '2017-12-30 02:56:27.000000');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` text,
  `icon` tinytext,
  `type` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', 'Account manager', null, null, '5', null, 'icon-user-following', null);
INSERT INTO `menu` VALUES ('2', 'Account', '1', '/admin/user/index', '1', null, 'icon-users', null);
INSERT INTO `menu` VALUES ('3', 'Menu', '1', '/menu/index', '2', null, 'icon-list', null);
INSERT INTO `menu` VALUES ('20', 'Loại Pet', null, '/pettype/index', '1', null, '', null);
INSERT INTO `menu` VALUES ('21', 'Thú Cưng', null, '/pets/index', '2', null, 'icon-trophy', null);
INSERT INTO `menu` VALUES ('26', 'Quyền', '1', '/admin/role/index', null, null, null, null);
INSERT INTO `menu` VALUES ('27', 'Cấp quyền', '1', '/admin/assignment/index', null, null, '', null);

-- ----------------------------
-- Table structure for pets
-- ----------------------------
DROP TABLE IF EXISTS `pets`;
CREATE TABLE `pets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` bigint(20) DEFAULT NULL,
  `weight` double(5,2) DEFAULT NULL,
  `age` int(2) DEFAULT NULL,
  `haircolor` varchar(255) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pets
-- ----------------------------
INSERT INTO `pets` VALUES ('2', 'Miu', '2', '1.00', '2', 'trắng', 'dsdsd', '1', '1');
INSERT INTO `pets` VALUES ('3', 'bin', '3', '2.00', '2', 'trắng', 'dd', '1', '1');
INSERT INTO `pets` VALUES ('4', 'May_miuuuuu', '2', '4.00', '4', 'đen', 'ddd', '3', '3');
INSERT INTO `pets` VALUES ('5', 'Gau Gau', '3', '10.00', '5', 'nâu, xoăn', 'hay sủa', '2', '2');

-- ----------------------------
-- Table structure for pettype
-- ----------------------------
DROP TABLE IF EXISTS `pettype`;
CREATE TABLE `pettype` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pettype
-- ----------------------------
INSERT INTO `pettype` VALUES ('2', 'Mèo');
INSERT INTO `pettype` VALUES ('3', 'Chó');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `is_first_login` int(1) DEFAULT NULL,
  `last_time_login` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'GVlxMbXE3GiOGQv7E1dWOMNO0pYzgiMf', '$2y$13$KfHZzpI6zbmajOTvcmd5p.U/r3GbBOTl0vbHPTbAFCOzI3NzFXTK.', 'fanebVvAhIvTcuRh3paFt-facoSsPiLS_1513091892', 'admin@gmail.com', '1', '1467446155', '1513091892', '0', '2017-12-12 22:18:11.000000');
INSERT INTO `user` VALUES ('2', 'John', 'K8lrOS1dccJDuEmC4uPN44RRnwN3SNr5', '$2y$13$m6f8EI4szq56sj2NP8c/6.nLHe2rFXBJiK0.SjzcDEZK2pNT3yGTi', '6xPLHGZfZEPUcORiy9OdI3lF0L0LOxcz_1533658699', 'john@doe.com', '1', '1533657074', '1533658699', '0', '2018-08-07 23:18:18.000000');
INSERT INTO `user` VALUES ('3', 'May', 'xuL5_UblgJC9SCPqWhFoCP7UPzJH_LC-', '$2y$13$rctTWtdNzozGOV250vH3/e6fpRTzEeTvHuUrE9MP3pzztR21r8eda', 'bxPiBMi4L0Zg_a39WF7y-Ecj38qtVm58_1533657268', 'may@doe.com', '1', '1533657111', '1533657268', '0', '2018-08-07 22:54:27.000000');

-- ----------------------------
-- Table structure for user_locked
-- ----------------------------
DROP TABLE IF EXISTS `user_locked`;
CREATE TABLE `user_locked` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_locked
-- ----------------------------

-- ----------------------------
-- Table structure for user_login_failed
-- ----------------------------
DROP TABLE IF EXISTS `user_login_failed`;
CREATE TABLE `user_login_failed` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_login_failed
-- ----------------------------
INSERT INTO `user_login_failed` VALUES ('1', 'nkhanhquoc', null, '127.0.0.1', '0000-00-00 00:00:00.000000');
INSERT INTO `user_login_failed` VALUES ('2', 'nkhanhquoc', null, '127.0.0.1', '0000-00-00 00:00:00.000000');

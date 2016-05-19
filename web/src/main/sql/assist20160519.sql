/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : assist

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2016-05-19 19:23:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for assist_ship
-- ----------------------------
DROP TABLE IF EXISTS `assist_ship`;
CREATE TABLE `assist_ship` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sno` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '1 奖学金 2 助学金',
  `level` int(11) DEFAULT NULL COMMENT '1 一等 2 二等 3 三等',
  `reg_date` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `audit_state` int(11) DEFAULT '0' COMMENT '0 待审核 1审核通过 2 驳回 ',
  `grant_state` int(11) DEFAULT '0' COMMENT '0 未发放 1 已发放',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of assist_ship
-- ----------------------------
INSERT INTO `assist_ship` VALUES ('1', '20120102001', '1', '1', '2015-11-12', '我真的需要这笔钱', '0', '0');
INSERT INTO `assist_ship` VALUES ('2', '20120102002', '2', '2', '2015-11-13', '我真的很穷', '0', '0');
INSERT INTO `assist_ship` VALUES ('3', '20120102003', '1', '1', '2015-11-13', 'qwrw', '2', '0');
INSERT INTO `assist_ship` VALUES ('4', '20120102004', '1', '2', '2015-11-13', 'sdfas', '1', '0');
INSERT INTO `assist_ship` VALUES ('5', '20120102005', '2', '3', '2015-11-13', 'few', '0', '0');
INSERT INTO `assist_ship` VALUES ('6', '20120102006', '2', '2', '2015-11-13', 'feas', '0', '0');
INSERT INTO `assist_ship` VALUES ('7', '20120102007', '1', '1', '2015-11-13', 'dsae', '1', '1');
INSERT INTO `assist_ship` VALUES ('8', '20120102008', '2', '2', '2015-11-13', '23323', '0', '0');
INSERT INTO `assist_ship` VALUES ('9', '20120102009', '1', '1', '2015-11-13', 'dsf', '1', '0');
INSERT INTO `assist_ship` VALUES ('10', '20120102010', '2', '2', '2015-11-13', 'e', '0', '0');
INSERT INTO `assist_ship` VALUES ('11', '20120102011', '1', '1', '2015-11-13', 'da', '1', '0');
INSERT INTO `assist_ship` VALUES ('12', '20120102012', '2', '2', '2015-11-13', 'fe', '0', '1');
INSERT INTO `assist_ship` VALUES ('13', '20120102013', '1', '1', '2015-11-13', '23', '1', '1');

-- ----------------------------
-- Table structure for assist_student
-- ----------------------------
DROP TABLE IF EXISTS `assist_student`;
CREATE TABLE `assist_student` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sno` varchar(255) NOT NULL,
  `classname` varchar(255) DEFAULT NULL,
  `ie` varchar(255) DEFAULT NULL,
  `me` varchar(255) DEFAULT NULL,
  `obs` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of assist_student
-- ----------------------------
INSERT INTO `assist_student` VALUES ('78', '张三1', '20120102001', '计算机卓越1一班', '80', '70', '100');
INSERT INTO `assist_student` VALUES ('79', '张三2', '20120102002', '计算机卓越1一班', '81', '71', '101');
INSERT INTO `assist_student` VALUES ('80', '张三3', '20120102003', '计算机卓越1一班', '82', '72', '102');
INSERT INTO `assist_student` VALUES ('81', '张三4', '20120102004', '计算机卓越1一班', '83', '73', '103');
INSERT INTO `assist_student` VALUES ('82', '张三5', '20120102005', '计算机卓越1一班', '84', '74', '104');
INSERT INTO `assist_student` VALUES ('83', '张三6', '20120102006', '计算机卓越1一班', '85', '75', '105');
INSERT INTO `assist_student` VALUES ('84', '张三7', '20120102007', '计算机卓越1一班', '86', '76', '106');
INSERT INTO `assist_student` VALUES ('85', '张三8', '20120102008', '计算机卓越1一班', '87', '77', '107');
INSERT INTO `assist_student` VALUES ('86', '张三9', '20120102009', '计算机卓越1一班', '88', '78', '108');
INSERT INTO `assist_student` VALUES ('87', '张三10', '20120102010', '计算机卓越1一班', '89', '79', '109');
INSERT INTO `assist_student` VALUES ('88', '张三11', '20120102011', '计算机卓越1一班', '90', '80', '110');
INSERT INTO `assist_student` VALUES ('89', '张三12', '20120102012', '计算机卓越1一班', '91', '81', '111');
INSERT INTO `assist_student` VALUES ('90', '张三13', '20120102013', '计算机卓越1一班', '92', '82', '112');
INSERT INTO `assist_student` VALUES ('91', '张三14', '20120102014', '计算机卓越1一班', '93', '83', '113');
INSERT INTO `assist_student` VALUES ('92', '张三15', '20120102015', '计算机卓越1一班', '94', '84', '114');
INSERT INTO `assist_student` VALUES ('93', '张三16', '20120102016', '计算机卓越1一班', '95', '85', '115');
INSERT INTO `assist_student` VALUES ('94', '张三17', '20120102017', '计算机卓越1一班', '96', '86', '116');
INSERT INTO `assist_student` VALUES ('95', '张三18', '20120102018', '计算机卓越1一班', '97', '87', '117');
INSERT INTO `assist_student` VALUES ('96', '张三19', '20120102019', '计算机卓越1一班', '98', '88', '118');
INSERT INTO `assist_student` VALUES ('97', '张三20', '20120102020', '计算机卓越1一班', '99', '89', '119');
INSERT INTO `assist_student` VALUES ('98', '张三21', '20120102021', '计算机卓越1一班', '100', '90', '120');
INSERT INTO `assist_student` VALUES ('99', '张三22', '20120102022', '计算机卓越1一班', '101', '91', '121');
INSERT INTO `assist_student` VALUES ('100', '张三23', '20120102023', '计算机卓越1一班', '102', '92', '122');
INSERT INTO `assist_student` VALUES ('101', '张三24', '20120102024', '计算机卓越1一班', '103', '93', '123');
INSERT INTO `assist_student` VALUES ('102', '张三25', '20120102025', '计算机卓越1一班', '104', '94', '124');
INSERT INTO `assist_student` VALUES ('103', '张三26', '20120102026', '计算机卓越1一班', '105', '95', '125');
INSERT INTO `assist_student` VALUES ('104', '张三27', '20120102027', '计算机卓越1一班', '106', '96', '126');
INSERT INTO `assist_student` VALUES ('105', '张三28', '20120102028', '计算机卓越1一班', '107', '97', '127');
INSERT INTO `assist_student` VALUES ('106', '张三29', '20120102029', '计算机卓越1一班', '108', '98', '128');
INSERT INTO `assist_student` VALUES ('107', '张三30', '20120102030', '计算机卓越1一班', '109', '99', '129');
INSERT INTO `assist_student` VALUES ('108', '张三31', '20120102031', '计算机卓越1一班', '110', '100', '130');
INSERT INTO `assist_student` VALUES ('109', '张三32', '20120102032', '计算机卓越1一班', '111', '101', '131');
INSERT INTO `assist_student` VALUES ('110', '张三33', '20120102033', '计算机卓越1一班', '112', '102', '132');
INSERT INTO `assist_student` VALUES ('111', '张三34', '20120102034', '计算机卓越1一班', '113', '103', '133');
INSERT INTO `assist_student` VALUES ('112', '张三35', '20120102035', '计算机卓越1一班', '114', '104', '134');
INSERT INTO `assist_student` VALUES ('113', '张三36', '20120102036', '计算机卓越1一班', '115', '105', '135');

-- ----------------------------
-- Table structure for assist_teacher
-- ----------------------------
DROP TABLE IF EXISTS `assist_teacher`;
CREATE TABLE `assist_teacher` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `workno` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of assist_teacher
-- ----------------------------
INSERT INTO `assist_teacher` VALUES ('1', '20160517', '张老师');
INSERT INTO `assist_teacher` VALUES ('2', '20150519', '李老师2');
INSERT INTO `assist_teacher` VALUES ('3', '20150119', '小老师');
INSERT INTO `assist_teacher` VALUES ('4', '20157890', '牛老师');
INSERT INTO `assist_teacher` VALUES ('5', '20160101', '倪老师');
INSERT INTO `assist_teacher` VALUES ('6', '20160102', '肖老师');

-- ----------------------------
-- Table structure for maintain_icon
-- ----------------------------
DROP TABLE IF EXISTS `maintain_icon`;
CREATE TABLE `maintain_icon` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `identity` varchar(100) DEFAULT NULL,
  `css_class` varchar(100) DEFAULT NULL,
  `img_src` varchar(200) DEFAULT NULL,
  `width` smallint(6) DEFAULT NULL,
  `height` smallint(6) DEFAULT NULL,
  `sprite_src` varchar(200) DEFAULT NULL,
  `left` smallint(6) DEFAULT NULL,
  `top` smallint(6) DEFAULT NULL,
  `style` varchar(100) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_maintain_icon_identity` (`identity`)
) ENGINE=InnoDB AUTO_INCREMENT=1516 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of maintain_icon
-- ----------------------------
INSERT INTO `maintain_icon` VALUES ('1', 'icon-adjust', 'icon-adjust', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('2', 'icon-anchor', 'icon-anchor', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('3', 'icon-archive', 'icon-archive', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('4', 'icon-asterisk', 'icon-asterisk', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('5', 'icon-ban-circle', 'icon-ban-circle', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('6', 'icon-bar-chart', 'icon-bar-chart', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('7', 'icon-barcode', 'icon-barcode', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('8', 'icon-beaker', 'icon-beaker', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('9', 'icon-beer', 'icon-beer', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('10', 'icon-bell', 'icon-bell', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('11', 'icon-bell-alt', 'icon-bell-alt', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('12', 'icon-bolt', 'icon-bolt', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('13', 'icon-book', 'icon-book', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('14', 'icon-bookmark', 'icon-bookmark', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('15', 'icon-bookmark-empty', 'icon-bookmark-empty', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('16', 'icon-briefcase', 'icon-briefcase', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('17', 'icon-bug', 'icon-bug', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('18', 'icon-building', 'icon-building', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('19', 'icon-bullhorn', 'icon-bullhorn', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('20', 'icon-bullseye', 'icon-bullseye', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('21', 'icon-calendar', 'icon-calendar', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('22', 'icon-calendar-empty', 'icon-calendar-empty', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('23', 'icon-camera', 'icon-camera', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('24', 'icon-camera-retro', 'icon-camera-retro', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('25', 'icon-certificate', 'icon-certificate', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('26', 'icon-check', 'icon-check', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('27', 'icon-check-empty', 'icon-check-empty', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('28', 'icon-check-minus', 'icon-check-minus', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('29', 'icon-check-sign', 'icon-check-sign', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('30', 'icon-circle', 'icon-circle', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('31', 'icon-circle-blank', 'icon-circle-blank', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('32', 'icon-cloud', 'icon-cloud', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('33', 'icon-cloud-download', 'icon-cloud-download', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('34', 'icon-cloud-upload', 'icon-cloud-upload', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('35', 'icon-code', 'icon-code', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('36', 'icon-code-fork', 'icon-code-fork', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('37', 'icon-coffee', 'icon-coffee', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('38', 'icon-cog', 'icon-cog', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('39', 'icon-cogs', 'icon-cogs', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('40', 'icon-collapse', 'icon-collapse', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('41', 'icon-collapse-alt', 'icon-collapse-alt', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('42', 'icon-collapse-top', 'icon-collapse-top', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('43', 'icon-comment', 'icon-comment', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('44', 'icon-comment-alt', 'icon-comment-alt', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('45', 'icon-comments', 'icon-comments', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('46', 'icon-comments-alt', 'icon-comments-alt', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('47', 'icon-compass', 'icon-compass', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('48', 'icon-credit-card', 'icon-credit-card', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('49', 'icon-crop', 'icon-crop', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('50', 'icon-dashboard', 'icon-dashboard', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('51', 'icon-desktop', 'icon-desktop', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('52', 'icon-download', 'icon-download', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('53', 'icon-download-alt', 'icon-download-alt', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('54', 'icon-edit', 'icon-edit', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('55', 'icon-edit-sign', 'icon-edit-sign', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('56', 'icon-ellipsis-horizontal', 'icon-ellipsis-horizontal', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('57', 'icon-ellipsis-vertical', 'icon-ellipsis-vertical', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('58', 'icon-envelope', 'icon-envelope', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('59', 'icon-envelope-alt', 'icon-envelope-alt', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('60', 'icon-eraser', 'icon-eraser', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('61', 'icon-exchange', 'icon-exchange', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('62', 'icon-exclamation', 'icon-exclamation', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('63', 'icon-exclamation-sign', 'icon-exclamation-sign', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('64', 'icon-expand', 'icon-expand', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('65', 'icon-expand-alt', 'icon-expand-alt', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('66', 'icon-external-link', 'icon-external-link', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('67', 'icon-external-link-sign', 'icon-external-link-sign', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('68', 'icon-eye-close', 'icon-eye-close', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('69', 'icon-eye-open', 'icon-eye-open', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('70', 'icon-facetime-video', 'icon-facetime-video', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('71', 'icon-female', 'icon-female', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('72', 'icon-fighter-jet', 'icon-fighter-jet', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('73', 'icon-film', 'icon-film', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('74', 'icon-filter', 'icon-filter', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('75', 'icon-fire', 'icon-fire', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('76', 'icon-fire-extinguisher', 'icon-fire-extinguisher', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('77', 'icon-flag', 'icon-flag', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('78', 'icon-flag-alt', 'icon-flag-alt', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('79', 'icon-flag-checkered', 'icon-flag-checkered', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('80', 'icon-folder-close', 'icon-folder-close', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('81', 'icon-folder-close-alt', 'icon-folder-close-alt', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('82', 'icon-folder-open', 'icon-folder-open', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('83', 'icon-folder-open-alt', 'icon-folder-open-alt', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('84', 'icon-food', 'icon-food', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('85', 'icon-frown', 'icon-frown', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('86', 'icon-gamepad', 'icon-gamepad', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('87', 'icon-gift', 'icon-gift', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('88', 'icon-glass', 'icon-glass', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('89', 'icon-globe', 'icon-globe', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('90', 'icon-group', 'icon-group', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('91', 'icon-hdd', 'icon-hdd', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('92', 'icon-headphones', 'icon-headphones', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('93', 'icon-heart', 'icon-heart', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('94', 'icon-heart-empty', 'icon-heart-empty', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('95', 'icon-home', 'icon-home', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('96', 'icon-inbox', 'icon-inbox', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('97', 'icon-info', 'icon-info', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('98', 'icon-info-sign', 'icon-info-sign', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('99', 'icon-key', 'icon-key', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('100', 'icon-keyboard', 'icon-keyboard', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('101', 'icon-laptop', 'icon-laptop', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('102', 'icon-leaf', 'icon-leaf', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('103', 'icon-legal', 'icon-legal', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('104', 'icon-lemon', 'icon-lemon', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('105', 'icon-level-down', 'icon-level-down', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('106', 'icon-level-up', 'icon-level-up', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('107', 'icon-lightbulb', 'icon-lightbulb', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('108', 'icon-location-arrow', 'icon-location-arrow', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('109', 'icon-lock', 'icon-lock', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('110', 'icon-magic', 'icon-magic', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('111', 'icon-magnet', 'icon-magnet', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('112', 'icon-mail-forward', 'icon-mail-forward', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('113', 'icon-mail-reply', 'icon-mail-reply', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('114', 'icon-mail-reply-all', 'icon-mail-reply-all', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('115', 'icon-male', 'icon-male', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('116', 'icon-map-marker', 'icon-map-marker', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('117', 'icon-meh', 'icon-meh', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('118', 'icon-microphone', 'icon-microphone', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('119', 'icon-microphone-off', 'icon-microphone-off', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('120', 'icon-minus', 'icon-minus', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('121', 'icon-minus-sign', 'icon-minus-sign', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('122', 'icon-minus-sign-alt', 'icon-minus-sign-alt', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('123', 'icon-mobile-phone', 'icon-mobile-phone', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('124', 'icon-money', 'icon-money', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('125', 'icon-moon', 'icon-moon', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('126', 'icon-move', 'icon-move', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('127', 'icon-music', 'icon-music', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('128', 'icon-off', 'icon-off', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('129', 'icon-ok', 'icon-ok', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('130', 'icon-ok-circle', 'icon-ok-circle', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('131', 'icon-ok-sign', 'icon-ok-sign', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('132', 'icon-pencil', 'icon-pencil', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('133', 'icon-phone', 'icon-phone', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('134', 'icon-phone-sign', 'icon-phone-sign', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('135', 'icon-picture', 'icon-picture', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('136', 'icon-plane', 'icon-plane', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('137', 'icon-plus', 'icon-plus', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('138', 'icon-plus-sign', 'icon-plus-sign', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('139', 'icon-plus-sign-alt', 'icon-plus-sign-alt', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('140', 'icon-power-off', 'icon-power-off', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('141', 'icon-print', 'icon-print', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('142', 'icon-pushpin', 'icon-pushpin', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('143', 'icon-puzzle-piece', 'icon-puzzle-piece', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('144', 'icon-qrcode', 'icon-qrcode', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('145', 'icon-question', 'icon-question', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('146', 'icon-question-sign', 'icon-question-sign', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('147', 'icon-quote-left', 'icon-quote-left', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('148', 'icon-quote-right', 'icon-quote-right', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('149', 'icon-random', 'icon-random', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('150', 'icon-refresh', 'icon-refresh', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('151', 'icon-remove', 'icon-remove', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('152', 'icon-remove-circle', 'icon-remove-circle', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('153', 'icon-remove-sign', 'icon-remove-sign', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('154', 'icon-reorder', 'icon-reorder', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('155', 'icon-reply', 'icon-reply', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('156', 'icon-reply-all', 'icon-reply-all', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('157', 'icon-resize-horizontal', 'icon-resize-horizontal', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('158', 'icon-resize-vertical', 'icon-resize-vertical', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('159', 'icon-retweet', 'icon-retweet', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('160', 'icon-road', 'icon-road', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('161', 'icon-rocket', 'icon-rocket', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('162', 'icon-rss', 'icon-rss', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('163', 'icon-rss-sign', 'icon-rss-sign', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('164', 'icon-screenshot', 'icon-screenshot', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('165', 'icon-search', 'icon-search', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('166', 'icon-share', 'icon-share', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('167', 'icon-share-alt', 'icon-share-alt', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('168', 'icon-share-sign', 'icon-share-sign', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('169', 'icon-shield', 'icon-shield', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('170', 'icon-shopping-cart', 'icon-shopping-cart', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('171', 'icon-sign-blank', 'icon-sign-blank', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('172', 'icon-signal', 'icon-signal', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('173', 'icon-signin', 'icon-signin', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('174', 'icon-signout', 'icon-signout', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('175', 'icon-sitemap', 'icon-sitemap', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('176', 'icon-smile', 'icon-smile', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('177', 'icon-sort', 'icon-sort', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('178', 'icon-sort-by-alphabet', 'icon-sort-by-alphabet', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('179', 'icon-sort-by-alphabet-alt', 'icon-sort-by-alphabet-alt', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('180', 'icon-sort-by-attributes', 'icon-sort-by-attributes', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('181', 'icon-sort-by-attributes-alt', 'icon-sort-by-attributes-alt', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('182', 'icon-sort-by-order', 'icon-sort-by-order', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('183', 'icon-sort-by-order-alt', 'icon-sort-by-order-alt', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('184', 'icon-sort-down', 'icon-sort-down', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('185', 'icon-sort-up', 'icon-sort-up', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('186', 'icon-spinner', 'icon-spinner', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('187', 'icon-star', 'icon-star', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('188', 'icon-star-empty', 'icon-star-empty', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('189', 'icon-star-half', 'icon-star-half', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('190', 'icon-star-half-empty', 'icon-star-half-empty', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('191', 'icon-star-half-full', 'icon-star-half-full', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('192', 'icon-subscript', 'icon-subscript', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('193', 'icon-suitcase', 'icon-suitcase', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('194', 'icon-sun', 'icon-sun', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('195', 'icon-superscript', 'icon-superscript', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('196', 'icon-tablet', 'icon-tablet', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('197', 'icon-tag', 'icon-tag', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('198', 'icon-tags', 'icon-tags', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('199', 'icon-tasks', 'icon-tasks', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('200', 'icon-terminal', 'icon-terminal', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('201', 'icon-thumbs-down', 'icon-thumbs-down', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('202', 'icon-thumbs-down-alt', 'icon-thumbs-down-alt', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('203', 'icon-thumbs-up', 'icon-thumbs-up', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('204', 'icon-thumbs-up-alt', 'icon-thumbs-up-alt', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('205', 'icon-ticket', 'icon-ticket', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('206', 'icon-time', 'icon-time', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('207', 'icon-tint', 'icon-tint', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('208', 'icon-trash', 'icon-trash', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('209', 'icon-trophy', 'icon-trophy', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('210', 'icon-truck', 'icon-truck', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('211', 'icon-umbrella', 'icon-umbrella', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('212', 'icon-unchecked', 'icon-unchecked', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('213', 'icon-unlock', 'icon-unlock', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('214', 'icon-unlock-alt', 'icon-unlock-alt', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('215', 'icon-upload', 'icon-upload', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('216', 'icon-upload-alt', 'icon-upload-alt', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('217', 'icon-user', 'icon-user', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('218', 'icon-volume-down', 'icon-volume-down', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('219', 'icon-volume-off', 'icon-volume-off', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('220', 'icon-volume-up', 'icon-volume-up', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('221', 'icon-warning-sign', 'icon-warning-sign', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('222', 'icon-wrench', 'icon-wrench', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('223', 'icon-zoom-in', 'icon-zoom-in', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('224', 'icon-zoom-out', 'icon-zoom-out', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('225', 'icon-bitcoin', 'icon-bitcoin', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('226', 'icon-btc', 'icon-btc', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('227', 'icon-cny', 'icon-cny', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('228', 'icon-dollar', 'icon-dollar', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('229', 'icon-eur', 'icon-eur', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('230', 'icon-euro', 'icon-euro', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('231', 'icon-gbp', 'icon-gbp', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('232', 'icon-inr', 'icon-inr', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('233', 'icon-jpy', 'icon-jpy', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('234', 'icon-krw', 'icon-krw', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('235', 'icon-renminbi', 'icon-renminbi', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('236', 'icon-rupee', 'icon-rupee', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('237', 'icon-usd', 'icon-usd', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('238', 'icon-won', 'icon-won', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('239', 'icon-yen', 'icon-yen', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('240', 'icon-align-center', 'icon-align-center', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('241', 'icon-align-justify', 'icon-align-justify', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('242', 'icon-align-left', 'icon-align-left', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('243', 'icon-align-right', 'icon-align-right', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('244', 'icon-bold', 'icon-bold', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('245', 'icon-columns', 'icon-columns', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('246', 'icon-copy', 'icon-copy', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('247', 'icon-cut', 'icon-cut', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('249', 'icon-file', 'icon-file', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('250', 'icon-file-alt', 'icon-file-alt', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('251', 'icon-file-text', 'icon-file-text', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('252', 'icon-file-text-alt', 'icon-file-text-alt', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('253', 'icon-font', 'icon-font', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('254', 'icon-indent-left', 'icon-indent-left', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('255', 'icon-indent-right', 'icon-indent-right', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('256', 'icon-italic', 'icon-italic', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('257', 'icon-link', 'icon-link', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('258', 'icon-list', 'icon-list', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('259', 'icon-list-alt', 'icon-list-alt', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('260', 'icon-list-ol', 'icon-list-ol', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('261', 'icon-list-ul', 'icon-list-ul', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('262', 'icon-paper-clip', 'icon-paper-clip', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('263', 'icon-paperclip', 'icon-paperclip', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('264', 'icon-paste', 'icon-paste', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('265', 'icon-repeat', 'icon-repeat', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('266', 'icon-rotate-left', 'icon-rotate-left', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('267', 'icon-rotate-right', 'icon-rotate-right', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('268', 'icon-save', 'icon-save', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('269', 'icon-strikethrough', 'icon-strikethrough', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('270', 'icon-table', 'icon-table', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('271', 'icon-text-height', 'icon-text-height', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('272', 'icon-text-width', 'icon-text-width', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('273', 'icon-th', 'icon-th', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('274', 'icon-th-large', 'icon-th-large', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('275', 'icon-th-list', 'icon-th-list', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('276', 'icon-underline', 'icon-underline', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('277', 'icon-undo', 'icon-undo', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('278', 'icon-unlink', 'icon-unlink', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('279', 'icon-angle-down', 'icon-angle-down', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('280', 'icon-angle-left', 'icon-angle-left', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('281', 'icon-angle-right', 'icon-angle-right', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('282', 'icon-angle-up', 'icon-angle-up', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('283', 'icon-arrow-down', 'icon-arrow-down', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('284', 'icon-arrow-left', 'icon-arrow-left', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('285', 'icon-arrow-right', 'icon-arrow-right', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('286', 'icon-arrow-up', 'icon-arrow-up', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('287', 'icon-caret-down', 'icon-caret-down', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('288', 'icon-caret-left', 'icon-caret-left', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('289', 'icon-caret-right', 'icon-caret-right', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('290', 'icon-caret-up', 'icon-caret-up', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('291', 'icon-chevron-down', 'icon-chevron-down', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('292', 'icon-chevron-left', 'icon-chevron-left', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('293', 'icon-chevron-right', 'icon-chevron-right', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('294', 'icon-chevron-sign-down', 'icon-chevron-sign-down', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('295', 'icon-chevron-sign-left', 'icon-chevron-sign-left', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('296', 'icon-chevron-sign-right', 'icon-chevron-sign-right', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('297', 'icon-chevron-sign-up', 'icon-chevron-sign-up', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('298', 'icon-chevron-up', 'icon-chevron-up', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('299', 'icon-circle-arrow-down', 'icon-circle-arrow-down', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('300', 'icon-circle-arrow-left', 'icon-circle-arrow-left', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('301', 'icon-circle-arrow-right', 'icon-circle-arrow-right', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('302', 'icon-circle-arrow-up', 'icon-circle-arrow-up', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('303', 'icon-double-angle-down', 'icon-double-angle-down', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('304', 'icon-double-angle-left', 'icon-double-angle-left', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('305', 'icon-double-angle-right', 'icon-double-angle-right', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('306', 'icon-double-angle-up', 'icon-double-angle-up', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('307', 'icon-hand-down', 'icon-hand-down', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('308', 'icon-hand-left', 'icon-hand-left', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('309', 'icon-hand-right', 'icon-hand-right', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('310', 'icon-hand-up', 'icon-hand-up', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('311', 'icon-long-arrow-down', 'icon-long-arrow-down', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('312', 'icon-long-arrow-left', 'icon-long-arrow-left', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('313', 'icon-long-arrow-right', 'icon-long-arrow-right', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('314', 'icon-long-arrow-up', 'icon-long-arrow-up', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('315', 'icon-backward', 'icon-backward', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('316', 'icon-eject', 'icon-eject', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('317', 'icon-fast-backward', 'icon-fast-backward', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('318', 'icon-fast-forward', 'icon-fast-forward', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('319', 'icon-forward', 'icon-forward', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('320', 'icon-fullscreen', 'icon-fullscreen', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('321', 'icon-pause', 'icon-pause', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('322', 'icon-play', 'icon-play', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('323', 'icon-play-circle', 'icon-play-circle', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('324', 'icon-play-sign', 'icon-play-sign', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('325', 'icon-resize-full', 'icon-resize-full', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('326', 'icon-resize-small', 'icon-resize-small', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('327', 'icon-step-backward', 'icon-step-backward', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('328', 'icon-step-forward', 'icon-step-forward', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('329', 'icon-stop', 'icon-stop', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('330', 'icon-youtube-play', 'icon-youtube-play', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('331', 'icon-adn', 'icon-adn', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('332', 'icon-android', 'icon-android', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('333', 'icon-apple', 'icon-apple', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('334', 'icon-bitbucket', 'icon-bitbucket', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('335', 'icon-bitbucket-sign', 'icon-bitbucket-sign', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('338', 'icon-css3', 'icon-css3', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('339', 'icon-dribble', 'icon-dribble', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('340', 'icon-dropbox', 'icon-dropbox', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('341', 'icon-facebook', 'icon-facebook', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('342', 'icon-facebook-sign', 'icon-facebook-sign', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('343', 'icon-flickr', 'icon-flickr', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('344', 'icon-foursquare', 'icon-foursquare', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('345', 'icon-github', 'icon-github', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('346', 'icon-github-alt', 'icon-github-alt', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('347', 'icon-github-sign', 'icon-github-sign', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('348', 'icon-gittip', 'icon-gittip', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('349', 'icon-google-plus', 'icon-google-plus', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('350', 'icon-google-plus-sign', 'icon-google-plus-sign', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('351', 'icon-html5', 'icon-html5', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('352', 'icon-instagram', 'icon-instagram', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('353', 'icon-linkedin', 'icon-linkedin', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('354', 'icon-linkedin-sign', 'icon-linkedin-sign', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('355', 'icon-linux', 'icon-linux', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('356', 'icon-maxcdn', 'icon-maxcdn', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('357', 'icon-pinterest', 'icon-pinterest', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('358', 'icon-pinterest-sign', 'icon-pinterest-sign', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('359', 'icon-renren', 'icon-renren', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('360', 'icon-skype', 'icon-skype', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('361', 'icon-stackexchange', 'icon-stackexchange', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('362', 'icon-trello', 'icon-trello', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('363', 'icon-tumblr', 'icon-tumblr', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('364', 'icon-tumblr-sign', 'icon-tumblr-sign', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('365', 'icon-twitter', 'icon-twitter', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('366', 'icon-twitter-sign', 'icon-twitter-sign', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('367', 'icon-vk', 'icon-vk', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('368', 'icon-weibo', 'icon-weibo', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('369', 'icon-windows', 'icon-windows', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('370', 'icon-xing', 'icon-xing', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('371', 'icon-xing-sign', 'icon-xing-sign', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('372', 'icon-youtube', 'icon-youtube', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('374', 'icon-youtube-sign', 'icon-youtube-sign', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('375', 'icon-ambulance', 'icon-ambulance', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('376', 'icon-h-sign', 'icon-h-sign', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('377', 'icon-hospital', 'icon-hospital', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('378', 'icon-medkit', 'icon-medkit', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('380', 'icon-stethoscope', 'icon-stethoscope', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('381', 'icon-user-md', 'icon-user-md', null, null, null, null, null, null, null, 'css_class', null);
INSERT INTO `maintain_icon` VALUES ('1001', 'ztree_root_close', null, 'static/comp/zTree/css/zTreeStyle/img/diy/1_close.png', '16', '16', null, null, null, null, 'upload_file', null);
INSERT INTO `maintain_icon` VALUES ('1002', 'ztree_root_open', null, 'static/comp/zTree/css/zTreeStyle/img/diy/1_open.png', '16', '16', null, null, null, null, 'upload_file', null);
INSERT INTO `maintain_icon` VALUES ('1003', 'ztree_edit', null, 'static/comp/zTree/css/zTreeStyle/img/diy/2.png', '16', '16', null, null, null, null, 'upload_file', null);
INSERT INTO `maintain_icon` VALUES ('1004', 'ztree_star', null, 'static/comp/zTree/css/zTreeStyle/img/diy/3.png', '16', '16', null, null, null, null, 'upload_file', null);
INSERT INTO `maintain_icon` VALUES ('1005', 'ztree_calendar', null, 'static/comp/zTree/css/zTreeStyle/img/diy/4.png', '16', '16', null, null, null, null, 'upload_file', null);
INSERT INTO `maintain_icon` VALUES ('1006', 'ztree_heart', null, 'static/comp/zTree/css/zTreeStyle/img/diy/5.png', '16', '16', null, null, null, null, 'upload_file', null);
INSERT INTO `maintain_icon` VALUES ('1007', 'ztree_save', null, 'static/comp/zTree/css/zTreeStyle/img/diy/6.png', '16', '16', null, null, null, null, 'upload_file', null);
INSERT INTO `maintain_icon` VALUES ('1008', 'ztree_msg', null, 'static/comp/zTree/css/zTreeStyle/img/diy/7.png', '16', '16', null, null, null, null, 'upload_file', null);
INSERT INTO `maintain_icon` VALUES ('1009', 'ztree_report', null, 'static/comp/zTree/css/zTreeStyle/img/diy/8.png', '16', '16', null, null, null, null, 'upload_file', null);
INSERT INTO `maintain_icon` VALUES ('1010', 'ztree_setting', null, 'static/comp/zTree/css/zTreeStyle/img/diy/9.png', '16', '16', null, null, null, null, 'upload_file', null);
INSERT INTO `maintain_icon` VALUES ('1011', 'ztree_file', null, 'static/comp/zTree/css/zTreeStyle/img/diy/file.png', '16', '16', null, null, null, null, 'upload_file', null);
INSERT INTO `maintain_icon` VALUES ('1012', 'ztree_folder', null, 'static/comp/zTree/css/zTreeStyle/img/diy/folder.png', '16', '16', null, null, null, null, 'upload_file', null);
INSERT INTO `maintain_icon` VALUES ('1013', 'ztree_branch', null, 'static/comp/zTree/css/zTreeStyle/img/diy/branch.png', '16', '16', null, null, null, null, 'upload_file', null);
INSERT INTO `maintain_icon` VALUES ('1014', 'ztree_leaf', null, 'static/comp/zTree/css/zTreeStyle/img/diy/leaf.png', '16', '16', null, null, null, null, 'upload_file', null);
INSERT INTO `maintain_icon` VALUES ('1500', 'ztree_folder_open', null, null, '16', '16', 'static/comp/zTree/css/zTreeStyle/img/zTreeStandard.png', '110', '0', null, 'css_sprite', null);
INSERT INTO `maintain_icon` VALUES ('1501', 'ztree_folder_close', null, null, '16', '16', 'static/comp/zTree/css/zTreeStyle/img/zTreeStandard.png', '110', '17', null, 'css_sprite', null);
INSERT INTO `maintain_icon` VALUES ('1502', 'ztree_file2', null, null, '16', '16', 'static/comp/zTree/css/zTreeStyle/img/zTreeStandard.png', '110', '32', null, 'css_sprite', null);
INSERT INTO `maintain_icon` VALUES ('1503', 'ztree_edit2', null, null, '16', '16', 'static/comp/zTree/css/zTreeStyle/img/zTreeStandard.png', '110', '48', null, 'css_sprite', null);
INSERT INTO `maintain_icon` VALUES ('1504', 'ztree_delete', null, null, '16', '16', 'static/comp/zTree/css/zTreeStyle/img/zTreeStandard.png', '110', '64', null, 'css_sprite', null);
INSERT INTO `maintain_icon` VALUES ('1505', 'ztree_arrow', null, null, '16', '16', 'static/comp/zTree/css/zTreeStyle/img/zTreeStandard.png', '110', '80', null, 'css_sprite', null);
INSERT INTO `maintain_icon` VALUES ('1506', 'ztree_plus', null, null, '13', '13', 'static/comp/zTree/css/zTreeStyle/img/zTreeStandard.png', '79', '75', null, 'css_sprite', null);
INSERT INTO `maintain_icon` VALUES ('1507', 'ztree_minus', null, null, '13', '13', 'static/comp/zTree/css/zTreeStyle/img/zTreeStandard.png', '98', '75', null, 'css_sprite', null);
INSERT INTO `maintain_icon` VALUES ('1508', 'ztree_add', null, null, '16', '16', 'static/comp/zTree/css/zTreeStyle/img/zTreeStandard.png', '144', '0', null, 'css_sprite', null);
INSERT INTO `maintain_icon` VALUES ('1509', 'ztree_cicle_arrow_left1', null, null, '16', '16', 'static/comp/zTree/css/zTreeStyle/img/zTreeStandard.png', '144', '15', null, 'css_sprite', null);
INSERT INTO `maintain_icon` VALUES ('1510', 'ztree_cicle_arrow_right1', null, null, '16', '16', 'static/comp/zTree/css/zTreeStyle/img/zTreeStandard.png', '144', '32', null, 'css_sprite', null);
INSERT INTO `maintain_icon` VALUES ('1511', 'ztree_cicle_arrow_left2', null, null, '16', '16', 'static/comp/zTree/css/zTreeStyle/img/zTreeStandard.png', '144', '48', null, 'css_sprite', null);
INSERT INTO `maintain_icon` VALUES ('1512', 'ztree_cicle_arrow_right2', null, null, '16', '16', 'static/comp/zTree/css/zTreeStyle/img/zTreeStandard.png', '144', '64', null, 'css_sprite', null);
INSERT INTO `maintain_icon` VALUES ('1513', 'ztree_cicle_arrow', null, null, '16', '16', 'static/comp/zTree/css/zTreeStyle/img/zTreeStandard.png', '127', '48', null, 'css_sprite', null);
INSERT INTO `maintain_icon` VALUES ('1514', 'ztree_star_light', null, null, '16', '16', 'static/comp/zTree/css/zTreeStyle/img/zTreeStandard.png', '127', '64', null, 'css_sprite', null);
INSERT INTO `maintain_icon` VALUES ('1515', 'ztree_star_dark', null, null, '16', '16', 'static/comp/zTree/css/zTreeStyle/img/zTreeStandard.png', '127', '80', null, 'css_sprite', null);

-- ----------------------------
-- Table structure for maintain_map
-- ----------------------------
DROP TABLE IF EXISTS `maintain_map`;
CREATE TABLE `maintain_map` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `map_key` varchar(200) DEFAULT NULL,
  `map_value` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_maintain_map_key` (`map_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of maintain_map
-- ----------------------------

-- ----------------------------
-- Table structure for maintain_notification_data
-- ----------------------------
DROP TABLE IF EXISTS `maintain_notification_data`;
CREATE TABLE `maintain_notification_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `system` varchar(50) DEFAULT NULL,
  `title` varchar(600) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_read` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_maintain_notification_data_user_id_read` (`user_id`,`is_read`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of maintain_notification_data
-- ----------------------------
INSERT INTO `maintain_notification_data` VALUES ('1', '1', 'excel', '导入Excel失败', '导入Excel失败了，请把错误报告给管理员，可能的失败原因：文件格式不对；错误码：No enum constant com.sishuok.es.student.entity.Sex.6', '2016-05-16 14:46:06', '0');
INSERT INTO `maintain_notification_data` VALUES ('2', '1', 'excel', '导入Excel失败', '导入Excel失败了，请把错误报告给管理员，可能的失败原因：文件格式不对；错误码：No enum constant com.sishuok.es.student.entity.Sex.6', '2016-05-16 14:51:54', '0');
INSERT INTO `maintain_notification_data` VALUES ('3', '1', 'excel', '导入Excel失败', '导入Excel失败了，请把错误报告给管理员，可能的失败原因：文件格式不对；错误码：No enum constant com.sishuok.es.student.entity.Sex.6', '2016-05-16 15:00:04', '0');
INSERT INTO `maintain_notification_data` VALUES ('4', '1', 'excel', '导入Excel失败', '导入Excel失败了，请把错误报告给管理员，可能的失败原因：文件格式不对；错误码：No enum constant com.sishuok.es.student.entity.Sex.男', '2016-05-16 15:00:30', '0');
INSERT INTO `maintain_notification_data` VALUES ('5', '1', 'excel', '导入Excel失败', '导入Excel失败了，请把错误报告给管理员，可能的失败原因：文件格式不对；错误码：Modifying queries can only use void or int/Integer as return type!; nested exception is java.lang.IllegalArgumentException: Modifying queries can only use void or int/Integer as return type!', '2016-05-16 16:29:01', '0');
INSERT INTO `maintain_notification_data` VALUES ('6', '1', 'excel', '导入Excel失败', '导入Excel失败了，请把错误报告给管理员，可能的失败原因：文件格式不对；错误码：Modifying queries can only use void or int/Integer as return type!; nested exception is java.lang.IllegalArgumentException: Modifying queries can only use void or int/Integer as return type!', '2016-05-16 16:34:09', '0');
INSERT INTO `maintain_notification_data` VALUES ('7', '1', 'excel', '导入Excel失败', '导入Excel失败了，请把错误报告给管理员，可能的失败原因：文件格式不对；错误码：Modifying queries can only use void or int/Integer as return type!; nested exception is java.lang.IllegalArgumentException: Modifying queries can only use void or int/Integer as return type!', '2016-05-16 16:41:32', '0');
INSERT INTO `maintain_notification_data` VALUES ('8', '1', 'excel', '导入Excel失败', '导入Excel失败了，请把错误报告给管理员，可能的失败原因：文件格式不对；错误码：Modifying queries can only use void or int/Integer as return type!; nested exception is java.lang.IllegalArgumentException: Modifying queries can only use void or int/Integer as return type!', '2016-05-16 16:43:51', '0');
INSERT INTO `maintain_notification_data` VALUES ('9', '1', 'excel', '导入Excel失败', '导入Excel失败了，请把错误报告给管理员，可能的失败原因：文件格式不对；错误码：Modifying queries can only use void or int/Integer as return type!; nested exception is java.lang.IllegalArgumentException: Modifying queries can only use void or int/Integer as return type!', '2016-05-16 16:47:11', '0');
INSERT INTO `maintain_notification_data` VALUES ('10', '1', 'excel', '导入Excel失败', '导入Excel失败了，请把错误报告给管理员，可能的失败原因：文件格式不对；错误码：Modifying queries can only use void or int/Integer as return type!; nested exception is java.lang.IllegalArgumentException: Modifying queries can only use void or int/Integer as return type!', '2016-05-16 17:05:37', '0');
INSERT INTO `maintain_notification_data` VALUES ('11', '1', 'excel', '导入Excel失败', '导入Excel失败了，请把错误报告给管理员，可能的失败原因：文件格式不对；错误码：Modifying queries can only use void or int/Integer as return type!; nested exception is java.lang.IllegalArgumentException: Modifying queries can only use void or int/Integer as return type!', '2016-05-16 17:08:37', '0');
INSERT INTO `maintain_notification_data` VALUES ('12', '1', 'excel', '导入Excel成功', '导入Excel成功，耗时32秒钟，<a onclick=\"$($.find(\'#menu a:contains(Excel导入/导出)\')).click();$(\'.notification-list .close-notification-list\').click();\">点击前往查看</a>', '2016-05-16 17:25:29', '0');
INSERT INTO `maintain_notification_data` VALUES ('13', '1', 'excel', '导入Excel失败', '导入Excel失败了，请把错误报告给管理员，可能的失败原因：文件格式不对；错误码：No value specified for \'Date\'', '2016-05-16 17:37:15', '0');
INSERT INTO `maintain_notification_data` VALUES ('14', '1', 'excel', '导入Excel成功', '导入Excel成功，耗时20秒钟，<a onclick=\"$($.find(\'#menu a:contains(Excel导入/导出)\')).click();$(\'.notification-list .close-notification-list\').click();\">点击前往查看</a>', '2016-05-16 17:39:21', '0');
INSERT INTO `maintain_notification_data` VALUES ('15', '1', 'excel', '导入Excel失败', '导入Excel失败了，请把错误报告给管理员，可能的失败原因：文件格式不对；错误码：Could not commit JPA transaction; nested exception is javax.persistence.RollbackException: Transaction marked as rollbackOnly', '2016-05-16 17:54:57', '0');
INSERT INTO `maintain_notification_data` VALUES ('16', '1', 'excel', '导入Excel失败', '导入Excel失败了，请把错误报告给管理员，可能的失败原因：文件格式不对；错误码：null', '2016-05-16 18:23:52', '0');
INSERT INTO `maintain_notification_data` VALUES ('17', '1', 'excel', '导入Excel失败', '导入Excel失败了，请把错误报告给管理员，可能的失败原因：文件格式不对；错误码：null', '2016-05-16 18:28:56', '0');
INSERT INTO `maintain_notification_data` VALUES ('18', '1', 'excel', '导入Excel失败', '导入Excel失败了，请把错误报告给管理员，可能的失败原因：文件格式不对；错误码：null', '2016-05-16 18:30:48', '0');
INSERT INTO `maintain_notification_data` VALUES ('19', '1', 'excel', '导入Excel成功', '导入Excel成功，耗时2秒钟，<a onclick=\"$($.find(\'#menu a:contains(Excel导入/导出)\')).click();$(\'.notification-list .close-notification-list\').click();\">点击前往查看</a>', '2016-05-17 12:43:40', '0');
INSERT INTO `maintain_notification_data` VALUES ('20', '1', 'excel', '导入Excel失败', '导入Excel失败了，请把错误报告给管理员，可能的失败原因：文件格式不对；错误码：could not execute statement; SQL [n/a]; constraint [unique_sys_user_username]; nested exception is org.hibernate.exception.ConstraintViolationException: could not execute statement', '2016-05-18 11:48:55', '0');
INSERT INTO `maintain_notification_data` VALUES ('21', '1', 'excel', '导入Excel失败', '导入Excel失败了，请把错误报告给管理员，可能的失败原因：文件格式不对；错误码：could not execute statement; SQL [n/a]; constraint [unique_sys_user_username]; nested exception is org.hibernate.exception.ConstraintViolationException: could not execute statement', '2016-05-18 11:50:46', '0');
INSERT INTO `maintain_notification_data` VALUES ('22', '1', 'excel', '导入Excel失败', '导入Excel失败了，请把错误报告给管理员，可能的失败原因：文件格式不对；错误码：could not execute statement; SQL [n/a]; constraint [unique_sys_user_username]; nested exception is org.hibernate.exception.ConstraintViolationException: could not execute statement', '2016-05-18 13:28:44', '0');
INSERT INTO `maintain_notification_data` VALUES ('23', '1', 'excel', '导入Excel成功', '导入Excel成功，耗时19秒钟，<a onclick=\"$($.find(\'#menu a:contains(Excel导入/导出)\')).click();$(\'.notification-list .close-notification-list\').click();\">点击前往查看</a>', '2016-05-18 13:50:13', '0');
INSERT INTO `maintain_notification_data` VALUES ('24', '1', 'excel', '导入Excel成功', '导入Excel成功，耗时3秒钟，<a onclick=\"$($.find(\'#menu a:contains(Excel导入/导出)\')).click();$(\'.notification-list .close-notification-list\').click();\">点击前往查看</a>', '2016-05-18 13:51:31', '1');

-- ----------------------------
-- Table structure for maintain_notification_template
-- ----------------------------
DROP TABLE IF EXISTS `maintain_notification_template`;
CREATE TABLE `maintain_notification_template` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `system` varchar(50) DEFAULT NULL,
  `title` varchar(600) DEFAULT NULL,
  `template` varchar(2000) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_maintain_notification_template_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of maintain_notification_template
-- ----------------------------
INSERT INTO `maintain_notification_template` VALUES ('1', 'excelInitDataSuccess', 'excel', '初始化Excel数据完成', '初始化Excel数据已完成，耗时{seconds}秒钟，可以尝试导入/导出操作啦！', '0');
INSERT INTO `maintain_notification_template` VALUES ('2', 'excelImportSuccess', 'excel', '导入Excel成功', '导入Excel成功，耗时{seconds}秒钟，<a onclick=\"$($.find(\'#menu a:contains(Excel导入/导出)\')).click();$(\'.notification-list .close-notification-list\').click();\">点击前往查看</a>', '0');
INSERT INTO `maintain_notification_template` VALUES ('3', 'excelImportError', 'excel', '导入Excel失败', '导入Excel失败了，请把错误报告给管理员，可能的失败原因：文件格式不对；错误码：{error}', '0');
INSERT INTO `maintain_notification_template` VALUES ('4', 'excelExportSuccess', 'excel', '导出Excel成功', '导出Excel成功，耗时{seconds}秒钟，<a href=\"{ctx}{url}\" target=\"_blank\">点击下载</a>（注意：导出的文件只保留3天，请尽快下载，过期将删除）', '0');
INSERT INTO `maintain_notification_template` VALUES ('5', 'excelExportError', 'excel', '导出Excel失败', '导出Excel失败了，请把错误报告给管理员，可能的失败原因：文件格式不对；错误码：{error}', '0');

-- ----------------------------
-- Table structure for maintain_task_definition
-- ----------------------------
DROP TABLE IF EXISTS `maintain_task_definition`;
CREATE TABLE `maintain_task_definition` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `cron` varchar(200) DEFAULT NULL,
  `bean_class` varchar(200) DEFAULT NULL,
  `bean_name` varchar(200) DEFAULT NULL,
  `method_name` varchar(200) DEFAULT NULL,
  `is_start` tinyint(1) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of maintain_task_definition
-- ----------------------------

-- ----------------------------
-- Table structure for personal_calendar
-- ----------------------------
DROP TABLE IF EXISTS `personal_calendar`;
CREATE TABLE `personal_calendar` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `background_color` varchar(100) DEFAULT NULL,
  `text_color` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `office_calendar_user_id_start_date` (`user_id`,`start_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of personal_calendar
-- ----------------------------

-- ----------------------------
-- Table structure for personal_message
-- ----------------------------
DROP TABLE IF EXISTS `personal_message`;
CREATE TABLE `personal_message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sender_id` bigint(20) DEFAULT NULL,
  `receiver_id` bigint(20) DEFAULT NULL,
  `send_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(200) DEFAULT NULL,
  `sender_state` varchar(20) DEFAULT NULL,
  `sender_state_change_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `receiver_state` varchar(20) DEFAULT NULL,
  `receiver_state_change_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(20) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_replied` tinyint(1) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `parent_ids` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_personal_message_sender_id_sender_state` (`sender_id`,`sender_state`),
  KEY `idx_personal_message_receiver_id_receiver_state` (`receiver_id`,`receiver_state`,`is_read`),
  KEY `idx_personal_sender_state_change_date` (`sender_state_change_date`),
  KEY `idx_personal_receiver_state_change_date` (`receiver_state_change_date`),
  KEY `idx_personal_parent_id` (`parent_id`),
  KEY `idx_personal_parent_ids` (`parent_ids`),
  KEY `idx_personal_message_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of personal_message
-- ----------------------------

-- ----------------------------
-- Table structure for personal_message_content
-- ----------------------------
DROP TABLE IF EXISTS `personal_message_content`;
CREATE TABLE `personal_message_content` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `message_id` bigint(20) DEFAULT NULL,
  `content` longtext,
  PRIMARY KEY (`id`),
  KEY `idx_personal_message_content_message_id` (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of personal_message_content
-- ----------------------------

-- ----------------------------
-- Table structure for showcase_category
-- ----------------------------
DROP TABLE IF EXISTS `showcase_category`;
CREATE TABLE `showcase_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `weight` int(11) DEFAULT '0',
  `is_show` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of showcase_category
-- ----------------------------

-- ----------------------------
-- Table structure for showcase_child
-- ----------------------------
DROP TABLE IF EXISTS `showcase_child`;
CREATE TABLE `showcase_child` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `beginTime` time DEFAULT NULL,
  `endTime` time DEFAULT NULL,
  `is_show` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of showcase_child
-- ----------------------------
INSERT INTO `showcase_child` VALUES ('1', '1', '阿斯顿发烧', 'type1', '17:13:41', '17:13:45', '1');

-- ----------------------------
-- Table structure for showcase_editor
-- ----------------------------
DROP TABLE IF EXISTS `showcase_editor`;
CREATE TABLE `showcase_editor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  `content` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of showcase_editor
-- ----------------------------

-- ----------------------------
-- Table structure for showcase_excel_data
-- ----------------------------
DROP TABLE IF EXISTS `showcase_excel_data`;
CREATE TABLE `showcase_excel_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of showcase_excel_data
-- ----------------------------

-- ----------------------------
-- Table structure for showcase_moveable
-- ----------------------------
DROP TABLE IF EXISTS `showcase_moveable`;
CREATE TABLE `showcase_moveable` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `weight` int(11) DEFAULT '0',
  `is_show` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_showcase_moveable_weight` (`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of showcase_moveable
-- ----------------------------

-- ----------------------------
-- Table structure for showcase_parent
-- ----------------------------
DROP TABLE IF EXISTS `showcase_parent`;
CREATE TABLE `showcase_parent` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `beginDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `endDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_show` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of showcase_parent
-- ----------------------------
INSERT INTO `showcase_parent` VALUES ('1', '啊啊啊', 'type1', '2016-05-17 00:00:00', '2016-05-21 00:00:00', '1');

-- ----------------------------
-- Table structure for showcase_product
-- ----------------------------
DROP TABLE IF EXISTS `showcase_product`;
CREATE TABLE `showcase_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` bigint(20) DEFAULT '0',
  `number` bigint(20) DEFAULT '0',
  `beginDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `endDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_show` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of showcase_product
-- ----------------------------

-- ----------------------------
-- Table structure for showcase_sample
-- ----------------------------
DROP TABLE IF EXISTS `showcase_sample`;
CREATE TABLE `showcase_sample` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `age` smallint(6) DEFAULT NULL,
  `birthday` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sex` varchar(50) DEFAULT NULL,
  `is_show` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_showcase_sample_name` (`name`),
  KEY `idx_showcase_sample_birthday` (`birthday`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of showcase_sample
-- ----------------------------
INSERT INTO `showcase_sample` VALUES ('1', 'ceshi', '12', '2016-05-16 11:45:02', 'male', '1', '0');

-- ----------------------------
-- Table structure for showcase_status_audit
-- ----------------------------
DROP TABLE IF EXISTS `showcase_status_audit`;
CREATE TABLE `showcase_status_audit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of showcase_status_audit
-- ----------------------------
INSERT INTO `showcase_status_audit` VALUES ('1', '阿斯蒂芬', 'success', '成功');
INSERT INTO `showcase_status_audit` VALUES ('2', '委托他人', 'success', '成功');
INSERT INTO `showcase_status_audit` VALUES ('3', '阿斯顿发顺丰', 'success', '333');
INSERT INTO `showcase_status_audit` VALUES ('4', '阿斯顿发大水', 'fail', '33');
INSERT INTO `showcase_status_audit` VALUES ('5', '呃呃呃', 'success', '阿萨德');
INSERT INTO `showcase_status_audit` VALUES ('6', '23', 'success', 'qw');
INSERT INTO `showcase_status_audit` VALUES ('7', '4324', 'success', '12323');
INSERT INTO `showcase_status_audit` VALUES ('8', 'asfwefw', 'success', '45');
INSERT INTO `showcase_status_audit` VALUES ('9', '67777', 'success', '77777');

-- ----------------------------
-- Table structure for showcase_status_show
-- ----------------------------
DROP TABLE IF EXISTS `showcase_status_show`;
CREATE TABLE `showcase_status_show` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of showcase_status_show
-- ----------------------------
INSERT INTO `showcase_status_show` VALUES ('1', '阿斯顿发大水发', 'hide');

-- ----------------------------
-- Table structure for showcase_tree
-- ----------------------------
DROP TABLE IF EXISTS `showcase_tree`;
CREATE TABLE `showcase_tree` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `parent_ids` varchar(200) DEFAULT '',
  `icon` varchar(200) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `is_show` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_showcase_tree_parentId` (`parent_id`),
  KEY `idx_showcase_tree_parentIds_weight` (`parent_ids`,`weight`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of showcase_tree
-- ----------------------------
INSERT INTO `showcase_tree` VALUES ('1', '根', '0', '0/', null, '1', '1');
INSERT INTO `showcase_tree` VALUES ('2', '节点1', '1', '0/1/', null, '1', '1');
INSERT INTO `showcase_tree` VALUES ('3', '叶子11', '2', '0/1/2/', null, '1', '1');
INSERT INTO `showcase_tree` VALUES ('4', '叶子12', '2', '0/1/2/', null, '2', '1');
INSERT INTO `showcase_tree` VALUES ('5', '节点2', '1', '0/1/', null, '2', '1');
INSERT INTO `showcase_tree` VALUES ('6', '叶子21', '5', '0/1/5/', null, '1', '1');
INSERT INTO `showcase_tree` VALUES ('7', '节点3', '1', '0/1/', null, '3', '1');
INSERT INTO `showcase_tree` VALUES ('8', '叶子31', '7', '0/1/7/', null, '2', '1');
INSERT INTO `showcase_tree` VALUES ('9', '叶子32', '7', '0/1/7/', null, '1', '1');
INSERT INTO `showcase_tree` VALUES ('10', '节点31', '7', '0/1/7/', null, '3', '1');
INSERT INTO `showcase_tree` VALUES ('11', '叶子311', '10', '0/1/7/10/', null, '1', '1');

-- ----------------------------
-- Table structure for showcase_upload
-- ----------------------------
DROP TABLE IF EXISTS `showcase_upload`;
CREATE TABLE `showcase_upload` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `src` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of showcase_upload
-- ----------------------------

-- ----------------------------
-- Table structure for sys_auth
-- ----------------------------
DROP TABLE IF EXISTS `sys_auth`;
CREATE TABLE `sys_auth` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `organization_id` bigint(20) DEFAULT NULL,
  `job_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  `role_ids` varchar(500) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sys_auth_organization` (`organization_id`),
  KEY `idx_sys_auth_job` (`job_id`),
  KEY `idx_sys_auth_user` (`user_id`),
  KEY `idx_sys_auth_group` (`group_id`),
  KEY `idx_sys_auth_type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_auth
-- ----------------------------
INSERT INTO `sys_auth` VALUES ('1', '0', '0', '1', '0', '1', 'user');
INSERT INTO `sys_auth` VALUES ('2', '0', '0', '2', '0', '2', 'user');
INSERT INTO `sys_auth` VALUES ('3', '0', '0', '3', '0', '3', 'user');
INSERT INTO `sys_auth` VALUES ('4', '0', '0', '4', '0', '4', 'user');
INSERT INTO `sys_auth` VALUES ('5', '0', '0', '5', '0', '5', 'user');
INSERT INTO `sys_auth` VALUES ('6', '0', '0', '6', '0', '6', 'user');
INSERT INTO `sys_auth` VALUES ('7', '0', '0', '7', '0', '7', 'user');
INSERT INTO `sys_auth` VALUES ('8', '0', '0', '8', '0', '8', 'user');
INSERT INTO `sys_auth` VALUES ('9', '0', '0', '9', '0', '9', 'user');
INSERT INTO `sys_auth` VALUES ('10', '0', '0', '10', '0', '10', 'user');
INSERT INTO `sys_auth` VALUES ('11', '0', '0', '14', '0', '11,', 'user');
INSERT INTO `sys_auth` VALUES ('12', '0', '0', '15', '0', '11,', 'user');
INSERT INTO `sys_auth` VALUES ('13', '0', '0', '18', '0', '11,', 'user');
INSERT INTO `sys_auth` VALUES ('14', '0', '0', '19', '0', '12,', 'user');
INSERT INTO `sys_auth` VALUES ('15', '0', '0', '26', '0', '13,', 'user');

-- ----------------------------
-- Table structure for sys_group
-- ----------------------------
DROP TABLE IF EXISTS `sys_group`;
CREATE TABLE `sys_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `is_show` tinyint(1) DEFAULT NULL,
  `default_group` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sys_group_type` (`type`),
  KEY `idx_sys_group_show` (`is_show`),
  KEY `idx_sys_group_default_group` (`default_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_group
-- ----------------------------

-- ----------------------------
-- Table structure for sys_group_relation
-- ----------------------------
DROP TABLE IF EXISTS `sys_group_relation`;
CREATE TABLE `sys_group_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` bigint(20) DEFAULT NULL,
  `organization_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `start_user_id` bigint(20) DEFAULT NULL,
  `end_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sys_group_relation_group` (`group_id`),
  KEY `idx_sys_group_relation_organization` (`organization_id`),
  KEY `idx_sys_group_relation_user` (`user_id`),
  KEY `idx_sys_group_relation_start_user_id` (`start_user_id`),
  KEY `idx_sys_group_relation_end_user_id` (`end_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_group_relation
-- ----------------------------

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `parent_ids` varchar(200) DEFAULT '',
  `icon` varchar(200) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `is_show` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sys_job_nam` (`name`),
  KEY `idx_sys_job_parent_id` (`parent_id`),
  KEY `idx_sys_job_parent_ids_weight` (`parent_ids`,`weight`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('1', '职务', '0', '0/', null, '1', '1');

-- ----------------------------
-- Table structure for sys_organization
-- ----------------------------
DROP TABLE IF EXISTS `sys_organization`;
CREATE TABLE `sys_organization` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `parent_ids` varchar(200) DEFAULT '',
  `icon` varchar(200) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `is_show` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sys_organization_name` (`name`),
  KEY `idx_sys_organization_type` (`type`),
  KEY `idx_sys_organization_parent_id` (`parent_id`),
  KEY `idx_sys_organization_parent_ids_weight` (`parent_ids`,`weight`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_organization
-- ----------------------------
INSERT INTO `sys_organization` VALUES ('1', '组织机构', null, '0', '0/', null, '1', '1');

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `permission` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `is_show` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sys_permission_name` (`name`),
  KEY `idx_sys_permission_permission` (`permission`),
  KEY `idx_sys_permission_show` (`is_show`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('1', '所有', '*', '所有数据操作的权限', '1');
INSERT INTO `sys_permission` VALUES ('2', '新增', 'create', '新增数据操作的权限', '1');
INSERT INTO `sys_permission` VALUES ('4', '删除', 'delete', '删除数据操作的权限', '1');
INSERT INTO `sys_permission` VALUES ('5', '查看', 'view', '查看数据操作的权限', '1');
INSERT INTO `sys_permission` VALUES ('6', '审核', 'audit', '审核数据操作的权限', '1');
INSERT INTO `sys_permission` VALUES ('7', '发放', 'grant', '奖学金/助学金发放', '1');

-- ----------------------------
-- Table structure for sys_resource
-- ----------------------------
DROP TABLE IF EXISTS `sys_resource`;
CREATE TABLE `sys_resource` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `identity` varchar(100) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `parent_ids` varchar(200) DEFAULT '',
  `icon` varchar(200) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `is_show` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sys_resource_name` (`name`),
  KEY `idx_sys_resource_identity` (`identity`),
  KEY `idx_sys_resource_user` (`url`),
  KEY `idx_sys_resource_parent_id` (`parent_id`),
  KEY `idx_sys_resource_parent_ids_weight` (`parent_ids`,`weight`)
) ENGINE=InnoDB AUTO_INCREMENT=1011 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_resource
-- ----------------------------
INSERT INTO `sys_resource` VALUES ('1', '资源', '', '', '0', '0/', null, '1', '1');
INSERT INTO `sys_resource` VALUES ('2', '示例管理', 'showcase', '', '1', '0/1/', null, '1', '1');
INSERT INTO `sys_resource` VALUES ('3', '示例列表', 'sample', '/showcase/sample', '2', '0/1/2/', null, '1', '1');
INSERT INTO `sys_resource` VALUES ('4', '逻辑删除列表', 'deleted', '/showcase/deleted', '2', '0/1/2/', null, '2', '1');
INSERT INTO `sys_resource` VALUES ('5', '可移动列表', 'move', '/showcase/move', '2', '0/1/2/', null, '3', '1');
INSERT INTO `sys_resource` VALUES ('6', '文件上传列表', 'upload', '/showcase/upload', '2', '0/1/2/', null, '4', '1');
INSERT INTO `sys_resource` VALUES ('7', '树列表', 'tree', '/showcase/tree', '2', '0/1/2/', null, '5', '1');
INSERT INTO `sys_resource` VALUES ('8', '编辑器列表', 'editor', '/showcase/editor', '2', '0/1/2/', null, '6', '1');
INSERT INTO `sys_resource` VALUES ('9', '父子表（小数据量）', 'parentchild', '/showcase/parentchild/parent', '2', '0/1/2/', null, '7', '1');
INSERT INTO `sys_resource` VALUES ('10', '父子表（大数据量）管理', '', '', '2', '0/1/2/', null, '8', '1');
INSERT INTO `sys_resource` VALUES ('11', '类别列表', 'productCategory', '/showcase/product/category', '10', '0/1/2/10/', null, '1', '1');
INSERT INTO `sys_resource` VALUES ('12', '产品列表', 'product', '/showcase/product/product', '10', '0/1/2/10/', null, '2', '1');
INSERT INTO `sys_resource` VALUES ('13', '状态管理', '', '', '2', '0/1/2/', null, '9', '1');
INSERT INTO `sys_resource` VALUES ('14', '审核状态列表', 'statusAudit', '/showcase/status/audit', '13', '0/1/2/13/', null, '1', '1');
INSERT INTO `sys_resource` VALUES ('15', '显示状态列表', 'statusShow', '/showcase/status/show', '13', '0/1/2/13/', null, '2', '1');
INSERT INTO `sys_resource` VALUES ('16', '系统管理', 'sys', '', '1', '0/1/', null, '10', '1');
INSERT INTO `sys_resource` VALUES ('17', '用户管理', '', '', '16', '0/1/16/', null, '1', '1');
INSERT INTO `sys_resource` VALUES ('18', '用户列表', 'user', '/admin/sys/user/main', '17', '0/1/16/17/', null, '1', '1');
INSERT INTO `sys_resource` VALUES ('19', '在线用户列表', 'userOnline', '/admin/sys/user/online', '17', '0/1/16/17/', null, '2', '1');
INSERT INTO `sys_resource` VALUES ('20', '状态变更历史列表', 'userStatusHistory', '/admin/sys/user/statusHistory', '17', '0/1/16/17/', null, '3', '1');
INSERT INTO `sys_resource` VALUES ('21', '用户最后在线历史列表', 'userLastOnline', '/admin/sys/user/lastOnline', '17', '0/1/16/17/', null, '4', '1');
INSERT INTO `sys_resource` VALUES ('22', '组织机构管理', '', '', '16', '0/1/16/', null, '2', '1');
INSERT INTO `sys_resource` VALUES ('23', '组织机构列表', 'organization', '/admin/sys/organization/organization', '22', '0/1/16/22/', null, '1', '1');
INSERT INTO `sys_resource` VALUES ('24', '工作职务列表', 'job', '/admin/sys/organization/job', '22', '0/1/16/22/', null, '2', '1');
INSERT INTO `sys_resource` VALUES ('25', '资源列表', 'resource', '/admin/sys/resource', '16', '0/1/16/', null, '4', '1');
INSERT INTO `sys_resource` VALUES ('26', '权限管理', '', '', '16', '0/1/16/', null, '5', '1');
INSERT INTO `sys_resource` VALUES ('27', '权限列表', 'permission', '/admin/sys/permission/permission', '26', '0/1/16/26/', null, '1', '1');
INSERT INTO `sys_resource` VALUES ('28', '授权权限给角色', 'role', '/admin/sys/permission/role', '26', '0/1/16/26/', null, '2', '1');
INSERT INTO `sys_resource` VALUES ('29', '分组列表', 'group', '/admin/sys/group', '16', '0/1/16/', null, '3', '1');
INSERT INTO `sys_resource` VALUES ('30', '授权角色给实体', 'auth', '/admin/sys/auth', '26', '0/1/16/26/', null, '3', '1');
INSERT INTO `sys_resource` VALUES ('31', '个人中心', '', '', '1', '0/1/', null, '11', '1');
INSERT INTO `sys_resource` VALUES ('32', '我的消息', '', '/admin/personal/message', '31', '0/1/31/', null, '1', '1');
INSERT INTO `sys_resource` VALUES ('33', '开发维护', 'maintain', '', '1', '0/1/', null, '5', '1');
INSERT INTO `sys_resource` VALUES ('34', '图标管理', 'icon', '/admin/maintain/icon', '33', '0/1/33/', null, '2', '1');
INSERT INTO `sys_resource` VALUES ('35', '键值对', 'keyvalue', '/admin/maintain/keyvalue', '33', '0/1/33/', null, '3', '1');
INSERT INTO `sys_resource` VALUES ('37', '静态资源版本控制', 'staticResource', '/admin/maintain/staticResource', '33', '0/1/33/', null, '4', '1');
INSERT INTO `sys_resource` VALUES ('38', '在线编辑', 'onlineEditor', '/admin/maintain/editor', '33', '0/1/33/', null, '5', '1');
INSERT INTO `sys_resource` VALUES ('39', '系统监控', 'monitor', '', '1', '0/1/', null, '6', '1');
INSERT INTO `sys_resource` VALUES ('40', '在线用户列表', 'userOnline', '/admin/sys/user/online', '39', '0/1/39/', null, '1', '1');
INSERT INTO `sys_resource` VALUES ('41', '数据库监控', 'db', '/admin/monitor/druid/index.html', '39', '0/1/39/', null, '2', '1');
INSERT INTO `sys_resource` VALUES ('42', 'hibernate监控', 'hibernate', '/admin/monitor/hibernate', '39', '0/1/39/', null, '3', '1');
INSERT INTO `sys_resource` VALUES ('43', '执行SQL/JPA QL', 'ql', '/admin/monitor/db/sql', '39', '0/1/39/', null, '4', '1');
INSERT INTO `sys_resource` VALUES ('44', 'ehcache监控', 'ehcache', '/admin/monitor/ehcache', '39', '0/1/39/', null, '5', '1');
INSERT INTO `sys_resource` VALUES ('45', 'jvm监控', 'jvm', '/admin/monitor/jvm', '39', '0/1/39/', null, '6', '1');
INSERT INTO `sys_resource` VALUES ('46', 'Excel导入/导出', 'excel', '/showcase/excel', '2', '0/1/2/', null, '10', '1');
INSERT INTO `sys_resource` VALUES ('47', '我的通知', '', '/admin/personal/notification', '31', '0/1/31/', null, '2', '1');
INSERT INTO `sys_resource` VALUES ('48', '通知模板', 'notificationTemplate', '/admin/maintain/notification/template', '33', '0/1/33/', null, '1', '1');
INSERT INTO `sys_resource` VALUES ('49', '任务调度', 'dynamicTask', '/admin/maintain/dynamicTask', '33', '0/1/33/', null, '6', '1');
INSERT INTO `sys_resource` VALUES ('1000', '学生管理', 'student', '', '1', '0/1/', 'ztree_folder', '7', '1');
INSERT INTO `sys_resource` VALUES ('1001', '学生列表', 'sample', '/student/sample', '1000', '0/1/1000/', 'ztree_file', '1', '1');
INSERT INTO `sys_resource` VALUES ('1003', '教师管理', 'teacher', '', '1', '0/1/', 'ztree_folder', '8', '1');
INSERT INTO `sys_resource` VALUES ('1004', '教师列表', 'sample', '/teacher/sample', '1003', '0/1/1003/', 'ztree_file', '1', '1');
INSERT INTO `sys_resource` VALUES ('1005', '奖学金管理', 'scholarship', '', '1', '0/1/', 'ztree_folder', '9', '1');
INSERT INTO `sys_resource` VALUES ('1006', '奖学金列表', 'sample', '/scholarship/sample', '1005', '0/1/1005/', 'ztree_file', '1', '1');
INSERT INTO `sys_resource` VALUES ('1007', '助学金管理', 'fellowship', '', '1', '0/1/', 'ztree_folder', '10', '1');
INSERT INTO `sys_resource` VALUES ('1008', '助学金列表', 'sample', '/fellowship/sample', '1007', '0/1/1007/', 'ztree_file', '1', '1');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `is_show` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sys_role_name` (`name`),
  KEY `idx_sys_role_role` (`role`),
  KEY `idx_sys_role_show` (`is_show`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'admin', '拥有所有权限', '1');
INSERT INTO `sys_role` VALUES ('2', '示例管理员', 'example_admin', '拥有示例管理的所有权限', '1');
INSERT INTO `sys_role` VALUES ('3', '系统管理员', 'sys_admin', '拥有系统管理的所有权限', '1');
INSERT INTO `sys_role` VALUES ('4', '维护管理员', 'conf_admin', '拥有维护管理的所有权限', '1');
INSERT INTO `sys_role` VALUES ('5', '新增管理员', 'create_admin', '拥有新增/查看管理的所有权限', '1');
INSERT INTO `sys_role` VALUES ('6', '修改管理员', 'update_admin', '拥有修改/查看管理的所有权限', '1');
INSERT INTO `sys_role` VALUES ('7', '删除管理员', 'delete_admin', '拥有删除/查看管理的所有权限', '1');
INSERT INTO `sys_role` VALUES ('8', '查看管理员', 'view_admin', '拥有查看管理的所有权限', '1');
INSERT INTO `sys_role` VALUES ('9', '审核管理员', 'audit_admin', '拥有审核管理的所有权限', '1');
INSERT INTO `sys_role` VALUES ('10', '监控管理员', 'audit_admin', '拥有审核管理的所有权限', '1');
INSERT INTO `sys_role` VALUES ('11', '济南大学教师', 'teacher', '拥有查询申请列表和审核权限', '1');
INSERT INTO `sys_role` VALUES ('12', '济南大学管理员', 'jndx_admin', '拥有导入学生信息，创建教师账户，发放奖学金助学金功能', '1');
INSERT INTO `sys_role` VALUES ('13', '济南大学学生', 'student', '能够申请奖学金助学金，修改自己个人信息', '1');

-- ----------------------------
-- Table structure for sys_role_resource_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_resource_permission`;
CREATE TABLE `sys_role_resource_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL,
  `resource_id` bigint(20) DEFAULT NULL,
  `permission_ids` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_sys_role_resource_permission` (`role_id`,`resource_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1019 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_resource_permission
-- ----------------------------
INSERT INTO `sys_role_resource_permission` VALUES ('1', '1', '2', '1');
INSERT INTO `sys_role_resource_permission` VALUES ('2', '1', '16', '1');
INSERT INTO `sys_role_resource_permission` VALUES ('3', '1', '33', '1');
INSERT INTO `sys_role_resource_permission` VALUES ('4', '1', '39', '1');
INSERT INTO `sys_role_resource_permission` VALUES ('5', '2', '2', '1');
INSERT INTO `sys_role_resource_permission` VALUES ('6', '3', '16', '1');
INSERT INTO `sys_role_resource_permission` VALUES ('7', '4', '33', '1');
INSERT INTO `sys_role_resource_permission` VALUES ('8', '5', '2', '2,5');
INSERT INTO `sys_role_resource_permission` VALUES ('9', '5', '16', '2,5');
INSERT INTO `sys_role_resource_permission` VALUES ('10', '5', '33', '2,5');
INSERT INTO `sys_role_resource_permission` VALUES ('11', '5', '39', '2,5');
INSERT INTO `sys_role_resource_permission` VALUES ('12', '6', '2', '3,5');
INSERT INTO `sys_role_resource_permission` VALUES ('13', '6', '16', '3,5');
INSERT INTO `sys_role_resource_permission` VALUES ('14', '6', '33', '3,5');
INSERT INTO `sys_role_resource_permission` VALUES ('15', '6', '39', '3,5');
INSERT INTO `sys_role_resource_permission` VALUES ('16', '7', '2', '4,5');
INSERT INTO `sys_role_resource_permission` VALUES ('17', '7', '16', '4,5');
INSERT INTO `sys_role_resource_permission` VALUES ('18', '7', '33', '4,5');
INSERT INTO `sys_role_resource_permission` VALUES ('19', '7', '39', '4,5');
INSERT INTO `sys_role_resource_permission` VALUES ('20', '8', '2', '5');
INSERT INTO `sys_role_resource_permission` VALUES ('21', '8', '16', '5');
INSERT INTO `sys_role_resource_permission` VALUES ('22', '8', '33', '5');
INSERT INTO `sys_role_resource_permission` VALUES ('23', '8', '39', '5');
INSERT INTO `sys_role_resource_permission` VALUES ('24', '9', '7', '5,6');
INSERT INTO `sys_role_resource_permission` VALUES ('25', '9', '14', '5,6');
INSERT INTO `sys_role_resource_permission` VALUES ('26', '9', '15', '5,6');
INSERT INTO `sys_role_resource_permission` VALUES ('27', '10', '39', '1');
INSERT INTO `sys_role_resource_permission` VALUES ('1000', '1', '1001', '1,');
INSERT INTO `sys_role_resource_permission` VALUES ('1001', '1', '1004', '1,');
INSERT INTO `sys_role_resource_permission` VALUES ('1002', '1', '1006', '1,');
INSERT INTO `sys_role_resource_permission` VALUES ('1003', '1', '1009', '1,');
INSERT INTO `sys_role_resource_permission` VALUES ('1004', '1', '1008', '1,');
INSERT INTO `sys_role_resource_permission` VALUES ('1005', '1', '1010', '1,');
INSERT INTO `sys_role_resource_permission` VALUES ('1006', '11', '1006', '5,6,');
INSERT INTO `sys_role_resource_permission` VALUES ('1007', '11', '1008', '5,6,');
INSERT INTO `sys_role_resource_permission` VALUES ('1008', '12', '1001', '1,');
INSERT INTO `sys_role_resource_permission` VALUES ('1010', '12', '1004', '1,');
INSERT INTO `sys_role_resource_permission` VALUES ('1011', '12', '1006', '4,5,7,');
INSERT INTO `sys_role_resource_permission` VALUES ('1012', '12', '1008', '5,7,');
INSERT INTO `sys_role_resource_permission` VALUES ('1013', '13', '1009', '2,3,5,');
INSERT INTO `sys_role_resource_permission` VALUES ('1014', '13', '1010', '2,3,5,');
INSERT INTO `sys_role_resource_permission` VALUES ('1015', '12', '25', '1,');
INSERT INTO `sys_role_resource_permission` VALUES ('1016', '12', '27', '1,');
INSERT INTO `sys_role_resource_permission` VALUES ('1017', '12', '28', '1,');
INSERT INTO `sys_role_resource_permission` VALUES ('1018', '12', '30', '1,');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile_phone_number` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `salt` varchar(10) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_sys_user_username` (`username`),
  UNIQUE KEY `unique_sys_user_email` (`email`),
  UNIQUE KEY `unique_sys_user_mobile_phone_number` (`mobile_phone_number`),
  KEY `idx_sys_user_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'admin@sishuok.com', '13412345671', 'ec21fa1738f39d5312c6df46002d403d', 'yDd1956wn1', '2016-05-16 11:04:37', 'normal', '0', '1');
INSERT INTO `sys_user` VALUES ('2', 'showcase', 'showcase@sishuok.com', '13412345672', '5f915c55c6d43da136a42e3ebabbecfc', 'hSSixwNQwt', '2016-05-16 11:04:37', 'normal', '0', '1');
INSERT INTO `sys_user` VALUES ('3', 'sys', 'sys@sishuok.com', '13412345673', 'a10b3c7af051a81fe2506318f982ce28', 'MANHOoCpnb', '2016-05-16 11:04:37', 'normal', '0', '1');
INSERT INTO `sys_user` VALUES ('4', 'maintain', 'maintain@sishuok.com', '13412345674', '594813c5eb02b210dacc1a36c2482fc1', 'iY71e4dtoa', '2016-05-16 11:04:37', 'normal', '0', '1');
INSERT INTO `sys_user` VALUES ('5', 'create', 'create@sishuok.com', '13412345675', 'a6d5988a698dec63c6eea71994dd7be0', 'iruPxupgfb', '2016-05-16 11:04:37', 'normal', '0', '1');
INSERT INTO `sys_user` VALUES ('6', 'update', 'update@sishuok.com', '13412345676', 'fffa26ac5c47ec1bf9a37d9823816074', '2WQx5LmvlV', '2016-05-16 11:04:37', 'normal', '0', '1');
INSERT INTO `sys_user` VALUES ('7', 'delete', 'delete@sishuok.com', '13412345677', '4c472bf1d56f440d2953803ab4eea8d4', 'E8KSvr1C7d', '2016-05-16 11:04:37', 'normal', '0', '1');
INSERT INTO `sys_user` VALUES ('8', 'view', 'view@sishuok.com', '13412345678', 'c919215efcef4064858bf02f8776c00d', 'XFJZQOXWZW', '2016-05-16 11:04:37', 'normal', '0', '1');
INSERT INTO `sys_user` VALUES ('9', 'audit', 'audit@sishuok.com', '13412345679', '15d8f7b8da8045d24c71a92a142ffad7', 'BI2XbXMUr7', '2016-05-16 11:04:37', 'normal', '0', '1');
INSERT INTO `sys_user` VALUES ('10', 'monitor', 'monitor@sishuok.com', '1341234580', 'e1549e68ad21fe888ae36ec4965116cd', 'iY71e4d123', '2016-05-16 11:04:37', 'normal', '0', '1');
INSERT INTO `sys_user` VALUES ('11', 'nidonglin', 'nidonglin1986@163.com', '13581683143', '5e4004135c53806072d66da1bc8b312f', 'JeJPrK2WsA', '2016-05-17 13:45:39', 'normal', '0', '1');
INSERT INTO `sys_user` VALUES ('12', 'ninini', 'nihousheng@163.com', '13581683111', '0724904d46fe1611d9cc49a9f4425d63', '6Ok6EsMWHi', '2016-05-17 13:52:48', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('13', '20150119', 'nihousheng1@163.com', '13581683112', '0fe4d6e7abd7c44f86721974d23a86d9', '4o4IIdE0wA', '2016-05-17 14:19:15', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('14', '20157890', 'nihousheng2@163.com', '13581683113', 'c7a6ae2ac27633a5e6e52e2827a42545', 'vfSrKYVszZ', '2016-05-17 14:40:10', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('15', '20160101', '', '', 'a810e853757e9e59d2c9aa42fc3137f4', 'jlagrKeL3K', '2016-05-17 22:50:46', 'normal', '0', '1');
INSERT INTO `sys_user` VALUES ('16', 'ceshi', 'nini@163.com', '13212345678', '501459a88bcdcf1734a10b1012fd3ead', 'gcSO53rxiU', '2016-05-17 22:56:02', 'normal', '0', '1');
INSERT INTO `sys_user` VALUES ('17', 'laiba', 'n@163.com', '13245678903', '8c1c445fefa43bd701fe29dfb0810568', 'kU6UyOauXn', '2016-05-17 22:56:34', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('18', '20160102', null, null, '6beb6edbf37791cfe06a213ce6bc2061', 'rmAOZlYxHj', '2016-05-17 23:24:11', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('19', 'jndx', 'jndx@163.com', '13187654321', '3df33d5bc71d7711310d8d897baf9284', 'w6POt09VOE', '2016-05-17 23:47:19', 'normal', '0', '1');
INSERT INTO `sys_user` VALUES ('26', '20120102001', null, null, 'ab8df04bca168a896bb5143862837291', '5q2PRSXeMv', '2016-05-18 13:51:30', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('27', '20120102002', null, null, '78c1eccd9a61ffc96ff58b49e1ee3232', '3zLXR62bmG', '2016-05-18 13:51:31', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('28', '20120102003', null, null, '7bcfa7b6f3413bc10e0dced01d230efa', 'E6XHk1OmsZ', '2016-05-18 13:51:31', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('29', '20120102004', null, null, '1ce40da723fdd15ff923bdaebec2b4ae', 'KHHM4dClOF', '2016-05-18 13:51:31', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('30', '20120102005', null, null, 'af889cba44c475f7ae376e57488e9644', '9nLzGx75g4', '2016-05-18 13:51:31', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('31', '20120102006', null, null, '0c4766d8b5242c2d7b76a2c6313a5ed2', 'Z7OKRlYQXd', '2016-05-18 13:51:31', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('32', '20120102007', null, null, '446843a944bc66cfa29aad2b5669fd83', 'WG5kmiyL7R', '2016-05-18 13:51:31', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('33', '20120102008', null, null, 'f647d2110c7af95731c2e7636e053307', 'rbvyXWxgK5', '2016-05-18 13:51:31', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('34', '20120102009', null, null, 'aa5bbb1eae8acc13b28c5f401c55c907', 'gPD8IGEAiX', '2016-05-18 13:51:31', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('35', '20120102010', null, null, 'ffd6b84fc5824df3678dd8cacb528745', 'i0bkZ6MkS1', '2016-05-18 13:51:31', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('36', '20120102011', null, null, '1e0fc0607c3bd0d86ceaf764269a4b19', 'yWkYx0hKKX', '2016-05-18 13:51:31', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('37', '20120102012', null, null, 'd8de64fbbc05119e7a4ed7338195ebfc', 'tEbBFiAwPm', '2016-05-18 13:51:31', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('38', '20120102013', null, null, 'a232f0ae5191e441c7589188f9d42e03', 'RSOLYjbBHQ', '2016-05-18 13:51:31', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('39', '20120102014', null, null, 'dae66f023545490c528122251d13d870', 'aAtLga4lHD', '2016-05-18 13:51:31', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('40', '20120102015', null, null, 'c71691f2bdf9d7017fcb2520d731e114', '3986ogDMIW', '2016-05-18 13:51:31', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('41', '20120102016', null, null, '6bfaf3d5ac9e4b6efbd3a286299aef9b', 'V3Pp3iMlXJ', '2016-05-18 13:51:31', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('42', '20120102017', null, null, '9d72c2f8fcc8f2d439ce7b5391a56b05', 't8u22pIaBI', '2016-05-18 13:51:31', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('43', '20120102018', null, null, '75c214ff5e7dbbb7a66d5d78512717ac', 'tx7kBbhTl2', '2016-05-18 13:51:31', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('44', '20120102019', null, null, 'a0913aa332fcd8270561d4954f606872', 'vGK1uGvYbZ', '2016-05-18 13:51:31', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('45', '20120102020', null, null, '0b312dee1e808f47971ac49f76cc8238', 'ze5qk2XGSH', '2016-05-18 13:51:31', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('46', '20120102021', null, null, '2715c1f65a1c66f52bbdc4b67ffe417b', 'IZiadM5kSb', '2016-05-18 13:51:31', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('47', '20120102022', null, null, '922188bf10615f96eb395a9f1dd18960', 'qTCaVRFkGz', '2016-05-18 13:51:31', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('48', '20120102023', null, null, '9b4ba537a65276f452fc6c874856cff6', '1NiwGZUFet', '2016-05-18 13:51:31', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('49', '20120102024', null, null, 'b8bfbc6c016364d19061e6e8e63e7454', 'LIhLsGk7Lp', '2016-05-18 13:51:31', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('50', '20120102025', null, null, 'c2da5d4a073578775b769cb19dcf9f87', 'QaKWxkEn0T', '2016-05-18 13:51:31', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('51', '20120102026', null, null, '9068d7a5903da8064be8407184864b2d', 'cppKNwGIlV', '2016-05-18 13:51:31', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('52', '20120102027', null, null, '8eee3526ff1839e85ee7a034295f59e1', '8104z2tyeS', '2016-05-18 13:51:31', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('53', '20120102028', null, null, '35688b168e29b2e32c24da6f387de922', 'I6dxYMEWjx', '2016-05-18 13:51:31', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('54', '20120102029', null, null, '1de101d1a530ebc6bea7d32ad5666c54', 'Y5yEkbHvmJ', '2016-05-18 13:51:31', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('55', '20120102030', null, null, '2ef998a2147f60be235f930f1ab33036', 'we6aADTfXX', '2016-05-18 13:51:31', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('56', '20120102031', null, null, '2679b39437e5914d9385907525ecdcbd', 'Cq0Nlkt7OK', '2016-05-18 13:51:31', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('57', '20120102032', null, null, '1cea59f53ef0f1c39d4abb017c870188', 'RawMcMX174', '2016-05-18 13:51:31', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('58', '20120102033', null, null, 'bfd04c84276c1f338f78c2f6e2c1191c', '0B10LuZfxl', '2016-05-18 13:51:31', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('59', '20120102034', null, null, 'da64ef87176c1fa3e0bdfce525066cea', '1tcIEy2RjL', '2016-05-18 13:51:31', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('60', '20120102035', null, null, 'ad85528e9149d3f5fc5330d5ac8508bd', 'GVUu56PqqR', '2016-05-18 13:51:31', 'normal', '0', '0');
INSERT INTO `sys_user` VALUES ('61', '20120102036', null, null, '9949ce6e8bee865bb36b202ae16d9024', 'Kuvf0hysOz', '2016-05-18 13:51:31', 'normal', '0', '0');

-- ----------------------------
-- Table structure for sys_user_last_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_last_online`;
CREATE TABLE `sys_user_last_online` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `uid` varchar(100) DEFAULT NULL,
  `host` varchar(100) DEFAULT NULL,
  `user_agent` varchar(200) DEFAULT NULL,
  `system_host` varchar(100) DEFAULT NULL,
  `last_login_timestamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_stop_timestamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_count` bigint(20) DEFAULT NULL,
  `total_online_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_sys_user_last_online_sys_user_id` (`user_id`),
  KEY `idx_sys_user_last_online_username` (`username`),
  KEY `idx_sys_user_last_online_host` (`host`),
  KEY `idx_sys_user_last_online_system_host` (`system_host`),
  KEY `idx_sys_user_last_online_last_login_timestamp` (`last_login_timestamp`),
  KEY `idx_sys_user_last_online_last_stop_timestamp` (`last_stop_timestamp`),
  KEY `idx_sys_user_last_online_user_agent` (`user_agent`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_last_online
-- ----------------------------
INSERT INTO `sys_user_last_online` VALUES ('1', '1', 'admin', '826bf974-8b8b-43e4-9634-47c587e65348', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36', '0:0:0:0:0:0:0:1:9080', '2016-05-19 16:32:49', '2016-05-19 16:32:54', '18', '160550');
INSERT INTO `sys_user_last_online` VALUES ('2', '19', 'jndx', '76117406-7b9a-4bd0-8323-8603e601d445', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36', '0:0:0:0:0:0:0:1:9080', '2016-05-19 16:36:38', '2016-05-19 16:36:47', '10', '30225');
INSERT INTO `sys_user_last_online` VALUES ('3', '18', '20160102', '83010704-51a1-4ddb-82a4-15736dd1d5c3', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36', '0:0:0:0:0:0:0:1:9080', '2016-05-18 11:25:44', '2016-05-18 11:25:51', '3', '2895');
INSERT INTO `sys_user_last_online` VALUES ('4', '15', '20160101', 'a4ab2069-d1e0-484a-acbf-1ab350e78c09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.99 Safari/537.36', '0:0:0:0:0:0:0:1:9080', '2016-05-17 23:21:50', '2016-05-17 23:22:03', '2', '114');
INSERT INTO `sys_user_last_online` VALUES ('5', '26', '20120102001', 'bb53fc4c-9f1c-4430-acce-c7bf8efa7e9f', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36', '0:0:0:0:0:0:0:1:9080', '2016-05-18 13:53:23', '2016-05-18 15:12:18', '1', '15895');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) DEFAULT '0',
  `username` varchar(100) DEFAULT NULL,
  `host` varchar(100) DEFAULT NULL,
  `system_host` varchar(100) DEFAULT NULL,
  `user_agent` varchar(200) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `start_timestsamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_access_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timeout` bigint(20) DEFAULT NULL,
  `session` mediumtext,
  PRIMARY KEY (`id`),
  KEY `idx_sys_user_online_sys_user_id` (`user_id`),
  KEY `idx_sys_user_online_username` (`username`),
  KEY `idx_sys_user_online_host` (`host`),
  KEY `idx_sys_user_online_system_host` (`system_host`),
  KEY `idx_sys_user_online_start_timestsamp` (`start_timestsamp`),
  KEY `idx_sys_user_online_last_access_time` (`last_access_time`),
  KEY `idx_sys_user_online_user_agent` (`user_agent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES ('0f372854-75fa-42e9-b130-8c6543c970ba', '19', 'jndx', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1:9080', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36', 'on_line', '2016-05-19 16:37:20', '2016-05-19 18:07:22', '1800000', 'aced00057372002a6f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e4f6e6c696e6553657373696f6e9d1ca1b8d58c626e0300054c00067374617475737400394c6f72672f6170616368652f736869726f2f73657373696f6e2f6d67742f4f6e6c696e6553657373696f6e244f6e6c696e655374617475733b4c000a73797374656d486f73747400124c6a6176612f6c616e672f537472696e673b4c0009757365724167656e7471007e00024c00067573657249647400104c6a6176612f6c616e672f4c6f6e673b4c0008757365726e616d6571007e00027872002a6f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e53696d706c6553657373696f6e9d1ca1b8d58c626e0300007870770200db74002430663337323835342d373566612d343265392d623133302d3863363534336339373062617372000e6a6176612e7574696c2e44617465686a81014b5974190300007870770800000154c8297091787371007e0007770800000154c87be14a78771900000000001b7740000f303a303a303a303a303a303a303a31737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f4000000000000c770800000010000000047400476f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e6569732e4f6e6c696e6553657373696f6e44414f4c4153545f53594e435f44425f54494d455354414d5071007e00097400506f72672e6170616368652e736869726f2e7375626a6563742e737570706f72742e44656661756c745375626a656374436f6e746578745f41555448454e544943415445445f53455353494f4e5f4b4559737200116a6176612e6c616e672e426f6f6c65616ecd207280d59cfaee0200015a000576616c756578700174004d6f72672e6170616368652e736869726f2e7375626a6563742e737570706f72742e44656661756c745375626a656374436f6e746578745f5052494e434950414c535f53455353494f4e5f4b4559737200326f72672e6170616368652e736869726f2e7375626a6563742e53696d706c655072696e636970616c436f6c6c656374696f6ea87f5825c6a3084a0300014c000f7265616c6d5072696e636970616c7374000f4c6a6176612f7574696c2f4d61703b7870737200176a6176612e7574696c2e4c696e6b6564486173684d617034c04e5c106cc0fb0200015a000b6163636573734f726465727871007e000a3f4000000000000c770800000010000000017400226f72672e6170616368652e736869726f2e7265616c6d2e557365725265616c6d5f30737200176a6176612e7574696c2e4c696e6b656448617368536574d86cd75a95dd2a1e020000787200116a6176612e7574696c2e48617368536574ba44859596b8b7340300007870770c000000023f400000000000017400046a6e647878780077010171007e001578740008757365726e616d6571007e001a78787e7200376f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e4f6e6c696e6553657373696f6e244f6e6c696e6553746174757300000000000000001200007872000e6a6176612e6c616e672e456e756d000000000000000012000078707400076f6e5f6c696e65740014303a303a303a303a303a303a303a313a3930383074006d4d6f7a696c6c612f352e30202857696e646f7773204e5420362e313b20574f57363429204170706c655765624b69742f3533372e333620284b48544d4c2c206c696b65204765636b6f29204368726f6d652f34372e302e323532362e313036205361666172692f3533372e33367372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b0200007870000000000000001371007e001a77020f0071007e002471007e002171007e001e71007e001a78');
INSERT INTO `sys_user_online` VALUES ('1c7aece7-2e5b-454c-83fa-9cb53d2f53dd', '1', 'admin', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1:9080', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36', 'on_line', '2016-05-19 18:36:02', '2016-05-19 18:36:06', '1800000', 'aced00057372002a6f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e4f6e6c696e6553657373696f6e9d1ca1b8d58c626e0300054c00067374617475737400394c6f72672f6170616368652f736869726f2f73657373696f6e2f6d67742f4f6e6c696e6553657373696f6e244f6e6c696e655374617475733b4c000a73797374656d486f73747400124c6a6176612f6c616e672f537472696e673b4c0009757365724167656e7471007e00024c00067573657249647400104c6a6176612f6c616e672f4c6f6e673b4c0008757365726e616d6571007e00027872002a6f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e53696d706c6553657373696f6e9d1ca1b8d58c626e0300007870770200db74002431633761656365372d326535622d343534632d383366612d3963623533643266353364647372000e6a6176612e7574696c2e44617465686a81014b5974190300007870770800000154c8961f2c787371007e0007770800000154c8962dc478771900000000001b7740000f303a303a303a303a303a303a303a31737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f4000000000000c770800000010000000047400476f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e6569732e4f6e6c696e6553657373696f6e44414f4c4153545f53594e435f44425f54494d455354414d5071007e00097400506f72672e6170616368652e736869726f2e7375626a6563742e737570706f72742e44656661756c745375626a656374436f6e746578745f41555448454e544943415445445f53455353494f4e5f4b4559737200116a6176612e6c616e672e426f6f6c65616ecd207280d59cfaee0200015a000576616c756578700174004d6f72672e6170616368652e736869726f2e7375626a6563742e737570706f72742e44656661756c745375626a656374436f6e746578745f5052494e434950414c535f53455353494f4e5f4b4559737200326f72672e6170616368652e736869726f2e7375626a6563742e53696d706c655072696e636970616c436f6c6c656374696f6ea87f5825c6a3084a0300014c000f7265616c6d5072696e636970616c7374000f4c6a6176612f7574696c2f4d61703b7870737200176a6176612e7574696c2e4c696e6b6564486173684d617034c04e5c106cc0fb0200015a000b6163636573734f726465727871007e000a3f4000000000000c770800000010000000017400226f72672e6170616368652e736869726f2e7265616c6d2e557365725265616c6d5f30737200176a6176612e7574696c2e4c696e6b656448617368536574d86cd75a95dd2a1e020000787200116a6176612e7574696c2e48617368536574ba44859596b8b7340300007870770c000000103f4000000000000174000561646d696e78780077010171007e001578740008757365726e616d6571007e001a78787e7200376f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e4f6e6c696e6553657373696f6e244f6e6c696e6553746174757300000000000000001200007872000e6a6176612e6c616e672e456e756d000000000000000012000078707400076f6e5f6c696e65740014303a303a303a303a303a303a303a313a3930383074006d4d6f7a696c6c612f352e30202857696e646f7773204e5420362e313b20574f57363429204170706c655765624b69742f3533372e333620284b48544d4c2c206c696b65204765636b6f29204368726f6d652f34372e302e323532362e313036205361666172692f3533372e33367372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b0200007870000000000000000171007e001a77020f0071007e002471007e002171007e001e71007e001a78');
INSERT INTO `sys_user_online` VALUES ('3c3fc876-9855-4ef1-bcf6-5064b7fd3440', '1', 'admin', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1:9080', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36', 'on_line', '2016-05-19 18:35:12', '2016-05-19 18:35:39', '1800000', 'aced00057372002a6f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e4f6e6c696e6553657373696f6e9d1ca1b8d58c626e0300054c00067374617475737400394c6f72672f6170616368652f736869726f2f73657373696f6e2f6d67742f4f6e6c696e6553657373696f6e244f6e6c696e655374617475733b4c000a73797374656d486f73747400124c6a6176612f6c616e672f537472696e673b4c0009757365724167656e7471007e00024c00067573657249647400104c6a6176612f6c616e672f4c6f6e673b4c0008757365726e616d6571007e00027872002a6f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e53696d706c6553657373696f6e9d1ca1b8d58c626e0300007870770200db74002433633366633837362d393835352d346566312d626366362d3530363462376664333434307372000e6a6176612e7574696c2e44617465686a81014b5974190300007870770800000154c8955bb4787371007e0007770800000154c895c38a78771900000000001b7740000f303a303a303a303a303a303a303a31737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f4000000000000c770800000010000000047400476f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e6569732e4f6e6c696e6553657373696f6e44414f4c4153545f53594e435f44425f54494d455354414d5071007e00097400506f72672e6170616368652e736869726f2e7375626a6563742e737570706f72742e44656661756c745375626a656374436f6e746578745f41555448454e544943415445445f53455353494f4e5f4b4559737200116a6176612e6c616e672e426f6f6c65616ecd207280d59cfaee0200015a000576616c756578700174004d6f72672e6170616368652e736869726f2e7375626a6563742e737570706f72742e44656661756c745375626a656374436f6e746578745f5052494e434950414c535f53455353494f4e5f4b4559737200326f72672e6170616368652e736869726f2e7375626a6563742e53696d706c655072696e636970616c436f6c6c656374696f6ea87f5825c6a3084a0300014c000f7265616c6d5072696e636970616c7374000f4c6a6176612f7574696c2f4d61703b7870737200176a6176612e7574696c2e4c696e6b6564486173684d617034c04e5c106cc0fb0200015a000b6163636573734f726465727871007e000a3f4000000000000c770800000010000000017400226f72672e6170616368652e736869726f2e7265616c6d2e557365725265616c6d5f30737200176a6176612e7574696c2e4c696e6b656448617368536574d86cd75a95dd2a1e020000787200116a6176612e7574696c2e48617368536574ba44859596b8b7340300007870770c000000103f4000000000000174000561646d696e78780077010171007e001578740008757365726e616d6571007e001a78787e7200376f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e4f6e6c696e6553657373696f6e244f6e6c696e6553746174757300000000000000001200007872000e6a6176612e6c616e672e456e756d000000000000000012000078707400076f6e5f6c696e65740014303a303a303a303a303a303a303a313a3930383074006d4d6f7a696c6c612f352e30202857696e646f7773204e5420362e313b20574f57363429204170706c655765624b69742f3533372e333620284b48544d4c2c206c696b65204765636b6f29204368726f6d652f34372e302e323532362e313036205361666172692f3533372e33367372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b0200007870000000000000000171007e001a77020f0071007e002471007e002171007e001e71007e001a78');
INSERT INTO `sys_user_online` VALUES ('46bfb2b8-28fa-4bb9-aa80-1549b12762b1', '37', '20120102012', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1:9080', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36', 'on_line', '2016-05-19 18:34:58', '2016-05-19 18:35:03', '1800000', 'aced00057372002a6f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e4f6e6c696e6553657373696f6e9d1ca1b8d58c626e0300054c00067374617475737400394c6f72672f6170616368652f736869726f2f73657373696f6e2f6d67742f4f6e6c696e6553657373696f6e244f6e6c696e655374617475733b4c000a73797374656d486f73747400124c6a6176612f6c616e672f537472696e673b4c0009757365724167656e7471007e00024c00067573657249647400104c6a6176612f6c616e672f4c6f6e673b4c0008757365726e616d6571007e00027872002a6f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e53696d706c6553657373696f6e9d1ca1b8d58c626e0300007870770200db74002434366266623262382d323866612d346262392d616138302d3135343962313237363262317372000e6a6176612e7574696c2e44617465686a81014b5974190300007870770800000154c89523b0787371007e0007770800000154c89538d278771900000000001b7740000f303a303a303a303a303a303a303a31737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f4000000000000c770800000010000000047400476f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e6569732e4f6e6c696e6553657373696f6e44414f4c4153545f53594e435f44425f54494d455354414d5071007e00097400506f72672e6170616368652e736869726f2e7375626a6563742e737570706f72742e44656661756c745375626a656374436f6e746578745f41555448454e544943415445445f53455353494f4e5f4b4559737200116a6176612e6c616e672e426f6f6c65616ecd207280d59cfaee0200015a000576616c756578700174004d6f72672e6170616368652e736869726f2e7375626a6563742e737570706f72742e44656661756c745375626a656374436f6e746578745f5052494e434950414c535f53455353494f4e5f4b4559737200326f72672e6170616368652e736869726f2e7375626a6563742e53696d706c655072696e636970616c436f6c6c656374696f6ea87f5825c6a3084a0300014c000f7265616c6d5072696e636970616c7374000f4c6a6176612f7574696c2f4d61703b7870737200176a6176612e7574696c2e4c696e6b6564486173684d617034c04e5c106cc0fb0200015a000b6163636573734f726465727871007e000a3f4000000000000c770800000010000000017400226f72672e6170616368652e736869726f2e7265616c6d2e557365725265616c6d5f30737200176a6176612e7574696c2e4c696e6b656448617368536574d86cd75a95dd2a1e020000787200116a6176612e7574696c2e48617368536574ba44859596b8b7340300007870770c000000103f4000000000000174000b323031323031303230313278780077010171007e001578740008757365726e616d6571007e001a78787e7200376f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e4f6e6c696e6553657373696f6e244f6e6c696e6553746174757300000000000000001200007872000e6a6176612e6c616e672e456e756d000000000000000012000078707400076f6e5f6c696e65740014303a303a303a303a303a303a303a313a3930383074006d4d6f7a696c6c612f352e30202857696e646f7773204e5420362e313b20574f57363429204170706c655765624b69742f3533372e333620284b48544d4c2c206c696b65204765636b6f29204368726f6d652f34372e302e323532362e313036205361666172692f3533372e33367372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b0200007870000000000000002571007e001a77020f0071007e002471007e002171007e001e71007e001a78');
INSERT INTO `sys_user_online` VALUES ('7e042470-8264-4042-8a52-e524b763ea77', '26', '20120102001', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1:9080', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36', 'on_line', '2016-05-19 18:35:54', '2016-05-19 18:35:58', '1800000', 'aced00057372002a6f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e4f6e6c696e6553657373696f6e9d1ca1b8d58c626e0300054c00067374617475737400394c6f72672f6170616368652f736869726f2f73657373696f6e2f6d67742f4f6e6c696e6553657373696f6e244f6e6c696e655374617475733b4c000a73797374656d486f73747400124c6a6176612f6c616e672f537472696e673b4c0009757365724167656e7471007e00024c00067573657249647400104c6a6176612f6c616e672f4c6f6e673b4c0008757365726e616d6571007e00027872002a6f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e53696d706c6553657373696f6e9d1ca1b8d58c626e0300007870770200db74002437653034323437302d383236342d343034322d386135322d6535323462373633656137377372000e6a6176612e7574696c2e44617465686a81014b5974190300007870770800000154c895fd30787371007e0007770800000154c8960e5f78771900000000001b7740000f303a303a303a303a303a303a303a31737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f4000000000000c770800000010000000047400476f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e6569732e4f6e6c696e6553657373696f6e44414f4c4153545f53594e435f44425f54494d455354414d5071007e00097400506f72672e6170616368652e736869726f2e7375626a6563742e737570706f72742e44656661756c745375626a656374436f6e746578745f41555448454e544943415445445f53455353494f4e5f4b4559737200116a6176612e6c616e672e426f6f6c65616ecd207280d59cfaee0200015a000576616c756578700174004d6f72672e6170616368652e736869726f2e7375626a6563742e737570706f72742e44656661756c745375626a656374436f6e746578745f5052494e434950414c535f53455353494f4e5f4b4559737200326f72672e6170616368652e736869726f2e7375626a6563742e53696d706c655072696e636970616c436f6c6c656374696f6ea87f5825c6a3084a0300014c000f7265616c6d5072696e636970616c7374000f4c6a6176612f7574696c2f4d61703b7870737200176a6176612e7574696c2e4c696e6b6564486173684d617034c04e5c106cc0fb0200015a000b6163636573734f726465727871007e000a3f4000000000000c770800000010000000017400226f72672e6170616368652e736869726f2e7265616c6d2e557365725265616c6d5f30737200176a6176612e7574696c2e4c696e6b656448617368536574d86cd75a95dd2a1e020000787200116a6176612e7574696c2e48617368536574ba44859596b8b7340300007870770c000000103f4000000000000174000b323031323031303230303178780077010171007e001578740008757365726e616d6571007e001a78787e7200376f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e4f6e6c696e6553657373696f6e244f6e6c696e6553746174757300000000000000001200007872000e6a6176612e6c616e672e456e756d000000000000000012000078707400076f6e5f6c696e65740014303a303a303a303a303a303a303a313a3930383074006d4d6f7a696c6c612f352e30202857696e646f7773204e5420362e313b20574f57363429204170706c655765624b69742f3533372e333620284b48544d4c2c206c696b65204765636b6f29204368726f6d652f34372e302e323532362e313036205361666172692f3533372e33367372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b0200007870000000000000001a71007e001a77020f0071007e002471007e002171007e001e71007e001a78');
INSERT INTO `sys_user_online` VALUES ('ad083199-ffac-4e89-9904-408ab07e4ee6', '1', 'admin', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1:9080', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36', 'on_line', '2016-05-19 18:18:06', '2016-05-19 18:18:09', '1800000', 'aced00057372002a6f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e4f6e6c696e6553657373696f6e9d1ca1b8d58c626e0300054c00067374617475737400394c6f72672f6170616368652f736869726f2f73657373696f6e2f6d67742f4f6e6c696e6553657373696f6e244f6e6c696e655374617475733b4c000a73797374656d486f73747400124c6a6176612f6c616e672f537472696e673b4c0009757365724167656e7471007e00024c00067573657249647400104c6a6176612f6c616e672f4c6f6e673b4c0008757365726e616d6571007e00027872002a6f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e53696d706c6553657373696f6e9d1ca1b8d58c626e0300007870770200db74002461643038333139392d666661632d346538392d393930342d3430386162303765346565367372000e6a6176612e7574696c2e44617465686a81014b5974190300007870770800000154c885b30c787371007e0007770800000154c885c0d378771900000000001b7740000f303a303a303a303a303a303a303a31737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f4000000000000c770800000010000000047400476f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e6569732e4f6e6c696e6553657373696f6e44414f4c4153545f53594e435f44425f54494d455354414d5071007e00097400506f72672e6170616368652e736869726f2e7375626a6563742e737570706f72742e44656661756c745375626a656374436f6e746578745f41555448454e544943415445445f53455353494f4e5f4b4559737200116a6176612e6c616e672e426f6f6c65616ecd207280d59cfaee0200015a000576616c756578700174004d6f72672e6170616368652e736869726f2e7375626a6563742e737570706f72742e44656661756c745375626a656374436f6e746578745f5052494e434950414c535f53455353494f4e5f4b4559737200326f72672e6170616368652e736869726f2e7375626a6563742e53696d706c655072696e636970616c436f6c6c656374696f6ea87f5825c6a3084a0300014c000f7265616c6d5072696e636970616c7374000f4c6a6176612f7574696c2f4d61703b7870737200176a6176612e7574696c2e4c696e6b6564486173684d617034c04e5c106cc0fb0200015a000b6163636573734f726465727871007e000a3f4000000000000c770800000010000000017400226f72672e6170616368652e736869726f2e7265616c6d2e557365725265616c6d5f30737200176a6176612e7574696c2e4c696e6b656448617368536574d86cd75a95dd2a1e020000787200116a6176612e7574696c2e48617368536574ba44859596b8b7340300007870770c000000103f4000000000000174000561646d696e78780077010171007e001578740008757365726e616d6571007e001a78787e7200376f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e4f6e6c696e6553657373696f6e244f6e6c696e6553746174757300000000000000001200007872000e6a6176612e6c616e672e456e756d000000000000000012000078707400076f6e5f6c696e65740014303a303a303a303a303a303a303a313a3930383074006d4d6f7a696c6c612f352e30202857696e646f7773204e5420362e313b20574f57363429204170706c655765624b69742f3533372e333620284b48544d4c2c206c696b65204765636b6f29204368726f6d652f34372e302e323532362e313036205361666172692f3533372e33367372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b0200007870000000000000000171007e001a77020f0071007e002471007e002171007e001e71007e001a78');
INSERT INTO `sys_user_online` VALUES ('cc24783a-12a1-415e-bed0-884a2896987c', '19', 'jndx', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1:9080', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36', 'on_line', '2016-05-19 18:18:15', '2016-05-19 18:24:09', '1800000', 'aced00057372002a6f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e4f6e6c696e6553657373696f6e9d1ca1b8d58c626e0300054c00067374617475737400394c6f72672f6170616368652f736869726f2f73657373696f6e2f6d67742f4f6e6c696e6553657373696f6e244f6e6c696e655374617475733b4c000a73797374656d486f73747400124c6a6176612f6c616e672f537472696e673b4c0009757365724167656e7471007e00024c00067573657249647400104c6a6176612f6c616e672f4c6f6e673b4c0008757365726e616d6571007e00027872002a6f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e53696d706c6553657373696f6e9d1ca1b8d58c626e0300007870770200db74002463633234373833612d313261312d343135652d626564302d3838346132383936393837637372000e6a6176612e7574696c2e44617465686a81014b5974190300007870770800000154c885d7f5787371007e0007770800000154c88b3bfa78771900000000001b7740000f303a303a303a303a303a303a303a31737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f4000000000000c770800000010000000047400476f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e6569732e4f6e6c696e6553657373696f6e44414f4c4153545f53594e435f44425f54494d455354414d5071007e00097400506f72672e6170616368652e736869726f2e7375626a6563742e737570706f72742e44656661756c745375626a656374436f6e746578745f41555448454e544943415445445f53455353494f4e5f4b4559737200116a6176612e6c616e672e426f6f6c65616ecd207280d59cfaee0200015a000576616c756578700174004d6f72672e6170616368652e736869726f2e7375626a6563742e737570706f72742e44656661756c745375626a656374436f6e746578745f5052494e434950414c535f53455353494f4e5f4b4559737200326f72672e6170616368652e736869726f2e7375626a6563742e53696d706c655072696e636970616c436f6c6c656374696f6ea87f5825c6a3084a0300014c000f7265616c6d5072696e636970616c7374000f4c6a6176612f7574696c2f4d61703b7870737200176a6176612e7574696c2e4c696e6b6564486173684d617034c04e5c106cc0fb0200015a000b6163636573734f726465727871007e000a3f4000000000000c770800000010000000017400226f72672e6170616368652e736869726f2e7265616c6d2e557365725265616c6d5f30737200176a6176612e7574696c2e4c696e6b656448617368536574d86cd75a95dd2a1e020000787200116a6176612e7574696c2e48617368536574ba44859596b8b7340300007870770c000000103f400000000000017400046a6e647878780077010171007e001578740008757365726e616d6571007e001a78787e7200376f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e4f6e6c696e6553657373696f6e244f6e6c696e6553746174757300000000000000001200007872000e6a6176612e6c616e672e456e756d000000000000000012000078707400076f6e5f6c696e65740014303a303a303a303a303a303a303a313a3930383074006d4d6f7a696c6c612f352e30202857696e646f7773204e5420362e313b20574f57363429204170706c655765624b69742f3533372e333620284b48544d4c2c206c696b65204765636b6f29204368726f6d652f34372e302e323532362e313036205361666172692f3533372e33367372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b0200007870000000000000001371007e001a77020f0071007e002471007e002171007e001e71007e001a78');
INSERT INTO `sys_user_online` VALUES ('cedf0858-edf9-4101-b52f-6c475db0616c', '15', '20160101', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1:9080', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36', 'on_line', '2016-05-19 18:26:41', '2016-05-19 18:32:32', '1800000', 'aced00057372002a6f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e4f6e6c696e6553657373696f6e9d1ca1b8d58c626e0300054c00067374617475737400394c6f72672f6170616368652f736869726f2f73657373696f6e2f6d67742f4f6e6c696e6553657373696f6e244f6e6c696e655374617475733b4c000a73797374656d486f73747400124c6a6176612f6c616e672f537472696e673b4c0009757365724167656e7471007e00024c00067573657249647400104c6a6176612f6c616e672f4c6f6e673b4c0008757365726e616d6571007e00027872002a6f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e53696d706c6553657373696f6e9d1ca1b8d58c626e0300007870770200db74002463656466303835382d656466392d343130312d623532662d3663343735646230363136637372000e6a6176612e7574696c2e44617465686a81014b5974190300007870770800000154c88d8fed787371007e0007770800000154c892ea2878771900000000001b7740000f303a303a303a303a303a303a303a31737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f4000000000000c770800000010000000047400476f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e6569732e4f6e6c696e6553657373696f6e44414f4c4153545f53594e435f44425f54494d455354414d5071007e00097400506f72672e6170616368652e736869726f2e7375626a6563742e737570706f72742e44656661756c745375626a656374436f6e746578745f41555448454e544943415445445f53455353494f4e5f4b4559737200116a6176612e6c616e672e426f6f6c65616ecd207280d59cfaee0200015a000576616c756578700174004d6f72672e6170616368652e736869726f2e7375626a6563742e737570706f72742e44656661756c745375626a656374436f6e746578745f5052494e434950414c535f53455353494f4e5f4b4559737200326f72672e6170616368652e736869726f2e7375626a6563742e53696d706c655072696e636970616c436f6c6c656374696f6ea87f5825c6a3084a0300014c000f7265616c6d5072696e636970616c7374000f4c6a6176612f7574696c2f4d61703b7870737200176a6176612e7574696c2e4c696e6b6564486173684d617034c04e5c106cc0fb0200015a000b6163636573734f726465727871007e000a3f4000000000000c770800000010000000017400226f72672e6170616368652e736869726f2e7265616c6d2e557365725265616c6d5f30737200176a6176612e7574696c2e4c696e6b656448617368536574d86cd75a95dd2a1e020000787200116a6176612e7574696c2e48617368536574ba44859596b8b7340300007870770c000000023f40000000000001740008323031363031303178780077010171007e001578740008757365726e616d6571007e001a78787e7200376f72672e6170616368652e736869726f2e73657373696f6e2e6d67742e4f6e6c696e6553657373696f6e244f6e6c696e6553746174757300000000000000001200007872000e6a6176612e6c616e672e456e756d000000000000000012000078707400076f6e5f6c696e65740014303a303a303a303a303a303a303a313a3930383074006d4d6f7a696c6c612f352e30202857696e646f7773204e5420362e313b20574f57363429204170706c655765624b69742f3533372e333620284b48544d4c2c206c696b65204765636b6f29204368726f6d652f34372e302e323532362e313036205361666172692f3533372e33367372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b0200007870000000000000000f71007e001a77020f0071007e002471007e002171007e001e71007e001a78');

-- ----------------------------
-- Table structure for sys_user_organization_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_organization_job`;
CREATE TABLE `sys_user_organization_job` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `organization_id` bigint(20) DEFAULT NULL,
  `job_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_sys_user_organization_job` (`user_id`,`organization_id`,`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_organization_job
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_status_history
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_status_history`;
CREATE TABLE `sys_user_status_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `reason` varchar(200) DEFAULT NULL,
  `op_user_id` bigint(20) DEFAULT NULL,
  `op_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_sys_user_block_history_user_id_block_date` (`user_id`,`op_date`),
  KEY `idx_sys_user_block_history_op_user_id_op_date` (`op_user_id`,`op_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_status_history
-- ----------------------------
DROP TRIGGER IF EXISTS `trigger_sys_user_off_online`;
DELIMITER ;;
CREATE TRIGGER `trigger_sys_user_off_online` AFTER DELETE ON `sys_user_online` FOR EACH ROW begin
   if OLD.`user_id` is not null then
      if not exists(select `user_id` from `sys_user_last_online` where `user_id` = OLD.`user_id`) then
        insert into `sys_user_last_online`
                  (`user_id`, `username`, `uid`, `host`, `user_agent`, `system_host`,
                   `last_login_timestamp`, `last_stop_timestamp`, `login_count`, `total_online_time`)
                values
                   (OLD.`user_id`,OLD.`username`, OLD.`id`, OLD.`host`, OLD.`user_agent`, OLD.`system_host`,
                    OLD.`start_timestsamp`, OLD.`last_access_time`,
                    1, (OLD.`last_access_time` - OLD.`start_timestsamp`));
      else
        update `sys_user_last_online`
          set `username` = OLD.`username`, `uid` = OLD.`id`, `host` = OLD.`host`, `user_agent` = OLD.`user_agent`,
            `system_host` = OLD.`system_host`, `last_login_timestamp` = OLD.`start_timestsamp`,
             `last_stop_timestamp` = OLD.`last_access_time`, `login_count` = `login_count` + 1,
             `total_online_time` = `total_online_time` + (OLD.`last_access_time` - OLD.`start_timestsamp`)
        where `user_id` = OLD.`user_id`;
      end if ;
   end if;
end
;;
DELIMITER ;

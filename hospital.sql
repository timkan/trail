-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 04, 2012 at 08:51 PM
-- Server version: 5.5.24-0ubuntu0.12.04.1
-- PHP Version: 5.3.10-1ubuntu3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `think_access`
--

CREATE TABLE IF NOT EXISTS `think_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `pid` smallint(6) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `think_access`
--

INSERT INTO `think_access` (`role_id`, `node_id`, `level`, `pid`, `module`) VALUES
(1, 40, 2, 1, NULL),
(1, 30, 2, 1, NULL),
(1, 29, 2, 1, NULL),
(1, 28, 2, 1, NULL),
(1, 26, 2, 1, NULL),
(1, 19, 3, 18, NULL),
(1, 20, 3, 18, NULL),
(1, 21, 3, 18, NULL),
(1, 22, 3, 18, NULL),
(1, 23, 3, 18, NULL),
(1, 24, 3, 18, NULL),
(1, 25, 3, 18, NULL),
(1, 26, 3, 18, NULL),
(1, 1, 1, 0, NULL),
(2, 1, 1, 0, NULL),
(3, 1, 1, 0, NULL),
(2, 49, 3, 30, NULL),
(2, 45, 3, 30, NULL),
(2, 44, 3, 30, NULL),
(2, 43, 3, 30, NULL),
(2, 42, 3, 30, NULL),
(2, 41, 3, 30, NULL),
(2, 30, 2, 1, NULL),
(1, 23, 2, 1, NULL),
(1, 24, 2, 1, NULL),
(1, 58, 2, 1, NULL),
(1, 57, 2, 1, NULL),
(1, 46, 2, 1, NULL),
(3, 24, 2, 1, NULL),
(3, 23, 2, 1, NULL),
(3, 16, 2, 1, NULL),
(3, 13, 2, 1, NULL),
(3, 31, 3, 30, NULL),
(3, 32, 3, 30, NULL),
(3, 33, 3, 30, NULL),
(3, 34, 3, 30, NULL),
(3, 35, 3, 30, NULL),
(3, 36, 3, 30, NULL),
(3, 37, 3, 30, NULL),
(3, 38, 3, 30, NULL),
(3, 39, 3, 30, NULL),
(1, 21, 2, 1, NULL),
(1, 20, 2, 1, NULL),
(1, 11, 2, 1, NULL),
(1, 5, 2, 1, NULL),
(1, 4, 2, 1, NULL),
(1, 3, 2, 1, NULL),
(2, 40, 2, 1, NULL),
(2, 39, 3, 30, NULL),
(2, 38, 3, 30, NULL),
(2, 34, 3, 30, NULL),
(2, 33, 3, 30, NULL),
(2, 32, 3, 30, NULL),
(1, 48, 3, 30, NULL),
(1, 47, 3, 30, NULL),
(1, 45, 3, 30, NULL),
(1, 44, 3, 30, NULL),
(1, 43, 3, 30, NULL),
(1, 42, 3, 30, NULL),
(1, 41, 3, 30, NULL),
(1, 39, 3, 30, NULL),
(1, 38, 3, 30, NULL),
(1, 37, 3, 30, NULL),
(1, 36, 3, 30, NULL),
(1, 35, 3, 30, NULL),
(1, 34, 3, 30, NULL),
(1, 33, 3, 30, NULL),
(1, 32, 3, 30, NULL),
(1, 31, 3, 30, NULL),
(1, 49, 3, 30, NULL),
(2, 31, 3, 30, NULL),
(2, 50, 3, 40, NULL),
(2, 53, 3, 30, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `think_attach`
--

CREATE TABLE IF NOT EXISTS `think_attach` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `size` varchar(20) NOT NULL,
  `extension` varchar(20) NOT NULL,
  `savepath` varchar(255) NOT NULL,
  `savename` varchar(255) NOT NULL,
  `module` varchar(100) NOT NULL,
  `record_id` int(11) NOT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `create_time` int(11) unsigned DEFAULT NULL,
  `download_count` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `hash` varchar(32) NOT NULL,
  `pid` int(12) unsigned NOT NULL,
  `sort` int(8) unsigned NOT NULL,
  `version` smallint(3) unsigned NOT NULL,
  `is_dir` tinyint(1) unsigned NOT NULL,
  `remark` varchar(255) NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  `verify` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `is_top` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `module` (`module`),
  KEY `recordId` (`record_id`),
  KEY `userId` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=146 ;

--
-- Dumping data for table `think_attach`
--

INSERT INTO `think_attach` (`id`, `name`, `type`, `size`, `extension`, `savepath`, `savename`, `module`, `record_id`, `user_id`, `create_time`, `download_count`, `hash`, `pid`, `sort`, `version`, `is_dir`, `remark`, `update_time`, `verify`, `status`, `is_top`) VALUES
(1, 'new.png', 'image/x-png', '97475', 'png', './../Public/Uploads/', '493f84a539136.png', 'Blog', 2, 1, 1228899493, 12, '6ac37127ed401dd638191c96726a24c5', 0, 0, 0, 0, '', 0, '0', 1, 0),
(4, 'TP壁纸_圣诞红1024X768.jpg', 'image/pjpeg', '187275', 'jpg', './../Public/Uploads/', '4942886cf3920.jpg', 'Down', 3, 1, 1229097069, 956, '1a21bd1c315decc6dcdccc1a25b69927', 0, 0, 0, 0, '', 0, '0', 1, 0),
(5, 'TP壁纸_圣诞红1280X800.jpg', 'image/pjpeg', '208494', 'jpg', './../Public/Uploads/', '4942886d07bab.jpg', 'Down', 3, 1, 1229097069, 950, '9d4a524a7efdfac8a56691031aabd972', 0, 0, 0, 0, '', 0, '0', 1, 0),
(6, 'TP壁纸_圣诞红1280X1024.jpg', 'image/pjpeg', '261127', 'jpg', './../Public/Uploads/', '4942886d0cdb1.jpg', 'Down', 3, 1, 1229097069, 1858, 'c81956c0d712b0656c0d7015ad99d8d7', 0, 0, 0, 0, '', 0, '0', 1, 0),
(7, 'TP壁纸_圣诞红1440X900.jpg', 'image/pjpeg', '229468', 'jpg', './../Public/Uploads/', '4942886d1798d.jpg', 'Down', 3, 1, 1229097069, 972, '71de43ec77c2aa3933c5c7a625e91a4e', 0, 0, 0, 0, '', 0, '0', 1, 0),
(8, 'TP壁纸_圣诞红1600X1200.jpg', 'image/pjpeg', '313103', 'jpg', './../Public/Uploads/', '4942886d1ac54.jpg', 'Down', 3, 1, 1229097069, 974, 'a435b13aa9e933273efc3ac8d088eaa4', 0, 0, 0, 0, '', 0, '0', 1, 0),
(9, 'TP壁纸_圣诞红320X240.jpg', 'image/pjpeg', '56371', 'jpg', './../Public/Uploads/', '4942886d238f2.jpg', 'Down', 3, 1, 1229097069, 1024, '56d80b62263d50fbab1213ac21384a46', 0, 0, 0, 0, '', 0, '0', 1, 0),
(10, 'TP壁纸_圣诞红240X320.jpg', 'image/pjpeg', '54492', 'jpg', './../Public/Uploads/', '4942886d244b4.jpg', 'Down', 3, 1, 1229097069, 1022, '7f93c28a86daf5910ecf33168a234697', 0, 0, 0, 0, '', 0, '0', 1, 0),
(11, 'TP壁纸_圣诞蓝240X320.jpg', 'image/pjpeg', '56021', 'jpg', './../Public/Uploads/', '494613325fdb9.jpg', 'Down', 3, 1, 1229329202, 981, 'f2a3af32e350e9005c7c2011ee8da4dd', 0, 0, 0, 0, '', 0, '0', 1, 0),
(12, 'TP壁纸_圣诞蓝320X240.jpg', 'image/pjpeg', '57569', 'jpg', './../Public/Uploads/', '4946133260971.jpg', 'Down', 3, 1, 1229329202, 1068, 'd626879a68faeed64b179a94b7035d2a', 0, 0, 0, 0, '', 0, '0', 1, 0),
(13, 'TP壁纸_圣诞蓝1024X768.jpg', 'image/pjpeg', '137953', 'jpg', './../Public/Uploads/', '4946133261528.jpg', 'Down', 3, 1, 1229329202, 1232, '3d86cda08af41acff56ab53f8137ecf5', 0, 0, 0, 0, '', 0, '0', 1, 0),
(14, 'TP壁纸_圣诞蓝1280X800.jpg', 'image/pjpeg', '153744', 'jpg', './../Public/Uploads/', '4946133267ab6.jpg', 'Down', 3, 1, 1229329202, 1182, '14e6f34cef5e375db0ddf7e143c81ba5', 0, 0, 0, 0, '', 0, '0', 1, 0),
(15, 'TP壁纸_圣诞蓝1440X900.jpg', 'image/pjpeg', '175887', 'jpg', './../Public/Uploads/', '494613326e433.jpg', 'Down', 3, 1, 1229329202, 1239, 'faa8cc7183467320cde8598791c74550', 0, 0, 0, 0, '', 0, '0', 1, 0),
(16, 'TP壁纸_圣诞蓝1600X1200.jpg', 'image/pjpeg', '210907', 'jpg', './../Public/Uploads/', '494613326f7ba.jpg', 'Down', 3, 1, 1229329202, 1730, '483a188a1db3ac99de2a48218b1cd9e0', 0, 0, 0, 0, 'TP圣诞壁纸 蓝色', 1229477590, '0', 1, 0),
(18, 'ThinkPHP快速入门.pdf', 'application/pdf', '886070', 'pdf', '../Public/Uploads/', '49486ddef0f30.pdf', 'Down', 2, 1, 1229483487, 5671, '75e13a3e4275fb6db980ffe4cfb79b8e', 0, 0, 0, 0, '', 0, '0', 1, 0),
(19, 'ThinkPHP数据操作指南.pdf', 'application/pdf', '692869', 'pdf', '../Public/Uploads/', '49486ddf07710.pdf', 'Down', 2, 1, 1229483487, 3452, '51c85a2db83dc88b3dd362d3618266c8', 0, 0, 0, 0, '', 0, '0', 1, 0),
(20, 'ThinkPHP模板指南.pdf', 'application/pdf', '546329', 'pdf', '../Public/Uploads/', '49486ddf09e33.pdf', 'Down', 2, 1, 1229483487, 2850, '2921a3c6e6bff1ec57b61ab59d412ce5', 0, 0, 0, 0, '', 0, '0', 1, 0),
(21, 'ThinkPHP项目自动生成和编译.pdf', 'application/pdf', '266098', 'pdf', '../Public/Uploads/', '49486ddf0f51d.pdf', 'Down', 2, 1, 1229483487, 2360, '1ebdd89b464f854a5ba059917ce43c9f', 0, 0, 0, 0, '', 0, '0', 1, 0),
(22, 'ThinkPHP类库导入和自动加载.pdf', 'application/pdf', '320256', 'pdf', '../Public/Uploads/', '49486ddf197d4.pdf', 'Down', 2, 1, 1229483487, 2381, '3d06fe1631c2a3630054efcbe98f2b0f', 0, 0, 0, 0, '', 0, '0', 1, 0),
(23, 'ThinkPHP执行流程.pdf', 'application/pdf', '268921', 'pdf', '../Public/Uploads/', '49486ddf20a89.pdf', 'Down', 2, 1, 1229483487, 2408, '4bd2bc1e8f61c1bad97887b9278c2079', 0, 0, 0, 0, '', 0, '0', 1, 0),
(24, 'ThinkPHP可配置的静态缓存设计.pdf', 'application/pdf', '227769', 'pdf', '../Public/Uploads/', '49486ddf229d2.pdf', 'Down', 2, 1, 1229483487, 2175, 'aa0f808648ca5898bb9fcb74c1f7191c', 0, 0, 0, 0, '', 0, '0', 1, 0),
(25, 'ThinkPHP 错误调试和日志.pdf', 'application/pdf', '428506', 'pdf', '../Public/Uploads/', '49486ddf24349.pdf', 'Down', 2, 1, 1229483487, 2434, 'ad8fa699819b7f134d57f029cda38d87', 0, 0, 0, 0, '', 0, '0', 1, 0),
(26, 'ThinkPHP URL设计和SEO支持.pdf', 'application/pdf', '362826', 'pdf', '../Public/Uploads/', '49486ddf26855.pdf', 'Down', 2, 1, 1229483487, 2327, '8b34df86c291346ae21f1eef33c35629', 0, 0, 0, 0, '', 0, '0', 1, 0),
(27, 'ThinkPHP多语言的使用和配置.pdf', 'application/pdf', '255951', 'pdf', '../Public/Uploads/', '49486ddf2987e.pdf', 'Down', 2, 1, 1229483487, 2214, '485ac6e14796cc2c3acf4a9c50fd002c', 0, 0, 0, 0, '', 0, '0', 1, 0),
(28, 'ThinkPHP关联操作.pdf', 'application/pdf', '363927', 'pdf', '../Public/Uploads/', '49486ddf2b28d.pdf', 'Down', 2, 1, 1229483487, 2714, '973533790b29f6e74a9bcd71756859db', 0, 0, 0, 0, '', 0, '0', 1, 0),
(29, 'ThinkPHP 基于角色的权限控制.pdf', 'application/pdf', '673609', 'pdf', '../Public/Uploads/', '49486e568a270.pdf', 'Down', 2, 1, 1229483606, 3199, '1f4bfb84b72068ea874a6c14e23803bc', 0, 0, 0, 0, '', 0, '0', 1, 0),
(30, 'ThinkPHP表单令牌设计.pdf', 'application/pdf', '163498', 'pdf', '../Public/Uploads/', '49486e569987e.pdf', 'Down', 2, 1, 1229483606, 2215, '41b5713f900d450080d7f6f53acd34fe', 0, 0, 0, 0, '', 0, '0', 1, 0),
(31, 'ThinkPHP编码规范.pdf', 'application/pdf', '673464', 'pdf', '../Public/Uploads/', '49486e569a81d.pdf', 'Down', 2, 1, 1229483606, 2465, 'e93aa8fdd029e31180708de299623a5b', 0, 0, 0, 0, '', 0, '0', 1, 0),
(32, 'ThinkPHP配置指南和参考.pdf', 'application/pdf', '386307', 'pdf', '../Public/Uploads/', '49486e569c75d.pdf', 'Down', 2, 1, 1229483606, 2481, '5e825cb9b90760db7cc3530ed2dc93f8', 0, 0, 0, 0, '', 0, '0', 1, 0),
(33, 'ThinkPHP视图模型.pdf', 'application/pdf', '290260', 'pdf', '../Public/Uploads/', '49486e569dae5.pdf', 'Down', 2, 1, 1229483606, 2459, '819c01a21c9651901d2ff9f19ebf73c8', 0, 0, 0, 0, '', 0, '0', 1, 0),
(34, 'ThinkPHP URL设计和SEO支持.swf', 'application/x-shockwave-flash', '170426', 'swf', '../Public/Uploads/', '49486eebaa01e.swf', 'Down', 2, 1, 1229483755, 1778, '699852a9664cf2211dbc7b5974492a60', 0, 0, 0, 0, '', 0, '0', 1, 0),
(35, 'ThinkPHP 错误调试和日志.swf', 'application/x-shockwave-flash', '227384', 'swf', '../Public/Uploads/', '49486eebab38f.swf', 'Down', 2, 1, 1229483755, 1746, '4c6410ca34597d247ad0043fa59ed8ef', 0, 0, 0, 0, '', 0, '0', 1, 0),
(36, 'ThinkPHP 基于角色的权限控制.swf', 'application/x-shockwave-flash', '346278', 'swf', '../Public/Uploads/', '49486eebacafe.swf', 'Down', 2, 1, 1229483755, 2004, '98f083a93ebc5402edf2a16659592e57', 0, 0, 0, 0, '', 0, '0', 1, 0),
(37, 'ThinkPHP编码规范.swf', 'application/x-shockwave-flash', '280554', 'swf', '../Public/Uploads/', '49486eebaea3e.swf', 'Down', 2, 1, 1229483755, 1628, '407f3d82ddb97542e6ef42190394adaf', 0, 0, 0, 0, '', 0, '0', 1, 0),
(38, 'ThinkPHP表单令牌设计.swf', 'application/x-shockwave-flash', '101116', 'swf', '../Public/Uploads/', '49486eebb0599.swf', 'Down', 2, 1, 1229483755, 1554, 'b6780ff8ce474344a1aa2545cbc59aa4', 0, 0, 0, 0, '', 0, '0', 1, 0),
(39, 'ThinkPHP多语言的使用和配置.swf', 'application/x-shockwave-flash', '126026', 'swf', '../Public/Uploads/', '49486eebb1534.swf', 'Down', 2, 1, 1229483755, 1563, 'a057b16a21195a004d812a6058c98a9a', 0, 0, 0, 0, '', 0, '0', 1, 0),
(40, 'ThinkPHP关联操作.swf', 'application/x-shockwave-flash', '148782', 'swf', '../Public/Uploads/', '49486eebb28bc.swf', 'Down', 2, 1, 1229483755, 1681, '36d22a77f9b731413bea516318f8fc13', 0, 0, 0, 0, '', 0, '0', 1, 0),
(41, 'ThinkPHP可配置的静态缓存设计.swf', 'application/x-shockwave-flash', '118346', 'swf', '../Public/Uploads/', '49486eebb3c43.swf', 'Down', 2, 1, 1229483755, 1569, 'd75780c84ff8679c9e8083d10d7311ce', 0, 0, 0, 0, '', 0, '0', 1, 0),
(42, 'ThinkPHP快速入门.swf', 'application/x-shockwave-flash', '538927', 'swf', '../Public/Uploads/', '49486eebb4be4.swf', 'Down', 2, 1, 1229483755, 4067, '2ca029b37ef27015e7eea0e4a4e4bb9c', 0, 0, 0, 0, '', 0, '0', 1, 0),
(43, 'ThinkPHP类库导入和自动加载.swf', 'application/x-shockwave-flash', '147798', 'swf', '../Public/Uploads/', '49486f66a6149.swf', 'Down', 2, 1, 1229483878, 1636, '5275fa7aa29e462eaaab717340735d75', 0, 0, 0, 0, '', 0, '0', 1, 0),
(44, 'ThinkPHP模板指南.swf', 'application/x-shockwave-flash', '210329', 'swf', '../Public/Uploads/', '49486f66a74ce.swf', 'Down', 2, 1, 1229483878, 2455, '186d6dd0532330e996666eae99d1e33e', 0, 0, 0, 0, '', 0, '0', 1, 0),
(45, 'ThinkPHP配置指南和参考.swf', 'application/x-shockwave-flash', '178146', 'swf', '../Public/Uploads/', '49486f66a8c3e.swf', 'Down', 2, 1, 1229483878, 1980, '0bfa99dd681297b44d1d64ff79f1e7a8', 0, 0, 0, 0, '', 0, '0', 1, 0),
(46, 'ThinkPHP视图模型.swf', 'application/x-shockwave-flash', '133685', 'swf', '../Public/Uploads/', '49486f66a9fc5.swf', 'Down', 2, 1, 1229483878, 1755, '5458fb2ae3fec8ed329d9341e3a4ab35', 0, 0, 0, 0, '', 0, '0', 1, 0),
(47, 'ThinkPHP数据操作指南.swf', 'application/x-shockwave-flash', '312888', 'swf', '../Public/Uploads/', '49486f66abb1e.swf', 'Down', 2, 1, 1229483878, 2330, '3fef69283c2c7f922e74e39c24c99691', 0, 0, 0, 0, '', 0, '0', 1, 0),
(48, 'ThinkPHP项目自动生成和编译.swf', 'application/x-shockwave-flash', '135995', 'swf', '../Public/Uploads/', '49486f66ae538.swf', 'Down', 2, 1, 1229483878, 1721, 'bfbbfe8005882361e7f7624cf73c9f41', 0, 0, 0, 0, '', 0, '0', 1, 0),
(49, 'ThinkPHP执行流程.swf', 'application/x-shockwave-flash', '130594', 'swf', '../Public/Uploads/', '49486f66af9d4.swf', 'Down', 2, 1, 1229483878, 1933, '65ce72a5d132269f6461307ebeff633e', 0, 0, 0, 0, '', 0, '0', 1, 0),
(50, 'ThinkPHP URL设计和SEO支持.chm', 'application/octet-stream', '45215', 'chm', '../Public/Uploads/', '494871867de09.chm', 'Down', 2, 1, 1229484422, 2702, 'd9e8bf25178737a4bcfbfc313fc85360', 0, 0, 0, 0, '', 0, '0', 1, 0),
(51, 'ThinkPHP 错误调试和日志.chm', 'application/octet-stream', '79157', 'chm', '../Public/Uploads/', '494871867eda5.chm', 'Down', 2, 1, 1229484422, 2758, '128de5b57393a09a033fcf1652e8f522', 0, 0, 0, 0, '', 0, '0', 1, 0),
(52, 'ThinkPHP 基于角色的权限控制.chm', 'application/octet-stream', '120563', 'chm', '../Public/Uploads/', '494871867fd43.chm', 'Down', 2, 1, 1229484422, 3398, 'b6a0c0991f38c41be55e66fe8efa7f82', 0, 0, 0, 0, '', 0, '0', 1, 0),
(53, 'ThinkPHP编码规范.chm', 'application/octet-stream', '91544', 'chm', '../Public/Uploads/', '4948718680ce4.chm', 'Down', 2, 1, 1229484422, 3169, '1ee42efdbaf72e2d37b1e81f6df77b28', 0, 0, 0, 0, '', 0, '0', 1, 0),
(54, 'ThinkPHP表单令牌设计.chm', 'application/octet-stream', '29926', 'chm', '../Public/Uploads/', '4948718681c83.chm', 'Down', 2, 1, 1229484422, 2653, '031c3c7b712ad07fded2c68c5fcdf736', 0, 0, 0, 0, '', 0, '0', 1, 0),
(55, 'ThinkPHP多语言的使用和配置.chm', 'application/octet-stream', '35212', 'chm', '../Public/Uploads/', '494871aeef126.chm', 'Down', 2, 1, 1229484463, 2457, 'de41ecb5626da454adaabf8c7e72dc58', 0, 0, 0, 0, '', 0, '0', 1, 0),
(56, 'ThinkPHP关联操作.chm', 'application/octet-stream', '42936', 'chm', '../Public/Uploads/', '494871aef00c6.chm', 'Down', 2, 1, 1229484463, 2612, '693d8bb0cfe0873d418e15a65d2c67ab', 0, 0, 0, 0, '', 0, '0', 1, 0),
(57, 'ThinkPHP可配置的静态缓存设计.chm', 'application/octet-stream', '31006', 'chm', '../Public/Uploads/', '494871aef1065.chm', 'Down', 2, 1, 1229484463, 2572, '930f858075982e2864e4ef747dd1210e', 0, 0, 0, 0, '', 0, '0', 1, 0),
(58, 'ThinkPHP快速入门.chm', 'application/octet-stream', '409624', 'chm', '../Public/Uploads/', '494871aef2004.chm', 'Down', 2, 1, 1229484463, 8964, 'a40c2111cba567646b89012f66dea657', 0, 0, 0, 0, '', 0, '0', 1, 0),
(59, 'ThinkPHP类库导入和自动加载.chm', 'application/octet-stream', '42304', 'chm', '../Public/Uploads/', '494871af000eb.chm', 'Down', 2, 1, 1229484463, 2835, '267f2cfeffb0bc0c5dd0f94abc4d4e33', 0, 0, 0, 0, '', 0, '0', 1, 0),
(60, 'ThinkPHP模板指南.chm', 'application/octet-stream', '74128', 'chm', '../Public/Uploads/', '494871fbc4983.chm', 'Down', 2, 1, 1229484539, 4090, '5b27a1918a1da4619f1e5bc47ce06b06', 0, 0, 0, 0, '', 0, '0', 1, 0),
(61, 'ThinkPHP配置指南和参考.chm', 'application/octet-stream', '55652', 'chm', '../Public/Uploads/', '494871fbc5537.chm', 'Down', 2, 1, 1229484539, 3513, 'a6804c237f203d71f628a10bc8ec27dc', 0, 0, 0, 0, '', 0, '0', 1, 0),
(62, 'ThinkPHP视图模型.chm', 'application/octet-stream', '35274', 'chm', '../Public/Uploads/', '494871fbc60ef.chm', 'Down', 2, 1, 1229484539, 3160, '74b0894a26bb9ca5766b621db3c44def', 0, 0, 0, 0, '', 0, '0', 1, 0),
(63, 'ThinkPHP数据操作指南.chm', 'application/octet-stream', '125262', 'chm', '../Public/Uploads/', '494871fbc6ca7.chm', 'Down', 2, 1, 1229484539, 5049, 'a50473054df2452f69620b449261d099', 0, 0, 0, 0, '', 0, '0', 1, 0),
(64, 'ThinkPHP执行流程.chm', 'application/octet-stream', '38292', 'chm', '../Public/Uploads/', '494871fbc7861.chm', 'Down', 2, 1, 1229484539, 3665, '07ae57a99e9cc5bf664756a23248785a', 0, 0, 0, 0, '', 0, '0', 1, 0),
(65, 'ThinkPHP1.0.5beta.rar', 'application/octet-stream', '181835', 'rar', '../Public/Uploads/', '4948adcdb47ce.rar', 'Down', 1, 6, 1229499853, 1274, '219ad1f8634fe915037803795765797b', 0, 0, 0, 0, '', 1229761985, '0', 1, 0),
(66, 'jqueryintp.rar', 'application/octet-stream', '26402', 'rar', '../Public/Uploads/', '4948e5c6c03bd.rar', 'Demo', 2, 4, 1229514182, 1400, 'fb8d9408d9ec6681b6319fbce0f8328f', 0, 0, 0, 0, '', 0, '0', 1, 0),
(67, 'ThinkPHP0.9.9beta.rar', 'application/octet-stream', '170295', 'rar', '../Public/Uploads/', '494b230b6b175.rar', 'Down', 1, 1, 1229660939, 1181, 'd8770224553eebd85b23d1d705448798', 0, 0, 0, 0, '0.9.9测试版本 For PHP4', 1229678691, '0', 1, 0),
(68, '下载格式.JPG', 'image/pjpeg', '7766', 'JPG', '../Public/Uploads/', '494b2e4a2f6be.JPG', 'Blog', 7, 1, 1229663818, 6, '56877a8615f7bc7cdc1e967bdf4d9bc6', 0, 0, 0, 0, '', 0, '0', 1, 0),
(69, 'ThinkPHP1.0.4core.7z', 'application/octet-stream', '112555', '7z', '../Public/Uploads/', '494b4641212e6.7z', 'Down', 1, 1, 1229669953, 1155, 'd24b474d4b44a03a73b80815d7c3338e', 0, 0, 0, 0, 'ThinkPHP 1.0.4 核心包', 1229678682, '0', 1, 0),
(70, 'Relation.rar', 'application/octet-stream', '5019', 'rar', '../Public/Uploads/', '494e02d06218d.rar', 'Article', 8, 2, 1229849296, 696, 'c958d564bd0648ecea84ccd24bd81f95', 0, 0, 0, 0, '', 0, '0', 1, 0),
(71, 'Relation.rar', 'application/octet-stream', '5019', 'rar', '../Public/Uploads/', '494e046ff317b.rar', 'Demo', 3, 2, 1229849711, 832, 'c958d564bd0648ecea84ccd24bd81f95', 0, 0, 0, 0, '', 0, '0', 1, 0),
(72, 'mCA5BX1O5.jpg', 'image/pjpeg', '30502', 'jpg', '../Public/Uploads/', '4950890fdc453.jpg', 'Blog', 10, 12, 1230014735, 8, '069fa81a73cd4726d6757e9077a02573', 0, 0, 0, 0, '', 0, '0', 1, 0),
(73, 'ThinkPHP多元化缓存机制.chm', 'application/octet-stream', '33620', 'chm', '../Public/Uploads/', '495202c32bc81.chm', 'Down', 2, 1, 1230111427, 3246, 'f57a49b002c070ed8f3a5f25567ba023', 0, 0, 0, 0, '', 0, '0', 1, 0),
(74, 'ThinkPHP项目自动生成和编译.chm', 'application/octet-stream', '37330', 'chm', '../Public/Uploads/', '495202c32c84e.chm', 'Down', 2, 1, 1230111427, 3659, '4770d26d7740ba022333c375b69e4262', 0, 0, 0, 0, '', 0, '0', 1, 0),
(75, 'ThinkPHP常见问题集合.chm', 'application/octet-stream', '69594', 'chm', '../Public/Uploads/', '495202c32d41b.chm', 'Down', 2, 1, 1230111427, 4662, '9d6c7b9293e95c0ed9f34744d1394882', 0, 0, 0, 0, '', 0, '0', 1, 0),
(76, 'ThinkPHP常见问题集合.pdf', 'application/pdf', '604646', 'pdf', '../Public/Uploads/', '495202c32dfe7.pdf', 'Down', 2, 1, 1230111427, 3242, '4c4109c89216dbd1203f1749a115e073', 0, 0, 0, 0, '', 0, '0', 1, 0),
(77, 'ThinkPHP多元化缓存机制.pdf', 'application/pdf', '203678', 'pdf', '../Public/Uploads/', '495202c32fb54.pdf', 'Down', 2, 1, 1230111427, 2387, '7c963fcf7501da9e6d319635792c92f8', 0, 0, 0, 0, '', 0, '0', 1, 0),
(78, 'ThinkPHP多元化缓存机制.swf', 'application/x-shockwave-flash', '118085', 'swf', '../Public/Uploads/', '495202c330b08.swf', 'Down', 2, 1, 1230111427, 1958, 'f93a0f820fd4413cd5bf993149e06b02', 0, 0, 0, 0, '', 0, '0', 1, 0),
(79, 'ThinkPHP常见问题集合.swf', 'application/x-shockwave-flash', '252957', 'swf', '../Public/Uploads/', '495202c3316d4.swf', 'Down', 2, 1, 1230111427, 3210, '6967e14472a508ebd50f8adcaced2d5b', 0, 0, 0, 0, '', 0, '0', 1, 0),
(80, 'ThinkPHP_0.9.9.rar', 'application/octet-stream', '176002', 'rar', '../Public/Uploads/', '4952457c112d7.rar', 'Down', 1, 1, 1230128508, 2667, '4ee074734f6f5a8f4299d1ee6830c7ad', 0, 0, 0, 0, '', 0, '0', 1, 0),
(81, 'ThinkPHP执行流程分析.ppt', 'application/vnd.ms-powerpoint', '594432', 'ppt', '../Public/Uploads/', '49524632ab2d6.ppt', 'Down', 2, 1, 1230128690, 8459, '6d632c27f0cbcc104c421f2ec8127387', 0, 0, 0, 0, '', 0, '0', 1, 0),
(82, 'ThinkPHP_1.5.0.rar', 'application/octet-stream', '198939', 'rar', '../Public/Uploads/', '49524b231f6f9.rar', 'Down', 1, 1, 1230129955, 9653, '8653bee4ac72ca8a772259889c3881aa', 0, 0, 0, 0, '', 0, '0', 1, 0),
(83, 'TP_1.5.0_Examples.7z', 'application/octet-stream', '325557', '7z', '../Public/Uploads/', '49524b472deae.7z', 'Down', 3, 1, 1230129991, 5692, '125143dc07e526258d448567ab5974db', 0, 0, 0, 0, '', 0, '0', 1, 0),
(85, 'TP1.5.0_CHM文档打包.7z', 'application/octet-stream', '1202419', '7z', '../Public/Uploads/', '4952f100149b5.7z', 'Down', 3, 1, 1230172416, 3711, '1666d09afbb9c8703637742baf7187e2', 0, 0, 0, 0, 'ThinkPHP1.5.0全部CHM文档打包', 1230174271, '0', 1, 0),
(86, 'TP1.5.0_SWF文档打包.7z', 'application/octet-stream', '3583659', '7z', '../Public/Uploads/', '4952f533b2574.7z', 'Down', 3, 1, 1230173492, 2067, 'e2a07937dfe76e1ce4dce690a0951143', 0, 0, 0, 0, 'ThinkPHP1.5.0全部SWF文档打包', 1230174174, '0', 1, 0),
(87, 'TP1.5.0_PDF文档打包.7z', 'application/octet-stream', '5697577', '7z', '../Public/Uploads/', '4952f86ecef43.7z', 'Down', 3, 1, 1230174318, 3184, 'b780bfe90f47a5120556111aa390a0f7', 0, 0, 0, 0, 'ThinkPHP1.5.0全部PDF文档打包', 1230446793, '0', 1, 0),
(97, 'f18c7a9bf7ec3a2af3a7c838e6f2f813.jpg', 'image/pjpeg', '3654', 'jpg', '../Public/Uploads/', '495ca4b0772a6.jpg', 'Blog', 0, 12, 1230808240, 3, 'd85e0195d87ebaf5a655b7c90d08d8ff', 0, 0, 0, 0, '', 0, '1230808131', 1, 0),
(89, 'Upload.zip', 'application/x-zip-compressed', '11180', 'zip', '../Public/Uploads/', '49536046cb91c.zip', 'Demo', 4, 2, 1230200902, 1051, 'e76af800fe713c3f02a68068cee4c39c', 0, 0, 0, 0, '', 0, '0', 1, 0),
(90, 'Tp用户权限管理演示.zip', 'application/octet-stream', '110629', 'zip', '../Public/Uploads/', '4955e095d310a.zip', 'Down', 4, 6, 1230364821, 5748, 'e2fedb4c878e2a1c98259dd0e7b6b039', 0, 0, 0, 0, '', 0, '0', 1, 0),
(91, 'ThinkPHPAjax演示系统.rar', 'application/x-zip-compressed', '374653', 'rar', '../Public/Uploads/', '4955e0d87006a.rar', 'Down', 4, 6, 1230364888, 6267, '1665b8d14942e89ea6416e12b11c3b6e', 0, 0, 0, 0, '', 0, '0', 1, 0),
(92, 'APP.rar', 'application/octet-stream', '48258', 'rar', '../Public/Uploads/', '495635c624f82.rar', 'Demo', 5, 1, 1230386630, 926, 'd553e4e51c7c9b539b41d76d3846a3e9', 0, 0, 0, 0, '', 0, '0', 1, 0),
(93, 'tp.jpg', 'image/pjpeg', '23000', 'jpg', './Public/Uploads/Bug/', '495a46e8571bc.jpg', 'Bug', 1, NULL, 1230653161, 2, '9ce574eb08fbe55a64addcb7b7e344bb', 0, 0, 0, 0, '', 0, '0', 1, 0),
(94, 'tp2.jpg', 'image/pjpeg', '35946', 'jpg', './Public/Uploads/Bug/', '495a46e944cc4.jpg', 'Bug', 1, NULL, 1230653161, 1, 'ebd5913372143bb05935a86a10eda565', 0, 0, 0, 0, '', 0, '0', 1, 0),
(96, 'ThinkPHP_1.5.0.zip', 'application/x-zip-compressed', '210286', 'zip', '../Public/Uploads/', '495b8f40ec2f5.zip', 'Down', 1, 3, 1230737216, 2512, '215097bea3cac75d829e8ee2013dcda6', 0, 0, 0, 0, '', 1230819268, '0', 1, 0),
(98, 'TP2008论坛离线资料包.part01.rar', 'application/octet-stream', '6297577', 'rar', '../Public/Uploads/', '495ce680f151a.rar', 'Down', 3, 1, 1230825089, 3071, 'f883aa689c66eedf38cc1f40723de1fb', 0, 0, 0, 0, 'TP2008论坛离线资料包1', 1230825560, '0', 1, 0),
(99, 'TP2008论坛离线资料包.part02.rar', 'application/octet-stream', '6297577', 'rar', '../Public/Uploads/', '495ce7ce1c0de.rar', 'Down', 3, 1, 1230825422, 2659, '3763a5cb45a605294a995eec47b8afc9', 0, 0, 0, 0, 'TP2008论坛离线资料包2', 1230825545, '0', 1, 0),
(100, 'TP2008论坛离线资料包.part03.rar', 'application/octet-stream', '6297577', 'rar', '../Public/Uploads/', '495ce8dad547e.rar', 'Down', 3, 1, 1230825690, 2986, '2757b9bdf93ecfac45afcdf9ad08e109', 0, 0, 0, 0, 'TP2008论坛离线资料包3', 1230825763, '0', 1, 0),
(101, 'TP2008论坛离线资料包.part04.rar', 'application/octet-stream', '4019740', 'rar', '../Public/Uploads/', '495ce98f45cd3.rar', 'Down', 3, 1, 1230825871, 2670, '457e55ec82a62a1a3f29e0de09372da5', 0, 0, 0, 0, 'TP2008论坛离线资料包4', 1230826027, '0', 1, 0),
(102, 'ThinkPHP_1.5.0_full.rar', 'application/octet-stream', '2095217', 'rar', '../Public/Uploads/', '496ab12264fe7.rar', 'Down', 1, 1, 1231728930, 21163, '6a16003ef7027310dbb795637ed0daed', 0, 0, 0, 0, '包含框架、示例和文档的1.5完整版', 0, '0', 1, 0),
(103, 'phpunit.jpg', 'image/pjpeg', '61789', 'jpg', '../Public/Uploads/', '496bffe20b685.jpg', 'Blog', 23, 19, 1231814626, 2, '505a796baca0743317ab003a6e67bc10', 0, 0, 0, 0, '', 0, '0', 1, 0),
(104, 'phpunit2.jpg', 'image/pjpeg', '6597', 'jpg', '../Public/Uploads/', '496c00adcb102.jpg', 'Blog', 23, 19, 1231814829, 2, 'd0f5b63964e159c484cceba861d3ed0f', 0, 0, 0, 0, '', 0, '0', 1, 0),
(105, 'phpunit3.jpg', 'image/pjpeg', '10782', 'jpg', '../Public/Uploads/', '496c00b3e46e9.jpg', 'Blog', 23, 19, 1231814835, 3, '3ad079c845fec6f604c6533f1a213002', 0, 0, 0, 0, '', 0, '0', 1, 0),
(106, 'ThinkPHP_1.5.0_API_HTM.rar', 'application/octet-stream', '314615', 'rar', '../Public/Uploads/', '496c6bf1b49cf.rar', 'Down', 2, 1, 1231842289, 4467, 'acec18927d3d9286667210c9200c7379', 0, 0, 0, 0, 'ThinkPHP1.5.0 API', 0, '0', 1, 0),
(107, 'ThinkPHP1.5Lite.rar', 'application/octet-stream', '76417', 'rar', '../Public/Uploads/', '4973da91c613b.rar', 'Down', 1, 1, 1232329361, 4869, 'a1217c9961d908887108888604f91f13', 0, 0, 0, 0, 'ThinkPHP1.5 Lite版 提供网站开发最需要的功能 优化性能 更适合大型项目', 0, '0', 1, 0),
(108, 'TP新年红色主题壁纸.rar', 'application/octet-stream', '5555963', 'rar', '../Public/Uploads/', '497b14df53328.rar', 'Down', 3, 1, 1232803039, 2203, '0d91ee2b90af3dceec12e0ab04da478f', 0, 0, 0, 0, 'TP新年红色主题壁纸', 0, '0', 1, 0),
(109, 'TP新年黄色主题壁纸.rar', 'application/octet-stream', '1848620', 'rar', '../Public/Uploads/', '497b14df71f4c.rar', 'Down', 3, 1, 1232803039, 2289, '65ac36f050eb9f8262f2bc163a976a45', 0, 0, 0, 0, 'TP新年黄色主题壁纸', 0, '0', 1, 0),
(113, 'ThinkPHP1.6.0RC1_Core.rar', 'application/octet-stream', '122283', 'rar', '../Public/Uploads/', '49fa916d9277c.rar', 'Down', 1, 1, 1241157997, 6432, '0de0e4b31ae674100869c1bf785313e3', 0, 0, 0, 0, 'ThinkPHP1.6.0RC1核心版本', 0, '0', 1, 0),
(112, 'ThinkPHP_Demo_Maker.rar', 'application/octet-stream', '1432', 'rar', '../Public/Uploads/', '49af675c87f2b.rar', 'Down', 5, 6, 1236232028, 2212, '2af7be2c491712bb6a2e1a6b98a1ba35', 0, 0, 0, 0, 'ThinkPHP代码生成器(C#版)', 0, '0', 1, 0),
(114, 'Template.rar', 'application/octet-stream', '194839', 'rar', '../Public/Uploads/', '49fa949783491.rar', 'Down', 4, 1, 1241158807, 2397, 'ef3d828dd55356770182c6f2fd08d5f4', 0, 0, 0, 0, 'Think内置模板引擎使用例子', 0, '0', 1, 0),
(115, 'ThinkPHP1.6.0RC1快速入门.chm', 'application/octet-stream', '318162', 'chm', '../Public/Uploads/', '49fba1190f564.chm', 'Down', 2, 1, 1241227545, 5606, 'e57478e9dd0d9b15408b66a1bc6a16e8', 0, 0, 0, 0, '', 0, '0', 1, 0),
(116, 'ThinkPHP1.6.0RC1快速入门.pdf', 'application/pdf', '1085165', 'pdf', '../Public/Uploads/', '49fba119110bc.pdf', 'Down', 2, 1, 1241227545, 4089, '441d39892204d52fe7f6ae58dd3d7f9a', 0, 0, 0, 0, '', 0, '0', 1, 0),
(117, 'ThinkPHP1.6.0RC1快速入门.swf', 'application/x-shockwave-flash', '566879', 'swf', '../Public/Uploads/', '49fba11915eda.swf', 'Down', 2, 1, 1241227545, 3584, '213289b25e943d37f7a78ffbf5e2614e', 0, 0, 0, 0, '', 0, '0', 1, 0),
(118, 'ThinkPHP1.6.0RC1_full.rar', 'application/octet-stream', '2150159', 'rar', '../Public/Uploads/', '49fba40c78683.rar', 'Down', 1, 1, 1241228300, 12965, '3c79f44073ee948e572cf22a6ec1958b', 0, 0, 0, 0, 'ThinkPHP1.6.0Rc1完整包', 0, '0', 1, 0),
(119, 'TP1.6.0RC1快速入门配套例子.rar', 'application/octet-stream', '209900', 'rar', '../Public/Uploads/', '49fba5b188656.rar', 'Down', 4, 1, 1241228721, 5855, '28de4f57873cb3b2eb8be988130e6695', 0, 0, 0, 0, '', 0, '0', 1, 0),
(120, 'Template.rar', 'application/octet-stream', '227870', 'rar', '../Public/Uploads/', '49fbff0bc349e.rar', 'Down', 4, 22, 1241251595, 6401, 'cbc3d31c1807b29db672eb1a17d0766c', 0, 0, 0, 0, 'Think内置模板引擎使用例子(修正)', 0, '0', 1, 0),
(121, 'ThinkPHP+v1.6RC1+API+for+CHM.rar', 'application/octet-stream', '346258', 'rar', '../Public/Uploads/', '49fd6e48169bb.rar', 'Down', 2, 1, 1241345608, 4750, 'd2f4d89dda695969377a3ab39509b003', 0, 0, 0, 0, '', 0, '0', 1, 0),
(122, 'ThinkPHP+v1.6RC1+API+for+EXE.rar', 'application/octet-stream', '765970', 'rar', '../Public/Uploads/', '49fd6e482a61d.rar', 'Down', 2, 1, 1241345608, 1696, '717ed5593a3501a34ed6012558ab5e49', 0, 0, 0, 0, '', 0, '0', 1, 0),
(123, 'ThinkPHP+v1.6RC1+API+for+HTM.rar', 'application/octet-stream', '421414', 'rar', '../Public/Uploads/', '49fd6e482c944.rar', 'Down', 2, 1, 1241345608, 2619, 'a5638807e01cb5777361a5a007705c37', 0, 0, 0, 0, '', 0, '0', 1, 0),
(124, 'cli.rar', 'application/octet-stream', '4823', 'rar', '../Public/Uploads/', '4a0013dfa337c.rar', 'Down', 5, 1, 1241519071, 1205, '6caa9b3634debddb5b84c4bc8ba43e7b', 0, 0, 0, 0, '新版命令模式扩展', 1241519430, '0', 1, 0),
(125, 'thin.rar', 'application/octet-stream', '5218', 'rar', '../Public/Uploads/', '4a0015601e662.rar', 'Down', 5, 1, 1241519456, 1363, '0ae7222d0628635a7e74d90d1fb035fd', 0, 0, 0, 0, '新版简洁模式扩展', 0, '0', 1, 0),
(126, 'Compat.rar', 'application/octet-stream', '83856', 'rar', '../Public/Uploads/', '4a0399c34454b.rar', 'Down', 5, 1, 1241749955, 1402, '999575b093737af63b16c901881b4bd5', 0, 0, 0, 0, '新版兼容模式扩展', 0, '0', 1, 0),
(127, 'AddOns.rar', 'application/octet-stream', '741784', 'rar', '../Public/Uploads/', '4a4c20a23bd0c.rar', 'Down', 5, 22, 1246503074, 1462, 'ad74bea285f79f94bf80d7b7fcdceaff', 0, 0, 0, 0, 'AddOns', 0, '0', 1, 0),
(131, 'ThinkPHP2.0_Full_With_Extend.zip', 'application/x-zip-compressed', '3959849', 'zip', './Public/Uploads/', '4ac416f5af900.zip', 'Down', 1, 1, 1254364917, 83593, 'c0cfbf62881156353b418ac086a36bd9', 0, 0, 0, 0, 'ThinkPHP2.0带扩展、示例和文档完整包', 0, '0', 1, 1),
(128, 'jadexp.jpg', 'image/pjpeg', '9288', 'jpg', './Public/Uploads/Extend/', '4aab283dc9512.jpg', 'Extend', 1, 1, 1252730941, 0, '48497f986c2be157896b3922fdeb2c9c', 0, 0, 0, 0, '', 0, '0', 1, 0),
(129, 'ThinkPHP2.0_Core.zip', 'application/x-zip-compressed', '155880', 'zip', './Public/Uploads/', '4ac415fb429d2.zip', 'Down', 1, 1, 1254364667, 16085, '1a0805425422dd1e8151d63b87699f77', 0, 0, 0, 0, 'ThinkPHP2.0核心包', 0, '0', 1, 1),
(130, 'ThinkPHP2.0_Full.zip', 'application/x-zip-compressed', '3194128', 'zip', './Public/Uploads/', '4ac41655e7df5.zip', 'Down', 1, 1, 1254364757, 29917, '44351c72221c11b1c2913f2bcf4430e3', 0, 0, 0, 0, 'ThinkPHP2.0带示例和文档完整包', 0, '0', 1, 1),
(132, 'Compat_Mode.rar', 'application/octet-stream', '86334', 'rar', './Public/Uploads/', '4ac41dc6e2289.rar', 'Down', 6, 1, 1254366662, 1503, '5e158a8d7f8ed8ed41f0b54b2e500ab8', 0, 2, 0, 0, 'ThinkPHP2.0 命令模式扩展', 0, '0', 1, 0),
(133, 'ThinkPHP2.0完全开发手册.pdf', 'application/pdf', '1703800', 'pdf', './Public/Uploads/', '4ac4300c22823.pdf', 'Down', 2, 1, 1254371340, 27530, '568836ae36e33549583bd5bfadab30b5', 0, 0, 0, 0, 'ThinkPHP2.0完全开发手册', 0, '0', 1, 0),
(134, 'ThinkPHP2.0完全开发手册.swf', 'application/x-shockwave-flash', '873072', 'swf', './Public/Uploads/', '4ac4300c26697.swf', 'Down', 2, 1, 1254371340, 13683, '6970df08962cedafb3234ee7592b3ff1', 0, 0, 0, 0, 'ThinkPHP2.0完全开发手册', 0, '0', 1, 0),
(135, 'ThinkPHP2.0完全开发手册.chm', 'application/octet-stream', '646477', 'chm', './Public/Uploads/', '4ac454e84da5f.chm', 'Down', 2, 1, 1254380776, 40478, 'd582f40e7edee69151a4404ae69658f8', 0, 0, 0, 0, 'ThinkPHP2.0完全开发手册', 0, '0', 1, 0),
(136, 'CheatSHeet-A版.png', 'image/x-png', '148926', 'png', './Public/Uploads/', '4ac461a7e4289.png', 'Down', 3, 1, 1254384039, 658, '9acb238591b7bc5aa17aaadbf30c899a', 0, 0, 0, 0, 'ThinkPHP2.0 Cheatsheet_A面', 0, '0', 1, 0),
(137, 'CheatSHeet-B版.png', 'image/x-png', '176400', 'png', './Public/Uploads/', '4ac461a7e4e55.png', 'Down', 3, 1, 1254384039, 827, '618c3c263be5384d0009a00622a21ade', 0, 0, 0, 0, 'ThinkPHP2.0 Cheatsheet_B面', 0, '0', 1, 0),
(138, 'TP2.0完全开发手册PDF CHM SWF完整版.rar', 'application/octet-stream', '2960420', 'rar', './Public/Uploads/', '4ac461faf0a7d.rar', 'Down', 2, 1, 1254384123, 2690, '73c90e4227b3a8c9a40cd3412093efa5', 0, 0, 0, 0, '', 0, '0', 1, 0),
(139, 'ThinkPHP2.0_Core.tar.gz', 'application/x-gzip', '115640', 'gz', './Public/Uploads/', '4ac9e099772c0.gz', 'Down', 1, 1, 1254744217, 2269, 'd21713412100a27784997828dc4e8241', 0, 0, 0, 0, 'ThinkPHP2.0核心包', 0, '0', 1, 0),
(140, 'ThinkPHP2.0_Full_With_Extend.tar.gz', 'application/x-gzip', '3275736', 'gz', './Public/Uploads/', '4ac9e0997a1a4.gz', 'Down', 1, 1, 1254744217, 9581, '1d8cef79ee7dfb192886f2f6e3367816', 0, 0, 0, 0, 'ThinkPHP2.0带扩展、示例和文档完整包', 0, '0', 1, 0),
(141, 'ThinkPHP2.0_Full.tar.gz', 'application/x-gzip', '2930198', 'gz', './Public/Uploads/', '4ac9e099816e5.gz', 'Down', 1, 1, 1254744217, 3099, 'c4d703f5b699386bcb151e534c62bcc8', 0, 0, 0, 0, 'ThinkPHP2.0带示例和文档完整版', 0, '0', 1, 0),
(142, 'ThinkPHP-2.0-API.chm', 'application/octet-stream', '2005370', 'chm', './Public/Uploads/', '4b1f3762ea8b6.chm', 'Down', 2, 1, 1260336995, 31322, '2aa805394f4e54b0d37c9c663b36f644', 0, 0, 0, 0, 'ThinkPHP2.0 API手册', 0, '0', 1, 0),
(143, 'ThinkPHP2.0_Core.zip', 'application/x-zip-compressed', '155947', 'zip', './Public/Uploads/', '4c96dbe0e783f.zip', 'Down', 6, 1, 1284955104, 0, '6a2804d9d827977b45462497260d1871', 0, 1, 0, 0, '', 0, '0', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `think_case`
--

CREATE TABLE IF NOT EXISTS `think_case` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(25) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `create_time` int(11) unsigned DEFAULT NULL,
  `update_time` int(11) unsigned DEFAULT NULL,
  `remark` varchar(255) NOT NULL,
  `sort` mediumint(6) unsigned NOT NULL DEFAULT '0',
  `member_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tags` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='案例表' AUTO_INCREMENT=149 ;

--
-- Dumping data for table `think_case`
--

INSERT INTO `think_case` (`id`, `title`, `url`, `status`, `pic`, `create_time`, `update_time`, `remark`, `sort`, `member_id`, `tags`) VALUES
(1, '聚视网', 'http://www.jvsee.com ', 1, '492a5213120ac.jpg', 1222664022, 1253692764, '聚视网', 2, 0, '门户'),
(2, '漫悟网', 'http://www.manwu.com.cn ', 1, '49265aa343d7b.jpg', 1222664416, 1253692755, '<p>漫悟网</p>', 1, 0, '社区'),
(3, '中进汽贸上海公司', 'http://www.zjautos.com ', 1, '49265bca0850c.jpg', 1227250634, 1253692747, '汽贸', 0, 0, '企业'),
(4, '中美健康心理氧吧', 'http://bar.h863.com', 1, '49265bf01a2d5.jpg', 1227250672, 1253692739, '', 0, 0, '门户 医疗'),
(5, '罗盘', 'http://www.luopan.cn ', 1, '49265c1184e07.jpg', 1227250705, 1253692730, '', 0, 0, '企业'),
(6, '办公圈', 'http://www.bangongquan.com ', 1, '49265c33cd88f.jpg', 1227250739, 1253692695, '', 0, 0, '社区'),
(7, '长沙房屋产权管理局 ', 'http://www.csfdc.gov.cn ', 1, '49265c60db42a.jpg', 1227250784, 1253692687, '', 0, 0, '地产'),
(8, '长沙房地产联合网', 'http://www.0731fdc.com ', 1, '49265c80be5d7.jpg', 1227250816, 1253692667, '', 0, 0, '地产'),
(9, '56群组', 'http://qun.56.com ', 1, '49265ca0aeed4.jpg', 1227250848, 1253692659, '', 0, 0, '社区 门户'),
(10, '多来米游戏门户 ', 'http://www.myrice.com ', 1, '49265cc3988d4.jpg', 1227250883, 1253692650, '', 0, 0, '门户'),
(11, 'Phototex ', 'http://www.phototex.com ', 1, '49265cfd8d8cf.jpg', 1227250941, 1253692638, '', 0, 0, '其它'),
(12, '99高尔夫', 'http://www.99golf.cn ', 1, '49265d163ccf0.jpg', 1227250966, 1253692623, '', 0, 0, '其它'),
(13, 'timelinemedical ', 'http://www.timelinemedical.com ', 1, '49265d39aef05.jpg', 1227251001, 1253692611, '', 0, 0, '企业'),
(14, '莆田在线:易莆人才 ', 'http://job.0594.com ', 1, '49265d5b62d9b.jpg', 1227251035, 1253692599, '', 0, 0, '社区 门户'),
(15, '旅游智多星 ', 'http://www.toursoo.com ', 1, '49265d7d3ca53.jpg', 1227251069, 1253692586, '', 0, 0, '旅游 社区'),
(16, '顺风电子书 ', 'http://www.1kip.cn ', 0, '49265d98be56b.jpg', 1227251096, 1253692572, '', 0, 0, '其它'),
(17, '瑞中汉语教育中心 ', 'http://www.xueban.org/', 1, '49265db7efb79.jpg', 1227251128, 1253692561, '', 0, 0, '教育'),
(18, '异客.酷站 ', 'http://www.imyike.com/', 1, '49265ddfbe19b.jpg', 1227251167, 1253692433, '', 0, 0, '其它'),
(19, '职业帆', 'http://www.vsail.cn/', 1, '49265e0289d61.jpg', 1227251202, 1253692425, '', 0, 0, '社区'),
(20, '天下买卖商贸网 ', 'http://txmaimai.cn/', 1, '49265e2562b22.jpg', 1227251237, 1253692414, '', 0, 0, '电子商务'),
(21, '希望谷', 'http://www.xwg.cc/', 1, '49265e5c31058.jpg', 1227251292, 1253692401, '', 0, 0, '教育 社区'),
(22, 'AK47军品商店 ', 'http://www.ak47.tw/', 1, '49265e75a37c2.jpg', 1227251317, 1253692384, '', 0, 0, '电子商务'),
(23, '联大通信 ', 'http://www.cnetstar.com/', 1, '49265e8fd8ffe.jpg', 1227251343, 1253692369, '', 0, 0, '企业'),
(24, '商虎网', 'http://www.9448.net/', 1, '49265ea8722e6.jpg', 1227251368, 1253692357, '', 0, 0, '电子商务'),
(25, '中国艺术名家人气榜', 'http://www.arttop100.com/', 1, '49265fb6a3627.jpg', 1227251638, 1253692344, '', 0, 0, '其它'),
(26, '阿美购物', 'http://www.amei100.cn/', 1, '4926602ef3c8f.jpg', 1227251759, 1253692334, '', 0, 0, '电子商务'),
(27, '金宝信金融信息服务网', 'http://www.jbx888.com/', 0, '492660513c685.jpg', 1227251793, 1253692323, '', 0, 0, '金融'),
(28, '友邻网', 'http://www.youfri.com/', 1, '492660699f900.jpg', 1227251817, 1253692308, '', 0, 0, '社区'),
(29, '橡皮班', 'http://www.xiangpiban.com/', 1, '49266081d1e47.jpg', 1227251841, 1253692295, '', 0, 0, '教育 社区'),
(30, '微视网', 'http://www.movivi.com/', 1, '4926609aba569.jpg', 1227251866, 1253692281, '', 0, 0, '社区 视频'),
(31, '桔子酒店', 'http://www.orangehotel.com.cn ', 1, '492a51b908f66.jpg', 1227510201, 1253692269, '', 0, 0, '酒店'),
(32, '珠海团购网', 'http://www.0756tg.com', 1, '492a527f61f0a.jpg', 1227510399, 1253692257, '珠海团购网', 0, 0, '电子商务'),
(33, '拜师网', 'http://www.36bs.com', 1, '492a52a4ef23f.jpg', 1227510437, 1253692248, '拜师网', 0, 0, '社区'),
(34, '回忆共享', 'http://www.100recall.cn/', 0, '493f8246e94ff.jpg', 1228898886, 1228898901, '', 0, 0, ''),
(35, '贵阳房产网', 'http://0851fc.gywb.cn/', 1, '493f82a19cd11.jpg', 1228898977, 1253692156, '', 0, 0, '地产'),
(36, '佳人网', 'http://www.jiaren.net/', 1, '493f82b79eb67.jpg', 1228898999, 1253692147, '', 0, 0, '交友 社区'),
(37, '轩辕学院', 'http://www.school119.org', 1, '494f568f4fa8f.jpg', 1229936271, 1253692131, '', 0, 1, '教育'),
(38, '天下第一舞道会', 'http://www.breaking119.com', 1, '494f56c5a8c72.jpg', 1229936325, 1253692119, '', 0, 1, '其它'),
(39, 'CC-CMM国际标准与认证', 'http://www.cc-cmm.com/', 1, '4965cf3218144.jpg', 1231408946, 1253692108, '呼叫中心能力成熟度CC-CMM国际标准与认证', 0, 1, '企业'),
(40, '前卫混音舞曲网', 'http://www.52webcard.cn/', 1, '4965cf9d65e97.jpg', 1231409053, 1253692101, '前卫混音舞曲网', 0, 1, '音乐'),
(41, '方形科技', 'http://www.foution.com/', 1, '496ae438667b7.jpg', 1231742008, 1253692089, '方形科技', 0, 1, '企业'),
(42, '东北林业大学就业信息网', 'http://job.nefu.edu.cn/', 1, '496b4875c8252.jpg', 1231767669, 1253692078, '东北林业大学就业信息网', 0, 1, '学校'),
(43, '游记网', 'http://www.uooji.com/', 1, '496f2d05e5195.jpg', 1232022790, 1253692066, '游记网', 0, 1, '旅游 社区'),
(44, '车模网', 'http://www.chemodel.cn/', 1, '496f2d2a5834c.jpg', 1232022826, 1253692050, '车模网', 0, 1, '社区'),
(45, '热点中国', 'http://www.zhot.net/', 0, '4971c392d2aec.png', 1232192402, 1232192402, '热点中国', 0, 1, ''),
(46, '阿拉伯语', 'http://www.alaboyu.com/', 0, '49756bdc60449.png', 1232432092, 1232432092, '阿拉伯语', 0, 1, ''),
(47, '瑞中汉语网', 'http://www.raychinese.com/', 1, '497a77092738c.jpg', 1232762633, 1253692038, '瑞中汉语网', 0, 1, '教育'),
(48, '陕师大人文社科基础教学部', 'http://www.purstudio.cn/index.php', 1, '497c28b72f9e4.jpg', 1232873655, 1253692025, '陕西师范大学人文社科基础教学部学生会', 0, 1, '学校'),
(49, '记忆日', 'http://www.jiyiri.com/', 1, '49844152966a6.jpg', 1233404242, 1253692009, '记忆日', 0, 1, '社区 电子商务'),
(50, '四川企业之窗', 'http://www.scqyzc.com/', 1, '49911a50330ba.jpg', 1234246224, 1253691999, '四川企业之窗', 0, 1, '门户 企业'),
(51, '查3GP', 'http://www.cha3gp.com', 1, '49911a9cc8edd.jpg', 1234246300, 1253691991, '查3GP', 0, 1, '搜索'),
(52, '山寨佣兵团', 'http://www.lv1.cc/', 1, '499b820a8b66e.jpg', 1234928138, 1253691975, '网游：山寨佣兵团', 0, 1, '游戏'),
(53, '互动日程表', 'http://www.cotodo.com', 1, '499cc280e713c.jpg', 1235010177, 1253691968, '互动日程表', 0, 1, '社区'),
(54, '索玛花公益助学网', 'http://www.yiedu.org', 1, '49bcf4f61788d.jpg', 1237120246, 1253691961, '索玛花公益助学网', 0, 1, '公益'),
(55, 'web fedora os', 'http://www.webfedora.com/', 1, '49c090e99218e.jpg', 1237356777, 1237356777, 'web fedora os', 0, 1, ''),
(56, '苏州园林', 'http://www.yl2500.com/', 1, '49cae1add6803.jpg', 1238032813, 1253691949, '苏州园林', 0, 1, '其它'),
(57, '爱易信科技', 'http://www.iixin.com/', 1, '49caf6b56ac24.jpg', 1238038197, 1253691906, '爱易信科技', 0, 1, '企业'),
(58, '金鹤床品', 'http://www.jinhechuangpin.com/', 1, '49caf6cc64024.jpg', 1238038220, 1253691893, '金鹤床品', 0, 1, '企业'),
(59, '真情十字绣', 'http://www.zhenqingxiu.cn', 1, '49d16e16a7a61.jpg', 1238461974, 1253691882, '真情十字绣', 0, 1, '其它'),
(60, '联想问吧', 'http://ask.lenovo.com.cn', 1, '49ddc8dfd64cc.jpg', 1239271647, 1253691870, '联想问吧', 0, 1, '社区 门户'),
(61, '中青旅遨游开心网', 'http://kaixin.aoyou.com/', 1, '49ddc94883b53.jpg', 1239271752, 1253691861, '中青旅遨游开心网', 0, 1, '社区 旅游'),
(62, '溜溜西湖', 'http://www.66xihu.com', 1, '49e2a91b05ae7.jpg', 1239591195, 1253691851, '溜溜西湖', 0, 1, '旅游 门户'),
(63, '春盛地产', 'http://www.bjchunsheng.com/', 1, '49e578cec2ec3.jpg', 1239775438, 1253691838, '春盛地产', 0, 1, '地产'),
(64, '北京怡通电信', 'http://www.yitongbj.com/', 1, '49e6c49222a39.jpg', 1239860370, 1253691817, '北京怡通电信工程有限责任公司', 0, 1, '企业'),
(65, 'Q我网', 'http://www.55086.com/', 1, '49e8705c95e2e.jpg', 1239969884, 1253691801, 'Q我网', 0, 1, '社区'),
(66, '选购网', 'http://www.xuangou5.com/', 1, '49e870829f124.jpg', 1239969922, 1253691793, '选购网', 0, 1, '电子商务'),
(67, '新课标教育中心', 'http://www.xinkb.org/', 1, '49f6724bf0109.jpg', 1240887884, 1253691781, '新课标教育中心', 0, 1, '教育'),
(68, '聊聊Q', 'http://www.liaoliaoq.com/', 1, '49feaf4f1db0e.jpg', 1241427791, 1253691766, '聊聊Q', 0, 1, '其它'),
(69, '医学园', 'http://www.hidr.cn/', 1, '4a0e3ff0a9ef3.jpg', 1242447856, 1253691755, '医学园', 0, 1, '门户 医疗'),
(70, '广艺画室', 'http://www.gearts.cn/', 1, '4a1210ff69490.jpg', 1242697983, 1253691743, '', 0, 6, '其它'),
(71, '金麒麟软件官方网站', 'http://www.jql888.com/', 1, '4a1399e8e2d3a.jpg', 1242798569, 1253691725, '金麒麟软件官方网站', 0, 1, '其它'),
(72, '博金软件官方网站', 'http://www.51bojin.com/', 1, '4a139a2aa4b19.jpg', 1242798634, 1253691695, '博金软件官方网站', 0, 1, '其他'),
(73, '生生网', 'http://www.shjqyy.com/', 1, '4a27612bce81e.jpg', 1244094763, 1253691708, '生生网', 0, 1, '医疗'),
(74, '大成爱婚网', 'http://www.dcchn.com/', 1, '4a27619acbbb8.jpg', 1244094874, 1253691662, '大成爱婚网', 0, 1, '交友'),
(75, '重庆百诚堂', 'http://www.cq-bct.com/', 1, '4a276240c03f5.jpg', 1244095040, 1253691648, '重庆百诚堂', 0, 1, '企业'),
(76, 'roomfurniturechina', 'http://www.roomfurniturechina.com/', 1, '4a2763542369b.jpg', 1244095316, 1253691618, 'roomfurniturechina', 0, 1, '电子商务'),
(77, '中国西部开发网', 'http://www.cnwest88.com/', 1, '4a2763ef91c90.jpg', 1244095471, 1253691590, '中国西部开发网', 0, 1, '门户'),
(78, '夜魔网', 'http://www.yemoer.com/', 1, '4a2b2ba61fa73.jpg', 1244343206, 1253691569, '夜魔网', 0, 1, '社区 电子商务'),
(79, '宝矿力特·爱达人', 'http://pocarisweat.msn.cn/', 1, '4a2b34875136b.jpg', 1244345479, 1244345479, '宝矿力特·爱达人', 0, 1, ''),
(80, '广东科学技术职业学院图书馆', 'http://library.gdit.edu.cn/', 1, '4a31b515f0ad3.jpg', 1244771606, 1253691482, '广东科学技术职业学院图书馆', 0, 1, '学校'),
(81, '跟我说', 'http://www.speak2me.cn/', 1, '4a3237b2cfde5.jpg', 1244805042, 1253691470, '跟我说 英语学习平台', 0, 1, '英语 学习 社区'),
(82, '爱乐365', 'http://www.aiyue365.com/', 1, '4a34afac40bbc.jpg', 1244966828, 1253691436, '爱乐365，互联网音乐素质教育平台', 0, 1, '社区 音乐'),
(83, '雅言堂 ', 'http://www.cmkt.org/', 1, '4a34afd5d3d35.jpg', 1244966869, 1253691413, '中国首家公益营销网络平台', 0, 1, '公益 社区'),
(84, '动网', 'http://www.dong360.com/', 1, '4a34b00681a5d.jpg', 1244966918, 1253691368, '动网 网罗天下运动时尚人群', 0, 1, '社区'),
(85, '万网之王3玩家社区', 'http://club.kok3.ztgame.com/', 1, '4a34b030326bc.jpg', 1244966960, 1253691357, '万网之王3玩家社区', 0, 1, '游戏 社区'),
(86, '奔驰Smart公社', 'http://www.openyourmind.cn/', 1, '4a34b14c2711b.jpg', 1244967244, 1253691349, '奔驰Smart公社', 0, 1, '社区 '),
(87, 'tou168证券信息平台', 'http://www.tou168.com/', 1, '4a40361d56f61.jpg', 1245722141, 1253691297, 'tou168证券信息平台', 0, 1, '证券'),
(88, '中华家园网', 'http://www.china186.com/', 1, '4a4b3d59e3f3b.jpg', 1246444889, 1253691279, '中华家园网', 0, 1, '社区 门户'),
(89, '漫族游', 'http://www.manzuu.com/', 1, '4a4b3d82534c9.jpg', 1246444930, 1253691268, '漫族游', 0, 1, '漫画'),
(90, '双彩网', 'http://www.52cp.cn/', 1, '4a4b6cad74910.jpg', 1246457005, 1253691231, '双彩网', 0, 1, '彩票'),
(91, '贵州便民网', 'http://www.gzbmw.com/', 1, '4a4c1db7632aa.jpg', 1246502327, 1253691224, '贵州便民网', 0, 1, '门户'),
(92, '淘宝精品购物指南', 'http://www.olegoo.cn/', 1, '4a4c1f80cc3d9.jpg', 1246502784, 1253691203, '淘宝精品购物指南', 0, 1, '电子商务'),
(93, '安庆北正炒货食品', 'http://www.cdsch.com.cn/', 1, '4a4c1fedcaefb.jpg', 1246502893, 1253691192, '安庆北正炒货食品有限责任公司', 0, 1, '电子商务'),
(94, '国家保密局评测中心', 'http://www.isstec.org.cn/', 1, '4a4c210e35e03.jpg', 1246503182, 1253691175, '国家保密局涉密信息系统安全保密评测中心', 0, 1, '政府'),
(95, '国家保密科学技术研究所', 'http://www.gbms.net.cn/', 1, '4a4c21292b0d5.jpg', 1246503209, 1253691168, '国家保密科学技术研究所', 0, 1, '政府'),
(96, '约会星巴克', 'http://www.meetme-starbucks.com.cn/', 1, '4a4dab95ab88d.jpg', 1246604181, 1253691154, '约会星巴克', 0, 1, '社区'),
(97, '三国英雄传', 'http://www.herosg.com', 1, '4a52b48c25a0f.jpg', 1246934156, 1253691134, '三国英雄传', 0, 1, '游戏'),
(98, '泡面三国官方网站', 'http://www.lequ.net/', 1, '4a52f79daef5f.jpg', 1246951325, 1253691111, '泡面三国官方网站', 0, 1, '游戏'),
(99, '巴黎经典', 'http://www.bljd5288.com/', 1, '4a5809b3a9875.jpg', 1247283635, 1253691086, '巴黎经典', 0, 1, '企业'),
(100, '宁波甬城妇科医院', 'http://www.92919.net/', 1, '4a5ad08097921.jpg', 1247465600, 1253691079, '宁波甬城妇科医院', 0, 1, '医疗'),
(101, '奇山宠物乐园', 'http://www.7shan.com/', 1, '4a5d794c17048.jpg', 1247639884, 1253691067, '奇山宠物乐园', 0, 1, '游戏'),
(102, '北京乐之邦电子科技有限公司', 'http://www.musiland.cn/', 1, '4a613e4613640.jpg', 1247886918, 1253691060, '北京乐之邦电子科技有限公司', 0, 1, '企业'),
(103, '重庆旅游网', 'http://www.seecq.com/', 1, '4a6a7a8dabab1.jpg', 1248492173, 1253691041, '重庆旅游网', 0, 1, '旅游 门户'),
(104, '杭州优柏实业', 'http://www.cnubuy.com/', 1, '4a6efc7f869ff.jpg', 1248787583, 1253691009, '杭州优柏实业', 0, 1, '企业'),
(105, '魔力岛网页游戏平台', 'http://www.molidao.com/', 1, '4a7659f17b4e3.jpg', 1249270257, 1253690991, '魔力岛网页游戏平台', 0, 1, '游戏'),
(106, '平湖招聘网', 'http://www.ph66.cn/', 1, '4a7bd405b7cfa.jpg', 1249629189, 1253690979, '平湖招聘网', 0, 1, '招聘'),
(107, '新时尚在线鞋城--名殿', 'http://www.meeking.cn/', 1, '4a7ff60ade917.jpg', 1249900042, 1253690972, '新时尚在线鞋城--名殿', 0, 1, '电子商务'),
(108, '识健康', 'http://www.haoeat.cn/', 1, '4a9346df6a720.jpg', 1251165919, 1253690873, '识健康', 0, 1, '社区'),
(109, '品玉斋', 'http://www.jadexp.cn/', 1, '4a963fee2ebfe.jpg', 1251360750, 1253690856, '品玉斋', 0, 1, '电子商务'),
(110, '号外网', 'http://www.haowhy.com/', 1, '4aab1fb271bb3.png', 1252728754, 1253690831, '号外网', 0, 1, '社区'),
(111, '江苏女性网', 'http://www.jsnxw.com/', 1, '4ab9c79b1d6b3.jpg', NULL, 1253690809, '江苏女性自己的时尚美容生活健康门户', 0, 0, '门户 女性'),
(112, '淘吧仔', 'http://www.taobaz.com/', 1, '4ac0552c82565.jpg', 1254118700, 1254118823, '淘宝最大的专业网商服务平台', 0, 1, '电子商务 相册'),
(113, '中山青少年高尔夫培训基金会', 'http://www.zsyounggolfer.org/', 1, '4ac1d176478de.jpg', 1254216054, 1254216054, '中山青少年高尔夫培训基金会', 0, 1, '公益'),
(114, '掌信传媒', 'http://www.zxinad.com/', 1, '4af235a9f262e.jpg', 1257387434, 1257387452, '中国最具效益WAP联盟', 0, 1, '手机'),
(115, 'Flash动画创作心智技能研究', 'http://www.designfla.cn', 1, '4b00c065f39bc.jpg', 1258340454, 1258340454, 'Flash主题动画创作平台', 0, 1, '创作'),
(116, '香香阁', 'http://www.520xxg.com', 1, '4b026a42f1ed1.jpg', 1258449475, 1258449475, '香香阁', 0, 1, '电子商务 品牌'),
(117, '漫画地', 'http://www.manhuadi.com/', 1, '4b1f2bf969e64.jpg', 1260334073, 1260334073, '漫画地', 0, 1, '动漫'),
(118, '大田光谷影视', 'http://www.whdttv.com/', 1, '4bb07ba05a84e.png', 1269854820, 1269857184, '', 0, 1, '影视'),
(119, '秀发网', 'http://www.showfa.com/', 1, '4bb07c65db520.png', 1269854936, 1269857381, '', 0, 1, '女性 '),
(120, '雅黑', 'http://www.yahei.net/', 1, '4bb07b3682e07.png', 1269855027, 1269857078, '', 0, 1, '电子商务 社区'),
(121, '阿美购物', 'http://www.amei100.cn/', 1, '4bb07bd2a152c.png', 1269855136, 1269917787, '阿美购物', 0, 1, '电子商务 女性'),
(122, '奇流网', 'http://www.qeenoo.com/', 1, '4bb07c1237823.png', 1269855288, 1269917774, '奇流网', 0, 1, '门户  物流'),
(123, '云.造型新娘化妆工作室', 'http://www.syyunn.com/', 1, '4bb074c06e375.png', 1269855424, 1269917613, '沈阳新娘化妆', 0, 1, '沈阳新娘化妆'),
(124, '重庆家电维修网', 'http://www.114-cq.com/', 1, '4bb07c97afb67.png', 1269857431, 1269917713, '重庆家电维修网', 0, 1, '门户  其他'),
(125, '武汉诚信', 'http://www.whcx.org/', 1, '4bb07ce3c3bf6.png', 1269857507, 1269917694, '武汉诚信', 0, 1, '公益'),
(126, '鼎鼐企业管理咨询有限公司', 'http://www.wholebrain.com.cn/', 1, '4bb1c6da091c5.png', 1269941978, 1269941978, '鼎鼐企业管理咨询有限公司', 0, 1, '企业 咨询'),
(127, '乐活都市网', 'http://www.lohasmetro.com/', 1, '4bb1c86f65e2b.png', 1269942383, 1269942383, '乐活都市网', 0, 1, '社区'),
(128, '沈阳富丽华大酒店', 'http://www.furamashenyang.com/', 1, '4bb1cbd2a9d58.png', 1269943250, 1269943250, '沈阳富丽华大酒店', 0, 1, '企业 酒店'),
(144, '凤凰网家居频道', 'http://ifeng.1jiaju.com/   ', 1, '4c244425cfaf3.jpg', 1277445157, 1277445157, '凤凰家居', 2, 1, '家居'),
(145, '腾讯网家居频道', 'http://www.1jiaju.com/', 1, '4c24449b6e44b.jpg', 1277445275, 1277445931, '腾讯家居', 1, 1, '家居 腾讯 资讯');

-- --------------------------------------------------------

--
-- Table structure for table `think_config`
--

CREATE TABLE IF NOT EXISTS `think_config` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `name` varchar(30) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `extra` varchar(255) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sort` mediumint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `think_config`
--

INSERT INTO `think_config` (`id`, `title`, `value`, `create_time`, `remark`, `name`, `type`, `extra`, `status`, `sort`) VALUES
(1, '网站名称', 'ThinkPHP', 1205899396, '', 'WEB_NAME', 0, '', 0, 1),
(2, '网站标题', '开源WEB应用开发框架ThinkPHP|JUST THINK IT ', 1205917701, '', 'WEB_TITLE', 0, '', 0, 2),
(4, '验证码长度', '3,5', 1217511424, '数字表示固定的长度，用 4,6 表示一定范围的长度', 'VERIFY_CODE_LENGTH', 1, '', 0, 4),
(5, '主题附件上传后缀', 'png,gif,jpg,jpeg,7z,mp3,flv,doc,rar,zip,txt,swf,pdf,ppt,chm,tar.gz,gz', 1217511611, '', 'TOPIC_UPLOAD_FILE_EXT', 3, '', 0, 5),
(7, '网站是否关闭', '0', 1222732329, '', 'WEB_TURN_OFF', 2, '否,是', 0, 7),
(8, '网站关闭提示信息', '网站维护中~', 1222732352, '', 'WEB_OFF_MSG', 0, '', 0, 8),
(10, '评论IP过滤', '', 1229477890, '', 'COMMENT_BAN_IP', 3, '', 0, 10),
(11, '文件上传的最大限制', '7242880', 1229499278, '使用字节定义', 'UPLOAD_MAX_SIZE', 1, '', 0, 11);

-- --------------------------------------------------------

--
-- Table structure for table `think_down`
--

CREATE TABLE IF NOT EXISTS `think_down` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT NULL,
  `content` text,
  `create_time` int(11) unsigned DEFAULT NULL,
  `update_time` int(11) unsigned DEFAULT NULL,
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0',
  `count` mediumint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='下载' AUTO_INCREMENT=8 ;

--
-- Dumping data for table `think_down`
--

INSERT INTO `think_down` (`id`, `name`, `title`, `status`, `content`, `create_time`, `update_time`, `sort`, `count`) VALUES
(1, 'core', '核心框架', 1, '框架各个版本的下载', 1222667598, 1254744217, 1, 16),
(2, 'doc', '文档教程', 1, '官方相关文档和教程下载', 1227280860, 1260336995, 2, 67),
(3, 'res', '其他资源', 1, '其他相关图片和视频资源', 1228981725, 1254384039, 5, 25),
(4, 'core', '应用示例', 1, '基于TP的开源应用和项目', 1229397091, 1252743216, 3, 5),
(6, 'core', '框架扩展', 1, '框架第三方扩展和插件', 1253455312, 1286204094, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `think_education`
--

CREATE TABLE IF NOT EXISTS `think_education` (
  `id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(25) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `content` text,
  `status` tinyint(1) DEFAULT NULL,
  `create_time` int(10) unsigned DEFAULT NULL,
  `update_time` int(10) unsigned DEFAULT NULL,
  `is_top` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `think_education`
--

INSERT INTO `think_education` (`id`, `category`, `title`, `content`, `status`, `create_time`, `update_time`, `is_top`) VALUES
(1, '', '官方网站全新改版', '<p><strong><font color="#ff0000">为了迎接新版本的发布，官方网站全新改版啦！ </font></strong></p>', 1, 1252740284, 1254382093, 0),
(2, '', '邀请开源TP项目联合发布', '<p>国庆官方正式版本发布的同时，有基于Think<span class="t_tag" onclick="tagshow(event)" href="tag.php?name=PHP">PHP</span>（<span class="t_tag" onclick="tagshow(event)" href="tag.php?name=%E5%8C%85%E5%90%AB">包含</span>目前的SVN版本或者1.5版本）的<span class="t_tag" onclick="tagshow(event)" href="tag.php?name=%E5%BC%80%E6%BA%90">开源</span>应用或者<span class="t_tag" onclick="tagshow(event)" href="tag.php?name=%E7%B3%BB%E7%BB%9F">系统</span>如果需要联合发布的，请联系官方，官方进行联合多渠道推广，并共同筹备发布事宜，所有通过的开源应用都有机会和ThinkPHP新版一起共同进入所有TPer的手中，列入新版用户手册的开源应用，并且载入TP的史册。<img alt="" src="http://bbs.thinkphp.cn/images/smilies/default/lol.gif" border="0" smilieid="12" /> <br />\r\n<br />\r\n可以通过QQ：130770305或者发邮件到 <a href="mailto:thinkphp@qq.com"><span class="t_tag" onclick="tagshow(event)" href="tag.php?name=thinkphp">thinkphp</span>@qq.com</a> 联系<br />\r\n<br />\r\n<strong><font color="#ff0000">让大家共同来分享新版发布的喜悦，TPer共襄盛举！</font></strong><br />\r\n<br />\r\n正式版本发布之际，官方会推出官方纪念套件：<strong><font color="#0000ff">用户指南文档(包含API)&nbsp;&nbsp;印刷版手册+优质文化T恤+大容量U盘+ThinkPHP核心、<span class="t_tag" onclick="tagshow(event)" href="tag.php?name=%E7%A4%BA%E4%BE%8B">示例</span>、资源+各TPer联合发布的应用源码</font></strong>。<br />\r\n-----------------------------------------------------------------------------<br />\r\n鉴于此次登记随着ThinkPHP新版联合发布的开源应用数量已经越来越多，为了更好的规范管理，我们要求开发者注意如下注意事项：<br />\r\n前提：此次联合发布的应用必须是基于TP1.5或者以上版本 并且开源，是否有网站不限。<br />\r\n要求：参加联合发布的作者请于9月25日之前提交测试过的开源应用到官方邮箱：<font color="#000000"><a href="mailto:thinkphp@qq.com">thinkphp@qq.com</a></font> <br />\r\n<br />\r\n并注明：<br />\r\n<font color="#0000ff"><strong>1、应用名称<br />\r\n2、概要说明<br />\r\n3、作者名称、联系邮箱和官方论坛ID（加分用）<br />\r\n4、所用的TP开发版本<br />\r\n应用采用打包形式，每个应用必须有一份安装说明文档，并配有截图一份。</strong><br />\r\n</font>-----------------------------------------------------------------------------<br />\r\n<br />\r\n目前已经确认列入新版发布的纪念套装U盘里面的开源应用包括：<br />\r\n<br />\r\n<strong>ThinkSNS</strong>： 开源SNS系统，基于ThinkPHP最新版本<br />\r\n医疗问答和预约系统：基于ThinkPHP最新版本的开源应用<br />\r\nthinket整站系统：基于TP1.5版本<br />\r\nTp工具箱：基于ThinkPHP开发的TP工具箱，包括1.5和新版本的<br />\r\n<strong>Yblog</strong>：基于ThinkPHP的开源博客系统<br />\r\n精简店铺管理系统：基于TP1.5的开业店铺管理应用<br />\r\nThinkmed：开源网站管理系统 基于TP最新版本<br />\r\nThink<span class="t_tag" onclick="tagshow(event)" href="tag.php?name=CMS">CMS</span>：开源内容管理系统 基于TP最新版本<br />\r\nMini<span class="t_tag" onclick="tagshow(event)" href="tag.php?name=Blog">Blog</span>：开源的迷你博客系统 基于TP最新版本<br />\r\n<strong>ThinkMyAdmin</strong>：开源mysql管理工具测试版 基于TP最新版本 <strong><font color="#ff0000">官方荣誉出品</font></strong><br />\r\nTcms:开源的内容管理系统 基于Tp最新版本<br />\r\nThinkHost：开源虚拟<span class="t_tag" onclick="tagshow(event)" href="tag.php?name=%E4%B8%BB%E6%9C%BA">主机</span>管理系统 基于TP最新版本<br />\r\n泽泽采集系统:开源采集系统，基于TP1.5版本<br />\r\n基于最新版本的留言板<br />\r\nRegisterBm:报名管理系统 基于TP1.5版本</p>', 1, 1252741633, NULL, 0),
(3, '', 'ThinkPHP新版发布纪念套装', '<p><img border="0" alt="" width="180" aid="attachimg_1301" src="http://bbs.thinkphp.cn/attachments/month_0909/09091923420d456bef1e61ea38.jpg" /><br />\r\nThinkPHP风雨三载，感恩不断，惊喜连连，官方将于国庆发布新的划时代2.0版本，为了迎接新版的正式发布和伟大祖国的60周年庆典，同时为了回馈广大TPer的关注和支持，官方特别推出<strong><font color="#ff0000">纪念超值套装</font></strong>。</p>\r\n<p><br />\r\n<strong>套装内容</strong>：包含下列超值内容<br />\r\n1、ThinkPHP2.0新版全部代码、示例和电子版文档；<br />\r\n2、官方新版发布纪念T恤一件；<br />\r\n3、ThinkPHP2.0完全开发手册（查看<a target="_blank" href="http://bbs.thinkphp.cn/viewthread.php?tid=8257">手册目录</a>）一本（厚达280页 带作者亲笔签名限量5000）；<br />\r\n4、ThinkPHP 4G大容量U盘一个；<strong><font color="#ff0000">（已经售罄）</font></strong><br />\r\n5、大量基于TP的开源应用源码（<a target="_blank" href="http://bbs.thinkphp.cn/viewthread.php?tid=8076"><font color="#0000ff">查看联合发布的开源应用</font></a>）和开发工具；<br />\r\n6、官方新版壁纸和Cheatsheet卡片<br />\r\n<strong><font color="#ff0000">9月27日 官方在套装内额外附赠了精心设计的</font></strong><a target="_blank" href="http://bbs.thinkphp.cn/viewthread.php?tid=8561&amp;page=1&amp;extra="><strong><font color="#ff0000">Cheatsheet彩印卡片</font></strong></a><br />\r\n<strong><font color="#ff0000"><img border="0" alt="" width="180" aid="attachimg_1369" src="http://bbs.thinkphp.cn/attachments/month_0910/091011180465b83100cb95b302.jpg" /><img border="0" alt="" width="180" aid="attachimg_1370" src="http://bbs.thinkphp.cn/attachments/month_0910/09101118044e3cfba04d891c2a.jpg" /><br />\r\n6重惊喜</font></strong>：购买用户同时还可以获得更多的惊喜<br />\r\n惊喜1：凡购买用户在官方论坛的ID授予达人荣誉称号，免费成为官方的VIP贵宾会员；<br />\r\n惊喜2：前1000名购买用户可以获得红色主机价值199元的电信型2G主机空间一年（PHP5+MySQL5 共享2G空间 不含域名）（<strong><font color="#ff0000">已经送完</font></strong>）；<br />\r\n惊喜3：前1000名购买用户可以获得官方纪念明信片一张；<br />\r\n惊喜4：凡购买用户可以免费获赠价值500元的LAMP兄弟连（易第优教育）4小时在线企业门户建站培训；<br />\r\n惊喜5：参与联合发布的开源应用将进行公开评选，优秀开源应用将免费获得易联主机提供的1G空间一年；<br />\r\n惊喜6：购买用户还有额外抽奖机会；<strong><font color="#4169e1"><br />\r\n</font></strong>套装售价<strong><font color="#ff0000">118元</font></strong>，含快递费用！&nbsp;&nbsp;<br />\r\n[ 更多：<a target="_blank" href="http://bbs.thinkphp.cn/viewthread.php?tid=8737">套装实物图片</a> ]<br />\r\n<br />\r\nThinkPHP（<a target="_blank" href="http://thinkphp.cn/"><font color="#810081">http://thinkphp.cn</font></a> ）是一个免费开源的，快速、简单的面向对象的轻量级PHP开发框架，遵循Apache2开源协议发布，是为了敏捷WEB应用开发和简化企业级应用开发而诞生的。拥有众多的优秀功能和特性，经历了三年多发展的同时，在社区团队的积极参与下，在易用性、扩展性和性能方面不断优化和改进，众多的典型案例确保可以稳定用于商业以及门户级的开发。<br />\r\n拥有这套TP纪念套装，就等于拥有了一套全面的WEB开发装备和秘籍，不仅让你对ThinkPHP无师自通，技术胜人一筹，轻轻松松开发，还将成为官方的VIP贵宾会员，享受更多的服务。<br />\r\n所有热衷于PHP开发的朋友们，让我们共同呐喊：<strong><font color="#0000ff">大道至简，开发由我WE CAN DO IT , JUST THINK</font></strong> !<br />\r\n<br />\r\n订购流程：<br />\r\n1、选择支付方式付款-&gt;2、在备注栏留下相关资料（姓名、电话和地址、邮箱、论坛ID T恤大小 如果是转账的话 可以只留电话和姓名 其他到论坛更新）-&gt;3、购买后联系官方开通论坛VIP权限-&gt;4、官方安排发货<br />\r\n<br />\r\n<strong>订购需知</strong>：<br />\r\n请购买者务必在支付信息中留下姓名、快递地址、联系电话和邮件地址（以及官方论坛ID，便于我们授予荣誉和VIP服务），以便于我们发货和通知。套装支付购买后第二日即可发货。</p>\r\n<p><font color="#0000ff">购买后请联系：QQ 390758770 电话：13501889395 邮件：</font><a target="_blank" href="mailto:liuchen@topthink.com"><font color="#0000ff">liuchen@topthink.com</font></a><br />\r\n<br />\r\n<strong>支付方式</strong>：<br />\r\n<strong><font color="#4169e1">快钱账户（即时到账付款）</font></strong>：liu21st[at]gmail.com（将[at]换成@）<br />\r\n<strong><font color="#4169e1">支付宝账号（即时到账付款）</font></strong>：liu21st[at]gmail.com（将[at]换成@）<br />\r\n财付通账号：<strong><font color="#4169e1">130770305</font></strong> 账户真实姓名：刘晨<br />\r\n<strong><font color="#4169e1">银行转账（个人银行账号）</font></strong><br />\r\n开户行：招商银行上海分行外滩支行 <br />\r\n账号：6225882111345085 <br />\r\n开户名：刘晨<br />\r\n<br />\r\n上海地区的用户也可以上门提货，</p>\r\n<p>提货地址：上海市徐汇区钦州路108弄6号楼203室</p>\r\n<p>提货时间：周一到周五 9：30~18：30<br />\r\n<br />\r\n<strong>奖品赞助</strong>：<br />\r\n<a target="_blank" href="http://www.redphp.cn/"><font color="#0000ff">红色主机</font></a> <a target="_blank" href="http://www.elinkhost.com/"><font color="#810081">易联主机</font></a> <a target="_blank" href="http://www.youlianxi.com/"><font color="#0000ff">有联系网</font></a> <a target="_blank" href="http://www.immyhome.com/"><font color="#0000ff">爱美艾家</font></a> <br />\r\n<br />\r\n<strong>合作媒体</strong>：<br />\r\n<a target="_blank" href="http://phpchina.com/"><img border="0" alt="" width="88" height="31" src="http://www.phpchina.com/images/logo1.gif" /></a> <a target="_blank" href="http://www.php100.com/"><img border="0" alt="" width="88" height="31" src="http://bbs.php100.com/logo.gif" /></a> <a target="_blank" href="http://www.php.cn/"><img border="0" alt="" width="88" height="31" src="http://bbs.php.cn/logo.gif" /></a>&nbsp;&nbsp;<a target="_blank" href="http://www.carronedu.com/"><font color="#0000ff">开沅教育</font></a> <a target="_blank" href="http://www.lampbrother.net/"><img border="0" alt="" width="88" height="31" src="http://www.lampbrother.net/img/link/bbs.gif" /></a> <a target="_blank" href="http://www.tech-q.cn/"><img border="0" alt="" src="http://www.tech-q.cn/images/logo.gif" /></a>&nbsp;&nbsp;<a target="_blank" href="http://www.phphubei.com/"><img border="0" alt="" src="http://thinkphp.cn/Public/Images/phphubei-logo.gif" /></a>&nbsp;&nbsp;<br />\r\n欢迎更多的单位进行媒体合作以及奖品赞助，并诚邀单位、机构和个人进行代理和联合发售。<br />\r\n（奖品赞助、媒体合作或者代理销售请联系Email：<a target="_blank" href="mailto:liuchen@topthink.com"><font color="#0000ff">liuchen@topthink.com</font></a> 或者QQ：130770305 请注明来意）<br />\r\n<br />\r\n<br />\r\n<strong><font color="#ff00ff">购买套装用户注意事项：</font></strong><br />\r\n1、套装价格均含快递费用（统一韵达+EMS快递）<br />\r\n2、支付宝和快钱需使用直接到账支付方式<br />\r\n3、支付备注栏中必须注明姓名、电话和地址以及官方论坛ID等信息资料，如果购买多套请注明清楚，便于我们发货和通知<br />\r\n4、支付完成后请联系官方专用活动QQ：<font color="#0000ff">390758770 电话：13501889395 邮件：</font><a target="_blank" href="mailto:liuchen@topthink.com"><font color="#0000ff">liuchen@topthink.com</font></a>&nbsp; &nbsp;提供支付截图和论坛ID后一个工作日内开通VIP权限<br />\r\n5、开通VIP权限后即可登录论坛到VIP专区下载相关资料和开源应用<br />\r\n6、前面1000名购买用户 可以获得官方明信片和红色主机2G空间（<strong><font color="#ff0000">已经送完</font></strong>）<br />\r\n7、购买用户的空间资料、免费建站培训报名会统一批次处理<br />\r\n8、套装中的物品不单卖，如果有批量购买的需要， 请联系官方 电话：13501889395 <font color="#0000ff">邮件：</font><a target="_blank" href="mailto:liuchen@topthink.com"><font color="#0000ff">liuchen@topthink.com</font></a><br />\r\n9、官方T恤的尺寸大小定有165 170 175 180 码数 如果没有特别注明，均使用170标准大码<br />\r\n10、套装活动目前不设截至日期，停止时间请关注官方发布的公告<br />\r\n<br />\r\n<strong><font color="#4169e1">购买后有其他建议可以在VIP专区发帖交流</font></strong></p>', 1, 1252741764, 1269843811, 1),
(4, '', 'ThinkPHP发布2.0正式版本', '<p><img alt="" border="0" src="http://www.thinkphp.cn/Public/logo3.png" /><strong><font color="#ff0000"> <br />\r\nThinkPHP发布2.0正式版本</font></strong><br />\r\n<strong><font color="#ff0000"><br />\r\n</font></strong>在经过5个月的重构和完善之后，ThinkPHP终于发布了新的里程碑版本2.0，作为新版网站上线和祖国60周年华诞的献礼。感谢为了新版的功能辛苦测试和完善的朋友们，感谢一直以来支持和关注TP的朋友们，是你们见证和成就了TP的快速成长。官方也会一如既往的发展ThinkPHP，以完善TP和方便开发为己任！ <br />\r\n<br />\r\n<font color="#ff0000"><strong>[ 特性 ]</strong> </font><br />\r\n完全重构的框架核心<br />\r\n可组装和定制的底层<br />\r\n更简单的MVC和ORM<br />\r\n灵活的URL模式<br />\r\n丰富的查询语言<br />\r\n增加视图模型、关联模型和高级模型以及动态模型<br />\r\n分组模块的全新体验<br />\r\n优化的模板引擎<br />\r\n强大的扩展机制<br />\r\n各方面性能的大幅提升<br />\r\n<br />\r\n<strong><font color="#ff0000">详细请参考：<a href="http://bbs.thinkphp.cn/viewthread.php?tid=8631&amp;extra=&amp;page=1">http://bbs.thinkphp.cn/viewthread.php?tid=8631&amp;extra=&amp;page=1</a></font></strong></p>', 1, 1254374099, NULL, 0),
(5, '', '上海顶想信息科技高薪诚聘', '<p>由于业务发展需要，上海顶想信息科技有限公司长期招聘人员如下：<br />\r\n<br />\r\n<strong>项目经理</strong>（2人）<br />\r\n1、5年以上实际WEB项目开发经验 精通PHP等WEB开发语言<br />\r\n2、具有网站LAMP架构设计、部署和优化经验<br />\r\n3、有较强的分析问题和解决问题的能力<br />\r\n4、强烈的责任心，良好的沟通能力，良好的团队合作精神，对工作有激情<br />\r\n5、具备良好的代码编程习惯及较强的文档编写能力<br />\r\n6、有大型网站开发经验或者团队管理经验者优先考虑<br />\r\n待遇范围：6500~9500+福利<br />\r\n<br />\r\n<strong>PHP高级程序员</strong>（5~8人）<br />\r\n1、2年以上PHP+MYSQL开发经验 <br />\r\n2、良好的代码习惯和面向对象的编程思想<br />\r\n3、熟悉HTML/XHTML、CSS、Javascript<br />\r\n4、有良好的团队合作能力，善于沟通，热爱开发事业<br />\r\n5、有责任心 具有良好的自学能力和独立解决问题的能力；<br />\r\n6、有大型社区或者门户开发经验或者自己的独立技术作品优先考虑<br />\r\n待遇范围：4500~6500+福利<br />\r\n<br />\r\n<strong>PHP初级程序员</strong>（5人）<br />\r\n1、1年以上WEB项目开发经验 良好的代码习惯和面向对象的编程思想<br />\r\n2、热爱ThinkPHP 热衷PHP并且希望在PHP领域发展<br />\r\n3、熟悉HTML/XHTML、CSS、Javascript<br />\r\n4、具有良好的自学能力 有责任心 能够承受压力<br />\r\n待遇范围：3000~5000+福利<br />\r\n<br />\r\n前端开发（2人）<br />\r\n1、2年以上前端开发经验<br />\r\n2、精通XHTML/CSS/JavaScript/Ajax/DOM 代码实现做到兼容主流浏览器<br />\r\n3、掌握Jquery或者任何一个JS框架 熟悉YSlow和SEO知识<br />\r\n4、能够和美工很好的沟通衔接工作或者有一定的美工基础<br />\r\n5、有大型社区和门户的开发经验优先考虑<br />\r\n待遇范围：3000~6000+福利<br />\r\n<br />\r\n简历请投至<a href="mailto:hr@topthink.com" target="_blank">hr@topthink.com</a> 并附上个人作品和案例 合则约见<br />\r\n<br />\r\n公司简介：<br />\r\n上海顶想信息科技有限公司（TOPThink Inc.）是国内领先的WEB应用和服务提供商，致力于WEB应用平台、产品和应用的研发和服务，为企事业单位提供基于WEB的应用开发快速解决方案和产品。公司长期专注于WEB应用框架和解决方案的研究。ThinkPHP经过四年的精心打造和发展，具有广泛的用户基础和良好的业内口碑，拥有50w开发用户。已经成长为国内领先和最具影响力的WEB应用开发框架，其应用领域分布于各个行业，在企业WEB应用和电子商务方面有着非常良好支持以及拓展，大小案例不下千家，在安全、效率、负载上都有很大优势，已经成为WEB应用的快速开发解决方案和最佳实践！<br />\r\n<br />\r\n公司理念：专业源于专注，细节决定成败。<br />\r\n我们的口号是：<strong><font color="#0000ff">JUST THINK IT</font></strong></p>', 1, 1262843179, 1283220463, 1),
(6, '名词解释', '2010年RoadMap计划', '<table cellspacing="0" cellpadding="0">\r\n    <tbody>\r\n        <tr>\r\n            <td class="t_msgfont" id="postmessage_67008">首先要对社区关心和关注Think<span href="tag.php?name=PHP" onclick="tagshow(event)" class="t_tag">PHP</span>的朋友表示感谢和歉意，由于<span href="tag.php?name=%E9%A1%B9%E7%9B%AE" onclick="tagshow(event)" class="t_tag">项目</span>和人手的关系，对目前社区的支持力度不够，新手抱怨较多。<br />\r\n            但请大家相信，官方一直在不遗余力地发展ThinkPHP，发展国内的<span href="tag.php?name=%E5%BC%80%E6%BA%90" onclick="tagshow(event)" class="t_tag">开源</span><span href="tag.php?name=%E6%A1%86%E6%9E%B6" onclick="tagshow(event)" class="t_tag">框架</span>事业我们从未止步！<br />\r\n            <br />\r\n            另外鉴于目前的2.0版本相对比较稳定，ThinkPHP今年上半年不会有大的改动，预计今年10月1日可以发布最新的2.1版本。<br />\r\n            <br />\r\n            除了一些<span href="tag.php?name=BUG" onclick="tagshow(event)" class="t_tag">BUG</span>修正之外，官方的roadmap计划如下：<br />\r\n            1、完善<span href="tag.php?name=URL" onclick="tagshow(event)" class="t_tag">URL</span><span href="tag.php?name=%E8%B7%AF%E7%94%B1" onclick="tagshow(event)" class="t_tag">路由</span> 支持正则匹配和<span href="tag.php?name=%E5%87%BD%E6%95%B0" onclick="tagshow(event)" class="t_tag">函数</span><span href="tag.php?name=%E8%A7%A3%E6%9E%90" onclick="tagshow(event)" class="t_tag">解析</span>、泛域名解析<br />\r\n            2、<span href="tag.php?name=%E5%88%86%E7%BB%84" onclick="tagshow(event)" class="t_tag">分组</span><span href="tag.php?name=%E6%A8%A1%E5%BC%8F" onclick="tagshow(event)" class="t_tag">模式</span>完美支持二级域名<br />\r\n            3、<span href="tag.php?name=%E6%A8%A1%E6%9D%BF" onclick="tagshow(event)" class="t_tag">模板</span>引擎改进和完善<br />\r\n            4、更加强大的扩展机制<br />\r\n            5、提供AMF支持<br />\r\n            6、提供更多的<span href="tag.php?name=%E5%BA%94%E7%94%A8" onclick="tagshow(event)" class="t_tag">应用</span>接口支持<br />\r\n            7、更多精彩的细节功能~<br />\r\n            <br />\r\n            <font color="#4169e1"><strong>另外一个值得期待的是，届时将启动全新的官方社区（包括知识中心和更多的互动<span href="tag.php?name=%E6%A8%A1%E5%9D%97" onclick="tagshow(event)" class="t_tag">模块</span>、项目中心），并且同时开放旧版的官方网站<span href="tag.php?name=%E6%BA%90%E7%A0%81" onclick="tagshow(event)" class="t_tag">源码</span>。</strong></font><br />\r\n            <br />\r\n            <strong><font color="#ff0000">开源需要大家的参与和贡献，我们也热情期盼更多的人参与进来，共同完善，人人为我，我为人人</font></strong><br />\r\n            <strong><font color="#ff0000">WE CAN DO IT ,JUST THINK IT !</font></strong><br />\r\n            <br />\r\n            <strong><font color="#4169e1">另外诚意邀请社区的PHP精英加盟ThinkPHP官方团队！</font></strong><br />\r\n            <strong><font color="#4169e1">诚意联系Email：</font><a href="mailto:hr@topthink.com"><font color="#4169e1">hr@topthink.com</font></a><font color="#4169e1"> 或者 QQ：130770305（非技术交流）</font></strong></td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 1, 1271298522, 1351927053, 0),
(7, '深入了解', 'EducationModel', '<p>EducationModel</p>', 1, 1351920643, 1351927043, 0),
(8, '基本概念', '来来来，测试来了_o1!!!!', '<p><em><font color="#FFCC00">来来来，测试来了!!!!</font></em></p>', 1, 1351922509, NULL, 0),
(9, '深入了解', '来来来，测试来了_o1!!!!', '<p>来来来，测试来了_o1!!!!</p>', 1, 1351922516, NULL, 0),
(10, '基本概念', '开发测试指南，一线开发人员必备!', '<p><font size="3"><strong><font color="#3366FF">开发测试指南，一线开发人员必备!</font></strong></font></p>', 1, 1351924451, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `think_group`
--

CREATE TABLE IF NOT EXISTS `think_group` (
  `id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `title` varchar(50) NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `think_group`
--

INSERT INTO `think_group` (`id`, `name`, `title`, `create_time`, `update_time`, `status`, `sort`, `show`) VALUES
(2, 'App', '应用中心', 1222841259, 0, 1, 0, 0),
(3, 'System', '系统中心', 1222841285, 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `think_help`
--

CREATE TABLE IF NOT EXISTS `think_help` (
  `id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(25) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `content` text,
  `status` tinyint(1) DEFAULT NULL,
  `create_time` int(10) unsigned DEFAULT NULL,
  `update_time` int(10) unsigned DEFAULT NULL,
  `is_top` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `think_help`
--

INSERT INTO `think_help` (`id`, `category`, `title`, `content`, `status`, `create_time`, `update_time`, `is_top`) VALUES
(1, '帮助分类1', '官方网站全新改版', '<p><strong><font color="#ff0000">为了迎接新版本的发布，官方网站全新改版啦！ </font></strong></p>', 1, 1252740284, 1351927188, 0),
(2, '帮助分类3', '邀请开源TP项目联合发布', '<p>国庆官方正式版本发布的同时，有基于Think<span href="tag.php?name=PHP" onclick="tagshow(event)" class="t_tag">PHP</span>（<span href="tag.php?name=%E5%8C%85%E5%90%AB" onclick="tagshow(event)" class="t_tag">包含</span>目前的SVN版本或者1.5版本）的<span href="tag.php?name=%E5%BC%80%E6%BA%90" onclick="tagshow(event)" class="t_tag">开源</span>应用或者<span href="tag.php?name=%E7%B3%BB%E7%BB%9F" onclick="tagshow(event)" class="t_tag">系统</span>如果需要联合发布的，请联系官方，官方进行联合多渠道推广，并共同筹备发布事宜，所有通过的开源应用都有机会和ThinkPHP新版一起共同进入所有TPer的手中，列入新版用户手册的开源应用，并且载入TP的史册。<img border="0" smilieid="12" src="http://bbs.thinkphp.cn/images/smilies/default/lol.gif" alt="" /> <br />\r\n<br />\r\n可以通过QQ：130770305或者发邮件到 <a href="mailto:thinkphp@qq.com"><span href="tag.php?name=thinkphp" onclick="tagshow(event)" class="t_tag">thinkphp</span>@qq.com</a> 联系<br />\r\n<br />\r\n<strong><font color="#ff0000">让大家共同来分享新版发布的喜悦，TPer共襄盛举！</font></strong><br />\r\n<br />\r\n正式版本发布之际，官方会推出官方纪念套件：<strong><font color="#0000ff">用户指南文档(包含API)&nbsp;&nbsp;印刷版手册+优质文化T恤+大容量U盘+ThinkPHP核心、<span href="tag.php?name=%E7%A4%BA%E4%BE%8B" onclick="tagshow(event)" class="t_tag">示例</span>、资源+各TPer联合发布的应用源码</font></strong>。<br />\r\n-----------------------------------------------------------------------------<br />\r\n鉴于此次登记随着ThinkPHP新版联合发布的开源应用数量已经越来越多，为了更好的规范管理，我们要求开发者注意如下注意事项：<br />\r\n前提：此次联合发布的应用必须是基于TP1.5或者以上版本 并且开源，是否有网站不限。<br />\r\n要求：参加联合发布的作者请于9月25日之前提交测试过的开源应用到官方邮箱：<font color="#000000"><a href="mailto:thinkphp@qq.com">thinkphp@qq.com</a></font> <br />\r\n<br />\r\n并注明：<br />\r\n<font color="#0000ff"><strong>1、应用名称<br />\r\n2、概要说明<br />\r\n3、作者名称、联系邮箱和官方论坛ID（加分用）<br />\r\n4、所用的TP开发版本<br />\r\n应用采用打包形式，每个应用必须有一份安装说明文档，并配有截图一份。</strong><br />\r\n</font>-----------------------------------------------------------------------------<br />\r\n<br />\r\n目前已经确认列入新版发布的纪念套装U盘里面的开源应用包括：<br />\r\n<br />\r\n<strong>ThinkSNS</strong>： 开源SNS系统，基于ThinkPHP最新版本<br />\r\n医疗问答和预约系统：基于ThinkPHP最新版本的开源应用<br />\r\nthinket整站系统：基于TP1.5版本<br />\r\nTp工具箱：基于ThinkPHP开发的TP工具箱，包括1.5和新版本的<br />\r\n<strong>Yblog</strong>：基于ThinkPHP的开源博客系统<br />\r\n精简店铺管理系统：基于TP1.5的开业店铺管理应用<br />\r\nThinkmed：开源网站管理系统 基于TP最新版本<br />\r\nThink<span href="tag.php?name=CMS" onclick="tagshow(event)" class="t_tag">CMS</span>：开源内容管理系统 基于TP最新版本<br />\r\nMini<span href="tag.php?name=Blog" onclick="tagshow(event)" class="t_tag">Blog</span>：开源的迷你博客系统 基于TP最新版本<br />\r\n<strong>ThinkMyAdmin</strong>：开源mysql管理工具测试版 基于TP最新版本 <strong><font color="#ff0000">官方荣誉出品</font></strong><br />\r\nTcms:开源的内容管理系统 基于Tp最新版本<br />\r\nThinkHost：开源虚拟<span href="tag.php?name=%E4%B8%BB%E6%9C%BA" onclick="tagshow(event)" class="t_tag">主机</span>管理系统 基于TP最新版本<br />\r\n泽泽采集系统:开源采集系统，基于TP1.5版本<br />\r\n基于最新版本的留言板<br />\r\nRegisterBm:报名管理系统 基于TP1.5版本</p>', 1, 1252741633, 1351927183, 0),
(3, '帮助分类2', 'ThinkPHP新版发布纪念套装', '<p><img width="180" border="0" src="http://bbs.thinkphp.cn/attachments/month_0909/09091923420d456bef1e61ea38.jpg" aid="attachimg_1301" alt="" /><br />\r\nThinkPHP风雨三载，感恩不断，惊喜连连，官方将于国庆发布新的划时代2.0版本，为了迎接新版的正式发布和伟大祖国的60周年庆典，同时为了回馈广大TPer的关注和支持，官方特别推出<strong><font color="#ff0000">纪念超值套装</font></strong>。</p>\r\n<p><br />\r\n<strong>套装内容</strong>：包含下列超值内容<br />\r\n1、ThinkPHP2.0新版全部代码、示例和电子版文档；<br />\r\n2、官方新版发布纪念T恤一件；<br />\r\n3、ThinkPHP2.0完全开发手册（查看<a href="http://bbs.thinkphp.cn/viewthread.php?tid=8257" target="_blank">手册目录</a>）一本（厚达280页 带作者亲笔签名限量5000）；<br />\r\n4、ThinkPHP 4G大容量U盘一个；<strong><font color="#ff0000">（已经售罄）</font></strong><br />\r\n5、大量基于TP的开源应用源码（<a href="http://bbs.thinkphp.cn/viewthread.php?tid=8076" target="_blank"><font color="#0000ff">查看联合发布的开源应用</font></a>）和开发工具；<br />\r\n6、官方新版壁纸和Cheatsheet卡片<br />\r\n<strong><font color="#ff0000">9月27日 官方在套装内额外附赠了精心设计的</font></strong><a href="http://bbs.thinkphp.cn/viewthread.php?tid=8561&amp;page=1&amp;extra=" target="_blank"><strong><font color="#ff0000">Cheatsheet彩印卡片</font></strong></a><br />\r\n<strong><font color="#ff0000"><img width="180" border="0" src="http://bbs.thinkphp.cn/attachments/month_0910/091011180465b83100cb95b302.jpg" aid="attachimg_1369" alt="" /><img width="180" border="0" src="http://bbs.thinkphp.cn/attachments/month_0910/09101118044e3cfba04d891c2a.jpg" aid="attachimg_1370" alt="" /><br />\r\n6重惊喜</font></strong>：购买用户同时还可以获得更多的惊喜<br />\r\n惊喜1：凡购买用户在官方论坛的ID授予达人荣誉称号，免费成为官方的VIP贵宾会员；<br />\r\n惊喜2：前1000名购买用户可以获得红色主机价值199元的电信型2G主机空间一年（PHP5+MySQL5 共享2G空间 不含域名）（<strong><font color="#ff0000">已经送完</font></strong>）；<br />\r\n惊喜3：前1000名购买用户可以获得官方纪念明信片一张；<br />\r\n惊喜4：凡购买用户可以免费获赠价值500元的LAMP兄弟连（易第优教育）4小时在线企业门户建站培训；<br />\r\n惊喜5：参与联合发布的开源应用将进行公开评选，优秀开源应用将免费获得易联主机提供的1G空间一年；<br />\r\n惊喜6：购买用户还有额外抽奖机会；<strong><font color="#4169e1"><br />\r\n</font></strong>套装售价<strong><font color="#ff0000">118元</font></strong>，含快递费用！&nbsp;&nbsp;<br />\r\n[ 更多：<a href="http://bbs.thinkphp.cn/viewthread.php?tid=8737" target="_blank">套装实物图片</a> ]<br />\r\n<br />\r\nThinkPHP（<a href="http://thinkphp.cn/" target="_blank"><font color="#810081">http://thinkphp.cn</font></a> ）是一个免费开源的，快速、简单的面向对象的轻量级PHP开发框架，遵循Apache2开源协议发布，是为了敏捷WEB应用开发和简化企业级应用开发而诞生的。拥有众多的优秀功能和特性，经历了三年多发展的同时，在社区团队的积极参与下，在易用性、扩展性和性能方面不断优化和改进，众多的典型案例确保可以稳定用于商业以及门户级的开发。<br />\r\n拥有这套TP纪念套装，就等于拥有了一套全面的WEB开发装备和秘籍，不仅让你对ThinkPHP无师自通，技术胜人一筹，轻轻松松开发，还将成为官方的VIP贵宾会员，享受更多的服务。<br />\r\n所有热衷于PHP开发的朋友们，让我们共同呐喊：<strong><font color="#0000ff">大道至简，开发由我WE CAN DO IT , JUST THINK</font></strong> !<br />\r\n<br />\r\n订购流程：<br />\r\n1、选择支付方式付款-&gt;2、在备注栏留下相关资料（姓名、电话和地址、邮箱、论坛ID T恤大小 如果是转账的话 可以只留电话和姓名 其他到论坛更新）-&gt;3、购买后联系官方开通论坛VIP权限-&gt;4、官方安排发货<br />\r\n<br />\r\n<strong>订购需知</strong>：<br />\r\n请购买者务必在支付信息中留下姓名、快递地址、联系电话和邮件地址（以及官方论坛ID，便于我们授予荣誉和VIP服务），以便于我们发货和通知。套装支付购买后第二日即可发货。</p>\r\n<p><font color="#0000ff">购买后请联系：QQ 390758770 电话：13501889395 邮件：</font><a href="mailto:liuchen@topthink.com" target="_blank"><font color="#0000ff">liuchen@topthink.com</font></a><br />\r\n<br />\r\n<strong>支付方式</strong>：<br />\r\n<strong><font color="#4169e1">快钱账户（即时到账付款）</font></strong>：liu21st[at]gmail.com（将[at]换成@）<br />\r\n<strong><font color="#4169e1">支付宝账号（即时到账付款）</font></strong>：liu21st[at]gmail.com（将[at]换成@）<br />\r\n财付通账号：<strong><font color="#4169e1">130770305</font></strong> 账户真实姓名：刘晨<br />\r\n<strong><font color="#4169e1">银行转账（个人银行账号）</font></strong><br />\r\n开户行：招商银行上海分行外滩支行 <br />\r\n账号：6225882111345085 <br />\r\n开户名：刘晨<br />\r\n<br />\r\n上海地区的用户也可以上门提货，</p>\r\n<p>提货地址：上海市徐汇区钦州路108弄6号楼203室</p>\r\n<p>提货时间：周一到周五 9：30~18：30<br />\r\n<br />\r\n<strong>奖品赞助</strong>：<br />\r\n<a href="http://www.redphp.cn/" target="_blank"><font color="#0000ff">红色主机</font></a> <a href="http://www.elinkhost.com/" target="_blank"><font color="#810081">易联主机</font></a> <a href="http://www.youlianxi.com/" target="_blank"><font color="#0000ff">有联系网</font></a> <a href="http://www.immyhome.com/" target="_blank"><font color="#0000ff">爱美艾家</font></a> <br />\r\n<br />\r\n<strong>合作媒体</strong>：<br />\r\n<a href="http://phpchina.com/" target="_blank"><img width="88" height="31" border="0" src="http://www.phpchina.com/images/logo1.gif" alt="" /></a> <a href="http://www.php100.com/" target="_blank"><img width="88" height="31" border="0" src="http://bbs.php100.com/logo.gif" alt="" /></a> <a href="http://www.php.cn/" target="_blank"><img width="88" height="31" border="0" src="http://bbs.php.cn/logo.gif" alt="" /></a>&nbsp;&nbsp;<a href="http://www.carronedu.com/" target="_blank"><font color="#0000ff">开沅教育</font></a> <a href="http://www.lampbrother.net/" target="_blank"><img width="88" height="31" border="0" src="http://www.lampbrother.net/img/link/bbs.gif" alt="" /></a> <a href="http://www.tech-q.cn/" target="_blank"><img border="0" src="http://www.tech-q.cn/images/logo.gif" alt="" /></a>&nbsp;&nbsp;<a href="http://www.phphubei.com/" target="_blank"><img border="0" src="http://thinkphp.cn/Public/Images/phphubei-logo.gif" alt="" /></a>&nbsp;&nbsp;<br />\r\n欢迎更多的单位进行媒体合作以及奖品赞助，并诚邀单位、机构和个人进行代理和联合发售。<br />\r\n（奖品赞助、媒体合作或者代理销售请联系Email：<a href="mailto:liuchen@topthink.com" target="_blank"><font color="#0000ff">liuchen@topthink.com</font></a> 或者QQ：130770305 请注明来意）<br />\r\n<br />\r\n<br />\r\n<strong><font color="#ff00ff">购买套装用户注意事项：</font></strong><br />\r\n1、套装价格均含快递费用（统一韵达+EMS快递）<br />\r\n2、支付宝和快钱需使用直接到账支付方式<br />\r\n3、支付备注栏中必须注明姓名、电话和地址以及官方论坛ID等信息资料，如果购买多套请注明清楚，便于我们发货和通知<br />\r\n4、支付完成后请联系官方专用活动QQ：<font color="#0000ff">390758770 电话：13501889395 邮件：</font><a href="mailto:liuchen@topthink.com" target="_blank"><font color="#0000ff">liuchen@topthink.com</font></a>&nbsp; &nbsp;提供支付截图和论坛ID后一个工作日内开通VIP权限<br />\r\n5、开通VIP权限后即可登录论坛到VIP专区下载相关资料和开源应用<br />\r\n6、前面1000名购买用户 可以获得官方明信片和红色主机2G空间（<strong><font color="#ff0000">已经送完</font></strong>）<br />\r\n7、购买用户的空间资料、免费建站培训报名会统一批次处理<br />\r\n8、套装中的物品不单卖，如果有批量购买的需要， 请联系官方 电话：13501889395 <font color="#0000ff">邮件：</font><a href="mailto:liuchen@topthink.com" target="_blank"><font color="#0000ff">liuchen@topthink.com</font></a><br />\r\n9、官方T恤的尺寸大小定有165 170 175 180 码数 如果没有特别注明，均使用170标准大码<br />\r\n10、套装活动目前不设截至日期，停止时间请关注官方发布的公告<br />\r\n<br />\r\n<strong><font color="#4169e1">购买后有其他建议可以在VIP专区发帖交流</font></strong></p>', 1, 1252741764, 1351927178, 1),
(4, '帮助分类2', 'ThinkPHP发布2.0正式版本', '<p><img border="0" src="http://www.thinkphp.cn/Public/logo3.png" alt="" /><strong><font color="#ff0000"> <br />\r\nThinkPHP发布2.0正式版本</font></strong><br />\r\n<strong><font color="#ff0000"><br />\r\n</font></strong>在经过5个月的重构和完善之后，ThinkPHP终于发布了新的里程碑版本2.0，作为新版网站上线和祖国60周年华诞的献礼。感谢为了新版的功能辛苦测试和完善的朋友们，感谢一直以来支持和关注TP的朋友们，是你们见证和成就了TP的快速成长。官方也会一如既往的发展ThinkPHP，以完善TP和方便开发为己任！ <br />\r\n<br />\r\n<font color="#ff0000"><strong>[ 特性 ]</strong> </font><br />\r\n完全重构的框架核心<br />\r\n可组装和定制的底层<br />\r\n更简单的MVC和ORM<br />\r\n灵活的URL模式<br />\r\n丰富的查询语言<br />\r\n增加视图模型、关联模型和高级模型以及动态模型<br />\r\n分组模块的全新体验<br />\r\n优化的模板引擎<br />\r\n强大的扩展机制<br />\r\n各方面性能的大幅提升<br />\r\n<br />\r\n<strong><font color="#ff0000">详细请参考：<a href="http://bbs.thinkphp.cn/viewthread.php?tid=8631&amp;extra=&amp;page=1">http://bbs.thinkphp.cn/viewthread.php?tid=8631&amp;extra=&amp;page=1</a></font></strong></p>', 1, 1254374099, 1351927174, 0),
(5, '帮助分类3', '上海顶想信息科技高薪诚聘', '<p>由于业务发展需要，上海顶想信息科技有限公司长期招聘人员如下：<br />\r\n<br />\r\n<strong>项目经理</strong>（2人）<br />\r\n1、5年以上实际WEB项目开发经验 精通PHP等WEB开发语言<br />\r\n2、具有网站LAMP架构设计、部署和优化经验<br />\r\n3、有较强的分析问题和解决问题的能力<br />\r\n4、强烈的责任心，良好的沟通能力，良好的团队合作精神，对工作有激情<br />\r\n5、具备良好的代码编程习惯及较强的文档编写能力<br />\r\n6、有大型网站开发经验或者团队管理经验者优先考虑<br />\r\n待遇范围：6500~9500+福利<br />\r\n<br />\r\n<strong>PHP高级程序员</strong>（5~8人）<br />\r\n1、2年以上PHP+MYSQL开发经验 <br />\r\n2、良好的代码习惯和面向对象的编程思想<br />\r\n3、熟悉HTML/XHTML、CSS、Javascript<br />\r\n4、有良好的团队合作能力，善于沟通，热爱开发事业<br />\r\n5、有责任心 具有良好的自学能力和独立解决问题的能力；<br />\r\n6、有大型社区或者门户开发经验或者自己的独立技术作品优先考虑<br />\r\n待遇范围：4500~6500+福利<br />\r\n<br />\r\n<strong>PHP初级程序员</strong>（5人）<br />\r\n1、1年以上WEB项目开发经验 良好的代码习惯和面向对象的编程思想<br />\r\n2、热爱ThinkPHP 热衷PHP并且希望在PHP领域发展<br />\r\n3、熟悉HTML/XHTML、CSS、Javascript<br />\r\n4、具有良好的自学能力 有责任心 能够承受压力<br />\r\n待遇范围：3000~5000+福利<br />\r\n<br />\r\n前端开发（2人）<br />\r\n1、2年以上前端开发经验<br />\r\n2、精通XHTML/CSS/JavaScript/Ajax/DOM 代码实现做到兼容主流浏览器<br />\r\n3、掌握Jquery或者任何一个JS框架 熟悉YSlow和SEO知识<br />\r\n4、能够和美工很好的沟通衔接工作或者有一定的美工基础<br />\r\n5、有大型社区和门户的开发经验优先考虑<br />\r\n待遇范围：3000~6000+福利<br />\r\n<br />\r\n简历请投至<a href="mailto:hr@topthink.com" target="_blank">hr@topthink.com</a> 并附上个人作品和案例 合则约见<br />\r\n<br />\r\n公司简介：<br />\r\n上海顶想信息科技有限公司（TOPThink Inc.）是国内领先的WEB应用和服务提供商，致力于WEB应用平台、产品和应用的研发和服务，为企事业单位提供基于WEB的应用开发快速解决方案和产品。公司长期专注于WEB应用框架和解决方案的研究。ThinkPHP经过四年的精心打造和发展，具有广泛的用户基础和良好的业内口碑，拥有50w开发用户。已经成长为国内领先和最具影响力的WEB应用开发框架，其应用领域分布于各个行业，在企业WEB应用和电子商务方面有着非常良好支持以及拓展，大小案例不下千家，在安全、效率、负载上都有很大优势，已经成为WEB应用的快速开发解决方案和最佳实践！<br />\r\n<br />\r\n公司理念：专业源于专注，细节决定成败。<br />\r\n我们的口号是：<strong><font color="#0000ff">JUST THINK IT</font></strong></p>', 1, 1262843179, 1351927169, 1),
(6, '帮助分类2', '2010年RoadMap计划', '<table cellspacing="0" cellpadding="0">\r\n    <tbody>\r\n        <tr>\r\n            <td id="postmessage_67008" class="t_msgfont">首先要对社区关心和关注Think<span class="t_tag" onclick="tagshow(event)" href="tag.php?name=PHP">PHP</span>的朋友表示感谢和歉意，由于<span class="t_tag" onclick="tagshow(event)" href="tag.php?name=%E9%A1%B9%E7%9B%AE">项目</span>和人手的关系，对目前社区的支持力度不够，新手抱怨较多。<br />\r\n            但请大家相信，官方一直在不遗余力地发展ThinkPHP，发展国内的<span class="t_tag" onclick="tagshow(event)" href="tag.php?name=%E5%BC%80%E6%BA%90">开源</span><span class="t_tag" onclick="tagshow(event)" href="tag.php?name=%E6%A1%86%E6%9E%B6">框架</span>事业我们从未止步！<br />\r\n            <br />\r\n            另外鉴于目前的2.0版本相对比较稳定，ThinkPHP今年上半年不会有大的改动，预计今年10月1日可以发布最新的2.1版本。<br />\r\n            <br />\r\n            除了一些<span class="t_tag" onclick="tagshow(event)" href="tag.php?name=BUG">BUG</span>修正之外，官方的roadmap计划如下：<br />\r\n            1、完善<span class="t_tag" onclick="tagshow(event)" href="tag.php?name=URL">URL</span><span class="t_tag" onclick="tagshow(event)" href="tag.php?name=%E8%B7%AF%E7%94%B1">路由</span> 支持正则匹配和<span class="t_tag" onclick="tagshow(event)" href="tag.php?name=%E5%87%BD%E6%95%B0">函数</span><span class="t_tag" onclick="tagshow(event)" href="tag.php?name=%E8%A7%A3%E6%9E%90">解析</span>、泛域名解析<br />\r\n            2、<span class="t_tag" onclick="tagshow(event)" href="tag.php?name=%E5%88%86%E7%BB%84">分组</span><span class="t_tag" onclick="tagshow(event)" href="tag.php?name=%E6%A8%A1%E5%BC%8F">模式</span>完美支持二级域名<br />\r\n            3、<span class="t_tag" onclick="tagshow(event)" href="tag.php?name=%E6%A8%A1%E6%9D%BF">模板</span>引擎改进和完善<br />\r\n            4、更加强大的扩展机制<br />\r\n            5、提供AMF支持<br />\r\n            6、提供更多的<span class="t_tag" onclick="tagshow(event)" href="tag.php?name=%E5%BA%94%E7%94%A8">应用</span>接口支持<br />\r\n            7、更多精彩的细节功能~<br />\r\n            <br />\r\n            <font color="#4169e1"><strong>另外一个值得期待的是，届时将启动全新的官方社区（包括知识中心和更多的互动<span class="t_tag" onclick="tagshow(event)" href="tag.php?name=%E6%A8%A1%E5%9D%97">模块</span>、项目中心），并且同时开放旧版的官方网站<span class="t_tag" onclick="tagshow(event)" href="tag.php?name=%E6%BA%90%E7%A0%81">源码</span>。</strong></font><br />\r\n            <br />\r\n            <strong><font color="#ff0000">开源需要大家的参与和贡献，我们也热情期盼更多的人参与进来，共同完善，人人为我，我为人人</font></strong><br />\r\n            <strong><font color="#ff0000">WE CAN DO IT ,JUST THINK IT !</font></strong><br />\r\n            <br />\r\n            <strong><font color="#4169e1">另外诚意邀请社区的PHP精英加盟ThinkPHP官方团队！</font></strong><br />\r\n            <strong><font color="#4169e1">诚意联系Email：</font><a href="mailto:hr@topthink.com"><font color="#4169e1">hr@topthink.com</font></a><font color="#4169e1"> 或者 QQ：130770305（非技术交流）</font></strong></td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 1, 1271298522, 1351927164, 0);

-- --------------------------------------------------------

--
-- Table structure for table `think_link`
--

CREATE TABLE IF NOT EXISTS `think_link` (
  `id` mediumint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `sort` mediumint(5) unsigned DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='友情链接表' AUTO_INCREMENT=75 ;

--
-- Dumping data for table `think_link`
--

INSERT INTO `think_link` (`id`, `title`, `url`, `logo`, `sort`, `status`, `create_time`, `update_time`, `type`) VALUES
(1, '赛迪网技术频道', 'http://tech.ccidnet.com/', '', 58, 1, 1227577059, 1227577059, 0),
(2, 'PHP培训网', 'http://www.phpwhy.com/', '', 1, 0, 1227577085, 1227577085, 0),
(4, '喜悦国际村', 'http://www.phpx.com/', 'http://www.phpx.com/images/logosmall.gif', 2, 1, 1228478916, 1228478916, 0),
(3, 'PHPChina', 'http://www.phpchina.com/', 'http://www.phpchina.com/images/logo1.gif', 1, 1, 1227577641, 1227577641, 1),
(5, 'PHP开发资源网', 'http://www.phpres.com/', '', 8, 1, 1228479049, 1228479049, 0),
(6, '蓝色理想', 'http://www.blueidea.com/', 'http://www.blueidea.com/logo.gif', 7, 1, 1228479105, 1228479105, 1),
(7, 'PHP爱好者', 'http://www.phpfans.net/', 'http://www.phpfans.net/images/logo.gif', 10, 1, 1228479187, 1228479187, 0),
(8, '站长资讯', 'http://www.chinahtml.com/', 'http://bbs.chinahtml.com/images/logo.gif', 11, 1, 1228479279, 1228479279, 1),
(9, '网窝网', 'http://www.webwoo.net/', 'http://www.webwoo.net/link-logo.gif', 12, 1, 1228479369, 1228479369, 1),
(10, 'ShopNC', 'http://www.shopnc.net/', 'http://www.shopnc.net/images/linklogo/link_shopnc.gif', 13, 1, 1228479552, 1228479552, 1),
(11, '桌面天下', 'http://www.desktx.com/', 'http://www.desktx.com/images/link_logo.gif', 14, 1, 1228479703, 1228479703, 0),
(12, '中国Python联盟', 'http://www.okpython.com/', '', 15, 1, 1228479768, 1228479768, 0),
(13, '萤火虫', 'http://www.yinghuochong.com/', '', 16, 1, 1228479793, 1228479793, 0),
(14, 'PHP开源项目网', 'http://coderhome.net/', '', 17, 1, 1228479822, 1228479822, 0),
(15, '建站中国网', 'http://www.136z.com/', '', 18, 1, 1228479871, 1228479871, 0),
(16, '沙滩凉鞋', 'http://www.quchao.com/', '', 19, 1, 1228479904, 1228479904, 0),
(17, '王志勇的BLOG', 'http://www.auiou.com/', '', 20, 1, 1228479926, 1228479926, 0),
(18, '老鬼的BLOG', 'http://www.laogui.com/', '', 21, 1, 1228480028, 1228480028, 0),
(19, 'Linux伊甸园', 'http://www.linuxeden.com/', '', 22, 1, 1228480050, 1228480050, 0),
(20, '网站运营专家网', 'http://www.cn-tc.com.cn/', '', 23, 1, 1228480127, 1228480127, 0),
(21, 'TechWeb', 'http://tech.techweb.com.cn/', '', 24, 1, 1228480152, 1228480152, 0),
(22, 'SqliteChina', 'http://www.sqlitechina.org/', '', 25, 1, 1228480183, 1228480183, 0),
(23, '搜索引擎优化SEO', 'http://www.cndozz.com/blog/', '', 26, 1, 1228480212, 1228480212, 0),
(24, '开源天空', 'http://www.maycode.com/', '', 27, 1, 1228480235, 1228480235, 0),
(25, '51软件测试', 'http://www.51testing.com/', '', 28, 1, 1228480276, 1228480276, 0),
(26, 'PHP开源嘛', 'http://www.phpma.com/', '', 29, 1, 1228480298, 1228480298, 0),
(27, '闪客居', 'http://www.flashas.net/', '', 30, 1, 1228480317, 1228480317, 0),
(28, '张杭烽网络营销顾问', 'http://www.zhanghangfeng.cn/', '', 31, 1, 1228480359, 1228480359, 0),
(29, '共享世纪', 'http://www.2ky.cn/', '', 32, 1, 1228480431, 1228480431, 0),
(30, '蓝色剑凌', 'http://ps.jianling.net/', '', 33, 1, 1228480466, 1228480466, 0),
(31, 'PHP源码网', 'http://www.osphp.com.cn/', '', 34, 1, 1228480489, 1228480489, 0),
(32, 'SEO研究中心', 'http://www.peoplephoto.com.cn/', '', 35, 1, 1228480558, 1228480558, 0),
(33, '网页树树', 'http://www.webshu.com/', '', 36, 1, 1228480578, 1228480578, 0),
(34, '网站推广网', 'http://www.wzqxb.com.cn/', '', 37, 1, 1228480631, 1228480631, 0),
(35, 'WEB第一站', 'http://www.111cn.cn/', '', 38, 1, 1228480663, 1228480663, 0),
(36, 'PHP资讯', 'http://www.phpq.net/', '', 39, 1, 1228480732, 1228480732, 0),
(37, '开源俱乐部', 'http://www.ossdig.com/', '', 40, 1, 1228480750, 1228480750, 0),
(38, 'ZendChina', 'http://www.zendchina.net/', '', 41, 1, 1228480842, 1228480842, 0),
(39, 'WEB开发技术', 'http://www.itokit.com/', '', 42, 1, 1228480867, 1228480867, 0),
(40, '开源中国社区', 'http://www.oschina.net/', '', 43, 1, 1228480890, 1228480890, 0),
(41, 'PHP100', 'http://www.php100.com/', 'http://bbs.php100.com/logo.gif', 3, 1, 1228480906, 1228480906, 1),
(42, 'ThinkSNS', 'http://www.thinksns.com/', 'http://www.thinksns.com/images/ts_88_31.gif', 5, 1, 1229756860, 1229756860, 1),
(43, '龙博AJAX', 'http://www.longboo.com/', '', 44, 1, 1229924871, 1229924871, 0),
(44, '中国IT技术论坛', 'http://www.itbbs.cn/', '', 45, 1, 1230629090, 1230629090, 0),
(45, '春雨科技', 'http://www.chunyukj.com/', 'http://www.chunyukj.com/link_cy.gif ', 46, 1, 1231744102, 1231744102, 0),
(46, '异客网', 'http://www.imyike.com/', '', 47, 1, 1231768854, 1231768854, 0),
(47, '来组队', 'http://laizudui.com', '', 48, 1, 1232961058, 1232961058, 0),
(48, 'Joomla中国', 'http://www.joomlar.cn', '', 49, 1, 1236837737, 1236837737, 0),
(49, '非凡教育IT培训中心', 'http://it.phedu.cn/', '', 50, 1, 1237365768, 1237365768, 0),
(50, '开沅教育', 'http://www.carronedu.com/', '', 51, 1, 1244777967, 1244777967, 0),
(51, '开源项目网', 'http://www.openforge.cn/', '', 52, 1, 1245078266, 1245078266, 0),
(52, 'PHP自学网', 'http://www.phpzixue.cn', '', 53, 1, 1246443491, 1246443491, 0),
(53, 'web思想社区', 'http://www.tech-q.cn/', '', 54, 1, 1247645672, 1247645672, 0),
(54, '首页网', 'http://shouyewang.com/', '', 18, 1, 1249554664, 1249554664, 0),
(55, 'PHP湖北', 'http://www.phphubei.com', 'http://thinkphp.cn/Public/Images/phphubei-logo.gif', 17, 1, 1251344978, 1251344978, 1),
(56, '开源吧', 'http://www.kaiyuanba.cn/', '', 19, 1, 1251438130, 1251438130, 0),
(57, '站长百科', 'http://www.zzbaike.com/', '', 20, 1, 1251795567, 1251795567, 0),
(59, 'LAMP兄弟连', 'http://www.lampbrother.net/', 'http://www.lampbrother.net/img/link/bbs.gif', 16, 1, 0, 0, 1),
(60, '学易优教育网', 'http://www.xueeu.com/', '', 1, 1, 0, 0, 0),
(61, '分享工作室', 'http://www.fenanr.com/', '', 2, 1, 0, 0, 0),
(62, '博文视点', 'http://www.broadview.com.cn/', 'http://thinkphp.cn/images/bv.gif', 6, 1, 0, 0, 1),
(63, '创想志胜', 'http://www.cocsn.com', '', 3, 1, 0, 0, 0),
(64, '网饰工作室', 'http://www.thinket.cn', '', 4, 1, 0, 0, 0),
(65, 'KindEditor', 'http://www.kindsoft.net/', '', 5, 1, 0, 0, 0),
(66, 'IT精华社区', 'http://www.xiuze.net/', '', 7, 1, 0, 0, 0),
(67, '狂人采集器', 'http://www.kuangren.net/', '', 8, 1, 0, 0, 0),
(68, '图秋杂谈', 'http://photoqiu.com', '', 9, 1, 0, 0, 0),
(69, '破釜沉舟', 'http://www.7880.com', '', 10, 1, 0, 0, 0),
(70, '网饰工作室', 'http://www.webshi.net', '', 11, 1, 0, 0, 0),
(71, '膘叔的简单人生', 'http://neatstudio.com', '', 12, 1, 0, 0, 0),
(72, '易捷网络', 'http://www.eejweb.com', 'http://www.eejweb.com/logo.gif', 13, 1, 0, 0, 0),
(73, '红色主机', 'http://www.redphp.cn', 'http://www.redphp.cn/images/redphp.cn_88_31.jpg', 14, 1, 0, 0, 1),
(74, '28免费建站平台', 'http://www.28qiye.com/', '', 15, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `think_menu`
--

CREATE TABLE IF NOT EXISTS `think_menu` (
  `id` mediumint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(25) DEFAULT NULL,
  `name` varchar(25) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `sort` mediumint(5) unsigned DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `pid` mediumint(5) unsigned DEFAULT NULL,
  `level` tinyint(1) unsigned DEFAULT NULL,
  `target` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `think_menu`
--

INSERT INTO `think_menu` (`id`, `title`, `name`, `link`, `sort`, `status`, `pid`, `level`, `target`) VALUES
(1, '首页', 'Index', '', 1, 1, 0, 1, ''),
(3, '下载', 'Down', '', 3, 1, 0, 1, ''),
(4, '案例', 'Case', '', 4, 1, 0, 1, ''),
(11, '手册', 'Manual', '', NULL, 1, 10, 2, ''),
(9, '论坛', 'Bbs', 'http://bbs.thinkphp.cn', 5, 1, 0, 1, '_new'),
(10, '动态', 'New', '', 2, 1, 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `think_new`
--

CREATE TABLE IF NOT EXISTS `think_new` (
  `id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `content` text,
  `status` tinyint(1) DEFAULT NULL,
  `create_time` int(10) unsigned DEFAULT NULL,
  `update_time` int(10) unsigned DEFAULT NULL,
  `is_top` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `think_new`
--

INSERT INTO `think_new` (`id`, `title`, `content`, `status`, `create_time`, `update_time`, `is_top`) VALUES
(1, '官方网站全新改版', '<p><strong><font color="#ff0000">为了迎接新版本的发布，官方网站全新改版啦！ </font></strong></p>', 1, 1252740284, 1254382093, 0),
(2, '邀请开源TP项目联合发布', '<p>国庆官方正式版本发布的同时，有基于Think<span class="t_tag" onclick="tagshow(event)" href="tag.php?name=PHP">PHP</span>（<span class="t_tag" onclick="tagshow(event)" href="tag.php?name=%E5%8C%85%E5%90%AB">包含</span>目前的SVN版本或者1.5版本）的<span class="t_tag" onclick="tagshow(event)" href="tag.php?name=%E5%BC%80%E6%BA%90">开源</span>应用或者<span class="t_tag" onclick="tagshow(event)" href="tag.php?name=%E7%B3%BB%E7%BB%9F">系统</span>如果需要联合发布的，请联系官方，官方进行联合多渠道推广，并共同筹备发布事宜，所有通过的开源应用都有机会和ThinkPHP新版一起共同进入所有TPer的手中，列入新版用户手册的开源应用，并且载入TP的史册。<img alt="" src="http://bbs.thinkphp.cn/images/smilies/default/lol.gif" border="0" smilieid="12" /> <br />\r\n<br />\r\n可以通过QQ：130770305或者发邮件到 <a href="mailto:thinkphp@qq.com"><span class="t_tag" onclick="tagshow(event)" href="tag.php?name=thinkphp">thinkphp</span>@qq.com</a> 联系<br />\r\n<br />\r\n<strong><font color="#ff0000">让大家共同来分享新版发布的喜悦，TPer共襄盛举！</font></strong><br />\r\n<br />\r\n正式版本发布之际，官方会推出官方纪念套件：<strong><font color="#0000ff">用户指南文档(包含API)&nbsp;&nbsp;印刷版手册+优质文化T恤+大容量U盘+ThinkPHP核心、<span class="t_tag" onclick="tagshow(event)" href="tag.php?name=%E7%A4%BA%E4%BE%8B">示例</span>、资源+各TPer联合发布的应用源码</font></strong>。<br />\r\n-----------------------------------------------------------------------------<br />\r\n鉴于此次登记随着ThinkPHP新版联合发布的开源应用数量已经越来越多，为了更好的规范管理，我们要求开发者注意如下注意事项：<br />\r\n前提：此次联合发布的应用必须是基于TP1.5或者以上版本 并且开源，是否有网站不限。<br />\r\n要求：参加联合发布的作者请于9月25日之前提交测试过的开源应用到官方邮箱：<font color="#000000"><a href="mailto:thinkphp@qq.com">thinkphp@qq.com</a></font> <br />\r\n<br />\r\n并注明：<br />\r\n<font color="#0000ff"><strong>1、应用名称<br />\r\n2、概要说明<br />\r\n3、作者名称、联系邮箱和官方论坛ID（加分用）<br />\r\n4、所用的TP开发版本<br />\r\n应用采用打包形式，每个应用必须有一份安装说明文档，并配有截图一份。</strong><br />\r\n</font>-----------------------------------------------------------------------------<br />\r\n<br />\r\n目前已经确认列入新版发布的纪念套装U盘里面的开源应用包括：<br />\r\n<br />\r\n<strong>ThinkSNS</strong>： 开源SNS系统，基于ThinkPHP最新版本<br />\r\n医疗问答和预约系统：基于ThinkPHP最新版本的开源应用<br />\r\nthinket整站系统：基于TP1.5版本<br />\r\nTp工具箱：基于ThinkPHP开发的TP工具箱，包括1.5和新版本的<br />\r\n<strong>Yblog</strong>：基于ThinkPHP的开源博客系统<br />\r\n精简店铺管理系统：基于TP1.5的开业店铺管理应用<br />\r\nThinkmed：开源网站管理系统 基于TP最新版本<br />\r\nThink<span class="t_tag" onclick="tagshow(event)" href="tag.php?name=CMS">CMS</span>：开源内容管理系统 基于TP最新版本<br />\r\nMini<span class="t_tag" onclick="tagshow(event)" href="tag.php?name=Blog">Blog</span>：开源的迷你博客系统 基于TP最新版本<br />\r\n<strong>ThinkMyAdmin</strong>：开源mysql管理工具测试版 基于TP最新版本 <strong><font color="#ff0000">官方荣誉出品</font></strong><br />\r\nTcms:开源的内容管理系统 基于Tp最新版本<br />\r\nThinkHost：开源虚拟<span class="t_tag" onclick="tagshow(event)" href="tag.php?name=%E4%B8%BB%E6%9C%BA">主机</span>管理系统 基于TP最新版本<br />\r\n泽泽采集系统:开源采集系统，基于TP1.5版本<br />\r\n基于最新版本的留言板<br />\r\nRegisterBm:报名管理系统 基于TP1.5版本</p>', 1, 1252741633, NULL, 0),
(3, 'ThinkPHP新版发布纪念套装', '<p><img border="0" alt="" width="180" aid="attachimg_1301" src="http://bbs.thinkphp.cn/attachments/month_0909/09091923420d456bef1e61ea38.jpg" /><br />\r\nThinkPHP风雨三载，感恩不断，惊喜连连，官方将于国庆发布新的划时代2.0版本，为了迎接新版的正式发布和伟大祖国的60周年庆典，同时为了回馈广大TPer的关注和支持，官方特别推出<strong><font color="#ff0000">纪念超值套装</font></strong>。</p>\r\n<p><br />\r\n<strong>套装内容</strong>：包含下列超值内容<br />\r\n1、ThinkPHP2.0新版全部代码、示例和电子版文档；<br />\r\n2、官方新版发布纪念T恤一件；<br />\r\n3、ThinkPHP2.0完全开发手册（查看<a target="_blank" href="http://bbs.thinkphp.cn/viewthread.php?tid=8257">手册目录</a>）一本（厚达280页 带作者亲笔签名限量5000）；<br />\r\n4、ThinkPHP 4G大容量U盘一个；<strong><font color="#ff0000">（已经售罄）</font></strong><br />\r\n5、大量基于TP的开源应用源码（<a target="_blank" href="http://bbs.thinkphp.cn/viewthread.php?tid=8076"><font color="#0000ff">查看联合发布的开源应用</font></a>）和开发工具；<br />\r\n6、官方新版壁纸和Cheatsheet卡片<br />\r\n<strong><font color="#ff0000">9月27日 官方在套装内额外附赠了精心设计的</font></strong><a target="_blank" href="http://bbs.thinkphp.cn/viewthread.php?tid=8561&amp;page=1&amp;extra="><strong><font color="#ff0000">Cheatsheet彩印卡片</font></strong></a><br />\r\n<strong><font color="#ff0000"><img border="0" alt="" width="180" aid="attachimg_1369" src="http://bbs.thinkphp.cn/attachments/month_0910/091011180465b83100cb95b302.jpg" /><img border="0" alt="" width="180" aid="attachimg_1370" src="http://bbs.thinkphp.cn/attachments/month_0910/09101118044e3cfba04d891c2a.jpg" /><br />\r\n6重惊喜</font></strong>：购买用户同时还可以获得更多的惊喜<br />\r\n惊喜1：凡购买用户在官方论坛的ID授予达人荣誉称号，免费成为官方的VIP贵宾会员；<br />\r\n惊喜2：前1000名购买用户可以获得红色主机价值199元的电信型2G主机空间一年（PHP5+MySQL5 共享2G空间 不含域名）（<strong><font color="#ff0000">已经送完</font></strong>）；<br />\r\n惊喜3：前1000名购买用户可以获得官方纪念明信片一张；<br />\r\n惊喜4：凡购买用户可以免费获赠价值500元的LAMP兄弟连（易第优教育）4小时在线企业门户建站培训；<br />\r\n惊喜5：参与联合发布的开源应用将进行公开评选，优秀开源应用将免费获得易联主机提供的1G空间一年；<br />\r\n惊喜6：购买用户还有额外抽奖机会；<strong><font color="#4169e1"><br />\r\n</font></strong>套装售价<strong><font color="#ff0000">118元</font></strong>，含快递费用！&nbsp;&nbsp;<br />\r\n[ 更多：<a target="_blank" href="http://bbs.thinkphp.cn/viewthread.php?tid=8737">套装实物图片</a> ]<br />\r\n<br />\r\nThinkPHP（<a target="_blank" href="http://thinkphp.cn/"><font color="#810081">http://thinkphp.cn</font></a> ）是一个免费开源的，快速、简单的面向对象的轻量级PHP开发框架，遵循Apache2开源协议发布，是为了敏捷WEB应用开发和简化企业级应用开发而诞生的。拥有众多的优秀功能和特性，经历了三年多发展的同时，在社区团队的积极参与下，在易用性、扩展性和性能方面不断优化和改进，众多的典型案例确保可以稳定用于商业以及门户级的开发。<br />\r\n拥有这套TP纪念套装，就等于拥有了一套全面的WEB开发装备和秘籍，不仅让你对ThinkPHP无师自通，技术胜人一筹，轻轻松松开发，还将成为官方的VIP贵宾会员，享受更多的服务。<br />\r\n所有热衷于PHP开发的朋友们，让我们共同呐喊：<strong><font color="#0000ff">大道至简，开发由我WE CAN DO IT , JUST THINK</font></strong> !<br />\r\n<br />\r\n订购流程：<br />\r\n1、选择支付方式付款-&gt;2、在备注栏留下相关资料（姓名、电话和地址、邮箱、论坛ID T恤大小 如果是转账的话 可以只留电话和姓名 其他到论坛更新）-&gt;3、购买后联系官方开通论坛VIP权限-&gt;4、官方安排发货<br />\r\n<br />\r\n<strong>订购需知</strong>：<br />\r\n请购买者务必在支付信息中留下姓名、快递地址、联系电话和邮件地址（以及官方论坛ID，便于我们授予荣誉和VIP服务），以便于我们发货和通知。套装支付购买后第二日即可发货。</p>\r\n<p><font color="#0000ff">购买后请联系：QQ 390758770 电话：13501889395 邮件：</font><a target="_blank" href="mailto:liuchen@topthink.com"><font color="#0000ff">liuchen@topthink.com</font></a><br />\r\n<br />\r\n<strong>支付方式</strong>：<br />\r\n<strong><font color="#4169e1">快钱账户（即时到账付款）</font></strong>：liu21st[at]gmail.com（将[at]换成@）<br />\r\n<strong><font color="#4169e1">支付宝账号（即时到账付款）</font></strong>：liu21st[at]gmail.com（将[at]换成@）<br />\r\n财付通账号：<strong><font color="#4169e1">130770305</font></strong> 账户真实姓名：刘晨<br />\r\n<strong><font color="#4169e1">银行转账（个人银行账号）</font></strong><br />\r\n开户行：招商银行上海分行外滩支行 <br />\r\n账号：6225882111345085 <br />\r\n开户名：刘晨<br />\r\n<br />\r\n上海地区的用户也可以上门提货，</p>\r\n<p>提货地址：上海市徐汇区钦州路108弄6号楼203室</p>\r\n<p>提货时间：周一到周五 9：30~18：30<br />\r\n<br />\r\n<strong>奖品赞助</strong>：<br />\r\n<a target="_blank" href="http://www.redphp.cn/"><font color="#0000ff">红色主机</font></a> <a target="_blank" href="http://www.elinkhost.com/"><font color="#810081">易联主机</font></a> <a target="_blank" href="http://www.youlianxi.com/"><font color="#0000ff">有联系网</font></a> <a target="_blank" href="http://www.immyhome.com/"><font color="#0000ff">爱美艾家</font></a> <br />\r\n<br />\r\n<strong>合作媒体</strong>：<br />\r\n<a target="_blank" href="http://phpchina.com/"><img border="0" alt="" width="88" height="31" src="http://www.phpchina.com/images/logo1.gif" /></a> <a target="_blank" href="http://www.php100.com/"><img border="0" alt="" width="88" height="31" src="http://bbs.php100.com/logo.gif" /></a> <a target="_blank" href="http://www.php.cn/"><img border="0" alt="" width="88" height="31" src="http://bbs.php.cn/logo.gif" /></a>&nbsp;&nbsp;<a target="_blank" href="http://www.carronedu.com/"><font color="#0000ff">开沅教育</font></a> <a target="_blank" href="http://www.lampbrother.net/"><img border="0" alt="" width="88" height="31" src="http://www.lampbrother.net/img/link/bbs.gif" /></a> <a target="_blank" href="http://www.tech-q.cn/"><img border="0" alt="" src="http://www.tech-q.cn/images/logo.gif" /></a>&nbsp;&nbsp;<a target="_blank" href="http://www.phphubei.com/"><img border="0" alt="" src="http://thinkphp.cn/Public/Images/phphubei-logo.gif" /></a>&nbsp;&nbsp;<br />\r\n欢迎更多的单位进行媒体合作以及奖品赞助，并诚邀单位、机构和个人进行代理和联合发售。<br />\r\n（奖品赞助、媒体合作或者代理销售请联系Email：<a target="_blank" href="mailto:liuchen@topthink.com"><font color="#0000ff">liuchen@topthink.com</font></a> 或者QQ：130770305 请注明来意）<br />\r\n<br />\r\n<br />\r\n<strong><font color="#ff00ff">购买套装用户注意事项：</font></strong><br />\r\n1、套装价格均含快递费用（统一韵达+EMS快递）<br />\r\n2、支付宝和快钱需使用直接到账支付方式<br />\r\n3、支付备注栏中必须注明姓名、电话和地址以及官方论坛ID等信息资料，如果购买多套请注明清楚，便于我们发货和通知<br />\r\n4、支付完成后请联系官方专用活动QQ：<font color="#0000ff">390758770 电话：13501889395 邮件：</font><a target="_blank" href="mailto:liuchen@topthink.com"><font color="#0000ff">liuchen@topthink.com</font></a>&nbsp; &nbsp;提供支付截图和论坛ID后一个工作日内开通VIP权限<br />\r\n5、开通VIP权限后即可登录论坛到VIP专区下载相关资料和开源应用<br />\r\n6、前面1000名购买用户 可以获得官方明信片和红色主机2G空间（<strong><font color="#ff0000">已经送完</font></strong>）<br />\r\n7、购买用户的空间资料、免费建站培训报名会统一批次处理<br />\r\n8、套装中的物品不单卖，如果有批量购买的需要， 请联系官方 电话：13501889395 <font color="#0000ff">邮件：</font><a target="_blank" href="mailto:liuchen@topthink.com"><font color="#0000ff">liuchen@topthink.com</font></a><br />\r\n9、官方T恤的尺寸大小定有165 170 175 180 码数 如果没有特别注明，均使用170标准大码<br />\r\n10、套装活动目前不设截至日期，停止时间请关注官方发布的公告<br />\r\n<br />\r\n<strong><font color="#4169e1">购买后有其他建议可以在VIP专区发帖交流</font></strong></p>', 1, 1252741764, 1269843811, 1),
(4, 'ThinkPHP发布2.0正式版本', '<p><img alt="" border="0" src="http://www.thinkphp.cn/Public/logo3.png" /><strong><font color="#ff0000"> <br />\r\nThinkPHP发布2.0正式版本</font></strong><br />\r\n<strong><font color="#ff0000"><br />\r\n</font></strong>在经过5个月的重构和完善之后，ThinkPHP终于发布了新的里程碑版本2.0，作为新版网站上线和祖国60周年华诞的献礼。感谢为了新版的功能辛苦测试和完善的朋友们，感谢一直以来支持和关注TP的朋友们，是你们见证和成就了TP的快速成长。官方也会一如既往的发展ThinkPHP，以完善TP和方便开发为己任！ <br />\r\n<br />\r\n<font color="#ff0000"><strong>[ 特性 ]</strong> </font><br />\r\n完全重构的框架核心<br />\r\n可组装和定制的底层<br />\r\n更简单的MVC和ORM<br />\r\n灵活的URL模式<br />\r\n丰富的查询语言<br />\r\n增加视图模型、关联模型和高级模型以及动态模型<br />\r\n分组模块的全新体验<br />\r\n优化的模板引擎<br />\r\n强大的扩展机制<br />\r\n各方面性能的大幅提升<br />\r\n<br />\r\n<strong><font color="#ff0000">详细请参考：<a href="http://bbs.thinkphp.cn/viewthread.php?tid=8631&amp;extra=&amp;page=1">http://bbs.thinkphp.cn/viewthread.php?tid=8631&amp;extra=&amp;page=1</a></font></strong></p>', 1, 1254374099, NULL, 0),
(5, '上海顶想信息科技高薪诚聘', '<p>由于业务发展需要，上海顶想信息科技有限公司长期招聘人员如下：<br />\r\n<br />\r\n<strong>项目经理</strong>（2人）<br />\r\n1、5年以上实际WEB项目开发经验 精通PHP等WEB开发语言<br />\r\n2、具有网站LAMP架构设计、部署和优化经验<br />\r\n3、有较强的分析问题和解决问题的能力<br />\r\n4、强烈的责任心，良好的沟通能力，良好的团队合作精神，对工作有激情<br />\r\n5、具备良好的代码编程习惯及较强的文档编写能力<br />\r\n6、有大型网站开发经验或者团队管理经验者优先考虑<br />\r\n待遇范围：6500~9500+福利<br />\r\n<br />\r\n<strong>PHP高级程序员</strong>（5~8人）<br />\r\n1、2年以上PHP+MYSQL开发经验 <br />\r\n2、良好的代码习惯和面向对象的编程思想<br />\r\n3、熟悉HTML/XHTML、CSS、Javascript<br />\r\n4、有良好的团队合作能力，善于沟通，热爱开发事业<br />\r\n5、有责任心 具有良好的自学能力和独立解决问题的能力；<br />\r\n6、有大型社区或者门户开发经验或者自己的独立技术作品优先考虑<br />\r\n待遇范围：4500~6500+福利<br />\r\n<br />\r\n<strong>PHP初级程序员</strong>（5人）<br />\r\n1、1年以上WEB项目开发经验 良好的代码习惯和面向对象的编程思想<br />\r\n2、热爱ThinkPHP 热衷PHP并且希望在PHP领域发展<br />\r\n3、熟悉HTML/XHTML、CSS、Javascript<br />\r\n4、具有良好的自学能力 有责任心 能够承受压力<br />\r\n待遇范围：3000~5000+福利<br />\r\n<br />\r\n前端开发（2人）<br />\r\n1、2年以上前端开发经验<br />\r\n2、精通XHTML/CSS/JavaScript/Ajax/DOM 代码实现做到兼容主流浏览器<br />\r\n3、掌握Jquery或者任何一个JS框架 熟悉YSlow和SEO知识<br />\r\n4、能够和美工很好的沟通衔接工作或者有一定的美工基础<br />\r\n5、有大型社区和门户的开发经验优先考虑<br />\r\n待遇范围：3000~6000+福利<br />\r\n<br />\r\n简历请投至<a href="mailto:hr@topthink.com" target="_blank">hr@topthink.com</a> 并附上个人作品和案例 合则约见<br />\r\n<br />\r\n公司简介：<br />\r\n上海顶想信息科技有限公司（TOPThink Inc.）是国内领先的WEB应用和服务提供商，致力于WEB应用平台、产品和应用的研发和服务，为企事业单位提供基于WEB的应用开发快速解决方案和产品。公司长期专注于WEB应用框架和解决方案的研究。ThinkPHP经过四年的精心打造和发展，具有广泛的用户基础和良好的业内口碑，拥有50w开发用户。已经成长为国内领先和最具影响力的WEB应用开发框架，其应用领域分布于各个行业，在企业WEB应用和电子商务方面有着非常良好支持以及拓展，大小案例不下千家，在安全、效率、负载上都有很大优势，已经成为WEB应用的快速开发解决方案和最佳实践！<br />\r\n<br />\r\n公司理念：专业源于专注，细节决定成败。<br />\r\n我们的口号是：<strong><font color="#0000ff">JUST THINK IT</font></strong></p>', 1, 1262843179, 1283220463, 1),
(6, '2010年RoadMap计划', '<table cellspacing="0" cellpadding="0">\r\n    <tbody>\r\n        <tr>\r\n            <td id="postmessage_67008" class="t_msgfont">首先要对社区关心和关注Think<span class="t_tag" onclick="tagshow(event)" href="tag.php?name=PHP">PHP</span>的朋友表示感谢和歉意，由于<span class="t_tag" onclick="tagshow(event)" href="tag.php?name=%E9%A1%B9%E7%9B%AE">项目</span>和人手的关系，对目前社区的支持力度不够，新手抱怨较多。<br />\r\n            但请大家相信，官方一直在不遗余力地发展ThinkPHP，发展国内的<span class="t_tag" onclick="tagshow(event)" href="tag.php?name=%E5%BC%80%E6%BA%90">开源</span><span class="t_tag" onclick="tagshow(event)" href="tag.php?name=%E6%A1%86%E6%9E%B6">框架</span>事业我们从未止步！<br />\r\n            <br />\r\n            另外鉴于目前的2.0版本相对比较稳定，ThinkPHP今年上半年不会有大的改动，预计今年10月1日可以发布最新的2.1版本。<br />\r\n            <br />\r\n            除了一些<span class="t_tag" onclick="tagshow(event)" href="tag.php?name=BUG">BUG</span>修正之外，官方的roadmap计划如下：<br />\r\n            1、完善<span class="t_tag" onclick="tagshow(event)" href="tag.php?name=URL">URL</span><span class="t_tag" onclick="tagshow(event)" href="tag.php?name=%E8%B7%AF%E7%94%B1">路由</span> 支持正则匹配和<span class="t_tag" onclick="tagshow(event)" href="tag.php?name=%E5%87%BD%E6%95%B0">函数</span><span class="t_tag" onclick="tagshow(event)" href="tag.php?name=%E8%A7%A3%E6%9E%90">解析</span>、泛域名解析<br />\r\n            2、<span class="t_tag" onclick="tagshow(event)" href="tag.php?name=%E5%88%86%E7%BB%84">分组</span><span class="t_tag" onclick="tagshow(event)" href="tag.php?name=%E6%A8%A1%E5%BC%8F">模式</span>完美支持二级域名<br />\r\n            3、<span class="t_tag" onclick="tagshow(event)" href="tag.php?name=%E6%A8%A1%E6%9D%BF">模板</span>引擎改进和完善<br />\r\n            4、更加强大的扩展机制<br />\r\n            5、提供AMF支持<br />\r\n            6、提供更多的<span class="t_tag" onclick="tagshow(event)" href="tag.php?name=%E5%BA%94%E7%94%A8">应用</span>接口支持<br />\r\n            7、更多精彩的细节功能~<br />\r\n            <br />\r\n            <font color="#4169e1"><strong>另外一个值得期待的是，届时将启动全新的官方社区（包括知识中心和更多的互动<span class="t_tag" onclick="tagshow(event)" href="tag.php?name=%E6%A8%A1%E5%9D%97">模块</span>、项目中心），并且同时开放旧版的官方网站<span class="t_tag" onclick="tagshow(event)" href="tag.php?name=%E6%BA%90%E7%A0%81">源码</span>。</strong></font><br />\r\n            <br />\r\n            <strong><font color="#ff0000">开源需要大家的参与和贡献，我们也热情期盼更多的人参与进来，共同完善，人人为我，我为人人</font></strong><br />\r\n            <strong><font color="#ff0000">WE CAN DO IT ,JUST THINK IT !</font></strong><br />\r\n            <br />\r\n            <strong><font color="#4169e1">另外诚意邀请社区的PHP精英加盟ThinkPHP官方团队！</font></strong><br />\r\n            <strong><font color="#4169e1">诚意联系Email：</font><a href="mailto:hr@topthink.com"><font color="#4169e1">hr@topthink.com</font></a><font color="#4169e1"> 或者 QQ：130770305（非技术交流）</font></strong></td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 1, 1271298522, 1286205305, 0);

-- --------------------------------------------------------

--
-- Table structure for table `think_node`
--

CREATE TABLE IF NOT EXISTS `think_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `sort` smallint(6) unsigned DEFAULT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) unsigned NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `group_id` tinyint(3) unsigned DEFAULT '0',
  `module` varchar(25) NOT NULL,
  `is_show` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `think_node`
--

INSERT INTO `think_node` (`id`, `name`, `title`, `status`, `remark`, `sort`, `pid`, `level`, `type`, `group_id`, `module`, `is_show`) VALUES
(1, 'Admin', '后台管理', 1, '', NULL, 0, 1, 0, 0, '', 0),
(2, 'Node', '节点管理', 1, '', 14, 1, 2, 0, 3, 'Admin', 1),
(3, 'Group', '分组管理', 1, '', 12, 1, 2, 0, 3, 'Admin', 1),
(5, 'Config', '配置管理', 1, '', 7, 1, 2, 0, 3, 'Admin', 1),
(6, 'Role', '角色管理', 1, '', 16, 1, 2, 0, 3, 'Admin', 1),
(7, 'User', '后台用户', 1, '', 19, 1, 2, 0, 3, 'Admin', 1),
(13, 'Case', '案例管理', 1, '', 7, 1, 2, 0, 2, 'Admin', 1),
(23, 'Down', '下载管理', 1, '', 7, 1, 2, 0, 2, 'Admin', 1),
(26, 'Link', '友情链接', 1, '', 11, 1, 2, 0, 2, 'Admin', 1),
(30, 'Public', '公共模块', 1, '', 4, 1, 2, 0, 0, '', 0),
(31, 'add', '新增', 1, '', NULL, 30, 3, 0, 0, '', 0),
(32, 'insert', '写入', 1, '', NULL, 30, 3, 0, 0, '', 0),
(33, 'edit', '编辑', 1, '', NULL, 30, 3, 0, 0, '', 0),
(34, 'update', '更新', 1, '', NULL, 30, 3, 0, 0, '', 0),
(35, 'delete', '删除', 1, '', NULL, 30, 3, 0, 0, '', 0),
(36, 'forbid', '禁用', 1, '', NULL, 30, 3, 0, 0, '', 0),
(37, 'resume', '恢复', 1, '', NULL, 30, 3, 0, 0, '', 0),
(38, 'sort', '排序', 1, '', NULL, 30, 3, 0, 0, '', 0),
(39, 'index', '列表', 1, '', NULL, 30, 3, 0, 0, '', 0),
(40, 'Index', '默认模块', 1, '', 3, 1, 2, 0, 0, '', 0),
(41, 'select', '选择', 1, '', NULL, 30, 3, 0, 0, '', 0),
(42, 'treeSelect', '树形选择', 1, '', NULL, 30, 3, 0, 0, '', 0),
(43, 'tree', '树形列表', 1, '', NULL, 30, 3, 0, 0, '', 0),
(44, 'upload', '上传', 1, '', NULL, 30, 3, 0, 0, '', 0),
(45, 'delAttach', '删除附件', 1, '', NULL, 30, 3, 0, 0, '', 0),
(47, 'recommend', '推荐', 1, '', NULL, 30, 3, 0, 0, '', 0),
(48, 'top', '置顶', 1, '', NULL, 30, 3, 0, 0, '', 0),
(49, 'read', '查看', 1, '', NULL, 30, 3, 0, 0, '', 0),
(50, 'main', '空白首页', 1, '', NULL, 40, 3, 0, 0, '', 0),
(53, 'saveSort', '排序保存', 1, '', NULL, 30, 3, 0, 0, '', 0),
(55, 'Menu', '菜单管理', 1, '', 2, 1, 2, 0, 2, 'Admin', 1),
(57, 'New', '新闻管理', 1, '', NULL, 1, 2, 0, 2, 'Admin', 1),
(60, 'Education', '概念模块', 1, '概念模块', NULL, 1, 2, 0, 2, 'Admin', 1),
(61, 'Wellness', '恢复模块', 1, '恢复模块', NULL, 1, 2, 0, 2, 'Admin', 1),
(62, 'Peers', '病友模块', 1, '病友模块', NULL, 1, 2, 0, 2, 'Admin', 1),
(63, 'Help', '帮助模块', 1, '帮助模块', NULL, 1, 2, 0, 2, 'Admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `think_peers`
--

CREATE TABLE IF NOT EXISTS `think_peers` (
  `id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(25) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `content` text,
  `status` tinyint(1) DEFAULT NULL,
  `create_time` int(10) unsigned DEFAULT NULL,
  `update_time` int(10) unsigned DEFAULT NULL,
  `is_top` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `think_peers`
--

INSERT INTO `think_peers` (`id`, `category`, `title`, `content`, `status`, `create_time`, `update_time`, `is_top`) VALUES
(1, '病友分类2', '官方网站全新改版', '<p><strong><font color="#ff0000">为了迎接新版本的发布，官方网站全新改版啦！ </font></strong></p>', 1, 1252740284, 1351927299, 0),
(2, '病友分类1', '邀请开源TP项目联合发布', '<p>国庆官方正式版本发布的同时，有基于Think<span href="tag.php?name=PHP" onclick="tagshow(event)" class="t_tag">PHP</span>（<span href="tag.php?name=%E5%8C%85%E5%90%AB" onclick="tagshow(event)" class="t_tag">包含</span>目前的SVN版本或者1.5版本）的<span href="tag.php?name=%E5%BC%80%E6%BA%90" onclick="tagshow(event)" class="t_tag">开源</span>应用或者<span href="tag.php?name=%E7%B3%BB%E7%BB%9F" onclick="tagshow(event)" class="t_tag">系统</span>如果需要联合发布的，请联系官方，官方进行联合多渠道推广，并共同筹备发布事宜，所有通过的开源应用都有机会和ThinkPHP新版一起共同进入所有TPer的手中，列入新版用户手册的开源应用，并且载入TP的史册。<img border="0" smilieid="12" src="http://bbs.thinkphp.cn/images/smilies/default/lol.gif" alt="" /> <br />\r\n<br />\r\n可以通过QQ：130770305或者发邮件到 <a href="mailto:thinkphp@qq.com"><span href="tag.php?name=thinkphp" onclick="tagshow(event)" class="t_tag">thinkphp</span>@qq.com</a> 联系<br />\r\n<br />\r\n<strong><font color="#ff0000">让大家共同来分享新版发布的喜悦，TPer共襄盛举！</font></strong><br />\r\n<br />\r\n正式版本发布之际，官方会推出官方纪念套件：<strong><font color="#0000ff">用户指南文档(包含API)&nbsp;&nbsp;印刷版手册+优质文化T恤+大容量U盘+ThinkPHP核心、<span href="tag.php?name=%E7%A4%BA%E4%BE%8B" onclick="tagshow(event)" class="t_tag">示例</span>、资源+各TPer联合发布的应用源码</font></strong>。<br />\r\n-----------------------------------------------------------------------------<br />\r\n鉴于此次登记随着ThinkPHP新版联合发布的开源应用数量已经越来越多，为了更好的规范管理，我们要求开发者注意如下注意事项：<br />\r\n前提：此次联合发布的应用必须是基于TP1.5或者以上版本 并且开源，是否有网站不限。<br />\r\n要求：参加联合发布的作者请于9月25日之前提交测试过的开源应用到官方邮箱：<font color="#000000"><a href="mailto:thinkphp@qq.com">thinkphp@qq.com</a></font> <br />\r\n<br />\r\n并注明：<br />\r\n<font color="#0000ff"><strong>1、应用名称<br />\r\n2、概要说明<br />\r\n3、作者名称、联系邮箱和官方论坛ID（加分用）<br />\r\n4、所用的TP开发版本<br />\r\n应用采用打包形式，每个应用必须有一份安装说明文档，并配有截图一份。</strong><br />\r\n</font>-----------------------------------------------------------------------------<br />\r\n<br />\r\n目前已经确认列入新版发布的纪念套装U盘里面的开源应用包括：<br />\r\n<br />\r\n<strong>ThinkSNS</strong>： 开源SNS系统，基于ThinkPHP最新版本<br />\r\n医疗问答和预约系统：基于ThinkPHP最新版本的开源应用<br />\r\nthinket整站系统：基于TP1.5版本<br />\r\nTp工具箱：基于ThinkPHP开发的TP工具箱，包括1.5和新版本的<br />\r\n<strong>Yblog</strong>：基于ThinkPHP的开源博客系统<br />\r\n精简店铺管理系统：基于TP1.5的开业店铺管理应用<br />\r\nThinkmed：开源网站管理系统 基于TP最新版本<br />\r\nThink<span href="tag.php?name=CMS" onclick="tagshow(event)" class="t_tag">CMS</span>：开源内容管理系统 基于TP最新版本<br />\r\nMini<span href="tag.php?name=Blog" onclick="tagshow(event)" class="t_tag">Blog</span>：开源的迷你博客系统 基于TP最新版本<br />\r\n<strong>ThinkMyAdmin</strong>：开源mysql管理工具测试版 基于TP最新版本 <strong><font color="#ff0000">官方荣誉出品</font></strong><br />\r\nTcms:开源的内容管理系统 基于Tp最新版本<br />\r\nThinkHost：开源虚拟<span href="tag.php?name=%E4%B8%BB%E6%9C%BA" onclick="tagshow(event)" class="t_tag">主机</span>管理系统 基于TP最新版本<br />\r\n泽泽采集系统:开源采集系统，基于TP1.5版本<br />\r\n基于最新版本的留言板<br />\r\nRegisterBm:报名管理系统 基于TP1.5版本</p>', 1, 1252741633, 1351927293, 0),
(3, '病友分类3', 'ThinkPHP新版发布纪念套装', '<p><img width="180" border="0" src="http://bbs.thinkphp.cn/attachments/month_0909/09091923420d456bef1e61ea38.jpg" aid="attachimg_1301" alt="" /><br />\r\nThinkPHP风雨三载，感恩不断，惊喜连连，官方将于国庆发布新的划时代2.0版本，为了迎接新版的正式发布和伟大祖国的60周年庆典，同时为了回馈广大TPer的关注和支持，官方特别推出<strong><font color="#ff0000">纪念超值套装</font></strong>。</p>\r\n<p><br />\r\n<strong>套装内容</strong>：包含下列超值内容<br />\r\n1、ThinkPHP2.0新版全部代码、示例和电子版文档；<br />\r\n2、官方新版发布纪念T恤一件；<br />\r\n3、ThinkPHP2.0完全开发手册（查看<a href="http://bbs.thinkphp.cn/viewthread.php?tid=8257" target="_blank">手册目录</a>）一本（厚达280页 带作者亲笔签名限量5000）；<br />\r\n4、ThinkPHP 4G大容量U盘一个；<strong><font color="#ff0000">（已经售罄）</font></strong><br />\r\n5、大量基于TP的开源应用源码（<a href="http://bbs.thinkphp.cn/viewthread.php?tid=8076" target="_blank"><font color="#0000ff">查看联合发布的开源应用</font></a>）和开发工具；<br />\r\n6、官方新版壁纸和Cheatsheet卡片<br />\r\n<strong><font color="#ff0000">9月27日 官方在套装内额外附赠了精心设计的</font></strong><a href="http://bbs.thinkphp.cn/viewthread.php?tid=8561&amp;page=1&amp;extra=" target="_blank"><strong><font color="#ff0000">Cheatsheet彩印卡片</font></strong></a><br />\r\n<strong><font color="#ff0000"><img width="180" border="0" src="http://bbs.thinkphp.cn/attachments/month_0910/091011180465b83100cb95b302.jpg" aid="attachimg_1369" alt="" /><img width="180" border="0" src="http://bbs.thinkphp.cn/attachments/month_0910/09101118044e3cfba04d891c2a.jpg" aid="attachimg_1370" alt="" /><br />\r\n6重惊喜</font></strong>：购买用户同时还可以获得更多的惊喜<br />\r\n惊喜1：凡购买用户在官方论坛的ID授予达人荣誉称号，免费成为官方的VIP贵宾会员；<br />\r\n惊喜2：前1000名购买用户可以获得红色主机价值199元的电信型2G主机空间一年（PHP5+MySQL5 共享2G空间 不含域名）（<strong><font color="#ff0000">已经送完</font></strong>）；<br />\r\n惊喜3：前1000名购买用户可以获得官方纪念明信片一张；<br />\r\n惊喜4：凡购买用户可以免费获赠价值500元的LAMP兄弟连（易第优教育）4小时在线企业门户建站培训；<br />\r\n惊喜5：参与联合发布的开源应用将进行公开评选，优秀开源应用将免费获得易联主机提供的1G空间一年；<br />\r\n惊喜6：购买用户还有额外抽奖机会；<strong><font color="#4169e1"><br />\r\n</font></strong>套装售价<strong><font color="#ff0000">118元</font></strong>，含快递费用！&nbsp;&nbsp;<br />\r\n[ 更多：<a href="http://bbs.thinkphp.cn/viewthread.php?tid=8737" target="_blank">套装实物图片</a> ]<br />\r\n<br />\r\nThinkPHP（<a href="http://thinkphp.cn/" target="_blank"><font color="#810081">http://thinkphp.cn</font></a> ）是一个免费开源的，快速、简单的面向对象的轻量级PHP开发框架，遵循Apache2开源协议发布，是为了敏捷WEB应用开发和简化企业级应用开发而诞生的。拥有众多的优秀功能和特性，经历了三年多发展的同时，在社区团队的积极参与下，在易用性、扩展性和性能方面不断优化和改进，众多的典型案例确保可以稳定用于商业以及门户级的开发。<br />\r\n拥有这套TP纪念套装，就等于拥有了一套全面的WEB开发装备和秘籍，不仅让你对ThinkPHP无师自通，技术胜人一筹，轻轻松松开发，还将成为官方的VIP贵宾会员，享受更多的服务。<br />\r\n所有热衷于PHP开发的朋友们，让我们共同呐喊：<strong><font color="#0000ff">大道至简，开发由我WE CAN DO IT , JUST THINK</font></strong> !<br />\r\n<br />\r\n订购流程：<br />\r\n1、选择支付方式付款-&gt;2、在备注栏留下相关资料（姓名、电话和地址、邮箱、论坛ID T恤大小 如果是转账的话 可以只留电话和姓名 其他到论坛更新）-&gt;3、购买后联系官方开通论坛VIP权限-&gt;4、官方安排发货<br />\r\n<br />\r\n<strong>订购需知</strong>：<br />\r\n请购买者务必在支付信息中留下姓名、快递地址、联系电话和邮件地址（以及官方论坛ID，便于我们授予荣誉和VIP服务），以便于我们发货和通知。套装支付购买后第二日即可发货。</p>\r\n<p><font color="#0000ff">购买后请联系：QQ 390758770 电话：13501889395 邮件：</font><a href="mailto:liuchen@topthink.com" target="_blank"><font color="#0000ff">liuchen@topthink.com</font></a><br />\r\n<br />\r\n<strong>支付方式</strong>：<br />\r\n<strong><font color="#4169e1">快钱账户（即时到账付款）</font></strong>：liu21st[at]gmail.com（将[at]换成@）<br />\r\n<strong><font color="#4169e1">支付宝账号（即时到账付款）</font></strong>：liu21st[at]gmail.com（将[at]换成@）<br />\r\n财付通账号：<strong><font color="#4169e1">130770305</font></strong> 账户真实姓名：刘晨<br />\r\n<strong><font color="#4169e1">银行转账（个人银行账号）</font></strong><br />\r\n开户行：招商银行上海分行外滩支行 <br />\r\n账号：6225882111345085 <br />\r\n开户名：刘晨<br />\r\n<br />\r\n上海地区的用户也可以上门提货，</p>\r\n<p>提货地址：上海市徐汇区钦州路108弄6号楼203室</p>\r\n<p>提货时间：周一到周五 9：30~18：30<br />\r\n<br />\r\n<strong>奖品赞助</strong>：<br />\r\n<a href="http://www.redphp.cn/" target="_blank"><font color="#0000ff">红色主机</font></a> <a href="http://www.elinkhost.com/" target="_blank"><font color="#810081">易联主机</font></a> <a href="http://www.youlianxi.com/" target="_blank"><font color="#0000ff">有联系网</font></a> <a href="http://www.immyhome.com/" target="_blank"><font color="#0000ff">爱美艾家</font></a> <br />\r\n<br />\r\n<strong>合作媒体</strong>：<br />\r\n<a href="http://phpchina.com/" target="_blank"><img width="88" height="31" border="0" src="http://www.phpchina.com/images/logo1.gif" alt="" /></a> <a href="http://www.php100.com/" target="_blank"><img width="88" height="31" border="0" src="http://bbs.php100.com/logo.gif" alt="" /></a> <a href="http://www.php.cn/" target="_blank"><img width="88" height="31" border="0" src="http://bbs.php.cn/logo.gif" alt="" /></a>&nbsp;&nbsp;<a href="http://www.carronedu.com/" target="_blank"><font color="#0000ff">开沅教育</font></a> <a href="http://www.lampbrother.net/" target="_blank"><img width="88" height="31" border="0" src="http://www.lampbrother.net/img/link/bbs.gif" alt="" /></a> <a href="http://www.tech-q.cn/" target="_blank"><img border="0" src="http://www.tech-q.cn/images/logo.gif" alt="" /></a>&nbsp;&nbsp;<a href="http://www.phphubei.com/" target="_blank"><img border="0" src="http://thinkphp.cn/Public/Images/phphubei-logo.gif" alt="" /></a>&nbsp;&nbsp;<br />\r\n欢迎更多的单位进行媒体合作以及奖品赞助，并诚邀单位、机构和个人进行代理和联合发售。<br />\r\n（奖品赞助、媒体合作或者代理销售请联系Email：<a href="mailto:liuchen@topthink.com" target="_blank"><font color="#0000ff">liuchen@topthink.com</font></a> 或者QQ：130770305 请注明来意）<br />\r\n<br />\r\n<br />\r\n<strong><font color="#ff00ff">购买套装用户注意事项：</font></strong><br />\r\n1、套装价格均含快递费用（统一韵达+EMS快递）<br />\r\n2、支付宝和快钱需使用直接到账支付方式<br />\r\n3、支付备注栏中必须注明姓名、电话和地址以及官方论坛ID等信息资料，如果购买多套请注明清楚，便于我们发货和通知<br />\r\n4、支付完成后请联系官方专用活动QQ：<font color="#0000ff">390758770 电话：13501889395 邮件：</font><a href="mailto:liuchen@topthink.com" target="_blank"><font color="#0000ff">liuchen@topthink.com</font></a>&nbsp; &nbsp;提供支付截图和论坛ID后一个工作日内开通VIP权限<br />\r\n5、开通VIP权限后即可登录论坛到VIP专区下载相关资料和开源应用<br />\r\n6、前面1000名购买用户 可以获得官方明信片和红色主机2G空间（<strong><font color="#ff0000">已经送完</font></strong>）<br />\r\n7、购买用户的空间资料、免费建站培训报名会统一批次处理<br />\r\n8、套装中的物品不单卖，如果有批量购买的需要， 请联系官方 电话：13501889395 <font color="#0000ff">邮件：</font><a href="mailto:liuchen@topthink.com" target="_blank"><font color="#0000ff">liuchen@topthink.com</font></a><br />\r\n9、官方T恤的尺寸大小定有165 170 175 180 码数 如果没有特别注明，均使用170标准大码<br />\r\n10、套装活动目前不设截至日期，停止时间请关注官方发布的公告<br />\r\n<br />\r\n<strong><font color="#4169e1">购买后有其他建议可以在VIP专区发帖交流</font></strong></p>', 1, 1252741764, 1351927287, 1),
(4, '病友分类3', 'ThinkPHP发布2.0正式版本', '<p><img border="0" src="http://www.thinkphp.cn/Public/logo3.png" alt="" /><strong><font color="#ff0000"> <br />\r\nThinkPHP发布2.0正式版本</font></strong><br />\r\n<strong><font color="#ff0000"><br />\r\n</font></strong>在经过5个月的重构和完善之后，ThinkPHP终于发布了新的里程碑版本2.0，作为新版网站上线和祖国60周年华诞的献礼。感谢为了新版的功能辛苦测试和完善的朋友们，感谢一直以来支持和关注TP的朋友们，是你们见证和成就了TP的快速成长。官方也会一如既往的发展ThinkPHP，以完善TP和方便开发为己任！ <br />\r\n<br />\r\n<font color="#ff0000"><strong>[ 特性 ]</strong> </font><br />\r\n完全重构的框架核心<br />\r\n可组装和定制的底层<br />\r\n更简单的MVC和ORM<br />\r\n灵活的URL模式<br />\r\n丰富的查询语言<br />\r\n增加视图模型、关联模型和高级模型以及动态模型<br />\r\n分组模块的全新体验<br />\r\n优化的模板引擎<br />\r\n强大的扩展机制<br />\r\n各方面性能的大幅提升<br />\r\n<br />\r\n<strong><font color="#ff0000">详细请参考：<a href="http://bbs.thinkphp.cn/viewthread.php?tid=8631&amp;extra=&amp;page=1">http://bbs.thinkphp.cn/viewthread.php?tid=8631&amp;extra=&amp;page=1</a></font></strong></p>', 1, 1254374099, 1351927282, 0),
(5, '病友分类1', '上海顶想信息科技高薪诚聘', '<p>由于业务发展需要，上海顶想信息科技有限公司长期招聘人员如下：<br />\r\n<br />\r\n<strong>项目经理</strong>（2人）<br />\r\n1、5年以上实际WEB项目开发经验 精通PHP等WEB开发语言<br />\r\n2、具有网站LAMP架构设计、部署和优化经验<br />\r\n3、有较强的分析问题和解决问题的能力<br />\r\n4、强烈的责任心，良好的沟通能力，良好的团队合作精神，对工作有激情<br />\r\n5、具备良好的代码编程习惯及较强的文档编写能力<br />\r\n6、有大型网站开发经验或者团队管理经验者优先考虑<br />\r\n待遇范围：6500~9500+福利<br />\r\n<br />\r\n<strong>PHP高级程序员</strong>（5~8人）<br />\r\n1、2年以上PHP+MYSQL开发经验 <br />\r\n2、良好的代码习惯和面向对象的编程思想<br />\r\n3、熟悉HTML/XHTML、CSS、Javascript<br />\r\n4、有良好的团队合作能力，善于沟通，热爱开发事业<br />\r\n5、有责任心 具有良好的自学能力和独立解决问题的能力；<br />\r\n6、有大型社区或者门户开发经验或者自己的独立技术作品优先考虑<br />\r\n待遇范围：4500~6500+福利<br />\r\n<br />\r\n<strong>PHP初级程序员</strong>（5人）<br />\r\n1、1年以上WEB项目开发经验 良好的代码习惯和面向对象的编程思想<br />\r\n2、热爱ThinkPHP 热衷PHP并且希望在PHP领域发展<br />\r\n3、熟悉HTML/XHTML、CSS、Javascript<br />\r\n4、具有良好的自学能力 有责任心 能够承受压力<br />\r\n待遇范围：3000~5000+福利<br />\r\n<br />\r\n前端开发（2人）<br />\r\n1、2年以上前端开发经验<br />\r\n2、精通XHTML/CSS/JavaScript/Ajax/DOM 代码实现做到兼容主流浏览器<br />\r\n3、掌握Jquery或者任何一个JS框架 熟悉YSlow和SEO知识<br />\r\n4、能够和美工很好的沟通衔接工作或者有一定的美工基础<br />\r\n5、有大型社区和门户的开发经验优先考虑<br />\r\n待遇范围：3000~6000+福利<br />\r\n<br />\r\n简历请投至<a target="_blank" href="mailto:hr@topthink.com">hr@topthink.com</a> 并附上个人作品和案例 合则约见<br />\r\n<br />\r\n公司简介：<br />\r\n上海顶想信息科技有限公司（TOPThink Inc.）是国内领先的WEB应用和服务提供商，致力于WEB应用平台、产品和应用的研发和服务，为企事业单位提供基于WEB的应用开发快速解决方案和产品。公司长期专注于WEB应用框架和解决方案的研究。ThinkPHP经过四年的精心打造和发展，具有广泛的用户基础和良好的业内口碑，拥有50w开发用户。已经成长为国内领先和最具影响力的WEB应用开发框架，其应用领域分布于各个行业，在企业WEB应用和电子商务方面有着非常良好支持以及拓展，大小案例不下千家，在安全、效率、负载上都有很大优势，已经成为WEB应用的快速开发解决方案和最佳实践！<br />\r\n<br />\r\n公司理念：专业源于专注，细节决定成败。<br />\r\n我们的口号是：<strong><font color="#0000ff">JUST THINK IT</font></strong></p>', 1, 1262843179, 1351927277, 1),
(6, '病友分类2', '2010年RoadMap计划', '<table cellspacing="0" cellpadding="0">\r\n    <tbody>\r\n        <tr>\r\n            <td class="t_msgfont" id="postmessage_67008">首先要对社区关心和关注Think<span href="tag.php?name=PHP" onclick="tagshow(event)" class="t_tag">PHP</span>的朋友表示感谢和歉意，由于<span href="tag.php?name=%E9%A1%B9%E7%9B%AE" onclick="tagshow(event)" class="t_tag">项目</span>和人手的关系，对目前社区的支持力度不够，新手抱怨较多。<br />\r\n            但请大家相信，官方一直在不遗余力地发展ThinkPHP，发展国内的<span href="tag.php?name=%E5%BC%80%E6%BA%90" onclick="tagshow(event)" class="t_tag">开源</span><span href="tag.php?name=%E6%A1%86%E6%9E%B6" onclick="tagshow(event)" class="t_tag">框架</span>事业我们从未止步！<br />\r\n            <br />\r\n            另外鉴于目前的2.0版本相对比较稳定，ThinkPHP今年上半年不会有大的改动，预计今年10月1日可以发布最新的2.1版本。<br />\r\n            <br />\r\n            除了一些<span href="tag.php?name=BUG" onclick="tagshow(event)" class="t_tag">BUG</span>修正之外，官方的roadmap计划如下：<br />\r\n            1、完善<span href="tag.php?name=URL" onclick="tagshow(event)" class="t_tag">URL</span><span href="tag.php?name=%E8%B7%AF%E7%94%B1" onclick="tagshow(event)" class="t_tag">路由</span> 支持正则匹配和<span href="tag.php?name=%E5%87%BD%E6%95%B0" onclick="tagshow(event)" class="t_tag">函数</span><span href="tag.php?name=%E8%A7%A3%E6%9E%90" onclick="tagshow(event)" class="t_tag">解析</span>、泛域名解析<br />\r\n            2、<span href="tag.php?name=%E5%88%86%E7%BB%84" onclick="tagshow(event)" class="t_tag">分组</span><span href="tag.php?name=%E6%A8%A1%E5%BC%8F" onclick="tagshow(event)" class="t_tag">模式</span>完美支持二级域名<br />\r\n            3、<span href="tag.php?name=%E6%A8%A1%E6%9D%BF" onclick="tagshow(event)" class="t_tag">模板</span>引擎改进和完善<br />\r\n            4、更加强大的扩展机制<br />\r\n            5、提供AMF支持<br />\r\n            6、提供更多的<span href="tag.php?name=%E5%BA%94%E7%94%A8" onclick="tagshow(event)" class="t_tag">应用</span>接口支持<br />\r\n            7、更多精彩的细节功能~<br />\r\n            <br />\r\n            <font color="#4169e1"><strong>另外一个值得期待的是，届时将启动全新的官方社区（包括知识中心和更多的互动<span href="tag.php?name=%E6%A8%A1%E5%9D%97" onclick="tagshow(event)" class="t_tag">模块</span>、项目中心），并且同时开放旧版的官方网站<span href="tag.php?name=%E6%BA%90%E7%A0%81" onclick="tagshow(event)" class="t_tag">源码</span>。</strong></font><br />\r\n            <br />\r\n            <strong><font color="#ff0000">开源需要大家的参与和贡献，我们也热情期盼更多的人参与进来，共同完善，人人为我，我为人人</font></strong><br />\r\n            <strong><font color="#ff0000">WE CAN DO IT ,JUST THINK IT !</font></strong><br />\r\n            <br />\r\n            <strong><font color="#4169e1">另外诚意邀请社区的PHP精英加盟ThinkPHP官方团队！</font></strong><br />\r\n            <strong><font color="#4169e1">诚意联系Email：</font><a href="mailto:hr@topthink.com"><font color="#4169e1">hr@topthink.com</font></a><font color="#4169e1"> 或者 QQ：130770305（非技术交流）</font></strong></td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 1, 1271298522, 1351927241, 0);

-- --------------------------------------------------------

--
-- Table structure for table `think_role`
--

CREATE TABLE IF NOT EXISTS `think_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `ename` varchar(5) DEFAULT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parentId` (`pid`),
  KEY `ename` (`ename`),
  KEY `status` (`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `think_role`
--

INSERT INTO `think_role` (`id`, `name`, `pid`, `status`, `remark`, `ename`, `create_time`, `update_time`) VALUES
(1, '一般管理员', 2, 1, '', NULL, 1208784792, 1215496350),
(2, '公共用户组', 0, 1, '', NULL, 1215496283, 1222872471),
(3, '网站编辑', 2, 1, '', NULL, 1229319925, 0);

-- --------------------------------------------------------

--
-- Table structure for table `think_role_user`
--

CREATE TABLE IF NOT EXISTS `think_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `think_role_user`
--

INSERT INTO `think_role_user` (`role_id`, `user_id`) VALUES
(3, '24'),
(1, '24');

-- --------------------------------------------------------

--
-- Table structure for table `think_tag`
--

CREATE TABLE IF NOT EXISTS `think_tag` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `count` mediumint(6) unsigned NOT NULL,
  `module` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `module` (`module`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=113 ;

--
-- Dumping data for table `think_tag`
--

INSERT INTO `think_tag` (`id`, `name`, `count`, `module`) VALUES
(1, '开通', 3, 'Blog'),
(2, '路由', 1, 'Article'),
(3, 'SEO', 1, 'Article'),
(4, 'URL', 1, 'Article'),
(5, '空操作', 1, 'Article'),
(6, '原生SQL', 2, 'Article'),
(7, 'CURD', 2, 'Article'),
(8, '新版', 1, 'Blog'),
(9, '圣诞', 3, 'Blog'),
(10, '连贯操作', 1, 'Article'),
(11, '分布式', 1, 'Article'),
(12, '团队博客', 1, 'Blog'),
(13, '壁纸', 3, 'Blog'),
(14, '父爱如山', 1, 'Blog'),
(15, '完善', 1, 'Blog'),
(16, '模型', 1, 'Article'),
(17, '数据表', 1, 'Article'),
(18, 'ThinkAjax', 1, 'Article'),
(19, '关联操作', 1, 'Article'),
(20, '关联操作', 1, 'Blog'),
(21, '案例', 1, 'Blog'),
(22, '新版发布', 1, 'Blog'),
(23, '文档', 1, 'Article'),
(24, 'pdf', 1, 'Article'),
(25, 'swf', 1, 'Article'),
(26, '更新', 1, 'Article'),
(27, '官方', 1, 'Article'),
(28, '数据表对应', 1, 'Article'),
(29, '规范', 1, 'Blog'),
(30, '新功能', 1, 'Blog'),
(31, '编译缓存', 1, 'Blog'),
(32, '入门', 3, 'Blog'),
(33, '框架', 1, 'Blog'),
(34, '第三方类库', 1, 'Blog'),
(35, '导入', 1, 'Blog'),
(36, 'vendor', 1, 'Blog'),
(37, 'Dispatch', 1, 'Blog'),
(38, '路由', 1, 'Blog'),
(39, 'ZendStudio', 1, 'Article'),
(40, '开发环境', 1, 'Blog'),
(41, 'ThinkPHP', 1, 'Blog'),
(42, 'simplexml', 1, 'Blog'),
(43, '标签库', 1, 'Blog'),
(44, 'xml', 1, 'Blog'),
(45, '模板引擎', 1, 'Blog'),
(46, 'smarty', 1, 'Blog'),
(47, 'smarty', 1, 'Article'),
(48, 'template', 1, 'Article'),
(49, '常见问题集合', 1, 'Blog'),
(50, 'LOGO', 1, 'Blog'),
(51, '单元测试', 1, 'Blog'),
(52, '测试用例', 1, 'Blog'),
(53, 'Lite版', 1, 'Blog'),
(54, '备份', 1, 'Blog'),
(55, '新年', 1, 'Blog'),
(56, 'lite,教程,使用手记', 1, 'Article'),
(57, 'lite,入门', 3, 'Article'),
(58, 'lite', 2, 'Blog'),
(59, '生日快乐', 1, 'Blog'),
(60, '三周年', 1, 'Blog'),
(61, '培训认证', 1, 'Blog'),
(62, '合作', 1, 'Blog'),
(63, '门户', 16, 'Case'),
(64, '女性', 4, 'Case'),
(65, '社区', 32, 'Case'),
(66, '其它', 12, 'Case'),
(67, '电子商务', 17, 'Case'),
(68, '招聘', 1, 'Case'),
(69, '游戏', 6, 'Case'),
(70, '企业', 21, 'Case'),
(71, '旅游', 5, 'Case'),
(72, '医疗', 4, 'Case'),
(73, '政府', 2, 'Case'),
(74, '彩票', 1, 'Case'),
(75, '漫画', 1, 'Case'),
(76, '证券', 1, 'Case'),
(77, '公益', 4, 'Case'),
(78, '音乐', 2, 'Case'),
(79, '英语', 1, 'Case'),
(80, '学习', 1, 'Case'),
(81, '学校', 3, 'Case'),
(82, '交友', 2, 'Case'),
(83, '其他', 2, 'Case'),
(84, '教育', 7, 'Case'),
(85, '地产', 6, 'Case'),
(86, '搜索', 1, 'Case'),
(87, '酒店', 2, 'Case'),
(88, '视频', 1, 'Case'),
(89, '金融', 1, 'Case'),
(90, '相册', 1, 'Case'),
(91, '媒体', 1, 'Case'),
(92, '手机', 1, 'Case'),
(93, '创作', 1, 'Case'),
(94, '品牌', 1, 'Case'),
(95, '动漫', 1, 'Case'),
(96, '招聘', 1, 'Blog'),
(97, '影视', 2, 'Case'),
(98, '沈阳新娘化妆', 1, 'Case'),
(99, '物流', 1, 'Case'),
(100, '咨询', 1, 'Case'),
(101, '摄影', 1, 'Case'),
(102, '文化宣传', 1, 'Case'),
(103, '电子', 1, 'Case'),
(104, '服务', 1, 'Case'),
(105, '婚庆', 5, 'Case'),
(106, '农业', 1, 'Case'),
(107, '展示', 1, 'Case'),
(108, '家居', 3, 'Case'),
(109, '家纺', 1, 'Case'),
(110, '商城', 1, 'Case'),
(111, '腾讯', 1, 'Case'),
(112, '资讯', 1, 'Case');

-- --------------------------------------------------------

--
-- Table structure for table `think_tagged`
--

CREATE TABLE IF NOT EXISTS `think_tagged` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `record_id` int(11) unsigned NOT NULL,
  `tag_id` int(11) unsigned NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `module` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `module` (`module`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=464 ;

--
-- Dumping data for table `think_tagged`
--

INSERT INTO `think_tagged` (`id`, `user_id`, `record_id`, `tag_id`, `create_time`, `module`) VALUES
(36, 1, 1, 1, 1229396120, 'Blog'),
(29, 1, 2, 8, 1228923977, 'Blog'),
(52, 1, 1, 5, 1229578822, 'Article'),
(51, 1, 1, 4, 1229578822, 'Article'),
(50, 1, 1, 3, 1229578822, 'Article'),
(49, 1, 1, 2, 1229578822, 'Article'),
(58, 1, 2, 7, 1229579550, 'Article'),
(59, 1, 3, 7, 1229579865, 'Article'),
(57, 1, 2, 6, 1229579550, 'Article'),
(184, 1, 3, 9, 1231400160, 'Blog'),
(30, 1, 2, 1, 1228923977, 'Blog'),
(45, 1, 4, 10, 1229522922, 'Article'),
(60, 1, 5, 11, 1229580125, 'Article'),
(186, 1, 4, 12, 1231400189, 'Blog'),
(183, 1, 5, 13, 1231400072, 'Blog'),
(182, 1, 5, 9, 1231400072, 'Blog'),
(199, 1, 6, 14, 1231556291, 'Blog'),
(62, 1, 7, 15, 1229663899, 'Blog'),
(66, 2, 6, 17, 1229765904, 'Article'),
(65, 2, 6, 16, 1229765904, 'Article'),
(67, 2, 7, 18, 1229766338, 'Article'),
(68, 2, 8, 19, 1229849301, 'Article'),
(181, 1, 8, 20, 1231400042, 'Blog'),
(180, 1, 9, 21, 1231399976, 'Blog'),
(177, 1, 11, 9, 1231399656, 'Blog'),
(243, 1, 12, 22, 1233729084, 'Blog'),
(105, 6, 9, 23, 1230142663, 'Article'),
(106, 6, 9, 24, 1230142663, 'Article'),
(107, 6, 9, 25, 1230142663, 'Article'),
(108, 6, 9, 26, 1230142663, 'Article'),
(109, 6, 9, 27, 1230142663, 'Article'),
(122, 2, 10, 28, 1230198652, 'Article'),
(179, 1, 13, 30, 1231399792, 'Blog'),
(178, 1, 13, 29, 1231399792, 'Blog'),
(176, 1, 14, 31, 1231399620, 'Blog'),
(171, 1, 15, 32, 1231399382, 'Blog'),
(191, 1, 16, 33, 1231400385, 'Blog'),
(190, 1, 17, 36, 1231400298, 'Blog'),
(189, 1, 17, 35, 1231400298, 'Blog'),
(188, 1, 17, 34, 1231400298, 'Blog'),
(193, 11, 18, 38, 1231401188, 'Blog'),
(192, 11, 18, 37, 1231401188, 'Blog'),
(143, 1, 11, 39, 1231039503, 'Article'),
(170, 1, 19, 41, 1231398479, 'Blog'),
(169, 1, 19, 40, 1231398479, 'Blog'),
(196, 11, 20, 44, 1231401457, 'Blog'),
(195, 11, 20, 43, 1231401457, 'Blog'),
(194, 11, 20, 42, 1231401457, 'Blog'),
(167, 1, 22, 46, 1231398215, 'Blog'),
(166, 1, 22, 45, 1231398215, 'Blog'),
(233, 11, 12, 48, 1233644319, 'Article'),
(232, 11, 12, 47, 1233644319, 'Article'),
(172, 1, 15, 49, 1231399382, 'Blog'),
(185, 1, 3, 50, 1231400160, 'Blog'),
(210, 19, 24, 52, 1232001764, 'Blog'),
(209, 19, 24, 51, 1232001764, 'Blog'),
(218, 1, 25, 53, 1232434561, 'Blog'),
(221, 7, 28, 54, 1232434958, 'Blog'),
(231, 1, 29, 13, 1232807022, 'Blog'),
(230, 1, 29, 55, 1232807022, 'Blog'),
(234, 4, 13, 56, 1233664303, 'Article'),
(238, 4, 14, 57, 1233664982, 'Article'),
(236, 4, 15, 57, 1233664609, 'Article'),
(237, 4, 16, 57, 1233664626, 'Article'),
(239, 4, 30, 58, 1233665019, 'Blog'),
(240, 4, 30, 32, 1233665019, 'Blog'),
(241, 4, 31, 58, 1233665241, 'Blog'),
(242, 4, 31, 32, 1233665241, 'Blog'),
(244, 7, 32, 59, 1234120329, 'Blog'),
(245, 1, 33, 60, 1234146681, 'Blog'),
(246, 1, 35, 61, 1250046089, 'Blog'),
(247, 1, 35, 62, 1250046089, 'Blog'),
(248, 1, 111, 63, 1253690809, 'Case'),
(249, 1, 111, 64, 1253690809, 'Case'),
(250, 1, 110, 65, 1253690831, 'Case'),
(252, 1, 109, 67, 1253690856, 'Case'),
(253, 1, 108, 65, 1253690873, 'Case'),
(255, 1, 107, 67, 1253690972, 'Case'),
(256, 1, 106, 68, 1253690979, 'Case'),
(257, 1, 105, 69, 1253690991, 'Case'),
(258, 1, 104, 70, 1253691009, 'Case'),
(259, 1, 103, 71, 1253691041, 'Case'),
(260, 1, 103, 63, 1253691041, 'Case'),
(261, 1, 102, 70, 1253691060, 'Case'),
(262, 1, 101, 69, 1253691067, 'Case'),
(263, 1, 100, 72, 1253691079, 'Case'),
(264, 1, 99, 70, 1253691086, 'Case'),
(265, 1, 98, 69, 1253691111, 'Case'),
(266, 1, 97, 69, 1253691134, 'Case'),
(267, 1, 96, 65, 1253691154, 'Case'),
(268, 1, 95, 73, 1253691168, 'Case'),
(269, 1, 94, 73, 1253691175, 'Case'),
(270, 1, 93, 67, 1253691192, 'Case'),
(271, 1, 92, 67, 1253691203, 'Case'),
(272, 1, 91, 63, 1253691224, 'Case'),
(273, 1, 90, 74, 1253691231, 'Case'),
(274, 1, 89, 75, 1253691268, 'Case'),
(275, 1, 88, 65, 1253691279, 'Case'),
(276, 1, 88, 63, 1253691279, 'Case'),
(277, 1, 87, 76, 1253691297, 'Case'),
(278, 1, 86, 65, 1253691349, 'Case'),
(279, 1, 85, 69, 1253691357, 'Case'),
(280, 1, 85, 65, 1253691357, 'Case'),
(281, 1, 84, 65, 1253691368, 'Case'),
(282, 1, 83, 77, 1253691413, 'Case'),
(283, 1, 83, 65, 1253691413, 'Case'),
(284, 1, 82, 65, 1253691436, 'Case'),
(285, 1, 82, 78, 1253691436, 'Case'),
(289, 1, 81, 80, 1253691470, 'Case'),
(288, 1, 81, 79, 1253691470, 'Case'),
(290, 1, 81, 65, 1253691470, 'Case'),
(291, 1, 80, 81, 1253691482, 'Case'),
(292, 1, 78, 65, 1253691569, 'Case'),
(293, 1, 78, 67, 1253691569, 'Case'),
(294, 1, 77, 63, 1253691590, 'Case'),
(295, 1, 76, 67, 1253691618, 'Case'),
(296, 1, 75, 70, 1253691648, 'Case'),
(297, 1, 74, 82, 1253691662, 'Case'),
(298, 1, 72, 83, 1253691695, 'Case'),
(299, 1, 73, 72, 1253691708, 'Case'),
(300, 1, 71, 66, 1253691725, 'Case'),
(301, 1, 70, 66, 1253691743, 'Case'),
(302, 1, 69, 63, 1253691755, 'Case'),
(303, 1, 69, 72, 1253691755, 'Case'),
(304, 1, 68, 66, 1253691766, 'Case'),
(305, 1, 67, 84, 1253691781, 'Case'),
(306, 1, 66, 67, 1253691793, 'Case'),
(307, 1, 65, 65, 1253691801, 'Case'),
(308, 1, 64, 70, 1253691817, 'Case'),
(309, 1, 63, 85, 1253691838, 'Case'),
(310, 1, 62, 71, 1253691851, 'Case'),
(311, 1, 62, 63, 1253691851, 'Case'),
(312, 1, 61, 65, 1253691861, 'Case'),
(313, 1, 61, 71, 1253691861, 'Case'),
(314, 1, 60, 65, 1253691870, 'Case'),
(315, 1, 60, 63, 1253691870, 'Case'),
(316, 1, 59, 66, 1253691882, 'Case'),
(317, 1, 58, 70, 1253691893, 'Case'),
(318, 1, 57, 70, 1253691906, 'Case'),
(319, 1, 56, 66, 1253691949, 'Case'),
(320, 1, 54, 77, 1253691961, 'Case'),
(321, 1, 53, 65, 1253691968, 'Case'),
(322, 1, 52, 69, 1253691975, 'Case'),
(323, 1, 51, 86, 1253691991, 'Case'),
(324, 1, 50, 63, 1253691999, 'Case'),
(325, 1, 50, 70, 1253691999, 'Case'),
(326, 1, 49, 65, 1253692009, 'Case'),
(327, 1, 49, 67, 1253692009, 'Case'),
(328, 1, 48, 81, 1253692025, 'Case'),
(329, 1, 47, 84, 1253692038, 'Case'),
(330, 1, 44, 65, 1253692050, 'Case'),
(331, 1, 43, 71, 1253692066, 'Case'),
(332, 1, 43, 65, 1253692066, 'Case'),
(333, 1, 42, 81, 1253692078, 'Case'),
(334, 1, 41, 70, 1253692089, 'Case'),
(335, 1, 40, 78, 1253692101, 'Case'),
(336, 1, 39, 70, 1253692108, 'Case'),
(337, 1, 38, 66, 1253692119, 'Case'),
(338, 1, 37, 84, 1253692131, 'Case'),
(339, 1, 36, 82, 1253692147, 'Case'),
(340, 1, 36, 65, 1253692147, 'Case'),
(341, 1, 35, 85, 1253692156, 'Case'),
(342, 1, 33, 65, 1253692248, 'Case'),
(343, 1, 32, 67, 1253692257, 'Case'),
(344, 1, 31, 87, 1253692269, 'Case'),
(345, 1, 30, 65, 1253692281, 'Case'),
(346, 1, 30, 88, 1253692281, 'Case'),
(347, 1, 29, 84, 1253692295, 'Case'),
(348, 1, 29, 65, 1253692295, 'Case'),
(349, 1, 28, 65, 1253692308, 'Case'),
(350, 1, 27, 89, 1253692323, 'Case'),
(351, 1, 26, 67, 1253692334, 'Case'),
(352, 1, 25, 66, 1253692344, 'Case'),
(353, 1, 24, 67, 1253692357, 'Case'),
(354, 1, 23, 70, 1253692369, 'Case'),
(355, 1, 22, 67, 1253692384, 'Case'),
(356, 1, 21, 84, 1253692401, 'Case'),
(357, 1, 21, 65, 1253692401, 'Case'),
(358, 1, 20, 67, 1253692414, 'Case'),
(359, 1, 19, 65, 1253692425, 'Case'),
(360, 1, 18, 66, 1253692433, 'Case'),
(361, 1, 17, 84, 1253692561, 'Case'),
(362, 1, 16, 66, 1253692573, 'Case'),
(363, 1, 15, 71, 1253692586, 'Case'),
(364, 1, 15, 65, 1253692586, 'Case'),
(365, 1, 14, 65, 1253692599, 'Case'),
(366, 1, 14, 63, 1253692599, 'Case'),
(367, 1, 13, 70, 1253692611, 'Case'),
(368, 1, 12, 66, 1253692623, 'Case'),
(369, 1, 11, 66, 1253692638, 'Case'),
(370, 1, 10, 63, 1253692650, 'Case'),
(371, 1, 9, 65, 1253692659, 'Case'),
(372, 1, 9, 63, 1253692659, 'Case'),
(373, 1, 8, 85, 1253692667, 'Case'),
(374, 1, 7, 85, 1253692687, 'Case'),
(375, 1, 6, 65, 1253692695, 'Case'),
(376, 1, 5, 70, 1253692730, 'Case'),
(377, 1, 4, 63, 1253692739, 'Case'),
(378, 1, 4, 72, 1253692739, 'Case'),
(379, 1, 3, 70, 1253692747, 'Case'),
(380, 1, 2, 65, 1253692755, 'Case'),
(381, 1, 1, 63, 1253692765, 'Case'),
(385, 1, 112, 90, 1254118823, 'Case'),
(384, 1, 112, 67, 1254118823, 'Case'),
(386, 1, 113, 77, 1254216054, 'Case'),
(388, 1, 36, 13, 1254473850, 'Blog'),
(390, 1, 114, 92, 1257387452, 'Case'),
(391, 1, 115, 93, 1258340454, 'Case'),
(392, 1, 116, 67, 1258449475, 'Case'),
(393, 1, 116, 94, 1258449475, 'Case'),
(394, 1, 117, 95, 1260334073, 'Case'),
(462, 1, 37, 96, 1282281730, 'Blog'),
(407, 1, 118, 97, 1269857184, 'Case'),
(413, 1, 119, 64, 1269857381, 'Case'),
(405, 1, 120, 65, 1269857078, 'Case'),
(404, 1, 120, 67, 1269857078, 'Case'),
(425, 1, 121, 64, 1269917787, 'Case'),
(424, 1, 121, 67, 1269917787, 'Case'),
(422, 1, 122, 63, 1269917774, 'Case'),
(417, 1, 123, 98, 1269917613, 'Case'),
(421, 1, 124, 83, 1269917713, 'Case'),
(420, 1, 124, 63, 1269917713, 'Case'),
(419, 1, 125, 77, 1269917694, 'Case'),
(423, 1, 122, 99, 1269917774, 'Case'),
(426, 1, 126, 70, 1269941978, 'Case'),
(427, 1, 126, 100, 1269941978, 'Case'),
(428, 1, 127, 65, 1269942383, 'Case'),
(429, 1, 128, 70, 1269943250, 'Case'),
(430, 1, 128, 87, 1269943250, 'Case'),
(431, 1, 129, 70, 1269943303, 'Case'),
(432, 1, 129, 101, 1269943303, 'Case'),
(433, 1, 130, 70, 1269943653, 'Case'),
(434, 1, 130, 102, 1269943653, 'Case'),
(435, 1, 131, 103, 1269943839, 'Case'),
(436, 1, 132, 104, 1269943915, 'Case'),
(437, 1, 133, 70, 1269943993, 'Case'),
(438, 1, 134, 105, 1269944043, 'Case'),
(439, 1, 135, 105, 1269944107, 'Case'),
(440, 1, 136, 70, 1269944173, 'Case'),
(441, 1, 137, 105, 1269944213, 'Case'),
(442, 1, 138, 105, 1269944267, 'Case'),
(443, 1, 139, 105, 1269944315, 'Case'),
(444, 1, 140, 70, 1269944363, 'Case'),
(446, 1, 141, 84, 1271150435, 'Case'),
(447, 1, 142, 97, 1276419182, 'Case'),
(448, 1, 143, 106, 1276419256, 'Case'),
(449, 1, 143, 107, 1276419256, 'Case'),
(450, 1, 144, 108, 1277445157, 'Case'),
(456, 22, 145, 108, 1277445931, 'Case'),
(454, 22, 146, 109, 1277445909, 'Case'),
(455, 22, 146, 110, 1277445909, 'Case'),
(457, 22, 145, 111, 1277445931, 'Case'),
(458, 22, 145, 112, 1277445931, 'Case'),
(459, 1, 147, 85, 1279086535, 'Case'),
(463, 1, 148, 85, 1286204434, 'Case');

-- --------------------------------------------------------

--
-- Table structure for table `think_user`
--

CREATE TABLE IF NOT EXISTS `think_user` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(64) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `last_login_time` int(11) unsigned DEFAULT '0',
  `last_login_ip` varchar(40) DEFAULT NULL,
  `login_count` mediumint(8) unsigned DEFAULT '0',
  `email` varchar(50) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`account`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `think_user`
--

INSERT INTO `think_user` (`id`, `account`, `nickname`, `password`, `last_login_time`, `last_login_ip`, `login_count`, `email`, `remark`, `create_time`, `update_time`, `status`) VALUES
(1, 'admin', '管理员', '21232f297a57a5a743894a0e4a801fc3', 1351919963, '127.0.0.1', 939, 'liu21st@gmail.com', '备注信息', 1222907803, 1229493451, 1),
(24, 'domes', 'dome', '25d55ad283aa400af464c76d713c07ad', 1285892413, '127.0.0.1', 1, '', '', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `think_wellness`
--

CREATE TABLE IF NOT EXISTS `think_wellness` (
  `id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(25) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `content` text,
  `status` tinyint(1) DEFAULT NULL,
  `create_time` int(10) unsigned DEFAULT NULL,
  `update_time` int(10) unsigned DEFAULT NULL,
  `is_top` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `think_wellness`
--

INSERT INTO `think_wellness` (`id`, `category`, `title`, `content`, `status`, `create_time`, `update_time`, `is_top`) VALUES
(1, '恢复分类1', '官方网站全新改版', '<p><strong><font color="#ff0000">为了迎接新版本的发布，官方网站全新改版啦！ </font></strong></p>', 1, 1252740284, 1351927014, 0),
(2, '恢复分类2', '邀请开源TP项目联合发布', '<p>国庆官方正式版本发布的同时，有基于Think<span href="tag.php?name=PHP" onclick="tagshow(event)" class="t_tag">PHP</span>（<span href="tag.php?name=%E5%8C%85%E5%90%AB" onclick="tagshow(event)" class="t_tag">包含</span>目前的SVN版本或者1.5版本）的<span href="tag.php?name=%E5%BC%80%E6%BA%90" onclick="tagshow(event)" class="t_tag">开源</span>应用或者<span href="tag.php?name=%E7%B3%BB%E7%BB%9F" onclick="tagshow(event)" class="t_tag">系统</span>如果需要联合发布的，请联系官方，官方进行联合多渠道推广，并共同筹备发布事宜，所有通过的开源应用都有机会和ThinkPHP新版一起共同进入所有TPer的手中，列入新版用户手册的开源应用，并且载入TP的史册。<img border="0" smilieid="12" src="http://bbs.thinkphp.cn/images/smilies/default/lol.gif" alt="" /> <br />\r\n<br />\r\n可以通过QQ：130770305或者发邮件到 <a href="mailto:thinkphp@qq.com"><span href="tag.php?name=thinkphp" onclick="tagshow(event)" class="t_tag">thinkphp</span>@qq.com</a> 联系<br />\r\n<br />\r\n<strong><font color="#ff0000">让大家共同来分享新版发布的喜悦，TPer共襄盛举！</font></strong><br />\r\n<br />\r\n正式版本发布之际，官方会推出官方纪念套件：<strong><font color="#0000ff">用户指南文档(包含API)&nbsp;&nbsp;印刷版手册+优质文化T恤+大容量U盘+ThinkPHP核心、<span href="tag.php?name=%E7%A4%BA%E4%BE%8B" onclick="tagshow(event)" class="t_tag">示例</span>、资源+各TPer联合发布的应用源码</font></strong>。<br />\r\n-----------------------------------------------------------------------------<br />\r\n鉴于此次登记随着ThinkPHP新版联合发布的开源应用数量已经越来越多，为了更好的规范管理，我们要求开发者注意如下注意事项：<br />\r\n前提：此次联合发布的应用必须是基于TP1.5或者以上版本 并且开源，是否有网站不限。<br />\r\n要求：参加联合发布的作者请于9月25日之前提交测试过的开源应用到官方邮箱：<font color="#000000"><a href="mailto:thinkphp@qq.com">thinkphp@qq.com</a></font> <br />\r\n<br />\r\n并注明：<br />\r\n<font color="#0000ff"><strong>1、应用名称<br />\r\n2、概要说明<br />\r\n3、作者名称、联系邮箱和官方论坛ID（加分用）<br />\r\n4、所用的TP开发版本<br />\r\n应用采用打包形式，每个应用必须有一份安装说明文档，并配有截图一份。</strong><br />\r\n</font>-----------------------------------------------------------------------------<br />\r\n<br />\r\n目前已经确认列入新版发布的纪念套装U盘里面的开源应用包括：<br />\r\n<br />\r\n<strong>ThinkSNS</strong>： 开源SNS系统，基于ThinkPHP最新版本<br />\r\n医疗问答和预约系统：基于ThinkPHP最新版本的开源应用<br />\r\nthinket整站系统：基于TP1.5版本<br />\r\nTp工具箱：基于ThinkPHP开发的TP工具箱，包括1.5和新版本的<br />\r\n<strong>Yblog</strong>：基于ThinkPHP的开源博客系统<br />\r\n精简店铺管理系统：基于TP1.5的开业店铺管理应用<br />\r\nThinkmed：开源网站管理系统 基于TP最新版本<br />\r\nThink<span href="tag.php?name=CMS" onclick="tagshow(event)" class="t_tag">CMS</span>：开源内容管理系统 基于TP最新版本<br />\r\nMini<span href="tag.php?name=Blog" onclick="tagshow(event)" class="t_tag">Blog</span>：开源的迷你博客系统 基于TP最新版本<br />\r\n<strong>ThinkMyAdmin</strong>：开源mysql管理工具测试版 基于TP最新版本 <strong><font color="#ff0000">官方荣誉出品</font></strong><br />\r\nTcms:开源的内容管理系统 基于Tp最新版本<br />\r\nThinkHost：开源虚拟<span href="tag.php?name=%E4%B8%BB%E6%9C%BA" onclick="tagshow(event)" class="t_tag">主机</span>管理系统 基于TP最新版本<br />\r\n泽泽采集系统:开源采集系统，基于TP1.5版本<br />\r\n基于最新版本的留言板<br />\r\nRegisterBm:报名管理系统 基于TP1.5版本</p>', 1, 1252741633, 1351926993, 0),
(3, '恢复分类3', 'ThinkPHP新版发布纪念套装', '<p><img width="180" border="0" src="http://bbs.thinkphp.cn/attachments/month_0909/09091923420d456bef1e61ea38.jpg" aid="attachimg_1301" alt="" /><br />\r\nThinkPHP风雨三载，感恩不断，惊喜连连，官方将于国庆发布新的划时代2.0版本，为了迎接新版的正式发布和伟大祖国的60周年庆典，同时为了回馈广大TPer的关注和支持，官方特别推出<strong><font color="#ff0000">纪念超值套装</font></strong>。</p>\r\n<p><br />\r\n<strong>套装内容</strong>：包含下列超值内容<br />\r\n1、ThinkPHP2.0新版全部代码、示例和电子版文档；<br />\r\n2、官方新版发布纪念T恤一件；<br />\r\n3、ThinkPHP2.0完全开发手册（查看<a href="http://bbs.thinkphp.cn/viewthread.php?tid=8257" target="_blank">手册目录</a>）一本（厚达280页 带作者亲笔签名限量5000）；<br />\r\n4、ThinkPHP 4G大容量U盘一个；<strong><font color="#ff0000">（已经售罄）</font></strong><br />\r\n5、大量基于TP的开源应用源码（<a href="http://bbs.thinkphp.cn/viewthread.php?tid=8076" target="_blank"><font color="#0000ff">查看联合发布的开源应用</font></a>）和开发工具；<br />\r\n6、官方新版壁纸和Cheatsheet卡片<br />\r\n<strong><font color="#ff0000">9月27日 官方在套装内额外附赠了精心设计的</font></strong><a href="http://bbs.thinkphp.cn/viewthread.php?tid=8561&amp;page=1&amp;extra=" target="_blank"><strong><font color="#ff0000">Cheatsheet彩印卡片</font></strong></a><br />\r\n<strong><font color="#ff0000"><img width="180" border="0" src="http://bbs.thinkphp.cn/attachments/month_0910/091011180465b83100cb95b302.jpg" aid="attachimg_1369" alt="" /><img width="180" border="0" src="http://bbs.thinkphp.cn/attachments/month_0910/09101118044e3cfba04d891c2a.jpg" aid="attachimg_1370" alt="" /><br />\r\n6重惊喜</font></strong>：购买用户同时还可以获得更多的惊喜<br />\r\n惊喜1：凡购买用户在官方论坛的ID授予达人荣誉称号，免费成为官方的VIP贵宾会员；<br />\r\n惊喜2：前1000名购买用户可以获得红色主机价值199元的电信型2G主机空间一年（PHP5+MySQL5 共享2G空间 不含域名）（<strong><font color="#ff0000">已经送完</font></strong>）；<br />\r\n惊喜3：前1000名购买用户可以获得官方纪念明信片一张；<br />\r\n惊喜4：凡购买用户可以免费获赠价值500元的LAMP兄弟连（易第优教育）4小时在线企业门户建站培训；<br />\r\n惊喜5：参与联合发布的开源应用将进行公开评选，优秀开源应用将免费获得易联主机提供的1G空间一年；<br />\r\n惊喜6：购买用户还有额外抽奖机会；<strong><font color="#4169e1"><br />\r\n</font></strong>套装售价<strong><font color="#ff0000">118元</font></strong>，含快递费用！&nbsp;&nbsp;<br />\r\n[ 更多：<a href="http://bbs.thinkphp.cn/viewthread.php?tid=8737" target="_blank">套装实物图片</a> ]<br />\r\n<br />\r\nThinkPHP（<a href="http://thinkphp.cn/" target="_blank"><font color="#810081">http://thinkphp.cn</font></a> ）是一个免费开源的，快速、简单的面向对象的轻量级PHP开发框架，遵循Apache2开源协议发布，是为了敏捷WEB应用开发和简化企业级应用开发而诞生的。拥有众多的优秀功能和特性，经历了三年多发展的同时，在社区团队的积极参与下，在易用性、扩展性和性能方面不断优化和改进，众多的典型案例确保可以稳定用于商业以及门户级的开发。<br />\r\n拥有这套TP纪念套装，就等于拥有了一套全面的WEB开发装备和秘籍，不仅让你对ThinkPHP无师自通，技术胜人一筹，轻轻松松开发，还将成为官方的VIP贵宾会员，享受更多的服务。<br />\r\n所有热衷于PHP开发的朋友们，让我们共同呐喊：<strong><font color="#0000ff">大道至简，开发由我WE CAN DO IT , JUST THINK</font></strong> !<br />\r\n<br />\r\n订购流程：<br />\r\n1、选择支付方式付款-&gt;2、在备注栏留下相关资料（姓名、电话和地址、邮箱、论坛ID T恤大小 如果是转账的话 可以只留电话和姓名 其他到论坛更新）-&gt;3、购买后联系官方开通论坛VIP权限-&gt;4、官方安排发货<br />\r\n<br />\r\n<strong>订购需知</strong>：<br />\r\n请购买者务必在支付信息中留下姓名、快递地址、联系电话和邮件地址（以及官方论坛ID，便于我们授予荣誉和VIP服务），以便于我们发货和通知。套装支付购买后第二日即可发货。</p>\r\n<p><font color="#0000ff">购买后请联系：QQ 390758770 电话：13501889395 邮件：</font><a href="mailto:liuchen@topthink.com" target="_blank"><font color="#0000ff">liuchen@topthink.com</font></a><br />\r\n<br />\r\n<strong>支付方式</strong>：<br />\r\n<strong><font color="#4169e1">快钱账户（即时到账付款）</font></strong>：liu21st[at]gmail.com（将[at]换成@）<br />\r\n<strong><font color="#4169e1">支付宝账号（即时到账付款）</font></strong>：liu21st[at]gmail.com（将[at]换成@）<br />\r\n财付通账号：<strong><font color="#4169e1">130770305</font></strong> 账户真实姓名：刘晨<br />\r\n<strong><font color="#4169e1">银行转账（个人银行账号）</font></strong><br />\r\n开户行：招商银行上海分行外滩支行 <br />\r\n账号：6225882111345085 <br />\r\n开户名：刘晨<br />\r\n<br />\r\n上海地区的用户也可以上门提货，</p>\r\n<p>提货地址：上海市徐汇区钦州路108弄6号楼203室</p>\r\n<p>提货时间：周一到周五 9：30~18：30<br />\r\n<br />\r\n<strong>奖品赞助</strong>：<br />\r\n<a href="http://www.redphp.cn/" target="_blank"><font color="#0000ff">红色主机</font></a> <a href="http://www.elinkhost.com/" target="_blank"><font color="#810081">易联主机</font></a> <a href="http://www.youlianxi.com/" target="_blank"><font color="#0000ff">有联系网</font></a> <a href="http://www.immyhome.com/" target="_blank"><font color="#0000ff">爱美艾家</font></a> <br />\r\n<br />\r\n<strong>合作媒体</strong>：<br />\r\n<a href="http://phpchina.com/" target="_blank"><img width="88" height="31" border="0" src="http://www.phpchina.com/images/logo1.gif" alt="" /></a> <a href="http://www.php100.com/" target="_blank"><img width="88" height="31" border="0" src="http://bbs.php100.com/logo.gif" alt="" /></a> <a href="http://www.php.cn/" target="_blank"><img width="88" height="31" border="0" src="http://bbs.php.cn/logo.gif" alt="" /></a>&nbsp;&nbsp;<a href="http://www.carronedu.com/" target="_blank"><font color="#0000ff">开沅教育</font></a> <a href="http://www.lampbrother.net/" target="_blank"><img width="88" height="31" border="0" src="http://www.lampbrother.net/img/link/bbs.gif" alt="" /></a> <a href="http://www.tech-q.cn/" target="_blank"><img border="0" src="http://www.tech-q.cn/images/logo.gif" alt="" /></a>&nbsp;&nbsp;<a href="http://www.phphubei.com/" target="_blank"><img border="0" src="http://thinkphp.cn/Public/Images/phphubei-logo.gif" alt="" /></a>&nbsp;&nbsp;<br />\r\n欢迎更多的单位进行媒体合作以及奖品赞助，并诚邀单位、机构和个人进行代理和联合发售。<br />\r\n（奖品赞助、媒体合作或者代理销售请联系Email：<a href="mailto:liuchen@topthink.com" target="_blank"><font color="#0000ff">liuchen@topthink.com</font></a> 或者QQ：130770305 请注明来意）<br />\r\n<br />\r\n<br />\r\n<strong><font color="#ff00ff">购买套装用户注意事项：</font></strong><br />\r\n1、套装价格均含快递费用（统一韵达+EMS快递）<br />\r\n2、支付宝和快钱需使用直接到账支付方式<br />\r\n3、支付备注栏中必须注明姓名、电话和地址以及官方论坛ID等信息资料，如果购买多套请注明清楚，便于我们发货和通知<br />\r\n4、支付完成后请联系官方专用活动QQ：<font color="#0000ff">390758770 电话：13501889395 邮件：</font><a href="mailto:liuchen@topthink.com" target="_blank"><font color="#0000ff">liuchen@topthink.com</font></a>&nbsp; &nbsp;提供支付截图和论坛ID后一个工作日内开通VIP权限<br />\r\n5、开通VIP权限后即可登录论坛到VIP专区下载相关资料和开源应用<br />\r\n6、前面1000名购买用户 可以获得官方明信片和红色主机2G空间（<strong><font color="#ff0000">已经送完</font></strong>）<br />\r\n7、购买用户的空间资料、免费建站培训报名会统一批次处理<br />\r\n8、套装中的物品不单卖，如果有批量购买的需要， 请联系官方 电话：13501889395 <font color="#0000ff">邮件：</font><a href="mailto:liuchen@topthink.com" target="_blank"><font color="#0000ff">liuchen@topthink.com</font></a><br />\r\n9、官方T恤的尺寸大小定有165 170 175 180 码数 如果没有特别注明，均使用170标准大码<br />\r\n10、套装活动目前不设截至日期，停止时间请关注官方发布的公告<br />\r\n<br />\r\n<strong><font color="#4169e1">购买后有其他建议可以在VIP专区发帖交流</font></strong></p>', 1, 1252741764, 1351927009, 1),
(4, '恢复分类2', 'ThinkPHP发布2.0正式版本', '<p><img border="0" src="http://www.thinkphp.cn/Public/logo3.png" alt="" /><strong><font color="#ff0000"> <br />\r\nThinkPHP发布2.0正式版本</font></strong><br />\r\n<strong><font color="#ff0000"><br />\r\n</font></strong>在经过5个月的重构和完善之后，ThinkPHP终于发布了新的里程碑版本2.0，作为新版网站上线和祖国60周年华诞的献礼。感谢为了新版的功能辛苦测试和完善的朋友们，感谢一直以来支持和关注TP的朋友们，是你们见证和成就了TP的快速成长。官方也会一如既往的发展ThinkPHP，以完善TP和方便开发为己任！ <br />\r\n<br />\r\n<font color="#ff0000"><strong>[ 特性 ]</strong> </font><br />\r\n完全重构的框架核心<br />\r\n可组装和定制的底层<br />\r\n更简单的MVC和ORM<br />\r\n灵活的URL模式<br />\r\n丰富的查询语言<br />\r\n增加视图模型、关联模型和高级模型以及动态模型<br />\r\n分组模块的全新体验<br />\r\n优化的模板引擎<br />\r\n强大的扩展机制<br />\r\n各方面性能的大幅提升<br />\r\n<br />\r\n<strong><font color="#ff0000">详细请参考：<a href="http://bbs.thinkphp.cn/viewthread.php?tid=8631&amp;extra=&amp;page=1">http://bbs.thinkphp.cn/viewthread.php?tid=8631&amp;extra=&amp;page=1</a></font></strong></p>', 1, 1254374099, 1351926998, 0),
(5, '恢复分类3', '上海顶想信息科技高薪诚聘', '<p>由于业务发展需要，上海顶想信息科技有限公司长期招聘人员如下：<br />\r\n<br />\r\n<strong>项目经理</strong>（2人）<br />\r\n1、5年以上实际WEB项目开发经验 精通PHP等WEB开发语言<br />\r\n2、具有网站LAMP架构设计、部署和优化经验<br />\r\n3、有较强的分析问题和解决问题的能力<br />\r\n4、强烈的责任心，良好的沟通能力，良好的团队合作精神，对工作有激情<br />\r\n5、具备良好的代码编程习惯及较强的文档编写能力<br />\r\n6、有大型网站开发经验或者团队管理经验者优先考虑<br />\r\n待遇范围：6500~9500+福利<br />\r\n<br />\r\n<strong>PHP高级程序员</strong>（5~8人）<br />\r\n1、2年以上PHP+MYSQL开发经验 <br />\r\n2、良好的代码习惯和面向对象的编程思想<br />\r\n3、熟悉HTML/XHTML、CSS、Javascript<br />\r\n4、有良好的团队合作能力，善于沟通，热爱开发事业<br />\r\n5、有责任心 具有良好的自学能力和独立解决问题的能力；<br />\r\n6、有大型社区或者门户开发经验或者自己的独立技术作品优先考虑<br />\r\n待遇范围：4500~6500+福利<br />\r\n<br />\r\n<strong>PHP初级程序员</strong>（5人）<br />\r\n1、1年以上WEB项目开发经验 良好的代码习惯和面向对象的编程思想<br />\r\n2、热爱ThinkPHP 热衷PHP并且希望在PHP领域发展<br />\r\n3、熟悉HTML/XHTML、CSS、Javascript<br />\r\n4、具有良好的自学能力 有责任心 能够承受压力<br />\r\n待遇范围：3000~5000+福利<br />\r\n<br />\r\n前端开发（2人）<br />\r\n1、2年以上前端开发经验<br />\r\n2、精通XHTML/CSS/JavaScript/Ajax/DOM 代码实现做到兼容主流浏览器<br />\r\n3、掌握Jquery或者任何一个JS框架 熟悉YSlow和SEO知识<br />\r\n4、能够和美工很好的沟通衔接工作或者有一定的美工基础<br />\r\n5、有大型社区和门户的开发经验优先考虑<br />\r\n待遇范围：3000~6000+福利<br />\r\n<br />\r\n简历请投至<a target="_blank" href="mailto:hr@topthink.com">hr@topthink.com</a> 并附上个人作品和案例 合则约见<br />\r\n<br />\r\n公司简介：<br />\r\n上海顶想信息科技有限公司（TOPThink Inc.）是国内领先的WEB应用和服务提供商，致力于WEB应用平台、产品和应用的研发和服务，为企事业单位提供基于WEB的应用开发快速解决方案和产品。公司长期专注于WEB应用框架和解决方案的研究。ThinkPHP经过四年的精心打造和发展，具有广泛的用户基础和良好的业内口碑，拥有50w开发用户。已经成长为国内领先和最具影响力的WEB应用开发框架，其应用领域分布于各个行业，在企业WEB应用和电子商务方面有着非常良好支持以及拓展，大小案例不下千家，在安全、效率、负载上都有很大优势，已经成为WEB应用的快速开发解决方案和最佳实践！<br />\r\n<br />\r\n公司理念：专业源于专注，细节决定成败。<br />\r\n我们的口号是：<strong><font color="#0000ff">JUST THINK IT</font></strong></p>', 1, 1262843179, 1351927004, 1),
(6, '恢复分类2', '2010年RoadMap计划', '<table cellspacing="0" cellpadding="0">\r\n    <tbody>\r\n        <tr>\r\n            <td class="t_msgfont" id="postmessage_67008">首先要对社区关心和关注Think<span href="tag.php?name=PHP" onclick="tagshow(event)" class="t_tag">PHP</span>的朋友表示感谢和歉意，由于<span href="tag.php?name=%E9%A1%B9%E7%9B%AE" onclick="tagshow(event)" class="t_tag">项目</span>和人手的关系，对目前社区的支持力度不够，新手抱怨较多。<br />\r\n            但请大家相信，官方一直在不遗余力地发展ThinkPHP，发展国内的<span href="tag.php?name=%E5%BC%80%E6%BA%90" onclick="tagshow(event)" class="t_tag">开源</span><span href="tag.php?name=%E6%A1%86%E6%9E%B6" onclick="tagshow(event)" class="t_tag">框架</span>事业我们从未止步！<br />\r\n            <br />\r\n            另外鉴于目前的2.0版本相对比较稳定，ThinkPHP今年上半年不会有大的改动，预计今年10月1日可以发布最新的2.1版本。<br />\r\n            <br />\r\n            除了一些<span href="tag.php?name=BUG" onclick="tagshow(event)" class="t_tag">BUG</span>修正之外，官方的roadmap计划如下：<br />\r\n            1、完善<span href="tag.php?name=URL" onclick="tagshow(event)" class="t_tag">URL</span><span href="tag.php?name=%E8%B7%AF%E7%94%B1" onclick="tagshow(event)" class="t_tag">路由</span> 支持正则匹配和<span href="tag.php?name=%E5%87%BD%E6%95%B0" onclick="tagshow(event)" class="t_tag">函数</span><span href="tag.php?name=%E8%A7%A3%E6%9E%90" onclick="tagshow(event)" class="t_tag">解析</span>、泛域名解析<br />\r\n            2、<span href="tag.php?name=%E5%88%86%E7%BB%84" onclick="tagshow(event)" class="t_tag">分组</span><span href="tag.php?name=%E6%A8%A1%E5%BC%8F" onclick="tagshow(event)" class="t_tag">模式</span>完美支持二级域名<br />\r\n            3、<span href="tag.php?name=%E6%A8%A1%E6%9D%BF" onclick="tagshow(event)" class="t_tag">模板</span>引擎改进和完善<br />\r\n            4、更加强大的扩展机制<br />\r\n            5、提供AMF支持<br />\r\n            6、提供更多的<span href="tag.php?name=%E5%BA%94%E7%94%A8" onclick="tagshow(event)" class="t_tag">应用</span>接口支持<br />\r\n            7、更多精彩的细节功能~<br />\r\n            <br />\r\n            <font color="#4169e1"><strong>另外一个值得期待的是，届时将启动全新的官方社区（包括知识中心和更多的互动<span href="tag.php?name=%E6%A8%A1%E5%9D%97" onclick="tagshow(event)" class="t_tag">模块</span>、项目中心），并且同时开放旧版的官方网站<span href="tag.php?name=%E6%BA%90%E7%A0%81" onclick="tagshow(event)" class="t_tag">源码</span>。</strong></font><br />\r\n            <br />\r\n            <strong><font color="#ff0000">开源需要大家的参与和贡献，我们也热情期盼更多的人参与进来，共同完善，人人为我，我为人人</font></strong><br />\r\n            <strong><font color="#ff0000">WE CAN DO IT ,JUST THINK IT !</font></strong><br />\r\n            <br />\r\n            <strong><font color="#4169e1">另外诚意邀请社区的PHP精英加盟ThinkPHP官方团队！</font></strong><br />\r\n            <strong><font color="#4169e1">诚意联系Email：</font><a href="mailto:hr@topthink.com"><font color="#4169e1">hr@topthink.com</font></a><font color="#4169e1"> 或者 QQ：130770305（非技术交流）</font></strong></td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 1, 1271298522, 1351926988, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

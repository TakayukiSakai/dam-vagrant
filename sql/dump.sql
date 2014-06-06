-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: clubdam
-- ------------------------------------------------------
-- Server version	5.1.73

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `mst_user`
--

DROP TABLE IF EXISTS `mst_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(16) NOT NULL,
  `cdmCardNo` varchar(30) NOT NULL,
  `password` varchar(256) NOT NULL,
  `registration_time` datetime NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 COMMENT='ユーザ管理テーブル';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `raw_data`
--

DROP TABLE IF EXISTS `raw_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_data` (
  `raw_data_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `requestNo` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `artist` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `contents` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `play` tinyint(2) NOT NULL COMMENT 'キー変更',
  `reportCommentNo` int(6) unsigned NOT NULL,
  `chartInterval` tinyint(3) unsigned NOT NULL,
  `chartStability` tinyint(3) unsigned NOT NULL,
  `chartExpressiveness` tinyint(3) unsigned NOT NULL,
  `chartVibratoLongtone` tinyint(3) unsigned NOT NULL,
  `chartRhythm` tinyint(3) unsigned NOT NULL,
  `highPitch` tinyint(3) unsigned NOT NULL COMMENT '最高音',
  `lowPitch` tinyint(3) unsigned NOT NULL COMMENT '最低音',
  `highTessitura` tinyint(3) unsigned NOT NULL COMMENT '出した最高音',
  `lowTessitura` tinyint(3) unsigned NOT NULL COMMENT '出した最低音',
  `modulation` tinyint(3) unsigned NOT NULL COMMENT '抑揚',
  `measure` tinyint(3) unsigned NOT NULL COMMENT 'こぶし',
  `sob` tinyint(3) unsigned NOT NULL COMMENT 'しゃくり',
  `fall` tinyint(3) unsigned NOT NULL COMMENT 'フォール',
  `timing` tinyint(3) unsigned NOT NULL COMMENT 'タメ・走り',
  `longTone` tinyint(3) unsigned NOT NULL COMMENT 'ロングトーンのうまさ',
  `vibrato` tinyint(3) unsigned NOT NULL COMMENT 'ビブラートのうまさ',
  `vibratoType` tinyint(3) unsigned NOT NULL COMMENT 'ビブラートタイプ',
  `vibratoSumSeconds` float unsigned NOT NULL COMMENT 'ビブラート合計秒数',
  `averageTotalPoint` float unsigned NOT NULL COMMENT '全国平均の総合点',
  `averagePitch` tinyint(3) unsigned NOT NULL,
  `averageStability` tinyint(3) unsigned NOT NULL,
  `averageExpressiveness` tinyint(3) unsigned NOT NULL,
  `averageVibratoLongtone` tinyint(3) unsigned NOT NULL,
  `averageRhythm` tinyint(3) unsigned NOT NULL,
  `lastPoint` float unsigned NOT NULL COMMENT '前回の総合点',
  `date` datetime NOT NULL,
  `totalPoint` float unsigned NOT NULL,
  `is_include` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1:集計に含める,0:集計に含めない',
  PRIMARY KEY (`raw_data_id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2636 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-06 14:58:01

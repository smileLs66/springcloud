/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.7.27 : Database - lcn
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`lcn` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `lcn`;

/*Table structure for table `tb_order` */

DROP TABLE IF EXISTS `tb_order`;

CREATE TABLE `tb_order` (
  `order_id` int(11) DEFAULT NULL COMMENT '订单id',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态：1、未发货，2、已发货，3,配送中，4、已签收',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modify_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  UNIQUE KEY `order_id` (`order_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `tb_order` */

insert  into `tb_order`(`order_id`,`status`,`create_time`,`modify_time`) values (NULL,1,NULL,NULL),(NULL,1,NULL,NULL),(NULL,1,NULL,NULL);

/*Table structure for table `tb_pay` */

DROP TABLE IF EXISTS `tb_pay`;

CREATE TABLE `tb_pay` (
  `pay_id` int(11) DEFAULT NULL COMMENT '付款id',
  `order_id` int(11) DEFAULT NULL COMMENT '订单id',
  `payment` bigint(50) DEFAULT NULL COMMENT '实付金额',
  `payment_type` int(2) DEFAULT NULL COMMENT '支付类型，1、在线支付，2、货到付款',
  `post_fee` bigint(50) DEFAULT NULL COMMENT '邮费',
  `status` int(10) DEFAULT NULL COMMENT '状态：1、未付款，2、已付款',
  `payment_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  UNIQUE KEY `pay_id` (`pay_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `tb_pay` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

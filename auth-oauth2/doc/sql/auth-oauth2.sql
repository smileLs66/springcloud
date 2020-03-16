/*
SQLyog ‰ºÅ‰∏öÁâà - MySQL GUI v8.14 
MySQL - 5.7.27 : Database - auth-oauth2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`auth-oauth2` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `auth-oauth2`;

/*Table structure for table `clientdetails` */

DROP TABLE IF EXISTS `clientdetails`;

CREATE TABLE `clientdetails` (
  `appId` varchar(128) NOT NULL,
  `resourceIds` varchar(256) DEFAULT NULL,
  `appSecret` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `grantTypes` varchar(256) DEFAULT NULL,
  `redirectUrl` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additionalInformation` varchar(4096) DEFAULT NULL,
  `autoApproveScopes` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`appId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `clientdetails` */

/*Table structure for table `oauth_access_token` */

DROP TABLE IF EXISTS `oauth_access_token`;

CREATE TABLE `oauth_access_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication_id` varchar(128) NOT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL,
  `authentication` blob,
  `refresh_token` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `oauth_access_token` */

insert  into `oauth_access_token`(`token_id`,`token`,`authentication_id`,`user_name`,`client_id`,`authentication`,`refresh_token`) values ('13e2d927394f861ae5268b31e5468013','¨Ì\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken≤û6$˙Œ\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.LinkedHashMap4¿N\\l¿˚\0Z\0accessOrderxr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0ippt\0userNamet\0admint\0userIdsr\0java.lang.Long;ã‰êÃè#ﬂ\0J\0valuexr\0java.lang.NumberÜ¨ïî‡ã\0\0xp\0\0\0\0\0\0\0%x\0sr\0java.util.DatehjÅKYt\0\0xpw\0\0noÆ¥xsr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/ﬂGcù–…∑\0L\0\nexpirationq\0~\0xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens·\ncT‘^\0L\0valueq\0~\0xpt\0$36f6d054-f947-40b8-ba69-ac0aa1fdab1esq\0~\0w\0\0oô¢≤xsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0ÄÀ^˜\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0allxt\0bearert\0$68f5deba-d72f-497d-8a18-a5790464b388','227ccfa0102c5cbefcc06a8b99bc12fa','admin','client','¨Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µÏé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0ÄÀ^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0˛\0L\0rolet\0Ljava/lang/String;xpt\0Systemsq\0~\0\rt\0\rSystemContentsq\0~\0\rt\0SystemContentDeletesq\0~\0\rt\0SystemContentInsertsq\0~\0\rt\0SystemContentUpdatesq\0~\0\rt\0SystemContentViewsq\0~\0\rt\0\nSystemUsersq\0~\0\rt\0SystemUserDeletesq\0~\0\rt\0SystemUserInsertsq\0~\0\rt\0SystemUserUpdatesq\0~\0\rt\0SystemUserViewxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0(xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0&L\0scopeq\0~\0(xpt\0clientsr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0&xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rresponse_typet\0codet\0codet\0Uo6Nw7t\0\ngrant_typet\0authorization_codet\0	client_idq\0~\0+xsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0allxsq\0~\0:w\0\0\0?@\0\0\0\0\0\0xsq\0~\0.?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0!https://blog.csdn.net/qq_40198004psq\0~\0:w\0\0\0?@\0\0\0\0\0t\0ls_resourcexsq\0~\0:w\0\0\0?@\0\0\0\0\0q\0~\01xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0˛\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0!q\0~\0#xq\0~\0Fsr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0˛\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0 B8427D2D00702201FB27B33C0AD928FFpsr\0%com.sz566.auth.vo.CustomUserPrincipal6ÑË>Bîv\0L\0tbUsert\0Lcom/sz566/auth/pojo/TbUser;xr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0˛\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~\0(L\0passwordq\0~\0L\0usernameq\0~\0xpsq\0~\07sr\0java.util.TreeSet›òPìïÌá[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0˛\0\0xpw\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0!q\0~\0#xpt\0adminsr\0\Zcom.sz566.auth.pojo.TbUsern%åª#©\0	L\0\ncreateTimet\0Ljava/util/Date;L\0emailq\0~\0L\0idt\0Ljava/lang/Long;L\0ipq\0~\0L\0\nmodifyTimeq\0~\0VL\0passwordq\0~\0L\0phoneq\0~\0L\0statet\0Ljava/lang/Integer;L\0usernameq\0~\0xpsr\0java.util.DatehjÅKYt\0\0xpw\0\0nXn=Pxt\01223.@qq.comsr\0java.lang.Long;ã‰êÃè#ﬂ\0J\0valuexr\0java.lang.NumberÜ¨ïî‡ã\0\0xp\0\0\0\0\0\0\0%psq\0~\0Zw\0\0nXn=Pxt\0<$2a$10$9ZhDOBp.sRKat4l14ygu/.LscxrMUcDAfeVOEPiYwbcRkoB09gCmit\0\n1212221321sr\0java.lang.Integer‚†§˜Åá8\0I\0valuexq\0~\0^\0\0\0q\0~\0T','8e8caabcb5aaecdc17f79e67e3fb30c3'),('6d3f3790977276a2e86cfb520f393866','¨Ì\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken≤û6$˙Œ\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.LinkedHashMap4¿N\\l¿˚\0Z\0accessOrderxr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0ippt\0userNamet\0at\0userIdsr\0java.lang.Long;ã‰êÃè#ﬂ\0J\0valuexr\0java.lang.NumberÜ¨ïî‡ã\0\0xp\0\0\0\0\0\0\0&x\0sr\0java.util.DatehjÅKYt\0\0xpw\0\0noØ!xsr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/ﬂGcù–…∑\0L\0\nexpirationq\0~\0xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens·\ncT‘^\0L\0valueq\0~\0xpt\0$9e39449f-54de-47e1-a4be-79e0d27533b2sq\0~\0w\0\0oö∏!xsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0ÄÀ^˜\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0allxt\0bearert\0$11a5a1e8-7b75-4a80-8917-f75a65d88ebb','76b04b5872bc755a2e67f045eb3f7eea','a','client','¨Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µÏé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0ÄÀ^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0\0w\0\0\0\0xq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUrit\0Ljava/lang/String;L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0clientsr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rresponse_typet\0codet\0codet\05468ZQt\0\ngrant_typet\0authorization_codet\0	client_idq\0~\0xsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0allxsq\0~\0#w\0\0\0?@\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0!https://blog.csdn.net/qq_40198004psq\0~\0#w\0\0\0?@\0\0\0\0\0t\0ls_resourcexsq\0~\0#w\0\0\0?@\0\0\0\0\0q\0~\0\Zxsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0˛\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0\0w\0\0\0\0xq\0~\0/sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0˛\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0 562A14760A6ADA285691E3AF267EC508psr\0%com.sz566.auth.vo.CustomUserPrincipal6ÑË>Bîv\0L\0tbUsert\0Lcom/sz566/auth/pojo/TbUser;xr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0˛\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~\0L\0passwordq\0~\0L\0usernameq\0~\0xpsq\0~\0 sr\0java.util.TreeSet›òPìïÌá[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0˛\0\0xpw\0\0\0\0xpt\0asr\0\Zcom.sz566.auth.pojo.TbUsern%åª#©\0	L\0\ncreateTimet\0Ljava/util/Date;L\0emailq\0~\0L\0idt\0Ljava/lang/Long;L\0ipq\0~\0L\0\nmodifyTimeq\0~\0?L\0passwordq\0~\0L\0phoneq\0~\0L\0statet\0Ljava/lang/Integer;L\0usernameq\0~\0xpsr\0java.util.DatehjÅKYt\0\0xpw\0\0nl“ã¿xt\0121212sr\0java.lang.Long;ã‰êÃè#ﬂ\0J\0valuexr\0java.lang.NumberÜ¨ïî‡ã\0\0xp\0\0\0\0\0\0\0&psq\0~\0Cw\0\0nl“ã¿xt\0<$2a$10$9ZhDOBp.sRKat4l14ygu/.LscxrMUcDAfeVOEPiYwbcRkoB09gCmit\01212sr\0java.lang.Integer‚†§˜Åá8\0I\0valuexq\0~\0G\0\0\0q\0~\0=','ab17da59b506c1c6bd67565dc5324701');

/*Table structure for table `oauth_approvals` */

DROP TABLE IF EXISTS `oauth_approvals`;

CREATE TABLE `oauth_approvals` (
  `userId` varchar(256) DEFAULT NULL,
  `clientId` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `expiresAt` timestamp NULL DEFAULT NULL,
  `lastModifiedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `oauth_approvals` */

/*Table structure for table `oauth_client_details` */

DROP TABLE IF EXISTS `oauth_client_details`;

CREATE TABLE `oauth_client_details` (
  `client_id` varchar(256) NOT NULL COMMENT 'ÂÆ¢Êà∑Á´Ø IDÔºàclient IDÔºâ',
  `resource_ids` varchar(256) DEFAULT NULL COMMENT 'ËµÑÊ∫êID IDÔºàÂ§ö‰∏™Áî®,ÈöîÂºÄÔºâ',
  `client_secret` varchar(256) DEFAULT NULL COMMENT 'ÂÆ¢Êà∑Á´ØÂØÜÈí•Ôºàclient secretÔºâ',
  `scope` varchar(256) DEFAULT NULL COMMENT 'ÊéàÊùÉËåÉÂõ¥',
  `authorized_grant_types` varchar(256) DEFAULT NULL COMMENT 'ÊéàÊùÉÊéà‰∫àÁ±ªÂûãÔºàÂ§ö‰∏™Áî®,ÈöîÂºÄÔºâ',
  `web_server_redirect_uri` varchar(256) DEFAULT NULL COMMENT 'ÊúçÂä°Âô®ÈáçÂÆöÂêëuri',
  `authorities` varchar(256) DEFAULT NULL COMMENT 'ÂÆ¢Êà∑Á´ØÊâÄÊã•ÊúâÁöÑÊùÉÈôêÂÄº,ÂèØÈÄâ, Ëã•ÊúâÂ§ö‰∏™ÊùÉÈôêÂÄº,',
  `access_token_validity` int(11) DEFAULT NULL COMMENT 'access_tokenÁöÑÊúâÊïàÊó∂Èó¥ÂÄº(Âçï‰Ωç:Áßí)',
  `refresh_token_validity` int(11) DEFAULT NULL COMMENT 'refresh_tokenÁöÑÊúâÊïàÊó∂Èó¥ÂÄº(Âçï‰Ωç:Áßí),ÂèØÈÄâ',
  `additional_information` varchar(4096) DEFAULT NULL COMMENT '‰∏Ä‰∏™È¢ÑÁïôÁöÑÂ≠óÊÆµ,Âú®OauthÁöÑÊµÅÁ®ã‰∏≠Ê≤°ÊúâÂÆûÈôÖÁöÑ‰ΩøÁî®',
  `autoapprove` varchar(256) DEFAULT NULL COMMENT 'ËÆæÁΩÆÁî®Êà∑ÊòØÂê¶Ëá™Âä®ApprovalÊìç‰Ωú, ÈªòËÆ§ÂÄº‰∏∫false, ÂèØÈÄâÂÄºÂåÖÊã¨ trueÔºåfalse ÔºåreadÔºåwrite',
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `oauth_client_details` */

insert  into `oauth_client_details`(`client_id`,`resource_ids`,`client_secret`,`scope`,`authorized_grant_types`,`web_server_redirect_uri`,`authorities`,`access_token_validity`,`refresh_token_validity`,`additional_information`,`autoapprove`) values ('client','ls_resource','$2a$10$bisUEFV8o51zzNOFKLXAYu4GoiM4fXIK3i8.CNnMUNfLCrnBqlEd.','all','password,authorization_code,refresh_token','https://blog.csdn.net/qq_40198004',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `oauth_client_details_en` */

DROP TABLE IF EXISTS `oauth_client_details_en`;

CREATE TABLE `oauth_client_details_en` (
  `client_id` varchar(256) NOT NULL,
  `resource_ids` varchar(256) DEFAULT NULL,
  `client_secret` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `authorized_grant_types` varchar(256) DEFAULT NULL,
  `web_server_redirect_uri` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  `autoapprove` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `oauth_client_details_en` */

insert  into `oauth_client_details_en`(`client_id`,`resource_ids`,`client_secret`,`scope`,`authorized_grant_types`,`web_server_redirect_uri`,`authorities`,`access_token_validity`,`refresh_token_validity`,`additional_information`,`autoapprove`) values ('client','ls_resource','$2a$10$bisUEFV8o51zzNOFKLXAYu4GoiM4fXIK3i8.CNnMUNfLCrnBqlEd.','all','authorization_code,refresh_token','https://blog.csdn.net/qq_40198004',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `oauth_client_token` */

DROP TABLE IF EXISTS `oauth_client_token`;

CREATE TABLE `oauth_client_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication_id` varchar(128) NOT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `oauth_client_token` */

/*Table structure for table `oauth_code` */

DROP TABLE IF EXISTS `oauth_code`;

CREATE TABLE `oauth_code` (
  `code` varchar(256) DEFAULT NULL,
  `authentication` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `oauth_code` */

/*Table structure for table `oauth_refresh_token` */

DROP TABLE IF EXISTS `oauth_refresh_token`;

CREATE TABLE `oauth_refresh_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `oauth_refresh_token` */

insert  into `oauth_refresh_token`(`token_id`,`token`,`authentication`) values ('794c6a1070fbbd0cd5a7db4fa4048aa5','¨Ì\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/ﬂGcù–…∑\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens·\ncT‘^\0L\0valuet\0Ljava/lang/String;xpt\0$b4c01d08-b72b-4bc6-9860-ad2ab3485087sr\0java.util.DatehjÅKYt\0\0xpw\0\0nÛ∏◊ßx','¨Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µÏé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0ÄÀ^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0˛\0L\0rolet\0Ljava/lang/String;xpt\0Systemsq\0~\0\rt\0\rSystemContentsq\0~\0\rt\0SystemContentDeletesq\0~\0\rt\0SystemContentInsertsq\0~\0\rt\0SystemContentUpdatesq\0~\0\rt\0SystemContentViewsq\0~\0\rt\0\nSystemUsersq\0~\0\rt\0SystemUserDeletesq\0~\0\rt\0SystemUserInsertsq\0~\0\rt\0SystemUserUpdatesq\0~\0\rt\0SystemUserViewxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0(xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0&L\0scopeq\0~\0(xpt\0clientsr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0&xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rresponse_typet\0codet\0codet\0K6S6eRt\0\ngrant_typet\0authorization_codet\0	client_idq\0~\0+xsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0allxsq\0~\0:w\0\0\0?@\0\0\0\0\0\0xsq\0~\0.?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0!https://blog.csdn.net/qq_40198004psq\0~\0:w\0\0\0?@\0\0\0\0\0t\0ls_resourcexsq\0~\0:w\0\0\0?@\0\0\0\0\0q\0~\01xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0˛\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0!q\0~\0#xq\0~\0Fsr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0˛\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0 996206FF37D39D92B4DE5EDC98676264psr\0%com.sz566.auth.vo.CustomUserPrincipal6ÑË>Bîv\0L\0tbUsert\0Lcom/sz566/auth/pojo/TbUser;xr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0˛\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~\0(L\0passwordq\0~\0L\0usernameq\0~\0xpsq\0~\07sr\0java.util.TreeSet›òPìïÌá[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0˛\0\0xpw\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0!q\0~\0#xpt\0adminsr\0\Zcom.sz566.auth.pojo.TbUsern%åª#©\0	L\0\ncreateTimet\0Ljava/util/Date;L\0emailq\0~\0L\0idt\0Ljava/lang/Long;L\0ipq\0~\0L\0\nmodifyTimeq\0~\0VL\0passwordq\0~\0L\0phoneq\0~\0L\0statet\0Ljava/lang/Integer;L\0usernameq\0~\0xpsr\0java.util.DatehjÅKYt\0\0xpw\0\0nXn=Pxt\01223.@qq.comsr\0java.lang.Long;ã‰êÃè#ﬂ\0J\0valuexr\0java.lang.NumberÜ¨ïî‡ã\0\0xp\0\0\0\0\0\0\0%psq\0~\0Zw\0\0nXn=Pxt\0<$2a$10$9ZhDOBp.sRKat4l14ygu/.LscxrMUcDAfeVOEPiYwbcRkoB09gCmit\0\n1212221321sr\0java.lang.Integer‚†§˜Åá8\0I\0valuexq\0~\0^\0\0\0q\0~\0T'),('76981027a83b342685ca6db990163cae','¨Ì\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/ﬂGcù–…∑\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens·\ncT‘^\0L\0valuet\0Ljava/lang/String;xpt\0$2b960d42-cd05-4ed3-9421-f2edb00f7a91sr\0java.util.DatehjÅKYt\0\0xpw\0\0og^Âx','¨Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µÏé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0ÄÀ^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0˛\0L\0rolet\0Ljava/lang/String;xpt\0Systemsq\0~\0\rt\0\rSystemContentsq\0~\0\rt\0SystemContentDeletesq\0~\0\rt\0SystemContentInsertsq\0~\0\rt\0SystemContentUpdatesq\0~\0\rt\0SystemContentViewsq\0~\0\rt\0\nSystemUsersq\0~\0\rt\0SystemUserDeletesq\0~\0\rt\0SystemUserInsertsq\0~\0\rt\0SystemUserUpdatesq\0~\0\rt\0SystemUserViewxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0(xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0&L\0scopeq\0~\0(xpt\0clientsr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0&xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rresponse_typet\0codet\0codet\05EPXaOt\0\ngrant_typet\0authorization_codet\0	client_idq\0~\0+xsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0allxsq\0~\0:w\0\0\0?@\0\0\0\0\0\0xsq\0~\0.?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0!https://blog.csdn.net/qq_40198004psq\0~\0:w\0\0\0?@\0\0\0\0\0t\0ls_resourcexsq\0~\0:w\0\0\0?@\0\0\0\0\0q\0~\01xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0˛\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0!q\0~\0#xq\0~\0Fsr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0˛\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0 1EC7FFD581B72CB936C233E879331874psr\0%com.sz566.auth.vo.CustomUserPrincipal6ÑË>Bîv\0L\0tbUsert\0Lcom/sz566/auth/pojo/TbUser;xr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0˛\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~\0(L\0passwordq\0~\0L\0usernameq\0~\0xpsq\0~\07sr\0java.util.TreeSet›òPìïÌá[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0˛\0\0xpw\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0!q\0~\0#xpt\0adminsr\0\Zcom.sz566.auth.pojo.TbUsern%åª#©\0	L\0\ncreateTimet\0Ljava/util/Date;L\0emailq\0~\0L\0idt\0Ljava/lang/Long;L\0ipq\0~\0L\0\nmodifyTimeq\0~\0VL\0passwordq\0~\0L\0phoneq\0~\0L\0statet\0Ljava/lang/Integer;L\0usernameq\0~\0xpsr\0java.util.DatehjÅKYt\0\0xpw\0\0nXn=Pxt\01223.@qq.comsr\0java.lang.Long;ã‰êÃè#ﬂ\0J\0valuexr\0java.lang.NumberÜ¨ïî‡ã\0\0xp\0\0\0\0\0\0\0%psq\0~\0Zw\0\0nXn=Pxt\0<$2a$10$9ZhDOBp.sRKat4l14ygu/.LscxrMUcDAfeVOEPiYwbcRkoB09gCmit\0\n1212221321sr\0java.lang.Integer‚†§˜Åá8\0I\0valuexq\0~\0^\0\0\0q\0~\0T'),('3a73f5b8b62d229e36919a112941405b','¨Ì\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/ﬂGcù–…∑\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens·\ncT‘^\0L\0valuet\0Ljava/lang/String;xpt\0$885be471-5f5b-4961-bcac-b69759a27b92sr\0java.util.DatehjÅKYt\0\0xpw\0\0oiM‰x','¨Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µÏé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0ÄÀ^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0\0w\0\0\0\0xq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUrit\0Ljava/lang/String;L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0clientsr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rresponse_typet\0codet\0codet\00WIU6pt\0\ngrant_typet\0authorization_codet\0	client_idq\0~\0xsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0allxsq\0~\0#w\0\0\0?@\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0!https://blog.csdn.net/qq_40198004psq\0~\0#w\0\0\0?@\0\0\0\0\0t\0ls_resourcexsq\0~\0#w\0\0\0?@\0\0\0\0\0q\0~\0\Zxsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0˛\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0\0w\0\0\0\0xq\0~\0/sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0˛\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0 E963C726DBD9C7590F8D1659B7E6F842psr\0%com.sz566.auth.vo.CustomUserPrincipal6ÑË>Bîv\0L\0tbUsert\0Lcom/sz566/auth/pojo/TbUser;xr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0˛\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~\0L\0passwordq\0~\0L\0usernameq\0~\0xpsq\0~\0 sr\0java.util.TreeSet›òPìïÌá[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0˛\0\0xpw\0\0\0\0xpt\0asr\0\Zcom.sz566.auth.pojo.TbUsern%åª#©\0	L\0\ncreateTimet\0Ljava/util/Date;L\0emailq\0~\0L\0idt\0Ljava/lang/Long;L\0ipq\0~\0L\0\nmodifyTimeq\0~\0?L\0passwordq\0~\0L\0phoneq\0~\0L\0statet\0Ljava/lang/Integer;L\0usernameq\0~\0xpsr\0java.util.DatehjÅKYt\0\0xpw\0\0nl“ã¿xt\0121212sr\0java.lang.Long;ã‰êÃè#ﬂ\0J\0valuexr\0java.lang.NumberÜ¨ïî‡ã\0\0xp\0\0\0\0\0\0\0&psq\0~\0Cw\0\0nl“ã¿xt\0<$2a$10$9ZhDOBp.sRKat4l14ygu/.LscxrMUcDAfeVOEPiYwbcRkoB09gCmit\01212sr\0java.lang.Integer‚†§˜Åá8\0I\0valuexq\0~\0G\0\0\0q\0~\0='),('8e8caabcb5aaecdc17f79e67e3fb30c3','¨Ì\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/ﬂGcù–…∑\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens·\ncT‘^\0L\0valuet\0Ljava/lang/String;xpt\0$36f6d054-f947-40b8-ba69-ac0aa1fdab1esr\0java.util.DatehjÅKYt\0\0xpw\0\0oô¢≤x','¨Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µÏé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0ÄÀ^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0˛\0L\0rolet\0Ljava/lang/String;xpt\0Systemsq\0~\0\rt\0\rSystemContentsq\0~\0\rt\0SystemContentDeletesq\0~\0\rt\0SystemContentInsertsq\0~\0\rt\0SystemContentUpdatesq\0~\0\rt\0SystemContentViewsq\0~\0\rt\0\nSystemUsersq\0~\0\rt\0SystemUserDeletesq\0~\0\rt\0SystemUserInsertsq\0~\0\rt\0SystemUserUpdatesq\0~\0\rt\0SystemUserViewxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0(xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0&L\0scopeq\0~\0(xpt\0clientsr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0&xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rresponse_typet\0codet\0codet\0Uo6Nw7t\0\ngrant_typet\0authorization_codet\0	client_idq\0~\0+xsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0allxsq\0~\0:w\0\0\0?@\0\0\0\0\0\0xsq\0~\0.?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0!https://blog.csdn.net/qq_40198004psq\0~\0:w\0\0\0?@\0\0\0\0\0t\0ls_resourcexsq\0~\0:w\0\0\0?@\0\0\0\0\0q\0~\01xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0˛\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0!q\0~\0#xq\0~\0Fsr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0˛\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0 B8427D2D00702201FB27B33C0AD928FFpsr\0%com.sz566.auth.vo.CustomUserPrincipal6ÑË>Bîv\0L\0tbUsert\0Lcom/sz566/auth/pojo/TbUser;xr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0˛\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~\0(L\0passwordq\0~\0L\0usernameq\0~\0xpsq\0~\07sr\0java.util.TreeSet›òPìïÌá[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0˛\0\0xpw\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0!q\0~\0#xpt\0adminsr\0\Zcom.sz566.auth.pojo.TbUsern%åª#©\0	L\0\ncreateTimet\0Ljava/util/Date;L\0emailq\0~\0L\0idt\0Ljava/lang/Long;L\0ipq\0~\0L\0\nmodifyTimeq\0~\0VL\0passwordq\0~\0L\0phoneq\0~\0L\0statet\0Ljava/lang/Integer;L\0usernameq\0~\0xpsr\0java.util.DatehjÅKYt\0\0xpw\0\0nXn=Pxt\01223.@qq.comsr\0java.lang.Long;ã‰êÃè#ﬂ\0J\0valuexr\0java.lang.NumberÜ¨ïî‡ã\0\0xp\0\0\0\0\0\0\0%psq\0~\0Zw\0\0nXn=Pxt\0<$2a$10$9ZhDOBp.sRKat4l14ygu/.LscxrMUcDAfeVOEPiYwbcRkoB09gCmit\0\n1212221321sr\0java.lang.Integer‚†§˜Åá8\0I\0valuexq\0~\0^\0\0\0q\0~\0T'),('ab17da59b506c1c6bd67565dc5324701','¨Ì\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/ﬂGcù–…∑\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens·\ncT‘^\0L\0valuet\0Ljava/lang/String;xpt\0$9e39449f-54de-47e1-a4be-79e0d27533b2sr\0java.util.DatehjÅKYt\0\0xpw\0\0oö∏!x','¨Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µÏé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0ÄÀ^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0\0w\0\0\0\0xq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUrit\0Ljava/lang/String;L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0clientsr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rresponse_typet\0codet\0codet\05468ZQt\0\ngrant_typet\0authorization_codet\0	client_idq\0~\0xsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0allxsq\0~\0#w\0\0\0?@\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0!https://blog.csdn.net/qq_40198004psq\0~\0#w\0\0\0?@\0\0\0\0\0t\0ls_resourcexsq\0~\0#w\0\0\0?@\0\0\0\0\0q\0~\0\Zxsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0˛\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0\0w\0\0\0\0xq\0~\0/sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0˛\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0 562A14760A6ADA285691E3AF267EC508psr\0%com.sz566.auth.vo.CustomUserPrincipal6ÑË>Bîv\0L\0tbUsert\0Lcom/sz566/auth/pojo/TbUser;xr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0˛\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~\0L\0passwordq\0~\0L\0usernameq\0~\0xpsq\0~\0 sr\0java.util.TreeSet›òPìïÌá[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0˛\0\0xpw\0\0\0\0xpt\0asr\0\Zcom.sz566.auth.pojo.TbUsern%åª#©\0	L\0\ncreateTimet\0Ljava/util/Date;L\0emailq\0~\0L\0idt\0Ljava/lang/Long;L\0ipq\0~\0L\0\nmodifyTimeq\0~\0?L\0passwordq\0~\0L\0phoneq\0~\0L\0statet\0Ljava/lang/Integer;L\0usernameq\0~\0xpsr\0java.util.DatehjÅKYt\0\0xpw\0\0nl“ã¿xt\0121212sr\0java.lang.Long;ã‰êÃè#ﬂ\0J\0valuexr\0java.lang.NumberÜ¨ïî‡ã\0\0xp\0\0\0\0\0\0\0&psq\0~\0Cw\0\0nl“ã¿xt\0<$2a$10$9ZhDOBp.sRKat4l14ygu/.LscxrMUcDAfeVOEPiYwbcRkoB09gCmit\01212sr\0java.lang.Integer‚†§˜Åá8\0I\0valuexq\0~\0G\0\0\0q\0~\0=');

/*Table structure for table `tb_item` */

DROP TABLE IF EXISTS `tb_item`;

CREATE TABLE `tb_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ÂïÜÂìÅidÔºåÂêåÊó∂‰πüÊòØÂïÜÂìÅÁºñÂè∑',
  `title` varchar(100) NOT NULL COMMENT 'ÂïÜÂìÅÊ†áÈ¢ò',
  `sell_point` varchar(500) DEFAULT NULL COMMENT 'ÂïÜÂìÅÂçñÁÇπ',
  `price` decimal(20,2) NOT NULL COMMENT 'ÂïÜÂìÅ‰ª∑Ê†ºÔºåÂçï‰Ωç‰∏∫ÔºöÂàÜ',
  `num` int(10) NOT NULL COMMENT 'Â∫ìÂ≠òÊï∞Èáè',
  `brand` varchar(255) DEFAULT NULL COMMENT 'ÂìÅÁâå',
  `barcode` varchar(30) DEFAULT NULL COMMENT 'ÂïÜÂìÅÊù°ÂΩ¢Á†Å',
  `image` varchar(500) DEFAULT NULL COMMENT 'ÂïÜÂìÅÂõæÁâá',
  `cid` bigint(10) NOT NULL COMMENT 'ÊâÄÂ±ûÁ±ªÁõÆÔºåÂè∂Â≠êÁ±ªÁõÆ',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'ÂïÜÂìÅÁä∂ÊÄÅÔºå1-Ê≠£Â∏∏Ôºå2-‰∏ãÊû∂Ôºå3-Âà†Èô§',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'ÂàõÂª∫Êó∂Èó¥',
  `updated` timestamp NULL DEFAULT NULL COMMENT 'Êõ¥Êñ∞Êó∂Èó¥',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `status` (`status`),
  KEY `updated` (`updated`),
  KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='ÂïÜÂìÅË°®';

/*Data for the table `tb_item` */

insert  into `tb_item`(`id`,`title`,`sell_point`,`price`,`num`,`brand`,`barcode`,`image`,`cid`,`status`,`created`,`updated`) values (1,'ËÅîÊÉ≥ÁîµËÑë','Ê∏Ö‰ªìÔºÅ‰ªÖÂåó‰∫¨ÔºåÊ≠¶Ê±â‰ªìÊúâË¥ßÔºÅ','5000.99',500,'ËÅîÊÉ≥',NULL,'http://image.jt.com/jd/4ef8861cf6854de9889f3db9b24dc371.jpg',5,1,'2015-03-08 21:33:18','2015-03-08 21:33:18'),(2,'‰∏âÊòüS8','‰∏ãÂçïÈÄÅ12000ÊØ´ÂÆâÁßªÂä®ÁîµÊ∫êÔºÅÂèå3.5Ëã±ÂØ∏È≠îÁÑïÁÇ´Â±èÔºå‰ª•ÈùûÂá°ËßÜÈáéÁ∫µËßÇÂ§©‰∏ãÊó∂Â±ÄÔºåÂ∞äÂ¥áÁøªÁõñËÆæËÆ°ÔºåÂº†Âºõ‰∏≠ÔºåÂ∞ΩÊòæ‰ªéÂÆπÊ∞îÂ∫¶ÔºÅ','5999.66',500,'‰∏âÊòü',NULL,'http://image.jt.com/images/1.jpg,http://image.jt.com/images/2.jpg,http://image.jt.com/images/3.jpg,http://image.jt.com/images/4.jpg,http://image.jt.com/images/5.jpg',3,1,'2015-03-08 21:27:54','2015-03-08 21:27:54'),(3,'‰∏âÊòüS10','‰∏ãÂçïÂç≥ÈÄÅ10400ÊØ´ÂÆâÁßªÂä®ÁîµÊ∫êÔºÅÂÜçËµ†ÊâãÊú∫È≠îÊ≥ïÁõíÔºÅ','7000.00',10,'‰∏âÊòü',NULL,'http://image.jt.com/jd/c1775819c7e44b1c903f27514e70b998.jpg',3,1,'2015-03-08 21:29:27','2015-03-08 21:29:27'),(4,'Âçé‰∏∫P20','ÁªèÂÖ∏ÂõûÈ°æÔºÅË∂ÖÂÄº‰ª∑Ê†ºÂÄºÂæóÊã•Êúâ„ÄÇ','3000.00',99,'Âçé‰∏∫',NULL,'http://image.jt.com/jd/089b79cbe19f454dab24cce65f2e9602.jpg',3,1,'2015-03-08 21:28:16','2015-03-08 21:28:16'),(5,'Âçé‰∏∫P20Pro','‰∏ãÂçïËµ†12000ÊØ´ÂÆâÁßªÂä®ÁîµÊ∫ê','36670.99',5000,'Âçé‰∏∫',NULL,'http://image.jt.com/jd/29e1b92dc7e146489ce46a2262479a0f.jpg',3,1,'2015-03-08 21:28:30','2015-03-08 21:28:30'),(6,'Âçé‰∏∫meat30','ÁªèÂÖ∏ÂõûÈ°æÔºÅË∂ÖÂÄºÁâπÊÉ†ÔºÅ','6000666.44',6,'Âçé‰∏∫',NULL,'http://image.jt.com/jd/5a45e88aeca046ec88d7b7ffbc47092a.jpg',3,1,'2015-03-08 21:28:44','2015-03-08 21:28:44'),(7,'Â∞èÁ±≥8','Ë¶ÅÂ•ΩÂ±èÔºåÈÄâÂ§èÊôÆÔºÅÊó•Êú¨ÂéüË£ÖÈù¢ÊùøÔºåÊô∫ËÉΩÁîµËßÜÔºåÈ´òÁîªË¥®È´òÈü≥Ë¥®ÔºÅ<a  target=\"blank\"  href=\"http://item.jd.com/1278686.html\">ËøòÊúâÂçáÁ∫ßÁâàÂÆâÂçìÊô∫ËÉΩÊñ∞Êú∫46DS52‰æõÊÇ®ÈÄâÊã©ÔºÅ</','2999.99',100,'Â∞èÁ±≥',NULL,'http://image.jt.com/jd/2e45ff47f2e7424cb6d95fb9f05151bd.jpg',3,1,'2015-03-08 21:27:39','2015-03-08 21:27:39'),(8,'ËãπÊûú11','4G ÊúÄËøëÊú∫','8999.99',999,'ËãπÊûú',NULL,'httpÔºö///tett',3,1,'2019-10-13 17:53:55','2019-10-13 17:53:58'),(18,'Â•îÈ©∞s400','ÂèåÊéíÊ∞î','666666.99',5,'Â•îÈ©∞',NULL,'https://www.mercedes-benz.com.cn/?smtid=570962679z32cmz2dt02z1pdz0z',6,1,'2019-10-13 21:08:37',NULL);

/*Table structure for table `tb_permission` */

DROP TABLE IF EXISTS `tb_permission`;

CREATE TABLE `tb_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT 'Áà∂ÊùÉÈôê',
  `name` varchar(64) NOT NULL COMMENT 'ÊùÉÈôêÂêçÁß∞',
  `enname` varchar(64) NOT NULL COMMENT 'ÊùÉÈôêËã±ÊñáÂêçÁß∞',
  `url` varchar(255) NOT NULL COMMENT 'ÊéàÊùÉË∑ØÂæÑ',
  `description` varchar(200) DEFAULT NULL COMMENT 'Â§áÊ≥®',
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='ÊùÉÈôêË°®';

/*Data for the table `tb_permission` */

insert  into `tb_permission`(`id`,`parent_id`,`name`,`enname`,`url`,`description`,`created`,`updated`) values (37,0,'Á≥ªÁªüÁÆ°ÁêÜ','System','',NULL,'2019-04-04 23:22:54','2019-04-04 23:22:56'),(38,37,'Áî®Êà∑ÁÆ°ÁêÜ','SystemUser','/users/',NULL,'2019-04-04 23:25:31','2019-04-04 23:25:33'),(39,38,'Êü•ÁúãÁî®Êà∑','SystemUserView','/users/view/**',NULL,'2019-04-04 15:30:30','2019-04-04 15:30:43'),(40,38,'Êñ∞Â¢ûÁî®Êà∑','SystemUserInsert','/users/insert/**',NULL,'2019-04-04 15:30:31','2019-04-04 15:30:44'),(41,38,'ÁºñËæëÁî®Êà∑','SystemUserUpdate','/users/update/**',NULL,'2019-04-04 15:30:32','2019-04-04 15:30:45'),(42,38,'Âà†Èô§Áî®Êà∑','SystemUserDelete','/users/delete/**',NULL,'2019-04-04 15:30:48','2019-04-04 15:30:45'),(44,37,'ÂÜÖÂÆπÁÆ°ÁêÜ','SystemContent','/contents',NULL,'2019-04-06 18:23:58','2019-04-06 18:24:00'),(45,44,'Êü•ÁúãÂÜÖÂÆπ','SystemContentView','/contents/view/**',NULL,'2019-04-06 23:49:39','2019-04-06 23:49:41'),(46,44,'Êñ∞Â¢ûÂÜÖÂÆπ','SystemContentInsert','/contents/insert/**',NULL,'2019-04-06 23:51:00','2019-04-06 23:51:02'),(47,44,'ÁºñËæëÂÜÖÂÆπ','SystemContentUpdate','/contents/update/**',NULL,'2019-04-06 23:51:04','2019-04-06 23:51:06'),(48,44,'Âà†Èô§ÂÜÖÂÆπ','SystemContentDelete','/contents/delete/**',NULL,'2019-04-06 23:51:08','2019-04-06 23:51:10');

/*Table structure for table `tb_role` */

DROP TABLE IF EXISTS `tb_role`;

CREATE TABLE `tb_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT 'Áà∂ËßíËâ≤',
  `name` varchar(64) NOT NULL COMMENT 'ËßíËâ≤ÂêçÁß∞',
  `enname` varchar(64) NOT NULL COMMENT 'ËßíËâ≤Ëã±ÊñáÂêçÁß∞',
  `description` varchar(200) DEFAULT NULL COMMENT 'Â§áÊ≥®',
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='ËßíËâ≤Ë°®';

/*Data for the table `tb_role` */

insert  into `tb_role`(`id`,`parent_id`,`name`,`enname`,`description`,`created`,`updated`) values (37,0,'Ë∂ÖÁ∫ßÁÆ°ÁêÜÂëò','admin',NULL,'2019-04-04 23:22:03','2019-04-04 23:22:05');

/*Table structure for table `tb_role_permission` */

DROP TABLE IF EXISTS `tb_role_permission`;

CREATE TABLE `tb_role_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NOT NULL COMMENT 'ËßíËâ≤ ID',
  `permission_id` bigint(20) NOT NULL COMMENT 'ÊùÉÈôê ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COMMENT='ËßíËâ≤ÊùÉÈôêË°®';

/*Data for the table `tb_role_permission` */

insert  into `tb_role_permission`(`id`,`role_id`,`permission_id`) values (37,37,37),(38,37,38),(39,37,39),(40,37,40),(41,37,41),(42,37,42),(43,37,44),(44,37,45),(45,37,46),(46,37,47),(47,37,48);

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `state` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1ÊúâÊïàÔºå0Êó†Êïà',
  `username` varchar(50) NOT NULL COMMENT 'Áî®Êà∑Âêç',
  `password` varchar(64) NOT NULL COMMENT 'ÂØÜÁ†ÅÔºåÂä†ÂØÜÂ≠òÂÇ®',
  `phone` varchar(20) DEFAULT NULL COMMENT 'Ê≥®ÂÜåÊâãÊú∫Âè∑',
  `email` varchar(50) DEFAULT NULL COMMENT 'Ê≥®ÂÜåÈÇÆÁÆ±',
  `ip` varchar(50) DEFAULT NULL COMMENT 'ipÂú∞ÂùÄ',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'ÂàõÂª∫Êó∂Èó¥',
  `modify_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '‰øÆÊîπÊó∂Èó¥',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE,
  UNIQUE KEY `phone` (`phone`) USING BTREE,
  UNIQUE KEY `email` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='Áî®Êà∑Ë°®';

/*Data for the table `tb_user` */

insert  into `tb_user`(`id`,`state`,`username`,`password`,`phone`,`email`,`ip`,`create_time`,`modify_time`) values (37,1,'admin','$2a$10$9ZhDOBp.sRKat4l14ygu/.LscxrMUcDAfeVOEPiYwbcRkoB09gCmi','1212221321','1223.@qq.com',NULL,'2019-11-11 11:07:30','2019-11-11 11:07:30'),(38,1,'a','$2a$10$9ZhDOBp.sRKat4l14ygu/.LscxrMUcDAfeVOEPiYwbcRkoB09gCmi','1212','121212',NULL,'2019-11-15 10:09:28','2019-11-15 10:09:28');

/*Table structure for table `tb_user_role` */

DROP TABLE IF EXISTS `tb_user_role`;

CREATE TABLE `tb_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT 'Áî®Êà∑ ID',
  `role_id` bigint(20) NOT NULL COMMENT 'ËßíËâ≤ ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='Áî®Êà∑ËßíËâ≤Ë°®';

/*Data for the table `tb_user_role` */

insert  into `tb_user_role`(`id`,`user_id`,`role_id`) values (37,37,37);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

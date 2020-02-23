/*
SQLyog 企业版 - MySQL GUI v8.14 
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

insert  into `oauth_access_token`(`token_id`,`token`,`authentication_id`,`user_name`,`client_id`,`authentication`,`refresh_token`) values ('13e2d927394f861ae5268b31e5468013','��\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken��6$��\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.LinkedHashMap4�N\\l��\0Z\0accessOrderxr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0ippt\0userNamet\0admint\0userIdsr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0%x\0sr\0java.util.Datehj�KYt\0\0xpw\0\0no��xsr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/�Gc��ɷ\0L\0\nexpirationq\0~\0xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens�\ncT�^\0L\0valueq\0~\0xpt\0$36f6d054-f947-40b8-ba69-ac0aa1fdab1esq\0~\0w\0\0o���xsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSet�l�Z��*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0allxt\0bearert\0$68f5deba-d72f-497d-8a18-a5790464b388','227ccfa0102c5cbefcc06a8b99bc12fa','admin','client','��\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication�@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList�%1��\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx����a�\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0�\0L\0rolet\0Ljava/lang/String;xpt\0Systemsq\0~\0\rt\0\rSystemContentsq\0~\0\rt\0SystemContentDeletesq\0~\0\rt\0SystemContentInsertsq\0~\0\rt\0SystemContentUpdatesq\0~\0\rt\0SystemContentViewsq\0~\0\rt\0\nSystemUsersq\0~\0\rt\0SystemUserDeletesq\0~\0\rt\0SystemUserInsertsq\0~\0\rt\0SystemUserUpdatesq\0~\0\rt\0SystemUserViewxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0(xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>�qi�\0L\0clientIdq\0~\0L\0requestParametersq\0~\0&L\0scopeq\0~\0(xpt\0clientsr\0%java.util.Collections$UnmodifiableMap��t�B\0L\0mq\0~\0&xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rresponse_typet\0codet\0codet\0Uo6Nw7t\0\ngrant_typet\0authorization_codet\0	client_idq\0~\0+xsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0	sr\0java.util.LinkedHashSet�l�Z��*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0allxsq\0~\0:w\0\0\0?@\0\0\0\0\0\0xsq\0~\0.?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0!https://blog.csdn.net/qq_40198004psq\0~\0:w\0\0\0?@\0\0\0\0\0t\0ls_resourcexsq\0~\0:w\0\0\0?@\0\0\0\0\0q\0~\01xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0�\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0!q\0~\0#xq\0~\0Fsr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0�\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0 B8427D2D00702201FB27B33C0AD928FFpsr\0%com.sz566.auth.vo.CustomUserPrincipal6��>B�v\0L\0tbUsert\0Lcom/sz566/auth/pojo/TbUser;xr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0�\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~\0(L\0passwordq\0~\0L\0usernameq\0~\0xpsq\0~\07sr\0java.util.TreeSetݘP���[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0�\0\0xpw\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0!q\0~\0#xpt\0adminsr\0\Zcom.sz566.auth.pojo.TbUsern%��#�\0	L\0\ncreateTimet\0Ljava/util/Date;L\0emailq\0~\0L\0idt\0Ljava/lang/Long;L\0ipq\0~\0L\0\nmodifyTimeq\0~\0VL\0passwordq\0~\0L\0phoneq\0~\0L\0statet\0Ljava/lang/Integer;L\0usernameq\0~\0xpsr\0java.util.Datehj�KYt\0\0xpw\0\0nXn=Pxt\01223.@qq.comsr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0%psq\0~\0Zw\0\0nXn=Pxt\0<$2a$10$9ZhDOBp.sRKat4l14ygu/.LscxrMUcDAfeVOEPiYwbcRkoB09gCmit\0\n1212221321sr\0java.lang.Integer⠤���8\0I\0valuexq\0~\0^\0\0\0q\0~\0T','8e8caabcb5aaecdc17f79e67e3fb30c3'),('6d3f3790977276a2e86cfb520f393866','��\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken��6$��\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.LinkedHashMap4�N\\l��\0Z\0accessOrderxr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0ippt\0userNamet\0at\0userIdsr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0&x\0sr\0java.util.Datehj�KYt\0\0xpw\0\0no�!xsr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/�Gc��ɷ\0L\0\nexpirationq\0~\0xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens�\ncT�^\0L\0valueq\0~\0xpt\0$9e39449f-54de-47e1-a4be-79e0d27533b2sq\0~\0w\0\0o��!xsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSet�l�Z��*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0allxt\0bearert\0$11a5a1e8-7b75-4a80-8917-f75a65d88ebb','76b04b5872bc755a2e67f045eb3f7eea','a','client','��\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication�@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList�%1��\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx����a�\0I\0sizexp\0\0\0\0w\0\0\0\0xq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUrit\0Ljava/lang/String;L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>�qi�\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0clientsr\0%java.util.Collections$UnmodifiableMap��t�B\0L\0mq\0~\0xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rresponse_typet\0codet\0codet\05468ZQt\0\ngrant_typet\0authorization_codet\0	client_idq\0~\0xsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0	sr\0java.util.LinkedHashSet�l�Z��*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0allxsq\0~\0#w\0\0\0?@\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0!https://blog.csdn.net/qq_40198004psq\0~\0#w\0\0\0?@\0\0\0\0\0t\0ls_resourcexsq\0~\0#w\0\0\0?@\0\0\0\0\0q\0~\0\Zxsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0�\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0\0w\0\0\0\0xq\0~\0/sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0�\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0 562A14760A6ADA285691E3AF267EC508psr\0%com.sz566.auth.vo.CustomUserPrincipal6��>B�v\0L\0tbUsert\0Lcom/sz566/auth/pojo/TbUser;xr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0�\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~\0L\0passwordq\0~\0L\0usernameq\0~\0xpsq\0~\0 sr\0java.util.TreeSetݘP���[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0�\0\0xpw\0\0\0\0xpt\0asr\0\Zcom.sz566.auth.pojo.TbUsern%��#�\0	L\0\ncreateTimet\0Ljava/util/Date;L\0emailq\0~\0L\0idt\0Ljava/lang/Long;L\0ipq\0~\0L\0\nmodifyTimeq\0~\0?L\0passwordq\0~\0L\0phoneq\0~\0L\0statet\0Ljava/lang/Integer;L\0usernameq\0~\0xpsr\0java.util.Datehj�KYt\0\0xpw\0\0nlҋ�xt\0121212sr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0&psq\0~\0Cw\0\0nlҋ�xt\0<$2a$10$9ZhDOBp.sRKat4l14ygu/.LscxrMUcDAfeVOEPiYwbcRkoB09gCmit\01212sr\0java.lang.Integer⠤���8\0I\0valuexq\0~\0G\0\0\0q\0~\0=','ab17da59b506c1c6bd67565dc5324701');

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
  `client_id` varchar(256) NOT NULL COMMENT '客户端 ID（client ID）',
  `resource_ids` varchar(256) DEFAULT NULL COMMENT '资源ID ID（多个用,隔开）',
  `client_secret` varchar(256) DEFAULT NULL COMMENT '客户端密钥（client secret）',
  `scope` varchar(256) DEFAULT NULL COMMENT '授权范围',
  `authorized_grant_types` varchar(256) DEFAULT NULL COMMENT '授权授予类型（多个用,隔开）',
  `web_server_redirect_uri` varchar(256) DEFAULT NULL COMMENT '服务器重定向uri',
  `authorities` varchar(256) DEFAULT NULL COMMENT '客户端所拥有的权限值,可选, 若有多个权限值,',
  `access_token_validity` int(11) DEFAULT NULL COMMENT 'access_token的有效时间值(单位:秒)',
  `refresh_token_validity` int(11) DEFAULT NULL COMMENT 'refresh_token的有效时间值(单位:秒),可选',
  `additional_information` varchar(4096) DEFAULT NULL COMMENT '一个预留的字段,在Oauth的流程中没有实际的使用',
  `autoapprove` varchar(256) DEFAULT NULL COMMENT '设置用户是否自动Approval操作, 默认值为false, 可选值包括 true，false ，read，write',
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

insert  into `oauth_refresh_token`(`token_id`,`token`,`authentication`) values ('794c6a1070fbbd0cd5a7db4fa4048aa5','��\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/�Gc��ɷ\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens�\ncT�^\0L\0valuet\0Ljava/lang/String;xpt\0$b4c01d08-b72b-4bc6-9860-ad2ab3485087sr\0java.util.Datehj�KYt\0\0xpw\0\0n�קx','��\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication�@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList�%1��\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx����a�\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0�\0L\0rolet\0Ljava/lang/String;xpt\0Systemsq\0~\0\rt\0\rSystemContentsq\0~\0\rt\0SystemContentDeletesq\0~\0\rt\0SystemContentInsertsq\0~\0\rt\0SystemContentUpdatesq\0~\0\rt\0SystemContentViewsq\0~\0\rt\0\nSystemUsersq\0~\0\rt\0SystemUserDeletesq\0~\0\rt\0SystemUserInsertsq\0~\0\rt\0SystemUserUpdatesq\0~\0\rt\0SystemUserViewxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0(xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>�qi�\0L\0clientIdq\0~\0L\0requestParametersq\0~\0&L\0scopeq\0~\0(xpt\0clientsr\0%java.util.Collections$UnmodifiableMap��t�B\0L\0mq\0~\0&xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rresponse_typet\0codet\0codet\0K6S6eRt\0\ngrant_typet\0authorization_codet\0	client_idq\0~\0+xsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0	sr\0java.util.LinkedHashSet�l�Z��*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0allxsq\0~\0:w\0\0\0?@\0\0\0\0\0\0xsq\0~\0.?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0!https://blog.csdn.net/qq_40198004psq\0~\0:w\0\0\0?@\0\0\0\0\0t\0ls_resourcexsq\0~\0:w\0\0\0?@\0\0\0\0\0q\0~\01xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0�\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0!q\0~\0#xq\0~\0Fsr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0�\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0 996206FF37D39D92B4DE5EDC98676264psr\0%com.sz566.auth.vo.CustomUserPrincipal6��>B�v\0L\0tbUsert\0Lcom/sz566/auth/pojo/TbUser;xr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0�\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~\0(L\0passwordq\0~\0L\0usernameq\0~\0xpsq\0~\07sr\0java.util.TreeSetݘP���[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0�\0\0xpw\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0!q\0~\0#xpt\0adminsr\0\Zcom.sz566.auth.pojo.TbUsern%��#�\0	L\0\ncreateTimet\0Ljava/util/Date;L\0emailq\0~\0L\0idt\0Ljava/lang/Long;L\0ipq\0~\0L\0\nmodifyTimeq\0~\0VL\0passwordq\0~\0L\0phoneq\0~\0L\0statet\0Ljava/lang/Integer;L\0usernameq\0~\0xpsr\0java.util.Datehj�KYt\0\0xpw\0\0nXn=Pxt\01223.@qq.comsr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0%psq\0~\0Zw\0\0nXn=Pxt\0<$2a$10$9ZhDOBp.sRKat4l14ygu/.LscxrMUcDAfeVOEPiYwbcRkoB09gCmit\0\n1212221321sr\0java.lang.Integer⠤���8\0I\0valuexq\0~\0^\0\0\0q\0~\0T'),('76981027a83b342685ca6db990163cae','��\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/�Gc��ɷ\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens�\ncT�^\0L\0valuet\0Ljava/lang/String;xpt\0$2b960d42-cd05-4ed3-9421-f2edb00f7a91sr\0java.util.Datehj�KYt\0\0xpw\0\0og^�x','��\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication�@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList�%1��\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx����a�\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0�\0L\0rolet\0Ljava/lang/String;xpt\0Systemsq\0~\0\rt\0\rSystemContentsq\0~\0\rt\0SystemContentDeletesq\0~\0\rt\0SystemContentInsertsq\0~\0\rt\0SystemContentUpdatesq\0~\0\rt\0SystemContentViewsq\0~\0\rt\0\nSystemUsersq\0~\0\rt\0SystemUserDeletesq\0~\0\rt\0SystemUserInsertsq\0~\0\rt\0SystemUserUpdatesq\0~\0\rt\0SystemUserViewxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0(xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>�qi�\0L\0clientIdq\0~\0L\0requestParametersq\0~\0&L\0scopeq\0~\0(xpt\0clientsr\0%java.util.Collections$UnmodifiableMap��t�B\0L\0mq\0~\0&xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rresponse_typet\0codet\0codet\05EPXaOt\0\ngrant_typet\0authorization_codet\0	client_idq\0~\0+xsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0	sr\0java.util.LinkedHashSet�l�Z��*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0allxsq\0~\0:w\0\0\0?@\0\0\0\0\0\0xsq\0~\0.?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0!https://blog.csdn.net/qq_40198004psq\0~\0:w\0\0\0?@\0\0\0\0\0t\0ls_resourcexsq\0~\0:w\0\0\0?@\0\0\0\0\0q\0~\01xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0�\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0!q\0~\0#xq\0~\0Fsr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0�\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0 1EC7FFD581B72CB936C233E879331874psr\0%com.sz566.auth.vo.CustomUserPrincipal6��>B�v\0L\0tbUsert\0Lcom/sz566/auth/pojo/TbUser;xr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0�\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~\0(L\0passwordq\0~\0L\0usernameq\0~\0xpsq\0~\07sr\0java.util.TreeSetݘP���[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0�\0\0xpw\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0!q\0~\0#xpt\0adminsr\0\Zcom.sz566.auth.pojo.TbUsern%��#�\0	L\0\ncreateTimet\0Ljava/util/Date;L\0emailq\0~\0L\0idt\0Ljava/lang/Long;L\0ipq\0~\0L\0\nmodifyTimeq\0~\0VL\0passwordq\0~\0L\0phoneq\0~\0L\0statet\0Ljava/lang/Integer;L\0usernameq\0~\0xpsr\0java.util.Datehj�KYt\0\0xpw\0\0nXn=Pxt\01223.@qq.comsr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0%psq\0~\0Zw\0\0nXn=Pxt\0<$2a$10$9ZhDOBp.sRKat4l14ygu/.LscxrMUcDAfeVOEPiYwbcRkoB09gCmit\0\n1212221321sr\0java.lang.Integer⠤���8\0I\0valuexq\0~\0^\0\0\0q\0~\0T'),('3a73f5b8b62d229e36919a112941405b','��\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/�Gc��ɷ\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens�\ncT�^\0L\0valuet\0Ljava/lang/String;xpt\0$885be471-5f5b-4961-bcac-b69759a27b92sr\0java.util.Datehj�KYt\0\0xpw\0\0oiM�x','��\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication�@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList�%1��\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx����a�\0I\0sizexp\0\0\0\0w\0\0\0\0xq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUrit\0Ljava/lang/String;L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>�qi�\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0clientsr\0%java.util.Collections$UnmodifiableMap��t�B\0L\0mq\0~\0xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rresponse_typet\0codet\0codet\00WIU6pt\0\ngrant_typet\0authorization_codet\0	client_idq\0~\0xsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0	sr\0java.util.LinkedHashSet�l�Z��*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0allxsq\0~\0#w\0\0\0?@\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0!https://blog.csdn.net/qq_40198004psq\0~\0#w\0\0\0?@\0\0\0\0\0t\0ls_resourcexsq\0~\0#w\0\0\0?@\0\0\0\0\0q\0~\0\Zxsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0�\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0\0w\0\0\0\0xq\0~\0/sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0�\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0 E963C726DBD9C7590F8D1659B7E6F842psr\0%com.sz566.auth.vo.CustomUserPrincipal6��>B�v\0L\0tbUsert\0Lcom/sz566/auth/pojo/TbUser;xr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0�\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~\0L\0passwordq\0~\0L\0usernameq\0~\0xpsq\0~\0 sr\0java.util.TreeSetݘP���[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0�\0\0xpw\0\0\0\0xpt\0asr\0\Zcom.sz566.auth.pojo.TbUsern%��#�\0	L\0\ncreateTimet\0Ljava/util/Date;L\0emailq\0~\0L\0idt\0Ljava/lang/Long;L\0ipq\0~\0L\0\nmodifyTimeq\0~\0?L\0passwordq\0~\0L\0phoneq\0~\0L\0statet\0Ljava/lang/Integer;L\0usernameq\0~\0xpsr\0java.util.Datehj�KYt\0\0xpw\0\0nlҋ�xt\0121212sr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0&psq\0~\0Cw\0\0nlҋ�xt\0<$2a$10$9ZhDOBp.sRKat4l14ygu/.LscxrMUcDAfeVOEPiYwbcRkoB09gCmit\01212sr\0java.lang.Integer⠤���8\0I\0valuexq\0~\0G\0\0\0q\0~\0='),('8e8caabcb5aaecdc17f79e67e3fb30c3','��\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/�Gc��ɷ\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens�\ncT�^\0L\0valuet\0Ljava/lang/String;xpt\0$36f6d054-f947-40b8-ba69-ac0aa1fdab1esr\0java.util.Datehj�KYt\0\0xpw\0\0o���x','��\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication�@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList�%1��\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx����a�\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0�\0L\0rolet\0Ljava/lang/String;xpt\0Systemsq\0~\0\rt\0\rSystemContentsq\0~\0\rt\0SystemContentDeletesq\0~\0\rt\0SystemContentInsertsq\0~\0\rt\0SystemContentUpdatesq\0~\0\rt\0SystemContentViewsq\0~\0\rt\0\nSystemUsersq\0~\0\rt\0SystemUserDeletesq\0~\0\rt\0SystemUserInsertsq\0~\0\rt\0SystemUserUpdatesq\0~\0\rt\0SystemUserViewxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0(xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>�qi�\0L\0clientIdq\0~\0L\0requestParametersq\0~\0&L\0scopeq\0~\0(xpt\0clientsr\0%java.util.Collections$UnmodifiableMap��t�B\0L\0mq\0~\0&xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rresponse_typet\0codet\0codet\0Uo6Nw7t\0\ngrant_typet\0authorization_codet\0	client_idq\0~\0+xsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0	sr\0java.util.LinkedHashSet�l�Z��*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0allxsq\0~\0:w\0\0\0?@\0\0\0\0\0\0xsq\0~\0.?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0!https://blog.csdn.net/qq_40198004psq\0~\0:w\0\0\0?@\0\0\0\0\0t\0ls_resourcexsq\0~\0:w\0\0\0?@\0\0\0\0\0q\0~\01xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0�\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0!q\0~\0#xq\0~\0Fsr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0�\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0 B8427D2D00702201FB27B33C0AD928FFpsr\0%com.sz566.auth.vo.CustomUserPrincipal6��>B�v\0L\0tbUsert\0Lcom/sz566/auth/pojo/TbUser;xr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0�\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~\0(L\0passwordq\0~\0L\0usernameq\0~\0xpsq\0~\07sr\0java.util.TreeSetݘP���[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0�\0\0xpw\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0!q\0~\0#xpt\0adminsr\0\Zcom.sz566.auth.pojo.TbUsern%��#�\0	L\0\ncreateTimet\0Ljava/util/Date;L\0emailq\0~\0L\0idt\0Ljava/lang/Long;L\0ipq\0~\0L\0\nmodifyTimeq\0~\0VL\0passwordq\0~\0L\0phoneq\0~\0L\0statet\0Ljava/lang/Integer;L\0usernameq\0~\0xpsr\0java.util.Datehj�KYt\0\0xpw\0\0nXn=Pxt\01223.@qq.comsr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0%psq\0~\0Zw\0\0nXn=Pxt\0<$2a$10$9ZhDOBp.sRKat4l14ygu/.LscxrMUcDAfeVOEPiYwbcRkoB09gCmit\0\n1212221321sr\0java.lang.Integer⠤���8\0I\0valuexq\0~\0^\0\0\0q\0~\0T'),('ab17da59b506c1c6bd67565dc5324701','��\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/�Gc��ɷ\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens�\ncT�^\0L\0valuet\0Ljava/lang/String;xpt\0$9e39449f-54de-47e1-a4be-79e0d27533b2sr\0java.util.Datehj�KYt\0\0xpw\0\0o��!x','��\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication�@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList�%1��\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx����a�\0I\0sizexp\0\0\0\0w\0\0\0\0xq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUrit\0Ljava/lang/String;L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>�qi�\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0clientsr\0%java.util.Collections$UnmodifiableMap��t�B\0L\0mq\0~\0xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rresponse_typet\0codet\0codet\05468ZQt\0\ngrant_typet\0authorization_codet\0	client_idq\0~\0xsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0	sr\0java.util.LinkedHashSet�l�Z��*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0allxsq\0~\0#w\0\0\0?@\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0!https://blog.csdn.net/qq_40198004psq\0~\0#w\0\0\0?@\0\0\0\0\0t\0ls_resourcexsq\0~\0#w\0\0\0?@\0\0\0\0\0q\0~\0\Zxsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0�\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0\0w\0\0\0\0xq\0~\0/sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0�\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0 562A14760A6ADA285691E3AF267EC508psr\0%com.sz566.auth.vo.CustomUserPrincipal6��>B�v\0L\0tbUsert\0Lcom/sz566/auth/pojo/TbUser;xr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0�\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~\0L\0passwordq\0~\0L\0usernameq\0~\0xpsq\0~\0 sr\0java.util.TreeSetݘP���[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0�\0\0xpw\0\0\0\0xpt\0asr\0\Zcom.sz566.auth.pojo.TbUsern%��#�\0	L\0\ncreateTimet\0Ljava/util/Date;L\0emailq\0~\0L\0idt\0Ljava/lang/Long;L\0ipq\0~\0L\0\nmodifyTimeq\0~\0?L\0passwordq\0~\0L\0phoneq\0~\0L\0statet\0Ljava/lang/Integer;L\0usernameq\0~\0xpsr\0java.util.Datehj�KYt\0\0xpw\0\0nlҋ�xt\0121212sr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0&psq\0~\0Cw\0\0nlҋ�xt\0<$2a$10$9ZhDOBp.sRKat4l14ygu/.LscxrMUcDAfeVOEPiYwbcRkoB09gCmit\01212sr\0java.lang.Integer⠤���8\0I\0valuexq\0~\0G\0\0\0q\0~\0=');

/*Table structure for table `tb_item` */

DROP TABLE IF EXISTS `tb_item`;

CREATE TABLE `tb_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '商品id，同时也是商品编号',
  `title` varchar(100) NOT NULL COMMENT '商品标题',
  `sell_point` varchar(500) DEFAULT NULL COMMENT '商品卖点',
  `price` decimal(20,2) NOT NULL COMMENT '商品价格，单位为：分',
  `num` int(10) NOT NULL COMMENT '库存数量',
  `brand` varchar(255) DEFAULT NULL COMMENT '品牌',
  `barcode` varchar(30) DEFAULT NULL COMMENT '商品条形码',
  `image` varchar(500) DEFAULT NULL COMMENT '商品图片',
  `cid` bigint(10) NOT NULL COMMENT '所属类目，叶子类目',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '商品状态，1-正常，2-下架，3-删除',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `status` (`status`),
  KEY `updated` (`updated`),
  KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='商品表';

/*Data for the table `tb_item` */

insert  into `tb_item`(`id`,`title`,`sell_point`,`price`,`num`,`brand`,`barcode`,`image`,`cid`,`status`,`created`,`updated`) values (1,'联想电脑','清仓！仅北京，武汉仓有货！','5000.99',500,'联想',NULL,'http://image.jt.com/jd/4ef8861cf6854de9889f3db9b24dc371.jpg',5,1,'2015-03-08 21:33:18','2015-03-08 21:33:18'),(2,'三星S8','下单送12000毫安移动电源！双3.5英寸魔焕炫屏，以非凡视野纵观天下时局，尊崇翻盖设计，张弛中，尽显从容气度！','5999.66',500,'三星',NULL,'http://image.jt.com/images/1.jpg,http://image.jt.com/images/2.jpg,http://image.jt.com/images/3.jpg,http://image.jt.com/images/4.jpg,http://image.jt.com/images/5.jpg',3,1,'2015-03-08 21:27:54','2015-03-08 21:27:54'),(3,'三星S10','下单即送10400毫安移动电源！再赠手机魔法盒！','7000.00',10,'三星',NULL,'http://image.jt.com/jd/c1775819c7e44b1c903f27514e70b998.jpg',3,1,'2015-03-08 21:29:27','2015-03-08 21:29:27'),(4,'华为P20','经典回顾！超值价格值得拥有。','3000.00',99,'华为',NULL,'http://image.jt.com/jd/089b79cbe19f454dab24cce65f2e9602.jpg',3,1,'2015-03-08 21:28:16','2015-03-08 21:28:16'),(5,'华为P20Pro','下单赠12000毫安移动电源','36670.99',5000,'华为',NULL,'http://image.jt.com/jd/29e1b92dc7e146489ce46a2262479a0f.jpg',3,1,'2015-03-08 21:28:30','2015-03-08 21:28:30'),(6,'华为meat30','经典回顾！超值特惠！','6000666.44',6,'华为',NULL,'http://image.jt.com/jd/5a45e88aeca046ec88d7b7ffbc47092a.jpg',3,1,'2015-03-08 21:28:44','2015-03-08 21:28:44'),(7,'小米8','要好屏，选夏普！日本原装面板，智能电视，高画质高音质！<a  target=\"blank\"  href=\"http://item.jd.com/1278686.html\">还有升级版安卓智能新机46DS52供您选择！</','2999.99',100,'小米',NULL,'http://image.jt.com/jd/2e45ff47f2e7424cb6d95fb9f05151bd.jpg',3,1,'2015-03-08 21:27:39','2015-03-08 21:27:39'),(8,'苹果11','4G 最近机','8999.99',999,'苹果',NULL,'http：///tett',3,1,'2019-10-13 17:53:55','2019-10-13 17:53:58'),(18,'奔驰s400','双排气','666666.99',5,'奔驰',NULL,'https://www.mercedes-benz.com.cn/?smtid=570962679z32cmz2dt02z1pdz0z',6,1,'2019-10-13 21:08:37',NULL);

/*Table structure for table `tb_permission` */

DROP TABLE IF EXISTS `tb_permission`;

CREATE TABLE `tb_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父权限',
  `name` varchar(64) NOT NULL COMMENT '权限名称',
  `enname` varchar(64) NOT NULL COMMENT '权限英文名称',
  `url` varchar(255) NOT NULL COMMENT '授权路径',
  `description` varchar(200) DEFAULT NULL COMMENT '备注',
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='权限表';

/*Data for the table `tb_permission` */

insert  into `tb_permission`(`id`,`parent_id`,`name`,`enname`,`url`,`description`,`created`,`updated`) values (37,0,'系统管理','System','',NULL,'2019-04-04 23:22:54','2019-04-04 23:22:56'),(38,37,'用户管理','SystemUser','/users/',NULL,'2019-04-04 23:25:31','2019-04-04 23:25:33'),(39,38,'查看用户','SystemUserView','/users/view/**',NULL,'2019-04-04 15:30:30','2019-04-04 15:30:43'),(40,38,'新增用户','SystemUserInsert','/users/insert/**',NULL,'2019-04-04 15:30:31','2019-04-04 15:30:44'),(41,38,'编辑用户','SystemUserUpdate','/users/update/**',NULL,'2019-04-04 15:30:32','2019-04-04 15:30:45'),(42,38,'删除用户','SystemUserDelete','/users/delete/**',NULL,'2019-04-04 15:30:48','2019-04-04 15:30:45'),(44,37,'内容管理','SystemContent','/contents',NULL,'2019-04-06 18:23:58','2019-04-06 18:24:00'),(45,44,'查看内容','SystemContentView','/contents/view/**',NULL,'2019-04-06 23:49:39','2019-04-06 23:49:41'),(46,44,'新增内容','SystemContentInsert','/contents/insert/**',NULL,'2019-04-06 23:51:00','2019-04-06 23:51:02'),(47,44,'编辑内容','SystemContentUpdate','/contents/update/**',NULL,'2019-04-06 23:51:04','2019-04-06 23:51:06'),(48,44,'删除内容','SystemContentDelete','/contents/delete/**',NULL,'2019-04-06 23:51:08','2019-04-06 23:51:10');

/*Table structure for table `tb_role` */

DROP TABLE IF EXISTS `tb_role`;

CREATE TABLE `tb_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父角色',
  `name` varchar(64) NOT NULL COMMENT '角色名称',
  `enname` varchar(64) NOT NULL COMMENT '角色英文名称',
  `description` varchar(200) DEFAULT NULL COMMENT '备注',
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='角色表';

/*Data for the table `tb_role` */

insert  into `tb_role`(`id`,`parent_id`,`name`,`enname`,`description`,`created`,`updated`) values (37,0,'超级管理员','admin',NULL,'2019-04-04 23:22:03','2019-04-04 23:22:05');

/*Table structure for table `tb_role_permission` */

DROP TABLE IF EXISTS `tb_role_permission`;

CREATE TABLE `tb_role_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NOT NULL COMMENT '角色 ID',
  `permission_id` bigint(20) NOT NULL COMMENT '权限 ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COMMENT='角色权限表';

/*Data for the table `tb_role_permission` */

insert  into `tb_role_permission`(`id`,`role_id`,`permission_id`) values (37,37,37),(38,37,38),(39,37,39),(40,37,40),(41,37,41),(42,37,42),(43,37,44),(44,37,45),(45,37,46),(46,37,47),(47,37,48);

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `state` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1有效，0无效',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(64) NOT NULL COMMENT '密码，加密存储',
  `phone` varchar(20) DEFAULT NULL COMMENT '注册手机号',
  `email` varchar(50) DEFAULT NULL COMMENT '注册邮箱',
  `ip` varchar(50) DEFAULT NULL COMMENT 'ip地址',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modify_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE,
  UNIQUE KEY `phone` (`phone`) USING BTREE,
  UNIQUE KEY `email` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `tb_user` */

insert  into `tb_user`(`id`,`state`,`username`,`password`,`phone`,`email`,`ip`,`create_time`,`modify_time`) values (37,1,'admin','$2a$10$9ZhDOBp.sRKat4l14ygu/.LscxrMUcDAfeVOEPiYwbcRkoB09gCmi','1212221321','1223.@qq.com',NULL,'2019-11-11 11:07:30','2019-11-11 11:07:30'),(38,1,'a','$2a$10$9ZhDOBp.sRKat4l14ygu/.LscxrMUcDAfeVOEPiYwbcRkoB09gCmi','1212','121212',NULL,'2019-11-15 10:09:28','2019-11-15 10:09:28');

/*Table structure for table `tb_user_role` */

DROP TABLE IF EXISTS `tb_user_role`;

CREATE TABLE `tb_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '用户 ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色 ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='用户角色表';

/*Data for the table `tb_user_role` */

insert  into `tb_user_role`(`id`,`user_id`,`role_id`) values (37,37,37);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

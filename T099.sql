/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t099`;
CREATE DATABASE IF NOT EXISTS `t099` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t099`;

DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `adminid` bigint DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619750664018 DEFAULT CHARSET=utf8mb3 COMMENT='在线客服';

DELETE FROM `chat`;
INSERT INTO `chat` (`id`, `addtime`, `userid`, `adminid`, `ask`, `reply`, `isreply`) VALUES
	(141, '2021-04-30 02:32:31', 1, 1, '提问1', '回复1', 1),
	(142, '2021-04-30 02:32:31', 2, 2, '提问2', '回复2', 2),
	(143, '2021-04-30 02:32:31', 3, 3, '提问3', '回复3', 3),
	(144, '2021-04-30 02:32:31', 4, 4, '提问4', '回复4', 4),
	(145, '2021-04-30 02:32:31', 5, 5, '提问5', '回复5', 5),
	(146, '2021-04-30 02:32:31', 6, 6, '提问6', '回复6', 6),
	(1619750435177, '2021-04-30 02:40:34', 1619750209173, NULL, '电饭锅电饭锅地方刚发的', NULL, 0),
	(1619750664017, '2021-04-30 02:44:23', 1619750209173, 1, NULL, '个地方工号规范化发给发给预约', NULL);

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springboot6alf1/upload/1619750309009.jpg'),
	(2, 'picture2', 'http://localhost:8080/springboot6alf1/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springboot6alf1/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `huiyuan`;
CREATE TABLE IF NOT EXISTS `huiyuan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619750220664 DEFAULT CHARSET=utf8mb3 COMMENT='会员';

DELETE FROM `huiyuan`;
INSERT INTO `huiyuan` (`id`, `addtime`, `zhanghao`, `mima`, `xingming`, `nianling`, `xingbie`, `shouji`, `shenfenzheng`, `zhaopian`) VALUES
	(22, '2021-04-30 02:32:31', '会员2', '123456', '姓名2', '年龄2', '男', '13823888882', '440300199202020002', 'http://localhost:8080/springboot6alf1/upload/huiyuan_zhaopian2.jpg'),
	(23, '2021-04-30 02:32:31', '会员3', '123456', '姓名3', '年龄3', '男', '13823888883', '440300199303030003', 'http://localhost:8080/springboot6alf1/upload/huiyuan_zhaopian3.jpg'),
	(24, '2021-04-30 02:32:31', '会员4', '123456', '姓名4', '年龄4', '男', '13823888884', '440300199404040004', 'http://localhost:8080/springboot6alf1/upload/huiyuan_zhaopian4.jpg'),
	(25, '2021-04-30 02:32:31', '会员5', '123456', '姓名5', '年龄5', '男', '13823888885', '440300199505050005', 'http://localhost:8080/springboot6alf1/upload/huiyuan_zhaopian5.jpg'),
	(26, '2021-04-30 02:32:31', '会员6', '123456', '姓名6', '年龄6', '男', '13823888886', '440300199606060006', 'http://localhost:8080/springboot6alf1/upload/huiyuan_zhaopian6.jpg'),
	(1619750220663, '2021-04-30 02:37:00', '22', '22', '电饭锅', '22', '女', '11122222222', '441421199001125847', 'http://localhost:8080/springboot6alf1/upload/1619750700641.jpg');

DROP TABLE IF EXISTS `huiyuanquxiao`;
CREATE TABLE IF NOT EXISTS `huiyuanquxiao` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `kefanghao` varchar(200) DEFAULT NULL COMMENT '客房号',
  `shifouquxiao` varchar(200) DEFAULT NULL COMMENT '是否取消',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `tianshu` int DEFAULT NULL COMMENT '天数',
  `zongjia` varchar(200) DEFAULT NULL COMMENT '总价',
  `quxiaoyuanyin` longtext COMMENT '取消原因',
  `quxiaoshijian` datetime DEFAULT NULL COMMENT '取消时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619750857712 DEFAULT CHARSET=utf8mb3 COMMENT='会员取消';

DELETE FROM `huiyuanquxiao`;
INSERT INTO `huiyuanquxiao` (`id`, `addtime`, `yuyuebianhao`, `kefanghao`, `shifouquxiao`, `jiage`, `tianshu`, `zongjia`, `quxiaoyuanyin`, `quxiaoshijian`, `zhanghao`, `xingming`, `shouji`, `shenfenzheng`, `sfsh`, `shhf`, `ispay`) VALUES
	(81, '2021-04-30 02:32:31', '预约编号1', '客房号1', '是', '价格1', 1, '总价1', '取消原因1', '2021-04-30 10:32:31', '账号1', '姓名1', '手机1', '身份证1', '是', '', '未支付'),
	(82, '2021-04-30 02:32:31', '预约编号2', '客房号2', '是', '价格2', 2, '总价2', '取消原因2', '2021-04-30 10:32:31', '账号2', '姓名2', '手机2', '身份证2', '是', '', '未支付'),
	(83, '2021-04-30 02:32:31', '预约编号3', '客房号3', '是', '价格3', 3, '总价3', '取消原因3', '2021-04-30 10:32:31', '账号3', '姓名3', '手机3', '身份证3', '是', '', '未支付'),
	(84, '2021-04-30 02:32:31', '预约编号4', '客房号4', '是', '价格4', 4, '总价4', '取消原因4', '2021-04-30 10:32:31', '账号4', '姓名4', '手机4', '身份证4', '是', '', '未支付'),
	(85, '2021-04-30 02:32:31', '预约编号5', '客房号5', '是', '价格5', 5, '总价5', '取消原因5', '2021-04-30 10:32:31', '账号5', '姓名5', '手机5', '身份证5', '是', '', '未支付'),
	(86, '2021-04-30 02:32:31', '预约编号6', '客房号6', '是', '价格6', 6, '总价6', '取消原因6', '2021-04-30 10:32:31', '账号6', '姓名6', '手机6', '身份证6', '是', '', '未支付'),
	(1619750857711, '2021-04-30 02:47:37', '202143010454285676861', '333', '是', '333', 11, '3663', '<p>士大夫士大夫</p>', '2021-04-30 10:45:51', '22', '电饭锅', '11122222222', '441421199001125847', '否', NULL, '未支付');

DROP TABLE IF EXISTS `huiyuanruzhu`;
CREATE TABLE IF NOT EXISTS `huiyuanruzhu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `kefanghao` varchar(200) DEFAULT NULL COMMENT '客房号',
  `kefangleixing` varchar(200) DEFAULT NULL COMMENT '客房类型',
  `suoshujiudian` varchar(200) DEFAULT NULL COMMENT '所属酒店',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `kefangzhuangtai` varchar(200) DEFAULT NULL COMMENT '客房状态',
  `ruzhuyajin` float DEFAULT NULL COMMENT '入住押金',
  `zhifufangshi` varchar(200) DEFAULT NULL COMMENT '支付方式',
  `ruzhushijian` datetime DEFAULT NULL COMMENT '入住时间',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619750893798 DEFAULT CHARSET=utf8mb3 COMMENT='会员入住';

DELETE FROM `huiyuanruzhu`;
INSERT INTO `huiyuanruzhu` (`id`, `addtime`, `dingdanbianhao`, `kefanghao`, `kefangleixing`, `suoshujiudian`, `zhanghao`, `xingming`, `shenfenzheng`, `shouji`, `kefangzhuangtai`, `ruzhuyajin`, `zhifufangshi`, `ruzhushijian`, `ispay`) VALUES
	(101, '2021-04-30 02:32:31', '订单编号1', '客房号1', '客房类型1', '所属酒店1', '账号1', '姓名1', '身份证1', '手机1', '已入住', 1, '支付方式1', '2021-04-30 10:32:31', '未支付'),
	(102, '2021-04-30 02:32:31', '订单编号2', '客房号2', '客房类型2', '所属酒店2', '账号2', '姓名2', '身份证2', '手机2', '已入住', 2, '支付方式2', '2021-04-30 10:32:31', '未支付'),
	(103, '2021-04-30 02:32:31', '订单编号3', '客房号3', '客房类型3', '所属酒店3', '账号3', '姓名3', '身份证3', '手机3', '已入住', 3, '支付方式3', '2021-04-30 10:32:31', '未支付'),
	(104, '2021-04-30 02:32:31', '订单编号4', '客房号4', '客房类型4', '所属酒店4', '账号4', '姓名4', '身份证4', '手机4', '已入住', 4, '支付方式4', '2021-04-30 10:32:31', '未支付'),
	(105, '2021-04-30 02:32:31', '订单编号5', '客房号5', '客房类型5', '所属酒店5', '账号5', '姓名5', '身份证5', '手机5', '已入住', 5, '支付方式5', '2021-04-30 10:32:31', '未支付'),
	(106, '2021-04-30 02:32:31', '订单编号6', '客房号6', '客房类型6', '所属酒店6', '账号6', '姓名6', '身份证6', '手机6', '已入住', 6, '支付方式6', '2021-04-30 10:32:31', '未支付'),
	(1619750893797, '2021-04-30 02:48:13', '1619750780237', '333', '士大夫收到', '士大夫都是广东省房给对方地方', '22', '电饭锅', '441421199001125847', '11122222222', '已入住', 444, '44发给房东', '2021-04-30 10:46:20', '未支付');

DROP TABLE IF EXISTS `huiyuantuifang`;
CREATE TABLE IF NOT EXISTS `huiyuantuifang` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `kefanghao` varchar(200) DEFAULT NULL COMMENT '客房号',
  `kefangleixing` varchar(200) DEFAULT NULL COMMENT '客房类型',
  `suoshujiudian` varchar(200) DEFAULT NULL COMMENT '所属酒店',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `ruzhuyajin` varchar(200) DEFAULT NULL COMMENT '入住押金',
  `tuifangshijian` datetime DEFAULT NULL COMMENT '退房时间',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619750898361 DEFAULT CHARSET=utf8mb3 COMMENT='会员退房';

DELETE FROM `huiyuantuifang`;
INSERT INTO `huiyuantuifang` (`id`, `addtime`, `dingdanbianhao`, `kefanghao`, `kefangleixing`, `suoshujiudian`, `zhanghao`, `xingming`, `shenfenzheng`, `shouji`, `ruzhuyajin`, `tuifangshijian`, `ispay`) VALUES
	(121, '2021-04-30 02:32:31', '订单编号1', '客房号1', '客房类型1', '所属酒店1', '账号1', '姓名1', '身份证1', '手机1', '入住押金1', '2021-04-30 10:32:31', '未支付'),
	(122, '2021-04-30 02:32:31', '订单编号2', '客房号2', '客房类型2', '所属酒店2', '账号2', '姓名2', '身份证2', '手机2', '入住押金2', '2021-04-30 10:32:31', '未支付'),
	(123, '2021-04-30 02:32:31', '订单编号3', '客房号3', '客房类型3', '所属酒店3', '账号3', '姓名3', '身份证3', '手机3', '入住押金3', '2021-04-30 10:32:31', '未支付'),
	(124, '2021-04-30 02:32:31', '订单编号4', '客房号4', '客房类型4', '所属酒店4', '账号4', '姓名4', '身份证4', '手机4', '入住押金4', '2021-04-30 10:32:31', '未支付'),
	(125, '2021-04-30 02:32:31', '订单编号5', '客房号5', '客房类型5', '所属酒店5', '账号5', '姓名5', '身份证5', '手机5', '入住押金5', '2021-04-30 10:32:31', '未支付'),
	(126, '2021-04-30 02:32:31', '订单编号6', '客房号6', '客房类型6', '所属酒店6', '账号6', '姓名6', '身份证6', '手机6', '入住押金6', '2021-04-30 10:32:31', '未支付'),
	(1619750898360, '2021-04-30 02:48:18', '1619750780237', '333', '士大夫收到', '士大夫都是广东省房给对方地方', '22', '电饭锅', '441421199001125847', '11122222222', '444', '2021-04-30 10:46:34', '已支付');

DROP TABLE IF EXISTS `huiyuanyuyue`;
CREATE TABLE IF NOT EXISTS `huiyuanyuyue` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `kefanghao` varchar(200) DEFAULT NULL COMMENT '客房号',
  `ruzhushijian` datetime DEFAULT NULL COMMENT '入住时间',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `tianshu` int DEFAULT NULL COMMENT '天数',
  `zongjia` varchar(200) DEFAULT NULL COMMENT '总价',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuyuebianhao` (`yuyuebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619750848611 DEFAULT CHARSET=utf8mb3 COMMENT='会员预约';

DELETE FROM `huiyuanyuyue`;
INSERT INTO `huiyuanyuyue` (`id`, `addtime`, `yuyuebianhao`, `kefanghao`, `ruzhushijian`, `jiage`, `tianshu`, `zongjia`, `yuyueshijian`, `zhanghao`, `xingming`, `shouji`, `shenfenzheng`, `sfsh`, `shhf`, `ispay`) VALUES
	(61, '2021-04-30 02:32:31', '预约编号1', '客房号1', '2021-04-30 10:32:31', '价格1', 1, '总价1', '2021-04-30 10:32:31', '账号1', '姓名1', '手机1', '身份证1', '是', '', '未支付'),
	(62, '2021-04-30 02:32:31', '预约编号2', '客房号2', '2021-04-30 10:32:31', '价格2', 2, '总价2', '2021-04-30 10:32:31', '账号2', '姓名2', '手机2', '身份证2', '是', '', '未支付'),
	(63, '2021-04-30 02:32:31', '预约编号3', '客房号3', '2021-04-30 10:32:31', '价格3', 3, '总价3', '2021-04-30 10:32:31', '账号3', '姓名3', '手机3', '身份证3', '是', '', '未支付'),
	(64, '2021-04-30 02:32:31', '预约编号4', '客房号4', '2021-04-30 10:32:31', '价格4', 4, '总价4', '2021-04-30 10:32:31', '账号4', '姓名4', '手机4', '身份证4', '是', '', '未支付'),
	(65, '2021-04-30 02:32:31', '预约编号5', '客房号5', '2021-04-30 10:32:31', '价格5', 5, '总价5', '2021-04-30 10:32:31', '账号5', '姓名5', '手机5', '身份证5', '是', '', '未支付'),
	(66, '2021-04-30 02:32:31', '预约编号6', '客房号6', '2021-04-30 10:32:31', '价格6', 6, '总价6', '2021-04-30 10:32:31', '账号6', '姓名6', '手机6', '身份证6', '是', '', '未支付'),
	(1619750848610, '2021-04-30 02:47:27', '202143010454285676861', '333', '2021-04-30 10:45:43', '333', 11, '3663', '2021-04-30 10:45:43', '22', '电饭锅', '11122222222', '441421199001125847', '否', NULL, '未支付');

DROP TABLE IF EXISTS `kefangxinxi`;
CREATE TABLE IF NOT EXISTS `kefangxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kefanghao` varchar(200) NOT NULL COMMENT '客房号',
  `kefangleixing` varchar(200) DEFAULT NULL COMMENT '客房类型',
  `chuangxing` varchar(200) NOT NULL COMMENT '床型',
  `kefangtupian` varchar(200) DEFAULT NULL COMMENT '客房图片',
  `fangjianmianji` varchar(200) DEFAULT NULL COMMENT '房间面积',
  `jiage` int DEFAULT NULL COMMENT '价格',
  `kefangzhuangtai` varchar(200) DEFAULT NULL COMMENT '客房状态',
  `keyueshijian` varchar(200) DEFAULT NULL COMMENT '可约时间',
  `weishengqingkuang` varchar(200) DEFAULT NULL COMMENT '卫生情况',
  `kefanghuanjing` varchar(200) DEFAULT NULL COMMENT '客房环境',
  `suoshujiudian` varchar(200) DEFAULT NULL COMMENT '所属酒店',
  `kefangjieshao` longtext COMMENT '客房介绍',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619750290378 DEFAULT CHARSET=utf8mb3 COMMENT='客房信息';

DELETE FROM `kefangxinxi`;
INSERT INTO `kefangxinxi` (`id`, `addtime`, `kefanghao`, `kefangleixing`, `chuangxing`, `kefangtupian`, `fangjianmianji`, `jiage`, `kefangzhuangtai`, `keyueshijian`, `weishengqingkuang`, `kefanghuanjing`, `suoshujiudian`, `kefangjieshao`, `clicktime`, `clicknum`) VALUES
	(41, '2021-04-30 02:32:31', '客房号1', '客房类型1', '床型1', 'http://localhost:8080/springboot6alf1/upload/kefangxinxi_kefangtupian1.jpg', '房间面积1', 1, '已客满', '可约时间1', '待清扫', '客房环境1', '所属酒店1', '客房介绍1', '2021-04-30 10:32:31', 1),
	(42, '2021-04-30 02:32:31', '客房号2', '客房类型2', '床型2', 'http://localhost:8080/springboot6alf1/upload/kefangxinxi_kefangtupian2.jpg', '房间面积2', 2, '已客满', '可约时间2', '待清扫', '客房环境2', '所属酒店2', '客房介绍2', '2021-04-30 10:32:31', 2),
	(43, '2021-04-30 02:32:31', '客房号3', '客房类型3', '床型3', 'http://localhost:8080/springboot6alf1/upload/kefangxinxi_kefangtupian3.jpg', '房间面积3', 3, '已客满', '可约时间3', '待清扫', '客房环境3', '所属酒店3', '客房介绍3', '2024-02-15 12:02:33', 9),
	(44, '2021-04-30 02:32:31', '客房号4', '客房类型4', '床型4', 'http://localhost:8080/springboot6alf1/upload/kefangxinxi_kefangtupian4.jpg', '房间面积4', 4, '已客满', '可约时间4', '待清扫', '客房环境4', '所属酒店4', '客房介绍4', '2021-04-30 10:32:31', 4),
	(45, '2021-04-30 02:32:31', '客房号5', '客房类型5', '床型5', 'http://localhost:8080/springboot6alf1/upload/kefangxinxi_kefangtupian5.jpg', '房间面积5', 5, '已客满', '可约时间5', '待清扫', '客房环境5', '所属酒店5', '客房介绍5', '2021-04-30 10:32:31', 5),
	(46, '2021-04-30 02:32:31', '客房号6', '客房类型6', '床型6', 'http://localhost:8080/springboot6alf1/upload/kefangxinxi_kefangtupian6.jpg', '房间面积6', 6, '已客满', '可约时间6', '待清扫', '客房环境6', '所属酒店6', '客房介绍6', '2024-02-15 12:08:33', 8),
	(1619750290377, '2021-04-30 02:38:09', '333', '士大夫收到', '地方收到收到', 'http://localhost:8080/springboot6alf1/upload/1619750267730.jpg', '发给对方', 333, '空闲', '地方的给对方地方', '待清扫', '电饭锅地方电饭锅', '士大夫都是广东省房给对方地方', '<p>士大夫都是广东省房给对方地方士大夫都是广东省房给对方地方士大夫都是广东省房给对方地方士大夫都是广东省房给对方地方士大夫都是广东省房给对方地方士大夫都是广东省房给对方地方士大夫都是广东省房给对方地方士大夫都是广东省房给对方地方士大夫都是广东省房给对方地方士大夫都是广东省房给对方地方</p><p><img src="http://localhost:8080/springboot6alf1/upload/1619750283905.jpg"></p><p><br></p><p><img src="http://localhost:8080/springboot6alf1/upload/1619750286406.jpg"></p><p><br></p><p><img src="http://localhost:8080/springboot6alf1/upload/1619750289104.jpg"></p><p><br></p>', '2021-04-30 10:47:32', 11);

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1707970123490 DEFAULT CHARSET=utf8mb3 COMMENT='留言板';

DELETE FROM `messages`;
INSERT INTO `messages` (`id`, `addtime`, `userid`, `username`, `content`, `reply`) VALUES
	(171, '2021-04-30 02:32:31', 1, '用户名1', '留言内容1', '回复内容1'),
	(172, '2021-04-30 02:32:31', 2, '用户名2', '留言内容2', '回复内容2'),
	(173, '2021-04-30 02:32:31', 3, '用户名3', '留言内容3', '回复内容3'),
	(174, '2021-04-30 02:32:31', 4, '用户名4', '留言内容4', '回复内容4'),
	(175, '2021-04-30 02:32:31', 5, '用户名5', '留言内容5', '回复内容5'),
	(176, '2021-04-30 02:32:31', 6, '用户名6', '留言内容6', '回复内容6'),
	(1619750407296, '2021-04-30 02:40:07', 1619750209173, '11', '发给的广泛地地方给对方', ' 恢复供货发给很反感很反感'),
	(1707970123489, '2024-02-15 04:08:42', 11, '用户1', '111', NULL);

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619750325216 DEFAULT CHARSET=utf8mb3 COMMENT='酒店资讯';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `addtime`, `title`, `introduction`, `picture`, `content`) VALUES
	(161, '2021-04-30 02:32:31', '标题1', '简介1', 'http://localhost:8080/springboot6alf1/upload/news_picture1.jpg', '内容1'),
	(162, '2021-04-30 02:32:31', '标题2', '简介2', 'http://localhost:8080/springboot6alf1/upload/news_picture2.jpg', '内容2'),
	(163, '2021-04-30 02:32:31', '标题3', '简介3', 'http://localhost:8080/springboot6alf1/upload/news_picture3.jpg', '内容3'),
	(164, '2021-04-30 02:32:31', '标题4', '简介4', 'http://localhost:8080/springboot6alf1/upload/news_picture4.jpg', '内容4'),
	(165, '2021-04-30 02:32:31', '标题5', '简介5', 'http://localhost:8080/springboot6alf1/upload/news_picture5.jpg', '内容5'),
	(166, '2021-04-30 02:32:31', '标题6', '简介6', 'http://localhost:8080/springboot6alf1/upload/news_picture6.jpg', '内容6'),
	(1619750325215, '2021-04-30 02:38:44', '电饭锅地方地方', '个梵蒂冈电饭锅地方鬼地方个地方个梵蒂冈电饭锅地方鬼地方个地方个梵蒂冈电饭锅地方鬼地方个地方', 'http://localhost:8080/springboot6alf1/upload/1619750316221.png', '<p>个梵蒂冈电饭锅地方鬼地方个地方个梵蒂冈电饭锅地方鬼地方个地方个梵蒂冈电饭锅地方鬼地方个地方个梵蒂冈电饭锅地方鬼地方个地方个梵蒂冈电饭锅地方鬼地方个地方</p><p><img src="http://localhost:8080/springboot6alf1/upload/1619750323530.jpg"></p>');

DROP TABLE IF EXISTS `qingjierenyuan`;
CREATE TABLE IF NOT EXISTS `qingjierenyuan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qingjiezhanghao` varchar(200) NOT NULL COMMENT '清洁账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `qingjiexingming` varchar(200) DEFAULT NULL COMMENT '清洁姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qingjiezhanghao` (`qingjiezhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619750230548 DEFAULT CHARSET=utf8mb3 COMMENT='清洁人员';

DELETE FROM `qingjierenyuan`;
INSERT INTO `qingjierenyuan` (`id`, `addtime`, `qingjiezhanghao`, `mima`, `qingjiexingming`, `nianling`, `xingbie`, `shouji`, `zhaopian`) VALUES
	(31, '2021-04-30 02:32:31', '清洁人员1', '123456', '清洁姓名1', '年龄1', '男', '13823888881', 'http://localhost:8080/springboot6alf1/upload/qingjierenyuan_zhaopian1.jpg'),
	(32, '2021-04-30 02:32:31', '清洁人员2', '123456', '清洁姓名2', '年龄2', '男', '13823888882', 'http://localhost:8080/springboot6alf1/upload/qingjierenyuan_zhaopian2.jpg'),
	(33, '2021-04-30 02:32:31', '清洁人员3', '123456', '清洁姓名3', '年龄3', '男', '13823888883', 'http://localhost:8080/springboot6alf1/upload/qingjierenyuan_zhaopian3.jpg'),
	(34, '2021-04-30 02:32:31', '清洁人员4', '123456', '清洁姓名4', '年龄4', '男', '13823888884', 'http://localhost:8080/springboot6alf1/upload/qingjierenyuan_zhaopian4.jpg'),
	(35, '2021-04-30 02:32:31', '清洁人员5', '123456', '清洁姓名5', '年龄5', '男', '13823888885', 'http://localhost:8080/springboot6alf1/upload/qingjierenyuan_zhaopian5.jpg'),
	(36, '2021-04-30 02:32:31', '清洁人员6', '123456', '清洁姓名6', '年龄6', '男', '13823888886', 'http://localhost:8080/springboot6alf1/upload/qingjierenyuan_zhaopian6.jpg'),
	(1619750230547, '2021-04-30 02:37:10', '33', '33', '电饭锅', '33', '男', '11122233333', 'http://localhost:8080/springboot6alf1/upload/1619750962831.jpg');

DROP TABLE IF EXISTS `qingsaofangjian`;
CREATE TABLE IF NOT EXISTS `qingsaofangjian` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kefanghao` varchar(200) DEFAULT NULL COMMENT '客房号',
  `kefangleixing` varchar(200) DEFAULT NULL COMMENT '客房类型',
  `suoshujiudian` varchar(200) DEFAULT NULL COMMENT '所属酒店',
  `shifoudasao` varchar(200) DEFAULT NULL COMMENT '是否打扫',
  `dasaoshijian` datetime DEFAULT NULL COMMENT '打扫时间',
  `qingjiezhanghao` varchar(200) DEFAULT NULL COMMENT '清洁账号',
  `qingjiexingming` varchar(200) DEFAULT NULL COMMENT '清洁姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619750993208 DEFAULT CHARSET=utf8mb3 COMMENT='清扫房间';

DELETE FROM `qingsaofangjian`;
INSERT INTO `qingsaofangjian` (`id`, `addtime`, `kefanghao`, `kefangleixing`, `suoshujiudian`, `shifoudasao`, `dasaoshijian`, `qingjiezhanghao`, `qingjiexingming`) VALUES
	(131, '2021-04-30 02:32:31', '客房号1', '客房类型1', '所属酒店1', '是', '2021-04-30 10:32:31', '清洁账号1', '清洁姓名1'),
	(132, '2021-04-30 02:32:31', '客房号2', '客房类型2', '所属酒店2', '是', '2021-04-30 10:32:31', '清洁账号2', '清洁姓名2'),
	(133, '2021-04-30 02:32:31', '客房号3', '客房类型3', '所属酒店3', '是', '2021-04-30 10:32:31', '清洁账号3', '清洁姓名3'),
	(134, '2021-04-30 02:32:31', '客房号4', '客房类型4', '所属酒店4', '是', '2021-04-30 10:32:31', '清洁账号4', '清洁姓名4'),
	(135, '2021-04-30 02:32:31', '客房号5', '客房类型5', '所属酒店5', '是', '2021-04-30 10:32:31', '清洁账号5', '清洁姓名5'),
	(136, '2021-04-30 02:32:31', '客房号6', '客房类型6', '所属酒店6', '是', '2021-04-30 10:32:31', '清洁账号6', '清洁姓名6'),
	(1619750993207, '2021-04-30 02:49:53', '333', '士大夫收到', '士大夫都是广东省房给对方地方', '是', '2021-04-30 10:48:07', '33', '电饭锅');

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1707970115491 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;
INSERT INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`) VALUES
	(1619750426326, '2021-04-30 02:40:25', 1619750209173, 43, 'kefangxinxi', '客房号3', 'http://localhost:8080/springboot6alf1/upload/kefangxinxi_kefangtupian3.jpg'),
	(1707970115490, '2024-02-15 04:08:34', 11, 46, 'kefangxinxi', '客房号6', 'http://localhost:8080/springboot6alf1/upload/kefangxinxi_kefangtupian6.jpg');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'abo', 'users', '管理员', 'zicq4r2cb67qkioizuwdng9jk3l15i6o', '2021-04-30 02:37:17', '2024-02-15 05:06:15'),
	(2, 1619750209173, '11', 'yonghu', '用户', 'ufa6m9n15so0q2564uin9caubgmylr6t', '2021-04-30 02:38:52', '2021-04-30 03:44:33'),
	(3, 1619750220663, '22', 'huiyuan', '会员', 'npt69ornnij5slvsp26ua4er02h9ms9v', '2021-04-30 02:44:44', '2021-04-30 03:48:42'),
	(4, 1619750230547, '33', 'qingjierenyuan', '清洁人员', '0y01n9v7h70gsrhi9n6amo2keyd1f02h', '2021-04-30 02:49:17', '2021-04-30 03:49:18'),
	(5, 11, '用户1', 'yonghu', '用户', 'avgzlg9ux51y39wvxj0nbholwa2ud6rt', '2024-02-15 04:02:21', '2024-02-15 05:08:25'),
	(6, 23, '会员3', 'huiyuan', '会员', 'zgcgqwh7lj6bhenzpryppd3xx7iq18wo', '2024-02-15 04:07:59', '2024-02-15 05:08:00'),
	(7, 31, '清洁人员1', 'qingjierenyuan', '清洁人员', 'd1bq9gvmq71k5ksg1db7xu90600kusa2', '2024-02-15 04:08:14', '2024-02-15 05:08:15');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-04-30 02:32:31');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619750209174 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `zhanghao`, `mima`, `xingming`, `nianling`, `xingbie`, `shouji`, `shenfenzheng`, `zhaopian`) VALUES
	(11, '2021-04-30 02:32:31', '用户1', '123456', '姓名1', '年龄1', '男', '13823888881', '440300199101010001', 'http://localhost:8080/springboot6alf1/upload/yonghu_zhaopian1.jpg'),
	(12, '2021-04-30 02:32:31', '用户2', '123456', '姓名2', '年龄2', '男', '13823888882', '440300199202020002', 'http://localhost:8080/springboot6alf1/upload/yonghu_zhaopian2.jpg'),
	(13, '2021-04-30 02:32:31', '用户3', '123456', '姓名3', '年龄3', '男', '13823888883', '440300199303030003', 'http://localhost:8080/springboot6alf1/upload/yonghu_zhaopian3.jpg'),
	(14, '2021-04-30 02:32:31', '用户4', '123456', '姓名4', '年龄4', '男', '13823888884', '440300199404040004', 'http://localhost:8080/springboot6alf1/upload/yonghu_zhaopian4.jpg'),
	(15, '2021-04-30 02:32:31', '用户5', '123456', '姓名5', '年龄5', '男', '13823888885', '440300199505050005', 'http://localhost:8080/springboot6alf1/upload/yonghu_zhaopian5.jpg'),
	(16, '2021-04-30 02:32:31', '用户6', '123456', '姓名6', '年龄6', '男', '13823888886', '440300199606060006', 'http://localhost:8080/springboot6alf1/upload/yonghu_zhaopian6.jpg'),
	(1619750209173, '2021-04-30 02:36:49', '11', '11', '受访人', '11', '男', '11111111121', '441421199001125846', 'http://localhost:8080/springboot6alf1/upload/1619750338056.jpg');

DROP TABLE IF EXISTS `yonghuquxiao`;
CREATE TABLE IF NOT EXISTS `yonghuquxiao` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `kefanghao` varchar(200) DEFAULT NULL COMMENT '客房号',
  `shifouquxiao` varchar(200) DEFAULT NULL COMMENT '是否取消',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `tianshu` int DEFAULT NULL COMMENT '天数',
  `zongjia` varchar(200) DEFAULT NULL COMMENT '总价',
  `quxiaoyuanyin` longtext COMMENT '取消原因',
  `quxiaoshijian` datetime DEFAULT NULL COMMENT '取消时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619750482771 DEFAULT CHARSET=utf8mb3 COMMENT='用户取消';

DELETE FROM `yonghuquxiao`;
INSERT INTO `yonghuquxiao` (`id`, `addtime`, `yuyuebianhao`, `kefanghao`, `shifouquxiao`, `jiage`, `tianshu`, `zongjia`, `quxiaoyuanyin`, `quxiaoshijian`, `zhanghao`, `xingming`, `shouji`, `shenfenzheng`, `sfsh`, `shhf`, `ispay`) VALUES
	(71, '2021-04-30 02:32:31', '预约编号1', '客房号1', '是', '价格1', 1, '总价1', '取消原因1', '2021-04-30 10:32:31', '账号1', '姓名1', '手机1', '身份证1', '是', '', '未支付'),
	(72, '2021-04-30 02:32:31', '预约编号2', '客房号2', '是', '价格2', 2, '总价2', '取消原因2', '2021-04-30 10:32:31', '账号2', '姓名2', '手机2', '身份证2', '是', '', '未支付'),
	(73, '2021-04-30 02:32:31', '预约编号3', '客房号3', '是', '价格3', 3, '总价3', '取消原因3', '2021-04-30 10:32:31', '账号3', '姓名3', '手机3', '身份证3', '是', '', '未支付'),
	(74, '2021-04-30 02:32:31', '预约编号4', '客房号4', '是', '价格4', 4, '总价4', '取消原因4', '2021-04-30 10:32:31', '账号4', '姓名4', '手机4', '身份证4', '是', '', '未支付'),
	(75, '2021-04-30 02:32:31', '预约编号5', '客房号5', '是', '价格5', 5, '总价5', '取消原因5', '2021-04-30 10:32:31', '账号5', '姓名5', '手机5', '身份证5', '是', '', '未支付'),
	(76, '2021-04-30 02:32:31', '预约编号6', '客房号6', '是', '价格6', 6, '总价6', '取消原因6', '2021-04-30 10:32:31', '账号6', '姓名6', '手机6', '身份证6', '是', '', '未支付'),
	(1619750482770, '2021-04-30 02:41:22', '20214301038790860824', '333', '是', '333', 22, '7326', '<p>房东收费收到发送到方式否 房东收费收到发送到方式否 房东收费收到发送到方式否 房东收费收到发送到方式否 房东收费收到发送到方式否 房东收费收到发送到方式否 房东收费收到发送到方式否 </p>', '2021-04-30 20:41:29', '11', '受访人', '11111111121', '441421199001125846', '是', '111', '已支付');

DROP TABLE IF EXISTS `yonghuruzhu`;
CREATE TABLE IF NOT EXISTS `yonghuruzhu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `kefanghao` varchar(200) DEFAULT NULL COMMENT '客房号',
  `kefangleixing` varchar(200) DEFAULT NULL COMMENT '客房类型',
  `suoshujiudian` varchar(200) DEFAULT NULL COMMENT '所属酒店',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `kefangzhuangtai` varchar(200) DEFAULT NULL COMMENT '客房状态',
  `ruzhuyajin` float DEFAULT NULL COMMENT '入住押金',
  `zhifufangshi` varchar(200) DEFAULT NULL COMMENT '支付方式',
  `ruzhushijian` datetime DEFAULT NULL COMMENT '入住时间',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619750529757 DEFAULT CHARSET=utf8mb3 COMMENT='用户入住';

DELETE FROM `yonghuruzhu`;
INSERT INTO `yonghuruzhu` (`id`, `addtime`, `dingdanbianhao`, `kefanghao`, `kefangleixing`, `suoshujiudian`, `zhanghao`, `xingming`, `shenfenzheng`, `shouji`, `kefangzhuangtai`, `ruzhuyajin`, `zhifufangshi`, `ruzhushijian`, `ispay`) VALUES
	(91, '2021-04-30 02:32:31', '订单编号1', '客房号1', '客房类型1', '所属酒店1', '账号1', '姓名1', '身份证1', '手机1', '已入住', 1, '支付方式1', '2021-04-30 10:32:31', '未支付'),
	(92, '2021-04-30 02:32:31', '订单编号2', '客房号2', '客房类型2', '所属酒店2', '账号2', '姓名2', '身份证2', '手机2', '已入住', 2, '支付方式2', '2021-04-30 10:32:31', '未支付'),
	(93, '2021-04-30 02:32:31', '订单编号3', '客房号3', '客房类型3', '所属酒店3', '账号3', '姓名3', '身份证3', '手机3', '已入住', 3, '支付方式3', '2021-04-30 10:32:31', '未支付'),
	(94, '2021-04-30 02:32:31', '订单编号4', '客房号4', '客房类型4', '所属酒店4', '账号4', '姓名4', '身份证4', '手机4', '已入住', 4, '支付方式4', '2021-04-30 10:32:31', '未支付'),
	(95, '2021-04-30 02:32:31', '订单编号5', '客房号5', '客房类型5', '所属酒店5', '账号5', '姓名5', '身份证5', '手机5', '已入住', 5, '支付方式5', '2021-04-30 10:32:31', '未支付'),
	(96, '2021-04-30 02:32:31', '订单编号6', '客房号6', '客房类型6', '所属酒店6', '账号6', '姓名6', '身份证6', '手机6', '已入住', 6, '支付方式6', '2021-04-30 10:32:31', '未支付'),
	(1619750529756, '2021-04-30 02:42:09', '1619750415179', '333', '士大夫收到', '士大夫都是广东省房给对方地方', '11', '受访人', '441421199001125846', '11111111121', '已入住', 1111, '发双方各地方地方地方', '2021-04-30 10:40:15', '已支付');

DROP TABLE IF EXISTS `yonghutuifang`;
CREATE TABLE IF NOT EXISTS `yonghutuifang` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `kefanghao` varchar(200) DEFAULT NULL COMMENT '客房号',
  `kefangleixing` varchar(200) DEFAULT NULL COMMENT '客房类型',
  `suoshujiudian` varchar(200) DEFAULT NULL COMMENT '所属酒店',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `ruzhuyajin` varchar(200) DEFAULT NULL COMMENT '入住押金',
  `tuifangshijian` datetime DEFAULT NULL COMMENT '退房时间',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619750577288 DEFAULT CHARSET=utf8mb3 COMMENT='用户退房';

DELETE FROM `yonghutuifang`;
INSERT INTO `yonghutuifang` (`id`, `addtime`, `dingdanbianhao`, `kefanghao`, `kefangleixing`, `suoshujiudian`, `zhanghao`, `xingming`, `shenfenzheng`, `shouji`, `ruzhuyajin`, `tuifangshijian`, `ispay`) VALUES
	(111, '2021-04-30 02:32:31', '订单编号1', '客房号1', '客房类型1', '所属酒店1', '账号1', '姓名1', '身份证1', '手机1', '入住押金1', '2021-04-30 10:32:31', '未支付'),
	(112, '2021-04-30 02:32:31', '订单编号2', '客房号2', '客房类型2', '所属酒店2', '账号2', '姓名2', '身份证2', '手机2', '入住押金2', '2021-04-30 10:32:31', '未支付'),
	(113, '2021-04-30 02:32:31', '订单编号3', '客房号3', '客房类型3', '所属酒店3', '账号3', '姓名3', '身份证3', '手机3', '入住押金3', '2021-04-30 10:32:31', '未支付'),
	(114, '2021-04-30 02:32:31', '订单编号4', '客房号4', '客房类型4', '所属酒店4', '账号4', '姓名4', '身份证4', '手机4', '入住押金4', '2021-04-30 10:32:31', '未支付'),
	(115, '2021-04-30 02:32:31', '订单编号5', '客房号5', '客房类型5', '所属酒店5', '账号5', '姓名5', '身份证5', '手机5', '入住押金5', '2021-04-30 10:32:31', '未支付'),
	(116, '2021-04-30 02:32:31', '订单编号6', '客房号6', '客房类型6', '所属酒店6', '账号6', '姓名6', '身份证6', '手机6', '入住押金6', '2021-04-30 10:32:31', '未支付'),
	(1619750577287, '2021-04-30 02:42:56', '1619750415179', '333', '士大夫收到', '士大夫都是广东省房给对方地方', '11', '受访人', '441421199001125846', '11111111121', '1111', '2021-05-26 10:41:08', '已支付');

DROP TABLE IF EXISTS `yonghuyuyue`;
CREATE TABLE IF NOT EXISTS `yonghuyuyue` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `kefanghao` varchar(200) DEFAULT NULL COMMENT '客房号',
  `ruzhushijian` datetime DEFAULT NULL COMMENT '入住时间',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `tianshu` int DEFAULT NULL COMMENT '天数',
  `zongjia` varchar(200) DEFAULT NULL COMMENT '总价',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuyuebianhao` (`yuyuebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619750396715 DEFAULT CHARSET=utf8mb3 COMMENT='用户预约';

DELETE FROM `yonghuyuyue`;
INSERT INTO `yonghuyuyue` (`id`, `addtime`, `yuyuebianhao`, `kefanghao`, `ruzhushijian`, `jiage`, `tianshu`, `zongjia`, `yuyueshijian`, `zhanghao`, `xingming`, `shouji`, `shenfenzheng`, `sfsh`, `shhf`, `ispay`) VALUES
	(51, '2021-04-30 02:32:31', '预约编号1', '客房号1', '2021-04-30 10:32:31', '价格1', 1, '总价1', '2021-04-30 10:32:31', '账号1', '姓名1', '手机1', '身份证1', '是', '', '未支付'),
	(52, '2021-04-30 02:32:31', '预约编号2', '客房号2', '2021-04-30 10:32:31', '价格2', 2, '总价2', '2021-04-30 10:32:31', '账号2', '姓名2', '手机2', '身份证2', '是', '', '未支付'),
	(53, '2021-04-30 02:32:31', '预约编号3', '客房号3', '2021-04-30 10:32:31', '价格3', 3, '总价3', '2021-04-30 10:32:31', '账号3', '姓名3', '手机3', '身份证3', '是', '', '未支付'),
	(54, '2021-04-30 02:32:31', '预约编号4', '客房号4', '2021-04-30 10:32:31', '价格4', 4, '总价4', '2021-04-30 10:32:31', '账号4', '姓名4', '手机4', '身份证4', '是', '', '未支付'),
	(55, '2021-04-30 02:32:31', '预约编号5', '客房号5', '2021-04-30 10:32:31', '价格5', 5, '总价5', '2021-04-30 10:32:31', '账号5', '姓名5', '手机5', '身份证5', '是', '', '未支付'),
	(56, '2021-04-30 02:32:31', '预约编号6', '客房号6', '2021-04-30 10:32:31', '价格6', 6, '总价6', '2021-04-30 10:32:31', '账号6', '姓名6', '手机6', '身份证6', '是', '', '未支付'),
	(1619750396714, '2021-04-30 02:39:56', '20214301038790860824', '333', '2021-04-30 10:38:08', '333', 22, '7326', '2021-04-30 10:38:08', '11', '受访人', '11111111121', '441421199001125846', '是', '2222', '已支付');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

/*
 Navicat Premium Data Transfer

 Source Server         : car
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : car

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 13/03/2024 22:01:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `AdminId` bigint(20) NOT NULL COMMENT '管理员ID',
  `AdminName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员账号',
  `AdminPassWord` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员密码\r\n',
  `AdminUser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员姓名',
  PRIMARY KEY (`AdminId`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, '张增煊', '111', '111');

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name_ch` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `brand_name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `brand_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES (1, '奥迪', 'Audi', 'https://img.pqblog.com/i/2024/03/08/145046.png\r\n', 0);
INSERT INTO `brand` VALUES (2, '红旗', 'Hong Qi', 'https://img.pqblog.com/i/2024/03/08/145128.png', 1);
INSERT INTO `brand` VALUES (60, '比亚迪', 'Build Your Dreams', 'https://img.pqblog.com/i/2024/03/08/145242.png', 1);
INSERT INTO `brand` VALUES (61, '极狐', 'ARCFOX', 'https://img.pqblog.com/i/2024/03/08/145353.png', 1);
INSERT INTO `brand` VALUES (62, '阿维塔', 'AVATR', 'https://img.pqblog.com/i/2024/03/08/145422.png', 1);
INSERT INTO `brand` VALUES (63, '宝马', 'Bavarian Motor Work', 'https://img.pqblog.com/i/2024/03/08/145438.png', 0);
INSERT INTO `brand` VALUES (64, '北京现代', 'BEIJING-HYUNDAI AUTO', 'https://img.pqblog.com/i/2024/03/08/145500.png', 1);
INSERT INTO `brand` VALUES (65, '奔驰', 'Mercedes-Benz', 'https://img.pqblog.com/i/2024/03/08/145515.png', 0);
INSERT INTO `brand` VALUES (66, '本田', 'Honda', 'https://img.pqblog.com/i/2024/03/08/145547.png', 1);
INSERT INTO `brand` VALUES (67, '大众', 'Volkswagen', 'https://img.pqblog.com/i/2024/03/08/145606.png', 1);
INSERT INTO `brand` VALUES (68, '丰田', 'TOYOTA MOTOR CORPORATION JAPAN', 'https://img.pqblog.com/i/2024/03/08/145639.png', 1);
INSERT INTO `brand` VALUES (69, '福特', 'Ford', 'https://img.pqblog.com/i/2024/03/08/145747.png', 1);
INSERT INTO `brand` VALUES (70, '观致', 'Qoros', 'https://img.pqblog.com/i/2024/03/08/145814.png', 0);
INSERT INTO `brand` VALUES (71, '哈佛', 'HAVAL', 'https://img.pqblog.com/i/2024/03/08/145851.png', 1);
INSERT INTO `brand` VALUES (72, '海马', 'Haima', 'https://img.pqblog.com/i/2024/03/08/145916.png', 1);
INSERT INTO `brand` VALUES (73, '吉利', 'Gellyauto', 'https://img.pqblog.com/i/2024/03/08/145950.png', 1);
INSERT INTO `brand` VALUES (74, '凯迪拉克', 'Cadillac', 'https://img.pqblog.com/i/2024/03/08/150017.png', 1);
INSERT INTO `brand` VALUES (75, '雷克萨斯', 'Lexus', 'https://img.pqblog.com/i/2024/03/08/150140.png', 1);
INSERT INTO `brand` VALUES (76, '奇瑞', 'CHERY ', 'https://img.pqblog.com/i/2024/03/08/150203.png', 1);
INSERT INTO `brand` VALUES (77, '特斯拉', 'Tesla', 'https://img.pqblog.com/i/2024/03/08/150221.png', 0);
INSERT INTO `brand` VALUES (78, '沃尔沃', 'Volvo', 'https://img.pqblog.com/i/2024/03/08/150310.png', 1);
INSERT INTO `brand` VALUES (79, '雪佛兰', 'Chevrolet', 'https://img.pqblog.com/i/2024/03/08/150236.png', 1);
INSERT INTO `brand` VALUES (81, '长安', 'CHANA', 'https://img.pqblog.com/i/2024/03/08/150336.png', 1);
INSERT INTO `brand` VALUES (83, '五菱汽车', 'WuLing', 'https://img.pqblog.com/i/2024/03/08/150410.png', 1);
INSERT INTO `brand` VALUES (84, '长安欧尚', 'OSHAN', 'https://img.pqblog.com/i/2024/03/08/150422.png', 1);

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car`  (
  `CarId` bigint(255) NOT NULL AUTO_INCREMENT COMMENT '车辆ID',
  `CarModel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车辆型号',
  `CarLicense` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车牌号',
  `CarContent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车辆介绍',
  `CarColour` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆颜色',
  `CarPhoto` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车辆照片',
  `CarSecurityDeposit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车辆押金',
  `CarDayMoney` bigint(255) NULL DEFAULT NULL COMMENT '车辆日租金',
  `CarHoursMoney` bigint(255) NULL DEFAULT NULL COMMENT '车辆小时租金',
  `parking_id` int(255) NULL DEFAULT NULL,
  `energy` int(11) NULL DEFAULT NULL COMMENT '能源类型',
  `emass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电量',
  `omass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '油量',
  `km` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '续航',
  `CarStatus` int(255) NULL DEFAULT NULL COMMENT '车辆出租情况 0为待租 1为已租 2为维修中 ',
  `brand_id` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`CarId`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES (1, '红旗H9', '陕A00001', '红旗H9是中国一汽旗下的高端豪华品牌红旗推出的一款豪华轿车', '黑色', 'https://img.pqblog.com/i/2024/03/08/150812.png', '500', 214, 100, 51, 0, '48', '0', '453', 1, 71);
INSERT INTO `car` VALUES (2, '辉腾', '陕A69852', '辉腾', '黑色', 'https://img.pqblog.com/i/2024/03/08/150949.png', '500', 999, 100, 52, 1, '0', '72', '248', 0, 67);
INSERT INTO `car` VALUES (3, '红旗H9', '陕A00002', '红旗H9是中国一汽旗下的高端豪华品牌红旗推出的一款豪华轿车', '黑色', 'https://img.pqblog.com/i/2024/03/08/151016.png', '500', 999, 100, 51, 0, '57', '0', '358', 0, 71);
INSERT INTO `car` VALUES (4, '五菱星辰', '陕A66630', '五菱星辰', '绿色', 'https://img.pqblog.com/i/2024/03/08/151125.png', '500', 999, 100, 52, 1, '0', '35', '485', 1, 83);
INSERT INTO `car` VALUES (5, '长安CS75 PLUS', '陕UJ702D', '长安CS75 PLUS', '黑色', 'https://img.pqblog.com/i/2024/03/08/151221.png', '500', 999, 100, 52, 1, '0', '44', '457', 1, 81);
INSERT INTO `car` VALUES (6, '长安欧尚Z6', '陕UZX250', '长安欧尚Z6', '蓝色', 'https://img.pqblog.com/i/2024/03/08/151331.png', '500', 999, 100, 52, 1, '0', '87', '245', 1, 84);
INSERT INTO `car` VALUES (7, '比亚迪 秦PLUS', '陕U251K7', '比亚迪 秦PLUS', '白色', 'https://img.pqblog.com/i/2024/03/08/151530.png', '500', 999, 100, 52, 1, '0', '91', '216', 0, 60);
INSERT INTO `car` VALUES (8, '哈佛H6', '陕UC8602', '哈佛H6', '蓝色', 'https://img.pqblog.com/i/2024/03/08/151704.png', '500', 999, 100, 52, 1, '0', '27', '365', 0, 71);
INSERT INTO `car` VALUES (9, '长安欧尚Z6', '陕U88ASD', '长安欧尚Z6', '蓝色', 'https://img.pqblog.com/i/2024/03/08/151331.png', '500', 999, 100, 52, 1, '0', '54', '247', 0, 84);

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `CommentId` int(11) NOT NULL AUTO_INCREMENT,
  `text` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pub_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CarId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `UserName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`CommentId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES (25, '111', '2024-03-05 17:58:42', 2, 18, '111');
INSERT INTO `comments` VALUES (26, '可以', '2024-03-05 18:56:38', 2, 18, '111');
INSERT INTO `comments` VALUES (27, '牛逼', '2024-03-09 20:46:51', 2, 18, '111');
INSERT INTO `comments` VALUES (28, '666', '2024-03-12 21:29:29', 6, 18, '111');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `OrderId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `UserId` bigint(20) NULL DEFAULT NULL COMMENT '用户ID',
  `CarId` bigint(20) NULL DEFAULT NULL COMMENT '车辆ID',
  `PactId` bigint(20) NULL DEFAULT NULL COMMENT '合同ID',
  `OrderMoney` bigint(255) NULL DEFAULT NULL COMMENT '费用合计',
  `OutPicture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '取车照片',
  `InPicture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '还车照片',
  `OutTime` datetime(0) NULL DEFAULT NULL COMMENT '出租时间',
  `InTime` datetime(0) NULL DEFAULT NULL COMMENT '归还时间',
  `Mode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出租模式  0为时租 1为日租',
  `OrderStatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单状态 0为未完成 1为完成 ',
  PRIMARY KEY (`OrderId`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (1, 5, 1, 1, 1000, 'https://img.pqblog.com/i/2024/03/08/150812.png', 'https://img.pqblog.com/i/2024/03/08/150812.png', '2024-02-02 16:10:06', '2024-02-26 22:10:12', '1', '1');
INSERT INTO `order` VALUES (2, 5, 1, 1, 2000, 'https://img.pqblog.com/i/2024/03/08/150812.png', 'https://img.pqblog.com/i/2024/03/08/150812.png', '2024-02-02 21:34:48', '2024-02-26 22:10:12', '1', '1');
INSERT INTO `order` VALUES (3, 5, 1, 1, 500, 'https://img.pqblog.com/i/2024/03/08/150812.png', 'https://img.pqblog.com/i/2024/03/08/150812.png', '2024-02-02 21:35:16', '2024-02-26 22:10:12', '1', '1');
INSERT INTO `order` VALUES (4, 5, 2, 2, 600, 'https://img.pqblog.com/i/2024/03/08/150812.png', 'https://img.pqblog.com/i/2024/03/08/150812.png', '2024-02-02 21:37:15', '2024-03-09 13:34:54', '0', '0');
INSERT INTO `order` VALUES (5, 5, 1, 1, 888, 'https://img.pqblog.com/i/2024/03/08/150812.png', 'https://img.pqblog.com/i/2024/03/08/150812.png', '2024-02-02 21:40:41', '2024-02-14 22:10:17', '1', '1');
INSERT INTO `order` VALUES (6, 5, 1, 1, 777, 'https://img.pqblog.com/i/2024/03/08/150812.png', 'https://img.pqblog.com/i/2024/03/08/150812.png', '2024-02-02 21:42:22', '2024-03-09 13:35:04', '1', '1');
INSERT INTO `order` VALUES (7, 6, 2, 2, 666, 'https://img.pqblog.com/i/2024/03/08/150812.png', 'https://img.pqblog.com/i/2024/03/08/150812.png', '2024-02-20 22:10:21', '2024-03-09 13:35:17', '1', '1');
INSERT INTO `order` VALUES (8, 18, 2, 1, 555, 'https://img.pqblog.com/i/2024/03/08/150812.png', 'https://img.pqblog.com/i/2024/03/08/150812.png', '2024-03-05 14:16:23', '2024-02-26 22:10:12', '1', '1');
INSERT INTO `order` VALUES (9, 6, 2, 1, 444, 'https://img.pqblog.com/i/2024/03/08/150812.png', 'https://img.pqblog.com/i/2024/03/08/150812.png', '2024-02-26 22:10:25', '2024-03-09 13:35:29', '0', '0');
INSERT INTO `order` VALUES (10, 18, 2, 1, 333, 'https://img.pqblog.com/i/2024/03/08/150812.png', 'https://img.pqblog.com/i/2024/03/08/150812.png', '2024-02-26 22:10:12', '2024-03-09 13:35:39', '0', '1');
INSERT INTO `order` VALUES (11, 18, 2, 1, 332, 'https://img.pqblog.com/i/2024/03/08/150812.png', 'https://img.pqblog.com/i/2024/03/08/150812.png', '2024-02-26 22:10:12', '2024-03-09 13:35:46', '1', '1');
INSERT INTO `order` VALUES (17, 18, 2, NULL, 2472, 'https://img.pqblog.com/i/2024/03/08/150812.png', 'https://img.pqblog.com/i/2024/03/09/172247-0.png', '2024-03-09 00:39:39', '2024-03-09 17:22:53', '0', '1');
INSERT INTO `order` VALUES (18, 18, 6, NULL, 10054, 'https://img.pqblog.com/i/2024/03/08/150812.png', 'https://img.pqblog.com/i/2024/03/12/212842-0.png', '2024-03-09 00:55:59', '2024-03-12 21:28:46', '0', '1');
INSERT INTO `order` VALUES (19, 18, 6, NULL, 0, 'https://img.pqblog.com/i/2024/03/08/150812.png', 'https://img.pqblog.com/i/2024/03/08/150812.png', '2024-03-09 00:55:59', NULL, '0', '0');
INSERT INTO `order` VALUES (20, 18, 6, NULL, 0, 'https://img.pqblog.com/i/2024/03/08/150812.png', 'https://img.pqblog.com/i/2024/03/08/150812.png', '2024-03-09 00:55:59', NULL, '0', '0');
INSERT INTO `order` VALUES (21, 18, 6, NULL, 0, 'https://img.pqblog.com/i/2024/03/08/150812.png', 'https://img.pqblog.com/i/2024/03/08/150812.png', '2024-03-09 00:55:59', NULL, '0', '0');
INSERT INTO `order` VALUES (22, 18, 6, NULL, 0, 'https://img.pqblog.com/i/2024/03/08/150812.png', 'https://img.pqblog.com/i/2024/03/08/150812.png', '2024-03-09 00:55:59', NULL, '0', '0');
INSERT INTO `order` VALUES (23, 18, 6, NULL, 0, 'https://img.pqblog.com/i/2024/03/08/150812.png', 'https://img.pqblog.com/i/2024/03/08/150812.png', '2024-03-09 00:55:59', NULL, '0', '0');
INSERT INTO `order` VALUES (24, 18, 6, NULL, 0, 'https://img.pqblog.com/i/2024/03/08/150812.png', 'https://img.pqblog.com/i/2024/03/08/150812.png', '2024-03-09 00:55:59', NULL, '0', '0');
INSERT INTO `order` VALUES (25, 18, 6, NULL, 10049, 'https://img.pqblog.com/i/2024/03/08/150812.png', 'https://img.pqblog.com/i/2024/03/12/212509-0.png', '2024-03-09 00:55:59', '2024-03-12 21:25:12', '0', '1');
INSERT INTO `order` VALUES (26, 18, 6, NULL, 0, 'https://img.pqblog.com/i/2024/03/12/212434-0.png', 'https://img.pqblog.com/i/2024/03/12/222645-0.png', '2024-03-12 21:24:36', '2024-03-12 22:26:46', '1', '1');
INSERT INTO `order` VALUES (27, 18, 6, NULL, 0, 'https://img.pqblog.com/i/2024/03/12/212434-0.png', '', '2024-03-12 21:24:36', '2024-03-12 21:41:58', '1', '1');
INSERT INTO `order` VALUES (28, 18, 5, NULL, 800, 'https://img.pqblog.com/i/2024/03/12/214453-0.png', 'https://img.pqblog.com/i/2024/03/12/214509-0.png', '2024-03-12 21:44:54', '2024-03-12 21:45:12', '0', '1');
INSERT INTO `order` VALUES (29, 18, 1, NULL, 409, 'https://img.pqblog.com/i/2024/03/12/214848-0.png', 'https://img.pqblog.com/i/2024/03/12/214953-0.png', '2024-03-12 21:48:50', '2024-03-12 21:49:59', '0', '1');
INSERT INTO `order` VALUES (30, 18, 3, NULL, 802, 'https://img.pqblog.com/i/2024/03/12/221737-0.png', 'https://img.pqblog.com/i/2024/03/12/221904-0.png', '2024-03-12 22:17:39', '2024-03-12 22:19:09', '0', '1');
INSERT INTO `order` VALUES (31, 18, 6, NULL, 800, 'https://img.pqblog.com/i/2024/03/12/222949-0.png', 'https://img.pqblog.com/i/2024/03/12/223016-0.png', '2024-03-12 22:29:51', '2024-03-12 22:41:09', '0', '1');

-- ----------------------------
-- Table structure for pact
-- ----------------------------
DROP TABLE IF EXISTS `pact`;
CREATE TABLE `pact`  (
  `PactId` int(255) NOT NULL COMMENT '合同ID',
  `CarId` int(255) NULL DEFAULT NULL COMMENT '车辆ID',
  `UserId` int(255) NULL DEFAULT NULL COMMENT '用户ID',
  `PactMoney` bigint(255) NULL DEFAULT NULL COMMENT '保险费用',
  `OutTime` datetime(0) NULL DEFAULT NULL COMMENT '出租时间',
  `InTime` datetime(0) NULL DEFAULT NULL COMMENT '归还时间',
  `PactContent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保险内容',
  PRIMARY KEY (`PactId`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pact
-- ----------------------------
INSERT INTO `pact` VALUES (1, 2, 18, 500, '2024-03-05 18:37:19', '2024-03-05 18:37:24', '解放东路');

-- ----------------------------
-- Table structure for parking
-- ----------------------------
DROP TABLE IF EXISTS `parking`;
CREATE TABLE `parking`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parkingName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '停车场名称',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '详细地址',
  `type` int(11) NOT NULL COMMENT '室内/室外 0：室内 1：室外',
  `carsNumber` int(11) NOT NULL DEFAULT 0 COMMENT '可停放数量',
  `enable` tinyint(1) NOT NULL COMMENT '禁启用',
  `coord` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '经纬度',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of parking
-- ----------------------------
INSERT INTO `parking` VALUES (21, '楼观停车场', '陕西省西安市周至县楼观镇政府隔壁', 1, 7, 1, '108.300245,34.084055');
INSERT INTO `parking` VALUES (22, '首都停车场', '北京市海淀区东丈八路', 1, 6, 1, '116.405637,39.906917');
INSERT INTO `parking` VALUES (23, '小日本停车场', '小日本东京市区', 1, 13, 1, '139.794253,35.707603');
INSERT INTO `parking` VALUES (26, '南山停车场', '重庆第二师范学院南山校区', 1, 3, 1, '106.593706,29.498425');
INSERT INTO `parking` VALUES (44, '玄武停车场', '南京玄武区人民政府', 1, 7, 0, '118.797767,32.048673');
INSERT INTO `parking` VALUES (51, '豆村停车场', '陕西省西安市周至县中二路南四街与中一路交叉路口往东约250米', 0, 22, 1, '108.356593,34.136361');
INSERT INTO `parking` VALUES (52, '明德停车场', '陕西省西安市长安区西滦路南山庭院西360米', 1, 5, 1, '108.792002,34.051373');

-- ----------------------------
-- Table structure for phone
-- ----------------------------
DROP TABLE IF EXISTS `phone`;
CREATE TABLE `phone`  (
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户手机号',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '验证码'
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of phone
-- ----------------------------
INSERT INTO `phone` VALUES ('18509144920', '7654');

-- ----------------------------
-- Table structure for repair
-- ----------------------------
DROP TABLE IF EXISTS `repair`;
CREATE TABLE `repair`  (
  `RepairId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '维修ID',
  `CarId` bigint(20) NULL DEFAULT NULL COMMENT '车辆ID',
  `RepairReason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '故障原因',
  `PactId` bigint(255) NULL DEFAULT NULL COMMENT '保险合同ID',
  `RepairMoney` bigint(255) NULL DEFAULT NULL COMMENT '维修费用',
  `RepairStatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '维修状态',
  PRIMARY KEY (`RepairId`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of repair
-- ----------------------------
INSERT INTO `repair` VALUES (12, 8, '打不着火', NULL, 500, '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `UserId` bigint(255) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `Phone` bigint(255) NULL DEFAULT NULL COMMENT '用户手机号',
  `UserName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `PassWord` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  `IdCard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证',
  `DriverLicense` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '驾照',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '临时存储验证码',
  PRIMARY KEY (`UserId`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (5, 18509144921, '张增煊', '123456', '612522200207031996', '100000', '2668');
INSERT INTO `user` VALUES (6, 17791641989, '张三', '123456', '610522200001051636', '333333', NULL);
INSERT INTO `user` VALUES (7, 19991641989, '王五', '123456', '6101968755501021952', '44444', NULL);
INSERT INTO `user` VALUES (14, 18509144922, '张增煊', '123456', '612522200207031996', '000', NULL);
INSERT INTO `user` VALUES (15, 18509144923, '张增煊', '123456', NULL, NULL, NULL);
INSERT INTO `user` VALUES (16, 18509144923, 'sss', '123456', NULL, NULL, NULL);
INSERT INTO `user` VALUES (17, 18509144924, 'ssss', '123456', NULL, NULL, NULL);
INSERT INTO `user` VALUES (18, 18509144920, '增增', '123456', '612522200207031996', 'https://img.pqblog.com/i/2024/03/10/150423-0.png', NULL);

SET FOREIGN_KEY_CHECKS = 1;

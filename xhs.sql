-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2020-03-11 13:26:08
-- 服务器版本： 10.1.37-MariaDB
-- PHP 版本： 7.3.1
<<<<<<< HEAD

=======
--default-character-set=utf8
>>>>>>> 27e5cfe61f2d4492671ac76a57a14df972f937ab
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `xhs`
--

-- --------------------------------------------------------

--
-- 表的结构 `xhs_brand`
--
<<<<<<< HEAD

=======
DROP DATABASE IF exists xhs;
CREATE DATABASE xhs charset=utf8;
USE xhs;
>>>>>>> 27e5cfe61f2d4492671ac76a57a14df972f937ab
CREATE TABLE `xhs_brand` (
  `bid` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `pic` varchar(64) DEFAULT NULL,
  `store` varchar(32) DEFAULT NULL,
  `country` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xhs_brand`
--

INSERT INTO `xhs_brand` (`bid`, `brand_id`, `pic`, `store`, `country`) VALUES
(1, 1, 'img/brand/yashilandai.jpg', '雅诗兰黛', '美国'),
(2, 1, 'img/brand/AHC.jpg', 'AHC', '韩国'),
(3, 1, 'img/brand/OLAY.jpg', 'Olay', '美国'),
(4, 1, 'img/brand/SK-II.jpg', 'SK-Ⅱ', '日本'),
(5, 1, 'img/brand/lankou.jpg', '兰蔻', '法国'),
(6, 1, 'img/brand/jiaolan.jpg', '娇兰', '中国'),
(7, 1, 'img/brand/zishengtang.jpg', '资生堂', '日本'),
(8, 1, 'img/brand/jifuzhiyao.jpg', '肌肤之钥', '日本'),
(9, 1, 'img/brand/hou.jpg', '后', '韩国'),
(10, 1, 'img/brand/henuo.jpg', '荷诺', '韩国'),
(11, 1, 'img/brand/fuerjia.jpg', '敷尔佳', '中国'),
(12, 1, 'img/brand/Bb_LABORATORIES.jpg', 'Bb_LABORATORIES', '日本');

-- --------------------------------------------------------

--
-- 表的结构 `xhs_family`
--

CREATE TABLE `xhs_family` (
  `fid` int(11) NOT NULL,
  `class` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xhs_family`
--

INSERT INTO `xhs_family` (`fid`, `class`) VALUES
(1, '护肤'),
(2, '彩妆'),
(3, '个人护理'),
(4, '保健品'),
(5, '母婴'),
(6, '包包'),
(7, '配饰'),
(8, '服装'),
(9, '内衣家居服'),
(10, '鞋靴'),
(11, '家居'),
(12, '家电数码'),
(13, '美食'),
(14, '运动'),
(15, '宠物');

-- --------------------------------------------------------

--
-- 表的结构 `xhs_index`
--

CREATE TABLE `xhs_index` (
  `pid` int(11) NOT NULL,
  `user` varchar(64) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `video` varchar(128) DEFAULT NULL,
  `notes` int(11) DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `locat` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `xhs_order`
--

CREATE TABLE `xhs_order` (
  `aid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `order_time` date DEFAULT NULL,
  `pay_time` date DEFAULT NULL,
  `deliver_time` date DEFAULT NULL,
  `receied_time` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `xhs_order_detail`
--

CREATE TABLE `xhs_order_detail` (
  `did` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `xhs_product`
--

CREATE TABLE `xhs_product` (
  `lid` int(11) NOT NULL,
  `family_id` int(11) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `serve` varchar(64) DEFAULT NULL,
  `parameter` varchar(64) DEFAULT NULL,
  `key_word` varchar(32) DEFAULT NULL,
  `details` varchar(1024) DEFAULT NULL,
  `details_pic` varchar(64) DEFAULT NULL,
  `store` varchar(32) DEFAULT NULL,
  `sold_count` int(11) DEFAULT NULL,
  `is_onsale` tinyint(1) DEFAULT NULL,
  `subtitle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xhs_product`
--

INSERT INTO `xhs_product` (`lid`, `family_id`, `title`, `price`, `serve`, `parameter`, `key_word`, `details`, `details_pic`, `store`, `sold_count`, `is_onsale`, `subtitle`) VALUES
(1, 1, '460倍夯倍水', '230.00', '{\'wuliu\':\'小红书物流\',\'fahuo\':\'保税仓发货\',\'baoyou\':\'单件包邮\',\'baoshui\':\'包税\',', '175g', '面膜', '复活草之所以能够“复活”拥有如此强大的生命力，是因为复活草内蕴含天然糖基海藻糖，它有着惊人的锁水保湿能力。', 'img/sp_item/01.png', 'Bb_LABORATORIES', 100, 1, '清爽uv 面部防晒SPE50'),
(2, 1, '嫩肌活肤', '1600.00', '{\'wuliu\':\'小红书物流\',\'fahuo\':\'保税仓发货\',\'baoyou\':\'单件包邮\',\'baoshui\':\'包税\',', '100ml', '精华肌底液', '复活草之所以能够“复活”拥有如此强大的生命力，是因为复活草内蕴含天然糖基海藻糖，它有着惊人的锁水保湿能力。', 'img/sp_item/02.png', '兰蔻', 200, 1, '亚麻保湿水乳2件套套装'),
(3, 1, '光感小白瓶', '220.00', '{\'wuliu\':\'小红书物流\',\'fahuo\':\'保税仓发货\',\'baoyou\':\'单件包邮\',\'baoshui\':\'包税\',', '175g', '精华露', '复活草之所以能够“复活”拥有如此强大的生命力，是因为复活草内蕴含天然糖基海藻糖，它有着惊人的锁水保湿能力。', 'img/sp_item/03.png', 'Olay', 300, 1, 'A.H.CAHC透明质酸神仙水乳洗面奶套盒');

-- --------------------------------------------------------

--
-- 表的结构 `xhs_product_carousel`
--

CREATE TABLE `xhs_product_carousel` (
  `cid` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xhs_product_carousel`
--

INSERT INTO `xhs_product_carousel` (`cid`, `img`, `title`, `pic`, `href`) VALUES
(1, 'img/carousel/carousel_1.jpg', NULL, NULL, NULL),
(2, 'img/carousel/carousel_2.jpg', NULL, NULL, NULL),
(3, 'img/carousel/carousel_3.jpg', NULL, NULL, NULL),
(5, 'img/carousel/carousel_4.jpg', NULL, NULL, NULL),
(6, 'img/carousel/carousel_5.jpg', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `xhs_receiver_address`
--

CREATE TABLE `xhs_receiver_address` (
  `aid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `receiver` varchar(16) DEFAULT NULL,
  `PROVINCE` varchar(16) DEFAULT NULL,
  `city` varchar(16) DEFAULT NULL,
  `county` varchar(16) DEFAULT NULL,
  `address` varchar(16) DEFAULT NULL,
  `cellphone` char(11) DEFAULT NULL,
  `fixedphone` varchar(16) DEFAULT NULL,
  `postcode` char(6) DEFAULT NULL,
  `tag` varchar(16) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `xhs_shopping_cart`
--

CREATE TABLE `xhs_shopping_cart` (
  `cid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `product_name` varchar(32) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `pic` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `xhs_subdivision`
--

CREATE TABLE `xhs_subdivision` (
  `sid` int(11) NOT NULL,
  `sub_id` int(11) DEFAULT NULL,
  `pic` varchar(32) DEFAULT NULL,
  `class` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xhs_subdivision`
--

INSERT INTO `xhs_subdivision` (`sid`, `sub_id`, `pic`, `class`) VALUES
(1, 1, 'img/product/subdivision/jiemian.', '洁面'),
(2, 1, 'img/product/subdivision/huazhuan', '化妆水'),
(3, 1, 'img/product/subdivision/mianmo', '面膜'),
(4, 1, 'img/product/subdivision/xiezhaun', '卸妆'),
(5, 1, 'img/product/subdivision/jinghua.', '精华'),
(6, 1, 'img/product/subdivision/ruyemian', '乳液面霜'),
(7, 1, 'img/product/subdivision/yanbuhul', '眼部护理'),
(8, 1, 'img/product/subdivision/chunbuhu', '唇部护理'),
(9, 1, 'img/product/subdivision/meirongy', '美容仪器'),
(10, 1, 'img/product/subdivision/fangshai', '防晒'),
(11, 1, 'img/product/subdivision/hufugong', '护肤工具');

-- --------------------------------------------------------

--
-- 表的结构 `xhs_user`
--

CREATE TABLE `xhs_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(16) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `phone` char(11) NOT NULL,
  `user_name` varchar(8) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `verification_code` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `xhs_video`
--

CREATE TABLE `xhs_video` (
  `vid` int(11) NOT NULL,
  `video` varchar(64) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `user` varchar(32) DEFAULT NULL,
  `attention` int(11) DEFAULT NULL,
  `distance` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转储表的索引
--

--
-- 表的索引 `xhs_brand`
--
ALTER TABLE `xhs_brand`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `brand_id` (`brand_id`);

--
-- 表的索引 `xhs_family`
--
ALTER TABLE `xhs_family`
  ADD PRIMARY KEY (`fid`);

--
-- 表的索引 `xhs_index`
--
ALTER TABLE `xhs_index`
  ADD PRIMARY KEY (`pid`);

--
-- 表的索引 `xhs_order`
--
ALTER TABLE `xhs_order`
  ADD PRIMARY KEY (`aid`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `address_id` (`address_id`);

--
-- 表的索引 `xhs_order_detail`
--
ALTER TABLE `xhs_order_detail`
  ADD PRIMARY KEY (`did`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- 表的索引 `xhs_product`
--
ALTER TABLE `xhs_product`
  ADD PRIMARY KEY (`lid`),
  ADD KEY `family_id` (`family_id`);

--
-- 表的索引 `xhs_product_carousel`
--
ALTER TABLE `xhs_product_carousel`
  ADD PRIMARY KEY (`cid`);

--
-- 表的索引 `xhs_receiver_address`
--
ALTER TABLE `xhs_receiver_address`
  ADD PRIMARY KEY (`aid`),
  ADD KEY `user_id` (`user_id`);

--
-- 表的索引 `xhs_shopping_cart`
--
ALTER TABLE `xhs_shopping_cart`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- 表的索引 `xhs_subdivision`
--
ALTER TABLE `xhs_subdivision`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `sub_id` (`sub_id`);

--
-- 表的索引 `xhs_user`
--
ALTER TABLE `xhs_user`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `uname` (`uname`);

--
-- 表的索引 `xhs_video`
--
ALTER TABLE `xhs_video`
  ADD PRIMARY KEY (`vid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `xhs_brand`
--
ALTER TABLE `xhs_brand`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用表AUTO_INCREMENT `xhs_family`
--
ALTER TABLE `xhs_family`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 使用表AUTO_INCREMENT `xhs_index`
--
ALTER TABLE `xhs_index`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `xhs_order`
--
ALTER TABLE `xhs_order`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `xhs_order_detail`
--
ALTER TABLE `xhs_order_detail`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `xhs_product`
--
ALTER TABLE `xhs_product`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `xhs_product_carousel`
--
ALTER TABLE `xhs_product_carousel`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `xhs_receiver_address`
--
ALTER TABLE `xhs_receiver_address`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `xhs_shopping_cart`
--
ALTER TABLE `xhs_shopping_cart`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `xhs_subdivision`
--
ALTER TABLE `xhs_subdivision`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用表AUTO_INCREMENT `xhs_user`
--
ALTER TABLE `xhs_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `xhs_video`
--
ALTER TABLE `xhs_video`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 限制导出的表
--

--
-- 限制表 `xhs_brand`
--
ALTER TABLE `xhs_brand`
  ADD CONSTRAINT `xhs_brand_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `xhs_family` (`fid`);

--
-- 限制表 `xhs_order`
--
ALTER TABLE `xhs_order`
  ADD CONSTRAINT `xhs_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `xhs_user` (`uid`),
  ADD CONSTRAINT `xhs_order_ibfk_2` FOREIGN KEY (`address_id`) REFERENCES `xhs_receiver_address` (`aid`);

--
-- 限制表 `xhs_order_detail`
--
ALTER TABLE `xhs_order_detail`
  ADD CONSTRAINT `xhs_order_detail_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `xhs_product` (`lid`),
  ADD CONSTRAINT `xhs_order_detail_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `xhs_product` (`lid`);

--
-- 限制表 `xhs_product`
--
ALTER TABLE `xhs_product`
  ADD CONSTRAINT `xhs_product_ibfk_1` FOREIGN KEY (`family_id`) REFERENCES `xhs_family` (`fid`);

--
-- 限制表 `xhs_receiver_address`
--
ALTER TABLE `xhs_receiver_address`
  ADD CONSTRAINT `xhs_receiver_address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `xhs_user` (`uid`);

--
-- 限制表 `xhs_shopping_cart`
--
ALTER TABLE `xhs_shopping_cart`
  ADD CONSTRAINT `xhs_shopping_cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `xhs_user` (`uid`),
  ADD CONSTRAINT `xhs_shopping_cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `xhs_product` (`lid`);

--
-- 限制表 `xhs_subdivision`
--
ALTER TABLE `xhs_subdivision`
  ADD CONSTRAINT `xhs_subdivision_ibfk_1` FOREIGN KEY (`sub_id`) REFERENCES `xhs_family` (`fid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

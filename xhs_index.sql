-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2020-03-12 04:16:46
-- 服务器版本： 10.1.37-MariaDB
-- PHP 版本： 7.3.1

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

--
-- 转存表中的数据 `xhs_index`
--

INSERT INTO `xhs_index` (`pid`, `user`, `title`, `video`, `notes`, `likes`, `locat`) VALUES
(1, '重庆探店王', '来重庆一定要尝尝爷爷的芋圆', 'img/index_item/1.png', NULL, 15, '5'),
(2, 'LiLi妹儿', '重庆旅游 | 露天全景高空下午茶', 'img/index_item/2.png', NULL, 58, '12'),
(3, '重庆探店王', '重庆旅游必打卡面馆,胖妹面庄', 'img/index_item/3.png', NULL, 68, '32'),
(4, '爱旅拍的小伙儿', '重庆最烟火最适合做画报的老梯坎', 'img/index_item/4.png', NULL, 36, '45'),
(5, 'jiiayue', '重庆探店【重庆首家校服体验馆】', 'img/index_item/5.png', NULL, 21, '7'),
(6, '重庆旅游', '270度露天全江景下午茶', 'img/index_item/6.png', NULL, 99, '5');

--
-- 转储表的索引
--

--
-- 表的索引 `xhs_index`
--
ALTER TABLE `xhs_index`
  ADD PRIMARY KEY (`pid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `xhs_index`
--
ALTER TABLE `xhs_index`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

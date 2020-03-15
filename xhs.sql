#设置客户端连接服务器端编码
SET NAMES UTF8;
#丢弃数据库,如果存在
DROP DATABASE IF EXISTS xhs;
#创建数据库，设置数据库编码
CREATE DATABASE xhs CHARSET=UTF8;
#进入数据库
USE xhs;
#创建数据表xhs_user 用户注册登录表
CREATE TABLE xhs_user(
  uid INT PRIMARY KEY  NOT NULL AUTO_INCREMENT,
  uname VARCHAR(32) UNIQUE,
  upwd VARCHAR(16),
  email VARCHAR(32),
  phone CHAR(11) NOT NULL,
  user_name VARCHAR(8),
  gender BOOL,
  verification_code VARCHAR(11)
);
 
#创建数据表xhs_receiver_address 注册地址等详情
CREATE TABLE xhs_receiver_address(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  receiver VARCHAR(16),
  PROVINCE VARCHAR(16),
  city VARCHAR(16),
  county VARCHAR(16),
  address VARCHAR(16),
  cellphone CHAR(11),
  fixedphone VARCHAR(16),
  postcode CHAR(6),
  tag VARCHAR(16),
  is_default BOOL,
  FOREIGN KEY(user_id) REFERENCES xhs_user(uid)
);

#创建数据表xhs_family 商品分类
CREATE TABLE xhs_family(
  fid INT PRIMARY KEY AUTO_INCREMENT,
  class VARCHAR(32)
);
#创建商品分类细分表 xhs_subdivision
CREATE TABLE xhs_subdivision(
  sid INT PRIMARY KEY AUTO_INCREMENT,
  sub_id INT,
  pic VARCHAR(32),
  class VARCHAR(16), 
  FOREIGN KEY(sub_id) REFERENCES xhs_family(fid)
);
#创建商品细分品牌表xhs_brand
CREATE TABLE xhs_brand(
  bid INT PRIMARY KEY AUTO_INCREMENT,
  brand_id INT,
  pic VARCHAR(64),
  store VARCHAR(32),
  country VARCHAR(32),
  FOREIGN KEY(brand_id) REFERENCES xhs_family(fid)
);
#创建数据表xhs_product 商品详情表
CREATE TABLE xhs_product(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  family_id INT,
  title VARCHAR(128),
  price1 VARCHAR(12),
  price DECIMAL(10,2),
  serve VARCHAR(64),
  imags VARCHAR(64),
  parameter VARCHAR(64),
  key_word VARCHAR(32),
  details VARCHAR(1024),
  details_pic VARCHAR(64),
  store VARCHAR(32),
  sold_count INT,
  is_onsale BOOL,
  FOREIGN KEY(family_id) REFERENCES xhs_family(fid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
#创建数据表xhs_shopping_cart 购物车
CREATE TABLE xhs_shopping_cart(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  product_id INT,
  count INT,
  product_name VARCHAR(32),
  price INT,
  pic VARCHAR(64),
  FOREIGN KEY(user_id) REFERENCES xhs_user(uid),
  FOREIGN KEY(product_id) REFERENCES xhs_product(lid)
);
#创建数据表xhs_order 订单地址状态详情表
CREATE TABLE xhs_order(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  address_id INT,
  status INT,
  order_time DATE,
  pay_time DATE,
  deliver_time DATE,
  receied_time DATE,
  FOREIGN KEY(user_id) REFERENCES xhs_user(uid),
  FOREIGN KEY(address_id) REFERENCES xhs_receiver_address(aid)
);
#创建数据表xhs_order_detail 订单详情表
CREATE TABLE xhs_order_detail(
  did INT PRIMARY KEY AUTO_INCREMENT,
  order_id INT,
  product_id INT,
  count INT,
  FOREIGN KEY(product_id) REFERENCES xhs_product(lid),
  FOREIGN KEY(order_id) REFERENCES xhs_product(lid)
);

#创建数据表xhs_index 首页
CREATE TABLE xhs_index(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  user VARCHAR(64),
  title VARCHAR(64),
  video VARCHAR(128),
  notes INT,
  likes INT,
  locat VARCHAR(32)
);
#创建数据表xhs_product_carousel  轮播图
CREATE TABLE xhs_product_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  pic VARCHAR(128),
  href VARCHAR(128)
);
#创建首页视频表 xhs_video
CREATE TABLE xhs_video(
  vid INT PRIMARY KEY AUTO_INCREMENT,
  video VARCHAR(64),
  title VARCHAR(64),
  user VARCHAR(32),
  attention int,
  distance VARCHAR(64)
);
-- 商品详情页
INSERT INTO `xhs_product` (`lid`,`title`,`price1`,`details_pic`,`imags`) VALUES (1,'50片装·口罩一次性使用过滤垫片','￥138.9','￥109.9','lkz.jpg')
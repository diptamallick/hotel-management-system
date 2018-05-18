CREATE DATABASE;
USE hotel_order;

DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `order_id` int(10) unsigned NOT NULL default '0',
  `bill_date` date NOT NULL default '0000-00-00',
  `bill_time` varchar(45) NOT NULL default '',
  `status` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(70) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='details of all categoried';

INSERT INTO `category` (`id`,`name`) VALUES 
 (1,'Statters'),
 (2,'BreakFast'),
 (3,'Lunch'),
 (4,'Snaks & Drinks');

DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `category_id` int(10) unsigned NOT NULL default '0',
  `name` varchar(45) NOT NULL default '',
  `qnt` int(10) unsigned NOT NULL default '0',
  `cost` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='item detail';


INSERT INTO `item` (`id`,`category_id`,`name`,`qnt`,`cost`) VALUES 
 (1,1,'Rostet Papad',1,'20'),
 (2,1,'Soup',1,'50'),
 (3,2,'aaaa',2,'100');


DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `user_name` varchar(45) NOT NULL default '',
  `pass` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `login` (`id`,`user_name`,`pass`) VALUES 
 (1,'cook','cook'),
 (2,'1','table1'),
 (3,'2','table2'),
 (4,'3','table3'),
 (5,'4','table4'),
 (6,'5','table5');

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE `order_details` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `order_id` int(10) unsigned NOT NULL default '0',
  `item_id` int(10) unsigned NOT NULL default '0',
  `qnt` int(10) unsigned NOT NULL default '0',
  `status` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `order_details` (`id`,`order_id`,`item_id`,`qnt`,`status`) VALUES 
 (7,9,2,2,'COOKED'),
 (8,9,2,2,'COOKED'),
 (9,10,2,2,'COOKED'),
 (10,10,2,2,'COOKED'),
 (11,11,1,1,'COOKED'),
 (12,12,3,3,'COOKED');

DROP TABLE IF EXISTS `order_master`;
CREATE TABLE `order_master` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `table_no` int(10) unsigned NOT NULL default '0',
  `name` varchar(20) NOT NULL default '',
  `order_date` date NOT NULL default '0000-00-00',
  `order_time` time NOT NULL default '00:00:00',
  `status` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `order_master` (`id`,`table_no`,`name`,`order_date`,`order_time`,`status`) VALUES 
 (9,2,'zzz','2015-02-18','20:37:17','DELIVERED'),
 (10,2,'aaa','2015-02-18','20:37:42','DELIVERED'),
 (11,3,'qqq','2015-02-18','20:46:01','DELIVERED'),
 (12,1,'aaa','2015-02-23','16:41:46','DELIVERED');


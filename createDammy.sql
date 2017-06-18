-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'users'
-- 
-- ---

DROP TABLE IF EXISTS `article`;
		
CREATE TABLE `article` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `name` MEDIUMTEXT NULL DEFAULT NULL,
  `categoryid` INTEGER ,
  `createtime` INTEGER ,
  `click` INTEGER ,
  PRIMARY KEY (`id`)
);

insert into article(name, categoryid, createtime, click) values('人気記事1',100,1,1);
insert into article(name, categoryid, createtime, click) values('人気記事2',101,2,4);
insert into article(name, categoryid, createtime, click) values('人気記事3',102,3,5);
insert into article(name, categoryid, createtime, click) values('人気記事4',103,4,6);
insert into article(name, categoryid, createtime, click) values('人気記事5',100,5,79);
insert into article(name, categoryid, createtime, click) values('人気記事6',101,6,34);
insert into article(name, categoryid, createtime, click) values('人気記事7',102,7,3);
insert into article(name, categoryid, createtime, click) values('人気記事8',103,8,34);
insert into article(name, categoryid, createtime, click) values('人気記事9',100,9,45);
insert into article(name, categoryid, createtime, click) values('人気記事10',101,10,45);
insert into article(name, categoryid, createtime, click) values('人気記事11',102,11,56);
insert into article(name, categoryid, createtime, click) values('人気記事12',103,12,45);
insert into article(name, categoryid, createtime, click) values('人気記事13',100,13,32);
insert into article(name, categoryid, createtime, click) values('人気記事14',101,14,5);
insert into article(name, categoryid, createtime, click) values('人気記事15',102,15,4);
insert into article(name, categoryid, createtime, click) values('人気記事16',103,16,21);
insert into article(name, categoryid, createtime, click) values('人気記事17',100,17,23);
insert into article(name, categoryid, createtime, click) values('人気記事18',101,18,23);
insert into article(name, categoryid, createtime, click) values('人気記事19',102,19,4);
insert into article(name, categoryid, createtime, click) values('人気記事20',103,20,4);
insert into article(name, categoryid, createtime, click) values('国内記事1',100,1,0);
insert into article(name, categoryid, createtime, click) values('国内記事2',100,2,0);
insert into article(name, categoryid, createtime, click) values('国内記事3',100,3,0);
insert into article(name, categoryid, createtime, click) values('国内記事4',100,4,0);
insert into article(name, categoryid, createtime, click) values('国内記事5',100,5,0);
insert into article(name, categoryid, createtime, click) values('国内記事6',100,6,0);
insert into article(name, categoryid, createtime, click) values('国内記事7',100,7,0);
insert into article(name, categoryid, createtime, click) values('国内記事8',100,8,0);
insert into article(name, categoryid, createtime, click) values('国内記事9',100,9,0);
insert into article(name, categoryid, createtime, click) values('国内記事10',100,10,0);
insert into article(name, categoryid, createtime, click) values('国際記事1',101,1,0);
insert into article(name, categoryid, createtime, click) values('国際記事2',101,2,0);
insert into article(name, categoryid, createtime, click) values('国際記事3',101,3,0);
insert into article(name, categoryid, createtime, click) values('国際記事4',101,4,0);
insert into article(name, categoryid, createtime, click) values('国際記事5',101,5,0);
insert into article(name, categoryid, createtime, click) values('国際記事6',101,6,0);
insert into article(name, categoryid, createtime, click) values('国際記事7',101,7,0);
insert into article(name, categoryid, createtime, click) values('国際記事8',101,8,0);
insert into article(name, categoryid, createtime, click) values('国際記事9',101,9,0);
insert into article(name, categoryid, createtime, click) values('国際記事10',101,10,0);
insert into article(name, categoryid, createtime, click) values('社会記事1',102,1,0);
insert into article(name, categoryid, createtime, click) values('社会記事2',102,2,0);
insert into article(name, categoryid, createtime, click) values('社会記事3',102,3,0);
insert into article(name, categoryid, createtime, click) values('社会記事4',102,4,0);
insert into article(name, categoryid, createtime, click) values('社会記事5',102,5,0);
insert into article(name, categoryid, createtime, click) values('社会記事6',102,6,0);
insert into article(name, categoryid, createtime, click) values('社会記事7',102,7,0);
insert into article(name, categoryid, createtime, click) values('社会記事8',102,8,0);
insert into article(name, categoryid, createtime, click) values('社会記事9',102,9,0);
insert into article(name, categoryid, createtime, click) values('社会記事10',102,10,0);
insert into article(name, categoryid, createtime, click) values('その他の記事1',104,1,0);
insert into article(name, categoryid, createtime, click) values('その他の記事2',105,2,0);
insert into article(name, categoryid, createtime, click) values('その他の記事3',107,3,0);
insert into article(name, categoryid, createtime, click) values('その他の記事4',108,4,0);
insert into article(name, categoryid, createtime, click) values('その他の記事5',104,5,0);
insert into article(name, categoryid, createtime, click) values('その他の記事6',105,6,0);
insert into article(name, categoryid, createtime, click) values('その他の記事7',107,7,0);
insert into article(name, categoryid, createtime, click) values('その他の記事8',108,8,0);
insert into article(name, categoryid, createtime, click) values('その他の記事9',104,9,0);
insert into article(name, categoryid, createtime, click) values('その他の記事10',105,10,0);
insert into article(name, categoryid, createtime, click) values('その他の記事11',107,11,0);
insert into article(name, categoryid, createtime, click) values('その他の記事12',108,12,0);
insert into article(name, categoryid, createtime, click) values('その他の記事13',104,13,0);
insert into article(name, categoryid, createtime, click) values('その他の記事14',105,14,0);
insert into article(name, categoryid, createtime, click) values('その他の記事15',107,15,0);
insert into article(name, categoryid, createtime, click) values('その他の記事16',108,16,0);
insert into article(name, categoryid, createtime, click) values('その他の記事17',104,17,0);
insert into article(name, categoryid, createtime, click) values('その他の記事18',105,18,0);
insert into article(name, categoryid, createtime, click) values('その他の記事19',107,19,0);
insert into article(name, categoryid, createtime, click) values('その他の記事20',108,20,0);
insert into article(name, categoryid, createtime, click) values('その他の記事21',104,21,0);
insert into article(name, categoryid, createtime, click) values('その他の記事22',105,22,0);
insert into article(name, categoryid, createtime, click) values('その他の記事23',107,23,0);
insert into article(name, categoryid, createtime, click) values('その他の記事24',108,24,0);
insert into article(name, categoryid, createtime, click) values('その他の記事25',104,25,0);
insert into article(name, categoryid, createtime, click) values('その他の記事26',105,26,0);
insert into article(name, categoryid, createtime, click) values('その他の記事27',107,27,0);
insert into article(name, categoryid, createtime, click) values('その他の記事28',108,28,0);

-- ---
-- Foreign Keys 
-- ---


-- ---
-- Table Properties
-- ---

-- ALTER TABLE `users` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `users` (`id`,`name`) VALUES
-- ('','');


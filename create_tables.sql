-- Adminer 4.1.0 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP DATABASE IF EXISTS `test`;
CREATE DATABASE `test` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `test`;

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
	  `id` int(11) NOT NULL AUTO_INCREMENT,
	  `text` varchar(255) NOT NULL,
	  `post_id` int(11) NOT NULL,
	  `user_id` int(11) NOT NULL,
	  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `comments` (`id`, `text`, `post_id`, `user_id`) VALUES
(1,	'text 1',	1,	21),
(11,	'test2',	1,	1),
(21,	'text 3',	31,	21),
(31,	'text 4',	21,	1),
(41,	'text 5',	41,	31),
(51,	'text 6',	21,	1),
(61,	'text 7',	1,	21);

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
	  `id` int(11) NOT NULL AUTO_INCREMENT,
	  `title` varchar(255) NOT NULL,
	  `text` varchar(255) NOT NULL,
	  `user_id` int(11) NOT NULL,
	  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `posts` (`id`, `title`, `text`, `user_id`) VALUES
(1,	'tit1',	'text1',	1),
(11,	'title 2',	'text 2',	1),
(21,	'title 3',	'text 3',	2),
(31,	'title 4 ',	'text 4',	4),
(41,	'text 5',	'text 5',	2);

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
	  `id` int(11) NOT NULL AUTO_INCREMENT,
	  `name` varchar(255) NOT NULL,
	  `is_moderator` tinyint(4) NOT NULL DEFAULT '0',
	  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `users` (`id`, `name`, `is_moderator`) VALUES
(1,	'name 1',	0),
(11,	'name 2',	0),
(21,	'name 3',	1),
(31,	'name 4',	1),
(41,	'name 5',	0);

-- 2015-02-26 07:46:24

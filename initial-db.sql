-- Adminer 4.7.7 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP DATABASE IF EXISTS `blog`;
CREATE DATABASE `blog` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `blog`;

DROP TABLE IF EXISTS `apikey`;
CREATE TABLE `apikey` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorid` int unsigned NOT NULL,
  `dateTimeCreated` datetime NOT NULL,
  `dateTimeExpires` datetime NOT NULL,
  `isValid` tinyint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `authorid` (`authorid`),
  CONSTRAINT `apikey_ibfk_1` FOREIGN KEY (`authorid`) REFERENCES `author` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `apikey` (`id`, `key`, `authorid`, `dateTimeCreated`, `dateTimeExpires`, `isValid`) VALUES
(1,	'guest',	1,	'2020-11-05 23:30:36',	'2021-12-31 23:59:59',	1);

DROP TABLE IF EXISTS `author`;
CREATE TABLE `author` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `author` (`id`, `name`) VALUES
(1,	'adam');

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `postid` int unsigned NOT NULL,
  `authorname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateTimeCommented` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `postid` (`postid`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `authorId` int unsigned NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateTimePosted` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `authorId` (`authorId`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`authorId`) REFERENCES `author` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- 2020-11-05 23:32:41

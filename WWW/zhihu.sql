-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2019 �?02 �?19 �?07:17
-- 服务器版本: 5.5.53
-- PHP 版本: 7.2.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `zhihu`
--

-- --------------------------------------------------------

--
-- 表的结构 `agree`
--

CREATE TABLE IF NOT EXISTS `agree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `count` char(100) NOT NULL,
  `question` char(255) NOT NULL,
  `answer` text NOT NULL,
  `agree` int(255) NOT NULL,
  `agreeer` char(110) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `agree`
--

INSERT INTO `agree` (`id`, `count`, `question`, `answer`, `agree`, `agreeer`) VALUES
(18, 'asd', '你爱我吗？', '太爱了。', 0, 'asd'),
(17, '123', '你爱我吗？', '很爱。', 14, '123');

-- --------------------------------------------------------

--
-- 表的结构 `collect`
--

CREATE TABLE IF NOT EXISTS `collect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `count` char(100) NOT NULL,
  `question` char(255) NOT NULL,
  `answer` text NOT NULL,
  `agree` int(11) NOT NULL,
  `collecter` char(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `collect`
--

INSERT INTO `collect` (`id`, `count`, `question`, `answer`, `agree`, `collecter`) VALUES
(16, 'asd', '你爱我吗？', '太爱了。', 1, 'asd'),
(15, '123', '你爱我吗？', '很爱。', 15, '123');

-- --------------------------------------------------------

--
-- 表的结构 `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `count` char(100) NOT NULL,
  `question` char(100) NOT NULL,
  `answer` text NOT NULL,
  `commenter` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=46 ;

--
-- 转存表中的数据 `comment`
--

INSERT INTO `comment` (`id`, `count`, `question`, `answer`, `commenter`, `comment`) VALUES
(2, 'asd', '啊啊啊？', 'ok！', 'asd', 'ok!!!'),
(3, '123', '你爱我吗？', '很爱。', '123', '哈哈哈。'),
(4, '123', '你爱我吗？', '很爱。', 'asd', '啦啦啦。'),
(12, 'asd', '你爱我吗？', '太爱了。', 'asd', '哈哈。'),
(19, '', '', '', '', ''),
(14, '', '', '', '', ''),
(15, '', '', '', '', ''),
(16, '', '', '', '', ''),
(17, '', '', '', '', ''),
(20, '', '', '', '', ''),
(21, '123', '啊啊？', '呵呵。', 'asd', '哈哈。'),
(22, '123', '啊啊啊？', '圣诞节快发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发。', '123', '哈哈哈。'),
(23, '123', '啊啊啊？', '圣诞节快发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发发。', 'asd', '哈哈。'),
(24, '123', '请求?', '哈哈哈。', '123', 'ok啊。'),
(25, '123', '。。。？', '啊啊啊。', 'asd', '哈哈。'),
(26, 'asd', '啊啊啊啊？', '哦哦。', 'asd', '厉害啊。'),
(27, 'asd', '啊啊啊啊？', '哦哦。', '123', '哈哈。'),
(28, '', '', '', '', ''),
(29, '123', '哈哈？', '嗯。', 'asd', '嗯。'),
(30, '123', '哈哈？', '嗯。', '123', 'ok。'),
(31, 'asd', '好香啊？', '真香呢！', 'asd', '确实够香啊！'),
(32, 'asd', '好香啊？', '真香呢！', '123', '太香了啊。'),
(33, '123', '好好吃啊？', '真好吃！', '123', '恩恩啊！'),
(34, '123', '好好吃啊？', '真好吃！', 'asd', '呵呵啊！'),
(35, 'asd', '好好吃啊？', '呵呵。', 'asd', '呵呵啊。'),
(36, 'asd', '？', '嗯。', 'asd', '。。。'),
(37, 'asd', '？？', '嗯。', 'asd', '厉害。'),
(38, 'asd', '？？？', '呵呵。', 'asd', '。。。'),
(39, '', '', '', '', ''),
(40, '', '', '', '', ''),
(41, '', '', '', '', ''),
(42, '', '', '', '', ''),
(43, '', '', '', '', ''),
(44, '123', '好香啊？', '呵呵。', '123', '呵呵。'),
(45, 'asd', '？', '嗯。', '123', '呵呵。');

-- --------------------------------------------------------

--
-- 表的结构 `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `count` char(255) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `answer` text NOT NULL,
  `agree` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=91 ;

--
-- 转存表中的数据 `question`
--

INSERT INTO `question` (`id`, `count`, `question`, `answer`, `agree`) VALUES
(90, '123', '去去去？', '嗯。', 0),
(89, '123', '去去去？', '', 0),
(83, 'asd', '？', '', 0),
(84, 'asd', '？', '嗯。', 0),
(85, 'asd', '？？', '', 0),
(86, 'asd', '？？', '嗯。', 0),
(87, 'asd', '？？？', '', 0),
(88, 'asd', '？？？', '呵呵。', 0),
(82, 'asd', '好好吃啊？', '呵呵。', 0),
(81, '123', '好香啊？', '呵呵。', 0),
(80, '123', '好好吃啊？', '真好吃！', 0),
(79, '123', '好好吃啊？', '', 0),
(78, 'asd', '好香啊？', '真香呢！', 0),
(77, '123', '好香啊？', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `reply`
--

CREATE TABLE IF NOT EXISTS `reply` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `replyer` char(255) NOT NULL,
  `replyd` char(100) NOT NULL,
  `reply` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `reply`
--

INSERT INTO `reply` (`id`, `pid`, `replyer`, `replyd`, `reply`) VALUES
(2, 31, '123', 'asd', '太香了啊！'),
(3, 31, 'asd', 'asd', '香死我了啊！'),
(4, 31, '123', 'asd', '呵呵哒。'),
(5, 31, '123', 'asd', '呵呵呵。'),
(6, 31, '123', 'asd', '啊啊啊。'),
(7, 32, '123', '123', '呵呵。'),
(8, 35, '123', 'asd', '和你妹你。'),
(9, 44, '123', '123', '哈哈。'),
(10, 36, '123', 'asd', 'ok!'),
(11, 45, '123', '123', '厉害啊。'),
(12, 44, '123', '123', '呵呵哒。'),
(13, 44, '123', '123', '哈哈。'),
(14, 44, '123', '123', '呵呵。');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `count` char(255) NOT NULL,
  `password` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=35 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `count`, `password`) VALUES
(34, 'asd', 0),
(33, 'zxc', 0),
(32, 'abc', 123),
(31, '123', 456);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

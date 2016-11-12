-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2016 at 07:21 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `social_network`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE IF NOT EXISTS `chat` (
  `chat_id` int(11) NOT NULL AUTO_INCREMENT,
  `chat_sender` text NOT NULL,
  `chat_receiver` text NOT NULL,
  `chat_content` text NOT NULL,
  PRIMARY KEY (`chat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`chat_id`, `chat_sender`, `chat_receiver`, `chat_content`) VALUES
(1, 'sailakshmiyadlapati@gmail.com', 'gaganasmart@gmail.com', 'hi\n'),
(2, 'sailakshmiyadlapati@gmail.com', 'gaganasmart@gmail.com', 'hello'),
(3, 'sailakshmiyadlapati@gmail.com', 'gaganasmart@gmail.com', 'hello'),
(4, 'sailakshmiyadlapati@gmail.com', 'gaganasmart@gmail.com', 'hi\n'),
(5, 'gaganasmart@gmail.com', 'sailakshmiyadlapati@gmail.com', 'hi sai.ela unnav?'),
(6, 'sailakshmiyadlapati@gmail.com', 'gaganasmart@gmail.com', 'hiihiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii'),
(7, 'sailakshmiyadlapati@gmail.com', 'gaganasmart@gmail.com', 'hi'),
(8, 'sailakshmiyadlapati@gmail.com', 'gaganasmart@gmail.com', ' '),
(9, 'sailakshmiyadlapati@gmail.com', 'gaganasmart@gmail.com', ' '),
(10, 'sailakshmiyadlapati@gmail.com', 'gaganasmart@gmail.com', ' '),
(11, 'sailakshmiyadlapati@gmail.com', 'gaganasmart@gmail.com', 'hi'),
(12, 'sailakshmiyadlapati@gmail.com', 'gaganasmart@gmail.com', 'hi'),
(13, 'sailakshmiyadlapati@gmail.com', 'gaganasmart@gmail.com', ''),
(14, 'sailakshmiyadlapati@gmail.com', 'gaganasmart@gmail.com', ''),
(15, 'sailakshmiyadlapati@gmail.com', 'gaganasmart@gmail.com', ''),
(16, 'sailakshmiyadlapati@gmail.com', 'gaganasmart@gmail.com', ' hi'),
(17, 'sailakshmiyadlapati@gmail.com', 'gaganasmart@gmail.com', 'he'),
(18, 'sailakshmiyadlapati@gmail.com', 'gaganasmart@gmail.com', ''),
(19, 'sailakshmiyadlapati@gmail.com', 'gaganasmart@gmail.com', 'hi'),
(20, 'sailakshmiyadlapati@gmail.com', 'gaganasmart@gmail.com', 'iiiiiiiiiii'),
(21, 'sailakshmiyadlapati@gmail.com', 'gaganasmart@gmail.com', ' iii'),
(22, 'gaganasmart@gmail.com', 'sailakshmiyadlapati@gmail.com', 'hello'),
(23, 'sindhooramandadi@gmail.com', 'sailakshmiyadlapati@gmail.com', 'Hi sai! How are you?'),
(24, 'sindhooramandadi@gmail.com', 'gaganasmart@gmail.com', ' Hello gagana!'),
(26, 'shruthi@gmail.com', 'sailakshmiyadlapati@gmail.com', ' '),
(27, 'shruthi@gmail.com', 'sailakshmiyadlapati@gmail.com', 'hi'),
(28, 'sailakshmiyadlapati@gmail.com', 'sindhooramandadi@gmail.com', 'hi sindhu. Fine and u?'),
(29, 'sailakshmiyadlapati@gmail.com', 'shruthi@gmail.com', ' Hi shruthi'),
(31, 'sailakshmiyadlapati@gmail.com', 'shruthi@gmail.com', 'how are you?'),
(33, 'sailakshmiyadlapati@gmail.com', 'sindhooramandadi@gmail.com', ' hiiiiiii'),
(34, 'sailakshmiyadlapati@gmail.com', 'shruthi@gmail.com', 'hi'),
(35, 'sailakshmiyadlapati@gmail.com', 'gaganasmart@gmail.com', 'hi'),
(36, 'sailakshmiyadlapati@gmail.com', 'gaganasmart@gmail.com', 'hi'),
(37, 'sailakshmiyadlapati@gmail.com', 'gaganasmart@gmail.com', ''),
(38, 'sailakshmiyadlapati@gmail.com', 'gaganasmart@gmail.com', ''),
(39, 'sailakshmiyadlapati@gmail.com', 'gaganasmart@gmail.com', ''),
(40, 'sailakshmiyadlapati@gmail.com', 'gaganasmart@gmail.com', ''),
(41, 'sailakshmiyadlapati@gmail.com', 'gaganasmart@gmail.com', 'hello\n');

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE IF NOT EXISTS `friends` (
  `friend_id` int(11) NOT NULL AUTO_INCREMENT,
  `sendreq_mail` text NOT NULL,
  `receivereq_mail` text NOT NULL,
  `friend_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`friend_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=152 ;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`friend_id`, `sendreq_mail`, `receivereq_mail`, `friend_status`) VALUES
(143, 'sailakshmiyadlapati@gmail.com', 'gaganasmart@gmail.com', 2),
(144, 'sailakshmiyadlapati@gmail.com', 'pavanadivya@gmail.com', 1),
(145, 'sailakshmiyadlapati@gmail.com', 'sindhooramandadi@gmail.com', 2),
(146, 'sailakshmiyadlapati@gmail.com', 'shruthi@gmail.com', 2),
(147, 'pavanadivya@gmail.com', 'gaganasmart@gmail.com', 1),
(148, 'gaganasmart@gmail.com', 'sindhooramandadi@gmail.com', 2),
(149, 'shruthi@gmail.com', 'gaganasmart@gmail.com', 1),
(150, 'sailakshmiyadlapati@gmail.com', 'lilly@gmail.com', 2),
(151, 'sindhooramandadi@gmail.com', 'pavanadivya@gmail.com', 2);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `posts_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_username` text NOT NULL,
  `post_usermail` text NOT NULL,
  `post_userimage` text NOT NULL,
  `post_datetime` datetime NOT NULL,
  `post_content` text NOT NULL,
  `postedimage` text NOT NULL,
  `postedvideo` text NOT NULL,
  PRIMARY KEY (`posts_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`posts_id`, `post_username`, `post_usermail`, `post_userimage`, `post_datetime`, `post_content`, `postedimage`, `postedvideo`) VALUES
(56, 'Sai Lakshmi Yadlapati', 'sailakshmiyadlapati@gmail.com', 'user/user_images/FR_39_2Pack_158259920.jpg', '2016-04-09 18:31:39', 'Hi everyone! What an awesome day today!', '', ''),
(57, 'Sai Lakshmi Yadlapati', 'sailakshmiyadlapati@gmail.com', 'user/user_images/FR_39_2Pack_158259920.jpg', '2016-04-09 18:32:16', '', 'user/postedimages/PT_hero_42_153645159.jpg', ''),
(59, 'gagana Marrikuppala', 'gaganasmart@gmail.com', 'user/user_images/Tulips.jpg', '2016-04-09 18:34:24', 'Your "I Can" is more important than your IQ!', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE IF NOT EXISTS `topics` (
  `topic_id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_title` text NOT NULL,
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `user_pass` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `mobile` int(14) NOT NULL,
  `user_gender` varchar(100) NOT NULL,
  `user_bday` date NOT NULL,
  `user_image` text NOT NULL,
  `register_date` date NOT NULL,
  `last_login` datetime NOT NULL,
  `status` text NOT NULL,
  `posts` text NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `user_pass`, `user_email`, `mobile`, `user_gender`, `user_bday`, `user_image`, `register_date`, `last_login`, `status`, `posts`) VALUES
(1, 'Sai Lakshmi', 'Yadlapati', 'sailakshmi', 'sailakshmiyadlapati@gmail.com', 2147483647, 'Female', '1996-12-24', 'user/user_images/FR_39_2Pack_158259920.jpg', '2017-03-16', '2017-03-16 00:00:00', 'happy', 'Hello everyone!\r\n'),
(2, 'gagana', 'Marrikuppala', 'gaganasmart', 'gaganasmart@gmail.com', 0, 'Female', '1997-04-04', 'user/user_images/Tulips.jpg', '2027-03-16', '2027-03-16 00:00:00', 'Excited!', 'Hi everyone!\r\n'),
(3, 'Divya', 'Basani', 'pavanadivya', 'pavanadivya@gmail.com', 0, 'Female', '1997-06-24', 'user/user_images/Lighthouse.jpg', '2027-03-16', '2027-03-16 00:00:00', 'Set a status!', 'Share a post!'),
(7, 'sindhoora', 'mandadi', 'sindhooramandadi', 'sindhooramandadi@gmail.com', 0, 'Female', '2016-04-05', 'user/user_images/creativity_water_spray_drops_flower_rose_desktop_images_TVIdSpG.jpg', '2002-04-16', '2002-04-16 00:00:00', 'Set a status!', 'Share a post!'),
(8, 'Shruthi', 'Chilkuri', 'shrythichilkuri', 'shruthi@gmail.com', 0, 'Female', '2016-04-10', 'user/user_images/images.jpg', '2002-04-16', '2002-04-16 00:00:00', 'Set a status!', 'Share a post!'),
(9, 'lilly', 'truscot', 'emilyosment', 'lilly@gmail.com', 0, 'Female', '2016-04-10', 'user/user_images/default.jpg', '2002-04-16', '2002-04-16 00:00:00', 'Set a status!', 'Share a post!');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2016 at 06:54 PM
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
-- Table structure for table `friends`
--

CREATE TABLE IF NOT EXISTS `friends` (
  `friend_id` int(11) NOT NULL AUTO_INCREMENT,
  `sendreq_mail` text NOT NULL,
  `receivereq_mail` text NOT NULL,
  `friend_status` int(11) NOT NULL,
  PRIMARY KEY (`friend_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=133 ;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`friend_id`, `sendreq_mail`, `receivereq_mail`, `friend_status`) VALUES
(123, 'alex@gmail.com', 'sailakshmiyadlapati@gmail.com', 0),
(125, 'alex@gmail.com', 'pavanadivya@gmail.com', 0),
(126, 'sailakshmiyadlapati@gmail.com', 'krishna@gmail.com', 0),
(127, 'gaganasmart@gmail.com', 'sailakshmiyadlapati@gmail.com', 0),
(128, 'gaganasmart@gmail.com', 'pavanadivya@gmail.com', 0),
(129, 'krishna@gmail.com', 'sailakshmiyadlapati@gmail.com', 0),
(130, 'krishna@gmail.com', 'saimanojkumar@gmail.com', 0),
(131, 'saimanojkumar@gmail.com', 'sailakshmiyadlapati@gmail.com', 0),
(132, 'saimanojkumar@gmail.com', 'pavanadivya@gmail.com', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `user_pass`, `user_email`, `mobile`, `user_gender`, `user_bday`, `user_image`, `register_date`, `last_login`, `status`, `posts`) VALUES
(1, 'Sai Lakshmi', 'Yadlapati', 'sailakshmi', 'sailakshmiyadlapati@gmail.com', 2147483647, 'Female', '1996-12-24', 'user/user_images/Desert.jpg', '2017-03-16', '2017-03-16 00:00:00', 'happy', 'NO'),
(2, 'gagana', 'Marrikuppala', 'gaganasmart', 'gaganasmart@gmail.com', 0, 'Female', '1997-04-04', 'user/user_images/default.jpg', '2027-03-16', '2027-03-16 00:00:00', 'Set a status!', 'Share a post!'),
(3, 'Divya', 'Basani', 'pavanadivya', 'pavanadivya@gmail.com', 0, 'Female', '1997-06-24', 'user/user_images/default.jpg', '2027-03-16', '2027-03-16 00:00:00', 'Set a status!', 'Share a post!'),
(4, 'Sai Manoj', 'Yadlapati', 'saimanoj', 'saimanojkumar@gmail.com', 0, 'Male', '1991-06-28', 'user/user_images/default.jpg', '2027-03-16', '2027-03-16 00:00:00', 'Set a status!', 'Share a post!'),
(5, 'Krishna', 'yadav', 'srikrishna', 'krishna@gmail.com', 0, 'Male', '2016-03-07', 'user/user_images/default.jpg', '2027-03-16', '2027-03-16 00:00:00', 'Set a status!', 'Share a post!'),
(6, 'Alex', 'Russo', 'alexrusso', 'alex@gmail.com', 0, 'Female', '2016-03-01', 'user/user_images/default.jpg', '2027-03-16', '2027-03-16 00:00:00', 'Set a status!', 'Share a post!');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

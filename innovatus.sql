-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2020 at 07:58 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `innovatus`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `address` varchar(250) NOT NULL,
  `dob` date NOT NULL,
  `about` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `phone`, `address`, `dob`, `about`) VALUES
(1, 'rfvgbh', 'a@vb', '981919191', 'rtgyujinhyjk', '2020-09-16', ''),
(2, 'bhbhjb', 'b@b', '54849499', 'lalalal', '2020-09-03', ''),
(3, 'fgbhnj', 'cay@yb', '1181651616', 'vvughkbjnlml,sdfd', '2020-09-16', ''),
(4, 'tgyhuj', 'c@b', '7154', 'cfvygbuhnjmk', '2020-09-05', 'cdfvygbhnjmk,jinhubgyvftvygbhnj'),
(5, 'vgbhnj', 'v@im', '8655', 'njm', '2020-09-16', 'hndfjkm'),
(6, 'a', 'a@a', '46644164', 'aa', '2020-09-07', 'a'),
(7, 'vfbyn', 'edcrfvgbhnj@1', '4866464641', 'm', '2020-09-07', 'd'),
(8, 'fvgh', 'a@h', '5151151515', 'vgbhjnkm', '2020-09-15', 'wedrtfvybgunjmk'),
(9, 'kmkm', 'jnmk@d', '9946555555', 'hjnmk,l', '2020-09-22', 'jkl'),
(10, 'nu', 'a@m', '4851111111', 'fvgbhnj', '2020-09-07', 'fvgbjhnmlk,'),
(11, 'cfvgbh', 'v@n', '7451151516', 'dcfvhgjbh', '2020-09-22', 'jlkmknl'),
(12, 'nuisd', 'b@n', '4888888866', 'cvfygtbuyhnuj', '2020-09-23', 'cfvgbhnjm'),
(13, 'nnnsi', 'rftgyhu@n', '4848911989', 'cvgbhnjmk', '2020-09-08', 'yvygubhnjdmk'),
(14, 'innsok', 'ncvby@n', '4861611515', 'cvgbhnj', '2020-09-16', 'fvgbhnjm'),
(15, 'amnjs', 'vgbh@m', '1516111616', 'gvgbhj', '2020-09-22', 'vgbhnjnb'),
(16, 'anu', 'bn@s', '5151515515', 'ghynujm', '2020-09-13', 'cfvgbhnjm,ajnjnd\r\n,lnenu'),
(17, 'mm', 'bh@kn', '4845484848', 'jbdkbvskh', '2020-09-21', 'gbjhbfskbjbj'),
(18, 's', 'mifemrkmeoem@dd', '4464646644', 'fsdsd', '2020-09-15', 's'),
(19, 'User', 'sample@sample.com', '1234567891', 'aaaa', '2020-09-15', 'aaa'),
(20, 'User1', 'a@a.com', '1234567890', 'aaaaaaa', '2020-09-16', 'aaaaaaa'),
(21, 'nu', 'jnk@mdk', '1654684864', 'gbhjnk', '2020-09-12', 'bh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

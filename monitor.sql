-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: אוקטובר 11, 2022 בזמן 10:05 PM
-- גרסת שרת: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `monitor`
--

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `histories`
--

CREATE TABLE `histories` (
  `id` int(11) NOT NULL,
  `response` varchar(255) NOT NULL,
  `latency` float NOT NULL,
  `requestHealth` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `webserverId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- הוצאת מידע עבור טבלה `histories`
--

INSERT INTO `histories` (`id`, `response`, `latency`, `requestHealth`, `createdAt`, `updatedAt`, `webserverId`) VALUES
(1, '200', 0.258352, 'Unhealthy', '2022-10-10 15:46:51', '2022-10-10 15:46:51', 1),
(2, '200', 0.52003, 'Unhealthy', '2022-10-10 15:46:52', '2022-10-10 15:46:52', NULL),
(3, '200', 1.28872, 'Unhealthy', '2022-10-10 15:46:52', '2022-10-10 15:46:52', 3),
(4, '200', 0.583325, 'Unhealthy', '2022-10-10 15:47:09', '2022-10-10 15:47:09', 1),
(5, '200', 0.843323, 'Unhealthy', '2022-10-10 15:47:09', '2022-10-10 15:47:09', NULL),
(6, '200', 1.61172, 'Unhealthy', '2022-10-10 15:47:10', '2022-10-10 15:47:10', 3),
(7, '200', 0.20978, 'Unhealthy', '2022-10-10 15:48:08', '2022-10-10 15:48:08', 1),
(8, '200', 0.468218, 'Unhealthy', '2022-10-10 15:48:08', '2022-10-10 15:48:08', NULL),
(9, '200', 1.4786, 'Unhealthy', '2022-10-10 15:48:09', '2022-10-10 15:48:09', 3),
(10, '200', 0.26038, 'Unhealthy', '2022-10-10 15:48:35', '2022-10-10 15:48:35', 1),
(11, '200', 0.538305, 'Unhealthy', '2022-10-10 15:48:35', '2022-10-10 15:48:35', NULL),
(12, '200', 1.12655, 'Unhealthy', '2022-10-10 15:48:36', '2022-10-10 15:48:36', 3),
(13, '200', 0.280706, 'Unhealthy', '2022-10-10 15:49:40', '2022-10-10 15:49:41', 1),
(14, '200', 0.597042, 'Unhealthy', '2022-10-10 15:49:41', '2022-10-10 15:49:41', NULL),
(15, '200', 1.21843, 'Unhealthy', '2022-10-10 15:49:41', '2022-10-10 15:49:41', 3),
(16, '200', 0.245189, 'Unhealthy', '2022-10-10 15:50:02', '2022-10-10 15:50:02', 1),
(17, '200', 0.525513, 'Unhealthy', '2022-10-10 15:50:03', '2022-10-10 15:50:03', NULL),
(18, '200', 1.16097, 'Unhealthy', '2022-10-10 15:50:03', '2022-10-10 15:50:03', 3),
(19, '200', 0.246087, 'Healthy', '2022-10-10 15:53:16', '2022-10-10 15:53:16', 1),
(20, '200', 0.502732, 'Healthy', '2022-10-10 15:53:16', '2022-10-10 15:53:16', NULL),
(21, '200', 1.09141, 'Unhealthy', '2022-10-10 15:53:17', '2022-10-10 15:53:17', 3),
(22, '200', 0.221055, 'Healthy', '2022-10-10 15:54:14', '2022-10-10 15:54:14', 1),
(23, '200', 0.473777, 'Healthy', '2022-10-10 15:54:15', '2022-10-10 15:54:15', NULL),
(24, '200', 1.13557, 'Unhealthy', '2022-10-10 15:54:15', '2022-10-10 15:54:15', 3),
(25, '200', 0.228591, 'Healthy', '2022-10-10 15:55:14', '2022-10-10 15:55:14', 1),
(26, '200', 0.484671, 'Healthy', '2022-10-10 15:55:15', '2022-10-10 15:55:15', NULL),
(27, '200', 1.14401, 'Unhealthy', '2022-10-10 15:55:15', '2022-10-10 15:55:15', 3),
(28, '200', 0.227246, 'Healthy', '2022-10-10 15:56:14', '2022-10-10 15:56:14', 1),
(29, '200', 0.641108, 'Healthy', '2022-10-10 15:56:15', '2022-10-10 15:56:15', NULL),
(30, '200', 1.32844, 'Unhealthy', '2022-10-10 15:56:15', '2022-10-10 15:56:15', 3),
(31, '200', 0.220912, 'Healthy', '2022-10-10 15:57:14', '2022-10-10 15:57:14', 1),
(32, '200', 0.484546, 'Healthy', '2022-10-10 15:57:15', '2022-10-10 15:57:15', NULL),
(33, '200', 1.26194, 'Unhealthy', '2022-10-10 15:57:15', '2022-10-10 15:57:15', 3),
(34, '200', 0.238286, 'Healthy', '2022-10-10 15:58:14', '2022-10-10 15:58:14', 1),
(35, '200', 2.72675, 'Unhealthy', '2022-10-10 15:58:17', '2022-10-10 15:58:17', NULL),
(36, '200', 6.93341, 'Unhealthy', '2022-10-10 15:58:21', '2022-10-10 15:58:21', 3),
(37, '200', 0.248397, 'Healthy', '2022-10-10 15:59:14', '2022-10-10 15:59:14', 1),
(38, '200', 0.500772, 'Healthy', '2022-10-10 15:59:15', '2022-10-10 15:59:15', NULL),
(39, '200', 1.84596, 'Unhealthy', '2022-10-10 15:59:16', '2022-10-10 15:59:16', 3),
(40, '200', 0.206344, 'Healthy', '2022-10-10 16:00:14', '2022-10-10 16:00:14', 1),
(41, '200', 0.453238, 'Healthy', '2022-10-10 16:00:15', '2022-10-10 16:00:15', NULL),
(42, '200', 1.33386, 'Unhealthy', '2022-10-10 16:00:15', '2022-10-10 16:00:15', 3),
(43, '200', 0.223229, 'Healthy', '2022-10-10 16:01:14', '2022-10-10 16:01:14', 1),
(44, '200', 6.18203, 'Unhealthy', '2022-10-10 16:01:20', '2022-10-10 16:01:20', NULL),
(45, '200', 7.07605, 'Unhealthy', '2022-10-10 16:01:21', '2022-10-10 16:01:21', 3),
(46, '200', 0.219416, 'Healthy', '2022-10-10 16:02:14', '2022-10-10 16:02:14', 1),
(47, '200', 0.463301, 'Healthy', '2022-10-10 16:02:15', '2022-10-10 16:02:15', NULL),
(48, '200', 1.05018, 'Unhealthy', '2022-10-10 16:02:15', '2022-10-10 16:02:15', 3),
(49, '200', 0.232385, 'Healthy', '2022-10-10 16:03:14', '2022-10-10 16:03:14', 1),
(50, '200', 0.546272, 'Healthy', '2022-10-10 16:03:15', '2022-10-10 16:03:15', NULL),
(51, '200', 1.16405, 'Unhealthy', '2022-10-10 16:03:15', '2022-10-10 16:03:15', 3),
(52, '200', 0.227963, 'Healthy', '2022-10-10 16:04:14', '2022-10-10 16:04:14', 1),
(53, '200', 0.474381, 'Healthy', '2022-10-10 16:04:15', '2022-10-10 16:04:15', NULL),
(54, '200', 1.08256, 'Unhealthy', '2022-10-10 16:04:15', '2022-10-10 16:04:15', 3),
(55, '200', 0.228661, 'Healthy', '2022-10-10 16:05:14', '2022-10-10 16:05:14', 1),
(56, '200', 0.47257, 'Healthy', '2022-10-10 16:05:15', '2022-10-10 16:05:15', NULL),
(57, '200', 2.12768, 'Unhealthy', '2022-10-10 16:05:16', '2022-10-10 16:05:16', 3),
(58, '200', 0.214908, 'Healthy', '2022-10-10 16:06:14', '2022-10-10 16:06:14', 1),
(59, '200', 0.49219, 'Healthy', '2022-10-10 16:06:15', '2022-10-10 16:06:15', NULL),
(60, '200', 1.18852, 'Unhealthy', '2022-10-10 16:06:15', '2022-10-10 16:06:15', 3),
(61, '200', 0.221593, 'Healthy', '2022-10-10 16:07:14', '2022-10-10 16:07:14', 1),
(62, '200', 0.482989, 'Healthy', '2022-10-10 16:07:15', '2022-10-10 16:07:15', NULL),
(63, '200', 1.28266, 'Unhealthy', '2022-10-10 16:07:15', '2022-10-10 16:07:15', 3),
(64, '200', 0.231313, 'Healthy', '2022-10-10 16:08:14', '2022-10-10 16:08:14', 1),
(65, '200', 0.534537, 'Healthy', '2022-10-10 16:08:15', '2022-10-10 16:08:15', NULL),
(66, '200', 1.13708, 'Unhealthy', '2022-10-10 16:08:15', '2022-10-10 16:08:15', 3),
(67, '200', 0.358519, 'Healthy', '2022-10-10 16:09:15', '2022-10-10 16:09:15', 1),
(68, '200', 0.609699, 'Healthy', '2022-10-10 16:09:15', '2022-10-10 16:09:15', NULL),
(69, '200', 1.60283, 'Unhealthy', '2022-10-10 16:09:16', '2022-10-10 16:09:16', 3),
(70, '200', 0.231117, 'Healthy', '2022-10-10 16:10:14', '2022-10-10 16:10:14', 1),
(71, '200', 0.484239, 'Healthy', '2022-10-10 16:10:15', '2022-10-10 16:10:15', NULL),
(72, '200', 1.15308, 'Unhealthy', '2022-10-10 16:10:15', '2022-10-10 16:10:15', 3),
(73, '200', 0.263839, 'Healthy', '2022-10-10 16:11:14', '2022-10-10 16:11:14', 1),
(74, '200', 0.516726, 'Healthy', '2022-10-10 16:11:15', '2022-10-10 16:11:15', NULL),
(75, '200', 1.21348, 'Unhealthy', '2022-10-10 16:11:15', '2022-10-10 16:11:15', 3),
(76, '200', 0.224384, 'Healthy', '2022-10-10 16:12:14', '2022-10-10 16:12:14', 1),
(77, '200', 0.475593, 'Healthy', '2022-10-10 16:12:15', '2022-10-10 16:12:15', NULL),
(78, '200', 1.19107, 'Unhealthy', '2022-10-10 16:12:15', '2022-10-10 16:12:15', 3),
(79, '200', 0.226013, 'Healthy', '2022-10-10 16:13:14', '2022-10-10 16:13:14', 1),
(80, '200', 0.488257, 'Healthy', '2022-10-10 16:13:15', '2022-10-10 16:13:15', NULL),
(81, '200', 1.3429, 'Unhealthy', '2022-10-10 16:13:16', '2022-10-10 16:13:16', 3),
(82, '200', 0.228337, 'Healthy', '2022-10-10 16:14:14', '2022-10-10 16:14:14', 1),
(83, '200', 0.488626, 'Healthy', '2022-10-10 16:14:15', '2022-10-10 16:14:15', NULL),
(84, '200', 1.07407, 'Unhealthy', '2022-10-10 16:14:15', '2022-10-10 16:14:15', 3),
(85, '200', 0.248359, 'Healthy', '2022-10-10 16:15:14', '2022-10-10 16:15:14', 1),
(86, '200', 0.521482, 'Healthy', '2022-10-10 16:15:15', '2022-10-10 16:15:15', NULL),
(87, '200', 1.29675, 'Unhealthy', '2022-10-10 16:15:16', '2022-10-10 16:15:16', 3),
(88, '200', 0.214203, 'Healthy', '2022-10-10 16:16:14', '2022-10-10 16:16:14', 1),
(89, '200', 0.464124, 'Healthy', '2022-10-10 16:16:15', '2022-10-10 16:16:15', NULL),
(90, '200', 1.04755, 'Unhealthy', '2022-10-10 16:16:15', '2022-10-10 16:16:15', 3),
(91, '200', 0.245586, 'Healthy', '2022-10-10 16:17:14', '2022-10-10 16:17:14', 1),
(92, '200', 0.489594, 'Healthy', '2022-10-10 16:17:15', '2022-10-10 16:17:15', NULL),
(93, '200', 1.2754, 'Unhealthy', '2022-10-10 16:17:16', '2022-10-10 16:17:16', 3),
(94, '200', 0.225916, 'Healthy', '2022-10-10 16:18:14', '2022-10-10 16:18:14', 1),
(95, '200', 0.500893, 'Healthy', '2022-10-10 16:18:15', '2022-10-10 16:18:15', NULL),
(96, '200', 1.19361, 'Unhealthy', '2022-10-10 16:18:15', '2022-10-10 16:18:15', 3),
(97, '200', 0.213704, 'Healthy', '2022-10-10 16:19:14', '2022-10-10 16:19:14', 1),
(98, '200', 0.457828, 'Healthy', '2022-10-10 16:19:15', '2022-10-10 16:19:15', NULL),
(99, '200', 1.12771, 'Unhealthy', '2022-10-10 16:19:15', '2022-10-10 16:19:15', 3),
(100, '200', 0.228446, 'Healthy', '2022-10-10 16:20:14', '2022-10-10 16:20:14', 1),
(101, '200', 0.483017, 'Healthy', '2022-10-10 16:20:15', '2022-10-10 16:20:15', NULL),
(102, '200', 1.1192, 'Unhealthy', '2022-10-10 16:20:15', '2022-10-10 16:20:15', 3),
(103, '200', 0.224708, 'Healthy', '2022-10-10 16:21:14', '2022-10-10 16:21:14', 1),
(104, '200', 0.496675, 'Healthy', '2022-10-10 16:21:15', '2022-10-10 16:21:15', NULL),
(105, '200', 1.14139, 'Unhealthy', '2022-10-10 16:21:15', '2022-10-10 16:21:15', 3),
(106, '200', 0.245116, 'Healthy', '2022-10-11 09:05:00', '2022-10-11 09:05:00', 1),
(107, '200', 0.551009, 'Healthy', '2022-10-11 09:05:00', '2022-10-11 09:05:00', NULL),
(108, '200', 1.41675, 'Unhealthy', '2022-10-11 09:05:01', '2022-10-11 09:05:01', 3),
(109, '200', 0.231932, 'Healthy', '2022-10-11 09:06:01', '2022-10-11 09:06:01', 1),
(110, '200', 0.481589, 'Healthy', '2022-10-11 09:06:01', '2022-10-11 09:06:01', NULL),
(111, '200', 1.14083, 'Unhealthy', '2022-10-11 09:06:02', '2022-10-11 09:06:02', 3),
(112, '200', 0.254987, 'Healthy', '2022-10-11 09:18:00', '2022-10-11 09:18:00', 1),
(113, '200', 0.589944, 'Healthy', '2022-10-11 09:18:00', '2022-10-11 09:18:00', NULL),
(114, '200', 1.23642, 'Unhealthy', '2022-10-11 09:18:01', '2022-10-11 09:18:01', 3),
(115, '200', 0.23946, 'Healthy', '2022-10-11 09:19:00', '2022-10-11 09:19:00', 1),
(116, '200', 0.588587, 'Healthy', '2022-10-11 09:19:00', '2022-10-11 09:19:00', NULL),
(117, '200', 1.18555, 'Unhealthy', '2022-10-11 09:19:01', '2022-10-11 09:19:01', 3),
(118, '200', 0.227344, 'Healthy', '2022-10-11 09:20:01', '2022-10-11 09:20:01', 1),
(119, '200', 0.549177, 'Healthy', '2022-10-11 09:20:01', '2022-10-11 09:20:01', NULL),
(120, '200', 1.14769, 'Unhealthy', '2022-10-11 09:20:01', '2022-10-11 09:20:01', 3),
(121, '200', 0.249528, 'Healthy', '2022-10-11 09:21:00', '2022-10-11 09:21:00', 1),
(122, '200', 0.604894, 'Healthy', '2022-10-11 09:21:00', '2022-10-11 09:21:00', NULL),
(123, '200', 1.31289, 'Unhealthy', '2022-10-11 09:21:01', '2022-10-11 09:21:01', 3),
(124, '200', 0.261491, 'Healthy', '2022-10-11 09:26:00', '2022-10-11 09:26:00', 1),
(125, '200', 0.596009, 'Healthy', '2022-10-11 09:26:01', '2022-10-11 09:26:01', NULL),
(126, '200', 1.19308, 'Unhealthy', '2022-10-11 09:26:01', '2022-10-11 09:26:01', 3),
(127, '200', 0.21467, 'Healthy', '2022-10-11 09:27:01', '2022-10-11 09:27:01', 1),
(128, '200', 0.544599, 'Healthy', '2022-10-11 09:27:01', '2022-10-11 09:27:01', NULL),
(129, '200', 1.15979, 'Unhealthy', '2022-10-11 09:27:02', '2022-10-11 09:27:02', 3),
(130, '200', 0.208547, 'Healthy', '2022-10-11 09:28:00', '2022-10-11 09:28:00', 1),
(131, '200', 0.526895, 'Healthy', '2022-10-11 09:28:01', '2022-10-11 09:28:01', NULL),
(132, '200', 1.11257, 'Unhealthy', '2022-10-11 09:28:01', '2022-10-11 09:28:01', 3),
(133, '200', 0.252285, 'Healthy', '2022-10-11 09:32:01', '2022-10-11 09:32:01', 1),
(134, '200', 0.544304, 'Healthy', '2022-10-11 09:32:01', '2022-10-11 09:32:01', NULL),
(135, '200', 1.22343, 'Unhealthy', '2022-10-11 09:32:01', '2022-10-11 09:32:01', 3),
(136, '200', 0.251516, 'Healthy', '2022-10-11 09:47:00', '2022-10-11 09:47:00', 1),
(137, '200', 0.535873, 'Healthy', '2022-10-11 09:47:00', '2022-10-11 09:47:00', NULL),
(138, '200', 1.33926, 'Unhealthy', '2022-10-11 09:47:01', '2022-10-11 09:47:01', 3),
(139, '200', 0.25205, 'Healthy', '2022-10-11 10:00:00', '2022-10-11 10:00:00', 1),
(140, '200', 0.521257, 'Healthy', '2022-10-11 10:00:01', '2022-10-11 10:00:01', NULL),
(141, '200', 1.2091, 'Unhealthy', '2022-10-11 10:00:01', '2022-10-11 10:00:01', 3),
(142, '200', 0.25449, 'Healthy', '2022-10-11 10:03:00', '2022-10-11 10:03:00', 1),
(143, '200', 0.53093, 'Healthy', '2022-10-11 10:03:00', '2022-10-11 10:03:00', NULL),
(144, '200', 1.31686, 'Unhealthy', '2022-10-11 10:03:01', '2022-10-11 10:03:01', 3),
(145, '200', 0.2297, 'Healthy', '2022-10-11 10:06:00', '2022-10-11 10:06:00', 1),
(146, '200', 1.00485, 'Unhealthy', '2022-10-11 10:06:01', '2022-10-11 10:06:01', 3),
(147, '200', 0.221739, 'Healthy', '2022-10-11 10:07:00', '2022-10-11 10:07:00', 1),
(148, '200', 0.901066, 'Healthy', '2022-10-11 10:07:01', '2022-10-11 10:07:01', 3),
(149, '200', 1.26846, 'Unhealthy', '2022-10-11 10:08:01', '2022-10-11 10:08:01', 1),
(150, '200', 1.9369, 'Unhealthy', '2022-10-11 10:08:02', '2022-10-11 10:08:02', 3),
(151, '200', 0.287393, 'Healthy', '2022-10-11 10:10:00', '2022-10-11 10:10:00', 1),
(152, '200', 0.949641, 'Healthy', '2022-10-11 10:10:01', '2022-10-11 10:10:01', 3),
(153, '200', 1.2145, 'Unhealthy', '2022-10-11 10:10:01', '2022-10-11 10:10:01', 4),
(154, '200', 0.262671, 'Healthy', '2022-10-11 10:21:01', '2022-10-11 10:21:01', 1),
(155, '200', 1.15018, 'Unhealthy', '2022-10-11 10:21:01', '2022-10-11 10:21:02', 3),
(156, '200', 1.40492, 'Unhealthy', '2022-10-11 10:21:02', '2022-10-11 10:21:02', 4),
(157, '200', 0.225823, 'Healthy', '2022-10-11 10:22:00', '2022-10-11 10:22:00', 1),
(158, '200', 0.831564, 'Healthy', '2022-10-11 10:22:01', '2022-10-11 10:22:01', 3),
(159, '200', 1.15615, 'Unhealthy', '2022-10-11 10:22:01', '2022-10-11 10:22:01', 4),
(160, '200', 0.25905, 'Healthy', '2022-10-11 10:23:00', '2022-10-11 10:23:00', 1),
(161, '200', 1.07744, 'Unhealthy', '2022-10-11 10:23:01', '2022-10-11 10:23:01', 3),
(162, '200', 1.35883, 'Unhealthy', '2022-10-11 10:23:01', '2022-10-11 10:23:01', 4),
(163, '200', 0.253548, 'Healthy', '2022-10-11 10:28:00', '2022-10-11 10:28:00', 1),
(164, '200', 0.857618, 'Healthy', '2022-10-11 10:28:01', '2022-10-11 10:28:01', 3),
(165, '200', 1.12044, 'Unhealthy', '2022-10-11 10:28:01', '2022-10-11 10:28:01', 4),
(166, '200', 0.287261, 'Healthy', '2022-10-11 10:29:00', '2022-10-11 10:29:00', 1),
(167, '200', 0.990112, 'Healthy', '2022-10-11 10:29:01', '2022-10-11 10:29:01', 3),
(168, '200', 1.24548, 'Unhealthy', '2022-10-11 10:29:01', '2022-10-11 10:29:01', 4),
(169, '200', 0.213956, 'Healthy', '2022-10-11 10:30:01', '2022-10-11 10:30:01', 1),
(170, '200', 1.98317, 'Unhealthy', '2022-10-11 10:30:02', '2022-10-11 10:30:02', 3),
(171, '200', 2.23725, 'Unhealthy', '2022-10-11 10:30:03', '2022-10-11 10:30:03', 4),
(172, '200', 0.224508, 'Healthy', '2022-10-11 10:31:00', '2022-10-11 10:31:00', 1),
(173, '200', 0.809468, 'Healthy', '2022-10-11 10:31:01', '2022-10-11 10:31:01', 3),
(174, '200', 1.17168, 'Unhealthy', '2022-10-11 10:31:01', '2022-10-11 10:31:01', 4),
(175, '200', 0.231139, 'Healthy', '2022-10-11 10:32:01', '2022-10-11 10:32:01', 1),
(176, '200', 0.990692, 'Healthy', '2022-10-11 10:32:01', '2022-10-11 10:32:01', 3),
(177, '200', 1.24736, 'Unhealthy', '2022-10-11 10:32:02', '2022-10-11 10:32:02', 4),
(178, '200', 0.244209, 'Healthy', '2022-10-11 10:35:00', '2022-10-11 10:35:00', 1),
(179, '200', 1.01593, 'Unhealthy', '2022-10-11 10:35:01', '2022-10-11 10:35:01', 3),
(180, '200', 1.28529, 'Unhealthy', '2022-10-11 10:35:01', '2022-10-11 10:35:01', 4),
(181, '200', 0.241544, 'Healthy', '2022-10-11 10:36:01', '2022-10-11 10:36:01', 1),
(182, '200', 0.882913, 'Healthy', '2022-10-11 10:36:01', '2022-10-11 10:36:01', 3),
(183, '200', 1.12671, 'Unhealthy', '2022-10-11 10:36:02', '2022-10-11 10:36:02', 4),
(184, '200', 0.363349, 'Healthy', '2022-10-11 13:52:00', '2022-10-11 13:52:00', 1),
(185, '200', 1.21033, 'Healthy', '2022-10-11 13:52:01', '2022-10-11 13:52:01', 3),
(186, '200', 1.53768, 'Healthy', '2022-10-11 13:52:01', '2022-10-11 13:52:01', 4),
(187, '200', 0.222165, 'Healthy', '2022-10-11 13:53:01', '2022-10-11 13:53:01', 1),
(188, '200', 1.1805, 'Healthy', '2022-10-11 13:53:02', '2022-10-11 13:53:02', 3),
(189, '200', 1.49975, 'Healthy', '2022-10-11 13:53:02', '2022-10-11 13:53:02', 4),
(190, '200', 0.230046, 'Healthy', '2022-10-11 13:54:00', '2022-10-11 13:54:00', 1),
(191, '200', 0.954722, 'Healthy', '2022-10-11 13:54:01', '2022-10-11 13:54:01', 3),
(192, '200', 1.25224, 'Healthy', '2022-10-11 13:54:01', '2022-10-11 13:54:01', 4),
(193, '200', 0.232085, 'Healthy', '2022-10-11 13:55:00', '2022-10-11 13:55:00', 1),
(194, '200', 0.911807, 'Healthy', '2022-10-11 13:55:01', '2022-10-11 13:55:01', 3),
(195, '200', 1.16468, 'Healthy', '2022-10-11 13:55:01', '2022-10-11 13:55:01', 4),
(196, '200', 0.311, 'Healthy', '2022-10-11 14:00:00', '2022-10-11 14:00:00', 1),
(197, '200', 1.104, 'Healthy', '2022-10-11 14:00:01', '2022-10-11 14:00:01', 3),
(198, '200', 1.38, 'Healthy', '2022-10-11 14:00:01', '2022-10-11 14:00:01', 4),
(199, '200', 0.234, 'Healthy', '2022-10-11 14:01:01', '2022-10-11 14:01:01', 1),
(200, '200', 0.9, 'Healthy', '2022-10-11 14:01:01', '2022-10-11 14:01:01', 3),
(201, '200', 1.173, 'Healthy', '2022-10-11 14:01:01', '2022-10-11 14:01:01', 4),
(202, '200', 0.255, 'Healthy', '2022-10-11 14:02:00', '2022-10-11 14:02:00', 1),
(203, '200', 1.289, 'Healthy', '2022-10-11 14:02:01', '2022-10-11 14:02:01', 3),
(204, '200', 1.546, 'Healthy', '2022-10-11 14:02:01', '2022-10-11 14:02:01', 4),
(205, '200', 0.252, 'Healthy', '2022-10-11 14:03:01', '2022-10-11 14:03:01', 1),
(206, '200', 1.048, 'Healthy', '2022-10-11 14:03:02', '2022-10-11 14:03:02', 3),
(207, '200', 1.345, 'Healthy', '2022-10-11 14:03:02', '2022-10-11 14:03:02', 4),
(208, '200', 0.241, 'Healthy', '2022-10-11 14:04:00', '2022-10-11 14:04:00', 1),
(209, '200', 0.877, 'Healthy', '2022-10-11 14:04:01', '2022-10-11 14:04:01', 3),
(210, '200', 1.157, 'Healthy', '2022-10-11 14:04:01', '2022-10-11 14:04:01', 4),
(211, '200', 0.276, 'Healthy', '2022-10-11 14:05:00', '2022-10-11 14:05:00', 1),
(212, '200', 1.155, 'Healthy', '2022-10-11 14:05:01', '2022-10-11 14:05:01', 3),
(213, '200', 1.442, 'Healthy', '2022-10-11 14:05:01', '2022-10-11 14:05:01', 4),
(214, '200', 0.241, 'Healthy', '2022-10-11 14:06:00', '2022-10-11 14:06:00', 1),
(215, '200', 0.924, 'Healthy', '2022-10-11 14:06:01', '2022-10-11 14:06:01', 3),
(216, '200', 1.168, 'Healthy', '2022-10-11 14:06:01', '2022-10-11 14:06:01', 4),
(217, '200', 0.326, 'Healthy', '2022-10-11 14:07:00', '2022-10-11 14:07:00', 1),
(218, '200', 1.016, 'Healthy', '2022-10-11 14:07:01', '2022-10-11 14:07:01', 3),
(219, '200', 1.278, 'Healthy', '2022-10-11 14:07:01', '2022-10-11 14:07:01', 4),
(220, '200', 0.24, 'Healthy', '2022-10-11 14:08:00', '2022-10-11 14:08:00', 1),
(221, '200', 1.109, 'Healthy', '2022-10-11 14:08:01', '2022-10-11 14:08:01', 3),
(222, '200', 1.384, 'Healthy', '2022-10-11 14:08:02', '2022-10-11 14:08:02', 4),
(223, '200', 0.231, 'Healthy', '2022-10-11 14:09:00', '2022-10-11 14:09:00', 1),
(224, '200', 2.008, 'Healthy', '2022-10-11 14:09:02', '2022-10-11 14:09:02', 3),
(225, '200', 2.329, 'Healthy', '2022-10-11 14:09:02', '2022-10-11 14:09:02', 4),
(226, '200', 0.23, 'Healthy', '2022-10-11 14:10:00', '2022-10-11 14:10:00', 1),
(227, '200', 0.832, 'Healthy', '2022-10-11 14:10:01', '2022-10-11 14:10:01', 3),
(228, '200', 1.135, 'Healthy', '2022-10-11 14:10:01', '2022-10-11 14:10:01', 4),
(229, '200', 0.242, 'Healthy', '2022-10-11 14:11:00', '2022-10-11 14:11:00', 1),
(230, '200', 0.882, 'Healthy', '2022-10-11 14:11:01', '2022-10-11 14:11:01', 3),
(231, '200', 1.143, 'Healthy', '2022-10-11 14:11:01', '2022-10-11 14:11:01', 4),
(232, '200', 0.249, 'Healthy', '2022-10-11 14:12:01', '2022-10-11 14:12:01', 1),
(233, '200', 1.153, 'Healthy', '2022-10-11 14:12:01', '2022-10-11 14:12:01', 3),
(234, '200', 1.437, 'Healthy', '2022-10-11 14:12:02', '2022-10-11 14:12:02', 4),
(235, '200', 0.264, 'Healthy', '2022-10-11 19:00:00', '2022-10-11 19:00:00', 1),
(236, '200', 1.089, 'Healthy', '2022-10-11 19:00:01', '2022-10-11 19:00:01', 3),
(237, '200', 1.351, 'Healthy', '2022-10-11 19:00:01', '2022-10-11 19:00:01', 4),
(238, '200', 0.212, 'Healthy', '2022-10-11 19:01:01', '2022-10-11 19:01:01', 1),
(239, '200', 0.875, 'Healthy', '2022-10-11 19:01:01', '2022-10-11 19:01:01', 3),
(240, '200', 1.132, 'Healthy', '2022-10-11 19:01:02', '2022-10-11 19:01:02', 4),
(241, '200', 0.232, 'Healthy', '2022-10-11 19:02:00', '2022-10-11 19:02:00', 1),
(242, '200', 0.849, 'Healthy', '2022-10-11 19:02:01', '2022-10-11 19:02:01', 3),
(243, '200', 1.396, 'Healthy', '2022-10-11 19:02:02', '2022-10-11 19:02:02', 4),
(244, '200', 0.225, 'Healthy', '2022-10-11 19:03:00', '2022-10-11 19:03:00', 1),
(245, '200', 0.873, 'Healthy', '2022-10-11 19:03:01', '2022-10-11 19:03:01', 3),
(246, '200', 2.706, 'Healthy', '2022-10-11 19:03:02', '2022-10-11 19:03:02', 4),
(247, '200', 0.211, 'Healthy', '2022-10-11 19:04:01', '2022-10-11 19:04:01', 1),
(248, '200', 0.8, 'Healthy', '2022-10-11 19:04:01', '2022-10-11 19:04:01', 3),
(249, '200', 1.046, 'Healthy', '2022-10-11 19:04:01', '2022-10-11 19:04:01', 4),
(250, '200', 0.231, 'Healthy', '2022-10-11 19:05:00', '2022-10-11 19:05:00', 1),
(251, '200', 0.864, 'Healthy', '2022-10-11 19:05:00', '2022-10-11 19:05:00', 3),
(252, '200', 1.141, 'Healthy', '2022-10-11 19:05:01', '2022-10-11 19:05:01', 4),
(253, '200', 0.251, 'Healthy', '2022-10-11 19:06:00', '2022-10-11 19:06:00', 1),
(254, '200', 0.86, 'Healthy', '2022-10-11 19:06:01', '2022-10-11 19:06:01', 3),
(255, '200', 1.124, 'Healthy', '2022-10-11 19:06:01', '2022-10-11 19:06:01', 4),
(256, '200', 0.224, 'Healthy', '2022-10-11 19:07:00', '2022-10-11 19:07:00', 1),
(257, '200', 0.837, 'Healthy', '2022-10-11 19:07:00', '2022-10-11 19:07:00', 3),
(258, '200', 1.145, 'Healthy', '2022-10-11 19:07:01', '2022-10-11 19:07:01', 4),
(259, '200', 0.853, 'Healthy', '2022-10-11 19:50:01', '2022-10-11 19:50:01', 1),
(260, '200', 3.167, 'Healthy', '2022-10-11 19:50:04', '2022-10-11 19:50:04', 3),
(261, '200', 3.432, 'Healthy', '2022-10-11 19:50:04', '2022-10-11 19:50:04', 4),
(262, '200', 0.212, 'Healthy', '2022-10-11 19:51:00', '2022-10-11 19:51:00', 1),
(263, '200', 0.939, 'Healthy', '2022-10-11 19:51:01', '2022-10-11 19:51:01', 3),
(264, '200', 1.195, 'Healthy', '2022-10-11 19:51:01', '2022-10-11 19:51:01', 4),
(265, '200', 0.238, 'Healthy', '2022-10-11 19:52:01', '2022-10-11 19:52:01', 1),
(266, '200', 0.947, 'Healthy', '2022-10-11 19:52:01', '2022-10-11 19:52:01', 3),
(267, '200', 1.2, 'Healthy', '2022-10-11 19:52:02', '2022-10-11 19:52:02', 4),
(268, '200', 0.225, 'Healthy', '2022-10-11 19:53:00', '2022-10-11 19:53:00', 1),
(269, '200', 0.907, 'Healthy', '2022-10-11 19:53:01', '2022-10-11 19:53:01', 3),
(270, '200', 1.163, 'Healthy', '2022-10-11 19:53:01', '2022-10-11 19:53:01', 4),
(271, '200', 0.245, 'Healthy', '2022-10-11 19:54:00', '2022-10-11 19:54:00', 1),
(272, '200', 0.86, 'Healthy', '2022-10-11 19:54:01', '2022-10-11 19:54:01', 3),
(273, '200', 1.116, 'Healthy', '2022-10-11 19:54:01', '2022-10-11 19:54:01', 4),
(274, '200', 0.235, 'Healthy', '2022-10-11 19:55:01', '2022-10-11 19:55:01', 1),
(275, '200', 1.451, 'Healthy', '2022-10-11 19:55:02', '2022-10-11 19:55:02', 3),
(276, '200', 1.741, 'Healthy', '2022-10-11 19:55:02', '2022-10-11 19:55:02', 4),
(277, '200', 0.228, 'Healthy', '2022-10-11 19:56:00', '2022-10-11 19:56:00', 1),
(278, '200', 0.896, 'Healthy', '2022-10-11 19:56:01', '2022-10-11 19:56:01', 3),
(279, '200', 1.159, 'Healthy', '2022-10-11 19:56:01', '2022-10-11 19:56:01', 4),
(280, '200', 0.216, 'Healthy', '2022-10-11 19:57:01', '2022-10-11 19:57:01', 1),
(281, '200', 0.834, 'Healthy', '2022-10-11 19:57:01', '2022-10-11 19:57:01', 3),
(282, '200', 1.119, 'Healthy', '2022-10-11 19:57:02', '2022-10-11 19:57:02', 4),
(283, '200', 0.237, 'Healthy', '2022-10-11 19:58:00', '2022-10-11 19:58:00', 1),
(284, '200', 0.847, 'Healthy', '2022-10-11 19:58:01', '2022-10-11 19:58:01', 3),
(285, '200', 1.11, 'Healthy', '2022-10-11 19:58:01', '2022-10-11 19:58:01', 4),
(286, '200', 0.223, 'Healthy', '2022-10-11 19:59:00', '2022-10-11 19:59:00', 1),
(287, '200', 0.828, 'Healthy', '2022-10-11 19:59:00', '2022-10-11 19:59:00', 3),
(288, '200', 1.103, 'Healthy', '2022-10-11 19:59:01', '2022-10-11 19:59:01', 4),
(289, '200', 0.218, 'Healthy', '2022-10-11 20:00:00', '2022-10-11 20:00:00', 1),
(290, '200', 0.819, 'Healthy', '2022-10-11 20:00:01', '2022-10-11 20:00:01', 3),
(291, '200', 1.103, 'Healthy', '2022-10-11 20:00:01', '2022-10-11 20:00:01', 4),
(292, '200', 0.235, 'Healthy', '2022-10-11 20:01:00', '2022-10-11 20:01:00', 1),
(293, '200', 1.039, 'Healthy', '2022-10-11 20:01:01', '2022-10-11 20:01:01', 3),
(294, '200', 1.298, 'Healthy', '2022-10-11 20:01:01', '2022-10-11 20:01:01', 4),
(295, '200', 0.223, 'Healthy', '2022-10-11 20:02:00', '2022-10-11 20:02:00', 1),
(296, '200', 1.125, 'Healthy', '2022-10-11 20:02:01', '2022-10-11 20:02:01', 3),
(297, '200', 1.392, 'Healthy', '2022-10-11 20:02:01', '2022-10-11 20:02:01', 4),
(298, '200', 0.232, 'Healthy', '2022-10-11 20:03:00', '2022-10-11 20:03:00', 1),
(299, '200', 0.851, 'Healthy', '2022-10-11 20:03:01', '2022-10-11 20:03:01', 3),
(300, '200', 1.098, 'Healthy', '2022-10-11 20:03:01', '2022-10-11 20:03:01', 4),
(301, '200', 0.224, 'Healthy', '2022-10-11 20:04:00', '2022-10-11 20:04:00', 1),
(302, '200', 0.915, 'Healthy', '2022-10-11 20:04:01', '2022-10-11 20:04:01', 3),
(303, '200', 1.166, 'Healthy', '2022-10-11 20:04:01', '2022-10-11 20:04:01', 4),
(304, '200', 0.237, 'Healthy', '2022-10-11 20:05:01', '2022-10-11 20:05:01', 1),
(305, '200', 0.99, 'Healthy', '2022-10-11 20:05:01', '2022-10-11 20:05:01', 3),
(306, '200', 1.251, 'Healthy', '2022-10-11 20:05:02', '2022-10-11 20:05:02', 4);

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `webservers`
--

CREATE TABLE `webservers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `URL` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- הוצאת מידע עבור טבלה `webservers`
--

INSERT INTO `webservers` (`id`, `name`, `URL`, `createdAt`, `updatedAt`) VALUES
(1, 'youtube', 'www.youtube.com', '2022-10-10 15:46:16', '2022-10-10 15:46:16'),
(3, 'waze', 'www.waze.com', '2022-10-10 15:46:47', '2022-10-10 15:46:47'),
(4, 'google', 'www.google.com', '2022-10-11 10:09:22', '2022-10-11 19:54:20');

--
-- Indexes for dumped tables
--

--
-- אינדקסים לטבלה `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webserverId` (`webserverId`);

--
-- אינדקסים לטבלה `webservers`
--
ALTER TABLE `webservers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT for table `webservers`
--
ALTER TABLE `webservers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- הגבלות לטבלאות שהוצאו
--

--
-- הגבלות לטבלה `histories`
--
ALTER TABLE `histories`
  ADD CONSTRAINT `histories_ibfk_1` FOREIGN KEY (`webserverId`) REFERENCES `webservers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

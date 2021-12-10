-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th12 10, 2021 lúc 07:52 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `social_network`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblComment`
--

CREATE TABLE `tblComment` (
  `id` int(11) NOT NULL,
  `post_body` text COLLATE utf8_unicode_ci NOT NULL,
  `posted_by` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `posted_to` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblComment`
--

INSERT INTO `tblComment` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(1, 'Ga vl', 'bao_long', 'duy_vu', '2021-11-25 00:27:44', 'no', 76),
(2, 'Toxic vl', 'bao_long', 'bao_gia', '2021-11-25 00:29:06', 'no', 74),
(3, 'Chua', 'bao_long', 'bao_gia', '2021-11-25 01:02:00', 'no', 73),
(4, 'ok fine', 'bao_long', 'bao_gia', '2021-11-25 01:14:03', 'no', 72),
(5, 'On ko ?', 'bao_long', 'duy_vu', '2021-11-25 01:17:05', 'no', 76),
(6, 'Fix dc r tks mn nhe!', 'bao_long', 'bao_long', '2021-11-25 02:51:25', 'no', 81),
(7, 'good morning', 'bao_long', 'phuc_hoang', '2021-11-27 14:36:38', 'no', 83),
(8, 'Greeting', 'ho_nguyen', 'bao_gia', '2021-11-27 15:48:39', 'no', 84),
(9, 'Ok o', 'ho_nguyen', 'duy_vu', '2021-11-27 15:53:11', 'no', 86),
(10, 'Khong', 'ho_nguyen', 'bao_gia', '2021-11-27 15:53:19', 'no', 72),
(11, 'Gau gau gau', 'ho_nguyen', 'bao_gia', '2021-11-27 15:53:25', 'no', 72),
(13, 'Nice to meet you', 'hoang_loc', 'duong_vu', '2021-12-05 03:44:13', 'no', 122),
(14, 'Ok o oi', 'duy_vu_1', 'ho_nguyen', '2021-12-05 04:34:54', 'no', 90),
(15, 'OK 9h gg meet nhe!', 'duy_vu', 'bao_long', '2021-12-06 05:04:23', 'no', 88),
(16, 'That was awesome', 'bao_gia', 'duy_vu_1', '2021-12-06 20:24:45', 'no', 126),
(17, 'Thoi o oi', 'bao_gia', 'bao_long', '2021-12-06 20:25:00', 'no', 119),
(18, 'fuck you', 'bao_long', 'ho_nguyen', '2021-12-07 00:55:31', 'no', 85),
(19, 'Nhat o nhe @hoang_loc :(', 'bao_long', 'yen_nhi', '2021-12-07 02:34:23', 'no', 131),
(20, 'Co t day :3', 'bao_long', 'duong_vu', '2021-12-07 02:34:38', 'no', 128),
(21, 'Cha the ak :3', 'bao_long', 'ho_nguyen', '2021-12-07 02:34:50', 'no', 120),
(22, 'Chuc mung o nhe', 'duy_vu', 'yen_nhi', '2021-12-07 02:38:14', 'no', 131),
(23, 'Nguoi yeu xinh the nay toi con them nua la o', 'duy_vu', 'yen_nhi', '2021-12-07 02:38:25', 'no', 131),
(24, 'Nice to meet you', 'duy_vu', 'thu_huong', '2021-12-07 05:21:19', 'no', 132),
(25, '1tr bao phong ?', 'duy_vu', 'thu_huong', '2021-12-07 15:08:02', 'no', 132),
(26, 'Co ny r ak :(', 'duy_vu', 'yen_nhi', '2021-12-07 15:09:04', 'no', 129),
(27, 'Vu tuoi gi ???', 'duy_vu', 'duong_vu', '2021-12-07 15:10:21', 'no', 128),
(28, 'Ke m !!!', 'duy_vu', 'bao_gia', '2021-12-07 15:10:58', 'no', 127),
(29, 'Welcome Ralf Rangnick', 'duy_vu', 'duy_vu', '2021-12-07 15:11:42', 'no', 62),
(30, 'Deo :D', 'duy_vu', 'bao_long', '2021-12-07 15:11:55', 'no', 58),
(31, 'Dc ko ban oi ?', 'thu_huong', 'duy_vu', '2021-12-07 15:15:19', 'no', 93),
(32, 'Dc ko em gai ?', 'duy_vu', 'thu_huong', '2021-12-07 15:16:51', 'no', 132),
(33, 'Xam lol', 'thu_huong', 'duy_vu', '2021-12-07 16:29:05', 'no', 86),
(34, 'Ga', 'thu_huong', 'duy_vu', '2021-12-07 16:29:19', 'no', 76),
(35, 'Rac !', 'thu_huong', 'duy_vu', '2021-12-07 16:29:32', 'no', 70),
(36, 'Em suong qua!', 'thu_huong', 'duy_vu', '2021-12-07 16:29:40', 'no', 69),
(37, 'Em rat chao anh', 'thu_huong', 'duy_vu', '2021-12-07 16:30:50', 'no', 49),
(38, 'Deo dua dau', 'thu_huong', 'thu_huong', '2021-12-07 18:24:01', 'no', 132),
(39, 'Cut me may di!', 'thu_huong', 'thu_huong', '2021-12-07 18:24:08', 'no', 132),
(40, 'My twin <3', 'thu_huong', 'hoai_anh', '2021-12-07 18:48:04', 'no', 134),
(41, 'love you too', 'bao_long', 'thu_huong', '2021-12-09 10:33:55', 'no', 135),
(42, 'ke mm', 'dat_thanh', 'bao_gia', '2021-12-09 12:23:43', 'no', 105),
(43, 'Nay co be oi', 'bao_long', 'hoai_anh', '2021-12-10 01:32:52', 'no', 138),
(44, 'Yeu em qua', 'dat_thanh', 'hoai_anh', '2021-12-10 01:51:42', 'no', 138),
(45, 'Ga vl', 'duy_vu', 'dat_thanh', '2021-12-10 02:52:42', 'no', 144),
(46, 'Xinh qua', 'duy_vu', 'thuy_tien', '2021-12-10 04:40:17', 'no', 148);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblFriendRequest`
--

CREATE TABLE `tblFriendRequest` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_from` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblFriendRequest`
--

INSERT INTO `tblFriendRequest` (`id`, `user_to`, `user_from`) VALUES
(22, 'ho_nguyen', 'duong_vu'),
(24, 'hoang_loc', 'yen_nhi'),
(26, 'bao_gia', 'yen_nhi'),
(28, 'duong_vu', 'yen_nhi'),
(29, 'duy_vu_1', 'yen_nhi'),
(31, 'ho_nguyen', 'yen_nhi'),
(33, 'ho_nguyen', 'thu_huong'),
(34, 'hoang_loc', 'thu_huong'),
(35, 'bao_gia', 'thu_huong'),
(38, 'duy_vu_1', 'thu_huong'),
(42, 'bao_gia', 'hoai_anh'),
(43, 'hoang_loc', 'hoai_anh'),
(46, 'duy_vu_1', 'hoai_anh'),
(47, 'ho_nguyen', 'hoai_anh'),
(49, 'yen_nhi', 'hoai_anh'),
(51, 'duong_vu', 'hoai_anh'),
(52, 'hoang_loc', 'thuy_tien'),
(53, 'yen_nhi', 'thuy_tien'),
(55, 'phuc_hoang', 'dat_thanh'),
(56, 'ho_nguyen', 'dat_thanh'),
(58, 'bao_long', 'thuy_tien'),
(59, 'duong_vu', 'thuy_tien'),
(60, 'bao_gia', 'thuy_tien');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblLike`
--

CREATE TABLE `tblLike` (
  `id` int(11) NOT NULL,
  `username` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblLike`
--

INSERT INTO `tblLike` (`id`, `username`, `post_id`) VALUES
(8, 'bao_long', 76),
(10, 'bao_long', 74),
(11, 'bao_long', 72),
(12, 'bao_long', 48),
(13, 'bao_long', 73),
(15, 'bao_long', 81),
(16, 'bao_long', 80),
(17, 'bao_long', 65),
(18, 'bao_long', 75),
(19, 'phuc_hoang', 83),
(20, 'phuc_hoang', 82),
(21, 'phuc_hoang', 80),
(22, 'phuc_hoang', 79),
(23, 'phuc_hoang', 78),
(24, 'phuc_hoang', 74),
(25, 'phuc_hoang', 70),
(26, 'phuc_hoang', 63),
(27, 'phuc_hoang', 56),
(28, 'bao_long', 83),
(29, 'bao_gia', 82),
(30, 'bao_gia', 83),
(31, 'bao_gia', 81),
(32, 'bao_gia', 80),
(33, 'bao_gia', 79),
(34, 'bao_gia', 75),
(35, 'bao_gia', 58),
(36, 'bao_gia', 51),
(38, 'ho_nguyen', 75),
(39, 'ho_nguyen', 85),
(40, 'duy_vu', 84),
(41, 'ho_nguyen', 87),
(42, 'dat_thanh', 94),
(43, 'dat_thanh', 86),
(44, 'dat_thanh', 93),
(45, 'dat_thanh', 84),
(46, 'dat_thanh', 83),
(47, 'dat_thanh', 75),
(48, 'dat_thanh', 74),
(49, 'dat_thanh', 56),
(50, 'dat_thanh', 57),
(51, 'dat_thanh', 72),
(52, 'dat_thanh', 73),
(53, 'bao_gia', 105),
(54, 'bao_gia', 94),
(55, 'bao_gia', 93),
(56, 'bao_gia', 92),
(57, 'bao_gia', 91),
(58, 'bao_gia', 90),
(59, 'bao_gia', 89),
(60, 'bao_gia', 88),
(61, 'bao_gia', 86),
(62, 'bao_gia', 78),
(63, 'bao_gia', 117),
(64, 'bao_long', 119),
(65, 'bao_long', 105),
(66, 'bao_long', 117),
(67, 'bao_long', 94),
(68, 'bao_long', 93),
(69, 'bao_long', 92),
(70, 'bao_long', 90),
(71, 'bao_long', 89),
(72, 'bao_long', 86),
(73, 'bao_long', 82),
(74, 'bao_long', 77),
(75, 'bao_long', 78),
(76, 'bao_long', 70),
(77, 'bao_long', 68),
(78, 'bao_long', 66),
(79, 'ho_nguyen', 121),
(80, 'ho_nguyen', 120),
(81, 'ho_nguyen', 119),
(82, 'ho_nguyen', 118),
(83, 'ho_nguyen', 117),
(84, 'ho_nguyen', 105),
(85, 'ho_nguyen', 94),
(86, 'ho_nguyen', 93),
(87, 'ho_nguyen', 86),
(88, 'ho_nguyen', 84),
(89, 'ho_nguyen', 80),
(90, 'ho_nguyen', 82),
(91, 'ho_nguyen', 81),
(92, 'duong_vu', 122),
(93, 'hoang_loc', 122),
(94, 'hoang_loc', 121),
(95, 'hoang_loc', 120),
(96, 'hoang_loc', 93),
(97, 'hoang_loc', 92),
(98, 'hoang_loc', 91),
(99, 'hoang_loc', 90),
(100, 'hoang_loc', 86),
(101, 'hoang_loc', 83),
(102, 'hoang_loc', 62),
(103, 'hoang_loc', 61),
(104, 'hoang_loc', 48),
(105, 'hoang_loc', 124),
(106, 'hoang_loc', 123),
(107, 'hoang_loc', 85),
(108, 'duy_vu', 93),
(109, 'duy_vu', 86),
(110, 'duy_vu', 88),
(111, 'duy_vu', 76),
(112, 'duy_vu', 71),
(113, 'duy_vu', 70),
(114, 'duy_vu', 69),
(115, 'duy_vu', 68),
(116, 'duy_vu', 67),
(117, 'duy_vu', 66),
(118, 'duy_vu', 65),
(119, 'duy_vu', 49),
(120, 'duy_vu', 52),
(121, 'duy_vu', 53),
(122, 'bao_long', 87),
(123, 'bao_long', 120),
(124, 'bao_long', 121),
(125, 'duy_vu_1', 125),
(126, 'duy_vu_1', 119),
(127, 'duy_vu_1', 93),
(128, 'duy_vu_1', 105),
(129, 'duy_vu_1', 86),
(130, 'duy_vu_1', 83),
(131, 'duy_vu_1', 82),
(132, 'duy_vu_1', 81),
(133, 'duy_vu_1', 80),
(134, 'duy_vu_1', 78),
(135, 'duy_vu_1', 75),
(136, 'duy_vu_1', 74),
(137, 'duy_vu_1', 73),
(138, 'duy_vu_1', 72),
(139, 'duy_vu_1', 90),
(140, 'duy_vu', 126),
(141, 'duy_vu', 125),
(142, 'duy_vu', 123),
(143, 'duy_vu', 122),
(144, 'duy_vu', 121),
(145, 'duy_vu', 120),
(146, 'duy_vu', 117),
(147, 'duy_vu', 118),
(148, 'duy_vu', 119),
(149, 'duy_vu', 94),
(150, 'duy_vu', 105),
(151, 'duy_vu', 92),
(152, 'duy_vu', 91),
(153, 'phuc_hoang', 126),
(154, 'phuc_hoang', 125),
(155, 'phuc_hoang', 123),
(156, 'phuc_hoang', 119),
(157, 'phuc_hoang', 118),
(158, 'phuc_hoang', 117),
(159, 'phuc_hoang', 105),
(160, 'phuc_hoang', 94),
(161, 'phuc_hoang', 89),
(162, 'phuc_hoang', 88),
(163, 'phuc_hoang', 84),
(164, 'bao_gia', 126),
(165, 'bao_gia', 125),
(166, 'bao_gia', 123),
(167, 'bao_gia', 121),
(168, 'bao_gia', 120),
(169, 'bao_gia', 119),
(170, 'bao_gia', 118),
(171, 'bao_gia', 87),
(172, 'bao_gia', 85),
(173, 'bao_gia', 84),
(174, 'bao_gia', 127),
(175, 'bao_long', 126),
(176, 'bao_long', 125),
(177, 'bao_long', 123),
(178, 'bao_long', 88),
(179, 'bao_long', 85),
(180, 'duong_vu', 128),
(181, 'duong_vu', 127),
(182, 'duong_vu', 126),
(183, 'duong_vu', 119),
(184, 'duong_vu', 118),
(185, 'duong_vu', 117),
(186, 'duong_vu', 105),
(187, 'duong_vu', 93),
(188, 'duong_vu', 89),
(189, 'duong_vu', 88),
(190, 'duong_vu', 86),
(191, 'duong_vu', 84),
(192, 'duong_vu', 82),
(193, 'duong_vu', 81),
(194, 'duong_vu', 80),
(195, 'duong_vu', 79),
(196, 'duong_vu', 78),
(197, 'yen_nhi', 129),
(198, 'yen_nhi', 130),
(199, 'bao_long', 132),
(200, 'bao_long', 131),
(201, 'bao_long', 130),
(202, 'bao_long', 129),
(203, 'bao_long', 128),
(204, 'bao_long', 127),
(205, 'duy_vu', 132),
(206, 'duy_vu', 131),
(207, 'duy_vu', 130),
(208, 'duy_vu', 129),
(209, 'duy_vu', 128),
(210, 'duy_vu', 127),
(212, 'duy_vu', 78),
(213, 'duy_vu', 79),
(214, 'duy_vu', 80),
(215, 'duy_vu', 81),
(216, 'duy_vu', 77),
(217, 'duy_vu', 75),
(218, 'duy_vu', 74),
(219, 'duy_vu', 73),
(220, 'duy_vu', 72),
(221, 'bao_long', 71),
(222, 'thu_huong', 132),
(223, 'thu_huong', 119),
(224, 'thu_huong', 93),
(225, 'thu_huong', 133),
(226, 'thu_huong', 118),
(227, 'thu_huong', 86),
(228, 'thu_huong', 88),
(229, 'thu_huong', 82),
(230, 'thu_huong', 80),
(231, 'thu_huong', 81),
(232, 'thu_huong', 76),
(233, 'thu_huong', 71),
(234, 'thu_huong', 69),
(235, 'thu_huong', 70),
(236, 'thu_huong', 68),
(237, 'thu_huong', 66),
(238, 'thu_huong', 67),
(239, 'thu_huong', 65),
(240, 'thu_huong', 64),
(241, 'thu_huong', 62),
(242, 'thu_huong', 61),
(243, 'thu_huong', 60),
(244, 'thu_huong', 58),
(245, 'thu_huong', 53),
(246, 'thu_huong', 52),
(247, 'thu_huong', 51),
(248, 'thu_huong', 49),
(249, 'duy_vu', 133),
(250, 'thu_huong', 134),
(251, 'thu_huong', 135),
(252, 'bao_long', 135),
(253, 'bao_long', 133),
(254, 'bao_long', 137),
(255, 'hoai_anh', 135),
(256, 'hoai_anh', 134),
(257, 'hoai_anh', 133),
(258, 'hoai_anh', 132),
(259, 'hoai_anh', 138),
(260, 'hoai_anh', 130),
(261, 'hoai_anh', 129),
(262, 'thuy_tien', 138),
(263, 'thuy_tien', 130),
(264, 'thuy_tien', 129),
(265, 'thuy_tien', 139),
(266, 'hoai_anh', 94),
(267, 'phuc_hoang', 137),
(268, 'phuc_hoang', 135),
(269, 'phuc_hoang', 134),
(270, 'phuc_hoang', 133),
(271, 'phuc_hoang', 132),
(272, 'phuc_hoang', 131),
(273, 'phuc_hoang', 130),
(274, 'phuc_hoang', 129),
(275, 'phuc_hoang', 127),
(276, 'dat_thanh', 138),
(277, 'dat_thanh', 137),
(278, 'dat_thanh', 135),
(279, 'dat_thanh', 134),
(280, 'dat_thanh', 132),
(281, 'dat_thanh', 133),
(282, 'dat_thanh', 131),
(283, 'dat_thanh', 130),
(284, 'dat_thanh', 129),
(285, 'dat_thanh', 126),
(286, 'dat_thanh', 125),
(287, 'dat_thanh', 118),
(288, 'dat_thanh', 119),
(289, 'dat_thanh', 117),
(290, 'dat_thanh', 105),
(291, 'dat_thanh', 80),
(292, 'dat_thanh', 81),
(293, 'dat_thanh', 140),
(294, 'bao_long', 138),
(295, 'dat_thanh', 143),
(296, 'dat_thanh', 141),
(297, 'duy_vu', 144),
(298, 'duy_vu', 143),
(299, 'duy_vu', 145),
(300, 'duy_vu', 138),
(301, 'duy_vu', 140),
(302, 'duy_vu', 137),
(303, 'duy_vu', 135),
(304, 'duy_vu', 134),
(305, 'duy_vu', 146),
(306, 'thu_huong', 146),
(307, 'thu_huong', 145),
(308, 'thu_huong', 144),
(309, 'thu_huong', 143),
(310, 'thu_huong', 141),
(311, 'thu_huong', 140),
(312, 'thu_huong', 137),
(313, 'thu_huong', 147),
(314, 'duy_vu', 148),
(315, 'duy_vu', 147);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblMessage`
--

CREATE TABLE `tblMessage` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_from` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `viewed` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `deleted` varchar(3) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblMessage`
--

INSERT INTO `tblMessage` (`id`, `user_to`, `user_from`, `body`, `date`, `opened`, `viewed`, `deleted`) VALUES
(1, 'bao_long', 'duy_vu_1', '9h hoc nhe!', '2021-12-05 20:20:34', 'yes', 'yes', 'no'),
(2, 'bao_long', 'duy_vu_1', 'Lam dc deadlock chua', '2021-12-05 20:21:05', 'yes', 'yes', 'no'),
(3, 'bao_long', 'duy_vu_1', 'Huong dan tao voi', '2021-12-05 20:21:10', 'yes', 'yes', 'no'),
(4, 'bao_long', 'duy_vu_1', 'mai ktra r day', '2021-12-05 20:21:16', 'yes', 'yes', 'no'),
(5, 'bao_long', 'duy_vu_1', 'ok nhe', '2021-12-05 20:21:24', 'yes', 'yes', 'no'),
(6, 'bao_long', 'duy_vu_1', 'Tao gg meet di', '2021-12-05 20:21:29', 'yes', 'yes', 'no'),
(7, 'bao_long', 'duy_vu_1', 'Moi tao di', '2021-12-05 20:21:33', 'yes', 'yes', 'no'),
(8, 'bao_long', 'duy_vu_1', 'Ok roi nhe', '2021-12-05 20:21:36', 'yes', 'yes', 'no'),
(9, 'duy_vu', 'duy_vu_1', 'Dmm thang clone nay', '2021-12-05 20:22:42', 'yes', 'yes', 'no'),
(10, 'duy_vu', 'duy_vu_1', 'fake acc 200tr !', '2021-12-05 20:22:51', 'yes', 'yes', 'no'),
(11, 'duy_vu', 'duy_vu_1', 'Fuck you duma sai gon', '2021-12-05 20:23:05', 'yes', 'yes', 'no'),
(12, 'duy_vu', 'duy_vu_1', 'Anh ban ak', '2021-12-05 20:23:09', 'yes', 'yes', 'no'),
(13, 'duy_vu', 'duy_vu_1', 'Anh dung clone em nua dc ko?', '2021-12-05 20:23:17', 'yes', 'yes', 'no'),
(14, 'duy_vu', 'duy_vu_1', 'hoa nhe!', '2021-12-05 20:23:29', 'yes', 'yes', 'no'),
(15, 'duy_vu_1', 'bao_long', 'Ok nhe', '2021-12-05 20:24:59', 'yes', 'no', 'no'),
(16, 'duy_vu_1', 'bao_long', 'Chu be dan', '2021-12-05 20:25:03', 'yes', 'no', 'no'),
(17, 'duy_vu_1', 'bao_long', 'MU red devil', '2021-12-05 20:25:10', 'yes', 'no', 'no'),
(21, 'duy_vu_1', 'bao_long', 'Deadlock la blah blah', '2021-12-05 23:50:36', 'yes', 'no', 'no'),
(22, 'duy_vu_1', 'bao_long', 'Toi noi thuc toi ghet o vai loz', '2021-12-05 23:50:45', 'yes', 'no', 'no'),
(23, 'duy_vu_1', 'bao_long', 'Toi deo muon day luon y', '2021-12-05 23:50:54', 'yes', 'no', 'no'),
(24, 'duy_vu_1', 'bao_long', 'Ae tam thoi tu mat nhau nhe', '2021-12-05 23:53:34', 'yes', 'no', 'no'),
(25, 'duy_vu_1', 'bao_long', 'Toi xau ho vs o qua', '2021-12-05 23:53:42', 'yes', 'no', 'no'),
(26, 'duy_vu_1', 'bao_long', 'Ok ko?', '2021-12-06 00:00:36', 'yes', 'no', 'no'),
(27, 'bao_long', 'duy_vu_1', 'Vay thi con gi nua dau', '2021-12-06 00:01:17', 'yes', 'yes', 'no'),
(28, 'bao_long', 'duy_vu_1', 'Toi iu o that mak', '2021-12-06 00:01:24', 'yes', 'yes', 'no'),
(29, 'bao_gia', 'duy_vu_1', 'Toi la ban cua Loc', '2021-12-06 02:21:52', 'yes', 'no', 'no'),
(30, 'bao_gia', 'duy_vu_1', 'Lam quen nhe!', '2021-12-06 02:22:03', 'yes', 'no', 'no'),
(31, 'duy_vu', 'duy_vu_1', ':)', '2021-12-06 02:24:07', 'yes', 'yes', 'no'),
(32, 'phuc_hoang', 'duy_vu_1', 'Hi anh la ban anh Loc', '2021-12-06 02:33:49', 'yes', 'yes', 'no'),
(33, 'bao_long', 'ho_nguyen', 'Hi ong', '2021-12-06 02:55:54', 'yes', 'yes', 'no'),
(34, 'bao_long', 'ho_nguyen', 'Toi ban Loc', '2021-12-06 02:56:01', 'yes', 'yes', 'no'),
(35, 'duy_vu', 'ho_nguyen', 'Toi thich ong vl', '2021-12-06 02:56:18', 'yes', 'yes', 'no'),
(36, 'duy_vu', 'ho_nguyen', 'Ak ma toi ban Loc', '2021-12-06 02:56:29', 'yes', 'yes', 'no'),
(37, 'duy_vu_1', 'ho_nguyen', 'Du nhau ko???', '2021-12-06 02:56:42', 'yes', 'no', 'no'),
(38, 'phuc_hoang', 'ho_nguyen', 'Hoc gioi vao!', '2021-12-06 02:57:03', 'yes', 'yes', 'no'),
(39, 'hoang_loc', 'duy_vu', 'Anh oi tha cho em', '2021-12-06 04:32:00', 'no', 'no', 'no'),
(40, 'hoang_loc', 'duy_vu', 'bayern no va cho may trai r :3', '2021-12-06 04:32:10', 'no', 'no', 'no'),
(41, 'hoang_loc', 'duy_vu', 'Gpa 4.0 co ak', '2021-12-06 05:13:52', 'no', 'no', 'no'),
(42, 'hoang_loc', 'duy_vu', 'okokok', '2021-12-06 05:18:19', 'no', 'no', 'no'),
(43, 'hoang_loc', 'duy_vu', 'Nsao?', '2021-12-06 05:19:47', 'no', 'no', 'no'),
(44, 'hoang_loc', 'duy_vu', 'T xl o vi tinh yeu', '2021-12-06 05:21:05', 'no', 'no', 'no'),
(45, 'duy_vu_1', 'bao_gia', 'Ok lam quen thi 50k', '2021-12-06 20:25:34', 'no', 'no', 'no'),
(46, 'hoang_loc', 'bao_gia', 'Ban o Duy Vu muon lam quen vs t', '2021-12-06 20:25:52', 'no', 'no', 'no'),
(47, 'hoang_loc', 'bao_gia', 'Co nen ko?', '2021-12-06 20:25:57', 'no', 'no', 'no'),
(48, 'ho_nguyen', 'bao_gia', 'Dm Loc', '2021-12-06 20:26:22', 'no', 'no', 'no'),
(49, 'ho_nguyen', 'bao_gia', 'Kay no vl', '2021-12-06 20:26:27', 'no', 'no', 'no'),
(50, 'bao_long', 'bao_gia', 'Hey', '2021-12-06 20:26:43', 'yes', 'yes', 'no'),
(51, 'bao_gia', 'bao_long', 'Ok', '2021-12-06 23:29:57', 'no', 'no', 'no'),
(52, 'ho_nguyen', 'bao_long', 'Ok o co gi ko?', '2021-12-07 00:56:24', 'no', 'no', 'no'),
(53, 'duy_vu_1', 'bao_long', 'Tinh cam nay ngang trai qua, anh muon du em', '2021-12-07 00:56:47', 'no', 'no', 'no'),
(54, 'phuc_hoang', 'bao_long', 'Hi em', '2021-12-07 01:39:04', 'yes', 'yes', 'no'),
(55, 'dat_thanh', 'bao_long', 'Hoc ngu vua th!', '2021-12-07 01:39:18', 'yes', 'yes', 'no'),
(56, 'hoang_loc', 'bao_long', 'Mai cf ko?', '2021-12-07 01:39:30', 'no', 'no', 'no'),
(57, 'duy_vu', 'bao_long', 'Mai chi tao CSDLPT!', '2021-12-07 01:39:53', 'yes', 'yes', 'no'),
(58, 'duong_vu', 'bao_long', 'Hi', '2021-12-07 02:22:01', 'yes', 'yes', 'no'),
(59, 'hoang_loc', 'yen_nhi', 'Nha Nhi ko co ai dou :3', '2021-12-07 02:29:14', 'no', 'no', 'no'),
(60, 'hoang_loc', 'yen_nhi', 'Loc co qua ko ?', '2021-12-07 02:29:21', 'no', 'no', 'no'),
(61, 'thu_huong', 'bao_long', 'Ban oi', '2021-12-07 02:33:46', 'yes', 'yes', 'no'),
(62, 'thu_huong', 'bao_long', 'Cho minh lam quen voi a :3', '2021-12-07 02:33:54', 'yes', 'yes', 'no'),
(63, 'yen_nhi', 'bao_long', 'Ban la ny hoang loc ak?', '2021-12-07 02:34:09', 'yes', 'yes', 'no'),
(64, 'bao_long', 'duy_vu', 'okok', '2021-12-07 02:38:39', 'yes', 'yes', 'no'),
(65, 'yen_nhi', 'duy_vu', 'Cau co thuc su thich Loc ko day ?', '2021-12-07 02:38:59', 'yes', 'yes', 'no'),
(66, 'dat_thanh', 'duy_vu', 'Ngu vua th!', '2021-12-07 02:39:11', 'yes', 'yes', 'no'),
(67, 'duong_vu', 'duy_vu', 'Chi t deadlock vs o oi!', '2021-12-07 02:39:24', 'no', 'no', 'no'),
(68, 'bao_gia', 'duy_vu', 'O hai vl y', '2021-12-07 02:39:43', 'no', 'no', 'no'),
(69, 'bao_gia', 'duy_vu', 'Cho t lam quen <3', '2021-12-07 02:39:49', 'no', 'no', 'no'),
(70, 'thu_huong', 'duy_vu', 'Minh thik ban :3', '2021-12-07 02:40:03', 'yes', 'yes', 'no'),
(71, 'thu_huong', 'duy_vu', 'Cho minh lam quen nha', '2021-12-07 02:40:08', 'yes', 'yes', 'no'),
(72, 'duy_vu', 'yen_nhi', 'To la ny Loc ma', '2021-12-07 05:19:15', 'yes', 'yes', 'no'),
(73, 'duy_vu', 'yen_nhi', 'Hoi gi ky vay ?', '2021-12-07 05:19:20', 'yes', 'yes', 'no'),
(74, 'bao_long', 'yen_nhi', 'Uk :3', '2021-12-07 05:19:30', 'yes', 'yes', 'no'),
(75, 'bao_long', 'yen_nhi', 'Minh yeu Hoang Loc nhieu lam <3', '2021-12-07 05:19:39', 'yes', 'yes', 'no'),
(76, 'yen_nhi', 'duy_vu', 'To xl nhe', '2021-12-07 05:21:38', 'yes', 'no', 'no'),
(77, 'yen_nhi', 'duy_vu', 'Tai to cung thich cau', '2021-12-07 05:21:45', 'yes', 'no', 'no'),
(78, 'duy_vu', 'bao_long', 'Dmm ngu quen ak ???', '2021-12-09 10:34:10', 'yes', 'yes', 'no'),
(79, 'bao_long', 'duy_vu', 'vl o day :(', '2021-12-09 10:43:01', 'yes', 'yes', 'no'),
(80, 'hoang_loc', 'thuy_tien', 'A kb lai vs e di', '2021-12-09 12:03:46', 'no', 'no', 'no'),
(81, 'hoang_loc', 'thuy_tien', 'Em yeu a that long ma', '2021-12-09 12:03:52', 'no', 'no', 'no'),
(82, 'yen_nhi', 'thuy_tien', 'Chia tay vs bo tao di', '2021-12-09 12:06:27', 'no', 'no', 'no'),
(83, 'yen_nhi', 'thuy_tien', 'May ko xung dang', '2021-12-09 12:06:34', 'no', 'no', 'no'),
(84, 'thu_huong', 'hoai_anh', 'Hi ban', '2021-12-09 12:15:00', 'yes', 'yes', 'no'),
(85, 'duy_vu', 'dat_thanh', 'vl o thi khon :)', '2021-12-09 12:19:19', 'yes', 'yes', 'no'),
(86, 'bao_long', 'dat_thanh', 'Chui cc', '2021-12-09 12:19:27', 'yes', 'yes', 'no'),
(87, 'bao_long', 'phuc_hoang', 'Em rat chao a', '2021-12-09 12:20:38', 'yes', 'yes', 'no'),
(88, 'ho_nguyen', 'phuc_hoang', 'Vang a', '2021-12-09 12:20:46', 'no', 'no', 'no'),
(89, 'duy_vu_1', 'phuc_hoang', 'Ke me a ?', '2021-12-09 12:20:55', 'no', 'no', 'no'),
(90, 'phuc_hoang', 'bao_long', 'Ok em', '2021-12-10 01:33:02', 'no', 'no', 'no'),
(91, 'dat_thanh', 'bao_long', 'Ngu thi phai nhan', '2021-12-10 01:33:15', 'yes', 'yes', 'no'),
(92, 'duy_vu', 'bao_long', 'T xl o', '2021-12-10 01:33:31', 'yes', 'yes', 'no'),
(93, 'bao_long', 'dat_thanh', 'dmm', '2021-12-10 02:52:17', 'no', 'no', 'no'),
(94, 'bao_long', 'duy_vu', 'ko co gi dau', '2021-12-10 04:12:33', 'no', 'no', 'no'),
(95, 'dat_thanh', 'duy_vu', 'khon hay m la ro', '2021-12-10 04:12:49', 'no', 'no', 'no'),
(96, 'hoai_anh', 'thu_huong', 'Chao ban', '2021-12-10 04:19:32', 'no', 'no', 'no'),
(97, 'hoai_anh', 'thu_huong', 'Co van de gi ko ???', '2021-12-10 04:19:39', 'no', 'no', 'no');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblNotification`
--

CREATE TABLE `tblNotification` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_from` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `datetime` datetime NOT NULL,
  `opened` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `viewed` varchar(3) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblNotification`
--

INSERT INTO `tblNotification` (`id`, `user_to`, `user_from`, `message`, `link`, `datetime`, `opened`, `viewed`) VALUES
(2, 'duong_vu', 'duy_vu', 'Duy Vu commented on your post', 'post.php?id=128', '2021-12-07 15:10:21', 'no', 'no'),
(3, 'bao_gia', 'duy_vu', 'Duy Vu commented on your post', 'post.php?id=127', '2021-12-07 15:10:58', 'no', 'no'),
(4, 'duy_vu_1', 'duy_vu', 'Duy Vu liked your post', 'post.php?id=78', '2021-12-07 15:11:08', 'no', 'no'),
(5, 'duy_vu_1', 'duy_vu', 'Duy Vu liked your post', 'post.php?id=78', '2021-12-07 15:11:11', 'no', 'no'),
(6, 'duy_vu_1', 'duy_vu', 'Duy Vu liked your post', 'post.php?id=79', '2021-12-07 15:11:12', 'no', 'no'),
(7, 'bao_long', 'duy_vu', 'Duy Vu liked your post', 'post.php?id=80', '2021-12-07 15:11:14', 'no', 'no'),
(8, 'bao_long', 'duy_vu', 'Duy Vu liked your post', 'post.php?id=81', '2021-12-07 15:11:16', 'no', 'no'),
(9, 'duy_vu_1', 'duy_vu', 'Duy Vu liked your post', 'post.php?id=77', '2021-12-07 15:11:17', 'no', 'no'),
(10, 'bao_gia', 'duy_vu', 'Duy Vu liked your post', 'post.php?id=75', '2021-12-07 15:11:19', 'no', 'no'),
(11, 'bao_gia', 'duy_vu', 'Duy Vu liked your post', 'post.php?id=74', '2021-12-07 15:11:20', 'no', 'no'),
(12, 'bao_gia', 'duy_vu', 'Duy Vu liked your post', 'post.php?id=73', '2021-12-07 15:11:21', 'no', 'no'),
(13, 'bao_gia', 'duy_vu', 'Duy Vu liked your post', 'post.php?id=72', '2021-12-07 15:11:22', 'no', 'no'),
(14, 'bao_long', 'duy_vu', 'Duy Vu commented on your post', 'post.php?id=58', '2021-12-07 15:11:55', 'no', 'no'),
(15, 'duy_vu', 'bao_long', 'Bao Long liked your post', 'post.php?id=71', '2021-12-07 15:12:38', 'no', 'no'),
(16, 'bao_long', 'thu_huong', 'Thu Huong liked your post', 'post.php?id=119', '2021-12-07 15:14:59', 'no', 'no'),
(17, 'duy_vu', 'thu_huong', 'Thu Huong liked your post', 'post.php?id=93', '2021-12-07 15:15:05', 'no', 'no'),
(18, 'duy_vu', 'thu_huong', 'Thu Huong commented on your post', 'post.php?id=93', '2021-12-07 15:15:19', 'no', 'no'),
(19, 'thu_huong', 'duy_vu', 'Duy Vu commented on your post', 'post.php?id=132', '2021-12-07 15:16:51', 'yes', 'yes'),
(20, 'bao_long', 'thu_huong', 'Thu Huong liked your post', 'post.php?id=118', '2021-12-07 15:17:24', 'no', 'no'),
(21, 'duy_vu', 'thu_huong', 'Thu Huong liked your post', 'post.php?id=86', '2021-12-07 15:17:26', 'no', 'no'),
(22, 'bao_long', 'thu_huong', 'Thu Huong liked your post', 'post.php?id=88', '2021-12-07 15:17:26', 'no', 'no'),
(23, 'bao_long', 'thu_huong', 'Thu Huong liked your post', 'post.php?id=82', '2021-12-07 15:17:27', 'no', 'no'),
(24, 'bao_long', 'thu_huong', 'Thu Huong liked your post', 'post.php?id=80', '2021-12-07 15:17:29', 'no', 'no'),
(25, 'bao_long', 'thu_huong', 'Thu Huong liked your post', 'post.php?id=81', '2021-12-07 15:17:30', 'no', 'no'),
(26, 'duy_vu', 'thu_huong', 'Thu Huong liked your post', 'post.php?id=76', '2021-12-07 15:17:31', 'no', 'no'),
(27, 'duy_vu', 'thu_huong', 'Thu Huong liked your post', 'post.php?id=71', '2021-12-07 15:17:32', 'no', 'no'),
(28, 'duy_vu', 'thu_huong', 'Thu Huong liked your post', 'post.php?id=69', '2021-12-07 15:17:35', 'no', 'no'),
(29, 'duy_vu', 'thu_huong', 'Thu Huong liked your post', 'post.php?id=70', '2021-12-07 15:17:36', 'no', 'no'),
(30, 'duy_vu', 'thu_huong', 'Thu Huong liked your post', 'post.php?id=68', '2021-12-07 15:17:37', 'no', 'no'),
(31, 'duy_vu', 'thu_huong', 'Thu Huong liked your post', 'post.php?id=66', '2021-12-07 15:17:39', 'no', 'no'),
(32, 'duy_vu', 'thu_huong', 'Thu Huong liked your post', 'post.php?id=67', '2021-12-07 15:17:40', 'no', 'no'),
(33, 'duy_vu', 'thu_huong', 'Thu Huong liked your post', 'post.php?id=65', '2021-12-07 15:17:40', 'no', 'no'),
(34, 'duy_vu', 'thu_huong', 'Thu Huong liked your post', 'post.php?id=64', '2021-12-07 15:17:41', 'no', 'no'),
(35, 'duy_vu', 'thu_huong', 'Thu Huong liked your post', 'post.php?id=62', '2021-12-07 15:17:43', 'no', 'no'),
(36, 'duy_vu', 'thu_huong', 'Thu Huong liked your post', 'post.php?id=61', '2021-12-07 15:17:44', 'no', 'no'),
(37, 'duy_vu', 'thu_huong', 'Thu Huong liked your post', 'post.php?id=60', '2021-12-07 15:17:45', 'no', 'no'),
(38, 'bao_long', 'thu_huong', 'Thu Huong liked your post', 'post.php?id=58', '2021-12-07 15:17:46', 'no', 'no'),
(39, 'duy_vu', 'thu_huong', 'Thu Huong liked your post', 'post.php?id=53', '2021-12-07 15:17:47', 'no', 'no'),
(40, 'duy_vu', 'thu_huong', 'Thu Huong liked your post', 'post.php?id=52', '2021-12-07 15:17:48', 'no', 'no'),
(41, 'bao_long', 'thu_huong', 'Thu Huong liked your post', 'post.php?id=51', '2021-12-07 15:17:49', 'no', 'no'),
(42, 'duy_vu', 'thu_huong', 'Thu Huong liked your post', 'post.php?id=49', '2021-12-07 15:17:49', 'no', 'no'),
(43, 'thu_huong', 'duy_vu', 'Duy Vu liked your post', 'post.php?id=133', '2021-12-07 15:18:28', 'yes', 'yes'),
(44, 'duy_vu', 'thu_huong', 'Thu Huong commented on your post', 'post.php?id=86', '2021-12-07 16:29:05', 'no', 'no'),
(45, 'ho_nguyen', 'thu_huong', 'Thu Huong commented on a post you commented on', 'post.php?id=86', '2021-12-07 16:29:05', 'no', 'no'),
(46, 'duy_vu', 'thu_huong', 'Thu Huong commented on your post', 'post.php?id=76', '2021-12-07 16:29:19', 'no', 'no'),
(47, 'bao_long', 'thu_huong', 'Thu Huong commented on a post you commented on', 'post.php?id=76', '2021-12-07 16:29:19', 'no', 'no'),
(48, 'duy_vu', 'thu_huong', 'Thu Huong commented on your post', 'post.php?id=70', '2021-12-07 16:29:32', 'no', 'no'),
(49, 'duy_vu', 'thu_huong', 'Thu Huong commented on your post', 'post.php?id=69', '2021-12-07 16:29:40', 'no', 'no'),
(50, 'duy_vu', 'thu_huong', 'Thu Huong commented on your post', 'post.php?id=49', '2021-12-07 16:30:50', 'no', 'no'),
(51, 'duy_vu', 'thu_huong', 'Thu Huong commented on a post you commented on', 'post.php?id=132', '2021-12-07 18:24:01', 'no', 'no'),
(52, 'duy_vu', 'thu_huong', 'Thu Huong commented on a post you commented on', 'post.php?id=132', '2021-12-07 18:24:08', 'no', 'no'),
(53, 'hoai_anh', 'thu_huong', 'Thu Huong liked your post', 'post.php?id=134', '2021-12-07 18:47:56', 'no', 'no'),
(54, 'hoai_anh', 'thu_huong', 'Thu Huong commented on your post', 'post.php?id=134', '2021-12-07 18:48:04', 'no', 'no'),
(55, 'thu_huong', 'bao_long', 'Bao Long liked your post', 'post.php?id=135', '2021-12-09 03:50:15', 'no', 'no'),
(56, 'thu_huong', 'bao_long', 'Bao Long liked your post', 'post.php?id=133', '2021-12-09 03:50:16', 'no', 'no'),
(57, 'thu_huong', 'bao_long', 'Bao Long commented on your post', 'post.php?id=135', '2021-12-09 10:33:55', 'no', 'no'),
(58, 'hoai_anh', 'bao_long', 'Bao Long commented on your post', 'post.php?id=135', '2021-12-09 10:33:55', 'no', 'no'),
(59, 'thu_huong', 'hoai_anh', 'Hoai Anh liked your post', 'post.php?id=135', '2021-12-09 10:35:04', 'no', 'no'),
(60, 'thu_huong', 'hoai_anh', 'Hoai Anh liked your post', 'post.php?id=133', '2021-12-09 10:35:07', 'no', 'no'),
(61, 'thu_huong', 'hoai_anh', 'Hoai Anh liked your post', 'post.php?id=132', '2021-12-09 10:35:08', 'no', 'no'),
(62, 'yen_nhi', 'hoai_anh', 'Hoai Anh liked your post', 'post.php?id=130', '2021-12-09 11:57:57', 'no', 'no'),
(63, 'yen_nhi', 'hoai_anh', 'Hoai Anh liked your post', 'post.php?id=129', '2021-12-09 11:57:58', 'no', 'no'),
(64, 'hoai_anh', 'thuy_tien', 'Thuy Tien liked your post', 'post.php?id=138', '2021-12-09 12:06:14', 'no', 'no'),
(65, 'yen_nhi', 'thuy_tien', 'Thuy Tien liked your post', 'post.php?id=130', '2021-12-09 12:06:15', 'no', 'no'),
(66, 'yen_nhi', 'thuy_tien', 'Thuy Tien liked your post', 'post.php?id=129', '2021-12-09 12:06:16', 'no', 'no'),
(67, 'dat_thanh', 'hoai_anh', 'Hoai Anh liked your post', 'post.php?id=94', '2021-12-09 12:14:34', 'yes', 'yes'),
(68, 'bao_long', 'phuc_hoang', 'Phuc Hoang liked your post', 'post.php?id=137', '2021-12-09 12:20:16', 'no', 'no'),
(69, 'thu_huong', 'phuc_hoang', 'Phuc Hoang liked your post', 'post.php?id=135', '2021-12-09 12:20:17', 'no', 'no'),
(70, 'hoai_anh', 'phuc_hoang', 'Phuc Hoang liked your post', 'post.php?id=134', '2021-12-09 12:20:18', 'no', 'no'),
(71, 'thu_huong', 'phuc_hoang', 'Phuc Hoang liked your post', 'post.php?id=133', '2021-12-09 12:20:19', 'no', 'no'),
(72, 'thu_huong', 'phuc_hoang', 'Phuc Hoang liked your post', 'post.php?id=132', '2021-12-09 12:20:20', 'no', 'no'),
(73, 'yen_nhi', 'phuc_hoang', 'Phuc Hoang liked your post', 'post.php?id=131', '2021-12-09 12:20:22', 'no', 'no'),
(74, 'yen_nhi', 'phuc_hoang', 'Phuc Hoang liked your post', 'post.php?id=130', '2021-12-09 12:20:23', 'no', 'no'),
(75, 'yen_nhi', 'phuc_hoang', 'Phuc Hoang liked your post', 'post.php?id=129', '2021-12-09 12:20:25', 'no', 'no'),
(76, 'bao_gia', 'phuc_hoang', 'Phuc Hoang liked your post', 'post.php?id=127', '2021-12-09 12:20:26', 'no', 'no'),
(77, 'hoai_anh', 'dat_thanh', 'Dat Thanh liked your post', 'post.php?id=138', '2021-12-09 12:23:19', 'no', 'no'),
(78, 'bao_long', 'dat_thanh', 'Dat Thanh liked your post', 'post.php?id=137', '2021-12-09 12:23:20', 'no', 'no'),
(79, 'thu_huong', 'dat_thanh', 'Dat Thanh liked your post', 'post.php?id=135', '2021-12-09 12:23:21', 'no', 'no'),
(80, 'hoai_anh', 'dat_thanh', 'Dat Thanh liked your post', 'post.php?id=134', '2021-12-09 12:23:22', 'no', 'no'),
(81, 'thu_huong', 'dat_thanh', 'Dat Thanh liked your post', 'post.php?id=132', '2021-12-09 12:23:25', 'no', 'no'),
(82, 'thu_huong', 'dat_thanh', 'Dat Thanh liked your post', 'post.php?id=133', '2021-12-09 12:23:26', 'no', 'no'),
(83, 'yen_nhi', 'dat_thanh', 'Dat Thanh liked your post', 'post.php?id=131', '2021-12-09 12:23:27', 'no', 'no'),
(84, 'yen_nhi', 'dat_thanh', 'Dat Thanh liked your post', 'post.php?id=130', '2021-12-09 12:23:28', 'no', 'no'),
(85, 'yen_nhi', 'dat_thanh', 'Dat Thanh liked your post', 'post.php?id=129', '2021-12-09 12:23:29', 'no', 'no'),
(86, 'duy_vu_1', 'dat_thanh', 'Dat Thanh liked your post', 'post.php?id=126', '2021-12-09 12:23:31', 'no', 'no'),
(87, 'duy_vu_1', 'dat_thanh', 'Dat Thanh liked your post', 'post.php?id=125', '2021-12-09 12:23:31', 'no', 'no'),
(88, 'bao_long', 'dat_thanh', 'Dat Thanh liked your post', 'post.php?id=118', '2021-12-09 12:23:32', 'no', 'no'),
(89, 'bao_long', 'dat_thanh', 'Dat Thanh liked your post', 'post.php?id=119', '2021-12-09 12:23:33', 'no', 'no'),
(90, 'bao_gia', 'dat_thanh', 'Dat Thanh liked your post', 'post.php?id=117', '2021-12-09 12:23:35', 'no', 'no'),
(91, 'bao_gia', 'dat_thanh', 'Dat Thanh liked your post', 'post.php?id=105', '2021-12-09 12:23:36', 'no', 'no'),
(92, 'bao_gia', 'dat_thanh', 'Dat Thanh commented on your post', 'post.php?id=105', '2021-12-09 12:23:43', 'no', 'no'),
(93, 'bao_long', 'dat_thanh', 'Dat Thanh liked your post', 'post.php?id=80', '2021-12-09 12:23:52', 'no', 'no'),
(94, 'bao_long', 'dat_thanh', 'Dat Thanh liked your post', 'post.php?id=81', '2021-12-09 12:23:54', 'no', 'no'),
(95, 'hoai_anh', 'bao_long', 'Bao Long liked your post', 'post.php?id=138', '2021-12-10 01:32:42', 'no', 'no'),
(96, 'hoai_anh', 'bao_long', 'Bao Long commented on your post', 'post.php?id=138', '2021-12-10 01:32:52', 'no', 'no'),
(97, 'yen_nhi', 'bao_long', 'Bao Long commented on your post', 'post.php?id=138', '2021-12-10 01:32:52', 'no', 'no'),
(98, 'hoai_anh', 'dat_thanh', 'Dat Thanh commented on your post', 'post.php?id=138', '2021-12-10 01:51:42', 'no', 'no'),
(99, 'yen_nhi', 'dat_thanh', 'Dat Thanh commented on your post', 'post.php?id=138', '2021-12-10 01:51:42', 'no', 'no'),
(100, 'bao_long', 'dat_thanh', 'Dat Thanh commented on a post you commented on', 'post.php?id=138', '2021-12-10 01:51:42', 'no', 'no'),
(101, 'dat_thanh', 'duy_vu', 'Duy Vu liked your post', 'post.php?id=144', '2021-12-10 02:52:35', 'no', 'no'),
(102, 'dat_thanh', 'duy_vu', 'Duy Vu liked your post', 'post.php?id=143', '2021-12-10 02:52:36', 'no', 'no'),
(103, 'dat_thanh', 'duy_vu', 'Duy Vu commented on your post', 'post.php?id=144', '2021-12-10 02:52:42', 'no', 'no'),
(104, 'hoai_anh', 'duy_vu', 'Duy Vu liked your post', 'post.php?id=138', '2021-12-10 02:52:54', 'no', 'no'),
(105, 'dat_thanh', 'duy_vu', 'Duy Vu liked your post', 'post.php?id=140', '2021-12-10 02:52:55', 'no', 'no'),
(106, 'bao_long', 'duy_vu', 'Duy Vu liked your post', 'post.php?id=137', '2021-12-10 02:52:56', 'no', 'no'),
(107, 'thu_huong', 'duy_vu', 'Duy Vu liked your post', 'post.php?id=135', '2021-12-10 02:52:56', 'no', 'no'),
(108, 'hoai_anh', 'duy_vu', 'Duy Vu liked your post', 'post.php?id=134', '2021-12-10 02:52:57', 'no', 'no'),
(109, 'duy_vu', 'thu_huong', 'Thu Huong liked your post', 'post.php?id=146', '2021-12-10 04:13:02', 'no', 'no'),
(110, 'duy_vu', 'thu_huong', 'Thu Huong liked your post', 'post.php?id=145', '2021-12-10 04:13:02', 'no', 'no'),
(111, 'dat_thanh', 'thu_huong', 'Thu Huong liked your post', 'post.php?id=144', '2021-12-10 04:13:03', 'no', 'no'),
(112, 'dat_thanh', 'thu_huong', 'Thu Huong liked your post', 'post.php?id=143', '2021-12-10 04:13:05', 'no', 'no'),
(113, 'dat_thanh', 'thu_huong', 'Thu Huong liked your post', 'post.php?id=141', '2021-12-10 04:13:07', 'no', 'no'),
(114, 'dat_thanh', 'thu_huong', 'Thu Huong liked your post', 'post.php?id=140', '2021-12-10 04:13:08', 'no', 'no'),
(115, 'bao_long', 'thu_huong', 'Thu Huong liked your post', 'post.php?id=137', '2021-12-10 04:13:09', 'no', 'no'),
(116, 'thuy_tien', 'duy_vu', 'Duy Vu liked your post', 'post.php?id=148', '2021-12-10 04:40:06', 'no', 'no'),
(117, 'thu_huong', 'duy_vu', 'Duy Vu liked your post', 'post.php?id=147', '2021-12-10 04:40:07', 'no', 'no'),
(118, 'thuy_tien', 'duy_vu', 'Duy Vu commented on your post', 'post.php?id=148', '2021-12-10 04:40:17', 'no', 'no');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblPost`
--

CREATE TABLE `tblPost` (
  `id` int(11) NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `added_by` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `user_to` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `deleted` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `likes` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblPost`
--

INSERT INTO `tblPost` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`, `image`) VALUES
(48, 'Hi everybody!', 'phuc_hoang', 'none', '2021-11-21 16:19:48', 'no', 'no', 2, ''),
(49, 'Alo<br />\nChao em', 'duy_vu', 'none', '2021-11-21 17:14:13', 'no', 'no', 2, ''),
(50, 'Let\'s fucking go', 'bao_gia', 'none', '2021-11-21 17:18:50', 'no', 'no', 0, ''),
(51, 'First time eh?', 'bao_long', 'none', '2021-11-21 17:32:56', 'no', 'no', 2, ''),
(52, 'NAVI take my energy ', 'duy_vu', 'none', '2021-11-21 17:33:45', 'no', 'no', 2, ''),
(53, 'Listen up!', 'duy_vu', 'none', '2021-11-21 17:35:17', 'no', 'no', 2, ''),
(54, 'Fucking clone Duy Vu', 'duy_vu_1', 'none', '2021-11-21 17:36:15', 'no', 'no', 0, ''),
(55, 'Everybody wanna rap like that<br />\nEverybody wanna make a track like that!', 'duy_vu_1', 'none', '2021-11-21 17:36:38', 'no', 'no', 0, ''),
(56, 'Bayern not Bayer guys', 'bao_gia', 'none', '2021-11-21 17:36:59', 'no', 'no', 2, ''),
(57, 'Lewandowski gianh qua bong vang nhe', 'bao_gia', 'none', '2021-11-21 17:37:15', 'no', 'no', 1, ''),
(58, 'Nice to meet tou guys', 'bao_long', 'none', '2021-11-21 17:37:47', 'no', 'no', 2, ''),
(59, 'Anyone Cter here', 'bao_gia', 'none', '2021-11-21 17:38:17', 'no', 'no', 0, ''),
(60, 'What\'s up buddy', 'duy_vu', 'none', '2021-11-21 17:39:00', 'no', 'no', 1, ''),
(61, 'MU Red Devil', 'duy_vu', 'none', '2021-11-21 17:39:07', 'no', 'no', 2, ''),
(62, 'Ole Out!<br />\n#Oleout!', 'duy_vu', 'none', '2021-11-21 17:39:19', 'no', 'no', 2, ''),
(63, 'First vietnamese', 'duy_vu', 'none', '2021-11-21 17:42:21', 'no', 'no', 1, ''),
(64, 'Love Bayern', 'duy_vu', 'none', '2021-11-21 17:42:30', 'no', 'no', 1, ''),
(65, 'Fan Bayern', 'duy_vu', 'none', '2021-11-21 17:42:35', 'no', 'no', 3, ''),
(66, 'Thich spawn day thi lam sao', 'duy_vu', 'none', '2021-11-21 18:00:58', 'no', 'no', 3, ''),
(67, 'Fan mU nhuom do troi au', 'duy_vu', 'none', '2021-11-21 18:01:05', 'no', 'no', 2, ''),
(68, 'Chelshit leuleu lol', 'duy_vu', 'none', '2021-11-21 18:01:15', 'no', 'no', 3, ''),
(69, 'Holololo', 'duy_vu', 'none', '2021-11-21 18:18:56', 'no', 'no', 2, ''),
(70, 'Vua cua Ha Noi la bo may', 'duy_vu', 'none', '2021-11-21 18:19:06', 'no', 'no', 4, ''),
(71, 'May thang kia lan dau roi', 'duy_vu', 'none', '2021-11-21 18:19:14', 'no', 'no', 3, ''),
(72, 'Im me may di', 'bao_gia', 'none', '2021-11-21 19:08:19', 'no', 'no', 4, ''),
(73, 'Du team chua ?', 'bao_gia', 'none', '2021-11-21 19:16:54', 'no', 'no', 4, ''),
(74, 'Lai loi loi cai lol gi vay ?', 'bao_gia', 'none', '2021-11-21 19:57:26', 'no', 'no', 5, ''),
(75, 'Test thu mot ti nhe ca nha', 'bao_gia', 'none', '2021-11-21 21:36:50', 'no', 'no', 6, ''),
(76, 'Shit vai~ ajax khong hien loading gif !!!', 'duy_vu', 'none', '2021-11-21 21:47:27', 'no', 'no', 3, ''),
(77, 'Chung may tuoi gi ?', 'duy_vu_1', 'none', '2021-11-24 18:29:32', 'no', 'no', 2, ''),
(78, 'Lalisa on fire', 'duy_vu_1', 'none', '2021-11-24 18:29:50', 'no', 'no', 6, ''),
(79, 'Cam do tren tay ae call<br />\nLay me con di save my friend', 'duy_vu_1', 'none', '2021-11-24 18:30:07', 'no', 'no', 4, ''),
(80, 'Ga vl hoa ra ko them php vao tag', 'bao_long', 'none', '2021-11-25 00:17:17', 'no', 'no', 9, ''),
(81, 'Css ko ra dc trong comment ?', 'bao_long', 'none', '2021-11-25 01:47:13', 'no', 'no', 8, ''),
(82, 'Oke oke va bo may bao la oke ? oke ?', 'bao_long', 'none', '2021-11-25 16:20:41', 'no', 'no', 7, ''),
(83, 'Chao ngay moi 26/11', 'phuc_hoang', 'none', '2021-11-26 16:55:19', 'no', 'no', 6, ''),
(84, 'Chao ngay moi 27/11', 'bao_gia', 'none', '2021-11-27 15:44:26', 'no', 'no', 6, ''),
(85, 'Hi i\'m newbie!', 'ho_nguyen', 'none', '2021-11-27 15:46:54', 'no', 'no', 4, ''),
(86, 'Tu nay hua se lam nguoi tot', 'duy_vu', 'none', '2021-11-27 15:52:17', 'no', 'no', 9, ''),
(87, 'Gau gau gau', 'ho_nguyen', 'none', '2021-11-27 15:52:50', 'no', 'no', 3, ''),
(88, 'Day t CSDLPT di duy!', 'bao_long', 'duy_vu', '2021-11-29 03:23:37', 'no', 'no', 6, ''),
(89, 'Check 1 ty th o oi', 'bao_long', 'bao_gia', '2021-11-29 03:57:28', 'no', 'no', 4, ''),
(90, 'T6 di choi ko', 'ho_nguyen', 'bao_gia', '2021-11-30 01:44:46', 'no', 'no', 4, ''),
(91, 'Boo', 'ho_nguyen', 'none', '2021-11-30 03:36:35', 'no', 'no', 3, ''),
(92, 'Test post', 'ho_nguyen', 'none', '2021-11-30 04:11:22', 'no', 'no', 4, ''),
(93, 'Delete function', 'duy_vu', 'none', '2021-12-04 16:22:34', 'no', 'no', 9, ''),
(94, 'Hello guys', 'dat_thanh', 'none', '2021-12-04 16:24:20', 'no', 'no', 7, ''),
(96, 'Test delete', 'bao_gia', 'none', '2021-12-04 21:50:22', 'no', 'yes', 0, ''),
(98, 'Test delete', 'bao_gia', 'none', '2021-12-04 21:51:14', 'no', 'yes', 0, ''),
(100, 'Test delete', 'bao_gia', 'none', '2021-12-04 21:51:36', 'no', 'yes', 0, ''),
(102, 'Test delete', 'bao_gia', 'none', '2021-12-04 21:54:13', 'no', 'yes', 0, ''),
(104, 'Test delete', 'bao_gia', 'none', '2021-12-04 21:56:51', 'no', 'yes', 0, ''),
(105, 'Test delete', 'bao_gia', 'none', '2021-12-04 22:23:54', 'no', 'no', 8, ''),
(106, 'Test delete', 'bao_gia', 'none', '2021-12-04 22:28:27', 'no', 'yes', 0, ''),
(107, 'Test delete', 'bao_gia', 'none', '2021-12-04 22:28:30', 'no', 'yes', 0, ''),
(108, 'Test delete', 'bao_gia', 'none', '2021-12-04 22:28:53', 'no', 'yes', 0, ''),
(109, 'Test delete', 'bao_gia', 'none', '2021-12-04 22:28:57', 'no', 'yes', 0, ''),
(110, 'Test delete', 'bao_gia', 'none', '2021-12-04 22:29:05', 'no', 'yes', 0, ''),
(111, 'Test delete', 'bao_gia', 'none', '2021-12-04 22:29:09', 'no', 'yes', 0, ''),
(112, 'Test delete', 'bao_gia', 'none', '2021-12-04 22:29:14', 'no', 'yes', 0, ''),
(113, 'Test delete', 'bao_gia', 'none', '2021-12-04 22:29:19', 'no', 'yes', 0, ''),
(114, 'Test delete', 'bao_gia', 'none', '2021-12-04 22:29:24', 'no', 'yes', 0, ''),
(115, 'Test delete', 'bao_gia', 'none', '2021-12-04 22:29:28', 'no', 'yes', 0, ''),
(116, 'Test delete', 'bao_gia', 'none', '2021-12-04 22:29:34', 'no', 'yes', 0, ''),
(117, 'Alo test resubmit', 'bao_gia', 'none', '2021-12-04 23:31:39', 'no', 'no', 7, ''),
(118, 'Dortmund vs Bayern 04/12/2021', 'bao_long', 'none', '2021-12-04 23:46:56', 'no', 'no', 7, ''),
(119, 'Ti bet ko?', 'bao_long', 'bao_gia', '2021-12-04 23:52:12', 'no', 'no', 9, ''),
(120, 'Bayern hay vl', 'ho_nguyen', 'none', '2021-12-05 03:40:23', 'no', 'no', 5, ''),
(121, 'Khong bt dang nhu nay\n<br />\nThi co bi bug ko nhi', 'ho_nguyen', 'none', '2021-12-05 03:40:50', 'no', 'no', 5, ''),
(122, 'Hey new friend!', 'duong_vu', 'hoang_loc', '2021-12-05 03:43:18', 'no', 'no', 3, ''),
(123, 'Im newbie!', 'hoang_loc', 'none', '2021-12-05 03:44:30', 'no', 'no', 5, ''),
(124, 'Hello<br />\nGuys', 'hoang_loc', 'none', '2021-12-05 03:49:42', 'no', 'yes', 1, ''),
(125, 'good morning guys', 'duy_vu_1', 'none', '2021-12-05 04:25:13', 'no', 'no', 6, ''),
(126, 'Hell year!', 'duy_vu_1', 'none', '2021-12-06 02:58:57', 'no', 'no', 6, ''),
(127, '12/06/2021', 'bao_gia', 'none', '2021-12-06 20:24:32', 'no', 'no', 5, ''),
(128, 'Cha ai ket ban voi minh ca :(', 'duong_vu', 'none', '2021-12-07 02:23:34', 'no', 'no', 3, ''),
(129, 'Newbie ', 'yen_nhi', 'none', '2021-12-07 02:27:45', 'no', 'no', 7, ''),
(130, 'Vk iu cua @hoang_loc', 'yen_nhi', 'none', '2021-12-07 02:28:05', 'no', 'no', 7, ''),
(131, 'Iu ck nhat ', 'yen_nhi', 'hoang_loc', '2021-12-07 02:28:48', 'no', 'no', 4, ''),
(132, 'Hey guys ', 'thu_huong', 'none', '2021-12-07 02:31:42', 'no', 'no', 6, ''),
(133, '07/12/2021', 'thu_huong', 'none', '2021-12-07 15:17:19', 'no', 'no', 6, ''),
(134, 'Hi everyone! ', 'hoai_anh', 'none', '2021-12-07 16:04:53', 'no', 'no', 5, ''),
(135, 'Love yah ', 'thu_huong', 'hoai_anh', '2021-12-07 18:50:57', 'no', 'no', 6, ''),
(136, 'Test', 'thu_huong', 'none', '2021-12-07 18:51:14', 'no', 'yes', 0, ''),
(137, '09/12/2021', 'bao_long', 'none', '2021-12-09 03:50:27', 'no', 'no', 5, ''),
(138, 'Chuc vk yeu mot ngay moi tot lanh nhe ', 'hoai_anh', 'yen_nhi', '2021-12-09 11:57:50', 'no', 'no', 5, ''),
(139, 'Hi mn!!!', 'thuy_tien', 'none', '2021-12-09 12:02:53', 'no', 'no', 1, ''),
(140, 'Bye socialhub ;(', 'dat_thanh', 'none', '2021-12-10 01:30:07', 'no', 'no', 3, ''),
(141, 'Hay vl! <br><iframe width=\'500\' height=\'315\' src=\'https://www.youtube.com/embed/N4a9Db9_ijc\'></iframe><br>', 'dat_thanh', 'none', '2021-12-10 02:04:10', 'no', 'no', 2, ''),
(142, 'Phim nay so qua !!!<br /> <br><iframe width=\'500\' height=\'315\' src=\'https://www.youtube.com/embed/pke3aYAmtWA\'></iframe><br>', 'dat_thanh', 'none', '2021-12-10 02:13:58', 'no', 'yes', 0, ''),
(143, 'Phim nay so qua !!! <br><iframe width=\'500\' height=\'315\' src=\'https://www.youtube.com/embed/pke3aYAmtWA\'></iframe><br>', 'dat_thanh', 'none', '2021-12-10 02:14:16', 'no', 'no', 3, ''),
(144, '#justiceForLewy', 'dat_thanh', 'none', '2021-12-10 02:52:01', 'no', 'no', 2, ''),
(145, 'Mia San Mia', 'duy_vu', 'none', '2021-12-10 02:52:50', 'no', 'no', 2, ''),
(146, 'Truong THPT Nhan Chinh ', 'duy_vu', 'none', '2021-12-10 02:53:19', 'no', 'no', 2, ''),
(147, 'Em dep ko can son phan ', 'thu_huong', 'none', '2021-12-10 04:14:19', 'no', 'no', 2, 'assets/images/posts/61b271abeeb0e156549151_1376706146032061_6663275632695523695_n.jpg'),
(148, 'Lalisa ~~~', 'thuy_tien', 'none', '2021-12-10 04:20:56', 'no', 'no', 1, 'assets/images/posts/61b2733861523231872834_355178726214518_6102959609407339939_n.jpg'),
(149, 'So hot <br><iframe width=\'500\' height=\'315\' src=\'https://www.youtube.com/embed/6Uo-3Dh1puA\'></iframe><br>', 'duy_vu', 'none', '2021-12-10 04:41:14', 'no', 'yes', 0, ''),
(150, 'So hot <br><iframe width=\'500\' height=\'315\' src=\'https://www.youtube.com/embed/qob4WJzCgpo\'></iframe><br>', 'duy_vu', 'none', '2021-12-10 04:42:22', 'no', 'yes', 0, ''),
(151, 'So sad <br><iframe width=\'500\' height=\'315\' src=\'https://www.youtube.com/embed/ixdSsW5n2rI\'></iframe><br>', 'duy_vu', 'none', '2021-12-10 04:43:20', 'no', 'no', 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblTrend`
--

CREATE TABLE `tblTrend` (
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblTrend`
--

INSERT INTO `tblTrend` (`title`, `hits`) VALUES
('JusticeForLewy', 1),
('Mia', 2),
('San', 1),
('Truong', 1),
('THPT', 1),
('Nhan', 1),
('Chinh', 1),
('Em', 1),
('Dep', 1),
('Ko', 1),
('Son', 1),
('Phan', 1),
('Lalisa', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblUser`
--

CREATE TABLE `tblUser` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `friend_array` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblUser`
--

INSERT INTO `tblUser` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(2, 'Duy', 'Vu', 'duy_vu', 'duyvu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2021-11-17', 'assets/images/profile_pics/duy_vu9b42e1106385ecc6ebfad06d405d1718n.jpeg', 33, 58, 'no', ',bao_long,duy_vu_1,bao_gia,ho_nguyen,dat_thanh,hoang_loc,duong_vu,yen_nhi,thu_huong,hoai_anh,thuy_tien,'),
(3, 'Bao', 'Gia', 'bao_gia', 'giabao@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2021-11-17', 'assets/images/profile_pics/bao_giae9f5a3b56aa327c5ce5636653538b18cn.jpeg', 60, 48, 'no', ',phuc_hoang,duy_vu_1,bao_long,ho_nguyen,duy_vu,dat_thanh,hoang_loc,duong_vu,'),
(4, 'Duy', 'Vu', 'duy_vu_1', 'ducduy@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2021-11-17', 'assets/images/profile_pics/duy_vu_103e0fc319940f9a4f9d4c1c3c771db86n.jpeg', 7, 24, 'no', ',duy_vu,bao_gia,bao_long,phuc_hoang,ho_nguyen,dat_thanh,duong_vu,'),
(5, 'Phuc', 'Hoang', 'phuc_hoang', 'phuc@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2021-11-17', 'assets/images/profile_pics/phuc_hoang6ebf8dcc5378ff361af73562038559b7n.jpeg', 7, 8, 'no', ',bao_long,bao_gia,duy_vu_1,hoang_loc,yen_nhi,hoai_anh,thu_huong,'),
(6, 'Bao', 'Long', 'bao_long', 'baolong@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2021-11-18', 'assets/images/profile_pics/bao_longa3cd0c1f27e47e6dd58a16495ad8a164n.jpeg', 10, 59, 'no', ',duy_vu,phuc_hoang,duy_vu_1,bao_gia,ho_nguyen,dat_thanh,hoang_loc,duong_vu,yen_nhi,thu_huong,hoai_anh,'),
(7, 'Ho', 'Nguyen', 'ho_nguyen', 'honguyen@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2021-11-27', 'assets/images/profile_pics/ho_nguyen106ca2896328e54153cab53f474f40d8n.jpeg', 7, 28, 'no', ',bao_gia,duy_vu,bao_long,hoang_loc,duy_vu_1,'),
(8, 'Dat', 'Thanh', 'dat_thanh', 'datmaniac@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2021-12-04', 'assets/images/profile_pics/dat_thanh7b07953c97fec8df254f75fe63630f27n.jpeg', 6, 17, 'no', ',duy_vu,bao_gia,bao_long,duy_vu_1,yen_nhi,thu_huong,hoai_anh,'),
(9, 'Hoang', 'Loc', 'hoang_loc', 'hoangloc1509@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2021-12-05', 'assets/images/profile_pics/hoang_locceb6c2c66360dfabe0cdb8b79a19fecfn.jpeg', 2, 6, 'no', ',duy_vu,ho_nguyen,phuc_hoang,duong_vu,bao_gia,bao_long,'),
(10, 'Duong', 'Vu', 'duong_vu', 'duonghv@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2021-12-05', 'assets/images/profile_pics/defaults/head_pete_river.png', 2, 6, 'no', ',hoang_loc,duy_vu,bao_gia,duy_vu_1,bao_long,'),
(11, 'Yen', 'Nhi', 'yen_nhi', 'lyn@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2021-12-07', 'assets/images/profile_pics/yen_nhic2f9c19f989fbcfa7633a65b340a6503n.jpeg', 3, 18, 'no', ',bao_long,duy_vu,phuc_hoang,dat_thanh,'),
(12, 'Thu', 'Huong', 'thu_huong', 'thuhuong@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2021-12-07', 'assets/images/profile_pics/thu_huong7961e54eb766c4576f68f46ffc06421bn.jpeg', 4, 20, 'no', ',bao_long,duy_vu,hoai_anh,phuc_hoang,dat_thanh,'),
(13, 'Hoai', 'Anh', 'hoai_anh', 'hoaianh@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2021-12-07', 'assets/images/profile_pics/hoai_anh23a56db6b143dd0270cfc1ddaec163b3n.jpeg', 1, 10, 'no', ',thu_huong,duy_vu,phuc_hoang,dat_thanh,bao_long,'),
(14, 'Thuy', 'Tien', 'thuy_tien', 'thuytien@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2021-12-09', 'assets/images/profile_pics/thuy_tien6a0326ea8c236f774014d4e14c0cc7d6n.jpeg', 2, 2, 'no', ',duy_vu,');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tblComment`
--
ALTER TABLE `tblComment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblFriendRequest`
--
ALTER TABLE `tblFriendRequest`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblLike`
--
ALTER TABLE `tblLike`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblMessage`
--
ALTER TABLE `tblMessage`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblNotification`
--
ALTER TABLE `tblNotification`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblPost`
--
ALTER TABLE `tblPost`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblUser`
--
ALTER TABLE `tblUser`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tblComment`
--
ALTER TABLE `tblComment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `tblFriendRequest`
--
ALTER TABLE `tblFriendRequest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `tblLike`
--
ALTER TABLE `tblLike`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;

--
-- AUTO_INCREMENT cho bảng `tblMessage`
--
ALTER TABLE `tblMessage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT cho bảng `tblNotification`
--
ALTER TABLE `tblNotification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT cho bảng `tblPost`
--
ALTER TABLE `tblPost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT cho bảng `tblUser`
--
ALTER TABLE `tblUser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 14, 2018 lúc 10:25 AM
-- Phiên bản máy phục vụ: 10.1.31-MariaDB
-- Phiên bản PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `_vo`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, '', 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '', 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, '', 9),
(23, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(24, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(25, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(26, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 4),
(27, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(28, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '', 6),
(29, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(30, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(31, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(32, 5, 'category_id', 'text', 'Category', 0, 0, 1, 1, 1, 0, NULL, 3),
(33, 5, 'title', 'text', 'Tiêu đề', 1, 1, 1, 1, 1, 1, NULL, 4),
(34, 5, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, NULL, 5),
(35, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(36, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(37, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(38, 5, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, NULL, 9),
(39, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, NULL, 10),
(40, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(41, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(42, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(43, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(44, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(45, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(46, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '', 2),
(47, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 3),
(48, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(49, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 5),
(50, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(51, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, '', 7),
(52, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, '', 8),
(53, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(54, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '', 10),
(55, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, '', 11),
(56, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, '', 12),
(71, 9, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(72, 9, 'author_id', 'text', 'Author', 1, 1, 1, 1, 0, 1, NULL, 3),
(73, 9, 'title', 'text', 'Tiêu đề', 1, 1, 1, 1, 1, 1, NULL, 2),
(74, 9, 'seo_title', 'text', 'Seo Title', 0, 1, 1, 1, 1, 1, NULL, 7),
(75, 9, 'excerpt', 'text', 'Excerpt', 0, 0, 1, 1, 1, 1, NULL, 8),
(76, 9, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 9),
(77, 9, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 4),
(78, 9, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 10),
(79, 9, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, NULL, 11),
(80, 9, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, NULL, 12),
(81, 9, 'status', 'text', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 5),
(82, 9, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 6),
(83, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 13),
(84, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 14),
(85, 10, 'id', 'text', 'Id', 1, 1, 1, 1, 1, 1, NULL, 1),
(86, 10, 'author_id', 'text', 'Author Id', 1, 1, 1, 1, 1, 1, NULL, 2),
(87, 10, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(88, 10, 'seo_title', 'text', 'Seo Title', 0, 1, 1, 1, 1, 1, NULL, 4),
(89, 10, 'excerpt', 'text', 'Excerpt', 0, 1, 1, 1, 1, 1, NULL, 5),
(90, 10, 'body', 'text', 'Body', 1, 1, 1, 1, 1, 1, NULL, 6),
(91, 10, 'image', 'text', 'Image', 0, 1, 1, 1, 1, 1, NULL, 7),
(92, 10, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, NULL, 8),
(93, 10, 'meta_description', 'text', 'Meta Description', 0, 1, 1, 1, 1, 1, NULL, 9),
(94, 10, 'meta_keywords', 'text', 'Meta Keywords', 0, 1, 1, 1, 1, 1, NULL, 10),
(95, 10, 'status', 'text', 'Status', 1, 1, 1, 1, 1, 1, NULL, 11),
(96, 10, 'featured', 'text', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 12),
(97, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 13),
(98, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 14);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2018-08-10 01:33:42', '2018-08-10 01:33:42'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-08-10 01:33:42', '2018-08-10 01:33:42'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-08-10 01:33:42', '2018-08-10 01:33:42'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2018-08-10 01:33:53', '2018-08-10 01:33:53'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-08-10 01:33:56', '2018-08-13 01:38:08'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2018-08-10 01:33:57', '2018-08-10 01:33:57'),
(9, 'gioithieus', 'gioithieus', 'Bài viết - Giới thiệu', 'Bài viết - Giới thiệu', 'voyager-news', 'App\\Gioithieu', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-08-12 21:08:47', '2018-08-13 01:04:17'),
(10, 'tests', 'tests', 'Test', 'Tests', NULL, 'App\\Test', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-08-13 01:22:55', '2018-08-13 01:22:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gioithieus`
--

CREATE TABLE `gioithieus` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `gioithieus`
--

INSERT INTO `gioithieus` (`id`, `author_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(2, 1, 'Công ty Cổ phần Công nghệ An toàn thông tin VNIST', NULL, NULL, '<p style=\"color: #222222;\">Th&agrave;nh lập năm 2013, C&ocirc;ng ty Cổ phần C&ocirc;ng nghệ An to&agrave;n th&ocirc;ng tin v&agrave; Truyền Th&ocirc;ng Việt Nam (VNIST., JSC) kh&ocirc;ng ngừng ph&aacute;t triển lớn mạnh về quy m&ocirc; v&agrave; nh&acirc;n sự, thực hiện mục ti&ecirc;u trở th&agrave;nh tập đo&agrave;n c&ocirc;ng nghệ v&agrave; an to&agrave;n th&ocirc;ng tin h&agrave;ng đầu tại Việt Nam. Lấy thế mạnh C&ocirc;ng nghệ th&ocirc;ng tin v&agrave; An to&agrave;n th&ocirc;ng tin, VNIST đ&atilde; v&agrave; đang dần khẳng định vị thế của m&igrave;nh tr&ecirc;n cả b&igrave;nh diện trong nước v&agrave; quốc tế.</p>\r\n<p style=\"color: #222222;\">VNIST sở hữu những người trẻ, những chuy&ecirc;n gia c&oacute; tr&igrave;nh độ cao, kinh nghiệm v&agrave; đam m&ecirc; trong c&ocirc;ng việc. Với sứ mệnh tạo n&ecirc;n những sản phẩm, dịch vụ mang thương hiệu Việt Nam v&agrave; do người Việt Nam l&agrave;m chủ, ch&uacute;ng t&ocirc;i lu&ocirc;n nỗ lực v&agrave; chiến đấu mỗi ng&agrave;y.</p>\r\n<h3>NHIỆM VỤ CỦA CH&Uacute;NG T&Ocirc;I</h3>\r\n<blockquote>\r\n<p style=\"color: #222222;\">Hỗ trợ, ứng cứu mọi sự cố An to&agrave;n th&ocirc;ng tin li&ecirc;n tục 24/07</p>\r\n<p style=\"color: #222222;\">Nghi&ecirc;n cứu v&agrave; đ&agrave;o tạo đội ngũ chuy&ecirc;n gia An ninh mạng chất lượng cao</p>\r\n<p style=\"color: #222222;\">X&acirc;y dựng c&aacute;c sản phẩm c&ocirc;ng nghệ mang thương hiệu Việt Nam v&agrave; do người Việt Nam l&agrave;m chủ</p>\r\n</blockquote>\r\n<p style=\"color: #222222;\">&ldquo;L&agrave;m mọi việc tốt nhất v&agrave; nhanh nhất&rdquo; &ndash; Đ&oacute; l&agrave; ti&ecirc;u ch&iacute; của ch&uacute;ng t&ocirc;i</p>', NULL, 'cong-ty-co-phan-cong-nghe-an-toan-thong-tin-vnist', NULL, NULL, 'PUBLISHED', 1, '2018-08-12 12:40:49', '2018-08-13 02:47:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-08-10 01:33:43', '2018-08-10 01:33:43'),
(2, 'MainMenu', '2018-08-10 21:43:16', '2018-08-10 21:43:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-08-10 01:33:43', '2018-08-10 01:33:43', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2018-08-10 01:33:43', '2018-08-12 23:57:48', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2018-08-10 01:33:43', '2018-08-10 01:33:43', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2018-08-10 01:33:43', '2018-08-10 01:33:43', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2018-08-10 01:33:43', '2018-08-10 01:33:43', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2018-08-10 01:33:43', '2018-08-12 23:57:49', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2018-08-10 01:33:43', '2018-08-12 23:57:49', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2018-08-10 01:33:43', '2018-08-12 23:57:49', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2018-08-10 01:33:43', '2018-08-12 23:57:49', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 10, '2018-08-10 01:33:44', '2018-08-12 23:57:49', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2018-08-10 01:33:54', '2018-08-10 01:33:54', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2018-08-10 01:33:57', '2018-08-10 01:33:57', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2018-08-10 01:33:58', '2018-08-10 01:33:58', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2018-08-10 01:34:00', '2018-08-12 23:57:49', 'voyager.hooks', NULL),
(15, 2, 'Trang chủ', '/', '_self', NULL, '#000000', NULL, 15, '2018-08-10 21:50:47', '2018-08-10 21:50:47', NULL, ''),
(16, 2, 'Giới thiệu', 'gioi-thieu', '_self', NULL, '#000000', NULL, 16, '2018-08-10 21:51:10', '2018-08-12 20:22:41', NULL, ''),
(17, 2, 'Dịch vụ', 'dich-vu-an-toan-thong-tin', '_self', NULL, '#000000', NULL, 17, '2018-08-10 21:54:20', '2018-08-10 21:58:13', NULL, ''),
(18, 2, 'Liên hệ', 'lien-he', '_self', NULL, '#000000', NULL, 18, '2018-08-10 21:56:40', '2018-08-10 21:56:40', NULL, ''),
(19, 2, 'Công cụ', 'cong-cu', '_self', NULL, '#000000', NULL, 19, '2018-08-10 21:56:57', '2018-08-10 21:56:57', NULL, ''),
(20, 1, 'Posts Giới thiệu', '', '_self', 'voyager-news', '#000000', NULL, 5, '2018-08-12 20:53:38', '2018-08-13 00:00:02', 'voyager.gioithieus.index', 'null'),
(22, 1, 'Tests', '', '_self', NULL, NULL, NULL, 20, '2018-08-13 01:22:56', '2018-08-13 01:22:56', 'voyager.tests.index', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2016_01_01_000000_create_pages_table', 2),
(24, '2016_01_01_000000_create_posts_table', 2),
(25, '2016_02_15_204651_create_categories_table', 2),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-08-10 01:33:44', '2018-08-10 01:33:44'),
(2, 'browse_bread', NULL, '2018-08-10 01:33:44', '2018-08-10 01:33:44'),
(3, 'browse_database', NULL, '2018-08-10 01:33:44', '2018-08-10 01:33:44'),
(4, 'browse_media', NULL, '2018-08-10 01:33:44', '2018-08-10 01:33:44'),
(5, 'browse_compass', NULL, '2018-08-10 01:33:44', '2018-08-10 01:33:44'),
(6, 'browse_menus', 'menus', '2018-08-10 01:33:44', '2018-08-10 01:33:44'),
(7, 'read_menus', 'menus', '2018-08-10 01:33:44', '2018-08-10 01:33:44'),
(8, 'edit_menus', 'menus', '2018-08-10 01:33:44', '2018-08-10 01:33:44'),
(9, 'add_menus', 'menus', '2018-08-10 01:33:44', '2018-08-10 01:33:44'),
(10, 'delete_menus', 'menus', '2018-08-10 01:33:44', '2018-08-10 01:33:44'),
(11, 'browse_roles', 'roles', '2018-08-10 01:33:44', '2018-08-10 01:33:44'),
(12, 'read_roles', 'roles', '2018-08-10 01:33:44', '2018-08-10 01:33:44'),
(13, 'edit_roles', 'roles', '2018-08-10 01:33:44', '2018-08-10 01:33:44'),
(14, 'add_roles', 'roles', '2018-08-10 01:33:44', '2018-08-10 01:33:44'),
(15, 'delete_roles', 'roles', '2018-08-10 01:33:45', '2018-08-10 01:33:45'),
(16, 'browse_users', 'users', '2018-08-10 01:33:45', '2018-08-10 01:33:45'),
(17, 'read_users', 'users', '2018-08-10 01:33:45', '2018-08-10 01:33:45'),
(18, 'edit_users', 'users', '2018-08-10 01:33:45', '2018-08-10 01:33:45'),
(19, 'add_users', 'users', '2018-08-10 01:33:45', '2018-08-10 01:33:45'),
(20, 'delete_users', 'users', '2018-08-10 01:33:45', '2018-08-10 01:33:45'),
(21, 'browse_settings', 'settings', '2018-08-10 01:33:45', '2018-08-10 01:33:45'),
(22, 'read_settings', 'settings', '2018-08-10 01:33:45', '2018-08-10 01:33:45'),
(23, 'edit_settings', 'settings', '2018-08-10 01:33:45', '2018-08-10 01:33:45'),
(24, 'add_settings', 'settings', '2018-08-10 01:33:45', '2018-08-10 01:33:45'),
(25, 'delete_settings', 'settings', '2018-08-10 01:33:45', '2018-08-10 01:33:45'),
(26, 'browse_categories', 'categories', '2018-08-10 01:33:54', '2018-08-10 01:33:54'),
(27, 'read_categories', 'categories', '2018-08-10 01:33:54', '2018-08-10 01:33:54'),
(28, 'edit_categories', 'categories', '2018-08-10 01:33:54', '2018-08-10 01:33:54'),
(29, 'add_categories', 'categories', '2018-08-10 01:33:54', '2018-08-10 01:33:54'),
(30, 'delete_categories', 'categories', '2018-08-10 01:33:55', '2018-08-10 01:33:55'),
(31, 'browse_posts', 'posts', '2018-08-10 01:33:57', '2018-08-10 01:33:57'),
(32, 'read_posts', 'posts', '2018-08-10 01:33:57', '2018-08-10 01:33:57'),
(33, 'edit_posts', 'posts', '2018-08-10 01:33:57', '2018-08-10 01:33:57'),
(34, 'add_posts', 'posts', '2018-08-10 01:33:57', '2018-08-10 01:33:57'),
(35, 'delete_posts', 'posts', '2018-08-10 01:33:57', '2018-08-10 01:33:57'),
(36, 'browse_pages', 'pages', '2018-08-10 01:33:58', '2018-08-10 01:33:58'),
(37, 'read_pages', 'pages', '2018-08-10 01:33:58', '2018-08-10 01:33:58'),
(38, 'edit_pages', 'pages', '2018-08-10 01:33:58', '2018-08-10 01:33:58'),
(39, 'add_pages', 'pages', '2018-08-10 01:33:58', '2018-08-10 01:33:58'),
(40, 'delete_pages', 'pages', '2018-08-10 01:33:58', '2018-08-10 01:33:58'),
(41, 'browse_hooks', NULL, '2018-08-10 01:34:00', '2018-08-10 01:34:00'),
(47, 'browse_gioithieus', 'gioithieus', '2018-08-12 21:08:48', '2018-08-12 21:08:48'),
(48, 'read_gioithieus', 'gioithieus', '2018-08-12 21:08:48', '2018-08-12 21:08:48'),
(49, 'edit_gioithieus', 'gioithieus', '2018-08-12 21:08:48', '2018-08-12 21:08:48'),
(50, 'add_gioithieus', 'gioithieus', '2018-08-12 21:08:48', '2018-08-12 21:08:48'),
(51, 'delete_gioithieus', 'gioithieus', '2018-08-12 21:08:48', '2018-08-12 21:08:48'),
(52, 'browse_tests', 'tests', '2018-08-13 01:22:55', '2018-08-13 01:22:55'),
(53, 'read_tests', 'tests', '2018-08-13 01:22:55', '2018-08-13 01:22:55'),
(54, 'edit_tests', 'tests', '2018-08-13 01:22:55', '2018-08-13 01:22:55'),
(55, 'add_tests', 'tests', '2018-08-13 01:22:55', '2018-08-13 01:22:55'),
(56, 'delete_tests', 'tests', '2018-08-13 01:22:55', '2018-08-13 01:22:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(5, 1, 3, 'Công ty Cổ phần Công nghệ An toàn thông tin VNIST', NULL, NULL, '<p style=\"color: #222222;\">Th&agrave;nh lập năm 2013, C&ocirc;ng ty Cổ phần C&ocirc;ng nghệ An to&agrave;n th&ocirc;ng tin v&agrave; Truyền Th&ocirc;ng Việt Nam (VNIST., JSC) kh&ocirc;ng ngừng ph&aacute;t triển lớn mạnh về quy m&ocirc; v&agrave; nh&acirc;n sự, thực hiện mục ti&ecirc;u trở th&agrave;nh tập đo&agrave;n c&ocirc;ng nghệ v&agrave; an to&agrave;n th&ocirc;ng tin h&agrave;ng đầu tại Việt Nam. Lấy thế mạnh C&ocirc;ng nghệ th&ocirc;ng tin v&agrave; An to&agrave;n th&ocirc;ng tin, VNIST đ&atilde; v&agrave; đang dần khẳng định vị thế của m&igrave;nh tr&ecirc;n cả b&igrave;nh diện trong nước v&agrave; quốc tế.</p>\r\n<p style=\"color: #222222;\">VNIST sở hữu những người trẻ, những chuy&ecirc;n gia c&oacute; tr&igrave;nh độ cao, kinh nghiệm v&agrave; đam m&ecirc; trong c&ocirc;ng việc. Với sứ mệnh tạo n&ecirc;n những sản phẩm, dịch vụ mang thương hiệu Việt Nam v&agrave; do người Việt Nam l&agrave;m chủ, ch&uacute;ng t&ocirc;i lu&ocirc;n nỗ lực v&agrave; chiến đấu mỗi ng&agrave;y.</p>\r\n<h3>NHIỆM VỤ CỦA CH&Uacute;NG T&Ocirc;I</h3>\r\n<blockquote>\r\n<p style=\"color: #222222;\">Hỗ trợ, ứng cứu mọi sự cố An to&agrave;n th&ocirc;ng tin li&ecirc;n tục 24/07</p>\r\n<p style=\"color: #222222;\">Nghi&ecirc;n cứu v&agrave; đ&agrave;o tạo đội ngũ chuy&ecirc;n gia An ninh mạng chất lượng cao</p>\r\n<p style=\"color: #222222;\">X&acirc;y dựng c&aacute;c sản phẩm c&ocirc;ng nghệ mang thương hiệu Việt Nam v&agrave; do người Việt Nam l&agrave;m chủ</p>\r\n</blockquote>\r\n<p style=\"color: #222222;\">&ldquo;L&agrave;m mọi việc tốt nhất v&agrave; nhanh nhất&rdquo; &ndash; Đ&oacute; l&agrave; ti&ecirc;u ch&iacute; của ch&uacute;ng t&ocirc;i</p>', NULL, 'cong-ty-co-phan-cong-nghe-an-toan-thong-tin-vnist', NULL, NULL, 'PUBLISHED', 0, '2018-08-12 19:40:49', '2018-08-12 19:40:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-08-10 01:33:44', '2018-08-10 01:33:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Công ty CP Công nghệ An toàn thông tin VNIST | VNIST.,JSC', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'VNIST', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to VNIST - Administrator', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(12, 'contact.displayname', 'Contact', 'Q. Hai Bà Trưng, Hà Nội', NULL, 'text', 6, 'Contact'),
(13, 'contact.phone', 'Contact', '+84 986 986 247 (Hotline)', NULL, 'text', 8, 'Contact'),
(14, 'contact.hour', 'Contact', '8.00 - 18.00 (24/7)', NULL, 'text', 9, 'Contact'),
(15, 'contact.address', 'Contact', 'P.901A - Tòa nhà 8C - Đại Cồ Việt', NULL, 'text', 7, 'Contact'),
(16, 'contact.email', 'Contact', 'office@vnist.vn', NULL, 'text', 10, 'Contact'),
(17, 'contact.message', 'Contact', 'Hãy gửi yêu cầu của bạn', NULL, 'text', 11, 'Contact');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2018-08-10 01:33:58', '2018-08-10 01:33:58'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2018-08-10 01:33:58', '2018-08-10 01:33:58'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2018-08-10 01:33:58', '2018-08-10 01:33:58'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2018-08-10 01:33:58', '2018-08-10 01:33:58'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2018-08-10 01:33:58', '2018-08-10 01:33:58'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2018-08-10 01:33:58', '2018-08-10 01:33:58'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2018-08-10 01:33:58', '2018-08-10 01:33:58'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2018-08-10 01:33:58', '2018-08-10 01:33:58'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2018-08-10 01:33:59', '2018-08-10 01:33:59'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2018-08-10 01:33:59', '2018-08-10 01:33:59'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2018-08-10 01:33:59', '2018-08-10 01:33:59'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2018-08-10 01:33:59', '2018-08-10 01:33:59'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2018-08-10 01:33:59', '2018-08-10 01:33:59'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2018-08-10 01:33:59', '2018-08-10 01:33:59'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2018-08-10 01:33:59', '2018-08-10 01:33:59'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2018-08-10 01:33:59', '2018-08-10 01:33:59'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2018-08-10 01:33:59', '2018-08-10 01:33:59'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2018-08-10 01:33:59', '2018-08-10 01:33:59'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2018-08-10 01:33:59', '2018-08-10 01:33:59'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2018-08-10 01:33:59', '2018-08-10 01:33:59'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2018-08-10 01:33:59', '2018-08-10 01:33:59'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2018-08-10 01:33:59', '2018-08-10 01:33:59'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2018-08-10 01:33:59', '2018-08-10 01:33:59'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2018-08-10 01:33:59', '2018-08-10 01:33:59'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2018-08-10 01:33:59', '2018-08-10 01:33:59'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2018-08-10 01:33:59', '2018-08-10 01:33:59'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2018-08-10 01:33:59', '2018-08-10 01:33:59'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2018-08-10 01:33:59', '2018-08-10 01:33:59'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2018-08-10 01:33:59', '2018-08-10 01:33:59'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2018-08-10 01:33:59', '2018-08-10 01:33:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Administratror', 'vinhcdspnt@gmail.com', 'users\\August2018\\DmmfE7RqwBVVBhm81Eei.png', '$2y$10$QEaUS9H5/S53bNx2iD5T4.yVofOLeTGFP2nBz9uvr.f9We7QuIyAy', 'YamTg9ry3JRXCtpp2zvxImYSLcSU35yqf94dSIsqFjcCSvMwCJYf8ZLggm35', '{\"locale\":\"en\"}', '2018-08-10 01:33:55', '2018-08-10 02:05:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Chỉ mục cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Chỉ mục cho bảng `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `gioithieus`
--
ALTER TABLE `gioithieus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Chỉ mục cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Chỉ mục cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Chỉ mục cho bảng `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT cho bảng `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `gioithieus`
--
ALTER TABLE `gioithieus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Các ràng buộc cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

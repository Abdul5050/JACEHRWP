-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 21, 2019 at 07:37 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jacehrco_wp936`
--

-- --------------------------------------------------------

--
-- Table structure for table `wpnk_commentmeta`
--

CREATE TABLE `wpnk_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpnk_comments`
--

CREATE TABLE `wpnk_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpnk_comments`
--

INSERT INTO `wpnk_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-03-31 11:12:33', '2019-03-31 11:12:33', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 49, 'cptngood', 'captain@jacehr.com', '', '154.118.119.104', '2019-04-04 15:00:06', '2019-04-04 15:00:06', 'Wow this is great. Keep it up man.', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; rv:63.0) Gecko/20100101 Firefox/63.0', '', 0, 1),
(3, 49, 'cptngood', 'captain@jacehr.com', '', '154.118.119.104', '2019-04-04 15:02:24', '2019-04-04 15:02:24', 'Lol! l am not yet happy with this site till l am done with all my homework.', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; rv:63.0) Gecko/20100101 Firefox/63.0', '', 2, 1),
(4, 49, 'cptngood', 'captain@jacehr.com', '', '154.118.119.104', '2019-04-04 16:47:07', '2019-04-04 16:47:07', 'My comment style is getting better now. Let me go and code the front end. No time', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; rv:63.0) Gecko/20100101 Firefox/63.0', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wpnk_eum_logs`
--

CREATE TABLE `wpnk_eum_logs` (
  `log_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version_from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpnk_links`
--

CREATE TABLE `wpnk_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpnk_loginizer_logs`
--

CREATE TABLE `wpnk_loginizer_logs` (
  `username` varchar(255) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  `count` int(10) NOT NULL DEFAULT '0',
  `lockout` int(10) NOT NULL DEFAULT '0',
  `ip` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wpnk_mf_newsletter_table`
--

CREATE TABLE `wpnk_mf_newsletter_table` (
  `id` int(11) NOT NULL,
  `fullname` tinytext COLLATE utf8mb4_unicode_ci,
  `number` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpnk_options`
--

CREATE TABLE `wpnk_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpnk_options`
--

INSERT INTO `wpnk_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://web.jacehr.com', 'yes'),
(2, 'home', 'https://web.jacehr.com', 'yes'),
(3, 'blogname', 'JACE HR', 'yes'),
(4, 'blogdescription', 'Virtual Assistant On Demand', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'captain@jacehr.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:1;s:23:\"loginizer/loginizer.php\";i:2;s:44:\"stops-core-theme-and-plugin-updates/main.php\";i:3;s:29:\"wp-frontpage/wp-frontpage.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'company-ui', 'yes'),
(41, 'stylesheet', 'company-ui', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:23:\"loginizer/loginizer.php\";s:22:\"loginizer_deactivation\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wpnk_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:6:{i:1558415553;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1558415654;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558437189;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558437190;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558497450;a:1:{s:18:\"ai1wm_cleanup_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'loginizer_version', '1.4.1', 'yes'),
(113, 'loginizer_options', 'a:0:{}', 'yes'),
(114, 'loginizer_last_reset', '1558413284', 'yes'),
(115, 'loginizer_whitelist', 'a:0:{}', 'yes'),
(116, 'loginizer_blacklist', 'a:0:{}', 'yes'),
(117, 'loginizer_ins_time', '1554030754', 'yes'),
(118, 'loginizer_promo_time', '1554030754', 'yes'),
(120, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.1.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.1\";s:7:\"version\";s:5:\"5.1.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1557119654;s:15:\"version_checked\";s:5:\"5.1.1\";s:12:\"translations\";a:0:{}}', 'no'),
(154, 'theme_mods_poseidon', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1554094595;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(126, 'theme_mods_twentynineteen', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(127, 'widget_poseidon-magazine-posts-boxed', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(128, 'widget_poseidon-magazine-posts-columns', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(129, 'widget_poseidon-magazine-posts-grid', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(138, 'can_compress_scripts', '0', 'no'),
(322, 'recently_activated', 'a:0:{}', 'yes'),
(359, 'MPSUM', 'a:2:{s:8:\"advanced\";a:1:{s:14:\"excluded_users\";a:0:{}}s:4:\"core\";a:17:{s:11:\"all_updates\";s:3:\"off\";s:12:\"core_updates\";s:2:\"on\";s:14:\"plugin_updates\";s:2:\"on\";s:13:\"theme_updates\";s:2:\"on\";s:19:\"translation_updates\";s:2:\"on\";s:29:\"automatic_development_updates\";s:3:\"off\";s:23:\"automatic_major_updates\";s:3:\"off\";s:23:\"automatic_minor_updates\";s:2:\"on\";s:24:\"automatic_plugin_updates\";s:7:\"default\";s:23:\"automatic_theme_updates\";s:7:\"default\";s:29:\"automatic_translation_updates\";s:2:\"on\";s:31:\"notification_core_update_emails\";s:2:\"on\";s:16:\"misc_browser_nag\";s:2:\"on\";s:14:\"misc_wp_footer\";s:2:\"on\";s:4:\"logs\";s:2:\"on\";s:15:\"email_addresses\";a:0:{}s:17:\"automatic_updates\";s:5:\"unset\";}}', 'yes'),
(360, 'mpsum_log_table_version', '1.1.3', 'yes'),
(623, '_site_transient_timeout_theme_roots', '1558378375', 'no'),
(624, '_site_transient_theme_roots', 'a:5:{s:10:\"company-ui\";s:7:\"/themes\";s:8:\"poseidon\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(343, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1558376575;s:7:\"checked\";a:5:{s:10:\"company-ui\";s:5:\"1.0.0\";s:8:\"poseidon\";s:5:\"1.0.4\";s:14:\"twentynineteen\";s:3:\"1.3\";s:15:\"twentyseventeen\";s:3:\"2.1\";s:13:\"twentysixteen\";s:3:\"1.9\";}s:8:\"response\";a:4:{s:8:\"poseidon\";a:4:{s:5:\"theme\";s:8:\"poseidon\";s:11:\"new_version\";s:5:\"1.7.3\";s:3:\"url\";s:38:\"https://wordpress.org/themes/poseidon/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/theme/poseidon.1.7.3.zip\";}s:14:\"twentynineteen\";a:4:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.4.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.2.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.0.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(171, 'current_theme', 'CompanyUI', 'yes'),
(172, 'theme_mods_company-ui', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:12:\"header_image\";s:58:\"https://web.jacehr.com/wp-content/uploads/2019/04/logo.png\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:5;s:3:\"url\";s:58:\"https://web.jacehr.com/wp-content/uploads/2019/04/logo.png\";s:13:\"thumbnail_url\";s:58:\"https://web.jacehr.com/wp-content/uploads/2019/04/logo.png\";s:6:\"height\";i:60;s:5:\"width\";i:200;}}', 'yes'),
(173, 'theme_switched', '', 'yes'),
(174, 'category_children', 'a:0:{}', 'yes'),
(191, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(523, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1558376574;s:7:\"checked\";a:6:{s:19:\"akismet/akismet.php\";s:5:\"4.1.1\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"6.92\";s:44:\"stops-core-theme-and-plugin-updates/main.php\";s:5:\"8.0.5\";s:9:\"hello.php\";s:5:\"1.7.1\";s:23:\"loginizer/loginizer.php\";s:5:\"1.4.1\";s:29:\"wp-frontpage/wp-frontpage.php\";s:3:\"1.0\";}s:8:\"response\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"6.95\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.6.95.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2075535\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2075535\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=2075535\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=2075535\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.2\";s:12:\"requires_php\";s:6:\"5.2.17\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:23:\"loginizer/loginizer.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:23:\"w.org/plugins/loginizer\";s:4:\"slug\";s:9:\"loginizer\";s:6:\"plugin\";s:23:\"loginizer/loginizer.php\";s:11:\"new_version\";s:5:\"1.4.2\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/loginizer/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/loginizer.1.4.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/loginizer/assets/icon-256x256.png?rev=1381093\";s:2:\"1x\";s:62:\"https://ps.w.org/loginizer/assets/icon-128x128.png?rev=1381093\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/loginizer/assets/banner-1544x500.jpg?rev=1517954\";s:2:\"1x\";s:64:\"https://ps.w.org/loginizer/assets/banner-772x250.jpg?rev=1517954\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.0\";s:12:\"requires_php\";s:5:\"5.2.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:44:\"stops-core-theme-and-plugin-updates/main.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:49:\"w.org/plugins/stops-core-theme-and-plugin-updates\";s:4:\"slug\";s:35:\"stops-core-theme-and-plugin-updates\";s:6:\"plugin\";s:44:\"stops-core-theme-and-plugin-updates/main.php\";s:11:\"new_version\";s:5:\"8.0.5\";s:3:\"url\";s:66:\"https://wordpress.org/plugins/stops-core-theme-and-plugin-updates/\";s:7:\"package\";s:84:\"https://downloads.wordpress.org/plugin/stops-core-theme-and-plugin-updates.8.0.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:88:\"https://ps.w.org/stops-core-theme-and-plugin-updates/assets/icon-256x256.png?rev=1896941\";s:2:\"1x\";s:88:\"https://ps.w.org/stops-core-theme-and-plugin-updates/assets/icon-128x128.png?rev=1896941\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:91:\"https://ps.w.org/stops-core-theme-and-plugin-updates/assets/banner-1544x500.png?rev=1925992\";s:2:\"1x\";s:90:\"https://ps.w.org/stops-core-theme-and-plugin-updates/assets/banner-772x250.png?rev=1925992\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(525, 'ai1wm_updater', 'a:0:{}', 'yes'),
(524, 'ai1wm_secret_key', 'fDff1FmPqfJj', 'yes'),
(528, 'ai1wm_status', 'a:2:{s:4:\"type\";s:8:\"download\";s:7:\"message\";s:301:\"<a href=\"https://web.jacehr.com/wp-content/ai1wm-backups/web.jacehr.com-20190506-035829-571.wpress\" class=\"ai1wm-button-green ai1wm-emphasize ai1wm-button-download\" title=\"web.jacehr.com\" download=\"web.jacehr.com-20190506-035829-571.wpress\"><span>Download web.jacehr.com</span><em>Size: 21 MB</em></a>\";}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wpnk_postmeta`
--

CREATE TABLE `wpnk_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpnk_postmeta`
--

INSERT INTO `wpnk_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', '2019/04/logo.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:60;s:4:\"file\";s:16:\"2019/04/logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x60.png\";s:5:\"width\";i:150;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 5, '_wp_attachment_custom_header_last_used_company-ui', '1554127536'),
(6, 5, '_wp_attachment_is_custom_header', 'company-ui'),
(9, 7, '_menu_item_type', 'custom'),
(10, 7, '_menu_item_menu_item_parent', '0'),
(11, 7, '_menu_item_object_id', '7'),
(12, 7, '_menu_item_object', 'custom'),
(13, 7, '_menu_item_target', ''),
(14, 7, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(15, 7, '_menu_item_xfn', ''),
(16, 7, '_menu_item_url', 'https://web.jacehr.com/'),
(17, 7, '_menu_item_orphaned', '1554130455'),
(18, 8, '_menu_item_type', 'post_type'),
(19, 8, '_menu_item_menu_item_parent', '0'),
(20, 8, '_menu_item_object_id', '2'),
(21, 8, '_menu_item_object', 'page'),
(22, 8, '_menu_item_target', ''),
(23, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(24, 8, '_menu_item_xfn', ''),
(25, 8, '_menu_item_url', ''),
(26, 8, '_menu_item_orphaned', '1554130456'),
(27, 9, '_edit_lock', '1554130398:1'),
(28, 11, '_edit_lock', '1554404647:1'),
(29, 13, '_edit_lock', '1554130455:1'),
(30, 15, '_edit_lock', '1554130480:1'),
(31, 17, '_edit_lock', '1554130499:1'),
(32, 19, '_edit_lock', '1554130528:1'),
(33, 21, '_menu_item_type', 'custom'),
(34, 21, '_menu_item_menu_item_parent', '0'),
(35, 21, '_menu_item_object_id', '21'),
(36, 21, '_menu_item_object', 'custom'),
(37, 21, '_menu_item_target', ''),
(38, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(39, 21, '_menu_item_xfn', ''),
(40, 21, '_menu_item_url', 'https://web.jacehr.com/'),
(111, 35, '_menu_item_object', 'page'),
(42, 22, '_menu_item_type', 'post_type'),
(43, 22, '_menu_item_menu_item_parent', '0'),
(44, 22, '_menu_item_object_id', '15'),
(45, 22, '_menu_item_object', 'page'),
(46, 22, '_menu_item_target', ''),
(47, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(48, 22, '_menu_item_xfn', ''),
(49, 22, '_menu_item_url', ''),
(105, 29, '_edit_lock', '1554135142:1'),
(51, 23, '_menu_item_type', 'post_type'),
(52, 23, '_menu_item_menu_item_parent', '0'),
(53, 23, '_menu_item_object_id', '11'),
(54, 23, '_menu_item_object', 'page'),
(55, 23, '_menu_item_target', ''),
(56, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(57, 23, '_menu_item_xfn', ''),
(58, 23, '_menu_item_url', ''),
(107, 33, '_edit_lock', '1554135217:1'),
(60, 24, '_menu_item_type', 'post_type'),
(61, 24, '_menu_item_menu_item_parent', '0'),
(62, 24, '_menu_item_object_id', '9'),
(63, 24, '_menu_item_object', 'page'),
(64, 24, '_menu_item_target', ''),
(65, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(66, 24, '_menu_item_xfn', ''),
(67, 24, '_menu_item_url', ''),
(110, 35, '_menu_item_object_id', '33'),
(69, 25, '_menu_item_type', 'post_type'),
(70, 25, '_menu_item_menu_item_parent', '0'),
(71, 25, '_menu_item_object_id', '19'),
(72, 25, '_menu_item_object', 'page'),
(73, 25, '_menu_item_target', ''),
(74, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(75, 25, '_menu_item_xfn', ''),
(76, 25, '_menu_item_url', ''),
(108, 35, '_menu_item_type', 'post_type'),
(78, 26, '_menu_item_type', 'post_type'),
(79, 26, '_menu_item_menu_item_parent', '0'),
(80, 26, '_menu_item_object_id', '2'),
(81, 26, '_menu_item_object', 'page'),
(82, 26, '_menu_item_target', ''),
(83, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(84, 26, '_menu_item_xfn', ''),
(85, 26, '_menu_item_url', ''),
(86, 26, '_menu_item_orphaned', '1554130676'),
(87, 27, '_menu_item_type', 'post_type'),
(88, 27, '_menu_item_menu_item_parent', '0'),
(89, 27, '_menu_item_object_id', '17'),
(90, 27, '_menu_item_object', 'page'),
(91, 27, '_menu_item_target', ''),
(92, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(93, 27, '_menu_item_xfn', ''),
(94, 27, '_menu_item_url', ''),
(109, 35, '_menu_item_menu_item_parent', '27'),
(96, 28, '_menu_item_type', 'post_type'),
(97, 28, '_menu_item_menu_item_parent', '0'),
(98, 28, '_menu_item_object_id', '13'),
(99, 28, '_menu_item_object', 'page'),
(100, 28, '_menu_item_target', ''),
(101, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(102, 28, '_menu_item_xfn', ''),
(103, 28, '_menu_item_url', ''),
(106, 31, '_edit_lock', '1554135171:1'),
(112, 35, '_menu_item_target', ''),
(113, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(114, 35, '_menu_item_xfn', ''),
(115, 35, '_menu_item_url', ''),
(135, 38, '_wp_attached_file', '2019/04/featured1.jpg'),
(117, 36, '_menu_item_type', 'post_type'),
(118, 36, '_menu_item_menu_item_parent', '27'),
(119, 36, '_menu_item_object_id', '31'),
(120, 36, '_menu_item_object', 'page'),
(121, 36, '_menu_item_target', ''),
(122, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(123, 36, '_menu_item_xfn', ''),
(124, 36, '_menu_item_url', ''),
(126, 37, '_menu_item_type', 'post_type'),
(127, 37, '_menu_item_menu_item_parent', '27'),
(128, 37, '_menu_item_object_id', '29'),
(129, 37, '_menu_item_object', 'page'),
(130, 37, '_menu_item_target', ''),
(131, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(132, 37, '_menu_item_xfn', ''),
(133, 37, '_menu_item_url', ''),
(136, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:450;s:6:\"height\";i:300;s:4:\"file\";s:21:\"2019/04/featured1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"featured1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"featured1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(137, 39, '_wp_attached_file', '2019/04/featured2.jpg'),
(138, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:450;s:6:\"height\";i:300;s:4:\"file\";s:21:\"2019/04/featured2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"featured2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"featured2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(139, 40, '_wp_attached_file', '2019/04/featured3.jpg'),
(140, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:450;s:6:\"height\";i:300;s:4:\"file\";s:21:\"2019/04/featured3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"featured3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"featured3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(141, 41, '_edit_lock', '1554139855:1'),
(145, 43, '_wp_attached_file', '2019/04/featured7.jpg'),
(144, 41, '_thumbnail_id', '38'),
(146, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:825;s:6:\"height\";i:550;s:4:\"file\";s:21:\"2019/04/featured7.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"featured7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"featured7-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"featured7-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(147, 44, '_wp_attached_file', '2019/04/featured8.jpg'),
(148, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:825;s:6:\"height\";i:550;s:4:\"file\";s:21:\"2019/04/featured8.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"featured8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"featured8-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"featured8-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(149, 45, '_wp_attached_file', '2019/04/post-image.jpg'),
(150, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:22:\"2019/04/post-image.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"post-image-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"post-image-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"post-image-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"post-image-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(151, 46, '_wp_attached_file', '2019/04/featured4.jpg'),
(152, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:345;s:6:\"height\";i:230;s:4:\"file\";s:21:\"2019/04/featured4.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"featured4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"featured4-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(153, 47, '_wp_attached_file', '2019/04/featured5.jpg'),
(154, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:21:\"2019/04/featured5.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"featured5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"featured5-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"featured5-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"featured5-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(155, 48, '_wp_attached_file', '2019/04/featured6.jpg'),
(156, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:825;s:6:\"height\";i:550;s:4:\"file\";s:21:\"2019/04/featured6.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"featured6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"featured6-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"featured6-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(157, 49, '_edit_lock', '1554396546:1'),
(161, 51, '_edit_lock', '1554140661:1'),
(160, 49, '_thumbnail_id', '47'),
(165, 53, '_edit_lock', '1554141716:1'),
(164, 51, '_thumbnail_id', '40'),
(166, 53, '_wp_page_template', 'blog.php'),
(167, 55, '_menu_item_type', 'post_type'),
(168, 55, '_menu_item_menu_item_parent', '0'),
(169, 55, '_menu_item_object_id', '53'),
(170, 55, '_menu_item_object', 'page'),
(171, 55, '_menu_item_target', ''),
(172, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(173, 55, '_menu_item_xfn', ''),
(174, 55, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wpnk_posts`
--

CREATE TABLE `wpnk_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpnk_posts`
--

INSERT INTO `wpnk_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-03-31 11:12:33', '2019-03-31 11:12:33', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-03-31 11:12:33', '2019-03-31 11:12:33', '', 0, 'http://www.web.jacehr.com/?p=1', 0, 'post', '', 1),
(2, 1, '2019-03-31 11:12:33', '2019-03-31 11:12:33', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://www.web.jacehr.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-03-31 11:12:33', '2019-03-31 11:12:33', '', 0, 'http://www.web.jacehr.com/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-03-31 11:12:33', '2019-03-31 11:12:33', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://www.web.jacehr.com.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-03-31 11:12:33', '2019-03-31 11:12:33', '', 0, 'http://www.web.jacehr.com/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-04-01 14:04:14', '2019-04-01 14:04:14', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2019-04-01 14:04:14', '2019-04-01 14:04:14', '', 0, 'https://web.jacehr.com/wp-content/uploads/2019/04/logo.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2019-04-01 14:54:15', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-04-01 14:54:15', '0000-00-00 00:00:00', '', 0, 'https://web.jacehr.com/?p=7', 1, 'nav_menu_item', '', 0),
(8, 1, '2019-04-01 14:54:15', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-04-01 14:54:15', '0000-00-00 00:00:00', '', 0, 'https://web.jacehr.com/?p=8', 1, 'nav_menu_item', '', 0),
(9, 1, '2019-04-01 14:55:28', '2019-04-01 14:55:28', '', 'Fees', '', 'publish', 'closed', 'closed', '', 'fees', '', '', '2019-04-01 14:55:28', '2019-04-01 14:55:28', '', 0, 'https://web.jacehr.com/?page_id=9', 0, 'page', '', 0),
(10, 1, '2019-04-01 14:55:28', '2019-04-01 14:55:28', '', 'Fees', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-04-01 14:55:28', '2019-04-01 14:55:28', '', 9, 'https://web.jacehr.com/2019/04/01/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2019-04-01 14:56:10', '2019-04-01 14:56:10', '<!-- wp:html -->\n<figure><iframe src=\"https://app.acuityscheduling.com/schedule.php?owner=16934739\" width=\"770px\" height=\"800\"></iframe></figure>\n<!-- /wp:html -->', 'Facebook Ads', '', 'publish', 'closed', 'closed', '', 'facebook-ads', '', '', '2019-04-04 18:55:54', '2019-04-04 18:55:54', '', 0, 'https://web.jacehr.com/?page_id=11', 0, 'page', '', 0),
(12, 1, '2019-04-01 14:56:10', '2019-04-01 14:56:10', '', 'Facebook Ads', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-04-01 14:56:10', '2019-04-01 14:56:10', '', 11, 'https://web.jacehr.com/2019/04/01/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2019-04-01 14:56:33', '2019-04-01 14:56:33', '', 'Why Me', '', 'publish', 'closed', 'closed', '', 'why-me', '', '', '2019-04-01 14:56:33', '2019-04-01 14:56:33', '', 0, 'https://web.jacehr.com/?page_id=13', 0, 'page', '', 0),
(14, 1, '2019-04-01 14:56:33', '2019-04-01 14:56:33', '', 'Why Me', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-04-01 14:56:33', '2019-04-01 14:56:33', '', 13, 'https://web.jacehr.com/2019/04/01/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2019-04-01 14:56:54', '2019-04-01 14:56:54', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-04-01 14:56:54', '2019-04-01 14:56:54', '', 0, 'https://web.jacehr.com/?page_id=15', 0, 'page', '', 0),
(16, 1, '2019-04-01 14:56:54', '2019-04-01 14:56:54', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-04-01 14:56:54', '2019-04-01 14:56:54', '', 15, 'https://web.jacehr.com/2019/04/01/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2019-04-01 14:57:18', '2019-04-01 14:57:18', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2019-04-01 14:57:18', '2019-04-01 14:57:18', '', 0, 'https://web.jacehr.com/?page_id=17', 0, 'page', '', 0),
(18, 1, '2019-04-01 14:57:18', '2019-04-01 14:57:18', '', 'Services', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-04-01 14:57:18', '2019-04-01 14:57:18', '', 17, 'https://web.jacehr.com/2019/04/01/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2019-04-01 14:57:38', '2019-04-01 14:57:38', '', 'Products', '', 'publish', 'closed', 'closed', '', 'products', '', '', '2019-04-01 14:57:38', '2019-04-01 14:57:38', '', 0, 'https://web.jacehr.com/?page_id=19', 0, 'page', '', 0),
(20, 1, '2019-04-01 14:57:38', '2019-04-01 14:57:38', '', 'Products', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2019-04-01 14:57:38', '2019-04-01 14:57:38', '', 19, 'https://web.jacehr.com/2019/04/01/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2019-04-01 14:59:04', '2019-04-01 14:59:04', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-04-01 18:04:50', '2019-04-01 18:04:50', '', 0, 'https://web.jacehr.com/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2019-04-01 14:59:04', '2019-04-01 14:59:04', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2019-04-01 18:04:50', '2019-04-01 18:04:50', '', 0, 'https://web.jacehr.com/?p=22', 11, 'nav_menu_item', '', 0),
(23, 1, '2019-04-01 14:59:04', '2019-04-01 14:59:04', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2019-04-01 18:04:50', '2019-04-01 18:04:50', '', 0, 'https://web.jacehr.com/?p=23', 8, 'nav_menu_item', '', 0),
(24, 1, '2019-04-01 14:59:04', '2019-04-01 14:59:04', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2019-04-01 18:04:50', '2019-04-01 18:04:50', '', 0, 'https://web.jacehr.com/?p=24', 2, 'nav_menu_item', '', 0),
(25, 1, '2019-04-01 14:59:04', '2019-04-01 14:59:04', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2019-04-01 18:04:50', '2019-04-01 18:04:50', '', 0, 'https://web.jacehr.com/?p=25', 7, 'nav_menu_item', '', 0),
(26, 1, '2019-04-01 14:57:56', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-04-01 14:57:56', '0000-00-00 00:00:00', '', 0, 'https://web.jacehr.com/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2019-04-01 14:59:04', '2019-04-01 14:59:04', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2019-04-01 18:04:50', '2019-04-01 18:04:50', '', 0, 'https://web.jacehr.com/?p=27', 3, 'nav_menu_item', '', 0),
(28, 1, '2019-04-01 14:59:04', '2019-04-01 14:59:04', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2019-04-01 18:04:50', '2019-04-01 18:04:50', '', 0, 'https://web.jacehr.com/?p=28', 9, 'nav_menu_item', '', 0),
(29, 1, '2019-04-01 16:14:43', '2019-04-01 16:14:43', '', 'Web design', '', 'publish', 'closed', 'closed', '', 'web-design', '', '', '2019-04-01 16:14:43', '2019-04-01 16:14:43', '', 0, 'https://web.jacehr.com/?page_id=29', 0, 'page', '', 0),
(30, 1, '2019-04-01 16:14:43', '2019-04-01 16:14:43', '', 'Web design', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2019-04-01 16:14:43', '2019-04-01 16:14:43', '', 29, 'https://web.jacehr.com/2019/04/01/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2019-04-01 16:15:01', '2019-04-01 16:15:01', '', 'Web development', '', 'publish', 'closed', 'closed', '', 'web-development', '', '', '2019-04-01 16:15:01', '2019-04-01 16:15:01', '', 0, 'https://web.jacehr.com/?page_id=31', 0, 'page', '', 0),
(32, 1, '2019-04-01 16:15:01', '2019-04-01 16:15:01', '', 'Web development', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2019-04-01 16:15:01', '2019-04-01 16:15:01', '', 31, 'https://web.jacehr.com/2019/04/01/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2019-04-01 16:15:43', '2019-04-01 16:15:43', '', 'Mobile apps development', '', 'publish', 'closed', 'closed', '', 'mobile-apps-development', '', '', '2019-04-01 16:15:43', '2019-04-01 16:15:43', '', 0, 'https://web.jacehr.com/?page_id=33', 0, 'page', '', 0),
(34, 1, '2019-04-01 16:15:43', '2019-04-01 16:15:43', '', 'Mobile apps development', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2019-04-01 16:15:43', '2019-04-01 16:15:43', '', 33, 'https://web.jacehr.com/2019/04/01/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2019-04-01 16:17:10', '2019-04-01 16:17:10', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2019-04-01 18:04:50', '2019-04-01 18:04:50', '', 0, 'https://web.jacehr.com/?p=35', 6, 'nav_menu_item', '', 0),
(36, 1, '2019-04-01 16:17:10', '2019-04-01 16:17:10', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2019-04-01 18:04:50', '2019-04-01 18:04:50', '', 0, 'https://web.jacehr.com/?p=36', 5, 'nav_menu_item', '', 0),
(37, 1, '2019-04-01 16:17:10', '2019-04-01 16:17:10', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2019-04-01 18:04:50', '2019-04-01 18:04:50', '', 0, 'https://web.jacehr.com/?p=37', 4, 'nav_menu_item', '', 0),
(38, 1, '2019-04-01 17:16:00', '2019-04-01 17:16:00', '', 'featured1', '', 'inherit', 'open', 'closed', '', 'featured1', '', '', '2019-04-01 17:16:00', '2019-04-01 17:16:00', '', 0, 'https://web.jacehr.com/wp-content/uploads/2019/04/featured1.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2019-04-01 17:16:02', '2019-04-01 17:16:02', '', 'featured2', '', 'inherit', 'open', 'closed', '', 'featured2', '', '', '2019-04-01 17:16:02', '2019-04-01 17:16:02', '', 0, 'https://web.jacehr.com/wp-content/uploads/2019/04/featured2.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2019-04-01 17:16:03', '2019-04-01 17:16:03', '', 'featured3', '', 'inherit', 'open', 'closed', '', 'featured3', '', '', '2019-04-01 17:16:03', '2019-04-01 17:16:03', '', 0, 'https://web.jacehr.com/wp-content/uploads/2019/04/featured3.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2019-04-01 17:21:39', '2019-04-01 17:21:39', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Optio perferendis assumenda ipsum maiores dolorum similique obcaecati perspiciatis.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>The best, free Stock Photography and Video resources</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem ipsum</strong> dolor sit amet, consectetur adipisicing elit. \nHarum minima, earum optio quia recusandae ipsam, obcaecati! Sunt ullam \nnisi, ratione quisquam provident eius quae facilis eos, deserunt \nconsequatur, officiis quos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta \nreiciendis illum possimus et ducimus quia sed dolorum id cumque rerum, \nfuga voluptatem, fugiat quidem mollitia eos vel, nisi voluptatum \ncorrupti eaque voluptas! Praesentium hic pariatur est voluptatibus \nsuscipit vel tempora necessitatibus animi ratione tempore natus modi, \nodit, explicabo nulla laudantium veritatis dignissimos? Odit sequi, \nipsam quod eligendi tempore obcaecati reprehenderit, dicta repudiandae \nofficiis voluptatibus odio cupiditate, tempora repellat ut. Possimus \nodit veritatis fugiat dolorem accusamus, facilis excepturi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. \nNecessitatibus magni ad sapiente optio illo iste quidem quod \nvoluptatibus, eligendi aliquid?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis harum laborum praesentium obcaecati nam explicabo?</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam \nquas quibusdam magnam asperiores laudantium rerum a, illo illum dolore \namet. Adipisci vel, vero a minus nemo voluptatem. Vel ipsa totam veniam \ncorporis quia, ipsum asperiores rem, eveniet, hic aut fuga.</p>\n<!-- /wp:paragraph -->', '12+ Amazing Growth Hacking Tips And Tricks', '', 'publish', 'open', 'open', '', '12-amazing-growth-hacking-tips-and-tricks', '', '', '2019-04-01 17:21:39', '2019-04-01 17:21:39', '', 0, 'https://web.jacehr.com/?p=41', 0, 'post', '', 0),
(42, 1, '2019-04-01 17:21:39', '2019-04-01 17:21:39', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Optio perferendis assumenda ipsum maiores dolorum similique obcaecati perspiciatis.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>The best, free Stock Photography and Video resources</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem ipsum</strong> dolor sit amet, consectetur adipisicing elit. \nHarum minima, earum optio quia recusandae ipsam, obcaecati! Sunt ullam \nnisi, ratione quisquam provident eius quae facilis eos, deserunt \nconsequatur, officiis quos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta \nreiciendis illum possimus et ducimus quia sed dolorum id cumque rerum, \nfuga voluptatem, fugiat quidem mollitia eos vel, nisi voluptatum \ncorrupti eaque voluptas! Praesentium hic pariatur est voluptatibus \nsuscipit vel tempora necessitatibus animi ratione tempore natus modi, \nodit, explicabo nulla laudantium veritatis dignissimos? Odit sequi, \nipsam quod eligendi tempore obcaecati reprehenderit, dicta repudiandae \nofficiis voluptatibus odio cupiditate, tempora repellat ut. Possimus \nodit veritatis fugiat dolorem accusamus, facilis excepturi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. \nNecessitatibus magni ad sapiente optio illo iste quidem quod \nvoluptatibus, eligendi aliquid?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis harum laborum praesentium obcaecati nam explicabo?</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam \nquas quibusdam magnam asperiores laudantium rerum a, illo illum dolore \namet. Adipisci vel, vero a minus nemo voluptatem. Vel ipsa totam veniam \ncorporis quia, ipsum asperiores rem, eveniet, hic aut fuga.</p>\n<!-- /wp:paragraph -->', '12+ Amazing Growth Hacking Tips And Tricks', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2019-04-01 17:21:39', '2019-04-01 17:21:39', '', 41, 'https://web.jacehr.com/2019/04/01/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2019-04-01 17:28:23', '2019-04-01 17:28:23', '', 'featured7', '', 'inherit', 'open', 'closed', '', 'featured7', '', '', '2019-04-01 17:28:23', '2019-04-01 17:28:23', '', 0, 'https://web.jacehr.com/wp-content/uploads/2019/04/featured7.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2019-04-01 17:28:25', '2019-04-01 17:28:25', '', 'featured8', '', 'inherit', 'open', 'closed', '', 'featured8', '', '', '2019-04-01 17:28:25', '2019-04-01 17:28:25', '', 0, 'https://web.jacehr.com/wp-content/uploads/2019/04/featured8.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2019-04-01 17:28:27', '2019-04-01 17:28:27', '', 'post-image', '', 'inherit', 'open', 'closed', '', 'post-image', '', '', '2019-04-01 17:28:27', '2019-04-01 17:28:27', '', 0, 'https://web.jacehr.com/wp-content/uploads/2019/04/post-image.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2019-04-01 17:28:28', '2019-04-01 17:28:28', '', 'featured4', '', 'inherit', 'open', 'closed', '', 'featured4', '', '', '2019-04-01 17:28:28', '2019-04-01 17:28:28', '', 0, 'https://web.jacehr.com/wp-content/uploads/2019/04/featured4.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2019-04-01 17:28:29', '2019-04-01 17:28:29', '', 'featured5', '', 'inherit', 'open', 'closed', '', 'featured5', '', '', '2019-04-01 17:28:29', '2019-04-01 17:28:29', '', 0, 'https://web.jacehr.com/wp-content/uploads/2019/04/featured5.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2019-04-01 17:28:31', '2019-04-01 17:28:31', '', 'featured6', '', 'inherit', 'open', 'closed', '', 'featured6', '', '', '2019-04-01 17:28:31', '2019-04-01 17:28:31', '', 0, 'https://web.jacehr.com/wp-content/uploads/2019/04/featured6.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2019-04-01 17:36:20', '2019-04-01 17:36:20', '<!-- wp:paragraph -->\n<p>\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Optio \nperferendis assumenda ipsum maiores dolorum similique obcaecati \nperspiciatis.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>The best, free Stock Photography and Video resources</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem ipsum</strong> dolor sit amet, consectetur adipisicing elit. \nHarum minima, earum optio quia recusandae ipsam, obcaecati! Sunt ullam \nnisi, ratione quisquam provident eius quae facilis eos, deserunt \nconsequatur, officiis quos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta \nreiciendis illum possimus et ducimus quia sed dolorum id cumque rerum, \nfuga voluptatem, fugiat quidem mollitia eos vel, nisi voluptatum \ncorrupti eaque voluptas! Praesentium hic pariatur est voluptatibus \nsuscipit vel tempora necessitatibus animi ratione tempore natus modi, \nodit, explicabo nulla laudantium veritatis dignissimos? Odit sequi, \nipsam quod eligendi tempore obcaecati reprehenderit, dicta repudiandae \nofficiis voluptatibus odio cupiditate, tempora repellat ut. Possimus \nodit veritatis fugiat dolorem accusamus, facilis excepturi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. \nNecessitatibus magni ad sapiente optio illo iste quidem quod \nvoluptatibus, eligendi aliquid?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis harum laborum praesentium obcaecati nam explicabo?</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam \nquas quibusdam magnam asperiores laudantium rerum a, illo illum dolore \namet. Adipisci vel, vero a minus nemo voluptatem. Vel ipsa totam veniam \ncorporis quia, ipsum asperiores rem, eveniet, hic aut fuga.</p>\n<!-- /wp:paragraph -->', '10 Tips to Validate Your Next Startup Idea', '', 'publish', 'open', 'open', '', '10-tips-to-validate-your-next-startup-idea', '', '', '2019-04-04 16:51:18', '2019-04-04 16:51:18', '', 0, 'https://web.jacehr.com/?p=49', 0, 'post', '', 3),
(50, 1, '2019-04-01 17:36:20', '2019-04-01 17:36:20', '<!-- wp:paragraph -->\n<p>\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Optio \nperferendis assumenda ipsum maiores dolorum similique obcaecati \nperspiciatis.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>The best, free Stock Photography and Video resources</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem ipsum</strong> dolor sit amet, consectetur adipisicing elit. \nHarum minima, earum optio quia recusandae ipsam, obcaecati! Sunt ullam \nnisi, ratione quisquam provident eius quae facilis eos, deserunt \nconsequatur, officiis quos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta \nreiciendis illum possimus et ducimus quia sed dolorum id cumque rerum, \nfuga voluptatem, fugiat quidem mollitia eos vel, nisi voluptatum \ncorrupti eaque voluptas! Praesentium hic pariatur est voluptatibus \nsuscipit vel tempora necessitatibus animi ratione tempore natus modi, \nodit, explicabo nulla laudantium veritatis dignissimos? Odit sequi, \nipsam quod eligendi tempore obcaecati reprehenderit, dicta repudiandae \nofficiis voluptatibus odio cupiditate, tempora repellat ut. Possimus \nodit veritatis fugiat dolorem accusamus, facilis excepturi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. \nNecessitatibus magni ad sapiente optio illo iste quidem quod \nvoluptatibus, eligendi aliquid?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis harum laborum praesentium obcaecati nam explicabo?</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam \nquas quibusdam magnam asperiores laudantium rerum a, illo illum dolore \namet. Adipisci vel, vero a minus nemo voluptatem. Vel ipsa totam veniam \ncorporis quia, ipsum asperiores rem, eveniet, hic aut fuga.</p>\n<!-- /wp:paragraph -->', '10 Tips to Validate Your Next Startup Idea', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2019-04-01 17:36:20', '2019-04-01 17:36:20', '', 49, 'https://web.jacehr.com/2019/04/01/49-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2019-04-01 17:38:09', '2019-04-01 17:38:09', '<!-- wp:paragraph -->\n<p>\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Optio \nperferendis assumenda ipsum maiores dolorum similique obcaecati \nperspiciatis.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>The best, free Stock Photography and Video resources</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem ipsum</strong> dolor sit amet, consectetur adipisicing elit. \nHarum minima, earum optio quia recusandae ipsam, obcaecati! Sunt ullam \nnisi, ratione quisquam provident eius quae facilis eos, deserunt \nconsequatur, officiis quos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta \nreiciendis illum possimus et ducimus quia sed dolorum id cumque rerum, \nfuga voluptatem, fugiat quidem mollitia eos vel, nisi voluptatum \ncorrupti eaque voluptas! Praesentium hic pariatur est voluptatibus \nsuscipit vel tempora necessitatibus animi ratione tempore natus modi, \nodit, explicabo nulla laudantium veritatis dignissimos? Odit sequi, \nipsam quod eligendi tempore obcaecati reprehenderit, dicta repudiandae \nofficiis voluptatibus odio cupiditate, tempora repellat ut. Possimus \nodit veritatis fugiat dolorem accusamus, facilis excepturi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. \nNecessitatibus magni ad sapiente optio illo iste quidem quod \nvoluptatibus, eligendi aliquid?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis harum laborum praesentium obcaecati nam explicabo?</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam \nquas quibusdam magnam asperiores laudantium rerum a, illo illum dolore \namet. Adipisci vel, vero a minus nemo voluptatem. Vel ipsa totam veniam \ncorporis quia, ipsum asperiores rem, eveniet, hic aut fuga.</p>\n<!-- /wp:paragraph -->', 'How to Create Successful Website for Your Agency', '', 'publish', 'open', 'open', '', 'how-to-create-successful-website-for-your-agency', '', '', '2019-04-01 17:38:09', '2019-04-01 17:38:09', '', 0, 'https://web.jacehr.com/?p=51', 0, 'post', '', 0),
(52, 1, '2019-04-01 17:38:09', '2019-04-01 17:38:09', '<!-- wp:paragraph -->\n<p>\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Optio \nperferendis assumenda ipsum maiores dolorum similique obcaecati \nperspiciatis.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>The best, free Stock Photography and Video resources</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem ipsum</strong> dolor sit amet, consectetur adipisicing elit. \nHarum minima, earum optio quia recusandae ipsam, obcaecati! Sunt ullam \nnisi, ratione quisquam provident eius quae facilis eos, deserunt \nconsequatur, officiis quos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta \nreiciendis illum possimus et ducimus quia sed dolorum id cumque rerum, \nfuga voluptatem, fugiat quidem mollitia eos vel, nisi voluptatum \ncorrupti eaque voluptas! Praesentium hic pariatur est voluptatibus \nsuscipit vel tempora necessitatibus animi ratione tempore natus modi, \nodit, explicabo nulla laudantium veritatis dignissimos? Odit sequi, \nipsam quod eligendi tempore obcaecati reprehenderit, dicta repudiandae \nofficiis voluptatibus odio cupiditate, tempora repellat ut. Possimus \nodit veritatis fugiat dolorem accusamus, facilis excepturi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. \nNecessitatibus magni ad sapiente optio illo iste quidem quod \nvoluptatibus, eligendi aliquid?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis harum laborum praesentium obcaecati nam explicabo?</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam \nquas quibusdam magnam asperiores laudantium rerum a, illo illum dolore \namet. Adipisci vel, vero a minus nemo voluptatem. Vel ipsa totam veniam \ncorporis quia, ipsum asperiores rem, eveniet, hic aut fuga.</p>\n<!-- /wp:paragraph -->', 'How to Create Successful Website for Your Agency', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2019-04-01 17:38:09', '2019-04-01 17:38:09', '', 51, 'https://web.jacehr.com/2019/04/01/51-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2019-04-01 17:47:56', '2019-04-01 17:47:56', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-04-01 17:47:56', '2019-04-01 17:47:56', '', 0, 'https://web.jacehr.com/?page_id=53', 0, 'page', '', 0),
(54, 1, '2019-04-01 17:47:56', '2019-04-01 17:47:56', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2019-04-01 17:47:56', '2019-04-01 17:47:56', '', 53, 'https://web.jacehr.com/2019/04/01/53-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2019-04-01 18:04:50', '2019-04-01 18:04:50', ' ', '', '', 'publish', 'closed', 'closed', '', '55', '', '', '2019-04-01 18:04:50', '2019-04-01 18:04:50', '', 0, 'https://web.jacehr.com/?p=55', 10, 'nav_menu_item', '', 0),
(56, 1, '2019-04-04 18:55:54', '2019-04-04 18:55:54', '<!-- wp:html -->\n<figure><iframe src=\"https://app.acuityscheduling.com/schedule.php?owner=16934739\" width=\"770px\" height=\"800\"></iframe></figure>\n<!-- /wp:html -->', 'Facebook Ads', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-04-04 18:55:54', '2019-04-04 18:55:54', '', 11, 'https://web.jacehr.com/2019/04/04/11-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wpnk_termmeta`
--

CREATE TABLE `wpnk_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpnk_terms`
--

CREATE TABLE `wpnk_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpnk_terms`
--

INSERT INTO `wpnk_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Menu 1', 'menu-1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wpnk_term_relationships`
--

CREATE TABLE `wpnk_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpnk_term_relationships`
--

INSERT INTO `wpnk_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(21, 2, 0),
(24, 2, 0),
(27, 2, 0),
(25, 2, 0),
(23, 2, 0),
(28, 2, 0),
(22, 2, 0),
(37, 2, 0),
(36, 2, 0),
(35, 2, 0),
(41, 1, 0),
(49, 1, 0),
(51, 1, 0),
(55, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wpnk_term_taxonomy`
--

CREATE TABLE `wpnk_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpnk_term_taxonomy`
--

INSERT INTO `wpnk_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'nav_menu', '', 0, 11);

-- --------------------------------------------------------

--
-- Table structure for table `wpnk_usermeta`
--

CREATE TABLE `wpnk_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpnk_usermeta`
--

INSERT INTO `wpnk_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'cptngood'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wpnk_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wpnk_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"24379e072c5ea7f5d16f1a8da849cd782c3c55019e896b42ec5de5c1521b890d\";a:4:{s:10:\"expiration\";i:1557219793;s:2:\"ip\";s:12:\"41.217.8.165\";s:2:\"ua\";s:66:\"Mozilla/5.0 (Windows NT 10.0; rv:63.0) Gecko/20100101 Firefox/63.0\";s:5:\"login\";i:1557046993;}}'),
(17, 1, 'wpnk_dashboard_quick_press_last_post_id', '58'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:10:\"41.217.8.0\";}'),
(19, 1, 'wpnk_user-settings', 'libraryContent=browse'),
(20, 1, 'wpnk_user-settings-time', '1554128041'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wpnk_users`
--

CREATE TABLE `wpnk_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpnk_users`
--

INSERT INTO `wpnk_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'cptngood', '$P$BLAVqxelmTfAH/YHsff4msdLi5qy3C0', 'cptngood', 'captain@jacehr.com', '', '2019-03-31 11:12:33', '', 0, 'cptngood');

-- --------------------------------------------------------

--
-- Table structure for table `wpnk_wp_frontpage_services`
--

CREATE TABLE `wpnk_wp_frontpage_services` (
  `service_id` int(11) NOT NULL,
  `service1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpnk_wp_frontpage_services`
--

INSERT INTO `wpnk_wp_frontpage_services` (`service_id`, `service1`, `service2`, `service3`, `ref`) VALUES
(1, 'mdi-layers', 'Web design', 'Excepteur sint occaecat cupidatat non proidt, sunt in culpa qui.', 1),
(2, 'mdi-cards-playing-outline', 'Web dev', 'Excepteur sint occaecat cupidatat non proidt, sunt in culpa qui.', 2),
(3, 'mdi-alarm-check', 'Mobile apps dev', 'Excepteur sint occaecat cupidatat non proidt, sunt in culpa qui.', 3),
(4, 'mdi-responsive', 'Facebook Ads', 'Excepteur sint occaecat cupidatat non proidt, sunt in culpa qui.', 4);

-- --------------------------------------------------------

--
-- Table structure for table `wpnk_wp_frontpage_slider`
--

CREATE TABLE `wpnk_wp_frontpage_slider` (
  `id` int(11) NOT NULL,
  `image_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `small` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpnk_wp_frontpage_slider`
--

INSERT INTO `wpnk_wp_frontpage_slider` (`id`, `image_link`, `big`, `small`, `button_name`, `button_link`, `ref`) VALUES
(1, 'https://web.jacehr.com/wp-content/themes/company-ui/assets/images/slider/slider-bg1.jpg', 'Web design training', 'Material Design Meets With The Power of Bootstrap 4', 'EXPLORE', '#', 1),
(2, 'https://web.jacehr.com/wp-content/themes/company-ui/assets/images/slider/slider-bg2.jpg', 'Web development training', 'Extensively Customizable Tons of UI Elements', 'LEARN MORE', '#', 2),
(3, 'https://web.jacehr.com/wp-content/themes/company-ui/assets/images/slider/slider-bg3.jpg', 'Mobile apps dev. training', 'Ready to Use for Business, Agency, Startup, Portfolio Sites and More...', 'CONTACT US', '#', 3);

-- --------------------------------------------------------

--
-- Table structure for table `wpnk_wp_frontpage_tabs_n_link`
--

CREATE TABLE `wpnk_wp_frontpage_tabs_n_link` (
  `tab_id` int(11) NOT NULL,
  `icon_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpnk_wp_frontpage_tabs_n_link`
--

INSERT INTO `wpnk_wp_frontpage_tabs_n_link` (`tab_id`, `icon_name`, `title`, `title_link`, `description`, `link`, `ref`) VALUES
(1, 'mdi-account-multiple-outline', 'Business', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam nesciunt dolores quibusdam, officia sed mollitia, illo, quis, vel veniam officiis qui repellendus. Perferendis et, veritatis enim voluptatem libero consequuntur eveniet alias nesciunt fugit doloremque tempora id Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus, aut ut totam quam inventore suscipit ullam nostrum quisquam corrupti nesciunt voluptas necessitatibus, ab porro cupiditate optio mollitia, expedita, omnis? Quasi.</p>\r\n', NULL, 1),
(2, 'mdi-flash-outline', 'Startup', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam nesciunt dolores quibusdam, officia sed mollitia, illo, quis, vel veniam officiis qui repellendus. Perferendis et, veritatis enim voluptatem libero consequuntur eveniet alias nesciunt fugit doloremque tempora id Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus, aut ut totam quam inventore suscipit ullam nostrum quisquam corrupti nesciunt voluptas necessitatibus, ab porro cupiditate optio mollitia, expedita, omnis? Quasi.</p>\r\n', NULL, 2),
(3, 'mdi-all-inclusive', 'Agency', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam nesciunt dolores quibusdam, officia sed mollitia, illo, quis, vel veniam officiis qui repellendus. Perferendis et, veritatis enim voluptatem libero consequuntur eveniet alias nesciunt fugit doloremque tempora id Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus, aut ut totam quam inventore suscipit ullam nostrum quisquam corrupti nesciunt voluptas necessitatibus, ab porro cupiditate optio mollitia, expedita, omnis? Quasi.</p>\r\n', NULL, 3),
(4, 'mdi-cloud-outline', 'SaaS', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam nesciunt dolores quibusdam, officia sed mollitia, illo, quis, vel veniam officiis qui repellendus. Perferendis et, veritatis enim voluptatem libero consequuntur eveniet alias nesciunt fugit doloremque tempora id Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus, aut ut totam quam inventore suscipit ullam nostrum quisquam corrupti nesciunt voluptas necessitatibus, ab porro cupiditate optio mollitia, expedita, omnis? Quasi.</p>\r\n', NULL, 4),
(5, NULL, NULL, NULL, NULL, 'https://web.jacehr.com/wp-content/themes/company-ui/assets/images/about/video.jpg', 5),
(6, 'mdi-arrange-send-backward', 'Refreshing Design', '#', 'Excepteur sint occaecat cupi datat non proidt, sunt in culpa qui offi cia deserunt', NULL, 6),
(7, 'mdi-code-tags-check', 'Solid Bootstrap 4', '#', 'Excepteur sint occaecat cupi datat non proidt, sunt in culpa qui offi cia deserunt', NULL, 7),
(8, 'mdi mdi-grid', '100+ Components', '#', 'Excepteur sint occaecat cupi datat non proidt, sunt in culpa qui offi cia deserunt', NULL, 8),
(9, 'mdi-update', 'Regular Updates', '#', 'Excepteur sint occaecat cupi datat non proidt, sunt in culpa qui offi cia deserunt', NULL, 9),
(10, 'mdi-speedometer', 'Speed Optimized', '#', 'Excepteur sint occaecat cupi datat non proidt, sunt in culpa qui offi cia deserunt', NULL, 10),
(11, 'mdi-shape-plus', 'Fully Customizable', '#', 'Excepteur sint occaecat cupi datat non proidt, sunt in culpa qui offi cia deserunt', NULL, 11),
(12, NULL, NULL, NULL, NULL, 'Why Choose', 12);

-- --------------------------------------------------------

--
-- Table structure for table `wpnk_wp_frontpage_work`
--

CREATE TABLE `wpnk_wp_frontpage_work` (
  `work_id` int(11) NOT NULL,
  `section_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `all_links` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_one_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_one_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_one_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_four` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_four_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_four_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_four_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpnk_wp_frontpage_work`
--

INSERT INTO `wpnk_wp_frontpage_work` (`work_id`, `section_name`, `all_links`, `title_name`, `image_one`, `image_one_title`, `image_one_location`, `image_one_link`, `image_two`, `image_two_title`, `image_two_location`, `image_two_link`, `image_three`, `image_three_title`, `image_three_location`, `image_three_link`, `image_four`, `image_four_title`, `image_four_location`, `image_four_link`, `ref`) VALUES
(1, 'Featured Works', '#', 'Business', 'https://web.jacehr.com/wp-content/themes/company-ui/assets/images/portfolio/work1.jpg', 'Business Cards', 'Asus Inc', '#', 'https://web.jacehr.com/wp-content/themes/company-ui/assets/images/portfolio/work4.jpg', 'Landing Page', 'Uniliver, India', '#', 'https://web.jacehr.com/wp-content/themes/company-ui/assets/images/portfolio/work5.jpg', 'Dashboard Design', 'Linode Inc', '#', '', '', '', '', 1),
(2, NULL, NULL, 'Development', 'https://web.jacehr.com/wp-content/themes/company-ui/assets/images/portfolio/work3.jpg', 'Coffee Cup', 'Starbucks USA', '#', 'https://web.jacehr.com/wp-content/themes/company-ui/assets/images/portfolio/work6.jpg', 'Re-Branding', 'Alphabet Inc', '#', 'https://web.jacehr.com/wp-content/themes/company-ui/assets/images/portfolio/work2.jpg', 'Brochure Design', 'Tesla Motors', '#', '', '', '', '', 2),
(3, NULL, NULL, 'Creative', 'https://web.jacehr.com/wp-content/themes/company-ui/assets/images/portfolio/work3.jpg', 'Coffee Cup', 'Starbucks USA', '#', 'https://web.jacehr.com/wp-content/themes/company-ui/assets/images/portfolio/work4.jpg', 'Landing Page', 'Uniliver, India', '#', 'https://web.jacehr.com/wp-content/themes/company-ui/assets/images/portfolio/work6.jpg', 'Re-Branding', 'Alphabet Inc.', '#', '', '', '', '', 3),
(4, NULL, NULL, 'More', 'https://web.jacehr.com/wp-content/themes/company-ui/assets/images/portfolio/work2.jpg', 'Brochure Design', 'Tesla Motors', '#', 'https://web.jacehr.com/wp-content/themes/company-ui/assets/images/portfolio/work4.jpg', 'Landing Page', 'Uniliver, India', '#', 'https://web.jacehr.com/wp-content/themes/company-ui/assets/images/portfolio/work5.jpg', 'Dashboard Design', 'Linode Inc', '#', '', '', '', '', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wpnk_commentmeta`
--
ALTER TABLE `wpnk_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wpnk_comments`
--
ALTER TABLE `wpnk_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wpnk_eum_logs`
--
ALTER TABLE `wpnk_eum_logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `wpnk_links`
--
ALTER TABLE `wpnk_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wpnk_loginizer_logs`
--
ALTER TABLE `wpnk_loginizer_logs`
  ADD UNIQUE KEY `ip` (`ip`);

--
-- Indexes for table `wpnk_mf_newsletter_table`
--
ALTER TABLE `wpnk_mf_newsletter_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wpnk_options`
--
ALTER TABLE `wpnk_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wpnk_postmeta`
--
ALTER TABLE `wpnk_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wpnk_posts`
--
ALTER TABLE `wpnk_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wpnk_termmeta`
--
ALTER TABLE `wpnk_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wpnk_terms`
--
ALTER TABLE `wpnk_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wpnk_term_relationships`
--
ALTER TABLE `wpnk_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wpnk_term_taxonomy`
--
ALTER TABLE `wpnk_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wpnk_usermeta`
--
ALTER TABLE `wpnk_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wpnk_users`
--
ALTER TABLE `wpnk_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wpnk_wp_frontpage_services`
--
ALTER TABLE `wpnk_wp_frontpage_services`
  ADD PRIMARY KEY (`service_id`),
  ADD KEY `ref` (`ref`);

--
-- Indexes for table `wpnk_wp_frontpage_slider`
--
ALTER TABLE `wpnk_wp_frontpage_slider`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ref` (`ref`);

--
-- Indexes for table `wpnk_wp_frontpage_tabs_n_link`
--
ALTER TABLE `wpnk_wp_frontpage_tabs_n_link`
  ADD PRIMARY KEY (`tab_id`),
  ADD KEY `ref` (`ref`);

--
-- Indexes for table `wpnk_wp_frontpage_work`
--
ALTER TABLE `wpnk_wp_frontpage_work`
  ADD PRIMARY KEY (`work_id`),
  ADD KEY `ref` (`ref`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wpnk_commentmeta`
--
ALTER TABLE `wpnk_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wpnk_comments`
--
ALTER TABLE `wpnk_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wpnk_eum_logs`
--
ALTER TABLE `wpnk_eum_logs`
  MODIFY `log_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wpnk_links`
--
ALTER TABLE `wpnk_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wpnk_mf_newsletter_table`
--
ALTER TABLE `wpnk_mf_newsletter_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wpnk_options`
--
ALTER TABLE `wpnk_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=626;

--
-- AUTO_INCREMENT for table `wpnk_postmeta`
--
ALTER TABLE `wpnk_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `wpnk_posts`
--
ALTER TABLE `wpnk_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `wpnk_termmeta`
--
ALTER TABLE `wpnk_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wpnk_terms`
--
ALTER TABLE `wpnk_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wpnk_term_taxonomy`
--
ALTER TABLE `wpnk_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wpnk_usermeta`
--
ALTER TABLE `wpnk_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wpnk_users`
--
ALTER TABLE `wpnk_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wpnk_wp_frontpage_services`
--
ALTER TABLE `wpnk_wp_frontpage_services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wpnk_wp_frontpage_slider`
--
ALTER TABLE `wpnk_wp_frontpage_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wpnk_wp_frontpage_tabs_n_link`
--
ALTER TABLE `wpnk_wp_frontpage_tabs_n_link`
  MODIFY `tab_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wpnk_wp_frontpage_work`
--
ALTER TABLE `wpnk_wp_frontpage_work`
  MODIFY `work_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

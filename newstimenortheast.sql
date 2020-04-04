-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2020 at 09:54 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newstimenortheast`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@mail.com', '$2y$10$8wnMGsrTy9aFRY3RWoWh7OUik2I2d51vlmp4EEQuQvoK.25a72NCW', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `as_category_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 1 COMMENT '1=enabled, 2=disabled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `as_category_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Assam', 'অসম', 1, '2020-03-24 11:16:54', '2020-04-01 17:52:21'),
(2, 'Guwahati', 'গুৱাহাটি', 1, '2020-03-24 11:36:53', '2020-03-26 08:20:16'),
(3, 'Corona', 'কৰোনা', 1, '2020-03-25 10:43:10', '2020-03-26 11:37:57'),
(4, 'Acting', 'অভিনয়', 1, '2020-03-27 07:23:06', NULL),
(5, 'Technology', 'প্রযুক্তি', 1, '2020-03-27 07:39:34', '2020-04-02 15:19:10'),
(6, 'Business', 'ব্যবসায়', 1, '2020-03-28 19:39:57', NULL),
(7, 'Lifestyle', 'জীবনচৰ্যা', 1, '2020-03-29 10:59:27', NULL),
(8, 'Health', 'স্বাস্থ্য', 1, '2020-04-01 08:00:59', NULL),
(9, 'Gadget', 'গেজেট', 1, '2020-04-01 08:01:17', NULL),
(10, 'Travel', 'ভ্ৰমণ', 1, '2020-04-01 08:01:29', NULL),
(11, 'Barpeta', 'বৰপেটা', 1, '2020-04-01 17:42:42', NULL),
(12, 'India', 'ভাৰতবৰ্ষ', 1, '2020-04-02 21:16:03', NULL),
(13, 'World', 'বিশ্ব', 1, '2020-04-02 21:16:26', NULL),
(14, 'Northeast', 'উত্তৰ পূব', 1, '2020-04-02 21:50:28', NULL),
(15, 'Entertainment', 'মনোৰঞ্জণ', 1, '2020-04-02 21:50:58', NULL),
(16, 'Sports', 'ক্ৰীড়া', 1, '2020-04-02 21:51:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_03_21_092143_create_posts_table', 2),
(4, '2020_03_24_110921_create_category_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_id` char(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_type` char(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` char(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=publish, 2=unpublish',
  `hp_section1` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1=slider, 2=post4, 3=General (Homepage Section 1)',
  `popular_post` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1=popular, 2=disabled',
  `slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `image`, `cat_id`, `post_type`, `author`, `status`, `hp_section1`, `popular_post`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Assumenda necessitatibus animi rerum molestiae.', '<p>Dolor earum qui qui iste iusto perferendis animi perferendis. Eos earum quidem totam velit. Qui sed et ut et.</p>', '748279d8c4a9e32b2b1b7c0da39ba03b.jpg', '2', '1', 'News Desk', '1', '3', '1', 'assumenda-necessitatibus-animi-rerum-molestiae', '2020-03-23 00:54:23', '2020-04-03 19:42:34'),
(3, 'Eaque dolores ut vel eos culpa ut.', '<p>Est exercitationem aut natus beatae voluptas dolor excepturi. Quo sunt fugiat cumque. Omnis excepturi est rerum fugit impedit illum. Et sit et officia quidem. Laboriosam ipsa est temporibus repellat.</p>', '6a6f3190a894b450a92b96658d5aeb10.jpg', '2', '1', 'News Desk', '1', '3', '1', 'eaque-dolores-ut-vel-eos-culpa-ut', '2020-03-23 00:54:24', '2020-04-03 19:46:58'),
(4, 'Eaque dolorem doloremque quae incidunt eligendi.', '<p>Consectetur et aut commodi eum quibusdam dicta. Dolore cumque minus veniam porro est pariatur qui. Alias qui officia velit dolorem quia.</p>', '4e58e696de64882b70eb6fc6564b106c.jpg', '5', '1', 'News Desk', '1', '3', '1', 'eaque-dolorem-doloremque-quae-incidunt-eligendi', '2020-03-23 00:54:24', '2020-04-03 19:47:08'),
(5, 'Quia adipisci enim qui accusantium eligendi qui.', '<p>Possimus in ullam ducimus nesciunt nemo ipsum. Aut omnis iusto architecto aut consequatur et a. Ducimus sequi corrupti modi quia.</p>', '247dabc2c41c60494b8f990ddfdef820.jpg', '1', '1', 'Staff Reporter', '1', '3', '1', 'quia-adipisci-enim-qui-accusantium-eligendi-qui', '2020-03-23 00:54:25', '2020-04-03 19:48:05'),
(6, 'Facilis optio fugiat voluptatum.', '<p>Mollitia molestias nam recusandae officiis reiciendis. Et iure architecto distinctio sequi. Est earum omnis aut adipisci perferendis doloremque. Et quo necessitatibus qui voluptatem autem ducimus.</p>', '1e3639c60259113fbe749690c4a50e95.jpg', '3', '1', 'Saddam Hussain', '1', '1', NULL, 'facilis-optio-fugiat-voluptatum', '2020-03-23 00:54:26', '2020-04-02 14:48:19'),
(7, 'Vitae ad autem odio.', '<p>Autem assumenda illo ad non. Animi cupiditate aliquam cupiditate aut ea ut. Voluptatem rerum cupiditate temporibus sint quo error. Debitis id tenetur molestiae qui accusantium quia quod molestiae.</p>', NULL, '6', '1', 'Saddam Hussain', '1', '1', NULL, 'vitae-ad-autem-odio', '2020-03-23 00:54:26', '2020-04-02 14:48:05'),
(8, 'Similique est voluptatem blanditiis quia optio.', '<p>Ipsa magnam voluptatem quia autem provident sint aperiam in. Soluta voluptatem dolor veniam ea. Accusantium voluptas qui assumenda eligendi.</p>', 'a87d6a4d09c2a045b283c5b0cb4182c2.jpg', '2', '1', 'News Desk', '1', '1', NULL, 'similique-est-voluptatem-blanditiis-quia-optio', '2020-03-23 00:54:26', '2020-04-02 14:48:32'),
(9, 'Omnis vel quisquam ipsa.', '<p>Ab nulla soluta qui et voluptas consequatur. Ut eum quae quo pariatur. Rerum cupiditate eius molestiae aut quia praesentium quae. Mollitia eum rerum id earum eum.</p>', 'cfd7bc5c72b3b43bb5814c6e2160f6f4.jpg', '3', '1', 'Staff Reporter', '1', '1', NULL, 'omnis-vel-quisquam-ipsa', '2020-03-23 00:54:26', '2020-04-02 14:48:45'),
(10, 'Dolores quae officia eius vero rerum est et.', '<p>A quod impedit eum est illum eos eos tempore. Aut et autem doloremque sit explicabo. Sunt fuga velit aperiam ea ea. Sapiente quis libero sit vel. Facere repudiandae dolores est modi non.</p>', '88e323d08906fbd1c2548bd13fb0427b.jpg', '1', '1', 'Saddam Hussain', '1', '2', NULL, 'dolores-quae-officia-eius-vero-rerum-est-et', '2020-03-23 00:54:26', '2020-04-02 14:45:17'),
(11, 'Blanditiis magni et natus enim optio ad commodi.', '<p>Omnis ut voluptate labore rerum deleniti dolores repellat. Ea quam esse voluptates. Nobis hic voluptas voluptas quidem. Ad dicta voluptatum reiciendis quisquam aut.</p>', 'e2346ebdc5ac8cff7399c00016b8f3f8.jpg', '5', '1', 'News Desk', '1', '2', NULL, 'blanditiis-magni-et-natus-enim-optio-ad-commodi', '2020-03-23 00:54:27', '2020-04-02 14:49:28'),
(12, 'Omnis qui ipsam quo et quas.', '<p>Quis molestiae omnis qui laboriosam beatae quia. Ullam voluptatem rerum laudantium qui explicabo nam. Consequuntur et quas ipsa odit cum dignissimos.</p>', '0cb2aa222fc69eb9b5a828cdc7a9bab2.jpg', '5', '1', 'Saddam', '1', '2', NULL, 'omnis-qui-ipsam-quo-et-quas', '2020-03-23 00:54:27', '2020-04-02 14:49:45'),
(13, 'Officiis ullam quod harum repellat et non quos.', '<p>Et officia est suscipit illo. Impedit sint quia odit qui harum quo nihil. Quasi repellendus et est animi excepturi in dolor aut.</p>', '8e4a4c2d7d9b84653d0bfbc5d66866ea.jpg', '5', '1', 'Staff Reporter', '1', '2', NULL, 'officiis-ullam-quod-harum-repellat-et-non-quos', '2020-03-23 00:54:27', '2020-04-02 14:50:06'),
(14, 'Illo a incidunt ut deleniti non placeat sit.', '<p>Sit qui facilis necessitatibus voluptatem et a. Necessitatibus esse qui rerum occaecati dolore facere aut et. Magni consequatur soluta sed quo reprehenderit.</p>', '1834a1527ae4e5248cca6c6d3ccc8a1e.jpg', '5', '1', 'Staff Reporter', '1', NULL, NULL, 'illo-a-incidunt-ut-deleniti-non-placeat-sit', '2020-03-23 00:54:27', '2020-04-02 14:50:17'),
(15, 'Ut minus nemo ea.', '<p>Est fugit dicta praesentium voluptatibus voluptatibus soluta quaerat. Doloremque vitae dolores perferendis veritatis esse vel qui.</p>', 'ed0c79cc833f0a8d8bc93d47f9919c7f.jpg', '8', '1', 'Staff Reporter', '1', NULL, NULL, 'ut-minus-nemo-ea', '2020-03-23 00:54:27', '2020-04-02 14:50:29'),
(16, 'Iste tempora et minima non sit non dolorum.', 'Cumque sunt aut animi repellendus ipsam. Corporis impedit nihil sapiente quia. Dicta natus velit illo adipisci eos. Et rerum ipsam est qui officiis esse dicta cum.', 'b1c3a72a7d737af62a4defde34210394.jpg', '9', NULL, NULL, '1', NULL, NULL, 'sdcsdcs', '2020-03-23 00:54:27', '2020-04-01 08:31:39'),
(17, 'Laboriosam maiores eos iste itaque.', 'Blanditiis deleniti nemo eligendi rem et dolor rerum. Voluptatem quis laboriosam nostrum qui ut. Beatae et ipsum omnis et. Ea atque ab non rerum soluta.', '91d2fa507d46a5cd04208b5e12457178.jpg', '10', NULL, NULL, '1', NULL, NULL, 'sadasd', '2020-03-23 00:54:27', '2020-04-01 08:32:26'),
(18, 'Aliquam fuga distinctio aspernatur sequi quia.', 'Modi delectus et quaerat voluptatem laborum. Ad officia voluptatem ut nesciunt harum et. Et minus labore nulla pariatur accusantium nobis.', NULL, '6', NULL, NULL, '1', NULL, NULL, 'asdsad', '2020-03-23 00:54:28', '2020-03-23 00:54:28'),
(19, 'Numquam rerum accusantium et et quis mollitia.', 'In velit atque magni sint est. Enim modi architecto sed. Debitis cumque sed qui voluptatem dicta. Sint aspernatur esse officia accusantium et deserunt.', NULL, '6', NULL, NULL, '1', NULL, NULL, 'sadasda', '2020-03-23 00:54:28', '2020-03-23 00:54:28'),
(20, 'Quibusdam exercitationem blanditiis deserunt.', 'Mollitia tempore perspiciatis et architecto consequatur. Vel ut unde consequatur ut natus saepe sint. Dignissimos impedit vero dolorem iste rem. Explicabo laboriosam cupiditate vel.', NULL, '6', NULL, NULL, '1', NULL, NULL, 'asdas', '2020-03-23 00:54:28', '2020-03-23 00:54:28'),
(21, 'Laudantium voluptas magnam facere dolor officiis.', 'Et quibusdam voluptas iure quam et non. Non dignissimos iste magni nihil rerum. Amet occaecati aut assumenda itaque. Sint aut minima et adipisci qui blanditiis in.', NULL, '6', NULL, NULL, '1', NULL, NULL, 'asdasd', '2020-03-23 00:54:28', '2020-03-23 00:54:28'),
(22, 'Atque id nisi ea eos autem rem quod.', 'Ut quidem neque et fugiat voluptatem. Maxime esse fugiat expedita molestiae distinctio. Ex sed laboriosam eos officia cumque maiores sit.', NULL, '6', NULL, NULL, '1', NULL, NULL, 'sadasd', '2020-03-23 00:54:28', '2020-03-23 00:54:28'),
(23, 'Vero aut vitae qui iure magnam.', 'Laborum sed dolor dolorem pariatur nobis. Voluptas ipsam minus iure cum pariatur tempora. Exercitationem ea cumque et sit.', NULL, '6', NULL, NULL, '1', NULL, NULL, 'sadasda', '2020-03-23 00:54:28', '2020-03-23 00:54:28'),
(24, 'Aperiam sequi rem voluptatem dolores ipsam.', 'Iste maxime totam ratione repellendus ipsam facere magni quas. Qui in aliquid mollitia porro. Iusto quam cum voluptatem animi.', NULL, '6', NULL, NULL, '1', NULL, NULL, 'dsfsdfd', '2020-03-23 00:54:29', '2020-03-23 00:54:29'),
(25, 'Voluptas et dolorem corrupti necessitatibus.', '<p>Culpa vel inventore itaque. Quisquam sequi ut eos maiores incidunt. Velit rerum nam ut et. Et qui aut dolor libero eveniet molestiae perspiciatis.</p>', '1dea7cc3b239d8581626894d966691ad.jpg', '6', '1', 'Staff Reporter', '1', NULL, NULL, 'voluptas-et-dolorem-corrupti-necessitatibus', '2020-03-23 00:54:29', '2020-04-02 14:50:59'),
(26, 'Enim molestiae labore aut molestiae perferen', '<p>Enim labore natus est incidunt quis. Magnam eligendi aut iure voluptatem. Sunt eos id consectetur eum est deserunt sapiente. Consequatur assumenda ab quasi.</p>', 'a3ee01ee948a7aa7517288b41dbe066e.jpg', '6', '1', 'Saddam Hussain', '1', NULL, NULL, 'enim-molestiae-labore-aut-molestiae-perferen', '2020-03-23 00:54:29', '2020-04-02 14:51:14'),
(27, 'Eum perspiciatis ut et maxime repudiandae.', 'Rem eveniet iste est asperiores ut animi quia maxime. Ut est velit at alias minima magni modi. Minima quam a nostrum enim consequatur ut.', NULL, '7', NULL, NULL, '1', NULL, NULL, 'sfdsdfs', '2020-03-23 00:54:29', '2020-03-23 00:54:29'),
(28, 'Est eaque veritatis corporis tempore.', 'Nulla rem vel qui magni. Similique necessitatibus amet vel alias id mollitia aut. Et minima repellendus ratione iure molestiae. Omnis illum nobis magnam molestiae maxime nostrum non.', '49a7aa81aeaaf4b94eb3cac7bdedc8d3.jpg', '2', NULL, NULL, '1', NULL, NULL, 'sdfsdfs', '2020-03-23 00:54:29', '2020-03-28 19:22:36'),
(29, 'Updated title', 'this is updated boy', 'ab256b124ee9afeddc83c64431e320d3.jpg', '2', NULL, NULL, '1', NULL, NULL, 'fgfdgfg', '2020-03-23 00:54:29', '2020-03-28 19:21:59'),
(30, 'Doloribus consequatur voluptate tempore pariatur.', 'Repellendus enim impedit nemo velit. Perspiciatis accusamus quia dolores rerum ad eum odio. Officiis autem reprehenderit corporis. Esse aspernatur sit ipsa.', '65d3638c481df18df221f6378b272dc7.jpg', '2', NULL, NULL, '1', NULL, NULL, 'fdgfdgdf', '2020-03-23 00:54:29', '2020-03-28 19:21:14'),
(31, 'This is test title', '<p>This is test body and bla bla bla</p>', '838725e706e0074fcdc64b47a724904a.jpg', '1', '1', 'Staff Reporter', '1', NULL, NULL, 'this-is-test-title', '2020-03-23 01:36:40', '2020-04-02 14:51:26'),
(32, 'How do I validate a drop down list in Laravel PHP?', '<p>As you have already learned, working with many-to-many relations requires the presence of an intermediate table. Eloquent provides some very helpful ways of interacting with this table. For example, let&#39;s assume our&nbsp;<code>User</code>&nbsp;object has many&nbsp;<code>Role</code>&nbsp;objects that it is related to. After accessing this relationship, we may access the intermediate table using the&nbsp;<code>pivot</code>&nbsp;attribute on the models:</p>', 'dadbbffe75616aeb3b609e60999f25ff.jpg', '1', '1', 'News Desk', '1', NULL, NULL, 'how-do-i-validate-a-drop-down-list-in-laravel-php', '2020-03-24 12:48:58', '2020-04-02 14:51:42'),
(33, 'orem ipsum delit. Maecenas feugiat consequat diam. Maecenas metus.', '<p><strong>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. Aenean dictum lacinia tortor. Nunc iaculis, nibh non</strong> iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. S<s>ed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, ero</s>s <em>pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor. Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis i</em></p>\r\n\r\n<p><img alt=\"\" src=\"http://127.0.0.1/newstimenortheast/public/assets/ckeditor/shirt_1585219409.jpg\" style=\"height:160px; margin-left:30px; margin-right:30px; width:200px\" /></p>\r\n\r\n<p><em>t ut placerat elementum, lectus nisl Sddam</em></p>', '7fb353fbfafa898e9cb43f17e382aa25.jpg', '1', '1', 'Saddam Hussain', '1', NULL, NULL, 'orem-ipsum-delit-maecenas-feugiat-consequat-diam-maecenas-metus', '2020-03-26 10:46:01', '2020-04-02 14:51:52'),
(34, 'This is test Title', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ac fermentum tortor. Integer pulvinar imperdiet lacus, ac condimentum velit rutrum sit amet. Nunc vitae vestibulum felis, vitae hendrerit augue. Sed quam tortor, faucibus sed tempor eget, tempus eget augue. Nulla congue ut ante nec rhoncus. Donec feugiat enim non ultricies porta. Ut egestas tincidunt ante sed convallis. In vulputate velit augue, id imperdiet sem mattis nec. Nulla ultricies laoreet felis in consectetur.</p>\r\n\r\n<p>Nullam at placerat purus. Curabitur fermentum arcu velit, vitae porta libero pulvinar in. Nam aliquam tincidunt porttitor. Curabitur eget libero at sem fermentum congue. Maecenas non est non nisl malesuada viverra et et nunc. In elementum justo ac tincidunt rutrum. Phasellus ultrices luctus bibendum. Aliquam scelerisque egestas est ut hendrerit. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vestibulum sollicitudin eget ante sit amet tristique. Vestibulum aliquet gravida urna sit amet hendrerit. Curabitur scelerisque euismod nulla, a mattis urna porttitor eu. news update</p>', 'ee6bbce8240e00ac828deb75aa64b245.jpg', '2', '1', 'News Desk', '1', NULL, NULL, 'this-is-test-title', '2020-03-27 07:07:43', '2020-04-02 14:52:04'),
(35, 'নিৰ্বাচিত প্ৰবন্ধ  ৰজনীকান্ত ৰজনীকান্ত এগৰাকী ভাৰতীয় চলচ্চিত্ৰ অভিনেতা,', '<p>বালাচান্দেৰৰ দ্বাৰা পৰিচালিত&nbsp;<em>অপূৰ্ৱ ৰাগাংগল</em>&nbsp;(১৯৭৫) নামৰ চলচ্চিত্ৰ খনৰ জৰিয়তে অভিনয় জগতত প্ৰৱেশ কৰিছিল। কে. বাল্লাচান্দেৰক ৰজনীকান্তে তেওঁৰ মাৰ্গদৰ্শকৰ মৰ্যদা দিয়ে। তামিল চলচ্চিত্ৰত অলপদিনৰ বাবে ঋণাত্মক চৰিত্ৰত অভিনয় কৰাৰ পিছত ৰজনীকান্ত ক্ৰমান্বয়ে এগৰাকী প্ৰতিষ্ঠিত অভিনেতা স্বৰূপে স্বীকৃত হ&#39;ল। ভাৰতীয় জনসাধাৰণৰ মাজত তেওঁ মেটেনি আইডল (<em>matinee idol</em>) হিচাপে অতীৱ জনপ্ৰিয়। তেওঁৰ চালচলন আৰু চলচ্চিত্ৰসমূহত সুৰুচিপূৰ্ণ সংলাপ পৰিৱেশন জনসাধাৰণৰ মাজত তেওঁৰ জনপ্ৰিয়তা আৰু আকৰ্ষণৰ অন্যতম কাৰণ। ২০০৭ চনত মুক্তিপ্ৰাপ্ত&nbsp;<em>শিৱাজী</em>&nbsp;নামৰ চলচ্চিত্ৰখনত অভিনয়ৰ বাবে ৰজনীকান্তক ২৬ কোটি টকা পাৰিশ্ৰামিক হিচাপে আগবঢ়োৱা হৈছিল আৰু ইয়াৰ জৰিয়তে জেকী চা</p>', '5a07e35c778620b1ffc798cbed40d9c3.jpg', '1', '2', 'News Desk', '1', '1', NULL, 'নিৰ্বাচিত-প্ৰবন্ধ-ৰজনীকান্ত-ৰজনীকান্ত-এগৰাকী-ভাৰতীয়-চলচ্চিত্ৰ-অভিনেতা,', '2020-03-27 07:25:18', '2020-04-02 14:53:31'),
(36, 'তিক আৰু বহুভাষিক প্ৰকল্পৰ সূচনা কৰা হৈছে।', '<p>ই ৱিকিপিডিয়াবোৰত তথ্যৰ শুদ্ধতা আৰু নিৰপেক্ষতাৰ ওপৰত অতিশয় গুৰুত্ব আৰোপ কৰা হয়। বিশ্বৰ যিকোনো স্থানৰপৰা যিকোনো মানুহে ইণ্টাৰনেটৰ জৰিয়তে বিনামূল্যে যিকোনো ৱিকিপিডিয়াৰ পৰা জ্ঞান আহৰণ আৰু উপভোগ কৰিব পাৰে। &ldquo;ৰাইজৰ দ্বাৰা ৰাইজৰ বাবে&rdquo; সংকলিত এই ৱিকিপিডিয়াক থোৰতে &ldquo;গণবিশ্বকোষ&rdquo; বুলিব পাৰি।</p>', '3cec605fbd687e0cb82a0a1cec95eea3.png', '1', '2', 'News Desk', '1', '3', '1', 'তিক-আৰু-বহুভাষিক-প্ৰকল্পৰ-সূচনা-কৰা-হৈছে।', '2020-03-27 07:30:41', '2020-04-03 20:17:34'),
(37, 'What is Lorem Ipsum?', '<p>Aliquam erat volutpat. Etiam maximus sed dui ut pharetra. Pellentesque nibh ex, malesuada vitae consequat eu, consequat elementum ipsum. Maecenas laoreet erat eget ante ullamcorper lobortis. Integer facilisis dolor sit amet erat sodales, quis egestas tellus volutpat. Cras et hendrerit nunc, vitae hendrerit odio. Mauris luctus vel urna in dapibus. Suspendisse felis nisi, ultricies ac condimentum sed, ultricies nec quam. Ut dignissim aliquam nulla id ullamcorper. Morbi porta pellentesque dolor vel rhoncus. Suspendisse erat lectus, rutrum a accumsan ac, rhoncus nec dolor.</p>\r\n\r\n<p><strong><u>Nullam vitae ligula dui. Mauris est velit, euismod at justo eu, tristique ullamcorper urna. Nulla nisi mi, ultrices nec dui tempor, tincidunt accumsan mi. Nunc ornare metus dolor, ut placerat justo suscipit at. Aliquam semper ac lacus non ornare. Sed nec eros mi. Morbi at dolor elementum, egestas nulla et, vehicula nibh. Proin commodo, massa vel pharetra dapibus, nisl orci vestibulum tortor, at aliquam lorem nibh ut nisi. Curabitur tristique vehicula magna, eu malesuada ipsum condimentum at. Duis velit leo, elementum vel tellus sed, viverra placerat nulla.</u></strong></p>', '44394d80f9dbfbb925429e4fef4bc975.jpg', '5', '1', 'News Desk', '1', NULL, NULL, 'what-is-lorem-ipsum', '2020-03-28 19:38:59', '2020-04-02 14:52:17'),
(38, 'Retrieving Intermediate Table Columns', '<p>Cras facilisis tortor sagittis auctor tempus. Morbi vitae mi quis quam mattis dictum. Donec ultrices tellus ipsum, a finibus augue tincidunt nec. Sed lacinia gravida orci, maximus condimentum erat varius ac. Mauris eget diam fermentum, aliquam purus quis, dapibus erat. Aliquam nulla ligula, mollis ultricies risus in, pharetra scelerisque enim. Donec in metus in purus iaculis sodales non vel ligula. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nunc sem libero, tincidunt non aliquet sed, accumsan sed nunc. Donec pellentesque rutrum elit, vel fermentum ipsum ullamcorper ut.</p>', '6e5372f3d05d1d8482b9550fde320882.jpg', '6', '1', 'Saddam Hussain', '1', NULL, NULL, 'retrieving-intermediate-table-columns', '2020-03-28 19:40:40', '2020-04-02 14:52:25'),
(39, 'Lorem ipsum is placeholder text', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dictumst quisque sagittis purus sit amet volutpat consequat mauris. Viverra ipsum nunc aliquet bibendum enim. Phasellus vestibulum lorem sed risus. Eget est lorem ipsum dolor sit amet. Molestie nunc non blandit massa enim. Est sit amet facilisis magna etiam tempor orci eu lobortis. In est ante in nibh. Vel pretium lectus quam id leo in. Ullamcorper sit amet risus nullam eget. Nec nam aliquam sem et tortor. Dolor sit amet consectetur adipiscing elit pellentesque habitant. Quis auctor elit sed vulputate.</p>', '2163ec5409b7492be5106bc8006088cd.jpg', '7', '1', 'News Desk', '1', NULL, NULL, 'lorem-ipsum-is-placeholder-text', '2020-03-29 11:37:05', '2020-04-02 14:52:33'),
(40, 'Nisl rhoncus mattis rhoncus urna', '<p>Nisl rhoncus mattis rhoncus urna neque viverra justo nec ultrices. Odio tempor orci dapibus ultrices. Vel pharetra vel turpis nunc eget lorem dolor sed. Amet risus nullam eget felis. In aliquam sem fringilla ut morbi. Cursus in hac habitasse platea dictumst quisque sagittis purus. Scelerisque varius morbi enim nunc faucibus a pellentesque sit. Id aliquet lectus proin nibh nisl condimentum id. Mauris pharetra et ultrices neque ornare aenean euismod elementum nisi. Ornare quam viverra orci sagittis eu volutpat odio facilisis. Eu mi bibendum neque egestas congue quisque egestas. Vel turpis nunc eget lorem dolor sed.</p>', '496a12b86ba96fcd80dad86bb4224212.jpg', '7', '1', 'News Desk', '1', NULL, NULL, 'nisl-rhoncus-mattis-rhoncus-urna', '2020-03-29 11:37:32', '2020-04-02 14:52:42'),
(41, 'Tellus rutrum tellus', '<p>Tellus rutrum tellus pellentesque eu tincidunt. Quam elementum pulvinar etiam non quam lacus suspendisse faucibus interdum. At urna condimentum mattis pellentesque id nibh tortor id aliquet. Et odio pellentesque diam volutpat commodo sed egestas egestas fringilla. Semper eget duis at tellus at. Nisi est sit amet facilisis magna etiam tempor orci. Nunc scelerisque viverra mauris in aliquam sem fringilla ut. Enim eu turpis egestas pretium. In arcu cursus euismod quis viverra nibh cras pulvinar. Cras semper auctor neque vitae tempus quam pellentesque nec. Justo donec enim diam vulputate ut pharetra. Diam vel quam elementum pulvinar. Tristique sollicitudin nibh sit amet commodo nulla. Gravida quis blandit turpis cursus in hac habitasse platea dictumst.</p>', 'd6adab63f8229197b3d69519653fa399.jpg', '7', '1', 'News Desk', '1', NULL, NULL, 'tellus-rutrum-tellus', '2020-03-29 11:38:14', '2020-04-02 14:52:48'),
(42, 'Fames ac turpis egestas maecenas pharetra', '<p>Fames ac turpis egestas maecenas pharetra convallis posuere morbi. Accumsan sit amet nulla facilisi morbi tempus iaculis urna. Adipiscing elit pellentesque habitant morbi tristique senectus. In tellus integer feugiat scelerisque varius morbi enim nunc. Ipsum consequat nisl vel pretium lectus quam id. Egestas integer eget aliquet nibh. Dui sapien eget mi proin sed. In cursus turpis massa tincidunt dui ut ornare lectus sit. Arcu felis bibendum ut tristique et egestas. Adipiscing bibendum est ultricies integer. Sodales ut etiam sit amet. Cras ornare arcu dui vivamus arcu felis bibendum. Iaculis nunc sed augue lacus. Vestibulum rhoncus est pellentesque elit ullamcorper dignissim.</p>', '3d32c23564d85ad0a73d5dae582e2f8a.jpg', '7', '1', 'News Desk', '1', NULL, NULL, 'fames-ac-turpis-egestas-maecenas-pharetra', '2020-03-29 11:38:54', '2020-04-02 14:52:55'),
(43, 'Consequat id porta nibh venenatis cras', '<p>Consequat id porta nibh venenatis cras sed felis eget. Id donec ultrices tincidunt arcu non. Et tortor consequat id porta nibh. Ac tincidunt vitae semper quis lectus nulla. Magna fermentum iaculis eu non diam. Etiam non quam lacus suspendisse faucibus interdum posuere lorem. Eget nulla facilisi etiam dignissim diam. Donec massa sapien faucibus et molestie ac feugiat sed lectus. Odio tempor orci dapibus ultrices. Id faucibus nisl tincidunt eget nullam non nisi est. Sapien et ligula ullamcorper malesuada proin libero. Dui nunc mattis enim ut tellus elementum sagittis vitae et. Posuere morbi leo urna molestie at. Donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum.</p>', '437123dcc10f197e7060c37bd4fb3b68.jpg', '7', '1', 'News Desk', '1', NULL, NULL, 'consequat-id-porta-nibh-venenatis-cras', '2020-03-29 11:39:27', '2020-04-02 14:53:14'),
(44, 'There’s currently no vaccine to prevent coronavirus disease (COVID-19).', '<p>You can protect yourself and help prevent spreading the virus to others if you:</p>\r\n\r\n<h2><strong>Do:</strong></h2>\r\n\r\n<ul>\r\n	<li>Wash your hands regularly for 20 seconds, with soap and water or alcohol-based hand rub</li>\r\n	<li>Cover your nose and mouth with a disposable tissue or flexed elbow when you cough or sneeze</li>\r\n	<li>Avoid close contact (1 meter or 3 feet) with people who are unwell</li>\r\n	<li>Stay home and self-isolate from others in the household if you feel unwell</li>\r\n</ul>\r\n\r\n<h2><strong>Don&#39;t:</strong></h2>\r\n\r\n<ul>\r\n	<li>Touch your eyes, nose, or mouth if your hands are not clean</li>\r\n</ul>', 'c5ffc18d3fdfc5f7d48d327c22f512f4.jpg', '8', '1', 'News Desk', '1', NULL, NULL, 'theres-currently-no-vaccine-to-prevent-coronavirus-disease-covid-19', '2020-04-01 14:29:28', '2020-04-02 14:53:19'),
(45, 'নিৰ্বাচিত প্ৰবন্ধ  ৰজনীকান্ত', '<p>তুলসীবাৰী/মৰিগাঁওঃ ৰাজ্য তৰকাৰে দীনদয়াল উপাধ্যায়ৰ নামত মহাবিদ্যালয় কৰিব খোজাত ৰাজ্যজুৰি প্ৰতিবাদ অব্যাহত আছে৷ তাৰ মাজতে আজি কলিতা সাবিত্য সভাই&nbsp;<em>এসমৰ</em>&nbsp;লোকৰ নামত শিক্ষানুষ্ঠান স্থাপন কৰাৰ দাবী জনাইছে৷ কলিতা সাহিত্য সভাই প্ৰাগ ঐতিহাসিক কালৰে পৰাই সামাজিক, সাংস্কৃতিক আৰু বৌদ্ধিক দিশত অসম অতি উন্নত</p>', '7ca8f9430294fb010046afa2a177945c.jpg', '2', '2', 'ছাদ্দাম হুছেইন', '1', '2', NULL, 'নিৰ্বাচিত-প্ৰবন্ধ-ৰজনীকান্ত', '2020-04-01 21:22:36', '2020-04-02 14:54:01'),
(46, 'দক্ষিণ কোৰিয়াতো হৈছিল নিজামুদ্দিন কাণ্ড:  গীৰ্জাৰ সমাৱেশৰ পৰা হৈছিল সংক্ৰমণ', '<p>Covid-19 এ চীনত মহামাৰীৰ ৰূপ ধাৰণ কৰাৰ ভৰপকতে ফেব্ৰুৱাৰীৰ প্ৰথম সপ্তাহত দক্ষিণ কোৰিয়াৰ দীগু (Daegu) চহৰৰ চিনছেউঞ্জী নামৰ এটা গীৰ্জাঘৰত অনুষ্ঠিত হোৱা এক ধর্মীয় সমাৰোহত ১০০০ জনে লোকে অংশগ্ৰহণ কৰিছিল । তাৰ পাছত ফেব্ৰুৱাৰীৰ ১৮ তাৰিখে সেই সমাবেশত উপস্থিত থকা এগৰাকী ৬১ বছৰীয়া মহিলাৰ শৰীৰত কোৰোণাৰ অৱস্থিতি ধৰা পৰে। তেওঁ দেশ খনৰ ৩১ নম্বৰ কোৰোণা আক্রান্ত ব্যক্তি আছিল। তাৰ প্ৰায় ২৫ দিনৰ পাছত দক্ষিণ কোৰিয়াত Covid-19 ৰোগীৰ সংখ্যা ৮০০০ জনলৈ বৃদ্ধি পায় আৰু ইয়াৰ ৪৩০০ জন সেই সমাবেশলৈ গৈছিল নতুবা যোৱা লোকৰ সংস্পৰ্শলৈ আহিছিল ।<br />\r\n<br />\r\nদক্ষিণ কোৰিয়াৰ এই ঘটনাৰে দিল্লীৰ নিজামুদ্দিনৰ ঘটনা সাদৃশ্য আছে । প্ৰাৰম্ভিক অৱস্থাতে নিজামুদ্দিন কাণ্ড প্ৰতিহত নকৰিলে কোৰিয়া সদৃশ আক্ৰান্তৰ সংখ্যা বৃদ্ধি পোৱাৰ আশংকা নুই কৰা নাই বিশেষজ্ঞই ।<br />\r\nঅৱশ্যে দক্ষিণ কোৰিয়াই যি ধৰণে এই পৰিস্থিতিৰ মুকবিলা কৰিলে ভাৰতে তাৰ পৰা কিছু শিক্ষা লোৱাৰ অৱকাশ আছে । চহৰ খনৰ মেয়ৰ আৰু Disease Outbreak ৰ মূৰব্বীয়ে তৎক্ষণাত সমাবেশত উপস্থিত থকা লোকৰ চিনাক্তকৰণ আৰু তেওঁলোকৰ Contact Tracing Program আৰম্ভ কৰিলে । Disease Outbreak ৰ মূৰব্বী পক-কীৰ মতে চহৰ খনৰ ভিতৰত অনুষ্ঠান টোৰে জড়িত ১০০০০ লোক ওলাল ।<br />\r\n<br />\r\nতেওঁ কয় &ndash; আমি সকলোৰে স্বাস্থ্য পৰীক্ষা কৰিলোঁ আৰু তাৰে ভিতৰত ৮৭.৫ শতাংশই কোৰোণা ভাইৰাছত আক্রান্ত পোৱা গল; অতি শীঘ্ৰেই আমি এখন বৃহৎ অস্থায়ী চিকিৎসালয় নিৰ্মাণ কৰিলোঁ আৰু সকলোকে তাত আছুতীয়াকৈ ৰাখি চিকিৎসা আৰম্ভ কৰিলোঁ । প্ৰাৰম্ভিক পৰ্যায়ত আমি সেই কাম নকৰাহৈ আমাৰো অৱস্থা আমেৰিকা অথবা ইটালী সদৃশ হল হেতেন, মন্তব্য কৰে পক-লীয়ে।<br />\r\nচহৰ খনৰ ভিতৰত কৰা massive mobilization program &ndash;এ বেমাৰটো দেশ খনৰ অন্য ৰাজ্যত বিয়পাত বাধা প্ৰদান কৰিলে আৰু দক্ষিণ কোৰিয়া এক সম্ভাব্য বিপদৰ পৰা হাত সাৰিল ।<br />\r\nকেৱল নিজামুদ্দিনেই বা দক্ষিণ কোৰিয়াৰ সেই গীৰ্জাঘৰটোৱেই নহয় চিংগাপুৰতো তিনিটা গীৰ্জাঘৰৰ সমাবেশৰ যোগেদি ৩৮ জন লোক আক্রান্ত হৈছিল । নিজামুদ্দিনৰ বেলিকা অৱশ্যে ধৰ্মীয় অনুষ্ঠানটোত অংশগ্ৰহণ কৰা বহু লোক দেশৰ বিভিন্ন ৰাজ্য পালেগৈ আৰু বহুতে চৰকাৰৰ চিনাক্তকৰণ প্ৰক্ৰিয়া আৰু আছুতীয়াকৈ ৰখাৰ ব্যৱস্থাত সহযোগ কৰা নাই ।</p>', 'fe57afeb620c4cb9641718574c68f344.jpg', '6', '2', 'Saddam Hussain', '1', NULL, NULL, 'দক্ষিণ-কোৰিয়াতো-হৈছিল-নিজামুদ্দিন-কাণ্ড:-গীৰ্জাৰ-সমাৱেশৰ-পৰা-হৈছিল-সংক্ৰমণ', '2020-04-02 13:40:49', '2020-04-02 14:54:13'),
(47, 'ছিংগাপুৰৰ পৰা উভতি আহি ক’ৰোণাত আক্ৰান্ত হ’ল নেকি কাজল আৰু জীয়ৰী ন্যাসা? অজয় দেৱগনৰ আবেগিক মন্তব্য ক’ৰোণা ভাইৰাছত আক্ৰান্ত হ’ল নেকি বলীউদৰ জনপ্ৰিয় অভিনেত্ৰী কাজল? আনকি জীয়ৰীৰ দেহতো ধৰা পৰিছে নেকি ক’ৰোণাৰ অৱস্থিতি?', '<p>ক&rsquo;ৰোণা ভাইৰাছত আক্ৰান্ত হ&rsquo;ল নেকি বলীউদৰ জনপ্ৰিয় অভিনেত্ৰী কাজল? আনকি জীয়ৰীৰ দেহতো ধৰা পৰিছে নেকি ক&rsquo;ৰোণাৰ অৱস্থিতি? ছিংগাপুৰৰ পৰা উভতি অহাৰ পিছতে জ্বৰত আক্ৰান্ত হৈছিল দুয়ো। আনকি দুয়ো চিকিৎসালয়লৈও যাবলগীয়া হৈছিল।</p>\r\n\r\n<p><img alt=\" ক’ৰোণাৰ আতংকৰ মাজতে ছিংগাপুৰৰ পৰা উভতি আহিছিল কাজল আৰু জীয়ৰী ন্যাসা। ছিংগাপুৰৰ পৰা উভতি অহাৰ পিছতে দুয়ো জ্বৰ আৰু কাহত আক্ৰান্ত হয়। লগে লগে ক’ৰোণাত আক্ৰান্ত হোৱাৰ সন্দেহ।\" src=\"https://static.assam.news18.com/optimize/L6HvJQHW5V4-yf4SoPUVQxX6ax4=/0x0/static.assam.news18.com/assam/uploads/2020/04/image.jpg\" title=\" ক’ৰোণাৰ আতংকৰ মাজতে ছিংগাপুৰৰ পৰা উভতি আহিছিল কাজল আৰু জীয়ৰী ন্যাসা। ছিংগাপুৰৰ পৰা উভতি অহাৰ পিছতে দুয়ো জ্বৰ আৰু কাহত আক্ৰান্ত হয়। লগে লগে ক’ৰোণাত আক্ৰান্ত হোৱাৰ সন্দেহ।\" /><img alt=\" ক’ৰোণাৰ আতংকৰ মাজতে ছিংগাপুৰৰ পৰা উভতি আহিছিল কাজল আৰু জীয়ৰী ন্যাসা। ছিংগাপুৰৰ পৰা উভতি অহাৰ পিছতে দুয়ো জ্বৰ আৰু কাহত আক্ৰান্ত হয়। লগে লগে ক’ৰোণাত আক্ৰান্ত হোৱাৰ সন্দেহ।\" src=\"https://static.assam.news18.com/optimize/L6HvJQHW5V4-yf4SoPUVQxX6ax4=/0x0/static.assam.news18.com/assam/uploads/2020/04/image.jpg\" title=\" ক’ৰোণাৰ আতংকৰ মাজতে ছিংগাপুৰৰ পৰা উভতি আহিছিল কাজল আৰু জীয়ৰী ন্যাসা। ছিংগাপুৰৰ পৰা উভতি অহাৰ পিছতে দুয়ো জ্বৰ আৰু কাহত আক্ৰান্ত হয়। লগে লগে ক’ৰোণাত আক্ৰান্ত হোৱাৰ সন্দেহ।\" /></p>\r\n\r\n<p>ক&rsquo;ৰোণাৰ আতংকৰ মাজতে ছিংগাপুৰৰ পৰা উভতি আহিছিল কাজল আৰু জীয়ৰী ন্যাসা। ছিংগাপুৰৰ পৰা উভতি অহাৰ পিছতে দুয়ো জ্বৰ আৰু কাহত আক্ৰান্ত হয়। লগে লগে ক&rsquo;ৰোণাত আক্ৰান্ত হোৱাৰ সন্দেহ।</p>\r\n\r\n<p><img alt=\" ন্যাসা ছিংগাপুৰত থাকি পঢ়া–শুনা কৰে। কিছুদিনপূৰ্বে জীয়ৰীৰ ওচৰলৈ গৈছিল কাজল। চাৰিওফালে ক’ৰোণাৰ সংক্ৰমণ বৃদ্ধি পোৱাৰ সময়তে দুয়োকে বিমানবন্দৰত দেখা গৈছিল।\" src=\"https://static.assam.news18.com/optimize/KghCOByxNQkPZdzhzdrFtQrfZeU=/0x0/static.assam.news18.com/assam/uploads/2020/04/nysa_devgan_find_out_the_things_said_by_ajay_devgn_and_kajol_about_their_daughter_which_made_headlines_mainimage.jpg\" title=\" ন্যাসা ছিংগাপুৰত থাকি পঢ়া–শুনা কৰে। কিছুদিনপূৰ্বে জীয়ৰীৰ ওচৰলৈ গৈছিল কাজল। চাৰিওফালে ক’ৰোণাৰ সংক্ৰমণ বৃদ্ধি পোৱাৰ সময়তে দুয়োকে বিমানবন্দৰত দেখা গৈছিল।\" /><img alt=\" ন্যাসা ছিংগাপুৰত থাকি পঢ়া–শুনা কৰে। কিছুদিনপূৰ্বে জীয়ৰীৰ ওচৰলৈ গৈছিল কাজল। চাৰিওফালে ক’ৰোণাৰ সংক্ৰমণ বৃদ্ধি পোৱাৰ সময়তে দুয়োকে বিমানবন্দৰত দেখা গৈছিল।\" src=\"https://static.assam.news18.com/optimize/KghCOByxNQkPZdzhzdrFtQrfZeU=/0x0/static.assam.news18.com/assam/uploads/2020/04/nysa_devgan_find_out_the_things_said_by_ajay_devgn_and_kajol_about_their_daughter_which_made_headlines_mainimage.jpg\" title=\" ন্যাসা ছিংগাপুৰত থাকি পঢ়া–শুনা কৰে। কিছুদিনপূৰ্বে জীয়ৰীৰ ওচৰলৈ গৈছিল কাজল। চাৰিওফালে ক’ৰোণাৰ সংক্ৰমণ বৃদ্ধি পোৱাৰ সময়তে দুয়োকে বিমানবন্দৰত দেখা গৈছিল।\" /></p>\r\n\r\n<p>ন্যাসা ছিংগাপুৰত থাকি পঢ়া&ndash;শুনা কৰে। কিছুদিনপূৰ্বে জীয়ৰীৰ ওচৰলৈ গৈছিল কাজল। চাৰিওফালে ক&rsquo;ৰোণাৰ সংক্ৰমণ বৃদ্ধি পোৱাৰ সময়তে দুয়োকে বিমানবন্দৰত দেখা গৈছিল।</p>\r\n\r\n<p><img alt=\" ছিংগাপুৰৰ পৰা অহাৰ পিছতে দুয়ো জ্বৰ কাহত আক্ৰান্ত হয়। পিছত স্বাস্থ্য পৰীক্ষা কৰাত ক’ৰোণা নিগেটিভ ওলাই । এই সন্দৰ্ভত অজয় দেৱগনে কৰিছে বিশেষ মন্তব্য\" src=\"https://static.assam.news18.com/optimize/5lIUvLUMOaw0N1EpMXRA94qYNwg=/0x0/static.assam.news18.com/assam/uploads/2020/04/x1080.jpg\" title=\" ছিংগাপুৰৰ পৰা অহাৰ পিছতে দুয়ো জ্বৰ কাহত আক্ৰান্ত হয়। পিছত স্বাস্থ্য পৰীক্ষা কৰাত ক’ৰোণা নিগেটিভ ওলাই । এই সন্দৰ্ভত অজয় দেৱগনে কৰিছে বিশেষ মন্তব্য\" /><img alt=\" ছিংগাপুৰৰ পৰা অহাৰ পিছতে দুয়ো জ্বৰ কাহত আক্ৰান্ত হয়। পিছত স্বাস্থ্য পৰীক্ষা কৰাত ক’ৰোণা নিগেটিভ ওলাই । এই সন্দৰ্ভত অজয় দেৱগনে কৰিছে বিশেষ মন্তব্য\" src=\"https://static.assam.news18.com/optimize/5lIUvLUMOaw0N1EpMXRA94qYNwg=/0x0/static.assam.news18.com/assam/uploads/2020/04/x1080.jpg\" title=\" ছিংগাপুৰৰ পৰা অহাৰ পিছতে দুয়ো জ্বৰ কাহত আক্ৰান্ত হয়। পিছত স্বাস্থ্য পৰীক্ষা কৰাত ক’ৰোণা নিগেটিভ ওলাই । এই সন্দৰ্ভত অজয় দেৱগনে কৰিছে বিশেষ মন্তব্য\" /></p>\r\n\r\n<p>ছিংগাপুৰৰ পৰা অহাৰ পিছতে দুয়ো জ্বৰ কাহত আক্ৰান্ত হয়। পিছত স্বাস্থ্য পৰীক্ষা কৰাত ক&rsquo;ৰোণা নিগেটিভ ওলাই । এই সন্দৰ্ভত অজয় দেৱগনে কৰিছে বিশেষ মন্তব্য</p>\r\n\r\n<p><img alt=\" অজয় দেৱগনে কয় যে, এয়া কেৱল উৰা বাতৰি হে. সম্পূৰ্ণ সুস্থ অৱস্থাত আছে কাজল আৰু ন্য়াসা। বৰ্তমান ঘৰতেই আছে দুয়ো।\" src=\"https://static.assam.news18.com/optimize/nhegWuOl-6jiDKo2WfoeBqkx12s=/0x0/static.assam.news18.com/assam/uploads/2020/04/kajol3.jpg\" title=\" অজয় দেৱগনে কয় যে, এয়া কেৱল উৰা বাতৰি হে. সম্পূৰ্ণ সুস্থ অৱস্থাত আছে কাজল আৰু ন্য়াসা। বৰ্তমান ঘৰতেই আছে দুয়ো।\" /><img alt=\" অজয় দেৱগনে কয় যে, এয়া কেৱল উৰা বাতৰি হে. সম্পূৰ্ণ সুস্থ অৱস্থাত আছে কাজল আৰু ন্য়াসা। বৰ্তমান ঘৰতেই আছে দুয়ো।\" src=\"https://static.assam.news18.com/optimize/nhegWuOl-6jiDKo2WfoeBqkx12s=/0x0/static.assam.news18.com/assam/uploads/2020/04/kajol3.jpg\" title=\" অজয় দেৱগনে কয় যে, এয়া কেৱল উৰা বাতৰি হে. সম্পূৰ্ণ সুস্থ অৱস্থাত আছে কাজল আৰু ন্য়াসা। বৰ্তমান ঘৰতেই আছে দুয়ো।\" /></p>\r\n\r\n<p>অজয় দেৱগনে কয় যে, এয়া কেৱল উৰা বাতৰি হে. সম্পূৰ্ণ সুস্থ অৱস্থাত আছে কাজল আৰু ন্য়াসা। বৰ্তমান ঘৰতেই আছে দুয়ো।</p>\r\n\r\n<p><img alt=\" দুয়োগৰাকী ছিংগাপুৰৰ পৰা অহাৰ পিছতে ঘৰতেই আছুতীয়াকৈ থকাৰ ফটো শ্বেয়াৰ কৰিছিল অভিনেত্ৰী কাজলে।\" src=\"https://static.assam.news18.com/optimize/JTHBbmgKI1VgyFFaXUF1LeUYmls=/0x0/static.assam.news18.com/assam/uploads/2020/04/kajol.jpg\" title=\" দুয়োগৰাকী ছিংগাপুৰৰ পৰা অহাৰ পিছতে ঘৰতেই আছুতীয়াকৈ থকাৰ ফটো শ্বেয়াৰ কৰিছিল অভিনেত্ৰী কাজলে।\" /><img alt=\" দুয়োগৰাকী ছিংগাপুৰৰ পৰা অহাৰ পিছতে ঘৰতেই আছুতীয়াকৈ থকাৰ ফটো শ্বেয়াৰ কৰিছিল অভিনেত্ৰী কাজলে।\" src=\"https://static.assam.news18.com/optimize/JTHBbmgKI1VgyFFaXUF1LeUYmls=/0x0/static.assam.news18.com/assam/uploads/2020/04/kajol.jpg\" title=\" দুয়োগৰাকী ছিংগাপুৰৰ পৰা অহাৰ পিছতে ঘৰতেই আছুতীয়াকৈ থকাৰ ফটো শ্বেয়াৰ কৰিছিল অভিনেত্ৰী কাজলে।\" /></p>\r\n\r\n<p>দুয়োগৰাকী ছিংগাপুৰৰ পৰা অহাৰ পিছতে ঘৰতেই আছুতীয়াকৈ থকাৰ ফটো শ্বেয়াৰ কৰিছিল অভিনেত্ৰী কাজলে।</p>', '0c7a287b48d88f42f2da7c98a7d84cb0.jpg', '6', '2', 'Staff Reporter', '1', NULL, '1', 'ছিংগাপুৰৰ-পৰা-উভতি-আহি-ক’ৰোণাত-আক্ৰান্ত-হ’ল-নেকি-কাজল-আৰু-জীয়ৰী-ন্যাসা?-অজয়-দেৱগনৰ-আবেগিক-মন্তব্য-ক’ৰোণা-ভাইৰাছত-আক্ৰান্ত-হ’ল-নেকি-বলীউদৰ-জনপ্ৰিয়-অভিনেত্ৰী-কাজল?-আনকি-জীয়ৰীৰ-দেহতো-ধৰা-পৰিছে-নেকি-ক’ৰোণাৰ-অৱস্থিতি?', '2020-04-02 13:42:27', '2020-04-03 20:17:39'),
(48, 'প্ৰধানমন্ত্ৰী মোডীয়ে শুকুৰবাৰে পুৱা ৯ বজাত দেশবাসীক সম্বোধন কৰিব', '<p><s><strong>শুকুৰবাৰে পুৱা ৯ বজাত দেশৰ প্ৰধানমন্ত্ৰী নৰেন্দ্ৰ মোডীয়ে পুনৰ দেশবাসীক সম্বোধন কৰিব। প্ৰধানমন্ত্ৰীজনে নিজেই এই কথা টুইটাৰ যোগে সদৰি কৰিছে। এই সন্দৰ্ভত প্ৰধান মন্ত্ৰী গৰাকীয়ে কয়ে&nbsp; যে মই দেশবাসীৰ সৈতে ভিডিঅ&rsquo; বাৰ্তা বিনিময় কৰিম।</strong></s></p>', '3935c28d14ec84afe3f6871abfa56230.jpg', '8', '2', 'News Desk', '1', NULL, NULL, 'প্ৰধানমন্ত্ৰী-মোডীয়ে-শুকুৰবাৰে-পুৱা-৯-বজাত-দেশবাসীক-সম্বোধন-কৰিব', '2020-04-02 14:43:05', NULL),
(49, 'তবলিগী জামাতত অংশ লৈ কেইজন লোক অসমলৈ ঘূৰি আহিল? কি ক’লে মন্ত্ৰী হিমন্ত বিশ্ব শৰ্মাই?', '<p>নিজামুদ্দিনৰ তবলিকী জামাতত অসমৰ ৪৫৭জন লোকে অংশগ্ৰহণ কৰিছিল তাৰে ২৭৬গৰাকী লোকক ১০৪ সেৱাৰ জৰিয়তে আমি পাবলৈ সক্ষম হৈছে। ইয়াৰ লগতে কিছু সংখ্যকলোকে নিজে নিজে আহি আৰক্ষী বা স্বাস্থ্য বিভাগৰ হাতত ধৰা দিয়ে। সংবাদমেলত এই মন্তব্য স্বাস্থ্য মন্ত্ৰী হিমন্ত বিশ্ব শৰ্মাৰ।</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; নিজামুদ্দিনৰ ঘটনাৰ লগত ভাৰত চৰকাৰে দিয়া তথ্য আৰু আমি উলিওয়া তথ্যৰ ভিত্তিত নজৰত আছিল&nbsp;৭৩২জন লোক। নিজামুদ্দিনৰ ঘটনাৰ লগত অসমৰ ৪৭২জন লোক জড়িত আছে বুলি প্ৰাৰম্ভিক পৰ্যায়ত জানিব পাৰিছোঃ হিমন্ত বিশ্ব শৰ্মা</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;প্ৰথম পৰ্যায়ৰ অনুসন্ধানত আমি ৫০৩গৰাকী লোকৰ ভিতৰত সকলোৰে প্ৰচেষ্টাত ৪৮৮গৰাকী লোকৰ পৰিচয় উদ্ধাৰ কৰিবলৈ সক্ষম হৈছো আৰু ১৫গৰাকীক লোকক বিচাৰি পালেই প্ৰথম পৰ্যায়ত বিচাৰিবলগীয়া সকলো লোকৰ তথ্য সম্পূৰ্ণ হ&rsquo;ব বুলিও সংবাদমেলত সদৰী কৰে মন্ত্ৰী ড০ শৰ্মাই।</p>', 'f3c7de784569f7f4813eb5cbbb671f66.jpg', '6', '2', 'Saddam Hussain', '1', NULL, '1', 'তবলিগী-জামাতত-অংশ-লৈ-কেইজন-লোক-অসমলৈ-ঘূৰি-আহিল?-কি-ক’লে-মন্ত্ৰী-হিমন্ত-বিশ্ব-শৰ্মাই?', '2020-04-02 15:26:21', '2020-04-03 20:17:42'),
(50, 'GMCH ত বহাগ বিহুৰ পূৰ্বে ICU বেডৰ সংখ্যা বৃদ্ধি হৈ ২০০ খন হ’বঃ স্বাস্থ্যমন্ত্ৰী', '<p><strong>নিয়মীয়া বাৰ্তা, ২ এপ্ৰিলঃ&nbsp;</strong>ৰাজ্যত ক&rsquo;ৰোনাত আক্ৰান্তৰ সংখ্যা ১৬ গৰাকীলৈ বৃদ্ধি পোৱাৰ পাছতে আজি বিয়লি গুৱাহাটী চিকিৎসা মহাবিদ্যালয় হাস্পতাল প্ৰেক্ষাগৃহত এক সংবাদমেল সম্বোধন কৰে ৰাজ্যৰ স্বাস্থ্যমন্ত্ৰী ডঃ হিমন্ত বিশ্ব শৰ্মাই ।</p>\r\n\r\n<p>এই সংবাদমেলত স্বাস্থ্যমন্ত্ৰী ডঃ শৰ্মাই কয় যে-&nbsp;<em>অসমত এই ক&rsquo;ভিড-১৯ ত আক্ৰান্ত হোৱাৰ ঘটনাৰ পূৰ্বেই গুৱাহাটী চিকিৎসা মহাবিদ্যালয় হাস্পতালত প্ৰায় ৬০ খন আই চি ইউ বেড আছিল । কিন্তু যোৱা সপ্তাহত গুৱাহাটী চিকিৎসা মহাবিদ্যালয় কৰ্তৃপক্ষই পুনৰ ৩৩ খন আই চি ইউ বেড সংযোজন ঘটাবলৈ সক্ষম হয় । ইফালে গুৱাহাটী চিকিৎসা মহাবিদ্যালয় হাস্পতালত আই চি ইউৰ কাৰণে সদায়ে যি হেচা-থেলা আছিল, সেই সমস্যা দূৰ কৰি আজিৰ তাৰিখত ইয়াৰ সংখ্যা ১৬২ খনলৈ বৃদ্ধি পালে । যাৰ বাবে ৰাজ্যত ক&rsquo;ভিড-১৯ ৰ সংকটৰ সমান্তৰালকৈ দিনে নিশাই কাম কৰি আই চি ইউৰ সংখ্যা ১৬২ খনলৈ বৃদ্ধি কৰা হ&rsquo;ল । অৰ্থাৎ দীঘলীয়া সময়ৰ বাবে গুৱাহাটী চিকিৎসা মহাবিদ্যালয়ত আই চি ইউ বেডৰ সংখ্যা বৃদ্ধি ঘটিল বুলি স্বাস্থ্যমন্ত্ৰীগৰাকীয়ে মন্তব্য কৰে।</em></p>\r\n\r\n<p>ইফালে বহাগ বিহুৰ পূৰ্বেই গুৱাহাটী চিকিৎসা মহাবিদ্যালয়ত আই চি ইউ আৰু ভেণ্টিলেশ্যনৰ সংখ্যা ২০০ পাৰ হ&rsquo;ব বুলি মন্তব্য কৰে স্বাস্থ্যমন্ত্ৰী ডঃ হিমন্ত বিশ্ব শৰ্মাই ।</p>', '4d254eadade665571341675d381f338f.jpeg', '6', '2', 'Staff Reporter', '1', NULL, NULL, 'GMCH-ত-বহাগ-বিহুৰ-পূৰ্বে-ICU-বেডৰ-সংখ্যা-বৃদ্ধি-হৈ-২০০-খন-হ’বঃ-স্বাস্থ্যমন্ত্ৰী', '2020-04-02 15:27:23', '2020-04-02 15:38:05'),
(51, 'Libero veniam et velit aperiam enim.', '<p>Voluptatem aperiam reprehenderit sed totam. Explicabo soluta vel ut. Quia placeat repellendus error officiis.</p>', '6a6f3190a894b450a92b96658d5aeb10.jpg', '8', '1', 'News247', '1', '3', NULL, 'libero-veniam-et-velit-aperiam-enim', '2020-04-02 13:33:24', '2020-04-02 19:31:46'),
(52, 'Aspernatur nesciunt et voluptates quam.', '<p>Quod necessitatibus reprehenderit repudiandae eaque quis. Similique officia molestiae perspiciatis ut. At architecto explicabo debitis porro sunt. Quaerat aliquam velit dolor qui eos sit labore.</p>', '6a6f3190a894b450a92b96658d5aeb10.jpg', '8', '1', 'News247', '1', '3', NULL, 'aspernatur-nesciunt-et-voluptates-quam', '2020-04-02 13:33:24', '2020-04-02 19:31:58'),
(53, 'Maxime dolor qui ab odio animi porro qui.', '<p>Incidunt assumenda quis labore fugiat voluptatem earum aut tempora. Consequatur cum voluptatem voluptas voluptas voluptas. Sit maiores minima aut repudiandae rerum.</p>', '6a6f3190a894b450a92b96658d5aeb10.jpg', '8', '1', 'News247', '1', '3', NULL, 'maxime-dolor-qui-ab-odio-animi-porro-qui', '2020-04-02 13:33:24', '2020-04-02 19:32:12'),
(54, 'Molestias nam reprehenderit rem sit doloribus.', '<p>Magni ab nihil corporis debitis vitae quia itaque. Adipisci inventore qui nihil consequuntur. Earum ducimus consequatur est dolorem aliquam voluptatem.</p>', '6a6f3190a894b450a92b96658d5aeb10.jpg', '8', '1', 'News247', '1', '3', NULL, 'molestias-nam-reprehenderit-rem-sit-doloribus', '2020-04-02 13:33:24', '2020-04-02 19:32:22'),
(55, 'Est officia quisquam ducimus et.', '<p>Vel deleniti voluptas delectus et. Nihil ullam officia neque sed. Mollitia harum ut consequatur id porro magni. Excepturi earum et dolor odit qui excepturi quis.</p>', '6a6f3190a894b450a92b96658d5aeb10.jpg', '8', '1', 'News247', '1', '3', NULL, 'est-officia-quisquam-ducimus-et', '2020-04-02 13:33:24', '2020-04-02 19:32:32'),
(56, 'Qui qui occaecati voluptas deleniti nostrum.', '<p>Quidem repellat id ullam itaque omnis blanditiis rem. Nihil porro tempora dolore eius cupiditate. Error quas esse aperiam qui totam. Laboriosam hic est voluptate quod.</p>', '6a6f3190a894b450a92b96658d5aeb10.jpg', '8', '1', 'News247', '1', '3', NULL, 'qui-qui-occaecati-voluptas-deleniti-nostrum', '2020-04-02 13:33:24', '2020-04-02 19:32:41'),
(57, 'In voluptas sint deserunt incidunt est ea.', '<p>Illo et cumque et cumque et officia. Vitae a dignissimos vero et temporibus veritatis vel. Perferendis numquam quod consequuntur in vel rerum. Rerum perspiciatis et corporis enim.</p>', '6a6f3190a894b450a92b96658d5aeb10.jpg', '8', '1', 'News247', '1', '3', NULL, 'in-voluptas-sint-deserunt-incidunt-est-ea', '2020-04-02 13:33:24', '2020-04-02 19:32:51'),
(58, 'Atque voluptatem numquam aut et minima.', '<p>Dignissimos animi soluta repudiandae quia cupiditate odit. Et qui ut soluta voluptatem quia repudiandae. Ut non voluptates in vel ut sunt quo. Nam qui unde aut et aut commodi sint sed.</p>', '6a6f3190a894b450a92b96658d5aeb10.jpg', '12', '1', 'News247', '1', '3', NULL, 'atque-voluptatem-numquam-aut-et-minima', '2020-04-02 13:33:24', '2020-04-02 19:32:59'),
(59, 'Quidem placeat illo iste dolorem.', '<p>Ullam impedit quo accusamus doloribus recusandae voluptatum. Tempore et illo ullam quasi. Suscipit deserunt veritatis qui ratione.</p>', '6a6f3190a894b450a92b96658d5aeb10.jpg', '8', '1', 'News247', '1', '3', NULL, 'quidem-placeat-illo-iste-dolorem', '2020-04-02 13:33:24', '2020-04-02 19:33:10'),
(60, 'Rem explicabo ea blanditiis adipisci.', '<p>Voluptatem est et ipsa. Voluptas consequuntur dolor sunt. Ipsum dolor iste sunt est.</p>', '6a6f3190a894b450a92b96658d5aeb10.jpg', '12', '1', 'News247', '1', '3', NULL, 'rem-explicabo-ea-blanditiis-adipisci', '2020-04-02 13:33:24', '2020-04-02 19:33:19'),
(61, 'Amet ut delectus odio expedita.', '<p>Sequi quam eum voluptatum deserunt natus tempora velit. Ex neque natus sunt aut. Labore ducimus aut aut qui.</p>', '6a6f3190a894b450a92b96658d5aeb10.jpg', '12', '1', 'News247', '1', '3', NULL, 'amet-ut-delectus-odio-expedita', '2020-04-02 13:33:25', '2020-04-02 19:33:29'),
(62, 'Voluptate nostrum soluta dolor nihil voluptatem.', '<p>Distinctio neque cum dicta exercitationem modi. Quia praesentium animi vel soluta.</p>', '6a6f3190a894b450a92b96658d5aeb10.jpg', '12', '1', 'News247', '1', '3', NULL, 'voluptate-nostrum-soluta-dolor-nihil-voluptatem', '2020-04-02 13:33:25', '2020-04-02 19:33:38'),
(63, 'Maiores eum aliquam et rerum qui molestias.', '<p>Beatae beatae explicabo sint. Iure quia est modi vero dicta. Eos voluptas et numquam porro. Eaque ipsa sit voluptatem non.</p>', '6a6f3190a894b450a92b96658d5aeb10.jpg', '8', '1', 'News247', '1', '3', NULL, 'maiores-eum-aliquam-et-rerum-qui-molestias', '2020-04-02 13:33:25', '2020-04-02 19:33:54'),
(64, 'Distinctio sed excepturi id.', '<p>Ex eveniet quidem ut iste in quidem. Voluptatem expedita expedita alias beatae quis numquam voluptatem. Consequuntur exercitationem dignissimos vitae ut.</p>', '6a6f3190a894b450a92b96658d5aeb10.jpg', '8', '1', 'News247', '1', '3', NULL, 'distinctio-sed-excepturi-id', '2020-04-02 13:33:25', '2020-04-02 19:34:02'),
(65, 'Autem nihil ea nulla. Labore itaque in qui.', '<p>Eveniet voluptatem aliquid rerum officiis rerum. Neque quas eum cum quos. Et nisi expedita nemo voluptatum.</p>', '6a6f3190a894b450a92b96658d5aeb10.jpg', '8', '1', 'News247', '1', '3', NULL, 'autem-nihil-ea-nulla-labore-itaque-in-qui', '2020-04-02 13:33:25', '2020-04-02 19:34:10'),
(66, 'Corporis sed ducimus aut.', '<p>Quidem quasi quia fugiat tenetur vitae aspernatur nulla. Non eum autem quia sequi libero blanditiis voluptas. Omnis corporis velit placeat vero.</p>', '6a6f3190a894b450a92b96658d5aeb10.jpg', '8', '1', 'News247', '1', '3', NULL, 'corporis-sed-ducimus-aut', '2020-04-02 13:33:25', '2020-04-02 19:34:18'),
(67, 'Ut placeat quo natus laudantium dolorem corporis.', '<p>Repudiandae dolor a aut enim illo magnam aut. Dicta provident possimus perferendis voluptatibus consequatur. Sed et illum mollitia numquam quisquam.</p>', '6a6f3190a894b450a92b96658d5aeb10.jpg', '13', '1', 'News247', '1', '3', NULL, 'ut-placeat-quo-natus-laudantium-dolorem-corporis', '2020-04-02 13:33:25', '2020-04-02 19:34:26'),
(68, 'Rerum soluta doloribus dolore ut culpa.', '<p>Praesentium saepe voluptate earum. Et repudiandae molestiae aut saepe sint totam. Est minima natus velit dolor provident.</p>', '6a6f3190a894b450a92b96658d5aeb10.jpg', '13', '1', 'News247', '1', '3', NULL, 'rerum-soluta-doloribus-dolore-ut-culpa', '2020-04-02 13:33:25', '2020-04-02 19:34:35'),
(69, 'Ea quis aut est eum aut praesentium facere aut.', '<p>Non temporibus quod ut est repellat nostrum dolore. Aut commodi deleniti numquam odit eligendi voluptas est.</p>', '6a6f3190a894b450a92b96658d5aeb10.jpg', '13', '1', 'News247', '1', '3', NULL, 'ea-quis-aut-est-eum-aut-praesentium-facere-aut', '2020-04-02 13:33:25', '2020-04-02 19:34:46'),
(70, 'Voluptatem et repellat ducimus eos.', '<p>Tempore rerum nemo eos doloremque nihil eius. Eligendi aliquam repellat voluptatem dolorem animi sit non. Voluptatem ratione ex quos quae qui.</p>', '6a6f3190a894b450a92b96658d5aeb10.jpg', '9', '1', 'News247', '1', '3', NULL, 'voluptatem-et-repellat-ducimus-eos', '2020-04-02 13:33:25', '2020-04-02 19:35:01'),
(71, 'Est maxime ea qui sunt placeat.', '<p>Vero aut sint maxime eveniet beatae eum molestiae. Et et aperiam magnam sunt quis qui dolor. Dicta sed ratione in molestiae consequatur perspiciatis aut.</p>', '6a6f3190a894b450a92b96658d5aeb10.jpg', '9', '1', 'News247', '1', '3', NULL, 'est-maxime-ea-qui-sunt-placeat', '2020-04-02 13:33:25', '2020-04-02 19:35:08'),
(72, 'Placeat quisquam et quo dolorum expedita nostrum.', '<p>Minus omnis odit ut. Dignissimos rerum explicabo quo saepe sed consequatur. Animi rerum voluptatum quis quia est et ut atque.</p>', '6a6f3190a894b450a92b96658d5aeb10.jpg', '8', '1', 'News247', '1', '3', NULL, 'placeat-quisquam-et-quo-dolorum-expedita-nostrum', '2020-04-02 13:33:25', '2020-04-02 19:35:18'),
(73, 'Voluptas dolor incidunt ea sit nulla quia.', '<p>Maxime neque culpa ab quia in quia quae. Temporibus iste nihil omnis consequatur molestias et aperiam. Qui praesentium deleniti blanditiis earum et enim et.</p>', '6a6f3190a894b450a92b96658d5aeb10.jpg', '9', '1', 'News247', '1', '3', NULL, 'voluptas-dolor-incidunt-ea-sit-nulla-quia', '2020-04-02 13:33:25', '2020-04-02 19:35:30'),
(74, 'Asperiores rem ut quia qui.', '<p>Ipsum enim corporis ut et enim quo tempore. Dolorum aliquid quos dolorem in. Ducimus repellendus pariatur omnis deserunt voluptatem.</p>', '6a6f3190a894b450a92b96658d5aeb10.jpg', '10', '1', 'News247', '1', '3', NULL, 'asperiores-rem-ut-quia-qui', '2020-04-02 13:33:25', '2020-04-02 19:36:09'),
(75, 'Quaerat quisquam consequatur quibusdam quia.', '<p>Aliquid et veritatis nostrum quia nesciunt doloribus quaerat eos. Ipsam officiis nobis voluptate. Deleniti dolor enim accusamus ad quis.</p>', '6a6f3190a894b450a92b96658d5aeb10.jpg', '10', '1', 'News247', '1', '3', NULL, 'quaerat-quisquam-consequatur-quibusdam-quia', '2020-04-02 13:33:25', '2020-04-02 19:36:16'),
(76, 'Eius consequatur sit fuga.', '<p>Iusto ab nulla aut voluptas. Cupiditate molestiae id incidunt enim quia eveniet. Voluptas quod quos debitis nesciunt sit. Nobis voluptatem cumque consectetur delectus eius dolores alias.</p>', '6a6f3190a894b450a92b96658d5aeb10.jpg', '10', '1', 'News247', '1', '3', NULL, 'eius-consequatur-sit-fuga', '2020-04-02 13:33:25', '2020-04-02 19:36:24'),
(77, 'Culpa eveniet dignissimos ab esse.', '<p>Rem id suscipit quae ipsum. Nam qui deleniti adipisci incidunt ut atque. Itaque dolor consectetur quia sint.</p>', '6a6f3190a894b450a92b96658d5aeb10.jpg', '10', '1', 'News247', '1', '3', NULL, 'culpa-eveniet-dignissimos-ab-esse', '2020-04-02 13:33:25', '2020-04-02 19:36:33'),
(78, 'Consectetur in aut eligendi laboriosam ducimus.', '<p>Quaerat ut deserunt ut quas enim velit perspiciatis. Sit nostrum fugit sunt corrupti autem numquam. Omnis magnam odit eveniet qui dolorum repellat praesentium.</p>', '6a6f3190a894b450a92b96658d5aeb10.jpg', '9', '1', 'News247', '1', '3', NULL, 'consectetur-in-aut-eligendi-laboriosam-ducimus', '2020-04-02 13:33:25', '2020-04-02 19:36:41'),
(79, 'Odio omnis voluptas ut alias excepturi.', '<p>Dolorem qui quo velit harum consequatur beatae corporis. Quibusdam sit quo at et sint doloribus voluptatum. Voluptas velit aut et. Et ducimus repellat commodi repellat.</p>', '6a6f3190a894b450a92b96658d5aeb10.jpg', '9', '1', 'News247', '1', '3', NULL, 'odio-omnis-voluptas-ut-alias-excepturi', '2020-04-02 13:33:25', '2020-04-02 19:36:49'),
(80, 'Perspiciatis numquam expedita deserunt modi.', '<p>Et aliquid corrupti consequatur amet labore illum magnam natus. Quae dolor quidem beatae. Iusto vel perspiciatis omnis iure eum omnis eaque. Est est nulla libero asperiores tenetur.</p>', '6a6f3190a894b450a92b96658d5aeb10.jpg', '9', '1', 'News247', '1', '3', NULL, 'perspiciatis-numquam-expedita-deserunt-modi', '2020-04-02 13:33:25', '2020-04-02 19:36:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_email_unique` (`email`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

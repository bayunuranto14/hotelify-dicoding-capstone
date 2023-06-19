-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 19, 2023 at 05:05 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotelify`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `picture`, `token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$gSjpumP/uMcQ1EW6WZMj.OdhUVoKQQavEajXsXaSvUNL5RRQ8Oj3.', 'admin.png', '', NULL, '2023-06-19 07:56:37');

-- --------------------------------------------------------

--
-- Table structure for table `booked_rooms`
--

CREATE TABLE `booked_rooms` (
  `id` bigint UNSIGNED NOT NULL,
  `booking_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_no` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booked_rooms`
--

INSERT INTO `booked_rooms` (`id`, `booking_date`, `order_no`, `room_id`, `created_at`, `updated_at`) VALUES
(1, '15/01/2023', '1673534696', 2, NULL, NULL),
(2, '16/01/2023', '1673534696', 2, NULL, NULL),
(3, '19/01/2023', '1673534696', 3, NULL, NULL),
(4, '25/01/2023', '1673534798', 4, NULL, NULL),
(5, '26/01/2023', '1673534798', 4, NULL, NULL),
(6, '27/01/2023', '1673534798', 4, NULL, NULL),
(7, '22/02/2023', '1673535761', 2, '2023-01-12 08:02:41', '2023-01-12 08:02:41'),
(8, '23/02/2023', '1673535761', 2, '2023-01-12 08:02:41', '2023-01-12 08:02:41'),
(9, '24/02/2023', '1673535761', 2, '2023-01-12 08:02:41', '2023-01-12 08:02:41'),
(10, '25/01/2023', '1673535761', 4, '2023-01-12 08:02:41', '2023-01-12 08:02:41'),
(11, '26/01/2023', '1673535761', 4, '2023-01-12 08:02:41', '2023-01-12 08:02:41'),
(12, '27/01/2023', '1673535761', 4, '2023-01-12 08:02:41', '2023-01-12 08:02:41'),
(13, '28/01/2023', '1673535761', 4, '2023-01-12 08:02:41', '2023-01-12 08:02:41'),
(14, '29/01/2023', '1673535761', 4, '2023-01-12 08:02:41', '2023-01-12 08:02:41'),
(15, '30/01/2023', '1673535761', 4, '2023-01-12 08:02:41', '2023-01-12 08:02:41'),
(16, '29/01/2023', '1673538788', 4, '2023-01-12 08:53:09', '2023-01-12 08:53:09');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `country` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `state` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `city` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `zip` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `password`, `phone`, `country`, `address`, `state`, `city`, `zip`, `photo`, `token`, `status`, `created_at`, `updated_at`) VALUES
(3, 'AMAD', '12211250@bsi.ac.id', '$2y$10$/l2L54efkOYqtmF.lDq9dOpYeNS7l8.kO3H93bOu4LjuONmbKCFIi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '67b23b845f9c9e91f3d54fdedb0a63916a58fd7c7f7b4507fcd6cc1063efd507', 1, '2023-06-19 02:45:50', '2023-06-19 02:47:18'),
(4, 'abcd', 'abcd@gmail.com', '$2y$10$7f4b3bwogqBpTnBz85C/Qu8pbfSSOYBMSdyfg3QLdrxePEgqWcVtO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'c1ab542dca1a369e0bcb8760affca61703bcd7d8077cb496a0eecc295f9ac87e', 1, '2023-06-19 02:50:58', '2023-06-19 02:54:13');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` bigint UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Free Wifi', '2023-01-09 09:33:00', '2023-01-09 09:36:14'),
(3, 'Air Conditioner', '2023-01-09 09:33:09', '2023-01-09 09:36:29'),
(4, 'Free Breakfast', '2023-01-09 09:36:43', '2023-01-09 09:36:43'),
(5, 'Personal Care', '2023-01-09 09:36:58', '2023-01-09 09:36:58'),
(6, 'Gym', '2023-01-09 09:37:02', '2023-01-09 09:37:02'),
(7, 'Swimming Pool', '2023-01-09 09:37:09', '2023-01-09 09:37:09'),
(8, 'Parking', '2023-01-09 09:37:15', '2023-01-09 09:37:15'),
(9, 'Coffee Maker', '2023-01-09 09:37:24', '2023-01-09 09:37:24');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'What is Lorem Ipsum?', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', '2023-01-08 07:34:11', '2023-01-08 07:34:11'),
(2, 'Where does it come from?', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '2023-01-08 07:34:28', '2023-01-08 07:34:28'),
(3, 'Why do we use it?', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). ,,,,</span><br></p>', '2023-01-08 07:34:46', '2023-01-08 07:36:55'),
(4, 'Where can I get some?', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span><br></p>', '2023-01-08 07:35:00', '2023-01-08 07:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint UNSIGNED NOT NULL,
  `icon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `heading` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `icon`, `heading`, `text`, `created_at`, `updated_at`) VALUES
(1, 'fa fa-clock-o', '24 hour Room service', 'If you find a lower online rate, we will match it and give you an additional 25% off on your stay.', '2023-01-07 10:52:56', '2023-01-07 10:53:08'),
(2, 'fa fa-wifi', 'Free Wifi', 'If you find a lower online rate, we will match it and give you an additional 25% off on your stay.', '2023-01-07 10:53:47', '2023-01-07 10:53:47'),
(3, 'far fa-handshake', 'Enjoy Free Nights', 'If you find a lower online rate, we will match it and give you an additional 25% off on your stay.', '2023-01-07 10:54:14', '2023-01-08 09:06:30'),
(4, 'fa fa-money', 'Save up to 40%', 'Members get access to an exclusive discounts on Radissonblu.com. Not a member yet? Hurry Up!', '2023-01-07 10:54:39', '2023-01-07 10:54:39'),
(5, 'fa fa-coffee', 'Complimentary Breakfast', 'If you find a lower online rate, we will match it and give you an additional 25% off on your stay.', '2023-01-07 10:55:29', '2023-01-07 10:55:29'),
(6, 'fas fa-swimmer', 'Swimming Pool', 'If you find a lower online rate, we will match it and give you an additional 25% off on your stay.', '2023-01-07 10:56:17', '2023-01-08 09:09:37'),
(7, 'fas fa-dumbbell', 'Gym and Fitness', 'If you find a lower online rate, we will match it and give you an additional 25% off on your stay.', '2023-01-07 10:56:42', '2023-01-08 09:12:00'),
(9, 'fas fa-utensils', 'Top Class Restaurant', NULL, '2023-01-07 11:01:06', '2023-01-08 09:00:18');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_06_143511_create_admins_table', 1),
(6, '2023_01_07_123611_create_slides_table', 2),
(7, '2023_01_08_021258_create_features_table', 3),
(8, '2023_01_08_033305_create_testimonials_table', 4),
(9, '2023_01_08_032744_create_posts_table', 5),
(10, '2023_01_08_085841_create_galleries_table', 6),
(11, '2023_01_08_111414_create_videos_table', 7),
(12, '2023_01_08_141521_create_faqs_table', 8),
(13, '2023_01_08_153102_create_pages_table', 9),
(14, '2023_01_09_145323_create_subscribers_table', 10),
(15, '2023_01_09_160420_create_facilities_table', 11),
(16, '2023_01_09_163859_create_rooms_table', 12),
(18, '2023_01_09_164849_create_room_images_table', 13),
(19, '2023_01_10_044020_create_customers_table', 14),
(22, '2023_01_11_180204_create_orders_table', 15),
(23, '2023_01_11_180707_create_order_details_table', 15),
(24, '2023_01_12_142616_create_booked_rooms_table', 16),
(25, '2023_01_12_162536_create_settings_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` int NOT NULL,
  `order_no` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_last_digit` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `paid_amount` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `booking_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_no`, `transaction_id`, `payment_method`, `card_last_digit`, `paid_amount`, `booking_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '1673534696', 'PAYID-MPABZPI0LX72167N6320005V', 'WhatsApp', NULL, '12.00', '19/06/2023', 'Completed', '2023-01-12 07:44:56', '2023-01-09 07:44:56'),
(2, 2, '1673534798', 'PAYID-MPAB2QA79C823046N220011F', 'WhatsApp', NULL, '12.00', '18/06/2023', 'Completed', '2023-01-12 07:46:38', '2023-01-07 17:00:00'),
(3, 1, '1673535703', 'PAYID-MPACBPA2HW368750M030951V', 'WhatsApp', NULL, '39.00', '18/05/2023', 'Completed', '2023-01-12 08:01:43', '2023-01-12 08:01:43'),
(4, 1, '1673535761', 'PAYID-MPACBPA2HW368750M030951V', 'WhatsApp', NULL, '39.00', '17/05/2023', 'Completed', '2023-01-12 08:02:41', '2023-01-12 08:02:41');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` int NOT NULL,
  `room_id` int NOT NULL,
  `order_no` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkin_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `adult` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `children` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtotal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `room_id`, `order_no`, `checkin_date`, `checkout_date`, `adult`, `children`, `subtotal`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '1673534696', '15/01/2023', '17/01/2023', '2', '1', '10', '2023-01-12 07:44:57', '2023-01-12 07:44:57'),
(2, 1, 3, '1673534696', '19/01/2023', '20/01/2023', '2', '1', '2', '2023-01-12 07:44:57', '2023-01-12 07:44:57'),
(3, 2, 4, '1673534798', '25/01/2023', '28/01/2023', '2', '1', '12', '2023-01-12 07:46:38', '2023-01-12 07:46:38'),
(4, 3, 2, '1673535703', '22/02/2023', '25/02/2023', '2', '1', '15', '2023-01-12 08:01:43', '2023-01-12 08:01:43'),
(5, 4, 2, '1673535761', '22/02/2023', '25/02/2023', '2', '1', '15', '2023-01-12 08:02:41', '2023-01-12 08:02:41'),
(6, 4, 4, '1673535761', '25/01/2023', '31/01/2023', '2', '1', '24', '2023-01-12 08:02:41', '2023-01-12 08:02:41');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `about_heading` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_status` int NOT NULL,
  `terms_heading` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `terms_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `terms_status` int NOT NULL,
  `privacy_heading` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy_status` int NOT NULL,
  `contact_heading` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_map` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_status` int NOT NULL,
  `image_gallery_heading` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_gallery_status` int NOT NULL,
  `video_gallery_heading` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_gallery_status` int NOT NULL,
  `faq_heading` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_status` int NOT NULL,
  `blog_heading` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_status` int NOT NULL,
  `room_heading` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart_heading` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart_status` int NOT NULL,
  `checkout_heading` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout_status` int NOT NULL,
  `payment_heading` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `signup_heading` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `signup_status` int NOT NULL,
  `signin_heading` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `signin_status` int NOT NULL,
  `forget_password_heading` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reset_password_heading` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `about_heading`, `about_content`, `about_status`, `terms_heading`, `terms_content`, `terms_status`, `privacy_heading`, `privacy_content`, `privacy_status`, `contact_heading`, `contact_map`, `contact_status`, `image_gallery_heading`, `image_gallery_status`, `video_gallery_heading`, `video_gallery_status`, `faq_heading`, `faq_status`, `blog_heading`, `blog_status`, `room_heading`, `cart_heading`, `cart_status`, `checkout_heading`, `checkout_status`, `payment_heading`, `signup_heading`, `signup_status`, `signin_heading`, `signin_status`, `forget_password_heading`, `reset_password_heading`, `created_at`, `updated_at`) VALUES
(1, 'About Us', '<p dir=\"ltr\" style=\"text-align: justify; line-height: 1.2; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: &quot;Darker Grotesque&quot;, sans-serif; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap; background-color: rgb(255, 255, 255); font-weight: bold;\">Di era modern, platform pemesanan hotel online semakin populer, namun masih ada beberapa tantangan dan masalah yang dihadapi pengguna dalam proses reservasi. Tantangan ini mungkin termasuk kurangnya rekomendasi yang dipersonalisasi, informasi yang tidak memadai tentang ketersediaan kamar, dan kesulitan dalam mengelola modifikasi atau pembatalan. Akibatnya, ada kebutuhan untuk aplikasi pemesanan kamar hotel yang lebih baik yang mengatasi masalah ini dan meningkatkan pengalaman pengguna secara keseluruhan.</span></p><p style=\"text-align: justify; font-family: Karla, sans-serif; font-size: 16px;\"><b style=\"background-color: rgb(255, 255, 255);\" id=\"docs-internal-guid-f1fcb9dd-7fff-0a77-53ad-74ab0092dab9\"><br></b></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.2; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: &quot;Darker Grotesque&quot;, sans-serif; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap; background-color: rgb(255, 255, 255); font-weight: bold;\">Web Hotelify adalah platform online yang memungkinkan pengguna untuk mencari dan memesan kamar hotel secara online. Pengguna dapat memasukkan kriteria pencarian seperti lokasi, tanggal check-in dan check-out, serta jumlah tamu untuk menemukan hotel yang sesuai dengan preferensi mereka. Web ini juga menampilkan informasi detail tentang hotel seperti fasilitas, harga, dan ulasan dari pelanggan sebelumnya. Setelah memilih hotel yang diinginkan, pengguna dapat memesan kamar secara online dengan cara memasukkan informasi pribadi dan pembayaran. Web pemesanan tiket hotel memudahkan pengguna dalam mencari dan memesan kamar hotel secara online dengan mudah dan cepat. Web kami juga memiliki keunggulan pada bidang interface yang menarik dan fitur pencarian yang terperinci, memudahkan pengguna untuk memfilter hasil pencarian.</span></p><p style=\"text-align: justify; font-family: Karla, sans-serif; font-size: 16px;\"><b style=\"background-color: rgb(255, 255, 255);\"><br></b></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.2; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: &quot;Darker Grotesque&quot;, sans-serif; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap; background-color: rgb(255, 255, 255); font-weight: bold;\">Dalam era digital saat ini, web pemesanan tiket hotel menjadi salah satu alternatif terbaik bagi para traveler untuk memesan kamar hotel dengan mudah dan cepat tanpa harus datang langsung ke hotel. Dengan banyaknya pilihan hotel dan opsi pembayaran yang disediakan oleh web pemesanan tiket hotel, pengguna dapat memilih kamar hotel yang sesuai dengan kebutuhan mereka dengan mudah dan nyaman.</span></p><p style=\"text-align: justify; color: rgb(33, 37, 41); font-family: Karla, sans-serif; font-size: 16px;\"><br></p>', 1, 'Terms and Conditions', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sit amet imperdiet velit. Donec fringilla ipsum at odio tincidunt, sed eleifend est ultricies. Mauris aliquam id nunc vitae egestas. Phasellus fringilla, orci eu venenatis gravida, enim lorem suscipit tortor, et placerat erat sem ac ex. Pellentesque magna libero, condimentum eget diam vitae, scelerisque varius orci. Vestibulum tempor vulputate diam, eget aliquam mauris hendrerit et. Ut et libero auctor, accumsan turpis vel, laoreet odio.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Mauris imperdiet nulla nulla, non pharetra justo placerat ut. Mauris lorem urna, egestas quis gravida id, pretium sed dolor. Etiam molestie magna auctor lacus pulvinar lobortis. Maecenas feugiat mattis velit at porta. Morbi tincidunt, velit id porta ultrices, nisi odio lobortis lacus, sit amet aliquet purus enim sit amet ipsum. Nulla sit amet mauris eget leo condimentum semper nec at ipsum. Phasellus nec dictum risus. Mauris id finibus quam. Vestibulum porta nulla sit amet tortor placerat accumsan. Aenean efficitur commodo purus at finibus. Phasellus sed dignissim diam, at vulputate magna.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Sed laoreet pharetra blandit. Maecenas lacinia turpis eget nunc tempus tincidunt. Nullam cursus varius erat eget tincidunt. Aliquam eu eros sed diam volutpat ultricies. Aenean ullamcorper odio erat, a aliquet lectus semper sit amet. Aenean arcu purus, iaculis quis rutrum vitae, faucibus et nisi. Etiam tellus eros, sollicitudin id aliquam ut, suscipit id ante. Duis congue a orci a aliquam. Vestibulum nec risus bibendum, mollis purus vitae, efficitur lectus. Quisque sed eros non elit ultricies aliquam. Vivamus imperdiet sagittis odio, quis hendrerit eros. Etiam a ante ac velit egestas ultricies non sed mi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>', 1, 'Privacy Policy', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla lobortis sed erat tincidunt malesuada. Vestibulum aliquet ultricies velit, non dictum odio. Aliquam finibus in felis ac rhoncus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed massa nunc, ultrices quis tempus ac, rhoncus rhoncus quam. In sed neque a urna pretium accumsan. Donec in elementum lacus. Aenean nulla ex, faucibus at ante rutrum, aliquet elementum libero. Curabitur vel rhoncus lectus. Fusce dictum ante eget lacus laoreet facilisis. Vestibulum a rutrum erat. Sed non ante sodales, semper est eget, blandit ligula.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Quisque leo nunc, suscipit eu massa et, interdum suscipit augue. Nam ullamcorper enim enim, sit amet laoreet ex facilisis a. Donec vel eros quam. Ut posuere, lorem ac aliquam pulvinar, erat neque tristique ante, quis aliquam sem nibh sit amet quam. Nam vel efficitur orci. Morbi et lorem bibendum, elementum sapien a, tincidunt quam. Aenean tristique nec velit feugiat gravida. Donec eleifend ultrices accumsan. Etiam vitae blandit dui, vitae scelerisque libero. Vivamus viverra ac erat ac iaculis. Nam eleifend varius metus. Nunc elit lacus, bibendum id metus nec, eleifend maximus lorem. Vivamus facilisis ac purus congue faucibus.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aliquam erat volutpat. Quisque et quam eu nibh dignissim vulputate quis quis risus. Suspendisse vitae sodales nibh. Praesent viverra ullamcorper fermentum. Ut ex mauris, scelerisque ut felis non, suscipit sollicitudin dui. Nulla eu quam suscipit, ultricies turpis quis, condimentum orci. Etiam id condimentum orci. Donec sit amet urna sem. Quisque euismod arcu nec dolor auctor, at tempor est rhoncus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer quis ultricies ligula, non elementum ex. Nulla auctor nunc diam, eget sollicitudin dolor elementum ac. Etiam quam mauris, fringilla eget urna in, iaculis condimentum tellus. Fusce tincidunt dictum libero, eu dignissim nibh vestibulum ac. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Quisque eu consectetur mi. Vivamus in risus nec diam iaculis convallis sed tempor dui. Nam non hendrerit mi, ac hendrerit tellus. Pellentesque rhoncus non lorem id dictum. Nullam luctus rhoncus leo, id faucibus risus sollicitudin quis. Phasellus sed tempus tellus. Praesent dolor massa, sagittis gravida euismod nec, tincidunt non libero.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce id auctor ligula. Praesent finibus nulla in dolor commodo porttitor. Duis ipsum sem, pharetra ac ultrices eget, pellentesque vel nulla. Donec dapibus lobortis quam eget faucibus. Nam nec justo egestas, scelerisque purus eget, lobortis ipsum. Aenean et blandit neque. Fusce non turpis condimentum, feugiat turpis eu, rutrum nulla.</p>', 1, 'Contact Us', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d126748.6145387566!2d107.4872652640447!3d-6.903253701014509!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e68e6398252477f%3A0x146a1f93d3e815b2!2sBandung%2C%20Kota%20Bandung%2C%20Jawa%20Barat!5e0!3m2!1sid!2sid!4v1673240699948!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, 'Image Gallery', 0, 'Video Gallery', 1, 'FAQs', 1, 'Blog', 1, 'Rooms', 'Cart', 1, 'Checkout', 1, 'Payment', 'Sign Up', 1, 'Sign In', 1, 'Forget Password', 'Reset Password', NULL, '2023-06-19 03:59:28');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `heading` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_view` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `image`, `heading`, `short_desc`, `content`, `total_view`, `created_at`, `updated_at`) VALUES
(4, 'post-img-1687171220.jpg', 'Promo Deluxe Room Up to 50 %', '-', '<p><b>Nikmati penawaran istimewa! Kamar Deluxe kami saat ini sedang dalam promo diskon yang tidak boleh Anda lewatkan. Dengan kesempatan ini, Anda dapat merasakan kemewahan dan kenyamanan kamar Deluxe kami dengan harga yang lebih terjangkau. Dapatkan pengalaman menginap yang istimewa dengan fasilitas mewah, dekorasi yang elegan, dan pelayanan yang tak tertandingi, semuanya dengan diskon khusus untuk Anda. Manfaatkan promo ini sekarang dan buatlah kenangan tak terlupakan dalam pengalaman menginap di kamar Deluxe kami yang luar biasa ini.</b><br></p>', 2, '2023-06-19 03:40:20', '2023-06-19 07:29:42'),
(5, 'post-img-1687171475.jpg', 'Promo Standart Room Up to 40 %', 'Book Now', '<p>Jangan lewatkan kesempatan istimewa! Kami memberikan promo khusus untuk Standar Room dengan diskon hingga 40%! Nikmati pengalaman menginap yang nyaman dan terjangkau dengan penawaran ini. Dalam kamar Standar Room yang kami tawarkan, Anda akan menemukan kenyamanan yang sederhana namun memuaskan dengan fasilitas yang terjamin. Dapatkan kualitas tinggi dengan harga yang lebih terjangkau. Jangan ragu untuk memanfaatkan promo ini sekarang, karena kesempatan ini tidak akan berlangsung lama. Segera pesan Standar Room kami dan nikmati diskon hingga 40% untuk pengalaman menginap yang luar biasa.<br></p>', 2, '2023-06-19 03:44:35', '2023-06-19 08:45:10'),
(6, 'post-img-1687171737.jpg', 'Luxury Room', 'Limited Edition', '<p>Nikmati pengalaman tak terlupakan dengan promo khusus kami: Luxury Room Limited Edition. Segera tempati ruangan mewah ini dan rasakan kemewahan yang tak tertandingi. Tersedia hanya dalam jumlah terbatas, jadi jangan lewatkan kesempatan ini untuk merasakan tingkat keanggunan yang luar biasa. Pesan sekarang dan nikmati fasilitas eksklusif serta pelayanan prima di tempat kami.<br></p>', 2, '2023-06-19 03:48:57', '2023-06-19 05:18:40');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_rooms` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `facilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `size` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `total_beds` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `total_bathrooms` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `total_balconies` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `total_guests` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `featured_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `description`, `price`, `total_rooms`, `facilities`, `size`, `total_beds`, `total_bathrooms`, `total_balconies`, `total_guests`, `featured_image`, `video_id`, `created_at`, `updated_at`) VALUES
(11, 'Airon Suites Hotel', '<p style=\"text-align: justify; \"><b>Nikmati pengalaman menginap keluarga yang tak terlupakan dengan promo kamar hotel family kami! Dirancang dengan perhatian khusus untuk kebutuhan Anda, kamar hotel family kami menawarkan ruang yang luas dan nyaman untuk seluruh keluarga. Dengan tempat tidur yang cukup untuk semua anggota keluarga, Anda dapat menikmati momen berkualitas bersama di dalam kamar yang nyaman dan hangat. Nikmati fasilitas tambahan seperti area duduk, meja kerja, dan area bermain untuk anak-anak, sehingga Anda dan keluarga dapat bersantai dan menikmati waktu bersama. Tunggu apa lagi? Manjakan keluarga Anda dengan pengalaman menginap yang istimewa dalam kamar hotel family kami, dan buat kenangan tak terlupakan bersama-sama.</b><br></p>', '200', '9', '2,3,4,5,7,8,9', 'Double XL', '4', '3', '1', '0', '1687167383.jpg', NULL, '2023-06-19 02:36:23', '2023-06-19 06:06:50'),
(12, 'Janevalla Hotel', '<p style=\"text-align: justify; \"><b>Rasakan kemewahan sejati dengan promo kamar Luxury Room kami! Menawarkan pengalaman menginap yang eksklusif dan istimewa, Luxury Room kami menggabungkan desain yang elegan dengan fasilitas terbaik untuk menciptakan suasana yang luar biasa. Masuki dunia kemewahan dengan kamar yang luas dan indah ini, dirancang dengan perhatian terhadap detail yang memanjakan setiap indera Anda. Setelah melewati pintu, Anda akan disambut oleh dekorasi mewah, perabotan berkualitas tinggi, dan kenyamanan yang tiada banding. Dengan tempat tidur yang lembut dan nyaman, Anda akan merasakan tidur yang mendalam dan memulihkan energi Anda dengan sempurna. Tersedia juga area lounge yang luas untuk bersantai dan menikmati pemandangan yang menakjubkan. Fasilitas tambahan seperti kamar mandi mewah dengan jacuzzi, akses ke fasilitas spa, dan pelayanan kamar yang eksklusif akan memenuhi semua keinginan Anda. Promo kamar Luxury Room kami adalah kesempatan untuk merasakan tingkat kemewahan yang tak tertandingi. Manjakan diri Anda dan buat kenangan indah dalam penginapan yang tak terlupakan ini.</b><br></p>', '150', '10', '2,3,4,5,6,7,8,9', 'XL', '1', '2', '1', '2', '1687167510.jpg', NULL, '2023-06-19 02:38:30', '2023-06-19 06:07:42'),
(13, 'The Papandayan', '<p style=\"text-align: justify; \"><b>Temukan kenyamanan dan kemudahan dalam promo kamar Standar Room kami! Kamar ini menawarkan pengalaman menginap yang menyenangkan dan terjangkau bagi para tamu. Dengan desain yang sederhana namun fungsional, Standar Room kami memberikan ruang yang nyaman untuk bersantai setelah hari yang panjang. Dilengkapi dengan tempat tidur yang nyaman, area kerja, dan fasilitas dasar yang terpenuhi, kamar ini adalah pilihan yang sempurna bagi mereka yang mencari akomodasi yang terjangkau tanpa mengorbankan kenyamanan. Nikmati privasi Anda dengan kamar mandi pribadi yang dilengkapi dengan perlengkapan mandi yang diperlukan. Dalam promo kamar Standar Room kami, Anda akan merasakan keramahan staf kami yang siap membantu Anda dalam setiap kebutuhan Anda. Tawaran ini merupakan kesempatan sempurna untuk menikmati penginapan berkualitas dengan harga yang terjangkau. Jangan lewatkan kesempatan ini untuk merasakan kenyamanan dan kemudahan dalam promo kamar Standar Room kami yang menarik ini.</b><br></p>', '20', '9', '2,3,8', 'L', '1', '1', '0', '2', '1687167750.jpg', NULL, '2023-06-19 02:42:30', '2023-06-19 06:08:12'),
(14, 'Marbella Hotel', '<p style=\"text-align: justify; \"><b>Nikmati kenyamanan dan kemewahan dalam promo kamar Twin Room Deluxe kami! Dengan desain yang elegan dan perhatian terhadap detail, kamar ini menawarkan pengalaman menginap yang istimewa bagi tamu yang menginginkan ruang ekstra dan privasi yang optimal. Twin Room Deluxe dilengkapi dengan dua tempat tidur yang nyaman, memberikan fleksibilitas bagi tamu yang ingin berbagi kamar dengan teman atau anggota keluarga. Nikmati interior yang modern dan fasilitas mewah, termasuk kamar mandi pribadi dengan perlengkapan berkualitas, area duduk yang nyaman, dan akses ke layanan kamar yang siap memenuhi kebutuhan Anda. Dengan pemandangan yang menakjubkan dan suasana yang tenang, Twin Room Deluxe adalah pilihan sempurna bagi mereka yang menginginkan pengalaman menginap yang tak terlupakan. Bersiaplah untuk merasa terpenuhi dan diperhatikan dalam promo kamar Twin Room Deluxe kami yang eksklusif.</b><br></p>', '50', '11', '2,3,7,8', 'Double L', '2', '1', '0', '4', '1687167860.jpg', NULL, '2023-06-19 02:44:20', '2023-06-19 06:08:47'),
(15, 'Vasaka Maison', '<p style=\"text-align: justify; \"><b>Nikmati kemewahan yang tak terlupakan dengan promo kamar Deluxe Room kami! Dengan desain yang elegan dan perhatian terhadap detail, kamar ini memberikan pengalaman menginap yang istimewa bagi tamu kami yang menginginkan kenyamanan dan kualitas yang tinggi. Dilengkapi dengan tempat tidur yang mewah dan nyaman, ruang luas yang dirancang dengan indah, dan sentuhan dekorasi yang khas, kamar Deluxe Room kami menciptakan suasana yang menenangkan dan penuh kehangatan. Nikmati fasilitas modern seperti akses Wi-Fi gratis, TV layar datar, dan minibar untuk menjaga kenyamanan Anda selama menginap. Dengan kamar mandi pribadi yang dilengkapi dengan perlengkapan berkualitas tinggi, Anda akan merasakan sentuhan kemewahan yang lengkap. Promo kamar Deluxe Room kami adalah kesempatan sempurna untuk merasakan tingkat kenyamanan dan kemewahan yang luar biasa. Segera tempatkan pesanan Anda dan buatlah kenangan tak terlupakan dalam pengalaman menginap yang istimewa ini.</b><br></p>', '20', '15', '2,3,4,7,8', 'XL', '1', '1', '0', '2', '1687169164.jpg', NULL, '2023-06-19 03:06:04', '2023-06-19 06:09:25'),
(16, 'Aston Hotel', '<p style=\"text-align: justify; \"><b>Nikmati kemewahan yang tak terlupakan dengan promo kamar Deluxe Room kami! Dengan desain yang elegan dan perhatian terhadap detail, kamar ini memberikan pengalaman menginap yang istimewa bagi tamu kami yang menginginkan kenyamanan dan kualitas yang tinggi. Dilengkapi dengan tempat tidur yang mewah dan nyaman, ruang luas yang dirancang dengan indah, dan sentuhan dekorasi yang khas, kamar Deluxe Room kami menciptakan suasana yang menenangkan dan penuh kehangatan. Nikmati fasilitas modern seperti akses Wi-Fi gratis, TV layar datar, dan minibar untuk menjaga kenyamanan Anda selama menginap. Dengan kamar mandi pribadi yang dilengkapi dengan perlengkapan berkualitas tinggi, Anda akan merasakan sentuhan kemewahan yang lengkap. Promo kamar Deluxe Room kami adalah kesempatan sempurna untuk merasakan tingkat kenyamanan dan kemewahan yang luar biasa. Segera tempatkan pesanan Anda dan buatlah kenangan tak terlupakan dalam pengalaman menginap yang istimewa ini.</b><br></p>', '30', '9', '2,3,4,8,9', 'XL', '1', '1', '1', '2', '1687169240.jpg', NULL, '2023-06-19 03:07:20', '2023-06-19 06:09:58'),
(17, 'Front One Hotel', '<p style=\"text-align: justify; \"><b>Nikmati kenyamanan yang sederhana namun memuaskan dengan promo kamar Standar Twin Room kami! Kamar ini dirancang untuk memberikan pengalaman menginap yang nyaman bagi tamu-tamu kami yang menginginkan tempat tidur terpisah dalam satu kamar. Dengan dua tempat tidur yang nyaman dan fasilitas dasar yang terpenuhi, kamar Standar Twin Room menjadi pilihan yang ideal bagi pasangan atau teman yang ingin berbagi pengalaman menginap tanpa mengorbankan kenyamanan. Kamar ini menawarkan ruang yang cukup untuk bersantai setelah hari yang sibuk, dilengkapi dengan area kerja, akses Wi-Fi gratis, dan TV layar datar untuk hiburan Anda. Dalam promo kamar Standar Twin Room kami, Anda akan merasakan keramahan staf kami yang siap membantu Anda dalam setiap kebutuhan Anda. Manjakan diri Anda dengan pengalaman menginap yang sederhana namun memuaskan dalam promo kamar Standar Twin Room kami yang menarik ini.</b><br></p>', '25', '5', '2,3,8', 'Double L', '2', '1', '0', '3', '1687169342.jpg', NULL, '2023-06-19 03:09:02', '2023-06-19 06:10:35'),
(18, 'Cavella Hotel', '<p style=\"text-align: justify; \"><b>Temukan kenyamanan dan kemudahan dalam promo kamar Standar Room kami! Kamar ini menawarkan pengalaman menginap yang menyenangkan dan terjangkau bagi para tamu. Dengan desain yang sederhana namun fungsional, Standar Room kami memberikan ruang yang nyaman untuk bersantai setelah hari yang panjang. Dilengkapi dengan tempat tidur yang nyaman, area kerja, dan fasilitas dasar yang terpenuhi, kamar ini adalah pilihan yang sempurna bagi mereka yang mencari akomodasi yang terjangkau tanpa mengorbankan kenyamanan. Nikmati privasi Anda dengan kamar mandi pribadi yang dilengkapi dengan perlengkapan mandi yang diperlukan. Dalam promo kamar Standar Room kami, Anda akan merasakan keramahan staf kami yang siap membantu Anda dalam setiap kebutuhan Anda. Tawaran ini merupakan kesempatan sempurna untuk menikmati penginapan berkualitas dengan harga yang terjangkau. Jangan lewatkan kesempatan ini untuk merasakan kenyamanan dan kemudahan dalam promo kamar Standar Room kami yang menarik ini.</b><br></p>', '15', '13', '2,3,8', 'L', '1', '1', '0', '2', '1687169469.jpg', NULL, '2023-06-19 03:11:09', '2023-06-19 06:11:11'),
(19, 'Bobocabin', '<p style=\"text-align: justify; \"><b>Temukan kenyamanan dan kemudahan dalam promo kamar Standar Room kami! Kamar ini menawarkan pengalaman menginap yang menyenangkan dan terjangkau bagi para tamu. Dengan desain yang sederhana namun fungsional, Standar Room kami memberikan ruang yang nyaman untuk bersantai setelah hari yang panjang. Dilengkapi dengan tempat tidur yang nyaman, area kerja, dan fasilitas dasar yang terpenuhi, kamar ini adalah pilihan yang sempurna bagi mereka yang mencari akomodasi yang terjangkau tanpa mengorbankan kenyamanan. Nikmati privasi Anda dengan kamar mandi pribadi yang dilengkapi dengan perlengkapan mandi yang diperlukan. Dalam promo kamar Standar Room kami, Anda akan merasakan keramahan staf kami yang siap membantu Anda dalam setiap kebutuhan Anda. Tawaran ini merupakan kesempatan sempurna untuk menikmati penginapan berkualitas dengan harga yang terjangkau. Jangan lewatkan kesempatan ini untuk merasakan kenyamanan dan kemudahan dalam promo kamar Standar Room kami yang menarik ini.</b><br></p>', '20', '9', '2,3,8', 'L', '1', '1', '0', '2', '1687169550.jpg', NULL, '2023-06-19 03:12:30', '2023-06-19 06:12:12'),
(20, 'Hemagini Resort', '<p style=\"text-align: justify; \"><b>Nikmati kemewahan yang tak terlupakan dengan promo kamar Deluxe Room kami! Dengan desain yang elegan dan perhatian terhadap detail, kamar ini memberikan pengalaman menginap yang istimewa bagi tamu kami yang menginginkan kenyamanan dan kualitas yang tinggi. Dilengkapi dengan tempat tidur yang mewah dan nyaman, ruang luas yang dirancang dengan indah, dan sentuhan dekorasi yang khas, kamar Deluxe Room kami menciptakan suasana yang menenangkan dan penuh kehangatan. Nikmati fasilitas modern seperti akses Wi-Fi gratis, TV layar datar, dan minibar untuk menjaga kenyamanan Anda selama menginap. Dengan kamar mandi pribadi yang dilengkapi dengan perlengkapan berkualitas tinggi, Anda akan merasakan sentuhan kemewahan yang lengkap. Promo kamar Deluxe Room kami adalah kesempatan sempurna untuk merasakan tingkat kenyamanan dan kemewahan yang luar biasa. Segera tempatkan pesanan Anda dan buatlah kenangan tak terlupakan dalam pengalaman menginap yang istimewa ini.</b><br></p>', '50', '15', '2,3,4,7', 'XL', '1', '1', '0', '2', '1687169897.jpg', NULL, '2023-06-19 03:18:17', '2023-06-19 06:12:47'),
(21, 'Namin Dago', '<p style=\"text-align: justify; \"><b>Nikmati pengalaman menginap keluarga yang tak terlupakan dengan promo kamar hotel family kami! Dirancang dengan perhatian khusus untuk kebutuhan Anda, kamar hotel family kami menawarkan ruang yang luas dan nyaman untuk seluruh keluarga. Dengan tempat tidur yang cukup untuk semua anggota keluarga, Anda dapat menikmati momen berkualitas bersama di dalam kamar yang nyaman dan hangat. Nikmati fasilitas tambahan seperti area duduk, meja kerja, dan area bermain untuk anak-anak, sehingga Anda dan keluarga dapat bersantai dan menikmati waktu bersama. Tunggu apa lagi? Manjakan keluarga Anda dengan pengalaman menginap yang istimewa dalam kamar hotel family kami, dan buat kenangan tak terlupakan bersama-sama.</b><br></p>', '85', '7', '2,3,4,5,7,8,9', 'XL', '2', '2', '1', '4', '1687169978.jpg', NULL, '2023-06-19 03:19:38', '2023-06-19 06:13:32'),
(22, 'Java Heritage', '<p>Nikmati pengalaman menginap keluarga yang tak terlupakan dengan promo kamar hotel family kami! Dirancang dengan perhatian khusus untuk kebutuhan Anda, kamar hotel family kami menawarkan ruang yang luas dan nyaman untuk seluruh keluarga. Dengan tempat tidur yang cukup untuk semua anggota keluarga, Anda dapat menikmati momen berkualitas bersama di dalam kamar yang nyaman dan hangat. Nikmati fasilitas tambahan seperti area duduk, meja kerja, dan area bermain untuk anak-anak, sehingga Anda dan keluarga dapat bersantai dan menikmati waktu bersama. Tunggu apa lagi? Manjakan keluarga Anda dengan pengalaman menginap yang istimewa dalam kamar hotel family kami, dan buat kenangan tak terlupakan bersama-sama.<br></p>', '70', '12', '2,3,4,7,8,9', 'Double XL', '2', '2', '1', '4', '1687170109.jpg', NULL, '2023-06-19 03:21:49', '2023-06-19 06:14:12');

-- --------------------------------------------------------

--
-- Table structure for table `room_images`
--

CREATE TABLE `room_images` (
  `id` bigint UNSIGNED NOT NULL,
  `room_id` int NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_images`
--

INSERT INTO `room_images` (`id`, `room_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 2, '1673290254.jpg', '2023-01-09 11:50:54', '2023-01-09 11:50:54'),
(2, 2, '1673290261.jpg', '2023-01-09 11:51:01', '2023-01-09 11:51:01'),
(4, 2, '1673290278.jpg', '2023-01-09 11:51:18', '2023-01-09 11:51:18'),
(5, 2, '1673290299.jpg', '2023-01-09 11:51:39', '2023-01-09 11:51:39');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `logo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `home_feature_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_room_total` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_room_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_testimonial_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_latest_post_total` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_latest_post_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `copyright` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `facebook` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `twitter` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `linkedin` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pinterest` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `instagram` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `theme_color_1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme_color_2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `favicon`, `phone`, `email`, `home_feature_status`, `home_room_total`, `home_room_status`, `home_testimonial_status`, `home_latest_post_total`, `home_latest_post_status`, `address`, `copyright`, `facebook`, `twitter`, `linkedin`, `pinterest`, `instagram`, `theme_color_1`, `theme_color_2`, `created_at`, `updated_at`) VALUES
(1, 'logo.png', 'favicon.ico', '0822-2005-1846', 'cs@hotelify.com', 'Show', '4', 'Show', 'Show', '3', 'Show', 'Asia Afrika Street,\r\nBandung, Jawa Barat', 'Copyright 2023, Hotelify.com All Rights Reserved.', 'https://www.facebook.com/', 'https://twitter.com/?lang=id', 'https://id.linkedin.com/', 'https://id.pinterest.com/', 'https://www.instagram.com/?hl=id', 'FFE3E1', 'FF9494', NULL, '2023-06-19 07:20:03');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `heading` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `image`, `heading`, `text`, `button_text`, `button_url`, `created_at`, `updated_at`) VALUES
(4, 'slide1687170486.jpg', NULL, NULL, NULL, NULL, '2023-06-19 03:28:06', '2023-06-19 03:28:06'),
(5, 'slide1687170528.jpg', NULL, NULL, NULL, NULL, '2023-06-19 03:28:48', '2023-06-19 03:28:48'),
(6, 'slide1687170545.jpg', NULL, NULL, NULL, NULL, '2023-06-19 03:29:05', '2023-06-19 03:29:05');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint UNSIGNED NOT NULL,
  `photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `photo`, `name`, `designation`, `comment`, `created_at`, `updated_at`) VALUES
(3, '1687170831.png', 'Steven', 'Deluxe Room', 'Saya sangat puas dengan pengalaman menginap di hotel ini. Pelayanan yang diberikan oleh staf sangat ramah dan profesional, membuat saya merasa sangat diperhatikan dan dihargai selama menginap. Kamar yang saya tempati sangat nyaman dan bersih, dengan fasilitas yang lengkap dan modern. Selain itu, makanan yang disajikan di restoran hotel juga sangat lezat dan bervariasi. Saya benar-benar merasa dirayakan dan dihargai sebagai tamu. Terima kasih kepada seluruh tim hotel yang telah memberikan pengalaman menginap yang luar biasa ini. Saya pasti akan merekomendasikan hotel ini kepada teman dan keluarga saya.', '2023-06-19 03:33:51', '2023-06-19 03:33:51'),
(4, '1687170927.png', 'Luthfi', 'Standart Room', 'Saya sangat senang dan puas dengan pengalaman menginap saya di hotel ini. Semua staf sangat ramah, profesional, dan siap membantu dengan segala kebutuhan saya selama menginap. Kamar yang saya tempati sangat nyaman, bersih, dan dilengkapi dengan fasilitas modern yang membuat saya merasa seperti di rumah. Selain itu, suasana di hotel ini sangat tenang dan menenangkan, sehingga saya bisa benar-benar bersantai dan melepaskan diri dari kepenatan sehari-hari. Sarapan yang disajikan di restoran hotel juga lezat dan variasinya sangat memuaskan. Secara keseluruhan, pengalaman menginap saya di hotel ini benar-benar memuaskan dan saya sangat merekomendasikannya kepada siapa pun yang mencari penginapan yang luar biasa. Terima kasih kepada seluruh tim hotel yang telah memberikan pelayanan yang luar biasa dan membuat pengalaman menginap saya menjadi tak terlupakan.', '2023-06-19 03:35:27', '2023-06-19 03:35:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booked_rooms`
--
ALTER TABLE `booked_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booked_rooms`
--
ALTER TABLE `booked_rooms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `room_images`
--
ALTER TABLE `room_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

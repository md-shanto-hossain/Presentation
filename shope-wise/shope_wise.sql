-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2023 at 07:49 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evara_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Apple', 'Apple  Description', 'brand-images/1683809663.jpg', 1, '2023-05-11 06:54:23', '2023-05-11 06:54:23'),
(2, 'CA', 'CA Description', 'brand-images/1683809695.jpg', 1, '2023-05-11 06:54:55', '2023-05-11 06:54:55'),
(3, 'Kokabura', 'Kokabura Description', 'brand-images/1683809730.jpg', 1, '2023-05-11 06:55:30', '2023-05-11 06:55:30'),
(4, 'Dell', 'Dell  Description', 'brand-images/1683809755.jpg', 1, '2023-05-11 06:55:55', '2023-05-11 06:55:55'),
(5, 'HP', 'HP Description', 'brand-images/1683809785.jpg', 1, '2023-05-11 06:56:25', '2023-05-11 06:56:25'),
(6, 'Rolex', 'Rolex Description', 'brand-images/1683809835.jpg', 1, '2023-05-11 06:57:15', '2023-05-11 06:57:15'),
(7, 'Aarong', 'Aarong Description', 'brand-images/1683809898.jpg', 1, '2023-05-11 06:58:18', '2023-05-11 06:58:18'),
(8, 'Rang', 'Rang Description', 'brand-images/1683809928.jpg', 1, '2023-05-11 06:58:48', '2023-05-11 06:58:48'),
(9, 'Kay Kraft', 'Kay Kraft Description', 'brand-images/1683809947.jpg', 1, '2023-05-11 06:59:07', '2023-05-11 06:59:07'),
(10, 'Bibiana', 'Bibiana Description', 'brand-images/1683809962.jpg', 1, '2023-05-11 06:59:22', '2023-05-11 06:59:22'),
(11, 'Deshal', 'Deshal description', 'brand-images/1683809980.jpg', 1, '2023-05-11 06:59:40', '2023-05-11 06:59:40'),
(12, 'Cats Eye', 'Cats Eye Description', 'brand-images/1683810031.jpg', 1, '2023-05-11 07:00:31', '2023-05-11 07:00:31'),
(13, 'Monno', 'Monno Description', 'brand-images/1683810050.jpg', 1, '2023-05-11 07:00:50', '2023-05-11 07:00:50'),
(14, 'Jak & Jones', 'Jak & Jones description', 'brand-images/1683810084.jpg', 1, '2023-05-11 07:01:24', '2023-05-11 07:01:24'),
(15, 'Grameen UNIQLO', 'Grameen UNIQLO', 'brand-images/1683810117.jpg', 1, '2023-05-11 07:01:57', '2023-05-11 07:01:57'),
(16, 'MI', 'MI Description', 'brand-images/1683810189.jpg', 1, '2023-05-11 07:03:09', '2023-05-11 07:03:09'),
(17, 'LG', 'LG Description', 'brand-images/1683810207.jpg', 1, '2023-05-11 07:03:27', '2023-05-11 07:03:27'),
(18, 'Walton', 'Walton Description', 'brand-images/1683810227.jpeg', 1, '2023-05-11 07:03:47', '2023-05-11 07:03:47'),
(19, 'Samsung', 'Samsung Description', 'brand-images/1683810250.jpg', 1, '2023-05-11 07:04:10', '2023-05-11 07:04:10'),
(20, 'Oppo', 'Oppo Description', 'brand-images/1683810272.jpg', 1, '2023-05-11 07:04:32', '2023-05-11 07:04:32'),
(21, 'Others', 'Others Description', 'brand-images/1683810789.jpg', 1, '2023-05-11 07:13:09', '2023-05-11 07:13:09'),
(22, 'Animals', 'Animals Description', 'brand-images/1683810809.jpg', 1, '2023-05-11 07:13:29', '2023-05-11 07:13:29'),
(23, 'CA', 'CA Description', 'brand-images/1683820449.jpg', 1, '2023-05-11 09:54:09', '2023-05-11 09:54:09');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Man Fashion', 'Man Fashion Description', 'category-images/1683801198.jpg', 1, '2023-05-11 04:33:18', '2023-05-11 04:36:52'),
(2, 'Woman Fashion', 'Woman Fashion Description', 'category-images/1683801221.jpg', 1, '2023-05-11 04:33:41', '2023-05-11 04:37:06'),
(3, 'Animals', 'Animals Description', 'category-images/1683801277.jpg', 1, '2023-05-11 04:34:37', '2023-05-11 04:37:23'),
(4, 'Sport & Kids', 'Sport & Kids Description', 'category-images/1683801302.jpg', 1, '2023-05-11 04:35:02', '2023-05-11 04:37:36'),
(5, 'Electronics', 'Electronics Description', 'category-images/1683801815.jpg', 1, '2023-05-11 04:43:35', '2023-05-11 04:43:35'),
(6, 'Others', 'Others Description', 'category-images/1683810676.jpg', 1, '2023-05-11 07:11:16', '2023-05-11 07:11:16');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `image` text DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `blood_group` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `password`, `phone`, `image`, `dob`, `nid`, `address`, `blood_group`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Shanto', 'shanto@gmail.com', '$2y$10$1fJspx/esvuQk.HlZq4dMu/uJRcR4MAVLoCngke1MQIpewyLhrp4e', '01799630818', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-12 21:37:30', '2023-05-12 21:37:30'),
(2, 'sumaiya', 'sumaiya@gmail.com', '$2y$10$tK.RcuL6dtYAho2eQb767.lcPAovgEi06kWIwpTSbeup.XYhdpscm', '1234235', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-12 21:41:57', '2023-05-12 21:41:57'),
(3, 'Shanto', 'shanto22@gmail.com', '$2y$10$fkTkNTH5m1GwgAZSK1L29eBslSGfzZDwF6rDhI0Jrz1B80jtuSn/W', '345243534', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-12 21:57:22', '2023-05-12 21:57:22'),
(4, 'Nam', 'nam@gmail.com', '$2y$10$1j8tQ0mky2SklUhOU4MpqOME/9uuIdxQ4DScL0L2a3nm6BEdkQfDW', '435646456', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-12 22:36:07', '2023-05-12 22:36:07'),
(5, 'sumu', 'sumu@gmail.com', '$2y$10$zzzsk6EZSf4JzMRNSQBKpeCHCShCzLf9xdU5Uol1n71MNSzP88CDq', '435435', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-12 22:40:56', '2023-05-12 22:40:56'),
(6, 'red', 'red@gmail.com', '$2y$10$Eel6442MgKt6/tGB2NFXW.uvAVFwPBCNxrRW/oDUF97h93OulD0q6', '345234543', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-12 22:43:46', '2023-05-12 22:43:46'),
(7, 'Tolen', 'tolen@gmail.com', '$2y$10$9nreqwpP7RbM8QvSLO2B9.kCU7Zr3hJ4wpKLJzeKJKAAiijIGdZwa', '345435234', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-12 22:48:20', '2023-05-12 22:48:20'),
(8, 'Hasan', 'hasan@gmail.com', '$2y$10$3OIWA3Lp1QGPRU82vBgY9OXmMdTuN6wVXmDmV5X8XPtQwOvwaK5py', '345435', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-12 23:23:24', '2023-05-12 23:23:24'),
(9, 'Lalon', 'lalon@gmail.com', '$2y$10$Vh2tS1adxEmf9XjVSzeQQezMSePQBMILe30D7.jWEkx3xySZKHfQy', '345234543545', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-13 02:17:38', '2023-05-13 02:17:38'),
(10, 'Tor', 'tor@gmail.com', '$2y$10$LSERoMR5.qHFC9CL5VbPE.9zbKFpYuWzLrkJn0tLO7WT24YXf5BXK', '23454353', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-13 02:49:16', '2023-05-13 02:49:16'),
(16, 'Pichi', 'pichi@gmail.com', '$2y$10$44YhFB7550PMLi.fXPhAq.UktF5fD.z4AqXj82SfITc4Ro7lTyoMO', '32452345', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-13 03:39:01', '2023-05-13 03:39:01'),
(17, 'Nila', 'nila@gmail.com', '$2y$10$jfChOQ8Yan6E2i/pKirN8e8Ij4MwQhucDOEVJobR3S6McnO5kZbSG', '45645634', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-13 11:15:52', '2023-05-13 11:15:52'),
(18, 'Hossain', 'hossain123@gmail.com', '$2y$10$3hkjTQx4DfmwhS3Y8wYpIOh5gQlrFnvDbNzjBvAz4O.nNI0bu1ZFu', '435452345', 'user-images/1684001231.jpg', '1999-04-12', '435345345', 'Dhaka', 'O+', NULL, '2023-05-13 12:07:11', '2023-05-13 12:07:11'),
(19, 'lallu', 'lallu@gmail.com', '$2y$10$i5bpf1Y.CBO.2S1g.FBGR.bWZ70KJ/VcsaH1EK4NMPSw1ftOemg1.', '346753345', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-13 12:16:18', '2023-05-13 12:16:18'),
(21, 'black', 'black@gmail.com', '$2y$10$9WErCN3wCoPCRXLlnFKPY.CJ4ZEHCu/1N7iklHj/cSCo31DIgKGSC', '0986757467', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-14 04:38:44', '2023-05-14 04:38:44');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_05_07_090807_create_sessions_table', 1),
(7, '2023_05_08_180553_create_categories_table', 1),
(8, '2023_05_08_191112_create_sub_categories_table', 1),
(9, '2023_05_08_202406_create_units_table', 1),
(10, '2023_05_09_061321_create_brands_table', 1),
(11, '2023_05_09_063356_create_products_table', 1),
(12, '2023_05_09_071751_create_other_images_table', 1),
(19, '2023_05_12_173215_create_customers_table', 2),
(20, '2023_05_12_173230_create_orders_table', 2),
(21, '2023_05_12_173248_create_order_details_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_total` int(11) NOT NULL,
  `tax_total` int(11) NOT NULL,
  `shipping_total` int(11) NOT NULL,
  `order_date` varchar(255) DEFAULT NULL,
  `order_timestamp` varchar(255) DEFAULT NULL,
  `order_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `delivery_address` text NOT NULL,
  `delivery_date` text DEFAULT NULL,
  `delivery_timestamp` varchar(255) DEFAULT NULL,
  `delivery_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `payment_method` varchar(255) NOT NULL,
  `payment_date` varchar(255) DEFAULT NULL,
  `payment_timestamp` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `currency` varchar(255) DEFAULT NULL,
  `transaction` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_total`, `tax_total`, `shipping_total`, `order_date`, `order_timestamp`, `order_status`, `delivery_address`, `delivery_date`, `delivery_timestamp`, `delivery_status`, `payment_method`, `payment_date`, `payment_timestamp`, `payment_status`, `currency`, `transaction`, `created_at`, `updated_at`) VALUES
(1, 4, 25500, 2550, 300, '2023-05-13', '1683936000', 'Pending', 'Dhaka', NULL, NULL, 'Pending', '2', NULL, NULL, 'Pending', NULL, NULL, '2023-05-12 22:36:07', '2023-05-12 22:36:07'),
(2, 5, 25500, 2550, 300, '2023-05-13', '1683936000', 'Pending', 'dhaka', NULL, NULL, 'Pending', '2', NULL, NULL, 'Pending', NULL, NULL, '2023-05-12 22:40:56', '2023-05-12 22:40:56'),
(3, 6, 29750, 2975, 300, '2023-05-13', '1683936000', 'Pending', 'Dhaka', NULL, NULL, 'Pending', '1', NULL, NULL, 'Pending', NULL, NULL, '2023-05-12 22:43:47', '2023-05-12 22:43:47'),
(4, 7, 29750, 2975, 300, '2023-05-13', '1683936000', 'Pending', 'Dhaka', NULL, NULL, 'Pending', '1', NULL, NULL, 'Pending', NULL, NULL, '2023-05-12 22:48:20', '2023-05-12 22:48:20'),
(5, 8, 4250, 425, 300, '2023-05-13', '1683936000', 'Pending', 'Dhaka', NULL, NULL, 'Pending', '1', NULL, NULL, 'Pending', NULL, NULL, '2023-05-12 23:23:24', '2023-05-12 23:23:24'),
(6, 15, 4250, 425, 300, '2023-05-13', '1683936000', 'Pending', 'dfdsfasdfsa', NULL, NULL, 'Pending', '1', NULL, NULL, 'Pending', NULL, NULL, '2023-05-13 03:12:53', '2023-05-13 03:12:53'),
(7, 16, 14900, 1490, 300, '2023-05-13', '1683936000', 'Pending', 'dhaka', NULL, NULL, 'Pending', '1', NULL, NULL, 'Pending', NULL, NULL, '2023-05-13 03:39:01', '2023-05-13 03:39:01'),
(8, 16, 6450, 645, 300, '2023-05-13', '1683936000', 'Pending', 'Dhaka', '2023-05-16', '1684195200', 'Processing', '1', '2023-05-16', '1684195200', 'Processing', NULL, NULL, '2023-05-13 06:00:05', '2023-05-15 22:29:42'),
(10, 19, 4650, 465, 300, '2023-05-13', '1683936000', 'Complete', 'Dhaka', NULL, NULL, 'Complete', 'Complete', NULL, NULL, 'Complete', NULL, NULL, '2023-05-13 12:16:18', '2023-05-15 22:29:21'),
(11, 21, 1150, 115, 300, '2023-05-14', '1684022400', 'Processing', 'Jatrabri, Dhaka-1204', '2023-05-16', '1684195200', 'Processing', '1', '2023-05-16', '1684195200', 'Processing', NULL, NULL, '2023-05-14 04:38:44', '2023-05-15 22:39:21');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_quantity` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_quantity`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Red Shari', 4250, '6', '2023-05-12 22:40:56', '2023-05-12 22:40:56'),
(2, 3, 1, 'Red Shari', 4250, '7', '2023-05-12 22:43:47', '2023-05-12 22:43:47'),
(3, 4, 1, 'Red Shari', 4250, '7', '2023-05-12 22:48:20', '2023-05-12 22:48:20'),
(4, 5, 1, 'Red Shari', 4250, '1', '2023-05-12 23:23:24', '2023-05-12 23:23:24'),
(5, 6, 1, 'Red Shari', 4250, '1', '2023-05-13 03:12:53', '2023-05-13 03:12:53'),
(6, 7, 10, 'Bunny Creation Women\'s Plain Weave Yellow Coton Saree', 2800, '1', '2023-05-13 03:39:01', '2023-05-13 03:39:01'),
(7, 7, 2, 'Emerald Green Ruffle Saree', 6450, '1', '2023-05-13 03:39:01', '2023-05-13 03:39:01'),
(8, 7, 24, 'Black Shari', 5650, '1', '2023-05-13 03:39:01', '2023-05-13 03:39:01'),
(9, 8, 2, 'Emerald Green Ruffle Saree', 6450, '1', '2023-05-13 06:00:06', '2023-05-13 06:00:06'),
(11, 10, 6, 'Blue Jamdhani Sharee', 4650, '1', '2023-05-13 12:16:18', '2023-05-13 12:16:18'),
(12, 11, 9, 'Black shirt', 1150, '1', '2023-05-14 04:38:44', '2023-05-14 04:38:44');

-- --------------------------------------------------------

--
-- Table structure for table `other_images`
--

CREATE TABLE `other_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `other_image` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `other_images`
--

INSERT INTO `other_images` (`id`, `product_id`, `other_image`, `created_at`, `updated_at`) VALUES
(1, 1, 'product-other-images/41048340.jpg', '2023-05-11 07:57:14', '2023-05-11 07:57:14'),
(2, 1, 'product-other-images/452959106.jpg', '2023-05-11 07:57:14', '2023-05-11 07:57:14'),
(3, 1, 'product-other-images/1274029712.jpg', '2023-05-11 07:57:14', '2023-05-11 07:57:14'),
(4, 1, 'product-other-images/1800498727.jpg', '2023-05-11 07:57:14', '2023-05-11 07:57:14'),
(5, 2, 'product-other-images/1741924655.jpg', '2023-05-11 07:59:32', '2023-05-11 07:59:32'),
(6, 2, 'product-other-images/305013362.jpg', '2023-05-11 07:59:32', '2023-05-11 07:59:32'),
(7, 2, 'product-other-images/1654968690.jpg', '2023-05-11 07:59:32', '2023-05-11 07:59:32'),
(8, 2, 'product-other-images/1592919291.jpg', '2023-05-11 07:59:32', '2023-05-11 07:59:32'),
(9, 3, 'product-other-images/736333807.jpg', '2023-05-11 08:01:25', '2023-05-11 08:01:25'),
(10, 3, 'product-other-images/1128551533.jpg', '2023-05-11 08:01:25', '2023-05-11 08:01:25'),
(11, 3, 'product-other-images/1357907821.jpg', '2023-05-11 08:01:25', '2023-05-11 08:01:25'),
(12, 3, 'product-other-images/997905774.jpg', '2023-05-11 08:01:25', '2023-05-11 08:01:25'),
(13, 4, 'product-other-images/11209185.jpg', '2023-05-11 08:04:07', '2023-05-11 08:04:07'),
(14, 4, 'product-other-images/1968004904.jpg', '2023-05-11 08:04:07', '2023-05-11 08:04:07'),
(15, 4, 'product-other-images/4510263.jpg', '2023-05-11 08:04:07', '2023-05-11 08:04:07'),
(16, 4, 'product-other-images/436586880.jpg', '2023-05-11 08:04:07', '2023-05-11 08:04:07'),
(17, 5, 'product-other-images/207213481.jpg', '2023-05-11 08:11:11', '2023-05-11 08:11:11'),
(18, 5, 'product-other-images/2101528983.jpg', '2023-05-11 08:11:11', '2023-05-11 08:11:11'),
(19, 5, 'product-other-images/679897829.jpg', '2023-05-11 08:11:11', '2023-05-11 08:11:11'),
(20, 5, 'product-other-images/871549280.jpg', '2023-05-11 08:11:11', '2023-05-11 08:11:11'),
(21, 6, 'product-other-images/1820152003.jpg', '2023-05-11 08:13:14', '2023-05-11 08:13:14'),
(22, 6, 'product-other-images/1850962973.jpg', '2023-05-11 08:13:14', '2023-05-11 08:13:14'),
(23, 6, 'product-other-images/2025365470.jpg', '2023-05-11 08:13:14', '2023-05-11 08:13:14'),
(24, 6, 'product-other-images/578652457.jpg', '2023-05-11 08:13:14', '2023-05-11 08:13:14'),
(25, 7, 'product-other-images/1944626233.jpg', '2023-05-11 08:46:55', '2023-05-11 08:46:55'),
(26, 7, 'product-other-images/365050892.jpg', '2023-05-11 08:46:55', '2023-05-11 08:46:55'),
(27, 7, 'product-other-images/96501211.jpg', '2023-05-11 08:46:55', '2023-05-11 08:46:55'),
(28, 7, 'product-other-images/1813785802.jpg', '2023-05-11 08:46:55', '2023-05-11 08:46:55'),
(29, 8, 'product-other-images/677908822.jpg', '2023-05-11 08:49:30', '2023-05-11 08:49:30'),
(30, 8, 'product-other-images/1228574940.jpg', '2023-05-11 08:49:30', '2023-05-11 08:49:30'),
(31, 8, 'product-other-images/1352249663.jpg', '2023-05-11 08:49:30', '2023-05-11 08:49:30'),
(32, 8, 'product-other-images/744808144.jpg', '2023-05-11 08:49:30', '2023-05-11 08:49:30'),
(33, 9, 'product-other-images/238845257.jpg', '2023-05-11 08:57:54', '2023-05-11 08:57:54'),
(34, 9, 'product-other-images/423354744.jpg', '2023-05-11 08:57:54', '2023-05-11 08:57:54'),
(35, 9, 'product-other-images/745283821.jpg', '2023-05-11 08:57:54', '2023-05-11 08:57:54'),
(36, 9, 'product-other-images/1962676733.jpg', '2023-05-11 08:57:54', '2023-05-11 08:57:54'),
(37, 10, 'product-other-images/344396982.jpg', '2023-05-11 08:59:57', '2023-05-11 08:59:57'),
(38, 10, 'product-other-images/1522878646.jpg', '2023-05-11 08:59:57', '2023-05-11 08:59:57'),
(39, 10, 'product-other-images/1490673807.jpg', '2023-05-11 08:59:57', '2023-05-11 08:59:57'),
(40, 10, 'product-other-images/801082879.jpg', '2023-05-11 08:59:57', '2023-05-11 08:59:57'),
(41, 11, 'product-other-images/2040642988.jpg', '2023-05-11 09:02:56', '2023-05-11 09:02:56'),
(42, 11, 'product-other-images/436620871.jpg', '2023-05-11 09:02:56', '2023-05-11 09:02:56'),
(43, 11, 'product-other-images/1685656438.jpg', '2023-05-11 09:02:56', '2023-05-11 09:02:56'),
(44, 11, 'product-other-images/1567575646.jpg', '2023-05-11 09:02:56', '2023-05-11 09:02:56'),
(45, 12, 'product-other-images/734497901.jpg', '2023-05-11 09:04:18', '2023-05-11 09:04:18'),
(46, 12, 'product-other-images/1846278916.jpg', '2023-05-11 09:04:18', '2023-05-11 09:04:18'),
(47, 12, 'product-other-images/1502706862.jpg', '2023-05-11 09:04:18', '2023-05-11 09:04:18'),
(48, 12, 'product-other-images/595837340.jpg', '2023-05-11 09:04:18', '2023-05-11 09:04:18'),
(49, 13, 'product-other-images/1784882922.jpg', '2023-05-11 09:09:09', '2023-05-11 09:09:09'),
(50, 13, 'product-other-images/592424960.jpg', '2023-05-11 09:09:09', '2023-05-11 09:09:09'),
(51, 13, 'product-other-images/1929820470.jpg', '2023-05-11 09:09:09', '2023-05-11 09:09:09'),
(52, 13, 'product-other-images/1388609005.jpg', '2023-05-11 09:09:09', '2023-05-11 09:09:09'),
(53, 14, 'product-other-images/1088778016.jpg', '2023-05-11 09:28:31', '2023-05-11 09:28:31'),
(54, 14, 'product-other-images/1332468684.jpg', '2023-05-11 09:28:32', '2023-05-11 09:28:32'),
(55, 15, 'product-other-images/1472788890.jpg', '2023-05-11 09:30:54', '2023-05-11 09:30:54'),
(56, 15, 'product-other-images/2064527514.jpg', '2023-05-11 09:30:54', '2023-05-11 09:30:54'),
(57, 15, 'product-other-images/2073627767.jpg', '2023-05-11 09:30:54', '2023-05-11 09:30:54'),
(58, 15, 'product-other-images/1354849258.jpg', '2023-05-11 09:30:54', '2023-05-11 09:30:54'),
(59, 16, 'product-other-images/737265488.jpg', '2023-05-11 09:34:51', '2023-05-11 09:34:51'),
(60, 16, 'product-other-images/1328165532.jpg', '2023-05-11 09:34:51', '2023-05-11 09:34:51'),
(61, 16, 'product-other-images/851955928.jpg', '2023-05-11 09:34:51', '2023-05-11 09:34:51'),
(62, 16, 'product-other-images/248841191.jpg', '2023-05-11 09:34:51', '2023-05-11 09:34:51'),
(63, 17, 'product-other-images/1452411533.jpg', '2023-05-11 09:37:38', '2023-05-11 09:37:38'),
(64, 17, 'product-other-images/2098697856.jpg', '2023-05-11 09:37:38', '2023-05-11 09:37:38'),
(65, 17, 'product-other-images/402366263.jpg', '2023-05-11 09:37:38', '2023-05-11 09:37:38'),
(66, 17, 'product-other-images/397993798.jpg', '2023-05-11 09:37:38', '2023-05-11 09:37:38'),
(67, 17, 'product-other-images/141135022.jpg', '2023-05-11 09:37:38', '2023-05-11 09:37:38'),
(68, 18, 'product-other-images/497014013.jpg', '2023-05-11 09:39:47', '2023-05-11 09:39:47'),
(69, 18, 'product-other-images/1711487329.jpg', '2023-05-11 09:39:47', '2023-05-11 09:39:47'),
(70, 18, 'product-other-images/1747079253.jpg', '2023-05-11 09:39:47', '2023-05-11 09:39:47'),
(71, 18, 'product-other-images/1593968657.jpg', '2023-05-11 09:39:47', '2023-05-11 09:39:47'),
(72, 19, 'product-other-images/1680069237.jpg', '2023-05-11 09:41:20', '2023-05-11 09:41:20'),
(73, 19, 'product-other-images/1337230481.jpg', '2023-05-11 09:41:20', '2023-05-11 09:41:20'),
(74, 19, 'product-other-images/1659129678.jpg', '2023-05-11 09:41:20', '2023-05-11 09:41:20'),
(75, 19, 'product-other-images/1454476980.jpg', '2023-05-11 09:41:20', '2023-05-11 09:41:20'),
(76, 20, 'product-other-images/216919418.jpg', '2023-05-11 09:43:53', '2023-05-11 09:43:53'),
(77, 20, 'product-other-images/1029363725.jpg', '2023-05-11 09:43:53', '2023-05-11 09:43:53'),
(78, 20, 'product-other-images/1513537018.jpg', '2023-05-11 09:43:53', '2023-05-11 09:43:53'),
(79, 20, 'product-other-images/339386010.jpg', '2023-05-11 09:43:53', '2023-05-11 09:43:53'),
(80, 21, 'product-other-images/571135043.jpg', '2023-05-11 09:50:26', '2023-05-11 09:50:26'),
(81, 21, 'product-other-images/386926376.jpg', '2023-05-11 09:50:26', '2023-05-11 09:50:26'),
(82, 21, 'product-other-images/179943488.jpg', '2023-05-11 09:50:26', '2023-05-11 09:50:26'),
(83, 21, 'product-other-images/376170403.jpg', '2023-05-11 09:50:26', '2023-05-11 09:50:26'),
(84, 22, 'product-other-images/598385187.jpg', '2023-05-11 09:53:17', '2023-05-11 09:53:17'),
(85, 22, 'product-other-images/530306431.jpg', '2023-05-11 09:53:17', '2023-05-11 09:53:17'),
(86, 22, 'product-other-images/1697498062.jpg', '2023-05-11 09:53:17', '2023-05-11 09:53:17'),
(87, 22, 'product-other-images/489892583.jpg', '2023-05-11 09:53:17', '2023-05-11 09:53:17'),
(88, 23, 'product-other-images/1294996754.jpg', '2023-05-11 10:02:17', '2023-05-11 10:02:17'),
(89, 23, 'product-other-images/1873078691.jpg', '2023-05-11 10:02:17', '2023-05-11 10:02:17'),
(90, 23, 'product-other-images/264605862.jpg', '2023-05-11 10:02:17', '2023-05-11 10:02:17'),
(91, 23, 'product-other-images/259469384.jpg', '2023-05-11 10:02:17', '2023-05-11 10:02:17'),
(92, 24, 'product-other-images/1117301362.jpg', '2023-05-11 10:04:29', '2023-05-11 10:04:29'),
(93, 24, 'product-other-images/75448917.jpg', '2023-05-11 10:04:29', '2023-05-11 10:04:29'),
(94, 24, 'product-other-images/1612967876.jpg', '2023-05-11 10:04:29', '2023-05-11 10:04:29'),
(95, 24, 'product-other-images/2090942145.jpg', '2023-05-11 10:04:29', '2023-05-11 10:04:29'),
(96, 25, 'product-other-images/643901266.jpg', '2023-05-11 10:09:21', '2023-05-11 10:09:21'),
(97, 25, 'product-other-images/1157642021.jpg', '2023-05-11 10:09:21', '2023-05-11 10:09:21'),
(98, 25, 'product-other-images/1394238849.jpg', '2023-05-11 10:09:21', '2023-05-11 10:09:21'),
(99, 25, 'product-other-images/384179197.jpg', '2023-05-11 10:09:21', '2023-05-11 10:09:21'),
(100, 26, 'product-other-images/1345764559.jpg', '2023-05-11 10:18:30', '2023-05-11 10:18:30'),
(101, 26, 'product-other-images/364467762.jpg', '2023-05-11 10:18:30', '2023-05-11 10:18:30'),
(102, 26, 'product-other-images/1875483726.jpg', '2023-05-11 10:18:30', '2023-05-11 10:18:30'),
(103, 27, 'product-other-images/1528320368.jpg', '2023-05-11 10:24:44', '2023-05-11 10:24:44'),
(104, 27, 'product-other-images/68287146.jpg', '2023-05-11 10:24:44', '2023-05-11 10:24:44'),
(105, 27, 'product-other-images/1802796856.jpg', '2023-05-11 10:24:44', '2023-05-11 10:24:44'),
(106, 27, 'product-other-images/508383864.jpg', '2023-05-11 10:24:44', '2023-05-11 10:24:44'),
(107, 28, 'product-other-images/399248996.jpg', '2023-05-11 10:29:55', '2023-05-11 10:29:55'),
(108, 28, 'product-other-images/1024595658.jpg', '2023-05-11 10:29:55', '2023-05-11 10:29:55'),
(109, 28, 'product-other-images/652875748.jpg', '2023-05-11 10:29:55', '2023-05-11 10:29:55'),
(110, 28, 'product-other-images/695835143.jpg', '2023-05-11 10:29:55', '2023-05-11 10:29:55'),
(111, 29, 'product-other-images/53752030.jpg', '2023-05-11 10:35:16', '2023-05-11 10:35:16'),
(112, 29, 'product-other-images/1919637973.jpg', '2023-05-11 10:35:16', '2023-05-11 10:35:16'),
(113, 29, 'product-other-images/854603400.jpg', '2023-05-11 10:35:16', '2023-05-11 10:35:16'),
(114, 29, 'product-other-images/1464723349.jpg', '2023-05-11 10:35:16', '2023-05-11 10:35:16'),
(115, 30, 'product-other-images/1345559691.jpg', '2023-05-11 10:37:22', '2023-05-11 10:37:22'),
(116, 30, 'product-other-images/1113504524.jpg', '2023-05-11 10:37:22', '2023-05-11 10:37:22'),
(117, 30, 'product-other-images/1960636319.jpg', '2023-05-11 10:37:22', '2023-05-11 10:37:22'),
(118, 30, 'product-other-images/1084890688.jpg', '2023-05-11 10:37:22', '2023-05-11 10:37:22'),
(119, 31, 'product-other-images/1463440989.jpg', '2023-05-11 10:39:40', '2023-05-11 10:39:40'),
(120, 31, 'product-other-images/432129315.jpg', '2023-05-11 10:39:40', '2023-05-11 10:39:40'),
(121, 31, 'product-other-images/446308716.jpg', '2023-05-11 10:39:40', '2023-05-11 10:39:40'),
(122, 31, 'product-other-images/627207415.jpg', '2023-05-11 10:39:40', '2023-05-11 10:39:40'),
(123, 32, 'product-other-images/1786444175.jpg', '2023-05-11 10:42:11', '2023-05-11 10:42:11'),
(124, 32, 'product-other-images/56592500.jpg', '2023-05-11 10:42:11', '2023-05-11 10:42:11'),
(125, 32, 'product-other-images/6602071.jpg', '2023-05-11 10:42:11', '2023-05-11 10:42:11'),
(126, 32, 'product-other-images/704314217.jpg', '2023-05-11 10:42:11', '2023-05-11 10:42:11'),
(127, 33, 'product-other-images/1465019374.jpg', '2023-05-11 10:44:20', '2023-05-11 10:44:20'),
(128, 33, 'product-other-images/259462806.jpg', '2023-05-11 10:44:20', '2023-05-11 10:44:20'),
(129, 33, 'product-other-images/1342738842.jpg', '2023-05-11 10:44:21', '2023-05-11 10:44:21'),
(130, 33, 'product-other-images/2104202978.jpg', '2023-05-11 10:44:21', '2023-05-11 10:44:21'),
(131, 34, 'product-other-images/515622466.jpg', '2023-05-11 10:47:16', '2023-05-11 10:47:16'),
(132, 34, 'product-other-images/1815071625.jpg', '2023-05-11 10:47:16', '2023-05-11 10:47:16'),
(133, 34, 'product-other-images/2107791281.jpg', '2023-05-11 10:47:16', '2023-05-11 10:47:16'),
(134, 34, 'product-other-images/1405402123.jpg', '2023-05-11 10:47:16', '2023-05-11 10:47:16'),
(135, 35, 'product-other-images/1123807542.jpg', '2023-05-11 10:52:17', '2023-05-11 10:52:17'),
(136, 35, 'product-other-images/1658945001.jpg', '2023-05-11 10:52:17', '2023-05-11 10:52:17'),
(137, 35, 'product-other-images/1250377558.jpg', '2023-05-11 10:52:17', '2023-05-11 10:52:17'),
(138, 35, 'product-other-images/1241854064.jpg', '2023-05-11 10:52:17', '2023-05-11 10:52:17'),
(139, 36, 'product-other-images/137280614.jpg', '2023-05-11 10:54:04', '2023-05-11 10:54:04'),
(140, 36, 'product-other-images/943067071.jpg', '2023-05-11 10:54:04', '2023-05-11 10:54:04'),
(141, 36, 'product-other-images/60464573.jpg', '2023-05-11 10:54:04', '2023-05-11 10:54:04'),
(142, 36, 'product-other-images/1138156239.jpg', '2023-05-11 10:54:04', '2023-05-11 10:54:04'),
(143, 37, 'product-other-images/2101539398.jpg', '2023-05-11 10:56:17', '2023-05-11 10:56:17'),
(144, 37, 'product-other-images/1829440124.jpg', '2023-05-11 10:56:17', '2023-05-11 10:56:17'),
(145, 37, 'product-other-images/1426355282.jpg', '2023-05-11 10:56:17', '2023-05-11 10:56:17'),
(146, 37, 'product-other-images/495767747.jpg', '2023-05-11 10:56:17', '2023-05-11 10:56:17'),
(147, 38, 'product-other-images/1972382082.jpg', '2023-05-11 10:58:31', '2023-05-11 10:58:31'),
(148, 38, 'product-other-images/1213470130.jpg', '2023-05-11 10:58:31', '2023-05-11 10:58:31'),
(149, 38, 'product-other-images/314016314.jpg', '2023-05-11 10:58:31', '2023-05-11 10:58:31'),
(150, 38, 'product-other-images/600889654.jpg', '2023-05-11 10:58:31', '2023-05-11 10:58:31'),
(151, 39, 'product-other-images/1825953408.jpg', '2023-05-11 11:00:38', '2023-05-11 11:00:38'),
(152, 39, 'product-other-images/184447299.jpg', '2023-05-11 11:00:38', '2023-05-11 11:00:38'),
(153, 39, 'product-other-images/591073413.jpg', '2023-05-11 11:00:38', '2023-05-11 11:00:38'),
(154, 39, 'product-other-images/1766303694.jpg', '2023-05-11 11:00:38', '2023-05-11 11:00:38'),
(155, 40, 'product-other-images/1842105735.jpg', '2023-05-11 11:02:27', '2023-05-11 11:02:27'),
(156, 40, 'product-other-images/81950976.jpg', '2023-05-11 11:02:27', '2023-05-11 11:02:27'),
(157, 40, 'product-other-images/403727380.jpg', '2023-05-11 11:02:27', '2023-05-11 11:02:27'),
(158, 40, 'product-other-images/1674574155.jpg', '2023-05-11 11:02:27', '2023-05-11 11:02:27'),
(159, 41, 'product-other-images/1524732688.jpg', '2023-05-11 11:05:40', '2023-05-11 11:05:40'),
(160, 41, 'product-other-images/1089593326.jpg', '2023-05-11 11:05:40', '2023-05-11 11:05:40'),
(161, 41, 'product-other-images/1958848672.jpg', '2023-05-11 11:05:40', '2023-05-11 11:05:40'),
(162, 42, 'product-other-images/269813838.jpg', '2023-05-11 11:09:34', '2023-05-11 11:09:34'),
(163, 42, 'product-other-images/802768826.jpg', '2023-05-11 11:09:34', '2023-05-11 11:09:34'),
(164, 42, 'product-other-images/1245825886.jpg', '2023-05-11 11:09:34', '2023-05-11 11:09:34'),
(165, 42, 'product-other-images/277880856.jpg', '2023-05-11 11:09:34', '2023-05-11 11:09:34'),
(166, 43, 'product-other-images/2076576625.jpg', '2023-05-11 11:12:06', '2023-05-11 11:12:06'),
(167, 43, 'product-other-images/1059360656.jpg', '2023-05-11 11:12:06', '2023-05-11 11:12:06'),
(168, 43, 'product-other-images/1172120034.jpg', '2023-05-11 11:12:06', '2023-05-11 11:12:06'),
(169, 43, 'product-other-images/212546750.jpg', '2023-05-11 11:12:06', '2023-05-11 11:12:06');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `stoke_amount` int(11) NOT NULL,
  `regular_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `short_description` text NOT NULL,
  `long_description` longtext NOT NULL,
  `image` text NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `unit_id`, `brand_id`, `name`, `code`, `stoke_amount`, `regular_price`, `selling_price`, `short_description`, `long_description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 6, 2, 7, 'Red Shari', 'dag34df43', 32, 4500, 4250, 'Red Shari description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Distinctio eos facilis hic iste modi neque nihil, nobis quasi similique sit, tempore unde. Assumenda doloribus est incidunt maiores mollitia quis unde.', 'product-images/1683813434.jpg', '1', '2023-05-11 07:57:14', '2023-05-13 03:12:53'),
(2, 2, 6, 2, 7, 'Emerald Green Ruffle Saree', 'sd34fd2', 9, 6800, 6450, 'Emerald Green Ruffle Saree Description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Distinctio eos facilis hic iste modi neque nihil, nobis quasi similique sit, tempore unde. Assumenda doloribus est incidunt maiores mollitia quis unde.', 'product-images/1683813572.jpg', '1', '2023-05-11 07:59:32', '2023-05-13 11:15:52'),
(3, 5, 19, 3, 1, 'Apple iPhone 14 Pro Max', 'df435', 23, 134000, 132500, 'Apple iPhone 14 Pro Max Description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683813685.jpg', '1', '2023-05-11 08:01:25', '2023-05-11 08:01:25'),
(4, 3, 12, 10, 22, 'Betta Fish for aquirum', 'adf34g4', 14, 15000, 14200, 'Betta Fish for aquirum9 Description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683813847.jpg', '1', '2023-05-11 08:04:07', '2023-05-11 08:04:07'),
(5, 1, 4, 1, 9, 'Black panjabi', 'f34d34d', 32, 1800, 1650, 'Black panjabi Description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683814271.jpg', '1', '2023-05-11 08:11:11', '2023-05-11 08:11:11'),
(6, 2, 6, 2, 7, 'Blue Jamdhani Sharee', 'dsf3df43', 33, 5200, 4650, 'Blue Jamdhani Sharee Description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683814394.jpg', '1', '2023-05-11 08:13:14', '2023-05-13 12:16:19'),
(7, 2, 6, 2, 8, 'Maroon Colour Saree', 'd4f4f56', 12, 4400, 4150, 'Maroon Colour Saree Description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683816415.jpg', '1', '2023-05-11 08:46:55', '2023-05-11 08:46:55'),
(8, 1, 1, 1, 12, 'red-T-shirt', 'df34df', 66, 550, 480, 'red-T-shirt Description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683816570.jpg', '1', '2023-05-11 08:49:30', '2023-05-11 08:49:30'),
(9, 1, 2, 1, 7, 'Black shirt', 'd34d3d', 43, 1400, 1150, 'Black shirt description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683817073.jpg', '1', '2023-05-11 08:57:53', '2023-05-14 04:38:44'),
(10, 2, 6, 2, 7, 'Bunny Creation Women\'s Plain Weave Yellow Coton Saree', 'd4tg4b5', 3, 3200, 2800, 'Bunny Creation Women\'s Plain Weave Yellow Coton Saree Description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683817197.jpg', '1', '2023-05-11 08:59:57', '2023-05-13 03:39:01'),
(11, 1, 24, 11, 8, 'ladies hand bag', 'dsf34df43', 34, 1800, 1650, 'ladies hand bag Description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683817376.jpg', '1', '2023-05-11 09:02:56', '2023-05-11 09:02:56'),
(12, 5, 22, 4, 1, 'Apple Laptop', 'df34rftg4', 23, 240000, 236500, 'Apple Laptop description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683817458.jpg', '1', '2023-05-11 09:04:18', '2023-05-11 09:04:18'),
(13, 1, 1, 1, 12, 'yellow-T-shirt', 'df34gf5tfg', 56, 700, 550, 'yellow-T-shirt description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683817749.jpg', '1', '2023-05-11 09:09:09', '2023-05-11 09:09:09'),
(14, 5, 19, 3, 19, 'Galaxy S23 Ultra', 'dfd4fg56fhg', 12, 197000, 195500, 'Galaxy S23 Ultra Description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683818911.jpg', '1', '2023-05-11 09:28:31', '2023-05-11 09:28:31'),
(15, 1, 3, 1, 14, 'Slim-fit Stretchable Denim Jeans Pant- Deep Blue', 'df34fd435d', 122, 2200, 1950, 'Slim-fit Stretchable Denim Jeans Pant- Deep Blue description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683819054.jpg', '1', '2023-05-11 09:30:54', '2023-05-11 09:30:54'),
(16, 3, 13, 10, 22, 'Adopt a Dog', 'fd4d45df', 12, 50000, 47500, 'Adopt a Dog description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683819291.jpg', '1', '2023-05-11 09:34:51', '2023-05-11 09:34:51'),
(17, 2, 6, 2, 11, 'Pista Green Crepe Saree', 'df34d4de4', 16, 23000, 21499, 'Pista Green Crepe Saree Description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683819458.jpg', '1', '2023-05-11 09:37:38', '2023-05-11 09:37:38'),
(18, 3, 25, 10, 22, 'Betta Fish for aquirum4', 'fd4f454', 8, 12000, 11500, 'Betta Fish for aquirum4 Description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683819587.jpg', '1', '2023-05-11 09:39:47', '2023-05-11 09:39:47'),
(19, 3, 14, 10, 22, 'cat-baby-animal-kitten6', 'df3d45g', 21, 8000, 7200, 'cat-baby-animal-kitten6 Description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683819680.jpg', '1', '2023-05-11 09:41:20', '2023-05-11 09:41:20'),
(20, 2, 8, 2, 10, 'Bridal lehenga designs', '3d34t34tg', 11, 60000, 57500, 'Bridal lehenga designs Description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683819833.jpg', '1', '2023-05-11 09:43:53', '2023-05-11 09:43:53'),
(21, 2, 7, 2, 11, 'Black-Three Piece', 'df3d5g4', 34, 9000, 7800, 'Black-ThreePiece Description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683820226.jpg', '1', '2023-05-11 09:50:26', '2023-05-11 09:50:26'),
(22, 4, 24, 11, 21, 'CA Gold Cricket Helmet', 'fd4f4gf54', 56, 1200, 950, 'CA Gold Cricket Helmet Description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683820397.jpg', '1', '2023-05-11 09:53:17', '2023-05-11 09:53:17'),
(23, 1, 4, 1, 7, 'sky-blue-panjabi', 'df3d3d5d', 18, 1900, 1600, 'sky-blue-panjabi  Description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683820937.jpg', '1', '2023-05-11 10:02:17', '2023-05-11 10:02:17'),
(24, 2, 6, 2, 7, 'Black Shari', '34f3f34', 46, 6000, 5650, 'Black Shari Description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683821069.jpg', '1', '2023-05-11 10:04:29', '2023-05-13 03:39:01'),
(25, 2, 8, 8, 11, 'Bridal lehenga designs', 'd3d5f3h9', 13, 46000, 44500, 'Bridal lehenga designs', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683821361.jpg', '1', '2023-05-11 10:09:21', '2023-05-11 10:09:21'),
(26, 3, 15, 10, 22, 'Fancy Pigeon Breeds', 'd3g34u8', 6, 8000, 6800, 'Fancy Pigeon Breeds Description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683821910.jpg', '1', '2023-05-11 10:18:30', '2023-05-11 10:18:30'),
(27, 2, 24, 11, 21, 'ladies hand bag Black', 'd3y4t5ty', 21, 1800, 1450, 'ladies hand bag Black Descrition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683822284.jpg', '1', '2023-05-11 10:24:44', '2023-05-11 10:24:44'),
(28, 1, 4, 1, 12, 'Mehrun Panjabi', 'd3fg879jh8', 37, 1800, 1650, 'mehrun-panjabi', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683822595.jpg', '1', '2023-05-11 10:29:55', '2023-05-11 10:29:55'),
(29, 2, 8, 2, 11, 'Bridal white lehenga', 'jh83fh38', 8, 40000, 37500, 'Bridal white lehenga description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683822916.jpg', '1', '2023-05-11 10:35:16', '2023-05-11 10:35:16'),
(30, 1, 3, 1, 12, 'Chino Gabardine Pants For Men', 'b6m4v9k8', 23, 3500, 3250, 'Chino Gabardine Pants For Men', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683823042.png', '1', '2023-05-11 10:37:22', '2023-05-11 10:37:22'),
(31, 2, 1, 1, 8, 'black-T-shirt', 'dcv3cf34fdc34', 17, 650, 480, 'black-T-shirt description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683823180.jpg', '1', '2023-05-11 10:39:40', '2023-05-11 10:39:40'),
(32, 4, 26, 14, 21, 'Kookaburra White And Green Bat', 'n378dj439d', 28, 40000, 37500, 'Kookaburra White And Green', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683823331.jpg', '1', '2023-05-11 10:42:11', '2023-05-11 10:42:11'),
(33, 1, 24, 14, 21, 'Formal Watchfor Women Analog', 'b5k5s6nm3', 16, 26000, 24500, 'Formal Watchfor Women Analog', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683823460.jpg', '1', '2023-05-11 10:44:20', '2023-05-11 10:44:20'),
(34, 2, 7, 9, 13, 'White Three Piece', 'd3g7h5fg54', 43, 5600, 5300, 'White Three Piece Description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683823636.jpg', '1', '2023-05-11 10:47:16', '2023-05-11 10:47:16'),
(35, 1, 1, 1, 7, 'white-T-shirt', 'n329n3x9', 70, 650, 500, 'white-T-shirt Description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683823937.jpg', '1', '2023-05-11 10:52:17', '2023-05-11 10:52:17'),
(36, 2, 24, 11, 21, 'ladies hand bag white', 'n30cdn34c', 22, 4400, 4000, 'ladies hand bag white2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683824044.jpg', '1', '2023-05-11 10:54:04', '2023-05-11 10:54:04'),
(37, 4, 17, 14, 23, 'CA Cricket Bats5', 'v092mc3ds', 8, 70000, 66500, 'CA Cricket Bats Description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683824177.jpg', '1', '2023-05-11 10:56:17', '2023-05-11 10:56:17'),
(38, 5, 22, 4, 4, 'DELL Latitude 3420 10th Gen Core i3 14-Inch Laptop', 'd2s5fhy4', 18, 70000, 66500, 'DELL Latitude 3420 10th Gen Core i3 14-Inch Laptop', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683824311.jpg', '1', '2023-05-11 10:58:31', '2023-05-11 10:58:31'),
(39, 2, 24, 11, 6, 'Women\'s Watches', '3v93jkld3k', 12, 2300, 2100, 'Women\'s Watches Descrpition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683824438.jpeg', '1', '2023-05-11 11:00:38', '2023-05-11 11:00:38'),
(40, 2, 11, 11, 21, 'LADIES CASUAL & FORMAL CLOSED SHOES', 'd325fd325', 21, 3000, 2600, 'LADIES CASUAL & FORMAL CLOSED SHOES Description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683824547.jpg', '1', '2023-05-11 11:02:27', '2023-05-11 11:02:27'),
(41, 1, 3, 12, 8, 'Men\'s Gabardine Pants', 'df325fsd35', 23, 2600, 2250, 'Men\'s Gabardine Pants Description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683824740.jpg', '1', '2023-05-11 11:05:40', '2023-05-11 11:05:40'),
(42, 5, 19, 3, 20, 'Oppo-Reno8-T', 'd3gff35g3', 22, 90000, 86500, 'Oppo-Reno8-T Description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683824974.jpg', '1', '2023-05-11 11:09:34', '2023-05-11 11:09:34'),
(43, 5, 19, 3, 21, 'OnePlus 10 Pro 5G', '589fjk35r', 7, 130000, 125000, 'OnePlus 10 Pro 5G  Description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus atque autem commodi corporis fugit magnam quasi qui quia repellat sequi. Ab at illo illum molestias optio, tempore temporibus vero vitae.', 'product-images/1683825126.jpg', '1', '2023-05-11 11:12:06', '2023-05-11 11:12:06');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('PaKNRs2Jwsc3QJa25v0BdCDqkFYc0VzCxnV2YFxU', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoianpSSEh2S1JOTjhVY3JGU1BZb2NFRkhSdlNnVDVCZkF5NEk1MWxHeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJDkySVhVTnBrak8wck9RNWJ5TWkuWWU0b0tvRWEzUm85bGxDLy5vZy9hdDIudWhlV0cvaWdpIjt9', 1684216062);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'T-Shirt', 'T-Shirt Description', 'sub-category-imgages/1683801880.jpg', 1, '2023-05-11 04:44:40', '2023-05-11 04:44:40'),
(2, 1, 'Shirt', 'Shirt Description', 'sub-category-imgages/1683801910.jpg', 1, '2023-05-11 04:45:10', '2023-05-11 04:45:10'),
(3, 1, 'Pant', 'Pant Description', 'sub-category-imgages/1683801932.jpg', 1, '2023-05-11 04:45:32', '2023-05-11 04:45:32'),
(4, 1, 'Panjabi', 'Panjabi Description', 'sub-category-imgages/1683801988.jpg', 1, '2023-05-11 04:46:28', '2023-05-11 04:46:28'),
(5, 1, 'Men\'s Watch', 'Men\'s Watch Description', 'sub-category-imgages/1683802040.webp', 1, '2023-05-11 04:47:20', '2023-05-11 04:47:20'),
(6, 2, 'Saree', 'Saree Description', 'sub-category-imgages/1683802130.jpg', 1, '2023-05-11 04:48:50', '2023-05-11 04:48:50'),
(7, 2, 'Three Piece', 'Three Piece Description', 'sub-category-imgages/1683802460.jpg', 1, '2023-05-11 04:54:20', '2023-05-11 04:54:20'),
(8, 2, 'Lehenga', 'Lehenga Description', 'sub-category-imgages/1683802500.jpg', 1, '2023-05-11 04:55:00', '2023-05-11 04:55:00'),
(9, 2, 'Ladies Bag', 'Ladies Bag Description', 'sub-category-imgages/1683802816.jpg', 1, '2023-05-11 05:00:16', '2023-05-11 05:00:16'),
(10, 2, 'Ladies Watch', 'Ladies Watch Description', 'sub-category-imgages/1683807943.jpg', 1, '2023-05-11 06:25:43', '2023-05-11 06:25:43'),
(11, 2, 'Woman Shoes', 'Woman Shoes Description', 'sub-category-imgages/1683808030.jpg', 1, '2023-05-11 06:27:10', '2023-05-11 06:27:10'),
(12, 3, 'Aquirium Fish', 'Aquirium Fish Description', 'sub-category-imgages/1683808073.jpg', 1, '2023-05-11 06:27:53', '2023-05-11 06:27:53'),
(13, 3, 'Dog', 'Dog Description', 'sub-category-imgages/1683808110.jpg', 1, '2023-05-11 06:28:30', '2023-05-11 06:28:30'),
(14, 3, 'Cat', 'Cat Description', 'sub-category-imgages/1683808137.jpg', 1, '2023-05-11 06:28:57', '2023-05-11 06:28:57'),
(15, 3, 'Pigeon', 'Pigeon Description', 'sub-category-imgages/1683808521.jpg', 1, '2023-05-11 06:35:21', '2023-05-11 06:35:21'),
(16, 4, 'Cricket Ball', 'Cricket Ball Description', 'sub-category-imgages/1683808545.jpg', 1, '2023-05-11 06:35:45', '2023-05-11 06:35:45'),
(17, 4, 'Cricket Bat', 'Cricket Bat Description', 'sub-category-imgages/1683808571.jpg', 1, '2023-05-11 06:36:11', '2023-05-11 06:36:11'),
(18, 4, 'Phonix Cycel', 'Phonix Cycel Description', 'sub-category-imgages/1683808611.jpg', 1, '2023-05-11 06:36:51', '2023-05-11 06:36:51'),
(19, 5, 'Mobile', 'Mobile Description', 'sub-category-imgages/1683808634.jpg', 1, '2023-05-11 06:37:14', '2023-05-11 06:37:14'),
(20, 5, 'Freez', 'Freez Description', 'sub-category-imgages/1683808658.jpg', 1, '2023-05-11 06:37:38', '2023-05-11 06:37:38'),
(21, 5, 'TV', 'TV Description', 'sub-category-imgages/1683808688.jpg', 1, '2023-05-11 06:38:08', '2023-05-11 06:38:08'),
(22, 5, 'Laptop', 'Laptop  Description', 'sub-category-imgages/1683808794.jpg', 1, '2023-05-11 06:39:54', '2023-05-11 06:39:54'),
(23, 5, 'Selling Fan', 'Selling Fan Description', 'sub-category-imgages/1683808853.jpg', 1, '2023-05-11 06:40:53', '2023-05-11 06:40:53'),
(24, 6, 'Others', 'Others Description', 'sub-category-imgages/1683810707.jpg', 1, '2023-05-11 07:11:47', '2023-05-11 07:11:47'),
(25, 3, 'Fish', 'Fish Description', 'sub-category-imgages/1683810973.jpg', 1, '2023-05-11 07:16:13', '2023-05-11 07:16:13'),
(26, 4, 'Sports', 'Sports Description', 'sub-category-imgages/1683820495.jpg', 1, '2023-05-11 09:54:55', '2023-05-11 09:54:55');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Man Cloths', 'Man Cloths Description', 'unit-images/1683810379.jpg', 1, '2023-05-11 07:06:19', '2023-05-11 07:06:19'),
(2, 'Woman Cloths', 'Woman Cloths Description', 'unit-images/1683810404.jpg', 1, '2023-05-11 07:06:44', '2023-05-11 07:06:44'),
(3, 'Mobile', 'Mobile description', 'unit-images/1683810429.jpg', 1, '2023-05-11 07:07:09', '2023-05-11 07:07:09'),
(4, 'Laptop', 'Laptop Description', 'unit-images/1683810464.jpg', 1, '2023-05-11 07:07:44', '2023-05-11 07:07:44'),
(5, 'Fan', 'Fan Description', 'unit-images/1683810505.jpg', 1, '2023-05-11 07:08:25', '2023-05-11 07:08:25'),
(6, 'T-Shirt', 'T-Shirt Description', 'unit-images/1683810544.jpg', 1, '2023-05-11 07:09:04', '2023-05-11 07:09:04'),
(7, 'Shirt', 'Shirt Description', 'unit-images/1683810571.jpg', 1, '2023-05-11 07:09:31', '2023-05-11 07:09:31'),
(8, 'Lahenga', 'Lahenga Description', 'unit-images/1683810614.jpg', 1, '2023-05-11 07:10:14', '2023-05-11 07:10:14'),
(9, 'Three Piece', 'Three Piece Description', 'unit-images/1683810641.jpg', 1, '2023-05-11 07:10:41', '2023-05-11 07:10:41'),
(10, 'Animals', 'Animals Description', 'unit-images/1683810728.jpg', 1, '2023-05-11 07:12:08', '2023-05-11 07:12:08'),
(11, 'OThers', 'OThers Description', 'unit-images/1683810754.jpg', 1, '2023-05-11 07:12:34', '2023-05-11 07:12:34'),
(12, 'Pant', 'Pant Description', 'unit-images/1683810846.jpg', 1, '2023-05-11 07:14:06', '2023-05-11 07:14:06'),
(13, 'Panjabi', 'Panjabi Description', 'unit-images/1683810872.jpg', 1, '2023-05-11 07:14:32', '2023-05-11 07:14:32'),
(14, 'sports', 'sports Description', 'unit-images/1683820551.jpg', 1, '2023-05-11 09:55:51', '2023-05-11 09:55:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `user_type` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `user_type`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Lilla Wilderman', 'devan.okeefe@example.org', '2023-05-11 04:01:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '6gRcKX8jEg', NULL, NULL, 0, '2023-05-11 04:01:36', '2023-05-11 04:01:36'),
(2, 'Lily Keebler', 'keeling.loy@example.org', '2023-05-11 04:01:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'YGnFS3mSzu', NULL, NULL, 0, '2023-05-11 04:01:36', '2023-05-11 04:01:36'),
(3, 'Lucile Wilderman', 'bergstrom.eloisa@example.net', '2023-05-11 04:01:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'nARkBUyxVa', NULL, NULL, 0, '2023-05-11 04:01:36', '2023-05-11 04:01:36'),
(4, 'Westley Gottlieb', 'margaretta86@example.com', '2023-05-11 04:01:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'JrGTxz6qpV', NULL, NULL, 0, '2023-05-11 04:01:36', '2023-05-11 04:01:36'),
(5, 'Elisha Batz', 'flakin@example.com', '2023-05-11 04:01:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'wGlQ64tJmn', NULL, NULL, 0, '2023-05-11 04:01:36', '2023-05-11 04:01:36'),
(6, 'Yemin', 'yemin@gmail.com', NULL, '$2y$10$.X4jzYl4sp2VmW/AjzZP7OJOEDHlyK6UJs8W8Dok84L7eDWswYFI6', NULL, NULL, NULL, NULL, NULL, NULL, 2, '2023-05-15 23:41:55', '2023-05-15 23:41:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_phone_unique` (`phone`),
  ADD UNIQUE KEY `customers_nid_unique` (`nid`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `other_images`
--
ALTER TABLE `other_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `other_images`
--
ALTER TABLE `other_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

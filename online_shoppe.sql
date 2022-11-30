-- phpMyAdmin SQL Dump
-- version 5.2.0-rc1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th10 30, 2022 lúc 04:47 PM
-- Phiên bản máy phục vụ: 5.7.33
-- Phiên bản PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `online_shoppe`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_21_104521_create_tbl_category', 1),
(5, '2020_10_21_202006_create_tbl_brand', 1),
(6, '2020_10_21_220225_create_tbl_product', 1),
(7, '2020_10_26_060640_create_tbl_supplier', 1),
(8, '2020_11_06_121112_create_tbl_customer', 1),
(9, '2020_11_06_162230_create_tbl_bill_import', 1),
(10, '2020_11_06_162347_create_tbl_detail_bill_import', 1),
(11, '2020_11_22_163244_create_tbl_voucher', 1),
(12, '2020_11_22_163301_create_tbl_bill', 1),
(13, '2020_11_22_163321_create_tbl_detail_bill', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_bill`
--

CREATE TABLE `tbl_bill` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `voucher_id` int(10) UNSIGNED DEFAULT NULL,
  `total_Price` bigint(20) NOT NULL DEFAULT '0',
  `price_Checkout` bigint(20) NOT NULL DEFAULT '0',
  `date_create` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_bill`
--

INSERT INTO `tbl_bill` (`id`, `customer_id`, `name`, `address`, `phone`, `desc`, `voucher_id`, `total_Price`, `price_Checkout`, `date_create`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Tài khoản demo', 'Thôn kiêu sa', '0923745372', 'Em cần để học ngay', NULL, 22000000, 22000000, '2022-11-30', 2, '2022-11-30 09:45:52', '2022-11-30 09:46:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_bill_import`
--

CREATE TABLE `tbl_bill_import` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `supplier_id` int(10) UNSIGNED DEFAULT NULL,
  `total_Price` bigint(20) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_bill_import`
--

INSERT INTO `tbl_bill_import` (`id`, `user_id`, `supplier_id`, `total_Price`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 312000000, 1, '2022-11-30 09:42:55', '2022-11-30 09:43:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `desc` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`id`, `name`, `image`, `desc`, `status`, `created_at`, `updated_at`) VALUES
(1, 'MacBook', '1.png', '<p>Thương hiệu nổi tiếng của nước ngo&agrave;i</p>', 1, NULL, NULL),
(2, 'Lenovo', '2.png', '<p>Lenovo một h&atilde;ng gi&aacute; rẻ</p>', 1, NULL, NULL),
(3, 'asus', '3.jpg', '<p>asus đi đầu về m&aacute;y mỏng nhẹ</p>', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `desc` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`, `image`, `desc`, `status`, `created_at`, `updated_at`) VALUES
(1, 'MacBook pro', '1.jpeg', '<p>MacBook pro&nbsp;</p>', 1, NULL, NULL),
(2, 'Laptop giá rẻ', '2.png', '<p>Laptop gi&aacute; rẻ cho hssv</p>', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_Amount` bigint(20) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `email`, `password`, `name`, `phone`, `address`, `total_Amount`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'customer@123', '$2y$10$SkTOE/HUFVlV3ff6ppSqg.DbzseAlqIP5XKByl8aTD7119BTmrj6e', 'Nhật', '0704917152', 'long an', 0, 1, NULL, NULL, NULL),
(2, 'demo@gmail.com', '$2y$10$9WjfRw4JflvMniOSvKYa0uTPkpYem6BJzWWSBc81FA9EwGAqyYlEO', 'Tài khoản demo', '0923745372', 'Thôn kiêu sa', 0, 1, NULL, '2022-11-30 08:59:24', '2022-11-30 08:59:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_detail_bill`
--

CREATE TABLE `tbl_detail_bill` (
  `id` int(10) UNSIGNED NOT NULL,
  `bill_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `quantity` bigint(20) NOT NULL DEFAULT '0',
  `price` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_detail_bill`
--

INSERT INTO `tbl_detail_bill` (`id`, `bill_id`, `product_id`, `quantity`, `price`) VALUES
(2, 1, 1, 1, 22000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_detail_bill_import`
--

CREATE TABLE `tbl_detail_bill_import` (
  `id` int(10) UNSIGNED NOT NULL,
  `bill_import_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `quantity` bigint(20) NOT NULL DEFAULT '0',
  `price` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_detail_bill_import`
--

INSERT INTO `tbl_detail_bill_import` (`id`, `bill_import_id`, `product_id`, `quantity`, `price`) VALUES
(1, 1, 1, 6, 22000000),
(2, 1, 2, 10, 18000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `image_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci,
  `quantity` bigint(20) NOT NULL DEFAULT '0',
  `in_price` bigint(20) NOT NULL DEFAULT '0',
  `out_price` bigint(20) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `category_id`, `brand_id`, `image_1`, `image_2`, `desc`, `quantity`, `in_price`, `out_price`, `status`, `created_at`, `updated_at`) VALUES
(1, 'MacBook pro 2020', 1, 1, '1_1.jpg', '1_2.jpeg', '<p>MacBook pro 2020 một con m&aacute;y gi&aacute; kh&aacute; tốt, d&agrave;nh cho sinh vi&ecirc;n</p>', 5, 22000000, 22000000, 1, NULL, NULL),
(2, 'asus vivo', 2, 3, '2_1.jpg', '2_2.jpg', '<p>m&aacute;y t&iacute;nh mỏng nhẹ cho ae sinh vi&ecirc;n</p>', 10, 18000000, 20000000, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_supplier`
--

INSERT INTO `tbl_supplier` (`id`, `name`, `email`, `phone`, `address`, `status`, `created_at`, `updated_at`) VALUES
(2, 'shopee', 'shopee@gmail.com', '0935437253', '<p>Địa chỉ to&agrave;n quốc</p>', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_voucher`
--

CREATE TABLE `tbl_voucher` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` bigint(20) NOT NULL DEFAULT '0',
  `quantity` bigint(20) NOT NULL DEFAULT '0',
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cmnd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `cmnd`, `phone`, `avatar`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '$2y$10$9WjfRw4JflvMniOSvKYa0uTPkpYem6BJzWWSBc81FA9EwGAqyYlEO', 'Nhật', '301733153', '0704917152', 'nhat.jpg', 1, NULL, NULL, '2022-11-30 09:02:31');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_bill`
--
ALTER TABLE `tbl_bill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_bill_customer_id_foreign` (`customer_id`),
  ADD KEY `tbl_bill_voucher_id_foreign` (`voucher_id`);

--
-- Chỉ mục cho bảng `tbl_bill_import`
--
ALTER TABLE `tbl_bill_import`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_bill_import_user_id_foreign` (`user_id`),
  ADD KEY `tbl_bill_import_supplier_id_foreign` (`supplier_id`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_customer_email_unique` (`email`);

--
-- Chỉ mục cho bảng `tbl_detail_bill`
--
ALTER TABLE `tbl_detail_bill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_detail_bill_bill_id_foreign` (`bill_id`),
  ADD KEY `tbl_detail_bill_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `tbl_detail_bill_import`
--
ALTER TABLE `tbl_detail_bill_import`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_detail_bill_import_bill_import_id_foreign` (`bill_import_id`),
  ADD KEY `tbl_detail_bill_import_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_product_category_id_foreign` (`category_id`),
  ADD KEY `tbl_product_brand_id_foreign` (`brand_id`);

--
-- Chỉ mục cho bảng `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_voucher`
--
ALTER TABLE `tbl_voucher`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_bill`
--
ALTER TABLE `tbl_bill`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_bill_import`
--
ALTER TABLE `tbl_bill_import`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_detail_bill`
--
ALTER TABLE `tbl_detail_bill`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_detail_bill_import`
--
ALTER TABLE `tbl_detail_bill_import`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_voucher`
--
ALTER TABLE `tbl_voucher`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_bill`
--
ALTER TABLE `tbl_bill`
  ADD CONSTRAINT `tbl_bill_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`),
  ADD CONSTRAINT `tbl_bill_voucher_id_foreign` FOREIGN KEY (`voucher_id`) REFERENCES `tbl_voucher` (`id`);

--
-- Các ràng buộc cho bảng `tbl_bill_import`
--
ALTER TABLE `tbl_bill_import`
  ADD CONSTRAINT `tbl_bill_import_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `tbl_supplier` (`id`),
  ADD CONSTRAINT `tbl_bill_import_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `tbl_detail_bill`
--
ALTER TABLE `tbl_detail_bill`
  ADD CONSTRAINT `tbl_detail_bill_bill_id_foreign` FOREIGN KEY (`bill_id`) REFERENCES `tbl_bill` (`id`),
  ADD CONSTRAINT `tbl_detail_bill_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`);

--
-- Các ràng buộc cho bảng `tbl_detail_bill_import`
--
ALTER TABLE `tbl_detail_bill_import`
  ADD CONSTRAINT `tbl_detail_bill_import_bill_import_id_foreign` FOREIGN KEY (`bill_import_id`) REFERENCES `tbl_bill_import` (`id`),
  ADD CONSTRAINT `tbl_detail_bill_import_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`);

--
-- Các ràng buộc cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `tbl_brand` (`id`),
  ADD CONSTRAINT `tbl_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

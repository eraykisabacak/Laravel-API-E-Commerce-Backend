-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 05 Nis 2020, 12:33:06
-- Sunucu sürümü: 8.0.17
-- PHP Sürümü: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `laraveleticaret`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin_kullanicilaris`
--

CREATE TABLE `admin_kullanicilaris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `admin_kullanicilaris`
--

INSERT INTO `admin_kullanicilaris` (`id`, `status`, `name`, `email`, `role`, `created_at`, `updated_at`) VALUES
(1, 1, 'Eray', 'eraykisabacak@hotmail.com', 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `adres`
--

CREATE TABLE `adres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tc_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `adres`
--

INSERT INTO `adres` (`id`, `customer_id`, `status`, `type`, `name`, `address`, `city`, `tc_no`, `mobile`, `phone`, `created_at`, `updated_at`) VALUES
(1, 10, 1, 'Ev', 'Ev Adres', 'Turkey', 'Istanbul', '68616516165', '61651981984', '91919898989', '2020-04-03 19:04:37', '2020-04-03 19:04:37'),
(2, 9, 1, 'Ev Adresi', 'Hakkinin Evi', 'Türkiye Ankara', 'Ankara', '74185274185', '05555555555', '05555555555', '2020-04-04 10:34:14', '2020-04-04 10:34:14');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `description`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Market', 0, 'Market Ürünleri', 'https://www.marketingturkiye.com.tr/wp-content/uploads/2019/03/market.jpg', NULL, '2020-04-04 11:09:05'),
(2, 'Telefon', 1, 'Telefon, Akıllı Telefon SmartPhone', 'https://images-na.ssl-images-amazon.com/images/I/712FrYrG05L._AC_SL1500_.jpg', NULL, '2020-04-05 06:30:08'),
(3, 'Fotograf Makinesi', 1, 'Fotograf Makinesi', 'https://images-na.ssl-images-amazon.com/images/I/91CdhsQNSXL._AC_SX679_.jpg', '2020-03-29 07:57:47', '2020-04-04 11:13:03'),
(4, 'Yazılım', 1, 'Yazılım Ürünleri', 'https://img-trendyol.mncdn.com/mnresize/400/-/assets/product/images2/20190919/10/249543/56749254/1/1_org_zoom.jpg', '2020-03-30 13:05:25', '2020-03-30 13:05:25'),
(5, 'Bilgisayar', 1, 'Bilgisayar', 'Bilgisayar', '2020-03-31 15:15:05', '2020-03-31 15:15:05'),
(7, 'Moda', 1, 'Moda Giyim', 'https://statics.boyner.com.tr/contents/images/dis-giyim(2).jpg', '2020-04-04 11:41:25', '2020-04-04 11:41:25'),
(8, 'Akıllı Saat', 0, 'Akıllı Saat', 'https://images-na.ssl-images-amazon.com/images/I/61yIuX-0DeL._AC_SL1500_.jpg', '2020-04-05 06:34:45', '2020-04-05 06:34:45'),
(9, 'Oyun Konsolu', 1, 'Oyun Konsolu', 'https://reimg-teknosa-cloud-prod.mncdn.com/mnresize/600/600/productimage/125088306/125088306_5_MC/8830925996082_1583990019559.jpg', '2020-04-05 06:35:28', '2020-04-05 06:35:28');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_03_18_201653_create_uruns_table', 2),
(4, '2020_03_18_201713_create_categorys_table', 2),
(5, '2020_03_18_201723_create_musteris_table', 2),
(6, '2020_03_18_201733_create_adress_table', 2),
(7, '2020_03_18_201741_create_sepets_table', 2),
(8, '2020_03_18_201753_create_sepetelemanlaris_table', 2),
(9, '2020_03_18_201804_create_adminkullanicilaris_table', 2),
(10, '2020_03_18_201817_create_rols_table', 2),
(11, '2020_03_18_201827_create_rolyetkileris_table', 2),
(12, '2020_03_19_084217_create_categories_table', 3),
(13, '2020_03_19_085627_create_adres_table', 4),
(14, '2020_03_19_091324_create_admin_kullanicilaris_table', 5),
(15, '2020_04_03_220208_create_adres_table', 6),
(16, '2020_04_04_114722_create_sepet_elemanlaris_table', 7);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `musteris`
--

CREATE TABLE `musteris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `musteris`
--

INSERT INTO `musteris` (`id`, `name`, `status`, `email`, `mobile`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Eray', 0, 'eray@eray.com', '05454554', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `rols`
--

CREATE TABLE `rols` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `rolyetkileris`
--

CREATE TABLE `rolyetkileris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sepets`
--

CREATE TABLE `sepets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `shipping_address_id` int(11) NOT NULL,
  `billing_address_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `sepets`
--

INSERT INTO `sepets` (`id`, `status`, `customer_id`, `total_amount`, `shipping_address_id`, `billing_address_id`, `created_at`, `updated_at`) VALUES
(8, 1, 9, 3150, 2, 2, '2020-04-04 10:34:35', '2020-04-04 10:34:35'),
(9, 1, 10, 230, 1, 1, '2020-04-05 08:19:58', '2020-04-05 08:19:58');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sepet_elemanlaris`
--

CREATE TABLE `sepet_elemanlaris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `basket_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `sepet_elemanlaris`
--

INSERT INTO `sepet_elemanlaris` (`id`, `basket_id`, `product_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(9, 8, 13, 1, 3000, '2020-04-04 10:34:36', '2020-04-04 10:34:36'),
(10, 8, 6, 1, 150, '2020-04-04 10:34:36', '2020-04-04 10:34:36'),
(11, 9, 11, 1, 80, '2020-04-05 08:19:59', '2020-04-05 08:19:59'),
(12, 9, 6, 1, 150, '2020-04-05 08:19:59', '2020-04-05 08:19:59');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uruns`
--

CREATE TABLE `uruns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `uruns`
--

INSERT INTO `uruns` (`id`, `name`, `category_id`, `status`, `price`, `stock`, `description`, `photo`, `created_at`, `updated_at`) VALUES
(3, 'Sony Xperia XZ', 2, 0, 2500, 10, 'Sony Xperia XZ 32 GB Akıllı Telefon', 'https://cdn.vatanbilgisayar.com/Upload/PRODUCT/SONY/thumb/v2-83603_small.jpg', '2020-03-29 05:41:18', '2020-04-05 08:24:13'),
(4, 'Sennheiser Momentum True Wireless Kulaklık', 5, 1, 1700, 10, 'Sennheiser Momentum True Wireless Kulaklık', 'https://productimages.hepsiburada.net/s/23/500/10060027625522.jpg', '2020-03-29 06:46:07', '2020-04-05 06:28:40'),
(5, 'Dezenfektan', 1, 1, 60, 10, 'Dermosept El Dezenfektanı 1000 ML', 'https://cdn.dsmcdn.com/assets/dev/product/media/images/20200323/15/107/66284958/1/1_org_zoom.jpg', '2020-03-29 08:11:58', '2020-04-04 11:22:57'),
(6, 'Microsoft Office', 4, 1, 150, 10, 'Microsoft Office Yazılımı', 'https://img-trendyol.mncdn.com/mnresize/400/-/assets/product/images2/20190919/10/249543/56749254/1/1_org_zoom.jpg', '2020-03-30 13:07:04', '2020-03-30 13:07:04'),
(11, 'Siyah Koruyucu Maske (COVID-19)', 1, 1, 80, 10, 'Tarz Siyah maske İmaj Hijyen #EVDEKAL', 'https://n11scdn.akamaized.net/a1/450/otomotiv-motosiklet/maske-ve-balaklava/toz-maskesi-3-adet-koruyucu-tarz-siyah-maske-imaj-hijyen__0829911751373914.jpg', '2020-03-31 15:10:29', '2020-04-04 11:32:51'),
(12, 'Apple MacBook Pro 16', 5, 1, 15000, 2, 'Apple Macbook Pro 16 inch', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTEwyWk9l9saRLZRiR0tNyUjgHeAHfc5PhVkwOAFk8bHTFbPXSLbg&usqp=CAc', '2020-03-31 15:11:27', '2020-04-04 11:31:16'),
(13, 'Dell Notebook', 5, 0, 3000, 10, 'Dell Notebook Insprion', 'https://cdn.akakce.com/dell/dell-inspiron-7567-4b70d128f161c-i7-7700hq-16-gb-1-tb-gtx-1050-ti-15-6-z.jpg', '2020-03-31 15:12:20', '2020-04-05 06:28:48'),
(15, 'iPhone 11 128 GB', 2, 1, 7200, 3, 'iPhone 11 128 GB', 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcTlv5bVd6MToZtGu7gMhqHP38QkJU9AycXs74C3MOTtWgGZfGxonQ&usqp=CAc', '2020-03-31 15:30:20', '2020-04-04 12:04:41'),
(16, 'Tuvalet Kağıdı', 1, 1, 50, 10, 'Solo Tuvalet Kağıdı', 'https://cdn.dsmcdn.com/assets/dev/product/media/images/20200326/14/430345/13609709/1/1_org_zoom.jpg', '2020-03-31 15:32:30', '2020-04-04 11:21:20'),
(17, 'Eyüp Sabri Tuncer Limon Kolonyası 400 Ml', 1, 1, 30, 12, 'Eyüp Sabri Tuncer Limon Kolonyası 400 Ml #EVDEKAL', 'https://cdn03.ciceksepeti.com/cicek/kcx59904516/XL/eyup-sabri-tuncer-cesme-limonu-kolonya-16-ml.jpeg', '2020-03-31 16:03:45', '2020-04-04 11:34:18'),
(18, 'Canon EOS RP', 3, 1, 15000, 99, 'Canon Eos Rp + 24-105MM Is Usm', 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSxDt9LB7W-AaW4vGNvqhvb0LkRLkSNGy2GvV2G_-EiswGvmirKsg&usqp=CAc', '2020-03-31 17:02:33', '2020-04-04 11:30:17'),
(19, 'Columbia Wm1521 Cascade Peak™ II Jacket Mont', 7, 1, 1000, 5, 'Columbia Wm1521 Cascade Peak™ II Jacket Mont', 'https://statics.boyner.com.tr/mnresize/900/1254/productimages/5002479195_001_01.jpg', '2020-04-04 11:42:16', '2020-04-04 11:42:16'),
(20, 'Playstation 4', 9, 1, 5000, 10, 'Playstation 4', 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcStCqfEOh_ApEJWmwaD1dvojs7Fv_5DW7w_IrkSpnrun0OMEyQR3D8&usqp=CAc', '2020-04-05 08:16:16', '2020-04-05 08:16:42');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
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
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(7, 'Eray', 'eray@eray.com', NULL, '123456', NULL, '2020-03-28 17:36:12', '2020-03-28 17:36:12'),
(9, 'Hakkı', 'hakki@hak.com', NULL, '$2y$10$SABWPZozBeaq7dGrhUr.Q.iLIOeZVpmFOU3BV4CmUDcszjcQkI5iu', NULL, '2020-04-02 14:30:17', '2020-04-02 14:30:17'),
(10, 'hakan', 'hakan@hakan.com', NULL, '$2y$10$H/opWxNeUIvsccasBNJWf.sLDi0FiOWAIhz86k.PiXhCfc3pPrwI6', NULL, '2020-04-02 18:09:49', '2020-04-02 18:09:49'),
(11, 'Mustafa', 'mustafa@mus.com', NULL, '$2y$10$78lupLW3TKvaCemAJcOMmOocZ2.1wAWGCmu9.NYtrmwN8oNDyZts6', NULL, '2020-04-03 13:03:13', '2020-04-03 13:03:13'),
(12, 'ali eray kısabacak', 'eraykisabacak@hotmail.com', NULL, '$2y$10$LPuNo.vF4S/z4hbjSjidv.IqcERC3zQJPcmZKmoRtpVKYC9dQ0uIO', NULL, '2020-04-03 13:14:36', '2020-04-03 13:14:36');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin_kullanicilaris`
--
ALTER TABLE `admin_kullanicilaris`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `adres`
--
ALTER TABLE `adres`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `musteris`
--
ALTER TABLE `musteris`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `rols`
--
ALTER TABLE `rols`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `rolyetkileris`
--
ALTER TABLE `rolyetkileris`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sepets`
--
ALTER TABLE `sepets`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sepet_elemanlaris`
--
ALTER TABLE `sepet_elemanlaris`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `uruns`
--
ALTER TABLE `uruns`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin_kullanicilaris`
--
ALTER TABLE `admin_kullanicilaris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `adres`
--
ALTER TABLE `adres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `musteris`
--
ALTER TABLE `musteris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `rols`
--
ALTER TABLE `rols`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `rolyetkileris`
--
ALTER TABLE `rolyetkileris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `sepets`
--
ALTER TABLE `sepets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `sepet_elemanlaris`
--
ALTER TABLE `sepet_elemanlaris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `uruns`
--
ALTER TABLE `uruns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

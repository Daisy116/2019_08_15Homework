-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2019 年 08 月 21 日 10:42
-- 伺服器版本： 10.3.16-MariaDB
-- PHP 版本： 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `bulletin_board`
--

-- --------------------------------------------------------

--
-- 資料表結構 `bulletin__boards`
--

CREATE TABLE `bulletin__boards` (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT '公告編號',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '標題',
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '公告單位',
  `release_time` date NOT NULL DEFAULT current_timestamp() COMMENT '發布時間',
  `position_in` varchar(10) CHARACTER SET utf8 DEFAULT '無' COMMENT '職稱',
  `quota` varchar(5) CHARACTER SET utf8 DEFAULT '無' COMMENT '名額',
  `qualifications` text CHARACTER SET utf8 DEFAULT '' COMMENT '資格',
  `email` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '無' COMMENT '聯絡方式',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '建立時間',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '更新時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `bulletin__boards`
--

INSERT INTO `bulletin__boards` (`id`, `title`, `department`, `release_time`, `position_in`, `quota`, `qualifications`, `email`, `created_at`, `updated_at`) VALUES
(1, '本部會計處臨時人員職缺甄選公告(二)', '人事處', '2019-08-13', '專業助理', '11名', '（一）公立或立案之私立獨立學院以上學校，或符合教育部採認 規定之國外獨立學院以上學校商業及管理學門科系畢業， 得有學士學位證。\r\n（二）公立或立案之私立專科學校，或符合教育部採認規定之國 外專科學校商業及管理學門科系畢業得有證書，並具有與擬任工作性質相近之工作經驗二年以上。', 'travis0719@mail.moe.gov.tw', '2019-08-14 01:52:18', '2019-08-14 05:57:13'),
(2, '本部會計處臨時人員職缺甄選公告(一)', '人事處', '2019-08-13', '行政助理', '3名', '（一）公立或立案之私立專科學校或符合教育部採認規定之國外 專科學校商業及管理學門科系畢業得有證書者。 \r\n（二）公立或立案之私立高級中等學校商業及管理學門科系畢業 得有證書，並具有與擬任工作性質相近之工作經驗二年以上者。', 'travis0719@mail.moe.gov.tw', '2019-08-14 01:52:49', '2019-08-14 06:34:05'),
(3, '本部國際及兩岸教育司臨時人員職缺甄選公告(二)', '人事處', '2019-08-12', '專業助理', '8名', '（一）公立或立案之私立獨立學院以上學校，或符合教育部採認 規定之國外獨立學院以上學校各所系科畢業，得有學士學位證書者。\r\n（二）公立或立案之私立專科學校，或符合教育部採認規定之國外專科學校畢業得有證書，並具有與擬任工作性質相近之工作經驗2年以上者。', 'lian@mail.moe.gov.tw', '2019-08-14 01:53:16', '2019-08-14 06:41:16'),
(4, '108學年「高級中等學校公務與調查統計報表編製手冊」上線', '統計處', '2019-08-07', '無', '無', '1.配合行政減量之「各級學校的調查平臺逐漸整合」及「教育訓練、研習及說明會簡化」政策，本（108）學年「高級中等學校統計業務及系統說明研習會」併同「教育資源概況分布調查」、「全國高級中等學校及國立特殊教育學校學生學籍申報」及「臺灣後期中等教育長期追蹤資料庫學生問卷調查」，聯合辦理「全國高級中等學校統計及填報業務聯合說明會」。\r\n\r\n2.原臺北市政府教育局與高雄市政府教育局每學年定期舉行之轄屬高級中等學校「統計業務研習會」，本學年亦與聯合說明會合併辦理。\r\n\r\n3.本學年全國高級中等學校統計及填報業務聯合說明會分為北、中、南三區舉辦，每區依研習課程不同分四梯次，地點及時間分別為：北區國立臺灣師範大學8月6~8日，中區玄奘大學8月13~15日，南區高雄市立前鎮高級中學8月20~22日。\r\n\r\n4.各項填報業務訊息及「108學年高級中等學校公務與調查統計報表編製手冊」，請由本部統計處首頁左側之「各級學校網路填報」→「高級中等學校」進入，下載參用。\r\n', 'dwyane03@mail.moe.gov.tw', '2019-08-13 18:35:20', '2019-08-14 06:44:24'),
(19, 'ㄊㄊㄊㄨ', 'ㄚㄚㄚ一', '2019-07-16', '無', '無', '', '無', '2019-08-13 23:22:13', '2019-08-13 23:39:10'),
(20, 'ㄨㄨㄨ', 'ㄐㄐㄐ', '2019-07-01', '無', '無', '', '無', '2019-08-13 23:22:50', '2019-08-13 23:22:50'),
(24, '黑', '人', '2019-08-14', '無', '無', '', '無', '2019-08-13 23:45:59', '2019-08-13 23:52:08'),
(25, 'zzz111', 'qqq', '2019-08-14', '無', '無', NULL, '無', '2019-08-13 23:49:58', '2019-08-14 00:46:51'),
(30, 'ttt', 'ㄔ吃ㄔ', '2019-08-14', '無', '無', '.........................................................................................................', '無', '2019-08-14 00:18:04', '2019-08-14 00:18:04'),
(31, 'ddddd', 'ㄎ ㄎㄎ', '2019-08-14', '無', '無', 'eeeeeeeeeeerrrrrrrrrrrrrrrrrrrrrrwwwwwwww', '無', '2019-08-14 00:18:33', '2019-08-14 00:20:50'),
(32, 'ssssss', 's3', '2019-08-14', '無', '無', 'rrrrrrrrrrrrrrr', 'wewe070707@gmail.c', '2019-08-14 00:23:38', '2019-08-14 00:26:44'),
(33, 'ssssssssss', 's4', '2019-08-14', '無', '無', NULL, 'DEXY596@yahoo.com.tw', '2019-08-14 00:23:55', '2019-08-14 00:26:11'),
(35, 'aaa', 'sss', '2019-07-05', '無', '無', NULL, NULL, '2019-08-14 00:44:20', '2019-08-14 00:44:56');

-- --------------------------------------------------------

--
-- 資料表結構 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_14_014037_create_bulletin__boards_table', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `bulletin__boards`
--
ALTER TABLE `bulletin__boards`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `bulletin__boards`
--
ALTER TABLE `bulletin__boards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '公告編號', AUTO_INCREMENT=36;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

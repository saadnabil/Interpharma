-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 30, 2022 at 09:32 AM
-- Server version: 5.7.23-23
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newinter_interpharma`
--

-- --------------------------------------------------------

--
-- Table structure for table `availabilities`
--

CREATE TABLE `availabilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `availabilities`
--

INSERT INTO `availabilities` (`id`, `city`, `address`, `phone`, `created_at`, `updated_at`) VALUES
(3, 'مرسى مطروح', 'صيدليات هدى  سطيحة  مراد  الحلوانى', '0000', '2021-04-28 19:26:01', '2022-08-24 22:40:13'),
(4, 'القاهرة شرق', 'صيدليات بدير ( وفاء عبدالحميد )  ب  عين شمس الشرقية  -  جسر السويس  -  النزهة  و عزبة النخل', '01017333189', '2021-04-28 19:26:47', '2022-08-25 00:33:51'),
(5, 'القاهرة', 'ال عبد اللطيف الطرشوبى', '19121', '2021-04-28 19:28:06', '2022-08-24 22:36:09'),
(6, 'القاهرة غرب', 'صيدليات كيان  ب  حلوان & الهرم & زايد & الشيراتون', '16626   الخط الساخن', '2022-08-24 23:43:36', '2022-08-25 00:34:35'),
(7, 'سوهاج', 'صيدليات اسلام فتحى', '16153', '2022-08-24 23:48:21', '2022-08-24 23:48:21'),
(8, 'المنصورة', '16130 صيدليات ال عبد اللطيف الطرشوبى 19121 و وليد الطرشوبى', '16130  &  19121', '2022-08-24 23:51:04', '2022-08-24 23:51:04'),
(9, 'بورسعيد', '16130 صيدليات ال عبد اللطيف الطرشوبى 19121 و وليد الطرشوبى', '16130  &  19121', '2022-08-24 23:52:46', '2022-08-24 23:52:46'),
(10, 'اسيوط', 'صيدليات خليل', '16729', '2022-08-24 23:54:59', '2022-08-24 23:54:59'),
(11, 'بنها العبور الشيخ زايد', 'صيدليات العماوى', '15656', '2022-08-24 23:56:53', '2022-08-24 23:56:53'),
(12, 'الاسكندرية', 'صيدليات اسامة الطيبى16840 و الدواء15252 و بلبع 15967 و البيسى15447 و عاصم المنفى15811 و خليل19040', '19040  &  15811  &  15447  &  15967  &  15252  &  16840', '2022-08-25 00:17:31', '2022-08-25 00:17:31'),
(13, 'اسوان', 'صيدليات صلاح الدين & د مينا & دمحمد السيد & فاطمة على  & منال & المدينة المنورة و صيدلية سماح', '000', '2022-08-25 00:20:47', '2022-08-25 00:20:47'),
(14, 'كوم امبو', 'صيدلية الدكتورة شيماء طاهر', '01116073313', '2022-08-25 00:21:49', '2022-08-25 00:21:49'),
(15, 'اسيوط', 'صيدليات الاجزخانة  (31 فرع باسيوط)', '01030317292', '2022-08-25 00:23:32', '2022-08-25 00:23:32'),
(16, 'الاسماعيلية', 'صيدليات د ماريو  حي السلام في شارع العشريني امام محمصة جمال', '01205060333', '2022-08-25 00:25:28', '2022-08-25 00:25:28'),
(17, 'الاسماعيلية', 'صيدليات د شيماء علام ا لاسماعيلية مدينة القنطرة غرب صيدلية شيماء علام', '01016929742', '2022-08-25 00:27:15', '2022-08-25 00:27:15'),
(18, 'الاقصر', 'صيدلية د حسين النوبى مدينة إسنا - شارع النزهه بجوار مسجد الزهراء', '0115656806', '2022-08-25 00:28:48', '2022-08-25 00:28:48'),
(19, 'سوهاج', 'صيدليه دكتور اسلام فتحي شارع اسيوط سوهاج ابراج الشرق للتامين امام بنزينه المؤسسه', '16153', '2022-10-01 16:37:47', '2022-10-01 16:37:47'),
(20, 'بني سويف', 'صيدليه دكتوره منار شعبان بنى سويف الواسطى امام الكوبرى العلوى', '01014403080', '2022-10-02 14:01:07', '2022-10-02 14:21:39'),
(21, 'قنا', 'بجوار كشري زيزو  CIBصيدليه  دكتور مصطفي محمد قنا - مدخل الكورنيش بجوار بنك', '01000830489', '2022-10-02 14:12:27', '2022-10-02 14:21:18'),
(22, 'السويس', 'صيدليه الجمل شارع هدي الشعراوي بجوار بريد السويس', '01226119771', '2022-10-02 14:16:25', '2022-10-02 14:16:25'),
(23, 'الاقصر', 'صيدليه دكتور حسين النوبي مدينة إسنا - شارع النزهه بجوار مسجد الزهراء', '0115656806', '2022-10-02 14:18:03', '2022-10-02 14:20:47'),
(24, 'القاهرة (المقطم )', 'صيدليه امون المقطم 3 عمارات الانشاء والتعمير محل رقم 3', '01008208620', '2022-10-02 14:19:04', '2022-10-02 14:19:04'),
(25, 'القاهرة ( الهرم )', 'صيدليه دكتورامير امين 4 ابراج السلام شارع رمزي فرج من شارع الهرم محطة حسن محمد', '01011353673', '2022-10-02 14:20:28', '2022-10-02 14:20:28'),
(26, 'عين شمس', 'صيدليه  ايمن واسلام شارع المنشية التحرير رقم 42 عين شمس الشرقية امام مؤسسة الحرية', '01006319121', '2022-10-02 14:24:01', '2022-10-02 14:24:01'),
(27, 'بنها', 'صيدلية العماوي بنها كفر الجزار بجوار هايبر شمس', '15656', '2022-10-02 14:25:10', '2022-10-02 14:25:10'),
(28, 'مدينة نصر', 'صيدلية الشيماء بلوك 69 عمارة واحد مساكن صقر قريش مدينة نصر بجوار جراح عربي محطة المثلث', '01125784030', '2022-10-02 14:27:27', '2022-10-02 14:27:27'),
(29, 'الهرم', 'صيدلية دكتوره لمياء السيدالعنوان 34ش الدكتور حموده من زغلول مريوطية الهرم', '01227929600', '2022-10-02 14:36:54', '2022-10-02 14:36:54'),
(30, 'بحيرة', 'صيدلية دكتوره إيمان عبد الجواد الدلنجات بجوار كوبرى المركز امام سفارى كافيه', '01014094072', '2022-10-02 14:39:00', '2022-10-02 14:39:00'),
(31, 'قنا', 'صيدلية  محمود وعلي قنا نجع حمادي شارع المحطة امام بنك القاهرة', '01005381368', '2022-10-02 14:43:28', '2022-10-02 14:43:28'),
(32, 'المنيا', 'صيدليه دكنوره نجلاء علام  مدينة المنيا - الاخصاص - خلف مدينة الطالبات', '01022285737 -01064086705', '2022-10-02 14:45:06', '2022-10-02 14:45:06'),
(33, 'المنيا', 'صيدلية دكتوره سارة الجديد امام مطاحن دماريس', '01033774888', '2022-10-02 14:46:25', '2022-10-02 14:46:25'),
(34, 'القاهرة', 'صيدلية دكنور ابرام العنوان 12 ش الكمال امام مكتب بريد حلميه الزيتون', '01222932843', '2022-10-02 14:48:02', '2022-10-02 14:48:02'),
(35, 'الشرقية', 'صيدلية البقريالشرقية اولاد صقر شارع البحر بجوار حلواني المصري', '01068720765', '2022-10-02 14:49:40', '2022-10-02 14:49:40'),
(36, 'البحيره', 'صيدلية عمرو زكريا بجوار شاومول', '3331515_0155233155', '2022-10-02 14:55:55', '2022-10-02 14:55:55'),
(37, 'اسكندرية العامرية', 'صيدلية دكتور يحيي العامرية جنب مستشفي العامرية العامة', '457426703', '2022-10-02 14:57:01', '2022-10-02 14:57:01'),
(38, 'مقطم', 'صيدليه بيت العافية المقطم شارع الرضا والنور متفرع من شارع 9 قطعة 8600', '01156604411', '2022-10-02 14:58:17', '2022-10-02 14:58:17'),
(39, 'اسيوط', 'صيدليات خليل اسيوط تقسيم البترول امام ارامكس صيدلية شيماء مصطفي', '16729_01003604572', '2022-10-02 14:59:29', '2022-10-02 14:59:29'),
(40, 'اسوان', 'صيدلية دكنور مينا ادفو في شارع السوق', '20 127 7225985', '2022-10-02 15:00:34', '2022-10-02 15:05:50'),
(41, 'اسوان', 'صيدليه صلاح الدين إدفو بشارع المركز', '20 121 0020085', '2022-10-02 15:05:22', '2022-10-02 15:05:22'),
(42, 'اسوان', 'صيدليه دكنوره سماح نجع هلال ادفو', '0110 1008558', '2022-10-02 15:07:48', '2022-10-02 15:07:48'),
(43, 'اسوان', 'صيدلية دكتور محمد السيد الشيخ علي طريق القاهره اسوان', '20 111 35585492', '2022-10-02 15:08:53', '2022-10-02 15:08:53'),
(44, 'اسوان', 'صيدلية دكتور محمد السيد الشيخ علي طريق القاهره اسوان', '20 111 35585492', '2022-10-02 15:08:54', '2022-10-02 15:08:54'),
(45, 'اسوان', 'دكنور فاطمه علي طريق مصر اسوان الزراعي المفالسه', '01127599622', '2022-10-02 15:11:29', '2022-10-02 15:11:29'),
(46, 'القاهرة', 'صيدلية سام ورام الهضبه الوسطي بالمقطم ( حلوان - وسط البلد - الجيزة - امبابة )', '01050466806', '2022-10-02 15:12:31', '2022-10-02 15:12:31'),
(47, 'اسوان ( كوم امبو)', 'صيدلية دكتوره شيماء طاهرشارع 26 يوليو مطلع الكوبري بجوار بنك الاسكندرية', '01116073313', '2022-10-02 15:56:54', '2022-10-02 15:56:54'),
(48, 'اسوان', 'صيدلية دكتوره منال شارع الكورنيش ادفو', '01158379000', '2022-10-02 15:58:14', '2022-10-02 15:58:14'),
(49, 'اسوان', 'صيدلية المدينة المنورة شارع الكورنيش ادفو', '01141562226', '2022-10-02 15:59:07', '2022-10-02 15:59:07'),
(50, 'المنوفية', 'صيدلية الامانه صيدناوي اشمون المنوفية', '01066226098', '2022-10-02 16:00:06', '2022-10-02 16:00:06'),
(51, 'عين شمس الغربية', 'صيدلية صموئيل صبحي عين شمس الغربية اخر شارع المشروع', '01150841101', '2022-10-02 16:01:57', '2022-10-02 16:01:57'),
(52, 'القاهرة المرج الجديدة', 'صيدلية الشيخ خليل القلج بعد المرج الجديدة شارع الشيخ خليل امام مسجد الشيخ خليل', '01066581781', '2022-10-02 16:02:47', '2022-10-02 16:02:47'),
(53, 'فيصل', 'صيدلية دكتور مصطفي نبيل صيدلية مصطفي الريان 18 ش نبيل طه متفرع من المطبعة فيصل', '01000064468', '2022-10-02 16:03:33', '2022-10-02 16:04:06'),
(54, 'القليوبية', 'صيدلية دكتورعماد عبدالعزيز القليوبية قرية كفر الحوالة تابع لمركز القناطر', '01221570496', '2022-10-02 16:05:20', '2022-10-02 16:05:20'),
(55, 'القاهرة', 'صيدلية دكتوره دينا القاهرة - فيصل طريق المنشية شارع محمد صلاح', '01018558932', '2022-10-02 18:30:51', '2022-10-02 18:30:51'),
(56, 'المنوفية', 'صدلية بازيد  المنوفية اشمون - شارع الجلاء', '01091244220 - 0483442420', '2022-10-02 18:32:07', '2022-10-02 18:32:07'),
(57, 'المنيل - القصر العيني', 'صيدليات فايق العنوان 81 ش المنيل امام بنك القاهرة الجديد', '01141193536- 01001376687', '2022-10-02 18:33:02', '2022-10-02 18:33:02'),
(58, 'امبابة', 'صيدلية خلود 11 شارع امبابة الرياضي قدام فتح سليم للاحذية', '01017908908', '2022-10-02 18:34:01', '2022-10-02 18:34:01'),
(59, 'الغربية', 'صيدلية الشيخ الغربية قرية بلتاج مركز قطور', '01015221011', '2022-10-02 18:35:08', '2022-10-02 18:35:08'),
(60, 'القاهرة', 'صيدليات بدير ( وفاء عبدالحميد ) عين شمس الشرقية - جسر السويس - النزهة - عزبة النخل', '01017333189', '2022-10-02 18:35:55', '2022-10-02 18:35:55'),
(61, 'سوهاج', 'صيدلية الشاذلي سوهاج مركز دار السلام', '01221269522', '2022-10-02 18:37:24', '2022-10-02 18:37:24'),
(62, 'القاهره', 'صيدلية دكتور ابو هاشم العنوان 168 ش المريوطية من عثمان محرم - بجوار بيتزا بين القصرين الهرم', '01007476986', '2022-10-02 18:38:20', '2022-10-02 18:39:55'),
(63, 'القاهره', 'صيدلية دكتور مرادهرم - فيصل - مهندسين', '01001600997', '2022-10-02 18:41:13', '2022-10-02 18:41:13'),
(64, 'القاهرة', 'صيدلية النجار 22 برج النور المريوطية فيصل', '01006155155', '2022-10-02 18:43:13', '2022-10-02 18:43:13'),
(65, 'الدقهلية', 'صيدلية دكتوره اسماء رزق الدقهلية نبروه شارع البحر عند الكوبري العالي', '01068256895', '2022-10-02 18:44:20', '2022-10-02 18:45:01'),
(66, 'اسيوط', 'صيدلية اجزخانة ول شارع محمود رشوان أمام الوطنيه مول اول تفرع _الأزهر مساكن الأزهر -عماره ٣ ن - أول عمارة  أمام مستشفي الأزهر _تقسيم الحقوقيين - امام مستشفي السلامه', '01030317292', '2022-10-02 18:52:37', '2022-10-02 18:53:14'),
(67, 'الاسماعيلية', 'صيدلية دكتور شيماء علام  الاسماعيلية مدينة القنطرة غرب', '01016929742', '2022-10-02 18:55:01', '2022-10-02 18:55:01'),
(68, 'المقطم', '‎صيدلية د. مجدي عفيفي المقطم - ق٩٤٦٨ - شارع كريم بنونة - أمام مدرسة نوبل', '01003050570_ 01009276746', '2022-10-02 18:58:31', '2022-10-02 18:58:44'),
(69, 'مدينة نصر', 'صيدلية دكتوره الشيماء السعيد مدينة نصر - ٩٠ ش حافظ بدوي - بجوار مستشفي السفارات بجوار مدرسة الألسن', '01003050570 _01009276746', '2022-10-02 19:02:02', '2022-10-02 19:02:02'),
(70, 'مدينة نصر', '‎صيدليه دكتوره علا سالم مدينة نصر - ٢١ ش حلمي عبد العاطي - متفرع من حسن الشريف - المنطقة الثامنة', '01003050570_ 01009276746', '2022-10-02 19:05:44', '2022-10-02 19:05:44'),
(71, 'مدينة نصر', '‎ صيدلية دكتوره أسماء91 زهراء مدينة نصر - المرحلة الثانية - الحي العاشر - بجوار عمر ماركت', '01003050570 _01009276746', '2022-10-02 19:07:49', '2022-10-02 19:07:49'),
(72, 'الفاهره', 'صيدليه الليثي7455 الحي السادس - الهضبة الوسطي - امام كلية الصيدله', '01003050570 _01009276746', '2022-10-02 19:14:01', '2022-10-02 19:14:01'),
(73, 'طنطا \\ المنصوره \\ كفر الشيخ', 'صيدليات الطرشوبي المنصوره اول السكه الحديد _طنطا اخر شارع الاستاد _كفر الشخ شارع المحطه', '16130\\10150616130', '2022-10-02 19:20:19', '2022-10-02 19:20:19'),
(74, 'المنصوره \\ دمياط \\بورسعيد\\ السويس\\ القاهره', 'صيدليه ال عبد اللطيف المنصوره شارع الجمهوريه _ دمياط كورنيش النيل_بورسعيد شارع 23 يوليو امام مسجد الاحسان _السويس مركز طبي سماد السويس _القاهره مصر الجديده مساكن شيراتون', '19121', '2022-10-03 12:49:48', '2022-10-03 12:50:23');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posted_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `little_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ar_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_little_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_full_description` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `name`, `image`, `date`, `posted_by`, `little_description`, `full_description`, `created_at`, `updated_at`, `ar_name`, `ar_little_description`, `ar_full_description`) VALUES
(1, 'Cycle_Revera Bioneer', 'blogs/June2021/QfvO3WhM4gjQxjdVkx30.jpeg', 'October 2018', 'admin', 'Cycle_Revera Bioneer_October 2018', '.', '2020-12-17 11:34:40', '2021-06-03 04:34:48', 'Cycle_Revera Bioneer', 'Cycle_Revera Bioneer_ أكتوبر 2018', '.'),
(2, 'Cycle Meeting in Scarabee Boat', 'blogs/June2021/7kN0onIdfmsAYzfJsJ6N.jpg', '8 Feb. 2018 00:00:00', 'admin', 'Cycle Meeting 8 Feb. 2018 in Scarabee Boat', '.', '2021-01-14 14:46:10', '2021-06-03 03:59:58', 'اجتماع الدورة في Scarabee Boat', 'اجتماع الدورة 8 فبراير 2018 في Scarabee Boat', '.'),
(3, 'Cycle Meeting in Dar Al Esharah', 'blogs/June2021/T8zyshdqPG7aU501B63f.png', 'Jan.2019', 'admin', 'Cycle Meeting Jan.2019 in Dar Al Esharah', '.', '2021-01-14 14:46:10', '2021-06-03 04:27:22', 'اجتماع الدورة في دار الاشارة', 'اجتماع الدورة يناير 2019 في دار الاشارة', '.'),
(4, 'Open Day- Jamaly Center- Christmas day', 'blogs/June2021/rvaB6w0YKnyrFoYfHBS7.png', '31 Dec. 2010', 'admin', 'Open Day- Jamaly Center- Christmas day- 31 Dec. 2010', '.', '2021-06-03 04:54:05', '2021-06-03 04:54:05', 'اليوم المفتوح - مركز جمالى - يوم عيد الميلاد', 'اليوم المفتوح - مركز جمالى - يوم عيد الميلاد - 31 ديسمبر 2010', '.'),
(5, 'Open day Ladies only', 'blogs/June2021/qxXtUcMnDmwdWAlsNl61.jpg', '5 Jan 2021', 'admin', 'Open day Ladies only 5 Jan 2021', '.', '2021-06-03 05:15:08', '2021-06-03 05:15:08', 'اليوم المفتوح للسيدات فقط', 'اليوم المفتوح للسيدات فقط 5 يناير 2021', '.'),
(6, 'Sparkle Center - Alex', 'blogs/June2021/3AQgVC20WTOGynXd5iNx.jpeg', '10 March 2021', 'admin', 'Sparkle Center - Alex- 10 March 2021', '.', '2021-06-03 05:31:07', '2021-06-03 05:31:07', 'مركز سباركل - الإسكندرية', 'مركز سباركل - الإسكندرية - 10 مارس 2021', '.'),
(7, 'Nile Cruise for Internal medicine and Gynacologiest', 'blogs/June2021/9wgPWKaOMthEow8C7CtZ.jpg', '10- June 2018', 'admin', '1- Nile Cruise for Internal medicine and Gynacologiest -10-11 June 2018', '.', '2021-06-03 16:35:29', '2021-06-03 20:09:31', 'نايل كروز للطب الباطني وأمراض النساء', 'نايل كروز للطب الباطني وأمراض النساء -10-11 يونيو 2018', '.'),
(8, 'Chateau Lafayette Nile Cruise', 'blogs/June2021/sj4TEYmvUOnUPmfsgIgw.jpeg', '15 Dec 2018', 'admin', 'Chateau Lafayette Nile Cruise - 14, 15 Dec 2018', '.', '2021-06-03 16:41:37', '2021-06-03 20:10:14', 'شاتو لافاييت نايل كروز', 'شاتو لافاييت نايل كروز - 14 ، 15 ديسمبر 2018', '.'),
(9, 'Porto Cairo Pazzar 25 Dec. 2020. 1', 'blogs/June2021/o8zuVzOgLVLZudoH7TDy.jpg', '25 Dec. 2020.', 'admin', 'Porto Cairo Pazzar 25 Dec. 2020. 1', '.', '2021-06-03 18:33:28', '2021-06-03 20:12:29', 'بورتو كايرو بازار', 'بورتو كايرو بازار 25 ديسمبر 2020.1', '.'),
(10, 'Porto Cairo Pazzar', 'blogs/June2021/RD43sPxpPHegq5h30gdB.jpg', 'Dec. 2020', 'admin', 'Porto Cairo Pazzar 25 Dec. 2020.jpg', '.', '2021-06-03 18:37:08', '2021-06-03 20:10:55', 'بورتو كايرو بازار', 'بورتو كايرو بازار 25 ديسمبر 2020.1', '.'),
(11, 'Porto Cairo Pazzar', 'blogs/June2021/SLXEQ2UhxHJrG9Y7uxPm.jpg', '7 Nov. 2020-5.', 'admin', 'Porto Cairo Pazzar 7 Nov. 2020', '.', '2021-06-03 18:40:29', '2021-06-08 19:50:45', 'بورتو كايرو بازار', 'بورتو كايرو بازار 7 نوفمبر 2020-5.jpg', '.'),
(12, 'Porto Cairo Pazzar', 'blogs/June2021/647bLQGcTzUnIaRttyHj.jpg', '7 Nov. 2020-1', 'admin', 'Porto Cairo Pazzar 7 Nov. 2020-1', '.', '2021-06-03 18:46:10', '2021-06-03 18:46:34', 'بورتو كايرو بازار', 'بورتو كايرو بازار 7 نوفمبر 2020-1', '.'),
(19, 'Cycle Meeting.', 'blogs/June2021/CE3pe1YyhB84inzQmii7.jpg', '2018', 'admin', '2018 in Scarabee Boat', '2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat2018 in Scarabee Boat', '2021-06-03 19:30:45', '2021-07-31 01:20:16', 'اجتماع الدورة Scarabee Boat', 'اجتماع الدورة 8 فبراير 2018 في Scarabee Boat', '.'),
(21, 'Interpharamegycare', 'blogs/October2022/3VUgDjVisJqz97s3CiX9.png', '06/10/2022', 'Ibrahim', 'Interpharamegycare', '<iframe width=\"1280\" height=\"720\" src=\"https://www.youtube.com/embed/Pm9CtfR6w1Q\" title=\"Interpharma Egycare انتر فارما ايجيكير\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2022-10-27 18:23:04', '2022-10-27 18:23:04', 'انترفارما ايجى كير', 'انترفارما ايجى كير', '<iframe width=\"1280\" height=\"720\" src=\"https://www.youtube.com/embed/Pm9CtfR6w1Q\" title=\"Interpharma Egycare انتر فارما ايجيكير\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
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

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2020-12-17 11:22:01', '2020-12-17 11:22:01'),
(2, NULL, 1, 'Category 2', 'category-2', '2020-12-17 11:22:01', '2020-12-17 11:22:01');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `street_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `government` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `auth_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `first_name`, `last_name`, `country_id`, `street_address`, `city`, `government`, `phone`, `email`, `note`, `auth_id`, `created_at`, `updated_at`) VALUES
(44, 'hanan', 'hassona', 19, '20 khalid ebn el waleed st.', 'sidi beshr', 'alex', '01119535400', 'hanan.hassona13@yahoo.com', 'quickly please', 1, '2021-07-31 01:34:34', '2021-07-31 01:34:34'),
(45, 'hanan', 'hassona', 21, '45 dfgdfhgdf st', 'fayom', 'fayom', '01119535500', 'hanan.hassona13@yahoo.com', NULL, 1, '2021-07-31 20:23:58', '2021-07-31 20:23:58'),
(46, 'hanan', 'hassona', 22, '45 dfgdfhgdf st', 'fayom', 'fayom', '01118701368', 'hanan.hassona13@yahoo.com', NULL, 1, '2021-07-31 21:03:09', '2021-07-31 21:03:09'),
(47, 'asem', 'ahmed', 19, 'tytytt', 'tytytyty', 'tytytyt', '01096910999', 'ahmed@gmail.com', 'tytytyty', 1, '2021-09-29 04:23:15', '2021-09-29 04:23:15'),
(48, 'Gehad', 'Essam', 17, 'مدينه الفسطاط المجاوره الثانيه برج 29س ابراج العالميه', 'مدينه الفسطاط', 'القاهره', '01122318217', 'gehadessam1555@gmail.com', NULL, 40, '2022-09-19 03:17:46', '2022-09-19 03:17:46'),
(49, 'Ibrahim', 'Helmy', 17, '34 Mohamed Refat st. El Nozah', 'Cairo', 'Al Qahirah', '01012236879', 'ibrahim.helmy.udacity@gmail.com', 'ffff', 1, '2022-09-19 19:57:38', '2022-09-19 19:57:38'),
(50, 'Aya', 'Mohamed', 17, 'أبراج عثمان برج 11 فوق متوسط الدور السادس شقة٦١ حدائق المعادي', 'حدائق المعادي', 'القاهرة', '01141068323', 'ayayoka1141998@gmail.com', 'التوصيل من الأحد للخميس\r\nمن 9ص ل 5م', 48, '2022-11-12 17:43:25', '2022-11-12 17:43:25'),
(51, 'Hamsa', 'Awesh', 17, 'ش البحر', 'سوهاج', 'سوهاج', '01030409024', 'hamsa.awesh@gmail.com', NULL, 49, '2022-11-27 03:45:54', '2022-11-27 03:45:54');

-- --------------------------------------------------------

--
-- Table structure for table `comeingsoons`
--

CREATE TABLE `comeingsoons` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_ar` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(700) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comeingsoons`
--

INSERT INTO `comeingsoons` (`id`, `name_ar`, `name_en`, `image`, `created_at`, `updated_at`) VALUES
(1, 'كريم', 'cream', 'comeingsoons/May2021/Cswg2RMTvVlMLDkWYzKc.png', '2021-03-24 10:03:55', '2021-05-04 17:27:20');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `show` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`, `product_id`, `blog_id`, `show`) VALUES
(29, 'amr', 'eng.amreltohamy@gmail.com', 'my opinion', 'I think all products are good', '2022-05-25 16:46:18', '2022-05-25 16:46:18', 4, NULL, 1),
(30, 'Manar', 'manar.mohamed944@yahoo.com', 'رأى فى مجموعه سبلييت مقشر وتفتيح', 'حابة بجد اشاركم قد ايه فرق معايا سبيليت المقشر سبيليت تفتيح في الاندر ارمبجد حلو جدا بحط سبيليت المقشر ساعتين وبعدين بغسله بصابونة سينوبار واجفف بفوطة قطن واحط سبيليت تفتيح بجد المنطقة افتحت جدااااا', '2022-10-06 00:59:32', '2022-10-06 00:59:32', 3, NULL, 0),
(31, 'Hanaa', 'santoytota@gmail.com', 'Review', 'سبيليت المقشر ضيعلي كل الحبوب بجد مفيش خالص ولو ظهرت واحدة بلحقها في اولها ادهن سبيليت المقشر مفيش يوم والتاني وتختفي تماما- بجد شكرا', '2022-10-06 01:03:33', '2022-10-06 01:03:33', 3, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_en` varchar(697) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `location` varchar(700) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instgram` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tiktok` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_ar` varchar(700) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `email`, `phone`, `address_en`, `created_at`, `updated_at`, `location`, `facebook`, `youtube`, `linkedin`, `instgram`, `tiktok`, `address_ar`) VALUES
(1, 'hr@interpharmaegycare.com info@interpharmaegycare.com nabilashry@yahoo.com', '+202 22691913 - 01033310819', 'Square 1226, building 4, first floor, apart NO. 6,          behind Florida mall, Sheraton, Heliopolis, Cairo, Egypt.', '2020-12-17 11:25:00', '2021-12-02 02:48:42', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3451.7313298890526!2d31.367898314444766!3d30.101880022813447!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145816134a501ad7%3A0x22dce380f2b467e7!2sInterPharma%20Egypt!5e0!3m2!1sen!2seg!4v1608132287563!5m2!1sen!2seg', 'https://www.facebook.com/interpharma.egycare1', 'https://www.youtube.com/channel/UCCIewcxxZgEzync9lUnX9cA/featured', 'https://www.linkedin.com/in/interpharma-egycare-312686182', 'https://www.instagram.com/p/CFvIPldBgM4/?igshid=1erdwt25q791k', 'tiktok', 'مربع 1226 عمارة 4 شقة 6 خلف مول فلوريدا، شارع انجي انور، مساكن شيراتون، القاهرة، مصر');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name_ar`, `name_en`, `created_at`, `updated_at`, `price`) VALUES
(17, 'القاهرة', 'Cairo', '2021-04-28 19:07:03', '2021-04-28 19:07:03', 40),
(18, 'القاهرة الجديدة', 'New Cairo', '2021-04-28 19:07:31', '2021-04-28 19:07:31', 40),
(19, 'الاسكندرية', 'Alexendria', '2021-04-28 19:08:22', '2021-04-28 19:08:22', 45),
(20, 'بور سعيد', 'Port Said', '2021-04-28 19:09:09', '2021-04-28 19:09:09', 45),
(21, 'الفيوم', 'Fayoum', '2021-04-28 19:10:00', '2021-04-28 19:10:00', 75),
(22, 'الاقصر', 'Luxer', '2021-04-28 19:10:30', '2021-04-28 19:10:30', 110);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(10, 'dalia adel', 'dalia@gmail.com', 1096910528, 'Suscipit nihil odio', 'Suscipit nihil odio', '2021-03-25 06:44:53', '2021-03-25 06:44:53'),
(11, 'dalia adel', 'dalia@gmail.com', 1096910528, 'Officia dolor sunt s', 'dfgdfgdfg', '2021-03-27 07:04:24', '2021-03-27 07:04:24'),
(12, 'dalia adel', 'dalia@gmail.com', 1096910528, 'Repudiandae in hic s', 'sdsdsdsd', '2021-03-27 07:06:57', '2021-03-27 07:06:57'),
(13, 'hanan', 'hanan.hassona13@yahoo.com', 1118701368, 'hello', 'lklljkljjjjjj', '2021-07-31 20:15:00', '2021-07-31 20:15:00'),
(14, 'hanan', 'hanan.hassona13@yahoo.com', 1118701368, 'hello', 'lklljkljjjjjj', '2021-07-31 20:15:00', '2021-07-31 20:15:00'),
(15, 'Aya', 'ayayoka1141998@gmail.com', 1141068323, 'عايزة ابغى اوردر', 'عملت اوردر غلط عايزة الغيه', '2022-11-12 19:15:40', '2022-11-12 19:15:40');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
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
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '{}', 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 9),
(56, 7, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(57, 7, 'city', 'text', 'City', 1, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'address', 'text', 'Address', 1, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'phone', 'text', 'Phone', 1, 1, 1, 1, 1, 1, '{}', 4),
(60, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 5),
(61, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(161, 19, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(162, 19, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 2),
(163, 19, 'phone', 'text', 'Phone', 1, 1, 1, 1, 1, 1, '{}', 3),
(165, 19, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 6),
(166, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(168, 20, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(169, 20, 'name', 'text', 'Name By English', 1, 1, 1, 1, 1, 1, '{}', 2),
(170, 20, 'description', 'text', 'Description By English', 1, 1, 1, 1, 1, 1, '{}', 3),
(171, 20, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 4),
(172, 20, 'created_at', 'timestamp', 'Date', 0, 1, 1, 0, 0, 0, '{}', 5),
(173, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(174, 20, 'postion', 'text', 'Postion', 1, 1, 1, 1, 1, 1, '{}', 7),
(175, 20, 'ar_name', 'text', 'Name By Arabic', 1, 1, 1, 1, 1, 1, '{}', 8),
(176, 20, 'ar_description', 'text', 'Description By Arabic', 1, 1, 1, 1, 1, 1, '{}', 9),
(177, 20, 'ar_postion', 'text', 'Position By Arabic', 1, 1, 1, 1, 1, 1, '{}', 10),
(178, 21, 'id', 'text', 'id', 1, 1, 1, 0, 0, 0, '{}', 1),
(179, 21, 'name', 'text', 'Name By English', 1, 1, 1, 1, 1, 1, '{}', 3),
(180, 21, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 2),
(181, 21, 'price', 'text', 'Price', 1, 1, 1, 1, 1, 1, '{}', 4),
(182, 21, 'description', 'text', 'Description By English', 1, 1, 1, 1, 1, 1, '{}', 5),
(183, 21, 'created_at', 'timestamp', 'Date', 0, 1, 1, 0, 0, 0, '{}', 24),
(184, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 25),
(185, 21, 'compostion_des', 'text', 'Composition Descrpition By English', 0, 1, 1, 1, 1, 1, '{}', 6),
(186, 21, 'compostion_comp1', 'text', 'First Composition BY  English', 0, 1, 1, 1, 1, 1, '{}', 7),
(187, 21, 'compostion_comp2', 'text', 'Second Compostion By English', 0, 1, 1, 1, 1, 1, '{}', 8),
(188, 21, 'application_desc', 'text', 'How Use It By English', 0, 1, 1, 1, 1, 1, '{}', 9),
(189, 21, 'package_desc', 'text', 'Package Descrption By English', 0, 1, 1, 1, 1, 1, '{}', 10),
(190, 21, 'indicator', 'text', 'Indicator By English', 0, 1, 1, 1, 1, 1, '{}', 11),
(191, 21, 'facebookLink', 'text', 'Facebook Link', 1, 1, 1, 1, 1, 1, '{}', 12),
(192, 21, 'jumiaLink', 'text', 'Jumia Link', 1, 1, 1, 1, 1, 1, '{}', 13),
(193, 21, 'souqLink', 'text', 'Souq Link', 1, 1, 1, 1, 1, 1, '{}', 14),
(194, 21, 'noonLink', 'text', 'Noon Link', 1, 1, 1, 1, 1, 1, '{}', 15),
(195, 21, 'ar_name', 'text', 'Name By Arabic', 1, 1, 1, 1, 1, 1, '{}', 16),
(196, 21, 'ar_description', 'text', 'Description By Arabic', 1, 1, 1, 1, 1, 1, '{}', 17),
(197, 21, 'ar_composition_des', 'text', 'Compostion Descrption By Arabic', 1, 1, 1, 1, 1, 1, '{}', 18),
(198, 21, 'ar_compostion_comp1', 'text', 'First Compostion By Arabic', 1, 1, 1, 1, 1, 1, '{}', 19),
(199, 21, 'ar_compostion_comp2', 'text', 'Second Compostion By Arabic', 1, 1, 1, 1, 1, 1, '{}', 20),
(200, 21, 'ar_application_desc', 'text', 'How To Use It By Arabic', 1, 1, 1, 1, 1, 1, '{}', 21),
(201, 21, 'ar_package_desc', 'text', 'Package Descrption By arabic', 1, 1, 1, 1, 1, 1, '{}', 22),
(202, 21, 'ar_indicator', 'text', 'Indicators By Arabic', 1, 1, 1, 1, 1, 1, '{}', 23),
(203, 22, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(204, 22, 'name', 'text', 'Name By English', 1, 1, 1, 1, 1, 1, '{}', 2),
(205, 22, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 3),
(206, 22, 'date', 'text', 'Date', 1, 1, 1, 1, 1, 1, '{}', 4),
(207, 22, 'posted_by', 'text', 'Posted By', 1, 1, 1, 1, 1, 1, '{}', 5),
(208, 22, 'little_description', 'text', 'Little Description', 1, 1, 1, 1, 1, 1, '{}', 6),
(209, 22, 'full_description', 'text', 'Full Description', 1, 1, 1, 1, 1, 1, '{}', 7),
(210, 22, 'created_at', 'timestamp', 'Date', 0, 1, 1, 0, 0, 0, '{}', 11),
(211, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(212, 22, 'ar_name', 'text', 'Name By Arabic', 1, 1, 1, 1, 1, 1, '{}', 8),
(213, 22, 'ar_little_description', 'text', 'Aarabic Little Description', 1, 1, 1, 1, 1, 1, '{}', 9),
(214, 22, 'ar_full_description', 'text', 'Arabic Full Description', 1, 1, 1, 1, 1, 1, '{}', 10),
(215, 23, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(216, 23, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 2),
(217, 23, 'locale', 'select_dropdown', 'Locale', 1, 1, 1, 1, 1, 1, '{\"default\":\"en\",\"options\":{\"en\":\"en\",\"ar\":\"ar\"}}', 3),
(218, 23, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 4),
(219, 23, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, '{}', 5),
(220, 19, 'address_en', 'text', 'Address En', 1, 1, 1, 1, 1, 1, '{}', 4),
(221, 19, 'location', 'text', 'Location', 1, 1, 1, 1, 1, 1, '{}', 7),
(222, 19, 'facebook', 'text', 'Facebook', 0, 1, 1, 1, 1, 1, '{}', 8),
(223, 19, 'youtube', 'text', 'Youtube', 0, 1, 1, 1, 1, 1, '{}', 9),
(224, 19, 'linkedin', 'text', 'Linkedin', 0, 1, 1, 1, 1, 1, '{}', 10),
(225, 19, 'instgram', 'text', 'Instgram', 0, 1, 1, 1, 1, 1, '{}', 11),
(226, 19, 'tiktok', 'text', 'Tiktok', 0, 1, 1, 1, 1, 1, '{}', 12),
(227, 19, 'address_ar', 'text', 'Address Ar', 0, 1, 1, 1, 1, 1, '{}', 13),
(228, 24, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(229, 24, 'name_ar', 'text', 'Name Ar', 0, 1, 1, 1, 1, 1, '{}', 2),
(230, 24, 'name_en', 'text', 'Name En', 0, 1, 1, 1, 1, 1, '{}', 3),
(231, 24, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(232, 24, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 5),
(233, 24, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(234, 25, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(235, 25, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(236, 25, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(237, 25, 'subject', 'text', 'Subject', 1, 1, 1, 1, 1, 1, '{}', 4),
(238, 25, 'message', 'text', 'Message', 1, 1, 1, 1, 1, 1, '{}', 5),
(239, 25, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 6),
(240, 25, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(241, 25, 'product_id', 'text', 'Product Id', 0, 1, 1, 1, 1, 1, '{}', 8),
(242, 25, 'comment_belongsto_product_relationship', 'relationship', 'products', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"belongsTo\",\"column\":\"product_id\",\"key\":\"id\",\"label\":\"ar_name\",\"pivot_table\":\"availabilities\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(243, 25, 'blog_id', 'text', 'Blog Id', 0, 1, 1, 1, 1, 1, '{}', 9),
(244, 25, 'comment_belongsto_blog_relationship', 'relationship', 'blogs', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Blog\",\"table\":\"blogs\",\"type\":\"belongsTo\",\"column\":\"blog_id\",\"key\":\"id\",\"label\":\"ar_name\",\"pivot_table\":\"availabilities\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(245, 26, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(246, 26, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(247, 26, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(248, 26, 'phone', 'text', 'Phone', 1, 1, 1, 1, 1, 1, '{}', 4),
(249, 26, 'subject', 'text', 'Subject', 0, 1, 1, 1, 1, 1, '{}', 5),
(250, 26, 'message', 'text', 'Message', 0, 1, 1, 1, 1, 1, '{}', 6),
(251, 26, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 7),
(252, 26, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(254, 25, 'show', 'checkbox', 'Publish', 0, 1, 1, 1, 1, 1, '{}', 10),
(255, 27, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(256, 27, 'name_ar', 'text', 'Name Ar', 1, 1, 1, 1, 1, 1, '{}', 2),
(257, 27, 'name_en', 'text', 'Name En', 1, 1, 1, 1, 1, 1, '{}', 3),
(258, 27, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 5),
(259, 27, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(260, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 6),
(261, 27, 'price', 'text', 'Price', 0, 1, 1, 1, 1, 1, '{}', 4),
(262, 29, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(263, 29, 'name_ar', 'text', 'Name Ar', 0, 1, 1, 1, 1, 1, '{}', 2),
(264, 29, 'name_en', 'text', 'Name En', 0, 1, 1, 1, 1, 1, '{}', 3),
(265, 29, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 4),
(266, 29, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(267, 21, 'product_belongsto_project_relationship', 'relationship', 'Category', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Project\",\"table\":\"projects\",\"type\":\"belongsTo\",\"column\":\"project_id\",\"key\":\"id\",\"label\":\"name_ar\",\"pivot_table\":\"availabilities\",\"pivot\":\"0\",\"taggable\":\"0\"}', 26),
(268, 21, 'project_id', 'text', 'Category', 0, 1, 1, 1, 1, 1, '{}', 27),
(269, 30, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(270, 30, 'product_id', 'text', 'Product ', 0, 1, 1, 1, 1, 1, '{}', 2),
(272, 30, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 4),
(273, 30, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(274, 30, 'user_id', 'text', 'User ', 0, 1, 1, 1, 1, 1, '{}', 3),
(275, 30, 'likeproduct_belongsto_product_relationship', 'relationship', 'products', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"belongsTo\",\"column\":\"product_id\",\"key\":\"id\",\"label\":\"ar_name\",\"pivot_table\":\"availabilities\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(276, 30, 'likeproduct_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"availabilities\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(277, 31, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(278, 31, 'product_id', 'text', 'Product ', 0, 1, 1, 1, 1, 1, '{}', 2),
(279, 31, 'user_id', 'text', 'client', 0, 1, 1, 1, 1, 1, '{}', 3),
(280, 31, 'counter', 'text', 'Star Counter', 0, 1, 1, 1, 1, 1, '{}', 4),
(281, 31, 'created_at', 'timestamp', 'Date', 0, 1, 1, 1, 0, 1, '{}', 5),
(282, 31, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(283, 31, 'star_belongsto_product_relationship', 'relationship', 'products', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"belongsTo\",\"column\":\"product_id\",\"key\":\"id\",\"label\":\"ar_name\",\"pivot_table\":\"availabilities\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(284, 31, 'star_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"availabilities\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
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
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-12-17 11:21:57', '2021-03-28 12:05:46'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-12-17 11:21:57', '2020-12-17 11:21:57'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-12-17 11:21:57', '2021-03-28 12:04:20'),
(7, 'availabilities', 'availabilities', 'Availability', 'Availabilities', 'voyager-location', 'App\\Availability', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-12-17 11:24:23', '2021-03-28 12:09:39'),
(19, 'contacts', 'contacts', 'Contact', 'Contacts', 'voyager-mail', 'App\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-12-24 08:26:24', '2021-03-28 12:54:09'),
(20, 'teams', 'teams', 'Team', 'Teams', 'voyager-people', 'App\\Team', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-12-24 09:30:45', '2021-03-28 12:29:52'),
(21, 'products', 'products', 'Products', 'Products', 'voyager-list-add', 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-12-24 09:49:49', '2021-09-25 20:36:15'),
(22, 'blogs', 'blogs', 'Blog', 'Blogs', 'voyager-news', 'App\\Blog', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-12-24 10:05:29', '2021-03-28 12:36:29'),
(23, 'sliders', 'sliders', 'Slider', 'Sliders', 'voyager-images', 'App\\Slider', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-03-17 16:16:31', '2021-03-28 12:38:00'),
(24, 'comeingsoons', 'comeingsoons', ' Comeingsoon', 'Comeingsoons', 'voyager-truck', 'App\\Comeingsoon', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-03-24 10:02:24', '2021-03-28 12:50:53'),
(25, 'comments', 'comments', 'Comment', 'Comments', 'voyager-chat', 'App\\Comment', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-03-24 12:44:26', '2021-03-28 12:53:02'),
(26, 'customers', 'customers', 'Contacts', 'Contacts', 'voyager-group', 'App\\Customer', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-03-25 06:44:20', '2021-03-28 12:55:01'),
(27, 'countries', 'countries', 'Country', 'Countries', 'voyager-world', 'App\\Country', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-03-28 10:58:41', '2021-04-25 16:35:05'),
(29, 'projects', 'projects', 'Category', 'Categories', 'voyager-company', 'App\\Project', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-04-22 17:44:55', '2021-04-22 18:03:37'),
(30, 'likeproducts', 'likeproducts', 'Like_Product', 'Like_Products', 'voyager-heart', 'App\\Likeproduct', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-04-24 14:59:09', '2021-04-24 15:08:44'),
(31, 'stars', 'stars', 'Rate the products', 'Rate the products', 'voyager-star', 'App\\Star', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-04-25 14:21:18', '2021-04-25 14:31:22');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likeproducts`
--

CREATE TABLE `likeproducts` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likeproducts`
--

INSERT INTO `likeproducts` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(20, 3, 1, '2021-04-25 16:42:02', '2021-04-25 16:42:02'),
(21, 1, 1, '2021-07-31 01:06:42', '2021-07-31 01:06:42'),
(22, 2, 1, '2021-07-31 19:37:17', '2021-07-31 19:37:17'),
(23, 3, 25, '2022-02-16 20:55:23', '2022-02-16 20:55:23');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-12-17 11:21:58', '2020-12-17 11:21:58');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
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
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', '#000000', NULL, 1, '2020-12-17 11:21:58', '2021-03-28 13:02:25', 'voyager.dashboard', 'null'),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, 5, 2, '2020-12-17 11:21:58', '2021-04-17 16:13:03', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', '#000000', NULL, 3, '2020-12-17 11:21:58', '2021-03-28 13:03:04', 'voyager.users.index', 'null'),
(4, 1, 'Roles', '', '_self', 'voyager-lock', '#000000', NULL, 2, '2020-12-17 11:21:58', '2021-03-28 13:02:40', 'voyager.roles.index', 'null'),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 4, '2020-12-17 11:21:58', '2021-04-17 16:13:03', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-12-17 11:21:58', '2021-04-17 16:12:57', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 3, '2020-12-17 11:21:58', '2021-04-17 16:13:03', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 4, '2020-12-17 11:21:58', '2021-04-17 16:13:03', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 5, '2020-12-17 11:21:58', '2021-04-17 16:13:03', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, 5, 6, '2020-12-17 11:21:58', '2021-04-17 16:13:03', 'voyager.settings.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 7, '2020-12-17 11:22:05', '2021-04-22 17:57:31', 'voyager.hooks', NULL),
(15, 1, 'Availabilities', '', '_self', 'voyager-location', '#000000', NULL, 5, '2020-12-17 11:24:23', '2021-04-17 16:13:03', 'voyager.availabilities.index', 'null'),
(27, 1, 'Contacts', '', '_self', 'voyager-credit-cards', '#000000', NULL, 9, '2020-12-24 08:26:25', '2021-04-22 17:57:35', 'voyager.contacts.index', 'null'),
(28, 1, 'Teams', '', '_self', 'voyager-people', '#000000', NULL, 8, '2020-12-24 09:30:45', '2021-04-22 17:57:39', 'voyager.teams.index', 'null'),
(29, 1, 'Products', '', '_self', 'voyager-list-add', '#000000', NULL, 7, '2020-12-24 09:49:49', '2021-04-22 17:57:39', 'voyager.products.index', 'null'),
(30, 1, 'Blogs', '', '_self', 'voyager-news', '#000000', NULL, 10, '2020-12-24 10:05:29', '2021-04-22 17:57:31', 'voyager.blogs.index', 'null'),
(31, 1, 'Sliders', '', '_self', 'voyager-images', '#000000', NULL, 11, '2021-03-17 16:16:31', '2021-04-22 17:57:31', 'voyager.sliders.index', 'null'),
(32, 1, 'Comeingsoons', '', '_self', 'voyager-truck', '#000000', NULL, 12, '2021-03-24 10:02:25', '2021-04-22 17:57:31', 'voyager.comeingsoons.index', 'null'),
(33, 1, 'Comments', '', '_self', 'voyager-chat', '#000000', NULL, 13, '2021-03-24 12:44:26', '2021-04-22 17:57:31', 'voyager.comments.index', 'null'),
(34, 1, 'Callers', '', '_self', 'voyager-group', '#000000', NULL, 14, '2021-03-25 06:44:20', '2021-04-22 17:57:31', 'voyager.customers.index', 'null'),
(35, 1, 'Clients', '', '_self', 'voyager-person', '#000000', NULL, 15, '2021-03-28 09:38:41', '2021-04-22 17:57:31', 'client.index', 'null'),
(36, 1, 'Orders', '', '_self', 'voyager-warning', '#000000', NULL, 16, '2021-03-28 09:39:52', '2021-04-22 17:57:31', 'order.index', 'null'),
(37, 1, 'Order Details', '', '_self', 'voyager-archive', '#000000', NULL, 17, '2021-03-28 09:41:20', '2021-04-22 17:57:31', 'orderdetails.index', 'null'),
(38, 1, 'Countries', '', '_self', 'voyager-world', '#000000', NULL, 18, '2021-03-28 10:58:41', '2021-04-22 17:57:31', 'voyager.countries.index', 'null'),
(40, 1, 'Category', '', '_self', 'voyager-company', '#000000', NULL, 6, '2021-04-22 17:44:55', '2021-04-22 17:57:39', 'voyager.projects.index', 'null'),
(41, 1, 'Favourite Products', '', '_self', 'voyager-heart', '#000000', NULL, 19, '2021-04-24 14:59:09', '2021-04-24 15:07:38', 'voyager.likeproducts.index', 'null'),
(42, 1, 'Rate the products', '', '_self', 'voyager-star', '#000000', NULL, 20, '2021-04-25 14:21:18', '2021-04-25 14:31:49', 'voyager.stars.index', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(89, '2014_10_12_000000_create_users_table', 1),
(90, '2014_10_12_100000_create_password_resets_table', 1),
(91, '2016_01_01_000000_add_voyager_user_fields', 1),
(92, '2016_01_01_000000_create_data_types_table', 1),
(93, '2016_01_01_000000_create_pages_table', 1),
(94, '2016_01_01_000000_create_posts_table', 1),
(95, '2016_02_15_204651_create_categories_table', 1),
(96, '2016_05_19_173453_create_menu_table', 1),
(97, '2016_10_21_190000_create_roles_table', 1),
(98, '2016_10_21_190000_create_settings_table', 1),
(99, '2016_11_30_135954_create_permission_table', 1),
(100, '2016_11_30_141208_create_permission_role_table', 1),
(101, '2016_12_26_201236_data_types__add__server_side', 1),
(102, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(103, '2017_01_14_005015_create_translations_table', 1),
(104, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(105, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(106, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(107, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(108, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(109, '2017_08_05_000000_add_group_to_settings_table', 1),
(110, '2017_11_26_013050_add_user_role_relationship', 1),
(111, '2017_11_26_015000_create_user_roles_table', 1),
(112, '2018_03_11_000000_add_user_settings', 1),
(113, '2018_03_14_000000_add_details_to_data_types_table', 1),
(114, '2018_03_16_000000_make_settings_value_nullable', 1),
(115, '2019_08_19_000000_create_failed_jobs_table', 1),
(116, '2020_12_03_115814_create_products_table', 1),
(117, '2020_12_05_083405_create_blogs_table', 1),
(118, '2020_12_05_093951_create_contacts_table', 1),
(119, '2020_12_05_120658_create_availabilities_table', 1),
(120, '2020_12_16_114827_create_customers_table', 1),
(121, '2020_12_20_090453_create_locations_table', 2),
(122, '2020_12_20_094904_create_comments_table', 3),
(123, '2020_12_22_125220_create_teams_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `price` double NOT NULL,
  `quentity` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `order_id`, `price`, `quentity`, `product_id`, `created_at`, `updated_at`) VALUES
(81, 43, 40, 1, 1, '2021-07-31 01:34:34', '2021-07-31 01:34:34'),
(82, 44, 37.5, 3, 4, '2021-07-31 20:23:58', '2021-07-31 20:23:58'),
(83, 45, 130, 1, 5, '2021-07-31 21:03:09', '2021-07-31 21:03:09'),
(84, 46, 40, 2, 1, '2021-09-29 04:23:15', '2021-09-29 04:23:15'),
(85, 47, 50, 2, 1, '2022-09-19 03:17:46', '2022-09-19 03:17:46'),
(86, 47, 60, 2, 3, '2022-09-19 03:17:46', '2022-09-19 03:17:46'),
(87, 48, 60, 2, 3, '2022-09-19 19:57:38', '2022-09-19 19:57:38'),
(88, 48, 75, 1, 5, '2022-09-19 19:57:38', '2022-09-19 19:57:38'),
(89, 49, 50, 1, 1, '2022-11-12 17:43:25', '2022-11-12 17:43:25'),
(90, 49, 60, 1, 3, '2022-11-12 17:43:25', '2022-11-12 17:43:25'),
(91, 49, 80, 1, 7, '2022-11-12 17:43:25', '2022-11-12 17:43:25'),
(92, 50, 50, 1, 1, '2022-11-27 03:45:54', '2022-11-27 03:45:54');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `shipPrice` float NOT NULL DEFAULT '20',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `client_id`, `status`, `shipPrice`, `created_at`, `updated_at`) VALUES
(43, 44, 0, 45, '2021-07-31 01:34:34', '2021-07-31 01:34:34'),
(44, 45, 0, 75, '2021-07-31 20:23:58', '2021-07-31 20:23:58'),
(45, 46, 0, 110, '2021-07-31 21:03:09', '2021-07-31 21:03:09'),
(46, 47, 0, 45, '2021-09-29 04:23:15', '2021-09-29 04:23:15'),
(47, 48, 0, 40, '2022-09-19 03:17:46', '2022-09-19 03:17:46'),
(48, 49, 0, 40, '2022-09-19 19:57:38', '2022-09-19 19:57:38'),
(49, 50, 1, 40, '2022-11-12 17:43:25', '2022-11-14 17:58:26'),
(50, 51, 0, 40, '2022-11-27 03:45:54', '2022-11-27 03:45:54');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
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

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2020-12-17 11:22:03', '2020-12-17 11:22:03');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-12-17 11:21:58', '2020-12-17 11:21:58'),
(2, 'browse_bread', NULL, '2020-12-17 11:21:58', '2020-12-17 11:21:58'),
(3, 'browse_database', NULL, '2020-12-17 11:21:58', '2020-12-17 11:21:58'),
(4, 'browse_media', NULL, '2020-12-17 11:21:58', '2020-12-17 11:21:58'),
(5, 'browse_compass', NULL, '2020-12-17 11:21:58', '2020-12-17 11:21:58'),
(6, 'browse_menus', 'menus', '2020-12-17 11:21:58', '2020-12-17 11:21:58'),
(7, 'read_menus', 'menus', '2020-12-17 11:21:58', '2020-12-17 11:21:58'),
(8, 'edit_menus', 'menus', '2020-12-17 11:21:59', '2020-12-17 11:21:59'),
(9, 'add_menus', 'menus', '2020-12-17 11:21:59', '2020-12-17 11:21:59'),
(10, 'delete_menus', 'menus', '2020-12-17 11:21:59', '2020-12-17 11:21:59'),
(11, 'browse_roles', 'roles', '2020-12-17 11:21:59', '2020-12-17 11:21:59'),
(12, 'read_roles', 'roles', '2020-12-17 11:21:59', '2020-12-17 11:21:59'),
(13, 'edit_roles', 'roles', '2020-12-17 11:21:59', '2020-12-17 11:21:59'),
(14, 'add_roles', 'roles', '2020-12-17 11:21:59', '2020-12-17 11:21:59'),
(15, 'delete_roles', 'roles', '2020-12-17 11:21:59', '2020-12-17 11:21:59'),
(16, 'browse_users', 'users', '2020-12-17 11:21:59', '2020-12-17 11:21:59'),
(17, 'read_users', 'users', '2020-12-17 11:21:59', '2020-12-17 11:21:59'),
(18, 'edit_users', 'users', '2020-12-17 11:21:59', '2020-12-17 11:21:59'),
(19, 'add_users', 'users', '2020-12-17 11:21:59', '2020-12-17 11:21:59'),
(20, 'delete_users', 'users', '2020-12-17 11:21:59', '2020-12-17 11:21:59'),
(21, 'browse_settings', 'settings', '2020-12-17 11:21:59', '2020-12-17 11:21:59'),
(22, 'read_settings', 'settings', '2020-12-17 11:21:59', '2020-12-17 11:21:59'),
(23, 'edit_settings', 'settings', '2020-12-17 11:21:59', '2020-12-17 11:21:59'),
(24, 'add_settings', 'settings', '2020-12-17 11:21:59', '2020-12-17 11:21:59'),
(25, 'delete_settings', 'settings', '2020-12-17 11:21:59', '2020-12-17 11:21:59'),
(41, 'browse_hooks', NULL, '2020-12-17 11:22:05', '2020-12-17 11:22:05'),
(42, 'browse_availabilities', 'availabilities', '2020-12-17 11:24:23', '2020-12-17 11:24:23'),
(43, 'read_availabilities', 'availabilities', '2020-12-17 11:24:23', '2020-12-17 11:24:23'),
(44, 'edit_availabilities', 'availabilities', '2020-12-17 11:24:23', '2020-12-17 11:24:23'),
(45, 'add_availabilities', 'availabilities', '2020-12-17 11:24:23', '2020-12-17 11:24:23'),
(46, 'delete_availabilities', 'availabilities', '2020-12-17 11:24:23', '2020-12-17 11:24:23'),
(102, 'browse_contacts', 'contacts', '2020-12-24 08:26:25', '2020-12-24 08:26:25'),
(103, 'read_contacts', 'contacts', '2020-12-24 08:26:25', '2020-12-24 08:26:25'),
(104, 'edit_contacts', 'contacts', '2020-12-24 08:26:25', '2020-12-24 08:26:25'),
(105, 'add_contacts', 'contacts', '2020-12-24 08:26:25', '2020-12-24 08:26:25'),
(106, 'delete_contacts', 'contacts', '2020-12-24 08:26:25', '2020-12-24 08:26:25'),
(107, 'browse_teams', 'teams', '2020-12-24 09:30:45', '2020-12-24 09:30:45'),
(108, 'read_teams', 'teams', '2020-12-24 09:30:45', '2020-12-24 09:30:45'),
(109, 'edit_teams', 'teams', '2020-12-24 09:30:45', '2020-12-24 09:30:45'),
(110, 'add_teams', 'teams', '2020-12-24 09:30:45', '2020-12-24 09:30:45'),
(111, 'delete_teams', 'teams', '2020-12-24 09:30:45', '2020-12-24 09:30:45'),
(112, 'browse_products', 'products', '2020-12-24 09:49:49', '2020-12-24 09:49:49'),
(113, 'read_products', 'products', '2020-12-24 09:49:49', '2020-12-24 09:49:49'),
(114, 'edit_products', 'products', '2020-12-24 09:49:49', '2020-12-24 09:49:49'),
(115, 'add_products', 'products', '2020-12-24 09:49:49', '2020-12-24 09:49:49'),
(116, 'delete_products', 'products', '2020-12-24 09:49:49', '2020-12-24 09:49:49'),
(117, 'browse_blogs', 'blogs', '2020-12-24 10:05:29', '2020-12-24 10:05:29'),
(118, 'read_blogs', 'blogs', '2020-12-24 10:05:29', '2020-12-24 10:05:29'),
(119, 'edit_blogs', 'blogs', '2020-12-24 10:05:29', '2020-12-24 10:05:29'),
(120, 'add_blogs', 'blogs', '2020-12-24 10:05:29', '2020-12-24 10:05:29'),
(121, 'delete_blogs', 'blogs', '2020-12-24 10:05:29', '2020-12-24 10:05:29'),
(122, 'browse_sliders', 'sliders', '2021-03-17 16:16:31', '2021-03-17 16:16:31'),
(123, 'read_sliders', 'sliders', '2021-03-17 16:16:31', '2021-03-17 16:16:31'),
(124, 'edit_sliders', 'sliders', '2021-03-17 16:16:31', '2021-03-17 16:16:31'),
(125, 'add_sliders', 'sliders', '2021-03-17 16:16:31', '2021-03-17 16:16:31'),
(126, 'delete_sliders', 'sliders', '2021-03-17 16:16:31', '2021-03-17 16:16:31'),
(127, 'browse_comeingsoons', 'comeingsoons', '2021-03-24 10:02:24', '2021-03-24 10:02:24'),
(128, 'read_comeingsoons', 'comeingsoons', '2021-03-24 10:02:24', '2021-03-24 10:02:24'),
(129, 'edit_comeingsoons', 'comeingsoons', '2021-03-24 10:02:24', '2021-03-24 10:02:24'),
(130, 'add_comeingsoons', 'comeingsoons', '2021-03-24 10:02:24', '2021-03-24 10:02:24'),
(131, 'delete_comeingsoons', 'comeingsoons', '2021-03-24 10:02:24', '2021-03-24 10:02:24'),
(132, 'browse_comments', 'comments', '2021-03-24 12:44:26', '2021-03-24 12:44:26'),
(133, 'read_comments', 'comments', '2021-03-24 12:44:26', '2021-03-24 12:44:26'),
(134, 'edit_comments', 'comments', '2021-03-24 12:44:26', '2021-03-24 12:44:26'),
(135, 'add_comments', 'comments', '2021-03-24 12:44:26', '2021-03-24 12:44:26'),
(136, 'delete_comments', 'comments', '2021-03-24 12:44:26', '2021-03-24 12:44:26'),
(137, 'browse_customers', 'customers', '2021-03-25 06:44:20', '2021-03-25 06:44:20'),
(138, 'read_customers', 'customers', '2021-03-25 06:44:20', '2021-03-25 06:44:20'),
(139, 'edit_customers', 'customers', '2021-03-25 06:44:20', '2021-03-25 06:44:20'),
(140, 'add_customers', 'customers', '2021-03-25 06:44:20', '2021-03-25 06:44:20'),
(141, 'delete_customers', 'customers', '2021-03-25 06:44:20', '2021-03-25 06:44:20'),
(142, 'browse_countries', 'countries', '2021-03-28 10:58:41', '2021-03-28 10:58:41'),
(143, 'read_countries', 'countries', '2021-03-28 10:58:41', '2021-03-28 10:58:41'),
(144, 'edit_countries', 'countries', '2021-03-28 10:58:41', '2021-03-28 10:58:41'),
(145, 'add_countries', 'countries', '2021-03-28 10:58:41', '2021-03-28 10:58:41'),
(146, 'delete_countries', 'countries', '2021-03-28 10:58:41', '2021-03-28 10:58:41'),
(152, 'browse_projects', 'projects', '2021-04-22 17:44:55', '2021-04-22 17:44:55'),
(153, 'read_projects', 'projects', '2021-04-22 17:44:55', '2021-04-22 17:44:55'),
(154, 'edit_projects', 'projects', '2021-04-22 17:44:55', '2021-04-22 17:44:55'),
(155, 'add_projects', 'projects', '2021-04-22 17:44:55', '2021-04-22 17:44:55'),
(156, 'delete_projects', 'projects', '2021-04-22 17:44:55', '2021-04-22 17:44:55'),
(157, 'browse_likeproducts', 'likeproducts', '2021-04-24 14:59:09', '2021-04-24 14:59:09'),
(158, 'read_likeproducts', 'likeproducts', '2021-04-24 14:59:09', '2021-04-24 14:59:09'),
(159, 'edit_likeproducts', 'likeproducts', '2021-04-24 14:59:09', '2021-04-24 14:59:09'),
(160, 'add_likeproducts', 'likeproducts', '2021-04-24 14:59:09', '2021-04-24 14:59:09'),
(161, 'delete_likeproducts', 'likeproducts', '2021-04-24 14:59:09', '2021-04-24 14:59:09'),
(162, 'browse_stars', 'stars', '2021-04-25 14:21:18', '2021-04-25 14:21:18'),
(163, 'read_stars', 'stars', '2021-04-25 14:21:18', '2021-04-25 14:21:18'),
(164, 'edit_stars', 'stars', '2021-04-25 14:21:18', '2021-04-25 14:21:18'),
(165, 'add_stars', 'stars', '2021-04-25 14:21:18', '2021-04-25 14:21:18'),
(166, 'delete_stars', 'stars', '2021-04-25 14:21:18', '2021-04-25 14:21:18');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
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
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1),
(161, 1),
(162, 1),
(163, 1),
(164, 1),
(165, 1),
(166, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
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
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-12-17 11:22:02', '2020-12-17 11:22:02'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\r\n                <h2>We can use all kinds of format!</h2>\r\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-12-17 11:22:02', '2020-12-17 11:22:02'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-12-17 11:22:02', '2020-12-17 11:22:02'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\r\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\r\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-12-17 11:22:02', '2020-12-17 11:22:02');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `compostion_des` text COLLATE utf8mb4_unicode_ci,
  `compostion_comp1` text COLLATE utf8mb4_unicode_ci,
  `compostion_comp2` text COLLATE utf8mb4_unicode_ci,
  `application_desc` text COLLATE utf8mb4_unicode_ci,
  `package_desc` text COLLATE utf8mb4_unicode_ci,
  `indicator` text COLLATE utf8mb4_unicode_ci,
  `facebookLink` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumiaLink` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `souqLink` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `noonLink` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_composition_des` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_compostion_comp1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_compostion_comp2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_application_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_package_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_indicator` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `price`, `description`, `created_at`, `updated_at`, `compostion_des`, `compostion_comp1`, `compostion_comp2`, `application_desc`, `package_desc`, `indicator`, `facebookLink`, `jumiaLink`, `souqLink`, `noonLink`, `ar_name`, `ar_description`, `ar_composition_des`, `ar_compostion_comp1`, `ar_compostion_comp2`, `ar_application_desc`, `ar_package_desc`, `ar_indicator`, `project_id`) VALUES
(1, 'Valdo Cream', 'products\\December2020\\ceYi4StRPNA8wpAClCWn.png', '50 LE', 'Valdo cream is an unique natural formula “Not only ideal non comedogenic moisturizer but also has anti-inflammatory, antibacterial, accelerate healing& anti-oxidant effect” for optimal skin care of Face, hand, sensitive areas & all body, that leaves skin deeply hydrated along the day with no greasy sensation and gives glowing& taut look due to its enhancement effect on collagen synthesis, Valdo cream is suitable for all kind of Skin “normal, dry, oily& mixed”.', '2020-12-17 11:30:21', '2022-11-09 19:02:16', 'Valdo cream is an ideal natural mix from most important natural extracts, oils& vitamins for complete skin care', 'Panthenol. Aloe Vera. Calendula. Almond Oil. Olive Oil. Allantoin', 'Glycerin. Vitamin E. Vitamin C. Dimethicone', 'Apply a suitable amount of the Valdo cream to skin twice daily.', 'Valdo cream  is supplied in a tube of 40gm. Price:- 40LE.', 'Eczema. Dry Skin. Sun burn. Burn “1st, 2nd degree” Dipper rash. Nipple Fissure. Post Laser care. After care of derma pen. Prevents Wrinkling. Daily skin routine for glowing& taut look. Adjuvant Therapy in Acne Vulgaris', 'https://www.facebook.com/valdo.cream', 'https://www.jumia.com.eg/ar/valdo-diaper-cream-40-gm-15142926.html', 'https://egypt.souq.com/eg-ar/%D9%81%D8%A7%D9%84%D8%AF%D9%88-%D9%83%D8%B1%D9%8A%D9%85-%D9%84%D9%84%D8%AC%D8%B3%D9%85-%D9%88%D8%A7%D9%84%D9%88%D8%AC%D9%87-85304017/i/', 'https://www.facebook.com/', 'كريم فالدو', 'سبلييت كريم ذو تركيبه علاجية ثلاثية المفعول للتقشير اللطيف والترطيب العمق مع العلاج السريع لجميع أنواع الحبوب سواء الحبوب تحت الجلد، حب الشباب أو حبوب الظهر والمؤخرة، أيضا علاج فعال فى إزالة آثار حب الشباب والبقع الغامقة ومجرب أيضا فى علاج الصدفيه، جلد الوزة و خشونه وتشققات الكعب والكوع والركبة, سبلييت مقشر يزيل الجلد الميت ويجدد البشرة لتنعيم وتوحيد لونها، يساعد فى تنظيف المسام بعمق والتخلص من الرؤوس السوداء والبيضاء ويساعد فى تنظيم إفراز الدهون بالبشرة. سبلييت مناسب لجميع انواع البشرة سوا العاديه- الدهنية - المختلطه و الجافة، أيضاً أمن للوجه والجسم والمناطق الحساسة.', 'تركيبة مميزة لاهم الخلاصات الطبيعية و خلاصات اهم الزيوت و الفيتامينات للبشره و يجمع بين التجميل و العلاج في نفس الوقت يتكون من', 'البانثينول الصبار. خلاصة الكلانديولا.  الجلسرين. زيت الزيتون', 'زيت اللوز. فيتامين ه.  فيتامين ج. الانتوين. الدايمثيكون', 'وضع كمية مناسبة على المنطقة المراد علاجها وتدلك برفق حتى تمتص مرتين  يومياَ .', 'فالدو كريم عبوة 40 جرام. سعره 50ج.', 'جفاف البشرة وتشققات الجلد. علاج مساعد فى علاج حب الشباب. الاكزيما والصدفية. التهابات البشرة وحروق الشمس. الحروق من الدرجة الاولى والتانية. أفتر كير بعد جلسات الليزروالدرمابن. التهابات الحفاضات. تشقق حلمات الثدى. روتين يومى لتجديد النضارة والوقايه من ظهور الخطوط الرفيعة', 1),
(2, 'Hair Forte Lotion Spray', 'products/October2022/bwzks0HzI76O0R4297tg.png', '120 LE', 'Hair forte is a mixture of natural extracts and extracts of the most important hair oils with anti-dandruff to be a fast and proven hair loss treatment to increase the strength of hair and prevent its loss.. Also, Hair forte spray stimulates hair growth to be an effective solution to fill the frontal spaces in women and men.. In addition to the treatment of hair dandruff. Itching associated with dryness and inflammation of the scalp. Hair forte lotion is suitable for all hair types, even an oily scalp.', '2020-12-17 11:30:40', '2022-11-01 13:55:22', 'Hair Forte is an Ideal natural blend for hair care', 'Jojoba   . Garlic   . Nigella  . Rosemary . Coffee', 'Ginkgo.          Thyme Oil      . Salicylic acid . Panthenol      . Aloe Vera', 'Spray onto wet or dry hair& Scalp “6 spray” Suitable amount then massage& style as usual, Once or twice daily preferably start from the forehead to back of the head in a circular movement or as directed by physician.', 'Hair Fort lotion is supplied in a bottle of 120 ml.', 'Diffuse hair fall.         Adjuvant therapy for Alopecia Areata.       Controls split ends, roughness, dryness& brittleness of hair.        Controls Dandruff', 'https://www.facebook.com/Hairfortelotionspray', 'https://www.jumia.com.eg/ar/hair-forte-hair-conditioning-lotion-120ml-18175829.html', 'https://www.amazon.eg/Interpharma-Egycare-%D8%A8%D8%AE%D8%A7%D8%AE-%D9%84%D9%88%D8%B4%D9%86-%D9%81%D9%88%D8%B1%D8%AA/dp/B0B8F2R75H/ref=sr_1_1?crid=FEYLZKNP0WP4&keywords=hair+forte&qid=1663684616&sprefix=hair+fort%2Caps%2C242&sr=8-1', 'https://www.noon.com/en-eg/hair-forte-lotion-120ml/N39928340A/p?utm_source=C1000094L&utm_medium=referral', 'هير فورتي لوشن', 'هيرفورت مزيج من المستخلصات الطبيعيه و خلاصات أهم زيوت للشعر مع مضادات القشره ليكون علاج سريع لتساقط الشعر  مضمون ومجرب ليزيد من قوة الشعر ومنع تساقطه ..  ايضا هيرفورت بخاخ يحفز  إنبات الشعر  ليكون حل فعال لملأ الفراغات الامامية عند النساء والرجال .. بالاضافة الى علاج قشره الشعر والحكه المصاحبة لجفاف والتهاب فروة الرأس  ..  لوشن هيرفورت مناسب لجميع انواع الشعر، حتي فروه الراس الدهنيه.', 'هير فورتي هو مزيج طبيعي مثالي للعناية بالشعر', 'الجوجوبا. ثوم   . نيجلا. إكليل الجبل . قهوة', 'الجنكة. زيت الزعتر. حمض الصفصاف . البانثينول. الصبار', 'يرش على الشعر الرطب أو الجاف وفروة الرأس \"6 سبراي\" بكمية مناسبة ثم دلكه وطريقة تسريحه كالمعتاد ، مرة أو مرتين يومياً ويفضل البدء من الجبهة إلى مؤخرة الرأس بحركة دائرية أو حسب توجيهات الطبيب.', 'يتم توفير غسول هير فورتى في زجاجة سعة 120 مل.', 'تساقط الشعر المنتشر. العلاج المساعد لمرض الثعلبة. يتحكم في الأطراف المتقصفة وخشونة وجفاف وهشاشة الشعر. يتحكم في قشرة الرأس', 2),
(3, 'Spleet Cream', 'products\\December2020\\lvng11iYKk5lVDXxun6t.png', '60 LE', 'Spleet is a gentle exfoliating cream with a unique triple action therapeutic formula for treating active acne, hidden pimple and dark spots, Spleet exfoliating has a soft peeling effect to remove dead skin buildup extremely dry, rough, scaly and aging skin Plus promoting a deep hydration that makes skin soft, smooth and less flaking. Spleet cream is safe for Face, Hand, Foot& Full Body and suitable for all kind of Skin.', '2020-12-19 12:25:35', '2022-11-24 17:25:32', 'Spleet is an effective combination of the following:-', 'Urea.  Salicylic Acid.  Lactic Acid', 'Tea Tree Oil .Chamomile', 'Apply a suitable amount of the cream to skin once daily. For sensitive skin just applied for 5 minute then washed.', 'Spleet cream  is supplied in a tube of 40gm. Price:- 60LE.', 'Severe Dry Skin. Keratosis Pilaris. Cracked heel. Rough, discolored Elbow & Knee. Psoriasis Patches.  Eczema. Active Acne. Hidden Pimple Dark Spots HYDRATE, BRIGHTEN & SMOOTH FINE LINES', 'https://www.facebook.com/valdo.cream', 'https://www.jumia.com.eg/ar/spleet-body-exfoliating-cream-40g-18175863.html', 'https://egypt.souq.com/eg-en/spleet-body-face-for-black-heads-123568943/i/', 'https://www.facebook.com/', 'كريم سبليت', 'سبلييت كريم ذو تركيبه علاجية ثلاثية المفعول للتقشير اللطيف والترطيب العمق مع العلاج السريع لجميع أنواع الحبوب سواء الحبوب تحت الجلد، حب الشباب أو حبوب الظهر والمؤخرة، أيضا علاج فعال فى إزالة آثار حب الشباب والبقع الغامقة ومجرب أيضا فى علاج الصدفيه، جلد الوزة و خشونه وتشققات الكعب والكوع والركبة, سبلييت مقشر يزيل الجلد الميت ويجدد البشرة لتنعيم وتوحيد لونها، يساعد فى تنظيف المسام بعمق والتخلص من الرؤوس السوداء والبيضاء ويساعد فى تنظيم إفراز الدهون بالبشرة. سبلييت مناسب لجميع انواع البشرة سوا العاديه- الدهنية - المختلطه و الجافة، أيضاً أمن للوجه والجسم والمناطق الحساسة.', 'تركيبة  طبيعية وفريدة تجمع  بين اليوريا ك مكون طبيعى فى الجلد مع مزيج من الاحماض الطبيعية  بنسب امنه لتعمل معا بكفاءة عالية ويتكون من:', 'اليوريا. ساليسيلك اسيد. الاكتيك اسيد', 'زيت شجرة الشاى.  	الكاموميل', 'توضع كمية بسيطة على المنطقة المراد علاجها وتدلك برفق حتى تمتص مرة يومياَ وللبشرة الحساسة يترك لمدة خمس دقائق ثم يغسل بالماء.', 'سبلييت كريم عبوة 40 جرام ..سعره 60 ج', 'علاج حب الشباب. علاج الحبوب تحت الجلد. علاج حبوب الظهر والمؤخرة. علاج الرؤوس البيضاء والسوداء. علاج أثار الحبوب والبقع الغامقة. علاج جلد الوزة. علاج تشققات الكعببين – الكوع – الركبتين. يساعد فى علاج الاكزيما والصدفية. جفاف الجلد الشديد. تجديد البشرة ويساعد فى توحيد لون البشرة. تنظيف المسام بعمق وتنظيم إفراز الدهون بالبشرة', 1),
(4, 'Aceto-V', 'products\\December2020\\WNCdn9zEI7kVlyQ3baEU.png', '50 LE', 'Acet-V is a feminine Intimate wash … An unique combination of real treatment for vaginal infection either bacterial or fungal plus Moisturizers, tightening agent to enjoy daily activities& sexual Intercourse', '2020-12-19 12:31:04', '2022-10-10 17:41:03', 'Chlorhexidine gluconate plus Cetrimide” has a broad antimicrobial activity& antiseptic.   Aloe Vera, Chamomile& Glycerin as Anti-inflammatory Moisturizers Emollient plus antimicrobial& antioxidant effect.', 'Chlorhexidine gluconate .Cetrimide', 'Aloe Vera . Chamomile .Glycerin', 'Applied directly without dilution, once per day for external use only.', 'Aceto-v is supplied in a 250 ml opaque bottle.', 'Bacterial vaginosis.  	Vaginal candidiasis. 	Atrophic Vaginitis. 	Vaginal irritation& itching.  Personal hygiene during menstrual cycle. Personal hygiene after sexual intercourse. Personal hygiene after Labor.	Tighten the vagina', 'https://www.facebook.com/acetov', 'https://www.jumia.com.eg/ar/aceto-v-feminine-intimate-wash-250-ml-15156955.html', 'https://egypt.souq.com/eg-en/aceto-v-feminin-intimate-solution-72697141/i/', 'https://www.facebook.com/', 'أسيتو - فى غسول', 'اسيتو فى  هو غسول حميم أنثوي ... مزيج فريد من العلاج الحقيقي للعدوى المهبلية سواء البكتيرية أو الفطرية بالإضافة إلى المرطبات ، عامل شدّ للاستمتاع بالأنشطة اليومية والجماع', '1- كلورهيكسيدين جلوكونات بالإضافة إلى سيتريميد \"له نشاط واسع كمضاد للميكروبات ومطهر. 2- الصبار والبابونج والجلسرين كمرطبات مضادة للالتهابات ومرطبات بالإضافة إلى تأثير مضاد للميكروبات ومضاد للأكسدة.', 'Chlorhexidine gluconate .Cetrimide', 'Aloe Vera . Chamomile .Glycerin', 'يطبق مباشرة بدون تخفيف ، مرة في اليوم للاستعمال الخارجي فقط.', 'يتم توفير اسيتو -فى  في زجاجة معتمة ضد الضوء 250 ملى.', 'التهاب المهبل الجرثومي. داء المبيضات المهبلي. التهاب المهبل الضموري. تهيج وحكة المهبل. النظافة الشخصية أثناء الدورة الشهرية. النظافة الشخصية بعد الجماع. النظافة الشخصية بعد الولادة. شد المهبل', 3),
(5, 'Beleza Cream', 'products/June2022/eFYk3TJ7MNJ6CVy8VsxK.png', '80 LE', 'Hair Moisturizing cream preferably for oily hair or normal hair.', '2021-07-31 20:58:10', '2022-10-22 18:56:01', 'Reduces split ends and adds shine to hair.Easy to style hair.', 'Mineral oil.stearic acid', 'lanolin anhydrous', 'Once a day,  Massage the hair with an appropriate amount daily and/or  after hair wash.', 'Beleza Cream  is supplied in a tube of 50 gm', 'Moisturizing cream is preferred for oily hair or normal hair. It protects hair from damage by external factors such as UV rays. It acts as a protective layer for hair strands to reduce damage to reduce hair loss. Reduces split ends.Adds shine to hair', 'https://www.facebook.com/Beleza.H.C.P', 'https://www.jumia.com.eg/ar/beleza-hair-cream-27708270.html', 'https://www.amazon.eg/Interpharma-Egycare-Beleza-Hair-Cream/dp/B0B8NXTTN3/ref=mp_s_a_1_1?crid=3HI0X5C1W3BP6&keywords=beleza+cream&qid=1663685275&sprefix=beleza+%2Caps%2C187&sr=8-1', 'https://www.facebook.com/Beleza.H.C.P', 'بليزا كريم', 'يفضل كريم ترطيب الشعر للشعر الدهني أو الشعر العادي.', 'يقلل تقصف الأطراف ويضفي لمعاناً على الشعر. سهل تصفيف الشعر.', 'اللانولين.السيتاريك اسيد', 'زيوت معدنية', 'مناسب مره واحده يومياً - يدلك به الشعر بكميه مناسبه او بعد غسيل الشعر.', 'انبوبة تحتوى على 50 جرام من بليزا كريم', 'يفضل كريم الترطيب للشعر الدهني أو الشعر العادي.يحمي الشعر من التلف بفعل العوامل الخارجية مثل الأشعة فوق البنفسجية.يعمل كطبقة واقية لخيوط الشعر لتقليل الضرر لتقليل تساقط الشعر. يقلل تقصف الأطراف.يضيف لمعاناً للشعر', 2),
(6, 'Beleza solution Spray', 'products/October2022/IECiWuSePUC5FBENKGpH.png', '100 LE', 'Beleza is a special formula of essential natural extracts for Nourishing  and fortifying hair  to reduce  hair loss.', '2022-06-01 22:58:32', '2022-10-22 18:37:39', 'Moisturizing  hair from its roots to the ends.Reduces scalp irritation and infections. Controlling dandruff.', 'Salicylic acid.Aloe Vera extract.Thyme extract.D-panthenol', 'Glycerin.Chamomile extract', 'once or twice a week or as needed,  To be rubbed  gently onto Scalp& hair.', 'Beleza Cream  is supplied in a Bottle of 100 ml', 'Contains a special formula of basic natural extracts. Helps to grow and intensify hair. Reducing the problem of hair loss treats dandruff. Anti-inflammatory and anti-fungal. Contains the most powerful natural materials, effective in moisturizing and nourishing hair from roots to ends', 'https://www.facebook.com/Beleza.H.C.P', 'https://www.facebook.com/Beleza.H.C.P', 'https://www.amazon.eg/Interpharma-Egycare-Beleza-Hair-Solution/dp/B0B8NZLYRT/ref=mp_s_a_1_1?crid=2HYINFALMBFTJ&keywords=beleza+solution&qid=1663685200&sprefix=beleza+solutio%2Caps%2C240&sr=8-1', 'https://www.facebook.com/Beleza.H.C.P', 'بليزا محلول اسبراى', 'بليزا اسبراي له تأثير مضاد للقشرة ومضاد للالتهابات ومضاد للفطريات لعلاج تساقط الشعر والقشرة والتهابات فروة الرأس', 'تركيبة خاصة من المستخلصات الطبيعية الأساسية لـتغذية و ترطيب الشعر لتقليل التساقط  من الجذور حتى الأطراف', 'مستخلص الكاموميل.مستخلص الصبار.البانثينول.حمض السالسيليك', 'الجلسرين.مستخلص الشاى الاخضر', 'مرة أو مرتين في الأسبوع أو حسب الحاجة ، يُدهن بلطف على فروة الرأس والشعر', 'زجاجة تحتوى على 100ملى من محلول بليزا', 'يحتوي علي تركيبة خاصة من المستخلصات الطبيعية الأساسية.يساعد علي انبات الشعر و تكثيفه.تقليل مشكله التساقط يعالج القشره.مضاد للالتهابات و الفطريات.يحتوي علي اقوي المواد الطبيعيه فاعليه في ترطيب الشعر و تغذيته من جذوره حتي اطرافه', 2),
(7, 'Spleet Whiting', 'products/October2022/luNAN7UP8IFMSiyJA9zW.png', '80 LE', 'Spleet whitening cream offers the strongest unique natural formula that works through Triple powers of lighten- moisturize& skin rejuvenation with triple different mechanisms of action for Achieving a de-pigmentation effect to lighten dark spots effectively & unify the skin tone hinder the development of dark patches and  Keep skin hydrated& protected, it  also  stimulates collagen production and regulate sebum secretion to reduce the appearance of acne, pimple and large pores, Spleet whitening cream is Safe for face, sensitive areas, under arm, Bikini& full body and For All skin types “ dry skin - normal - mixed - oily or sensitive skin\" either for girls, women or  men, Spleet cream is available in pharmacies also.', '2022-09-20 19:50:40', '2022-11-10 17:04:43', 'Spleet whitening cream is a potent composition from triple groups of ingredients “skin lightening agents, skin exfoliating agents and skin moisturizing& antioxidant agents for treatment of hyperpigmentation and  lighten dark spots effectively:', 'Alpha- Arbutin. Kojic Acid.  Niacinamide.  Licorice.  Glycolic Acid', 'Vitamin A. Vitamin C. Vitamin E Zinc oxid. Allantoin. Glycerin', 'Apply a small amount on the face or area to be lightened once at night.', 'Spleet Whitening cream  is supplied in a tube of 40gm. Price: 80 LE', 'Sun Exposure.  Age Spots.   Melasma. Post Inflammatory hyperpigmentation as. Acne scars. Sunburn.  Chemical peels. Laser resurfacing', 'https://www.facebook.com/commerce/products/%D8%B3%D8%A8%D9%84%D9%8A%D8%AA-%D9%83%D8%B1%D9%8A%D9%85-%D8%AA%D9%81%D8%AA%D9%8A%D9%8A%D8%AD-spleet-whiten-cream/5180072555409618/?ref=page_home_tab&referral_code=page_shop_card', 'https://www.jumia.com.eg/ar/spleet-whitening-cream-27707526.html', 'https://www.amazon.eg/Interpharma-Egycare-Spleet-whiten-Cream/dp/B0B8KZ99VL/ref=sr_1_2?crid=2XUU17QB07GRD&keywords=spleet&qid=1663684579&sprefix=spleet%2Caps%2C284&sr=8-2', 'https://www.noon.com/egypt-ar/search/?q=spleet', 'سبليت تفتييح', 'سبلييت كريم تفتيح البشرة هو أقوي تركيبه  تعمل بقوة ثلاثيه لتفتيح - ترطيب- تجديد البشرة،  سبلييت تفتيح يجمع أهم مواد تبييض وتفتيح الوجه، المناطق الحساسه، اندر ارم وكل الجسم بشكل آمن وهو فعال فى علاج وإزالة التصبغات والبقع الغامقة والاسمرار واى أثار حبوب أو أثار شمس لتوحيد وإعادة لون البشرة عن طريق تنظيم إفراز مادة الميلانين المسؤول عن التصبغات، كذلك يساعد فى زيادة نضارة البشرة لأنه يحتوى على أهم مضادات الأكسدة والمرطبات مع النياسيناميد و الجليكوليك اسيد لتنظيف البشرة بعمق وتنظيم إفراز الدهون للحد من ظهور الحبوب والمسام الواسعه، سبلييت مناسب للفتيات- النساء والرجال وهو آمن لجميع أنواع البشرة سواء الجافة- الدهنية- المختلطه والعاديه ومتاح فى الصيدلية.', 'كريم سبليت تفتيح تركيبة فريدة - طبيعية لتوحيد لون البشرة لانها تجمع أهم مواد التفتيح وترطيب البشرة والمسؤوله عن تجديد نضارتها وحيويتها', 'الفااربيوتين. حمض الكوجيك. عرق السوس. النياسيناميد. حمض الجليكوليك', 'فيتامين أ.  فيتامين سي. فيتامين ه. أكسيد الزنك. الانتوين. الجلسرين', 'يستخدم طبقة خفيفة على المنطقة المراد تفتيح  وتوحيد لونها  مرة واحدة يوميا قبل النوم.', 'سبلييت كريم تفتيح عبوة 40 جرام . السعر: 80 ج', 'البقع الغامقة والتصبغات. الكلف. أثار حب الشباب. أثار حروق الشمس. اسمرار المناطق الحساسة. اسمرار اندر ارم – البكينى. اسمرار البشرة بعد جلسات الليزر. أفتر كير بعد جلسات التفتيح والتقشير', 1),
(8, 'Detangling and frizzing set', 'products/October2022/mGCP5qK3WRtgRdkRlxBv.png', '300 LE instead of 390 LE', 'For mammies are searching for a solution for tangngling& frizzing of  their daughter hair, we will deliver you free shipping 🔥 of Detangling and frizzing set 🙋🏻‍♀️', '2022-10-04 23:56:19', '2022-10-04 23:56:19', 'Beleza Detangling and frizzing set is a natural and safe/effective solution in detangling tangles and fragility and preventing split ends.', 'Beleze set is complete routine starting from:   1-Beleza shampoo with a safe natural formula to clean and moisturize the hair and make the hair soft and soft.', '2-Beleza Intensive Care Spray twice a week to nourish and strengthen light hair and prevent loss and breakage.  3-Beleza cream with the power of lanolin that will applied daily onto hair, it deeply moisturizes hair and detangles it to facilitate styling and reduce frizz with a layer of protection from dust.   4-Beleza Oil with the power of the 6 most important oils for intensive care of curly or very dry hair only once before bed and maybe a cream bath once a week.', 'Beleza Shampoo = Twice/ week        - Beleza Spray = Twice/ week         -Beleza cream= Applied daily.                - Beleza oil= at night.', 'Beleza Shampoo 200ml                    -Beleza Spray 100ml               -Beleza cream 50gm             -Beleza oil 100ml', 'Detangling and frizzing set', 'https://www.facebook.com/interpharma.egycare1/videos/636813011301498', 'https://www.jumia.com.eg/catalog/?q=beleza', 'https://www.amazon.eg/-/en/Interpharma-Egycare-Beleza-Hair-Cream/dp/B0B8NXTTN3/ref=sr_1_1?crid=1F2RLGMWEC50Y&keywords=beleza+cream&qid=1664909125&sprefix=beleza%2Caps%2C285&sr=8-1', 'https://www.noon.com/egypt-en/hair-forte-lotion-120ml/N39928340A/p/?o=aaf9053d8372258b', 'مجموعه بليزا لفك التشابك والهيشان', 'مجموعة بليزا لفك التشابك والهيشان.', 'تقدم الحل لكل الامهات الباحثات هن الحل لتسهيل تصفيف الشعر- وحل التشابك- ترطيب الشعر ومنع تقصفه.', 'مجموعة بليزا متكاملة - مكونات طبيعية أمنه للاطفال والكبار /فعاله فى فك التشابك والهيشان ومنع التقصف.', 'بليزا روتين متكاملل يتكون من:  ١- بليزا شامبو بتركيبة طبيعية أمنه لتنظيف الشعر وترطيبه ليجعلة الشعر ناعم مرطب طول اليوم.  ٢- بليزا اسبراى بالخلاصات الطبيعية الهامه للعناية المكثفة وتغذيه الشعر لتقويته ومنع التساقط والتقصف.         ٣- بليزا كريم بقوة اللانولين يرطب الشعر  بعمق ويفك التشابك لتسهيل تصفيفه وتقليل الهيشان ويكون طبقه تغلف الشعر لحمايته من الأتربة.    ٤-بليزا زيت بقوة أهم ٦ زيوت للعناية المكثفة للشعر المجعد و شديد الجفاف  مثل زيت الزيتون - لانولين- الخروع -اللوز -بذر الكتان- زيت جنين القمح', 'بليزا شامبو= يغسل به الشعر مرتين اسبوعيا.      بليزا اسبراى= يوضع على الشعر مرتين اسبوعيا.    بليزا كريم= يوميا على الشعر ويدلك برفق.     بليزا زيت= يوميا مساءا ويدلك الشعر برفق, ويمكن استخدامه كحمام كريم.', 'بليزا شامبو= 200مل           بليزا كريم=50جرام         بليزا اسبراى=100مل       بليزا زيت=100مل', 'مجموعه بليزا لفك التشابك- الهيشان- التقصف- ومنع التساقط.', 4),
(9, 'Beleza Hair Anti-dandruff Shampoo', 'products/October2022/KkdTepmjj0gLByxPHRZv.png', '110 LE', 'Beleza shampoo is  natural formula to be safe on the scalp and hair, to assure deep clean of the hair& give it shine leave that deeply hydrated for reducing hair loss also beleza is highly effective medicated shampoo to get rid all kinds of dandruff without causing dry hair to reduce breakage and frizz. Beleza shampoo is suitable for all hair types either oily or dry hair and Beleza Shampoo is safe for children - girls - women and men.', '2022-10-08 18:38:19', '2022-11-26 16:34:44', 'Cleans. moisturizes.smoothes.reduces dandruff Special formula of basis natural extracts', 'Aloe Vera extract.Coconut oil.D-panthenol', 'Piractone.olamin.CETAROL', '2-3 times a week on wet hair, massage gently, then rinse well with lukewarm water', 'Beleza Shampoo 200ml. Price:- 110LE.', 'Effective in deep cleansing the hair and scalp.Treats dandruff and its causes.It moisturizes hair well and increases hair elasticity.Treats split ends', 'https://www.facebook.com/interpharma.egycare1/videos/636813011301498', 'https://www.jumia.com.eg/catalog/?q=beleza', 'https://www.amazon.eg/-/en/Interpharma-Egycare-Beleza-Hair-Cream/dp/B0B8NXTTN3/ref=sr_1_1?crid=1F2RLGMWEC50Y&keywords=beleza+cream&qid=1664909125&sprefix=beleza%2Caps%2C285&sr=8-1', 'https://www.noon.com/egypt-en/hair-forte-lotion-120ml/N39928340A/p/?o=aaf9053d8372258b', 'بليزا شامبو ضد القشره', 'بليزا شامبو بمكونات طبيعية اّمن على الفروة والشعر .. لتنظيف الشعر ومنحه اللمعان والترطيب العميق الازم له مع تقليل تساقط الشعر والتخلص من القشرة بكل أنواعها  دون ان يسبب جفاف الشعر ليقلل من التقصف والهيشان, بليزا شامبو يناسب كل انواع الشعر سواء الشعر الدهنى أو الجاف و ايضا امان مع الاطفال - البنات- السيدات والرجال', 'ينظف - يرطب - ينعم - يقلل من قشرة الرأس تركيبة خاصة من المستخلصات الطبيعية الأساسية', 'خلاصة الصبار.زيت جوز الهند.بانثينول', 'بيروكتون أولامين.الستيرول', '2-3 مرات أسبوعياً على الشعر المبلل ، دلكيه برفق ، ثم اشطفيه جيداً بالماء الفاتر.', 'بليزا شامبو= 200مل. السعر110 جنيها.', 'فعال في التنظيف العميق للشعر وفروة الرأس. يعالج قشرة الرأس وأسبابها.يرطب الشعر جيدًا ويزيد من مرونة الشعر.يعالج تقصف الأطراف', 2),
(10, 'Beleza Hair Care oil', 'products/October2022/wj1GwNhhZ7gzD2AEr6mp.png', '150 LE', 'Beleza Oil contains a powerful natural blend of essential oil for hair to.Moisturize the hair deeply from its roots to its ends.Protects hair from breakage.Strengthens hair and helps intensify hair and grow it healthy.Suitable for dry,curly or dyed hair and can be used as an after care 4 or 5 days after protein.', '2022-10-08 19:10:47', '2022-10-22 18:06:24', 'Beleza hair care oil consists of natural ingredients to be a unique formula for complete hair care', 'Olive Oil.Lanolin Oil.Linseed Oil.Caster Oil', 'Almond Oil.Wheat Germ Oil', 'once a day - Use an appropriate amount on the hair and massage gently. can be used as an oil bath to deeply moisturize and soften hair.', '-Beleza oil 100ml', 'Reduces hair loss. Treats damaged limbs. Deeply moisturizes, strengthens and nourishes hair', 'https://www.facebook.com/interpharma.egycare1/videos/636813011301498', 'https://www.jumia.com.eg/catalog/?q=beleza', 'https://www.amazon.eg/-/en/Interpharma-Egycare-Beleza-Hair-Cream/dp/B0B8NXTTN3/ref=sr_1_1?crid=1F2RLGMWEC50Y&keywords=beleza+cream&qid=1664909125&sprefix=beleza%2Caps%2C285&sr=8-1', 'https://www.noon.com/egypt-en/hair-forte-lotion-120ml/N39928340A/p/?o=aaf9053d8372258b', 'زيت بليزا للعناية بالشعر', 'يحتوي زيت بليزا على مزيج طبيعي قوي من الزيت العطري للشعر من أجل يرطب الشعر بعمق من جذوره إلى أطرافه.يحمي الشعر من التقصف.يقوي الشعر ويساعد على تكثيف الشعر و يساعد علي نموه بشكل صحي.مناسب للشعر الجاف أو المجعد أو المصبوغ ويمكن استخدامه بعد 4 أو 5 أيام بعد البروتين.', 'يتكون زيت بيليزا للعناية بالشعر من مكونات طبيعية ليكون تركيبة فريدة للعناية الكاملة بالشعر', 'يحتوي علي زيت الزيتون .لانولين.زيت الخروع.زيت اللوز', 'زيت بذر الكتان. زيت جنين القمح', 'مرة في اليوم - استخدمي كمية مناسبة على الشعر ودلكي بلطف. يمكن استخدامه كحمام زيت لترطيب وتنعيم الشعر بعمق', '-زيت بليزا 100 مل', 'يقلل من تساقط الشعر. علاج الأطراف التالفة. يرطب ويقوي ويغذي الشعر بعمق', 2);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_ar` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name_ar`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 'منتجات العنايه بالبشره', 'Skin care products', '2021-04-22 17:45:25', '2021-06-02 21:14:26'),
(2, 'منتجات العناية بالشعر', 'Hair care products', '2021-04-22 18:32:02', '2021-06-02 21:15:15'),
(3, 'منتجات العناية الشخصية', 'Personal care products', '2021-04-22 19:00:43', '2021-06-02 21:16:00'),
(4, 'عروض حصرية', 'Special offers', '2022-10-04 22:17:29', '2022-10-04 22:17:29');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-12-17 06:19:01', '2020-12-17 06:19:01'),
(2, 'user', 'Normal User', '2020-12-17 11:21:58', '2020-12-17 11:21:58');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
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
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Interpharama', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welocme to Interpharama Dashboard', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `locale`, `created_at`, `updated_at`) VALUES
(21, 'sliders/April2021/E2J50Y6ZZAgewK0snind.png', 'ar', '2021-03-30 21:00:28', '2021-04-22 18:36:20'),
(22, 'sliders/April2021/enpMqRRb9fL9R2IDsktX.png', 'en', '2021-03-30 21:00:54', '2021-04-22 18:35:58'),
(23, 'sliders/April2021/002y6Z8uWdD0BsObkrIm.png', 'ar', '2021-03-30 21:01:14', '2021-04-22 18:35:43'),
(29, 'sliders/April2021/1juhtafxeq8YVNNDtl4B.png', 'ar', '2021-03-30 21:03:58', '2021-04-22 18:33:48'),
(30, 'sliders/April2021/ye1JSCxZtR7lEjdZ8uXp.png', 'en', '2021-03-30 21:04:16', '2021-04-22 18:33:30'),
(26, 'sliders/May2021/wvhL2hQcMNGFbxbmg1ss.png', 'en', '2021-03-30 21:02:25', '2021-05-04 19:12:48'),
(27, 'sliders/May2021/09mvUGuOVb9VjWQmsvqo.png', 'ar', '2021-03-30 21:02:50', '2021-05-04 19:13:10'),
(28, 'sliders/April2021/7LzVxs78eJGEE0Uq9e8N.png', 'en', '2021-03-30 21:03:14', '2021-04-22 18:34:10'),
(31, 'sliders/April2021/lUhYeK8HRQypWnzg5rud.png', 'ar', '2021-03-30 21:04:32', '2021-04-22 18:33:06'),
(32, 'sliders/April2021/OokcKZ8tNB4CsnHT5fds.png', 'en', '2021-03-30 21:05:21', '2021-04-22 18:31:15'),
(18, 'sliders/April2021/vTIjTSjM1Dz5A5JdOmHA.png', 'en', '2021-03-30 20:59:33', '2021-04-22 18:37:36'),
(19, 'sliders/April2021/9qvp77J2dDCNTra4syd0.png', 'ar', '2021-03-30 20:59:50', '2021-04-22 18:37:16'),
(20, 'sliders/April2021/pNJmojeLWTo0TJIaKsdP.png', 'en', '2021-03-30 21:00:15', '2021-04-22 18:36:40'),
(33, 'sliders/May2021/wIuwXUv2Jb7bmoMXbK8j.png', 'ar', '2021-03-30 21:05:41', '2021-05-04 19:14:14'),
(41, 'sliders/October2022/9GKTYhPtEBsHnrBXrP8V.png', 'en', '2022-10-16 18:40:55', '2022-10-16 18:40:55'),
(35, 'sliders/April2021/lRF78PiHgrPHys7jRpej.png', 'ar', '2021-04-22 19:08:47', '2021-04-22 19:08:47'),
(37, 'sliders/June2021/G5lM2R3UhqrCaKOrtypJ.jpg', 'en', '2021-06-02 21:38:23', '2021-06-02 21:40:47'),
(38, 'sliders/June2021/mAYZ3DiK8IRESZXuXQQc.png', 'ar', '2021-06-02 21:39:14', '2021-06-02 21:39:14'),
(39, 'sliders/June2021/0BZyB0iMyiBa1vJQF2rJ.png', 'ar', '2021-06-02 21:39:52', '2021-06-02 21:39:52'),
(40, 'sliders/June2021/5tPVgFRBGwvxZTih002t.png', 'en', '2021-06-02 21:41:42', '2021-06-02 21:41:42');

-- --------------------------------------------------------

--
-- Table structure for table `stars`
--

CREATE TABLE `stars` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stars`
--

INSERT INTO `stars` (`id`, `product_id`, `user_id`, `counter`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 4, '2021-07-31 01:29:21', '2021-09-24 05:07:08'),
(2, 1, 1, 1, '2021-09-24 05:07:23', '2021-09-24 05:07:23'),
(3, 2, 1, 2, '2021-09-24 05:14:49', '2021-09-24 05:14:49'),
(4, 2, 25, 4, '2022-02-16 20:53:06', '2022-02-16 23:20:11'),
(5, 4, 25, 1, '2022-02-16 20:53:23', '2022-02-16 20:53:23'),
(6, 5, 25, 5, '2022-02-16 20:53:33', '2022-02-16 20:54:19'),
(7, 3, 25, 5, '2022-02-16 23:06:48', '2022-02-16 23:19:36');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `postion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_postion` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`, `postion`, `ar_name`, `ar_description`, `ar_postion`) VALUES
(1, 'Sanaa Fayez', 'All brands are manufactured under supervision of Canadian Expert in drug formulation, that ensures quality and effectiveness of our brands, that will change and improve patient\'s quality of life.', 'teams/March2021/LxNrEjCK0wCK0KKC2Pea.jpeg', '2020-12-24 06:38:03', '2021-03-22 20:18:41', 'Marketing', 'سناء فايز', 'جميع المنتجات والعلامات التجارية يتم تصنيعها تحت إشراف خبراء كنديين في صياغة الأدوية ، مما يضمن جودة وفعالية علاماتنا التجارية ، والتي تساعد فى تغيير وتحسن نوعية حياة عملاءنا.', 'التسويق'),
(2, 'Nabil Ashry', 'All brands are manufactured under supervision of Canadian Expert in drug formulation, that ensures quality and effectiveness of our brands, that will change and improve patient\'s quality of life.', 'teams/March2021/ygQXOFxFIgnPcwLy1pof.jpeg', '2020-12-24 06:39:51', '2021-03-22 20:15:28', 'CEO', 'نبيل العشرى', 'جميع المنتجات والعلامات التجارية يتم تصنيعها تحت إشراف خبراء كنديين في صياغة الأدوية ، مما يضمن جودة وفعالية علاماتنا التجارية ، والتي تساعد فى تغيير وتحسن نوعية حياة عملاءنا.', 'المدير التنفيذى'),
(3, 'Mohamed Al Sherif', 'All brands are manufactured under supervision of Canadian Expert in drug formulation, that ensures quality and effectiveness of our brands, that will change and improve patient\'s quality of life.', 'teams/March2021/LyyRV88jSkGDF2ocpkha.jpeg', '2020-12-24 06:23:00', '2021-03-22 20:26:39', 'Sales', 'محمد الشريف', 'جميع المنتجات والعلامات التجارية يتم تصنيعها تحت إشراف خبراء كنديين في صياغة الأدوية ، مما يضمن جودة وفعالية علاماتنا التجارية ، والتي تساعد فى تغيير وتحسن نوعية حياة عملاءنا.', 'المبيعات'),
(4, 'Mohamed Ibrahim', 'All brands are manufactured under supervision of Canadian Expert in drug formulation, that ensures quality and effectiveness of our brands, that will change and improve patient\'s quality of life.', 'teams/July2021/ap9RCBjftU1lRUAKqKLC.jpeg', '2021-03-22 20:28:23', '2021-07-31 19:34:45', 'Accounting', 'كيرلس أسعد', 'جميع المنتجات والعلامات التجارية يتم تصنيعها تحت إشراف خبراء كنديين في صياغة الأدوية ، مما يضمن جودة وفعالية علاماتنا التجارية ، والتي تساعد فى تغيير وتحسن نوعية حياة عملاءنا.', 'الحسابات'),
(5, 'Salma  Ashry', 'All brands are manufactured under supervision of Canadian Expert in drug formulation, that ensures quality and effectiveness of our brands, that will change and improve patient\'s quality of life.', 'teams/April2021/duLrAIQIv2zZTGR1dUVl.jpeg', '2021-04-17 18:39:53', '2021-04-17 18:39:53', 'HR Specialist', 'سلمى العشرى', 'جميع المنتجات والعلامات التجارية يتم تصنيعها تحت إشراف خبراء كنديين في صياغة الأدوية ، مما يضمن جودة وفعالية علاماتنا التجارية ، والتي تساعد فى تغيير وتحسن نوعية حياة عملاءنا.', 'الموارد البشرية');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
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
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2020-12-17 11:22:03', '2020-12-17 11:22:03'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2020-12-17 11:22:03', '2020-12-17 11:22:03'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2020-12-17 11:22:03', '2020-12-17 11:22:03'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2020-12-17 11:22:03', '2020-12-17 11:22:03'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2020-12-17 11:22:03', '2020-12-17 11:22:03'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2020-12-17 11:22:03', '2020-12-17 11:22:03'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2020-12-17 11:22:03', '2020-12-17 11:22:03'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2020-12-17 11:22:03', '2020-12-17 11:22:03'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2020-12-17 11:22:03', '2020-12-17 11:22:03'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2020-12-17 11:22:03', '2020-12-17 11:22:03'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2020-12-17 11:22:04', '2020-12-17 11:22:04'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2020-12-17 11:22:04', '2020-12-17 11:22:04'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2020-12-17 11:22:04', '2020-12-17 11:22:04'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2020-12-17 11:22:04', '2020-12-17 11:22:04'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2020-12-17 11:22:04', '2020-12-17 11:22:04'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2020-12-17 11:22:04', '2020-12-17 11:22:04'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2020-12-17 11:22:04', '2020-12-17 11:22:04'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2020-12-17 11:22:04', '2020-12-17 11:22:04'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2020-12-17 11:22:04', '2020-12-17 11:22:04'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2020-12-17 11:22:04', '2020-12-17 11:22:04'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2020-12-17 11:22:04', '2020-12-17 11:22:04'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2020-12-17 11:22:04', '2020-12-17 11:22:04'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2020-12-17 11:22:04', '2020-12-17 11:22:04'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2020-12-17 11:22:04', '2020-12-17 11:22:04'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2020-12-17 11:22:04', '2020-12-17 11:22:04'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2020-12-17 11:22:04', '2020-12-17 11:22:04'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2020-12-17 11:22:04', '2020-12-17 11:22:04'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2020-12-17 11:22:04', '2020-12-17 11:22:04'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2020-12-17 11:22:04', '2020-12-17 11:22:04'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2020-12-17 11:22:04', '2020-12-17 11:22:04'),
(31, 'data_rows', 'display_name', 16, 'ar', 'المسلسل', '2021-03-28 12:04:20', '2021-03-28 12:04:20'),
(32, 'data_rows', 'display_name', 17, 'ar', 'الاسم', '2021-03-28 12:04:20', '2021-03-28 12:04:20'),
(33, 'data_rows', 'display_name', 20, 'ar', 'الاسم الظاهر', '2021-03-28 12:04:20', '2021-03-28 12:04:20'),
(34, 'data_rows', 'display_name', 18, 'ar', 'التاريخ', '2021-03-28 12:04:20', '2021-03-28 12:04:20'),
(35, 'data_rows', 'display_name', 19, 'ar', 'Updated At', '2021-03-28 12:04:20', '2021-03-28 12:04:20'),
(36, 'data_types', 'display_name_singular', 3, 'ar', 'الصلاحية', '2021-03-28 12:04:20', '2021-03-28 12:04:20'),
(37, 'data_types', 'display_name_plural', 3, 'ar', 'الصلاحيات', '2021-03-28 12:04:20', '2021-03-28 12:04:20'),
(38, 'data_rows', 'display_name', 1, 'ar', 'المسلسل', '2021-03-28 12:05:46', '2021-03-28 12:05:46'),
(39, 'data_rows', 'display_name', 21, 'ar', 'Role', '2021-03-28 12:05:46', '2021-03-28 12:05:46'),
(40, 'data_rows', 'display_name', 2, 'ar', 'الاسم', '2021-03-28 12:05:46', '2021-03-28 12:05:46'),
(41, 'data_rows', 'display_name', 3, 'ar', 'البريد الالكترونى', '2021-03-28 12:05:46', '2021-03-28 12:05:46'),
(42, 'data_rows', 'display_name', 8, 'ar', 'الصورة', '2021-03-28 12:05:46', '2021-03-28 12:05:46'),
(43, 'data_rows', 'display_name', 260, 'ar', 'تاكيد البريد الالكترونى', '2021-03-28 12:05:46', '2021-03-28 12:05:46'),
(44, 'data_rows', 'display_name', 4, 'ar', 'كلمة المرور', '2021-03-28 12:05:46', '2021-03-28 12:05:46'),
(45, 'data_rows', 'display_name', 5, 'ar', 'Remember Token', '2021-03-28 12:05:46', '2021-03-28 12:05:46'),
(46, 'data_rows', 'display_name', 11, 'ar', 'Settings', '2021-03-28 12:05:46', '2021-03-28 12:05:46'),
(47, 'data_rows', 'display_name', 6, 'ar', 'التاريخ', '2021-03-28 12:05:46', '2021-03-28 12:05:46'),
(48, 'data_rows', 'display_name', 7, 'ar', 'Updated At', '2021-03-28 12:05:46', '2021-03-28 12:05:46'),
(49, 'data_rows', 'display_name', 9, 'ar', 'الصلاحية', '2021-03-28 12:05:46', '2021-03-28 12:05:46'),
(50, 'data_rows', 'display_name', 10, 'ar', 'الصلاحية الاضافية', '2021-03-28 12:05:46', '2021-03-28 12:05:46'),
(51, 'data_types', 'display_name_singular', 1, 'ar', 'المستخدم', '2021-03-28 12:05:46', '2021-03-28 12:05:46'),
(52, 'data_types', 'display_name_plural', 1, 'ar', 'المستخدمون', '2021-03-28 12:05:46', '2021-03-28 12:05:46'),
(53, 'data_rows', 'display_name', 56, 'ar', 'المسلسل', '2021-03-28 12:09:39', '2021-03-28 12:09:39'),
(54, 'data_rows', 'display_name', 57, 'ar', 'المدينة', '2021-03-28 12:09:39', '2021-03-28 12:09:39'),
(55, 'data_rows', 'display_name', 58, 'ar', 'العنوان', '2021-03-28 12:09:39', '2021-03-28 12:09:39'),
(56, 'data_rows', 'display_name', 59, 'ar', 'رقم الهاتف', '2021-03-28 12:09:39', '2021-03-28 12:09:39'),
(57, 'data_rows', 'display_name', 60, 'ar', 'التاريخ', '2021-03-28 12:09:39', '2021-03-28 12:09:39'),
(58, 'data_rows', 'display_name', 61, 'ar', 'Updated At', '2021-03-28 12:09:39', '2021-03-28 12:09:39'),
(59, 'data_types', 'display_name_singular', 7, 'ar', 'الفرع', '2021-03-28 12:09:39', '2021-03-28 12:09:39'),
(60, 'data_types', 'display_name_plural', 7, 'ar', 'الفروع', '2021-03-28 12:09:39', '2021-03-28 12:09:39'),
(61, 'data_rows', 'display_name', 161, 'ar', 'المسلسل', '2021-03-28 12:20:58', '2021-03-28 12:20:58'),
(62, 'data_rows', 'display_name', 162, 'ar', 'البريد الالكترونى', '2021-03-28 12:20:58', '2021-03-28 12:20:58'),
(63, 'data_rows', 'display_name', 163, 'ar', 'رقم الهاتف', '2021-03-28 12:20:58', '2021-03-28 12:20:58'),
(64, 'data_rows', 'display_name', 220, 'ar', 'العنوان بالانجلش', '2021-03-28 12:20:58', '2021-03-28 12:20:58'),
(65, 'data_rows', 'display_name', 165, 'ar', 'التاريخ', '2021-03-28 12:20:58', '2021-03-28 12:20:58'),
(66, 'data_rows', 'display_name', 166, 'ar', 'Updated At', '2021-03-28 12:20:58', '2021-03-28 12:20:58'),
(67, 'data_rows', 'display_name', 221, 'ar', 'رابط الموقع', '2021-03-28 12:20:58', '2021-03-28 12:20:58'),
(68, 'data_rows', 'display_name', 222, 'ar', 'رابط الفيس بوك', '2021-03-28 12:20:58', '2021-03-28 12:20:58'),
(69, 'data_rows', 'display_name', 223, 'ar', 'رابط اليوتيوب', '2021-03-28 12:20:58', '2021-03-28 12:20:58'),
(70, 'data_rows', 'display_name', 224, 'ar', 'رابط لينكدان', '2021-03-28 12:20:58', '2021-03-28 12:20:58'),
(71, 'data_rows', 'display_name', 225, 'ar', 'رابط انستجرام', '2021-03-28 12:20:58', '2021-03-28 12:20:58'),
(72, 'data_rows', 'display_name', 226, 'ar', 'رابط التك توك', '2021-03-28 12:20:58', '2021-03-28 12:20:58'),
(73, 'data_rows', 'display_name', 227, 'ar', 'العنوان بالعربى', '2021-03-28 12:20:58', '2021-03-28 12:20:58'),
(74, 'data_types', 'display_name_singular', 19, 'ar', 'التواصل معك', '2021-03-28 12:20:58', '2021-03-28 12:20:58'),
(75, 'data_types', 'display_name_plural', 19, 'ar', 'التواصل معك', '2021-03-28 12:20:58', '2021-03-28 12:20:58'),
(76, 'data_rows', 'display_name', 168, 'ar', 'المسلسل', '2021-03-28 12:25:08', '2021-03-28 12:25:08'),
(77, 'data_rows', 'display_name', 169, 'ar', 'الاسم بالانجلش', '2021-03-28 12:25:08', '2021-03-28 12:25:08'),
(78, 'data_rows', 'display_name', 170, 'ar', 'الوصف بالانجلش', '2021-03-28 12:25:08', '2021-03-28 12:25:08'),
(79, 'data_rows', 'display_name', 171, 'ar', 'الصورة', '2021-03-28 12:25:08', '2021-03-28 12:25:08'),
(80, 'data_rows', 'display_name', 172, 'ar', 'التاريخ', '2021-03-28 12:25:08', '2021-03-28 12:25:08'),
(81, 'data_rows', 'display_name', 173, 'ar', 'Updated At', '2021-03-28 12:25:08', '2021-03-28 12:25:08'),
(82, 'data_rows', 'display_name', 174, 'ar', 'المسمى الوظيفى بالانجلش', '2021-03-28 12:25:08', '2021-03-28 12:25:08'),
(83, 'data_rows', 'display_name', 175, 'ar', 'الاسم بالعربى', '2021-03-28 12:25:08', '2021-03-28 12:25:08'),
(84, 'data_rows', 'display_name', 176, 'ar', 'الوصف بالعربى', '2021-03-28 12:25:08', '2021-03-28 12:25:08'),
(85, 'data_rows', 'display_name', 177, 'ar', 'المسمى الوظيفى بالعربى', '2021-03-28 12:25:08', '2021-03-28 12:25:08'),
(86, 'data_types', 'display_name_singular', 20, 'ar', 'قريق العمل', '2021-03-28 12:25:09', '2021-03-28 12:25:09'),
(87, 'data_types', 'display_name_plural', 20, 'ar', 'فريق العمل', '2021-03-28 12:25:09', '2021-03-28 12:25:09'),
(88, 'data_rows', 'display_name', 203, 'ar', 'المسلسل', '2021-03-28 12:34:16', '2021-03-28 12:34:16'),
(89, 'data_rows', 'display_name', 204, 'ar', 'الاسم بالانجلش', '2021-03-28 12:34:16', '2021-03-28 12:34:16'),
(90, 'data_rows', 'display_name', 205, 'ar', 'الصورة', '2021-03-28 12:34:16', '2021-03-28 12:34:16'),
(91, 'data_rows', 'display_name', 206, 'ar', 'التاريخ', '2021-03-28 12:34:16', '2021-03-28 12:34:16'),
(92, 'data_rows', 'display_name', 207, 'ar', 'من الكاتب', '2021-03-28 12:34:16', '2021-03-28 12:34:16'),
(93, 'data_rows', 'display_name', 208, 'ar', 'نبذة مختصرة بالانجلش', '2021-03-28 12:34:16', '2021-03-28 12:34:16'),
(94, 'data_rows', 'display_name', 209, 'ar', 'وصف كامل بالانجلش', '2021-03-28 12:34:16', '2021-03-28 12:34:16'),
(95, 'data_rows', 'display_name', 210, 'ar', 'التاريخ', '2021-03-28 12:34:16', '2021-03-28 12:34:16'),
(96, 'data_rows', 'display_name', 211, 'ar', 'Updated At', '2021-03-28 12:34:16', '2021-03-28 12:34:16'),
(97, 'data_rows', 'display_name', 212, 'ar', 'الاسم بالعربى', '2021-03-28 12:34:16', '2021-03-28 12:34:16'),
(98, 'data_rows', 'display_name', 213, 'ar', 'نبذة مختصرة بالعربى', '2021-03-28 12:34:16', '2021-03-28 12:34:16'),
(99, 'data_rows', 'display_name', 214, 'ar', 'وصف كامل بالعربى', '2021-03-28 12:34:16', '2021-03-28 12:34:16'),
(100, 'data_types', 'display_name_singular', 22, 'ar', 'المقال', '2021-03-28 12:34:16', '2021-03-28 12:34:16'),
(101, 'data_types', 'display_name_plural', 22, 'ar', 'المقالات', '2021-03-28 12:34:16', '2021-03-28 12:34:16'),
(102, 'data_rows', 'display_name', 215, 'ar', 'المسلسل', '2021-03-28 12:38:00', '2021-03-28 12:38:00'),
(103, 'data_rows', 'display_name', 216, 'ar', 'الصورة', '2021-03-28 12:38:00', '2021-03-28 12:38:00'),
(104, 'data_rows', 'display_name', 217, 'ar', 'اللغة', '2021-03-28 12:38:00', '2021-03-28 12:38:00'),
(105, 'data_rows', 'display_name', 218, 'ar', 'التاريخ', '2021-03-28 12:38:00', '2021-03-28 12:38:00'),
(106, 'data_rows', 'display_name', 219, 'ar', 'Updated At', '2021-03-28 12:38:00', '2021-03-28 12:38:00'),
(107, 'data_types', 'display_name_singular', 23, 'ar', 'معرض الصور', '2021-03-28 12:38:00', '2021-03-28 12:38:00'),
(108, 'data_types', 'display_name_plural', 23, 'ar', 'معارض الصور', '2021-03-28 12:38:00', '2021-03-28 12:38:00'),
(109, 'data_rows', 'display_name', 228, 'ar', 'المسلسل', '2021-03-28 12:39:30', '2021-03-28 12:39:30'),
(110, 'data_rows', 'display_name', 229, 'ar', 'الاسم بالعربي', '2021-03-28 12:39:30', '2021-03-28 12:39:30'),
(111, 'data_rows', 'display_name', 230, 'ar', 'الاسم بالانجلش', '2021-03-28 12:39:30', '2021-03-28 12:39:30'),
(112, 'data_rows', 'display_name', 231, 'ar', 'الصورة', '2021-03-28 12:39:30', '2021-03-28 12:39:30'),
(113, 'data_rows', 'display_name', 232, 'ar', 'التاريخ', '2021-03-28 12:39:30', '2021-03-28 12:39:30'),
(114, 'data_rows', 'display_name', 233, 'ar', 'Updated At', '2021-03-28 12:39:30', '2021-03-28 12:39:30'),
(115, 'data_types', 'display_name_singular', 24, 'ar', 'منتجات قريبا', '2021-03-28 12:39:31', '2021-03-28 12:39:31'),
(116, 'data_types', 'display_name_plural', 24, 'ar', 'منتجات قريبا', '2021-03-28 12:39:31', '2021-03-28 12:39:31'),
(117, 'data_rows', 'display_name', 234, 'ar', 'المسلسل', '2021-03-28 12:42:14', '2021-03-28 12:42:14'),
(118, 'data_rows', 'display_name', 235, 'ar', 'الاسم', '2021-03-28 12:42:14', '2021-03-28 12:42:14'),
(119, 'data_rows', 'display_name', 236, 'ar', 'البريد الالكترونى', '2021-03-28 12:42:14', '2021-03-28 12:42:14'),
(120, 'data_rows', 'display_name', 237, 'ar', 'الموضوع', '2021-03-28 12:42:14', '2021-03-28 12:42:14'),
(121, 'data_rows', 'display_name', 238, 'ar', 'الرسالة', '2021-03-28 12:42:14', '2021-03-28 12:42:14'),
(122, 'data_rows', 'display_name', 239, 'ar', 'التاريخ', '2021-03-28 12:42:14', '2021-03-28 12:42:14'),
(123, 'data_rows', 'display_name', 240, 'ar', 'Updated At', '2021-03-28 12:42:14', '2021-03-28 12:42:14'),
(124, 'data_rows', 'display_name', 241, 'ar', 'المنتج', '2021-03-28 12:42:14', '2021-03-28 12:42:14'),
(125, 'data_rows', 'display_name', 243, 'ar', 'المقال', '2021-03-28 12:42:14', '2021-03-28 12:42:14'),
(126, 'data_rows', 'display_name', 254, 'ar', 'النشر', '2021-03-28 12:42:14', '2021-03-28 12:42:14'),
(127, 'data_rows', 'display_name', 242, 'ar', 'المنتج', '2021-03-28 12:42:14', '2021-03-28 12:42:14'),
(128, 'data_rows', 'display_name', 244, 'ar', 'المقال', '2021-03-28 12:42:14', '2021-03-28 12:42:14'),
(129, 'data_types', 'display_name_singular', 25, 'ar', 'التعليق', '2021-03-28 12:42:14', '2021-03-28 12:42:14'),
(130, 'data_types', 'display_name_plural', 25, 'ar', 'التعليقات', '2021-03-28 12:42:14', '2021-03-28 12:42:14'),
(131, 'data_rows', 'display_name', 245, 'ar', 'المسلسل', '2021-03-28 12:45:38', '2021-03-28 12:45:38'),
(132, 'data_rows', 'display_name', 246, 'ar', 'الاسم', '2021-03-28 12:45:38', '2021-03-28 12:45:38'),
(133, 'data_rows', 'display_name', 247, 'ar', 'البريد الالكترونى', '2021-03-28 12:45:38', '2021-03-28 12:45:38'),
(134, 'data_rows', 'display_name', 248, 'ar', 'رقم الهاتف', '2021-03-28 12:45:38', '2021-03-28 12:45:38'),
(135, 'data_rows', 'display_name', 249, 'ar', 'الموضوع', '2021-03-28 12:45:38', '2021-03-28 12:45:38'),
(136, 'data_rows', 'display_name', 250, 'ar', 'الرسالة', '2021-03-28 12:45:38', '2021-03-28 12:45:38'),
(137, 'data_rows', 'display_name', 251, 'ar', 'التاريخ', '2021-03-28 12:45:38', '2021-03-28 12:45:38'),
(138, 'data_rows', 'display_name', 252, 'ar', 'Updated At', '2021-03-28 12:45:38', '2021-03-28 12:45:38'),
(139, 'data_types', 'display_name_singular', 26, 'ar', 'المتصلون', '2021-03-28 12:45:38', '2021-03-28 12:45:38'),
(140, 'data_types', 'display_name_plural', 26, 'ar', 'المتصلون', '2021-03-28 12:45:38', '2021-03-28 12:45:38'),
(141, 'data_rows', 'display_name', 255, 'ar', 'المسلسل', '2021-03-28 12:47:14', '2021-03-28 12:47:14'),
(142, 'data_rows', 'display_name', 256, 'ar', 'الاسم بالعربي', '2021-03-28 12:47:14', '2021-03-28 12:47:14'),
(143, 'data_rows', 'display_name', 257, 'ar', 'الاسم بالانجلش', '2021-03-28 12:47:14', '2021-03-28 12:47:14'),
(144, 'data_rows', 'display_name', 258, 'ar', 'التاريخ', '2021-03-28 12:47:14', '2021-03-28 12:47:14'),
(145, 'data_rows', 'display_name', 259, 'ar', 'Updated At', '2021-03-28 12:47:14', '2021-03-28 12:47:14'),
(146, 'data_types', 'display_name_singular', 27, 'ar', 'المنطقة', '2021-03-28 12:47:14', '2021-04-25 16:35:05'),
(147, 'data_types', 'display_name_plural', 27, 'ar', 'المناطق', '2021-03-28 12:47:14', '2021-04-25 16:35:05'),
(148, 'menu_items', 'title', 31, 'ar', 'معرض الصور', '2021-03-28 12:58:54', '2021-03-28 13:06:13'),
(149, 'menu_items', 'title', 32, 'ar', 'منتجات قريبا', '2021-03-28 12:59:30', '2021-03-28 13:07:00'),
(150, 'menu_items', 'title', 33, 'ar', 'التعليقات', '2021-03-28 13:00:03', '2021-03-28 13:07:28'),
(151, 'menu_items', 'title', 34, 'ar', 'المتصلون', '2021-03-28 13:01:03', '2021-03-28 13:08:14'),
(152, 'menu_items', 'title', 38, 'ar', 'المناطق', '2021-03-28 13:01:42', '2021-04-25 16:35:34'),
(153, 'menu_items', 'title', 1, 'ar', 'الصفحة الرائيسية', '2021-03-28 13:02:25', '2021-03-28 13:02:25'),
(154, 'menu_items', 'title', 4, 'ar', 'الصلاحيات', '2021-03-28 13:02:40', '2021-03-28 13:02:40'),
(155, 'menu_items', 'title', 3, 'ar', 'المستخدمون', '2021-03-28 13:03:04', '2021-03-28 13:03:04'),
(156, 'menu_items', 'title', 15, 'ar', 'الفروع', '2021-03-28 13:03:40', '2021-03-28 13:03:40'),
(157, 'menu_items', 'title', 27, 'ar', 'التواصل معك', '2021-03-28 13:04:42', '2021-03-28 13:04:42'),
(158, 'menu_items', 'title', 28, 'ar', 'فريقنا', '2021-03-28 13:05:02', '2021-03-28 13:05:02'),
(159, 'menu_items', 'title', 29, 'ar', 'المنتجات', '2021-03-28 13:05:32', '2021-03-28 13:05:32'),
(160, 'menu_items', 'title', 30, 'ar', 'المقالات', '2021-03-28 13:05:51', '2021-03-28 13:05:51'),
(161, 'menu_items', 'title', 35, 'ar', 'العملاء', '2021-03-28 13:08:38', '2021-03-28 13:08:38'),
(162, 'menu_items', 'title', 36, 'ar', 'الفواتير', '2021-03-28 13:09:09', '2021-03-28 13:09:09'),
(163, 'menu_items', 'title', 37, 'ar', 'تفاصيل الفواتير', '2021-03-28 13:09:36', '2021-03-28 13:09:36'),
(164, 'data_rows', 'display_name', 178, 'ar', 'المسلسل', '2021-03-29 06:41:16', '2021-03-29 06:56:26'),
(165, 'data_rows', 'display_name', 179, 'ar', 'الاسم بالانجلش', '2021-03-29 06:41:16', '2021-03-29 06:56:26'),
(166, 'data_rows', 'display_name', 180, 'ar', 'الصورة', '2021-03-29 06:41:16', '2021-03-29 06:56:26'),
(167, 'data_rows', 'display_name', 181, 'ar', 'السعر', '2021-03-29 06:41:16', '2021-03-29 06:56:26'),
(168, 'data_rows', 'display_name', 182, 'ar', 'الوصف بالانجلش', '2021-03-29 06:41:16', '2021-03-29 06:56:26'),
(169, 'data_rows', 'display_name', 183, 'ar', 'التاريخ', '2021-03-29 06:41:16', '2021-03-29 06:56:26'),
(170, 'data_rows', 'display_name', 184, 'ar', 'Updated At', '2021-03-29 06:41:16', '2021-03-29 06:41:16'),
(171, 'data_rows', 'display_name', 185, 'ar', 'وصف المكونات بالانجلش', '2021-03-29 06:41:16', '2021-03-29 06:56:26'),
(172, 'data_rows', 'display_name', 186, 'ar', 'المكونات الاولة بالانجلش', '2021-03-29 06:41:16', '2021-04-17 16:49:54'),
(173, 'data_rows', 'display_name', 187, 'ar', 'المكونات الثانية بالانجلش', '2021-03-29 06:41:16', '2021-04-17 16:49:54'),
(174, 'data_rows', 'display_name', 188, 'ar', 'كيفية الاستخدام بالانجلش', '2021-03-29 06:41:16', '2021-03-29 06:56:26'),
(175, 'data_rows', 'display_name', 189, 'ar', 'وصف العبوة بالانجلش', '2021-03-29 06:41:16', '2021-03-29 06:56:26'),
(176, 'data_rows', 'display_name', 190, 'ar', 'دواعى الاستخدام بالانجلش', '2021-03-29 06:41:16', '2021-03-29 06:56:26'),
(177, 'data_rows', 'display_name', 191, 'ar', 'رابط الفيس بوك+', '2021-03-29 06:41:16', '2021-03-29 06:56:26'),
(178, 'data_rows', 'display_name', 192, 'ar', 'رابط جوميا', '2021-03-29 06:41:16', '2021-03-29 06:56:26'),
(179, 'data_rows', 'display_name', 193, 'ar', 'رابط سوق', '2021-03-29 06:41:16', '2021-03-29 06:56:26'),
(180, 'data_rows', 'display_name', 194, 'ar', 'رابط نون', '2021-03-29 06:41:16', '2021-03-29 06:56:26'),
(181, 'data_rows', 'display_name', 195, 'ar', 'الاسم بالعربى', '2021-03-29 06:41:16', '2021-03-29 06:56:26'),
(182, 'data_rows', 'display_name', 196, 'ar', 'الوصف بالعربى', '2021-03-29 06:41:16', '2021-03-29 06:56:26'),
(183, 'data_rows', 'display_name', 197, 'ar', 'وصف المكونات بالعربى', '2021-03-29 06:41:16', '2021-03-29 06:56:26'),
(184, 'data_rows', 'display_name', 198, 'ar', 'المكونات الاولة بالعربى', '2021-03-29 06:41:16', '2021-04-17 16:49:54'),
(185, 'data_rows', 'display_name', 199, 'ar', 'المكونات الثانية بالعربى', '2021-03-29 06:41:16', '2021-04-17 16:49:54'),
(186, 'data_rows', 'display_name', 200, 'ar', 'كيفية الاستخدام بالعربى', '2021-03-29 06:41:16', '2021-03-29 06:56:26'),
(187, 'data_rows', 'display_name', 201, 'ar', 'وصف العبوة بالعربى', '2021-03-29 06:41:16', '2021-03-29 06:56:26'),
(188, 'data_rows', 'display_name', 202, 'ar', 'دواعى الاستخدام بالعربى', '2021-03-29 06:41:16', '2021-03-29 06:56:26'),
(189, 'data_types', 'display_name_singular', 21, 'ar', 'المنتج', '2021-03-29 06:41:17', '2021-03-29 06:56:26'),
(190, 'data_types', 'display_name_plural', 21, 'ar', 'المنتجات', '2021-03-29 06:41:17', '2021-03-29 06:56:26'),
(191, 'data_rows', 'display_name', 261, 'ar', 'سعر الشحن', '2021-04-22 14:35:32', '2021-04-22 14:35:32'),
(192, 'data_rows', 'display_name', 268, 'ar', 'الفئة', '2021-04-22 17:48:14', '2021-04-22 17:48:14'),
(193, 'data_rows', 'display_name', 267, 'ar', 'الفئة', '2021-04-22 17:48:14', '2021-04-22 17:52:27'),
(194, 'data_rows', 'display_name', 262, 'ar', 'المسلسل', '2021-04-22 17:51:08', '2021-04-22 17:51:08'),
(195, 'data_rows', 'display_name', 263, 'ar', 'الاسم بالعربي', '2021-04-22 17:51:08', '2021-04-22 17:51:08'),
(196, 'data_rows', 'display_name', 264, 'ar', 'الاسم بالانجلش', '2021-04-22 17:51:08', '2021-04-22 17:51:08'),
(197, 'data_rows', 'display_name', 265, 'ar', 'التاريخ', '2021-04-22 17:51:08', '2021-04-22 17:51:08'),
(198, 'data_rows', 'display_name', 266, 'ar', 'Updated At', '2021-04-22 17:51:08', '2021-04-22 17:51:08'),
(199, 'data_types', 'display_name_singular', 29, 'ar', 'الفئة', '2021-04-22 17:51:08', '2021-04-22 18:03:37'),
(200, 'data_types', 'display_name_plural', 29, 'ar', 'الفئات', '2021-04-22 17:51:08', '2021-04-22 18:03:37'),
(201, 'menu_items', 'title', 40, 'ar', 'الفئات', '2021-04-22 17:56:52', '2021-04-22 17:56:52'),
(202, 'data_rows', 'display_name', 269, 'ar', 'Id', '2021-04-24 15:00:34', '2021-04-24 15:00:34'),
(203, 'data_rows', 'display_name', 270, 'ar', 'المنتج', '2021-04-24 15:00:34', '2021-04-24 15:06:38'),
(204, 'data_rows', 'display_name', 272, 'ar', 'التاريخ', '2021-04-24 15:00:34', '2021-04-24 15:08:44'),
(205, 'data_rows', 'display_name', 273, 'ar', 'Updated At', '2021-04-24 15:00:34', '2021-04-24 15:00:34'),
(206, 'data_types', 'display_name_singular', 30, 'ar', 'المنتج المفضل', '2021-04-24 15:00:34', '2021-04-24 15:06:38'),
(207, 'data_types', 'display_name_plural', 30, 'ar', 'المنتجات المفضلة', '2021-04-24 15:00:34', '2021-04-24 15:06:38'),
(208, 'data_rows', 'display_name', 274, 'ar', 'المستخدم', '2021-04-24 15:06:38', '2021-04-24 15:06:38'),
(209, 'data_rows', 'display_name', 275, 'ar', 'المنتج', '2021-04-24 15:06:38', '2021-04-24 15:06:38'),
(210, 'data_rows', 'display_name', 276, 'ar', 'المستخدم', '2021-04-24 15:06:38', '2021-04-24 15:06:38'),
(211, 'menu_items', 'title', 41, 'ar', 'المنتجات المفضلة', '2021-04-24 15:07:38', '2021-04-24 15:07:38'),
(212, 'data_rows', 'display_name', 277, 'ar', 'المسلسل', '2021-04-25 14:29:00', '2021-04-25 14:29:00'),
(213, 'data_rows', 'display_name', 278, 'ar', 'المنتج', '2021-04-25 14:29:00', '2021-04-25 14:29:00'),
(214, 'data_rows', 'display_name', 279, 'ar', 'العميل', '2021-04-25 14:29:00', '2021-04-25 14:29:00'),
(215, 'data_rows', 'display_name', 280, 'ar', 'عدد النجوم', '2021-04-25 14:29:00', '2021-04-25 14:29:00'),
(216, 'data_rows', 'display_name', 281, 'ar', 'التاريخ', '2021-04-25 14:29:00', '2021-04-25 14:29:00'),
(217, 'data_rows', 'display_name', 282, 'ar', 'Updated At', '2021-04-25 14:29:00', '2021-04-25 14:29:00'),
(218, 'data_rows', 'display_name', 283, 'ar', 'المنتج', '2021-04-25 14:29:00', '2021-04-25 14:29:00'),
(219, 'data_rows', 'display_name', 284, 'ar', 'العميل', '2021-04-25 14:29:00', '2021-04-25 14:29:00'),
(220, 'data_types', 'display_name_singular', 31, 'ar', 'تقيم المنتجات', '2021-04-25 14:29:00', '2021-04-25 14:29:00'),
(221, 'data_types', 'display_name_plural', 31, 'ar', 'تقيم المنتجات', '2021-04-25 14:29:00', '2021-04-25 14:29:00'),
(222, 'menu_items', 'title', 42, 'ar', 'تقيم المنتجات', '2021-04-25 14:30:23', '2021-04-25 14:30:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(18, 2, 'Habiba', 'habibaeltlaty@gmail.com', 'users/default.png', NULL, '$2y$10$kSXRlz9o1ViNCajYFteB1.jBuj531xI3GYrj4wuKCZPfKPaSAJwGu', '$2y$10$O5tZcLVM4GYUwPnpgS4iGeKUyynaEafgJgSjotMMiVw44Ole2Kmb6	', NULL, '2021-11-02 17:38:30', '2021-11-02 17:38:30'),
(19, 2, 'hanan hassona', 'hanan.hassona13@yahoo.com', 'users/default.png', NULL, '$2y$10$O5tZcLVM4GYUwPnpgS4iGeKUyynaEafgJgSjotMMiVw44Ole2Kmb6', NULL, NULL, '2021-11-17 22:03:51', '2021-11-17 22:03:51'),
(20, 2, 'Toka Elfakharany', 'tokaelfakharany@gmail.com', 'users/default.png', NULL, '$2y$10$plXoNrOW4AQ6/ZgowZyTHOgPMTQDPUWpAYg93f.KUeO96BTmBXP8i', NULL, NULL, '2021-12-10 16:43:14', '2021-12-10 16:43:14'),
(21, 2, 'بسمه احمد', 'basma.ahmed.hwl2009@gmail.com', 'users/default.png', NULL, '$2y$10$Nyz40kp6HFbUBt1iTCJ6LecXLxSgxAJ.LQsQcm3myMxYXuHdS0pFW', NULL, NULL, '2021-12-11 03:53:43', '2021-12-11 03:53:43'),
(23, 2, 'NERMIN nasr', 'islam_magdy2009@hotmail.com', 'users/default.png', NULL, '$2y$10$qH6SMEvcAhvNrVGmM.37POUYT14bcELrgbzIVjCImZZWWkEZ5Iehq', NULL, NULL, '2022-01-09 08:54:39', '2022-01-09 08:54:39'),
(24, 2, 'Reham Kamel', 'rehamkamel00@gmail.com', 'users/default.png', NULL, '$2y$10$H8LrpjDenLcM4je3LMFixuZHLg3QOPQ5AVnfRJ.bF9kMrQb9t.Q1u', NULL, NULL, '2022-01-29 03:16:04', '2022-01-29 03:16:05'),
(25, 2, 'mariam', 'mariamashry1212@gmail.com', 'users/default.png', NULL, '$2y$10$f4zxkERwNL4iBT0LW8B3ueh8tkLxA8//dnzg1pG8n0PsikPUNfjMS', 'zcwbc37oZGkU6fXfugKTbPjWdoRgIF3J2BPut5vuSSUwbHCLhMIzbYly2izd', NULL, '2022-02-02 17:10:28', '2022-02-02 17:10:28'),
(27, 2, 'Rawan', 'reewaannabil@gmail.com', 'users/default.png', NULL, '$2y$10$lwd5ky4614DXHg87eqJ0rOJMrGnBd/7LRSqZvwAD7SptvW0oZrRba', NULL, NULL, '2022-03-06 22:48:06', '2022-03-06 22:48:06'),
(30, 2, 'Esraa Elhelw', 'toty5082@gmail.com', 'users/default.png', NULL, '$2y$10$DntXSosvkKjbRj9dPR/rLuPDDJcS8yaEf6ePzQG47U4WnT.P/AB4q', NULL, NULL, '2022-05-03 23:34:46', '2022-05-03 23:34:46'),
(31, 2, 'Rana', 'Rana2192000@hotmail.com', 'users/default.png', NULL, '$2y$10$n9lZ7WQwBZOhIy9hTr9ApunOOA.0fF8sVqzc/38UHqmDGZYx4Wnt.', NULL, NULL, '2022-05-12 04:58:36', '2022-05-12 04:58:37'),
(33, 2, 'Hany', 'eng.hany.khalaf@gmail.com', 'users/default.png', NULL, '$2y$10$0rZ3t6/DLXbBD1KKjpaOIOJBC5hGlFB21EoMyo6l/iYEGPwCt1bpe', NULL, NULL, '2022-05-22 16:43:34', '2022-05-22 16:43:34'),
(34, 2, 'amr eltohamy', 'eng.amreltohamy@gmail.com', 'users/default.png', NULL, '$2y$10$xoxVyj/lFl18nnbyyD2VS.mMSxoPoM29KsV4h2uEMCBnwUYQEOGSW', NULL, NULL, '2022-05-25 16:44:54', '2022-05-25 16:44:54'),
(35, 2, 'Test Account', 'super@eg.com', 'users/default.png', NULL, '$2y$10$7rbTh5TnhP3tt6br1l5M6.5IN/bOQhGgzMWhd8VUsgr45sR.BePhq', NULL, NULL, '2022-06-01 22:52:05', '2022-06-01 22:52:05'),
(36, 2, 'Shorok Taha', 'shorok.taha2020@gmail.com', 'users/default.png', NULL, '$2y$10$hGXmNWD3xUzjWVHR1bypzeVjGN52FU..0xVptWAV3ySVUAMo19OBO', NULL, NULL, '2022-06-19 05:56:33', '2022-06-19 05:56:33'),
(37, 2, 'Habiba', 'habiba.bebo.2001@gmail.com', 'users/default.png', NULL, '$2y$10$cx4g9rAbvx30ybNwrCVcAe74lfwT2HElbbDpusdn4YhS60nn96mjS', NULL, NULL, '2022-07-05 04:58:19', '2022-07-05 04:58:19'),
(38, 2, 'tariq abdulmonem', 'sonanova74@hotmail.com', 'users/default.png', NULL, '$2y$10$O5tZcLVM4GYUwPnpgS4iGeKUyynaEafgJgSjotMMiVw44Ole2Kmb6', NULL, NULL, '2022-07-07 14:21:13', '2022-07-07 14:21:13'),
(40, 2, 'Gehad', 'gehadessam1555@gmail.com', 'users/default.png', NULL, '$2y$10$Q8YPZXdzLHzIqBFRMBjVYe3hll6udpoVY1buD8c8s/EH0WIH7mdHC', NULL, NULL, '2022-09-19 03:08:38', '2022-09-19 03:08:38'),
(42, 2, 'tariq abdulmonem', 'morajoo2020@hotmail.com', 'users/default.png', NULL, '$2y$10$0ohdgoG5DviLMNPOHt1xZu1mDdSdQA6GViGEIcuUENwfXU4UM3cMi', NULL, NULL, '2022-10-26 21:35:44', '2022-10-26 21:35:44'),
(44, 1, 'Admin Account', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$ra5awv.c6rXgo9gdVFdCkeTEsX81ja0r6Um3Kb65d7nn1f9PaGAGy', 'bffk7Ew8U4e7ILAVV0fVlSwrx7stvvhfUsbb8s9QGc7HJ6E92lr0rXp9Ghfc', '{\"locale\":\"en\"}', '2022-06-01 22:52:05', '2022-10-27 16:56:41'),
(45, 2, 'Rana Mohsen', 'gcgy555@gmail.com', 'users/default.png', NULL, '$2y$10$PsYzjs9Q2EFwTwvaPVmByOHm.cWxGlBMc7bs7cXFkFZPsLzyC2be.', NULL, NULL, '2022-11-02 23:55:23', '2022-11-02 23:55:23'),
(46, 2, 'Salma Mohamed', 'Salma6522@hotmail.com', 'users/default.png', NULL, '$2y$10$.JG7btjW7SEw4t.UMDRAQ.V2yN0uUZsQtxlSwsaV/UgnQjv3.dWdS', NULL, NULL, '2022-11-03 22:52:37', '2022-11-03 22:52:37'),
(47, 2, 'NufhedjiwidjwjdwihdisjadhuijdaodejguhweikabfdJIDHWIAUFAWFAWHFAAJDIHIjifheifjeifhwodjssfhuiifiwswhdusfi interpharmaegycare.com', 'g.e.ra.l.dkum.se.r.t@gmail.com', 'users/default.png', NULL, '$2y$10$MO9Ngp8G08k.JsTMVSUCoeXXWbCrWru/939AukwsT0giTP8lpJpmq', NULL, NULL, '2022-11-11 00:38:57', '2022-11-11 00:38:57'),
(48, 2, 'Aya', 'ayayoka1141998@gmail.com', 'users/default.png', NULL, '$2y$10$MPOQtad/DJM1FH5Bwf0.Kun5B1Dvg1s5aWSaubshPDLyZke/p87YC', NULL, NULL, '2022-11-12 17:38:36', '2022-11-12 17:38:36'),
(49, 2, 'Hamsa', 'hamsa.awesh@gmail.com', 'users/default.png', NULL, '$2y$10$CcrBTA1o5CMR9e4mpOaGK.iStfOqYbVTVG7n0fVE6FqZMbS/YISVO', NULL, NULL, '2022-11-27 03:40:03', '2022-11-27 03:40:03');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `availabilities`
--
ALTER TABLE `availabilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comeingsoons`
--
ALTER TABLE `comeingsoons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likeproducts`
--
ALTER TABLE `likeproducts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stars`
--
ALTER TABLE `stars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `availabilities`
--
ALTER TABLE `availabilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `comeingsoons`
--
ALTER TABLE `comeingsoons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likeproducts`
--
ALTER TABLE `likeproducts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `stars`
--
ALTER TABLE `stars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2024 at 10:08 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project1`
--

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
(18, '2014_10_12_000000_create_users_table', 1),
(19, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(20, '2019_08_19_000000_create_failed_jobs_table', 1),
(21, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(22, '2024_02_21_185019_create_tasks_table', 1);

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
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `long_description` text DEFAULT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `long_description`, `completed`, `created_at`, `updated_at`) VALUES
(2, 'عنوان', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده، شناخت فراوان جامعه و متخصصان را می طلبد، تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی، و فرهنگ پیشرو در زبان فارسی ایجاد کرد، در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها، و شرایط سخت تایپ به پایان رسد و زمان مورد نیاز شامل حروفچینی دستاوردهای اصلی، و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.', 1, '2024-02-24 05:50:19', '2024-02-28 14:35:37'),
(3, 'روزنامه', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده، شناخت فراوان جامعه و متخصصان را می طلبد، تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی، و فرهنگ پیشرو در زبان فارسی ایجاد کرد، در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها، و شرایط سخت تایپ به پایان رسد و زمان مورد نیاز شامل حروفچینی دستاوردهای اصلی، و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.', 1, '2024-02-24 05:50:19', '2024-02-27 06:04:09'),
(4, 'چاپگرها و متون', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده، شناخت فراوان جامعه و متخصصان را می طلبد، تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی، و فرهنگ پیشرو در زبان فارسی ایجاد کرد، در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها، و شرایط سخت تایپ به پایان رسد و زمان مورد نیاز شامل حروفچینی دستاوردهای اصلی، و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.', 0, '2024-02-24 05:50:19', '2024-02-27 06:05:28'),
(6, 'Non aperiam odio magni beatae odit non.', 'Dolorem quas itaque non earum similique deserunt culpa. Dolor ipsam nihil pariatur officia numquam. Nihil et et et exercitationem et. Quam repudiandae praesentium eius quia quia.', 'Labore itaque quisquam exercitationem ea dolores similique. Est voluptatibus occaecati reiciendis amet eum at. Et nihil repellat eligendi rerum. Et aut quia iusto facere fuga excepturi. Adipisci suscipit rerum nobis sint necessitatibus rem ut. Libero occaecati dolor optio. Hic repellat autem et velit. Non odio cupiditate non sapiente doloribus qui nihil.', 0, '2024-02-24 05:50:19', '2024-02-26 11:12:44'),
(8, 'Eveniet inventore quia beatae quod reprehenderit voluptatem.', 'Assumenda tempore rerum consequatur ratione repellendus laborum. Nobis temporibus quas et ut eius. Tempora officia fugit aut. Rerum aliquid sunt veritatis et dolores illum consequuntur.', 'Amet aperiam nihil dolor porro vitae aut. Sint aut eligendi corporis facilis et distinctio repellendus natus. Aperiam quae suscipit enim labore. Et voluptates molestias occaecati excepturi. Cupiditate fugiat delectus adipisci eligendi et. Minima labore autem reprehenderit omnis pariatur placeat. Eius est ut quia ipsum. Fugit omnis sed reprehenderit qui molestiae aut voluptatibus.', 0, '2024-02-24 05:50:19', '2024-02-26 10:58:30'),
(9, 'Et qui consequatur et repellat corporis.', 'Voluptas eaque et minus inventore impedit dolor. Quaerat ut occaecati ab eum. Aut odio commodi ab nesciunt fugit dolores. Esse illum iste illo mollitia nobis fugit reiciendis et.', 'Harum voluptas amet dolor nemo ut commodi. Omnis et tenetur laudantium laborum ducimus sint voluptas. Non unde omnis aut totam corrupti architecto repellendus. Porro fugiat qui officia sit et laboriosam. Molestiae minima dolor velit possimus eum quibusdam enim. Dolor autem enim officiis aut non vel aut. Quis perferendis molestias voluptas cupiditate. Corrupti ea labore sint harum.', 1, '2024-02-24 05:50:19', '2024-02-26 09:50:18'),
(10, 'Et necessitatibus explicabo inventore in aut tempore.', 'Iste qui pariatur nesciunt rem sunt dignissimos. Quibusdam quo odit nobis sunt. Minima eveniet sit magni aut quisquam numquam vitae. Incidunt expedita dignissimos est quia.', 'Maxime sit et culpa eum. Ea ratione dolorem delectus nam perspiciatis illum. Autem cum eum ducimus at laboriosam quia. Asperiores nesciunt nam aliquam sapiente quis voluptatem dolorem. Minima voluptas enim voluptas dicta est et. Odit pariatur itaque natus porro.', 0, '2024-02-24 05:50:19', '2024-02-24 05:50:19'),
(11, 'Cupiditate id et porro neque.', 'Labore voluptas et nulla illum nobis delectus. Eius minima ut voluptates voluptatem ut amet illo. Aut doloremque eius et distinctio et maiores ut illo. Praesentium cumque accusantium necessitatibus odit. Aut commodi delectus ad mollitia ullam.', 'At qui nobis eveniet. Minus veniam mollitia veniam vel eum est dolores. Cumque voluptatem expedita est est aperiam neque alias explicabo. Ut repudiandae repellendus est et sequi iusto aut. Occaecati nemo corporis quia eligendi in error qui dolorem. Sit cum sit et repudiandae et. Corporis sequi voluptatibus magni placeat ut quos quia. Soluta est aliquid mollitia suscipit dignissimos suscipit asperiores.', 1, '2024-02-24 05:50:19', '2024-02-26 08:57:14'),
(12, 'Officiis quis quis reiciendis sunt.', 'Maxime omnis nihil non veniam. Repudiandae incidunt autem et nihil sequi autem qui. Sed accusamus dolore autem.', 'Quis quidem asperiores libero occaecati. Est necessitatibus ut doloribus dicta ut asperiores illo. Distinctio dolor omnis deleniti consequatur. Ab vero facilis qui officiis sed eos. Laboriosam magnam dolores tempora exercitationem. Expedita repudiandae ea id inventore unde et et ad.', 1, '2024-02-24 05:50:19', '2024-02-24 05:50:19'),
(13, 'Sit eius fuga corporis aut nemo quo.', 'Id blanditiis quia magni veniam. Sit quaerat molestiae rerum sunt unde rerum pariatur. Quidem voluptatem nulla rerum harum sunt.', 'Id est impedit ullam. Est quae dolorem quaerat aut et quo eos. Doloremque praesentium veniam rerum cumque sit vel id. Quidem voluptatem velit dolorum enim voluptatum modi. Earum nulla et esse numquam qui ex. Aut non vitae provident et consequatur reprehenderit.', 0, '2024-02-24 05:50:19', '2024-02-24 05:50:19'),
(14, 'Et qui quod debitis aliquid ducimus occaecati architecto ab.', 'Non amet eligendi eligendi rerum est ipsa quia. Inventore tempore asperiores omnis odio aspernatur et dolore. Numquam cum neque pariatur nobis dolores.', 'Ab repellendus perspiciatis debitis neque molestias laudantium. Officiis consequatur eius possimus qui adipisci fuga. Iure voluptate quis accusamus. Ex suscipit unde asperiores facilis numquam aut. Facere voluptate reiciendis aut numquam dicta quasi aliquam quae. Quis aut veniam impedit eveniet qui. Corrupti sint deleniti et. Libero ducimus in magni aspernatur accusantium aut delectus.', 0, '2024-02-24 05:50:19', '2024-02-24 05:50:19'),
(15, 'Consequatur enim ipsum dicta laborum qui nihil.', 'Ullam quis autem est minima ab. Maxime possimus ea similique voluptatem voluptatem tempore temporibus. Aut sequi expedita eligendi dolorem.', 'Consequuntur facere dolores maiores eum itaque quia cupiditate. Quod nihil maxime laudantium ducimus nihil saepe aut. Suscipit facere est et omnis pariatur vitae consequuntur. Itaque numquam et odit sit aut. Ut asperiores provident incidunt et dolore porro. Non non illum aperiam incidunt qui. Consequatur praesentium aut modi ut voluptate ipsum. Non cupiditate accusamus laudantium odio.', 1, '2024-02-24 05:50:19', '2024-02-24 05:50:19'),
(16, 'Nulla quaerat at nihil omnis voluptatem sed.', 'Quia veritatis eos consequatur ab eaque a totam. Pariatur ipsam neque velit error quaerat. Aliquam ut qui sit dolorem modi. Cum est tenetur vero impedit animi aliquid nihil et.', 'Aut qui cumque consequatur. Deleniti eum et et reprehenderit quo corrupti incidunt. Suscipit est qui molestiae sunt voluptatem voluptatibus. Repudiandae tenetur odit in est. Aut mollitia quae ullam aliquam amet qui qui. Et odio in non ipsa sed mollitia facilis. Suscipit vero aut dolorum. Laborum quis atque ut quo.', 1, '2024-02-24 05:50:19', '2024-02-24 05:50:19'),
(18, 'Aliquid minus deleniti aut non vel perspiciatis atque.', 'Accusantium eligendi qui aut porro omnis vero eum quasi. Aut quos optio adipisci est ut ea laborum. Et illo quasi debitis earum nam minima voluptatum nisi. Ex molestiae et repellendus quis illo harum.', 'Repudiandae dolores reiciendis ducimus autem id est. Accusamus aut et est. Sit possimus nam neque quis delectus id fugiat consequuntur. Vel qui cupiditate ducimus nostrum qui. Voluptas est modi autem quaerat nihil.', 0, '2024-02-24 05:50:19', '2024-02-24 05:50:19'),
(19, 'Dicta nesciunt reprehenderit voluptas.', 'Repudiandae id omnis quis est. Sed fugit non necessitatibus excepturi sed sapiente. Alias et nisi eius quia quibusdam quia.', 'Ea totam eveniet maiores molestias repellat tempore tenetur. Voluptatibus pariatur repudiandae ut ut reiciendis. Ut aut quo et qui. Ad magnam optio nemo autem facilis nemo dolore. Repellat at esse unde omnis incidunt quibusdam dolorem sit.', 0, '2024-02-24 05:50:19', '2024-02-24 05:50:19'),
(20, 'Necessitatibus quidem cumque officia quos sit vitae fuga fugit.', 'Sint vitae autem est sed eveniet omnis omnis. Rerum quasi et architecto autem velit. Quis deserunt quam debitis nihil quis fugit.', 'Et necessitatibus animi architecto culpa in. Iste aut et architecto eum. Occaecati harum qui omnis minima doloremque vero accusamus. Quos molestias sit pariatur minima laudantium quos. Itaque quo rerum ut facere sit. Quas dolores mollitia est voluptatem. Laborum doloribus quod et aut tempora accusantium. Occaecati similique voluptate iure. Quisquam autem qui quae. Eum neque consequuntur voluptates vel aperiam quas et.ق', 1, '2024-02-24 05:50:19', '2024-02-27 06:10:37');

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nellie Fay', 'maxie69@example.net', '2024-02-24 05:50:19', '$2y$12$3mWOs1IRkcirQDb4qI3cV.KJgXNfCgOZweZgtfiUFB9GY7UGjufea', 'UoSQMpnDSo', '2024-02-24 05:50:19', '2024-02-24 05:50:19'),
(2, 'Cristal Nolan', 'reed.hyatt@example.net', '2024-02-24 05:50:19', '$2y$12$3mWOs1IRkcirQDb4qI3cV.KJgXNfCgOZweZgtfiUFB9GY7UGjufea', '7RLeTp5Dpl', '2024-02-24 05:50:19', '2024-02-24 05:50:19'),
(3, 'Cade Terry', 'olangosh@example.net', '2024-02-24 05:50:19', '$2y$12$3mWOs1IRkcirQDb4qI3cV.KJgXNfCgOZweZgtfiUFB9GY7UGjufea', 'EQ6aiApL4q', '2024-02-24 05:50:19', '2024-02-24 05:50:19'),
(4, 'Prof. Ulises King I', 'cortney00@example.net', '2024-02-24 05:50:19', '$2y$12$3mWOs1IRkcirQDb4qI3cV.KJgXNfCgOZweZgtfiUFB9GY7UGjufea', 'yC6b4ZInTJ', '2024-02-24 05:50:19', '2024-02-24 05:50:19'),
(5, 'Geraldine Hoeger V', 'hpouros@example.org', '2024-02-24 05:50:19', '$2y$12$3mWOs1IRkcirQDb4qI3cV.KJgXNfCgOZweZgtfiUFB9GY7UGjufea', 'h9FxsmwPVW', '2024-02-24 05:50:19', '2024-02-24 05:50:19'),
(6, 'Torey Jakubowski', 'memmerich@example.com', '2024-02-24 05:50:19', '$2y$12$3mWOs1IRkcirQDb4qI3cV.KJgXNfCgOZweZgtfiUFB9GY7UGjufea', 'uv0lUqAS7N', '2024-02-24 05:50:19', '2024-02-24 05:50:19'),
(7, 'Joshuah Adams', 'alphonso33@example.org', '2024-02-24 05:50:19', '$2y$12$3mWOs1IRkcirQDb4qI3cV.KJgXNfCgOZweZgtfiUFB9GY7UGjufea', 'wJvS3xnuTY', '2024-02-24 05:50:19', '2024-02-24 05:50:19'),
(8, 'Araceli Greenfelder', 'imacejkovic@example.org', '2024-02-24 05:50:19', '$2y$12$3mWOs1IRkcirQDb4qI3cV.KJgXNfCgOZweZgtfiUFB9GY7UGjufea', 'qNc3OyhKxx', '2024-02-24 05:50:19', '2024-02-24 05:50:19'),
(9, 'Yasmin Abshire V', 'cbechtelar@example.com', '2024-02-24 05:50:19', '$2y$12$3mWOs1IRkcirQDb4qI3cV.KJgXNfCgOZweZgtfiUFB9GY7UGjufea', 'W2QaJcuLRh', '2024-02-24 05:50:19', '2024-02-24 05:50:19'),
(10, 'Ardella Fisher', 'koelpin.aniyah@example.org', '2024-02-24 05:50:19', '$2y$12$3mWOs1IRkcirQDb4qI3cV.KJgXNfCgOZweZgtfiUFB9GY7UGjufea', 'lRgZalQe4D', '2024-02-24 05:50:19', '2024-02-24 05:50:19'),
(11, 'Catherine Effertz Jr.', 'wyman49@example.com', NULL, '$2y$12$3mWOs1IRkcirQDb4qI3cV.KJgXNfCgOZweZgtfiUFB9GY7UGjufea', 'IOaVFSmFCc', '2024-02-24 05:50:19', '2024-02-24 05:50:19'),
(12, 'Janelle Schneider', 'eulah13@example.org', NULL, '$2y$12$3mWOs1IRkcirQDb4qI3cV.KJgXNfCgOZweZgtfiUFB9GY7UGjufea', 'MTA9pRiTbg', '2024-02-24 05:50:19', '2024-02-24 05:50:19');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

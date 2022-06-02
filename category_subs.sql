-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2022 at 05:59 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `andalas`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_subs`
--

CREATE TABLE `category_subs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_subs`
--

INSERT INTO `category_subs` (`id`, `category_id`, `name`, `images`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Aglaonema', 'img/images-2.jpeg', 'These are evergreen perennials with stems growing erect or decumbent and creeping. Stems that grow along the ground may root at the nodes. There is generally a crown of wide leaf blades which in wild species are often variegated with silver and green coloration. The inflorescence bears unisexual flowers in a spadix, with a short zone of female flowers near the base and a wider zone of male flowers nearer the tip. The fruit is a fleshy berry that ripens red. The fruit is a thin layer covering one large seed.  Plants of the genus are native to humid, shady tropical forest habitat.', '2021-12-27 20:12:31', '2021-12-27 20:12:31'),
(2, 1, 'Alocasia', 'img/DSC01031.jpg', 'Alocasia is sometimes known as the Kris Plant, Elephant Ear or African mask plant.', '2021-12-27 20:58:54', '2022-01-21 01:15:51'),
(3, 1, 'Amydrium Silver', 'img/images-12.jpeg', 'Amydrium Medium Silver is a vigorous climber with blue crocodile-like textured foliage that belongs to Araceae family and is native to Indonesia. Amydrium Medium Silver is a vigorous climber with crocodile-like textured silver foliage.', '2021-12-28 20:55:31', '2021-12-28 20:55:31'),
(4, 1, 'Anthurium', 'img/Anthurium-Dorayaki.jpg', 'Anthurium Dorayaki is an exclusive Anthurium Crystallinum hybrid. The name \'Dorayaki\' actually refers to a round, pancake-like confectionery in Japan. Indeed, the leaves of this specimen share a physical resemblance with the dessert: smooth, thick, and pleasantly rounded.', '2021-12-27 23:15:59', '2021-12-27 23:15:59'),
(5, 1, 'Begonia', 'img/begonia.jpg', 'Begonia is a genus of perennial flowering plants in the family Begoniaceae. The genus contains more than 2,000 different plant species. The Begonias are native to moist subtropical and tropical climates. Some species are commonly grown indoors as ornamental houseplants in cooler climates. In cooler climates some species are cultivated outside in summertime for their bright colorful flowers, which have sepals but no petals.', '2021-12-27 02:11:22', '2021-12-27 02:11:22'),
(6, 1, 'Caladium', 'img/earth-leaf-caladium-green-wallpaper-preview.jpg', 'Caladium /kəˈleɪdiəm/ is a genus of flowering plants in the family Araceae. They are often known by the common name elephant ear (which they share with the closely related genera Alocasia, Colocasia, and Xanthosoma), heart of Jesus, and angel wings. There are over 1000 named cultivars of Caladium bicolor from the original South American plant.', '2021-12-27 01:33:26', '2021-12-27 01:33:26'),
(7, 1, 'Calathea', 'img/calathea.jpg', 'Calathea is a genus of flowering plants belonging to the family Marantaceae. They are commonly called calatheas or prayer plants. About 200 species previously assigned to Calathea are now in the genus Goeppertia. Calathea currently contains about 60 species.', '2021-12-27 23:20:08', '2021-12-27 23:20:08'),
(8, 1, 'Cyrtosperma', 'img/cyrtosperma.jpg', 'Translated from English-Cyrtosperma is a genus of flowering plants in the family Araceae. The genus underwent considerable taxonomic changes in the 1980s, and as a result is now considered native only to Southeast Asia and some Pacific islands.', '2021-12-28 00:08:32', '2021-12-28 00:08:32'),
(9, 1, 'Epipremnum', 'img/images-4.jpeg', 'Epipremnum Pinnatum Variegata is a beautiful vine with elongated, green foliage with white chimeric variegation. As the plant matures the leaves get the characteristic splits. Commonly known as \'Pothos\', it can whit-stand pretty dark places, however that can impact the amount variegation that it has.', '2021-12-27 23:48:58', '2021-12-27 23:48:58'),
(10, 1, 'Homalomena', 'img/homalomena.jpg', 'Homalomena is a genus of flowering plants in the family Araceae. Homalomena are mainly found in southern Asia and the southwest Pacific, but several species are known to have originated in Latin America. Many Homalomena have a strong anise odor', '2021-12-28 00:34:06', '2021-12-28 00:34:06'),
(12, 1, 'Monstera', 'img/monstera.jpg', 'Monstera is a genus of 45 species of flowering plants in the arum family, Araceae, native to tropical regions of America. The genus is named from the Latin word for \"monster\" or \"abnormal\", and refers to the unusual leaves with natural holes that members of the genus have.', '2021-12-28 02:52:55', '2021-12-28 02:52:55'),
(13, 1, 'Oxalys', 'img/images-14.jpeg', 'Calincing is a large genus of flowering plants in the family Oxalidaceae, numbering about 570 species.', '2021-12-28 23:41:21', '2021-12-28 23:41:21'),
(14, 1, 'Peperomia', 'img/6007d64de47a1.jpg', 'Peperomia is a plant that comes from Brazil. Included in the Piperaceae tribe. This plant consists of 1,600 species. Some Peperomia are epiphytes. Has a soft stem, juicy and up to 30 cm high.', '2021-12-28 23:55:46', '2021-12-28 23:55:46'),
(15, 1, 'Philodendron', 'img/DSC02693.jpg', '', '2021-12-28 00:07:54', '2022-01-27 20:50:11'),
(16, 1, 'Piper', 'img/piperaceae-caractersticas-distribucin-y-hbitat-ejemplos_3.jpg', 'Piperaceae is a member of the flowering plant family. This tribe is recognized by many plant classification systems. The APG II classification system assigns it to the nation Piperales and the clade magnoliids', '2021-12-29 00:31:17', '2021-12-29 00:31:17'),
(17, 1, 'Rhaphidophora', 'img/IMG_6877.JPG', 'Rhaphidophora is a genus in the family Araceae, occurring from tropical Africa eastward through Malesia and Australasia to the Western Pacific. The genus consists of about 100 species.', '2021-12-28 08:20:33', '2021-12-28 08:20:33'),
(18, 1, 'Scindapsus', 'img/Plant-Circle_25-June-2019_Photo-by-Savannah-van-der-Niet-29-3.jpg', 'Scindapsus pictus, or silver grape, is a species of flowering plant in the arum family Araceae, native to India, Bangladesh, Thailand, Peninsular Malaysia, Borneo, Java, Sumatra, Sulawesi, and the Philippines. Growing up to 3 m in height in open ground, this is an evergreen climber.', '2021-12-28 08:30:57', '2021-12-28 08:30:57'),
(19, 1, 'Syngonium', 'img/Zingiber_malaysianum.jpg', 'Syngonium podophyllum is an aroid species, and is commonly cultivated as an ornamental plant. Common names include: arrow plant, arrowhead vine, arrowhead philodendron, goosefoot, nephthytis, African fir, and American cypress.', '2021-12-28 08:56:41', '2021-12-28 08:56:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_subs`
--
ALTER TABLE `category_subs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_subs_category_id_foreign` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_subs`
--
ALTER TABLE `category_subs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_subs`
--
ALTER TABLE `category_subs`
  ADD CONSTRAINT `category_subs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 18, 2022 at 10:14 AM
-- Server version: 5.7.37
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eopkxdgy_tasanesia`
--

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_2` text COLLATE utf8mb4_unicode_ci,
  `description_3` text COLLATE utf8mb4_unicode_ci,
  `description_4` text COLLATE utf8mb4_unicode_ci,
  `description_5` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `user_id`, `title`, `author`, `images`, `description`, `description_2`, `description_3`, `description_4`, `description_5`, `created_at`, `updated_at`) VALUES
(12, 1, 'Community empowerment based on ornamental plant production', 'admin', 'img/60485d4267f50.jpg', 'As we know, most of the poor people in the villages do not have large land for farming on a profitable scale. Their land is narrow. they also do not have access to finance for business capital, and do not have market access either.', 'We are a company that in carrying out production, using community-based industrialization methods. This means that we do not build all the infrastructure and needs for agricultural production ourselves, but do production with the principle of sharing economy.', 'At every stage of production, we always involve as many poor people as possible, so that they have sufficient income and can get out of poverty.', 'Even so, we still maintain the quality of the agricultural production process to a high standard, in accordance with the principles of GAP (Good Agricultural Practices).', 'In involving the poor, we collaborate with various NGOs, such as the BAIK Cooperative, the MUM Cooperative, PERAMU, Sidoarjo Muhammadiyah University, ELKISI Islamic Boarding School, Lampung Muhammadiyah University, and other institutions. They handle the cultivation of ornamental plants carried out by the poor people they foster. We provide ornamental plant seeds. once the plant is big enough, we will buy back the plant.', '2022-01-18 22:00:53', '2022-01-18 22:00:53');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `images`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Ornamental Plants', 'img\\bg-ornamental-plants.jpeg', 'Ornamental plants or garden plants are plants that are grown for decorative purposes in gardens and landscape design projects. Many if not most are flowering plants, and garden varieties tend to be specially bred cultivars that improve on the original species in qualities such as colour, shape, scent and long-lasting blooms. All the main types of plant have many ornamental varieties: trees, shrubs, aquatic plants, perennial and annual plants. Non-botanical classifications include houseplants, bedding plants, plants for cut flowers and foliage plants. The cultivation of ornamental plants comes under floriculture and tree nurseries, which is a major branch of horticulture.', '2021-12-27 01:30:28', '2021-12-27 01:30:28'),
(2, 'Fresh Fruits', 'img\\bg-halal-food.jpeg', 'Fruits are the means by which flowering plants (also known as angiosperms) disseminate their seeds. Edible fruits in particular have long propagated using the movements of humans and animals in a symbiotic relationship that is the means for seed dispersal for the one group and nutrition for the other; in fact, humans and many animals have become dependent on fruits as a source of food. Consequently, fruits account for a substantial fraction of the world\'s agricultural output, and some (such as the apple and the pomegranate) have acquired extensive cultural and symbolic meanings.', '2021-12-27 01:31:08', '2021-12-27 01:31:08'),
(3, 'Halal Food', 'img\\bg-fresh-fruit.jpeg', 'Several food companies offer halal processed foods and products, including halal foie gras, spring rolls, chicken nuggets, ravioli, lasagna, pizza and baby food. Halal ready meals are a growing consumer market for Muslims in Britain and America and are offered by an increasing number of retailers. Vegetarian cuisine is halal if it does not contain alcohol.', '2022-01-03 03:20:35', '2022-01-03 03:20:35');

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
(11, 1, 'Leea Amabilis', 'img/leea.jpg', 'Leea (Tagalog: Talyantan) is a genus of plants that are distributed throughout Northern and eastern Australia, New Guinea, South and Southeast Asia and parts of Africa. The APG IV system places Leea in the subfamily Leeoideae (Vitaceae).', '2021-12-28 02:41:38', '2021-12-28 02:41:38'),
(12, 1, 'Monstera', 'img/monstera.jpg', 'Monstera is a genus of 45 species of flowering plants in the arum family, Araceae, native to tropical regions of America. The genus is named from the Latin word for \"monster\" or \"abnormal\", and refers to the unusual leaves with natural holes that members of the genus have.', '2021-12-28 02:52:55', '2021-12-28 02:52:55'),
(13, 1, 'Oxalys', 'img/images-14.jpeg', 'Calincing is a large genus of flowering plants in the family Oxalidaceae, numbering about 570 species.', '2021-12-28 23:41:21', '2021-12-28 23:41:21'),
(14, 1, 'Peperomia', 'img/6007d64de47a1.jpg', 'Peperomia is a plant that comes from Brazil. Included in the Piperaceae tribe. This plant consists of 1,600 species. Some Peperomia are epiphytes. Has a soft stem, juicy and up to 30 cm high.', '2021-12-28 23:55:46', '2021-12-28 23:55:46'),
(15, 1, 'Philodendron', 'img/DSC02693.jpg', '', '2021-12-28 00:07:54', '2022-01-27 20:50:11'),
(16, 1, 'Piper', 'img/piperaceae-caractersticas-distribucin-y-hbitat-ejemplos_3.jpg', 'Piperaceae is a member of the flowering plant family. This tribe is recognized by many plant classification systems. The APG II classification system assigns it to the nation Piperales and the clade magnoliids', '2021-12-29 00:31:17', '2021-12-29 00:31:17'),
(17, 1, 'Rhaphidophora', 'img/IMG_6877.JPG', 'Rhaphidophora is a genus in the family Araceae, occurring from tropical Africa eastward through Malesia and Australasia to the Western Pacific. The genus consists of about 100 species.', '2021-12-28 08:20:33', '2021-12-28 08:20:33'),
(18, 1, 'Scindapsus', 'img/Plant-Circle_25-June-2019_Photo-by-Savannah-van-der-Niet-29-3.jpg', 'Scindapsus pictus, or silver grape, is a species of flowering plant in the arum family Araceae, native to India, Bangladesh, Thailand, Peninsular Malaysia, Borneo, Java, Sumatra, Sulawesi, and the Philippines. Growing up to 3 m in height in open ground, this is an evergreen climber.', '2021-12-28 08:30:57', '2021-12-28 08:30:57'),
(19, 1, 'Syngonium', 'img/Zingiber_malaysianum.jpg', 'Syngonium podophyllum is an aroid species, and is commonly cultivated as an ornamental plant. Common names include: arrow plant, arrowhead vine, arrowhead philodendron, goosefoot, nephthytis, African fir, and American cypress.', '2021-12-28 08:56:41', '2021-12-28 08:56:41'),
(20, 1, 'Tradescantia Nanouk', 'img/images-9.jpeg', 'Tradescantia albiflora Nanouk, Fantasy Venice, is an ornamental plant with blue, reddish, purplish colored vines that has caught the attention of fans in the collection of plants.', '2021-12-28 19:37:01', '2021-12-28 19:37:01');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `homes`
--

CREATE TABLE `homes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_21_154315_create_categories_table', 1),
(6, '2021_12_22_160829_create_category_subs_table', 1),
(7, '2021_12_22_170431_create_products_table', 1),
(8, '2021_12_23_125839_create_homes_table', 1),
(9, '2021_12_23_171115_add_role_column', 1),
(10, '2021_12_25_014306_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_handphone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity_product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `no_handphone`, `name_product`, `quantity_product`, `address_product`, `description_product`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@tasanesia.com', '019282832132', 'Caladium Green Spider', '100', 'Bale Jentera Food Corner', 'Tidak ada', '2021-12-28 01:16:16', '2021-12-28 01:16:16'),
(2, 'Nadya khairunnisa', 'ndyaakn@gmail.com', '083197519647', 'Nadya khairunnisa', '6', 'Komplek puri depok mas blok N no.N17 kec. pancoran mas', 'jangan ngelag', '2022-01-02 21:07:36', '2022-01-02 21:07:36'),
(3, 'nadya', 'ndyaakn@gmail.com', '1', 'Caladium Yellow Leopard', '1', '1', '1', '2022-01-02 21:10:29', '2022-01-02 21:10:29'),
(4, 'Evie', 'sekar.sari@gmail.com', '085717346924', 'Monstera Deliciosa', '5', 'perum kodja raya', 'test input', '2022-01-10 08:15:44', '2022-01-10 08:15:44'),
(5, 'Evie', 'sekar.sari@gmail.com', '085717346924', 'Monstera Deliciosa', '10', 'perum kodja raya', 'test input deskripsi', '2022-01-11 00:55:20', '2022-01-11 00:55:20'),
(6, 'Sekar Sari', 'sekar@gmail.com', '0818209007', 'Monstera Deliciosa', '100', 'Perumahan Bumi Sawangan Indah blok B88', 'Red', '2022-01-17 02:13:25', '2022-01-17 02:13:25');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `category_subs_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `category_subs_id`, `name`, `images`, `price`, `quantity`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 6, 'Caladium Yellow Leopard', 'img/DSC03007.jpg', 359900, 60000, 'This one taro is a popular and rare ornamental plant. This ornamental plant comes from Thailand. This type of caladium plant is very charming with its yellow color and red spots that make this yellow leopard plant very unique. The size of the leaves is 5 cm wide, 8 cm long and the height of this plant ranges from 10-15 cm. The number of leaves 3-4 and lush roots. These plants grow from bulbs that are shaped like balls. These plants will look very beautiful when planted in the yard, garden or as ornamental plants in pots. Taro is a perennial plant that is very difficult to die/rot even though the leaves, stems & roots wither away during shipping as long as the tuber part is still there, taro will still be able to grow well because the tuber is the main source of caladium\'s strength.', 'Rare', '2021-12-27 08:18:08', '2022-02-14 01:44:39'),
(3, 1, 6, 'Caladium Green Spider', 'img/DSC02991.jpg', 69900, 52500, 'The contrast combination between yellowish green leaf veins with orange color that blends beautifully on the leaves and with the texture of the leaf bones like a spider\'s web. Making this variant widely used as a center piece in the area around the terrace. This ornamental plant comes from Thailand. The size of the leaves is 5 cm wide, 8 cm long and the height of this plant ranges from 10-15 cm. The number of leaves 3-4 and lush roots. These plants grow from bulbs that are shaped like balls. These plants will look very beautiful when planted in the yard, garden or as ornamental plants in pots. Taro is a perennial plant that is very difficult to die/rot even though the leaves, stems & roots wither away during shipping as long as the tuber part is still there, taro will still be able to grow well because the tuber is the main source of caladium\'s strength.', 'Medium', '2021-12-27 08:27:56', '2022-02-14 01:53:24'),
(5, 1, 6, 'Cladium Red Stardust', 'img/DSC02883.jpg', 129900, 60000, 'The popular name of this taro in Indonesia is taro oil paint or taro red star. This taro comes from Thailand. This one leaf ornamental plant has heart-shaped leaves and there is a red color on it. Its leaves are usually slippery because they contain a waxy layer, the size of the leaves is 5 cm wide, 8 cm long and the height of this plant ranges from 10-15 cm. The number of leaves 3-4 and lush roots. The plant grows from tubers that form a kind of ball. This plant will look very beautiful when planted in the yard, garden or as an ornamental plant in a pot. Taro is a perennial plant that is very difficult to die/rot even though the leaves, stems & roots wither away during shipping as long as the tuber part is still there, taro will still be able to grow well because the tuber is the main source of caladium\'s strength.', 'Medium', '2021-12-27 08:37:46', '2022-02-14 01:54:43'),
(6, 1, 6, 'Caladium Sexy Pink', 'img/DSC03011.jpg', 89900, 57000, 'The hallmark of this plant is the color of its leaves which vary from light pink to dark pink when mature. Lovers of pink and want to make the house more colorful, sexy pink taro can be your choice. The pink base color that dominates the entire leaf surface makes this ornamental plant so beautiful. Not to mention the shape of the leaves are wide and heart-shaped, the more pleasing to the eye. This taro comes from Thailand. The size of the leaves is 5 cm wide, 8 cm long and the height of this plant ranges from 10-15 cm. The number of leaves 3-4 and lush roots. These plants grow from bulbs that are shaped like balls. These plants will look very beautiful when planted in the yard, garden or as ornamental plants in pots. Taro is a perennial plant that is very difficult to die/rot even though the leaves, stems & roots wither away during shipping as long as the tuber part is still there, taro will still be able to grow well because the tuber is the main source of caladium\'s strength.', 'Medium', '2021-12-27 08:45:41', '2022-02-14 02:00:23'),
(7, 1, 6, 'Caladium Shycool', 'img/DSC02993.jpg', 259900, 55000, 'Shy Cool taro is also popular with the name taro paint spilled. The characteristic of this plant lies in the red color of the leaves whose motifs resemble paint spills. This ornamental plant comes from Thailand. The size of the leaves is 5 cm wide, 8 cm long and the height of this plant ranges from 10-15 cm. The number of leaves 3-4 and lush roots. These plants grow from bulbs that are shaped like balls. These plants will look very beautiful when planted in the yard, garden or as ornamental plants in pots. Taro is a perennial plant that is very difficult to die/rot even though the leaves, stems & roots wither away during shipping as long as the tuber part is still there, taro will still be able to grow well because the tuber is the main source of caladium\'s strength.', 'Medium', '2021-12-27 08:50:31', '2022-02-14 01:59:56'),
(15, 1, 6, 'Caladium New Wave', 'img/DSC02998.jpg', 309900, 45000, 'New wave is a type of caladium which is quite difficult to find, especially in Indonesia. This ornamental plant does have a unique appearance with reddish-orange leaves and bright yellow veins. There is also a new wave of Caladium with yellow leaves and reddish veins. The size of the leaves is 5 cm wide, 8 cm long and the height of this plant ranges from 10-15 cm. The number of leaves 3-4 and lush roots. These plants grow from tubers that are shaped like balls. This plant will look very beautiful when planted in the yard, garden. Taro is a perennial plant that is very difficult to die/rot even though the leaves, stems & roots wither away during shipping as long as the tuber part is still there, taro will still be able to grow well because the tuber is the main source of caladium\'s strength.', 'Medium', '2021-12-27 10:01:19', '2022-02-14 02:01:11'),
(17, 1, 6, 'Caladium Broken Heart', 'img/DSC02951.jpg', 79900, 45000, 'This Caladium beret plant also includes variegata. He is also known as Caladium broken heart. The leaves are heart-shaped with red on one side, and green with white patches on the other. The color pattern differs from one leaf to another. The size of the leaves is 5 cm wide, 8 cm long and the height of this plant ranges from 10-15 cm. The number of leaves 3-4 and lush roots. These plants grow from tubers that are shaped like balls. This plant will look very beautiful when planted in the yard, garden. Taro is a perennial plant that is very difficult to die/rot even though the leaves, stems & roots wither away during shipping as long as the tuber part is still there, taro will still be able to grow well because the tuber is the main source of caladium\'s strength.', 'Medium', '2021-12-27 10:14:03', '2022-02-14 02:02:36'),
(18, 1, 6, 'Cladium Lance Whorton', 'img/DSC02947.jpg', 149900, 45000, 'The combination of green, pink, and white spots on this lance worthon leaf is very unique. The size of the leaves is 5 cm wide, 8 cm long and the height of this plant ranges from 10-15 cm. The number of leaves 3-4 and lush roots. These plants grow from tubers that are shaped like balls. This plant will look very beautiful when planted in the yard, garden. Taro is a perennial plant that is very difficult to die/rot even though the leaves, stems & roots wither away during shipping as long as the tuber part is still there, taro will still be able to grow well because the tuber is the main source of caladium\'s strength.', 'Medium', '2021-12-27 10:14:56', '2022-02-14 02:04:54'),
(19, 1, 6, 'Caladium Srikandi Double Leaf', 'img/DSC02989.jpg', 294900, 45000, 'The slightly complex leaf pattern and the combination of green, white and red veins make this double leaf heroine unique. The size of the leaves is 5 cm wide, 8 cm long and the height of this plant ranges from 10-15 cm. The number of leaves 3-4 and lush roots. These plants grow from tubers that are shaped like balls. This plant will look very beautiful when planted in the yard, garden. Taro is a perennial plant that is very difficult to die/rot even though the leaves, stems & roots wither away during shipping as long as the tuber part is still there, taro will still be able to grow well because the tuber is the main source of caladium\'s strength.', 'Medium', '2021-12-27 16:43:34', '2022-02-14 02:05:29'),
(20, 1, 5, 'Begonia Maculata', 'img/DSC02421.jpg', 35000, 100, 'Begonia maculata has green oblong leaves with silver dots. The undersides of the leaves are red-purple. The plant grows white flowers in clusters with yellow centers on a single stem.', 'Medium', '2021-12-27 16:47:07', '2022-02-14 02:07:20'),
(21, 1, 5, 'Begonia Rex', 'img/DSC01636.jpg', 35000, 15, 'Begonia rex, the king begonia, is a species of flowering plant in the family Begoniaceae. It is found from Arunachal Pradesh to southeast China, and has been introduced to Bangladesh, Cuba, and Hispaniola. It is a parent to over 500 cultivars in the Begonia Rex Cultorum Group of houseplants.', 'Medium', '2021-12-27 16:50:03', '2022-02-14 02:07:50'),
(22, 1, 5, 'Begonia Black Velvet', 'img/DSC02468 (1).jpg', 35000, 5, 'The black velvet begonia ornamental plant actually has a leaf color that is not black as its name suggests or as it is called. However, the leaf color of the black velvet begonia ornamental plant is actually a mixture of dark green and very dark red and other colors. While the back of the leaves of the black velvet begonia ornamental plant and the stems are both pinkish red. The surface of the leaves of the black velvet begonia ornamental plant looks like there is a layer of wax but not too thick. If you look at the small black velvet begonia ornamental plant from a distance, you will see fine hairs on the stem. The leaves of black velvet begonia are star-shaped, while the center is very light green or more likely to be cream.', 'Medium', '2021-12-27 16:54:54', '2022-01-28 00:36:33'),
(24, 1, 5, 'Begonia Iron Cross', 'img/DSC02627.jpg', 69900, 100, 'Begonia masoniana, the iron cross begonia, is a species of plant in the family Begoniaceae, native to southern China and northern Vietnam. It was originally described from cultivated plants of unknown origin and was only much later rediscovered in the wild. It is a rhizomatous perennial begonia growing to 0.5 metres (20 in), bearing large, asymmetrical, textured green leaves covered in reddish hairs, with a prominent dark brown pattern in the centre of each leaf, reminiscent of the German Iron Cross. It produces small white flowers in erect panicles, but is cultivated mainly for its foliage effect. In temperate regions it must be grown under glass, or in a completely frost-free environment. Although sometimes (incorrectly) considered a rex begonia, this species is classified in the related section Coelocentrum.', 'Medium', '2021-12-27 18:42:40', '2022-02-14 02:08:26'),
(25, 1, 6, 'Caladium Lindenii', 'img/DSC01829.jpg', 109900, 1, 'Caladium lindenii is a species of flowering plant in the family Araceae, named after Belgian botanist Jean Jules Linden.', 'Medium', '2021-12-27 19:48:25', '2022-02-14 02:09:15'),
(30, 1, 1, 'Aglaonema Pictum Bicolor', 'img/DSC03149.jpg', 89900, 3, 'Aglaonema pictum bicolor is just as striking as its cousin ‘Tricolor’. This plant also has the nicest variegation on the leaves, if ‘tricolor’ is army-camouflaged meanwhile ‘bicolor’ is marbled with contrasting lime and dark green splotches. It’s perfect to light up your room, you can put it beside your window and enjoy the beauty every day. Aglaonema pictum bicolor prefers the same treatment as its cousin ‘tricolor’, and it’s takes time to grow. This plant doesn’t need too much maintanance due to the fact that it’s a slow grower. Aglaonema pictum is found in Sumatra and Nias Island. It grows usually between 1000 and 2000 m on the slopes of major volcanos, occasionally collected as low as 35 m.  Aglaonema is a genus of tropical aroids of 21 species native to southeastern Asia from northeastern India across southern China and Indonesia through New Guinea. All species are herbaceous. The generic name means “shining stamen” in Greek.', 'Medium', '2021-12-27 20:35:40', '2022-02-14 02:10:05'),
(35, 1, 1, 'Aglaonema Snow White', 'img/DSC01909.jpg', 69900, 1, 'Lower light levels are often a problem for a home or office environment, Aglaonema plants can survive well on this difficult situation. Aglaonema Snow White is adorable with its colourful Bright White and Dark Green Foliage.', 'Medium', '2021-12-27 21:10:01', '2022-02-14 02:11:53'),
(38, 1, 2, 'Alocasia Amazon', 'img/DSC01459.jpg', 59900, 100, 'Alocasia × amazonica is a hybrid whose parents are unknown. It features leathery, wavy-edged, arrowhead-shaped, dark bronze-green leaves (to 16” long) with conspicuous, contrasting, thick white to silvery-green main veins. In terms of nursery sales, this hybrid is commonly available as a houseplant.', 'Medium', '2021-12-27 21:26:57', '2022-02-14 02:31:32'),
(39, 1, 2, 'Alocasia Macrorrizhos Green Varigated', 'img/DSC02935.jpg', 289900, 100, 'Alocasia macrorrhiza variegata (Elephant Ear) is a herbaceous and evergreen indoor house plant. It can grow around 12 to 15 ft in height with a 4 to 6 ft spread. The leaves are evergreen, arrow-shaped to shield-like, simple with slightly wavy margins and prominent veins, up to 3 feet in length, and highly variegated in color with green, cream, and white. The creamy blossoms are fragrant and are borne Alocasia macrorrhiza ‘Variegata’ leaf close upon a spadix in a green spathe that ages to pale yellow. Fruit is fleshy red berries on a cylindrical spadix. Alocasia plants are poisonous if eaten. Keep it away from children and animals.', 'Rare', '2021-12-27 21:34:22', '2022-02-14 02:33:18'),
(40, 1, 2, 'Alocasia Dragon Scale', 'img/DSC01680.jpg', 99900, 10, 'Alocasia Dragon Scale\'s silvery-green leaves are darker towards the center, giving the lighter shade a luminous tone. The undersides are pale cream, with vibrant maroon veins. The coloration on young leaves deepens with maturity. The plant is striking at any size and stands alone or contrasts nicely with other plants.', 'Medium', '2021-12-27 21:39:38', '2022-02-14 02:34:06'),
(41, 1, 2, 'Alocasia Dragon Silver', 'img/DSC02863.jpg', 109900, 1, 'Alocasia Baginda Silver Dragon is a very compact variety suitable for terrariums. Fully grown plant remains under 0.5m tall. Silver Dragon has thick, heart-shaped, leathery leaves that are silver green with dramatically contrasting black zones around primary veins with lower leaf surface silver.', 'Medium', '2021-12-27 21:46:17', '2022-02-14 02:34:37'),
(42, 1, 2, 'Alocasia Black Velvet', 'img/DSC02917.jpg', 79900, 1, 'The Alocasia \'Black Velvet\' (Alocasia reginula) is a popular miniature jewel alocasia with characteristic dark foliage and a compact growth habit. Named for both its regal appearance and black velvety leaves, which are contrasted beautifully by the piercing white venation. Truly, a real dark gem of a plant', 'Medium', '2021-12-27 21:50:06', '2022-02-14 02:40:21'),
(44, 1, 1, 'Aglaonema Dut Anjamani', 'img/DSC03171.jpg', 69900, 1, 'Aglaonema type Dud Anjamani is still the most favorite type of aglaonema today. The name has the meaning of gems and makes people amazed when they see it because it is unique. Its uniqueness lies in the leaves which are slightly rounded and shiny red with green leaf bones, making them beautiful to look at.', 'Medium', '2021-12-27 23:15:34', '2022-02-14 02:42:48'),
(45, 1, 4, 'Anthurium Dorayaki', 'img/DSC01942.jpg', 249900, 900, 'Anthurium Dorayaki is an exclusive Anthurium Crystallinum hybrid. The name \'Dorayaki\' actually refers to a round, pancake-like confectionery in Japan. Indeed, the leaves of this specimen share a physical resemblance with the dessert: smooth, thick, and pleasantly rounded.', 'Medium', '2021-12-27 23:21:36', '2022-02-14 03:01:20'),
(46, 1, 4, 'Anthurium Chrystallinum', 'img/DSC02656.jpg', 119900, 30, 'Anthurium crystallinum is a member of section Cardiolonchium and the leaf blades of accepted specimens are sub-coriaceous (just less than leathery). They possess an attractive yet dark green coloration with a velutinous (velvety) appearance on the adaxial (upper) portion of the leaf blade.', 'Medium', '2021-12-27 23:26:10', '2022-02-14 04:00:21'),
(47, 1, 7, 'Calathea White Fusion (Tissue)', 'img/DSC01748.jpg', 40000, 30, 'The variegated foliage of the calathea \'White Fusion\' cultivar features a leaf top side with contrasting white markings alongside the green.', 'Medium', '2021-12-27 23:26:36', '2022-02-14 04:04:47'),
(48, 1, 4, 'Anthurium Clarinervium (Tarantula)', 'img/DSC02661.jpg', 179900, 30, 'Anthurium clarinervium also known by its common name the Velvet Cardboard Anthurium. This species of plant is in the family Araceae, and is native to Chiapas, Mexico. The Anthurium genus is known to contain approximately 1,000 species of plants, resulting in one of the most diverse Central American tropical plant genera.', 'Rare', '2021-12-27 23:33:16', '2022-02-14 04:06:08'),
(51, 1, 4, 'Anthurium Magnificum', 'img/DSC01796.jpg', 129900, 30, 'Anthurium magnificum is an exotic plant with large, dark-green leaves which have prominent white veins. These features give the Anthurium magnificum leaves a very unique and ornamental look. This is why this plant species is extremely popular as an indoor plant. The great thing is that it is also very easy to care for.', 'Rare', '2021-12-27 23:42:02', '2022-02-14 04:07:01'),
(53, 1, 9, 'Epipremnum Variegata', 'img/DSC01901.jpg', 64900, 50, 'Epipremnum Pinnatum Variegata is a beautiful vine with elongated, green foliage with white chimeric variegation. As the plant matures the leaves get the characteristic splits. Commonly known as \'Pothos\', it can whit-stand pretty dark places, however that can impact the amount variegation that it has.', 'Medium', '2021-12-27 23:51:06', '2022-02-14 04:08:06'),
(54, 1, 7, 'Calathea Orbifolia', 'img/DSC02584.jpg', 99900, 1, 'Calathea orbifolia is a beautiful houseplant highly sought after due to the exquisite beauty of its large, round leaves and its air-purifying qualities. This beautiful foliage is subtly striped with pale silver-green markings, with the undersides of the leaf also being a pale silver-green.', 'Medium', '2021-12-27 23:56:09', '2022-02-14 04:08:45'),
(56, 1, 7, 'Calathea Black Lipstick', 'img/DSC01772.jpg', 120000, 25, 'One of the most sought after ornamental plants is Calathea black lipstick. Calathea black lipstick is a member of the Marantaceae family originating from South America. However, quoted from various sources, this type of calathea ornamental plant is a new variety originating from Papua. This ornamental plant which is often called meranti has wide leaves with distinctive patterns in each type of plant. The color of the leaves is also very distinctive, which is a dark purplish green.', 'Medium', '2021-12-28 00:02:35', '2022-01-27 22:39:33'),
(57, 1, 15, 'Philodendron Dark Lord', 'img/DSC02987.jpg', 50000, 300, 'Dark Lord is a giant collectors must have. The foliage on this philodendron begins deep orange, changes to blood red and finally to a deep dark green top with a metallic maroon underside. This plant is very easy to grow and it\'s hard to keep small.', 'Medium', '2021-12-28 00:10:09', '2022-02-07 00:14:28'),
(58, 1, 15, 'Philodendron Gloriosum', 'img/DSC01717.jpg', 150000, 10, 'Philodendron gloriosum is a species of plant in the family Araceae, genus Philodendron. It is a crawling, terrestrial plant, native to Colombia whose foliage is characterized by cordate (heart-shaped) and velutinous surface, pink margins, and pale green, white, or pinkish veins.', 'Medium', '2021-12-28 00:14:08', '2022-01-27 22:30:50'),
(59, 1, 8, 'Cyrtosperma Jhontsonii', 'img/DSC02957.jpg', 0, 0, 'Cyrtosperma is a genus of flowering plants in the famili Araceae. The genus went through considerable taxonomic changes in the 1980s, and as a result is now considered to be native only to Southeast Asia and some Pacific islands. ... Cyrtosperma is now known to be most prominent in New Guinea.', 'Rare', '2021-12-28 00:14:38', '2022-02-11 05:52:21'),
(60, 1, 15, 'Philodendron Melanochrysum', 'img/DSC01435.jpg', 200000, 20, 'Philodendron Melanochrysum *, aka Black Gold Philodendron, is a large velvet leaf variety of philodendron whose leaves start out pink with light green veins and slowly matures into a deep dark green with a velvety texture. This plant does require a totem or some sort of pole to climb.', 'Medium', '2021-12-28 00:17:45', '2022-01-27 22:29:38'),
(61, 1, 15, 'Philodendron Glorious', 'img/DSC02837.jpg', 350000, 1000, 'Philodendron gloriosum is a species of plant in the family Araceae, genus Philodendron. It is a crawling, terrestrial plant, native to Colombia whose foliage is characterized by cordate (heart-shaped) and velutinous surface, pink margins, and pale green, white, or pinkish veins.', 'Medium', '2021-12-28 00:28:16', '2022-02-06 22:12:40'),
(62, 1, 15, 'Philodendron Painted Lady', 'img/DSC01779.jpg', 200000, 100, 'Philodendron \'Painted Lady\' is a striking aroid, with bright pink petioles (the stalk that joins a leaf to a stem) and chartreuse leaves. The new leaves unfurl bright yellow-green before fading to a bit deeper mottled green as the plant grows.', 'Medium', '2021-12-28 00:31:43', '2022-01-27 22:27:27'),
(63, 1, 15, 'Philodendron Hastatum Silver', 'img/DSC02518.jpg', 120000, 10, 'Philodendron Hastatum, also known as Silver Sword Philodendron, has silver almost mirror-like looking foliage. As the plant matures, the leaves become arrow shaped. ... Philodendron\'s are easy to grow plants that perform best when grown in a well draining potting mix like our aroid potting mix.', 'Medium', '2021-12-28 00:37:07', '2022-01-27 22:00:30'),
(64, 1, 15, 'Philodendron Verrucusom', 'img/DSC01503.jpg', 300000, 50, 'The Philodendron verrucosum is a striking plant, known for its velvety, dark-green leaves with bright, light green veining once they reach maturity. Even the underside of their leaves, coloured a faded burgundy in between the veins, showcase its adaptability to its native tropical environments.', 'Rare', '2021-12-28 00:42:18', '2022-01-27 21:54:46'),
(65, 1, 15, 'Philodendron Florida Ghost Mint', 'img/DSC01923.jpg', 100000, 100, 'The Philodendron Florida ghost mint is an evergreen hybrid and it\'s a vine climber. The temperature will also determine the color of its leaves. ... When it hits full maturity, the leaves become a darker green. Sunlight: They can withstand full sun and handle low light—though they will do best in indirect sunlight.', 'Medium', '2021-12-28 00:45:41', '2022-01-27 21:53:09'),
(66, 1, 15, 'Philodendron Burlemax Variegata', 'img/DSC02571.jpg', 175000, 50, 'Philodendron \'Burle Marx\' variegata is a variegated variety of Philodendron \'Burle Marx\'. A beautiful, low-growing shrub or vine that has shiny bright green, elongated heart-shaped leaves and reddish stems. The very colourful variegation appears in different patterns on every single leaf.', 'Medium', '2021-12-28 00:49:33', '2022-01-27 21:52:27'),
(67, 1, 15, 'Philodendron Plowmanii', 'img/DSC02839.jpg', 275000, 1000, 'Philodendron Plowmanii is a beautiful terrestrial, creeping plant with stunning foliage and an unusual petiole. The heart-shaped leaves are thin and leathery and look different during different stages of the plant\'s life. Their petioles are green, glossy and develop a ruffled edge around them.', 'Rare', '2021-12-28 00:55:24', '2022-02-06 22:38:00'),
(68, 1, 10, 'Homalomena Frog', 'img/homalomena frog.jpg', 130000, 100, 'Homalomena Frog ornamental plants are classified as forest plants that can be cultivated as cultivated plants or home plants.Homalomena Frog is mostly found in South and Southeast Asia', 'Medium', '2021-12-28 01:01:20', '2022-02-17 02:42:45'),
(69, 1, 10, 'Homalomena Schismatoglottis', 'img/DSC03101.jpg', 100000, 0, 'There is also a type of Schismatoglottis which is divided into Andromeda, Calyptrata, Novoguineensis, and others. The main difference between the variants is the light green hue that appears on each leaf surface.', 'Medium', '2021-12-28 01:06:52', '2022-02-07 21:41:26'),
(71, 1, 11, 'Leea Amabilis', 'img/leea.jpg', 300000, 1, 'Leea (Tagalog: Talyantan) is a genus of plants that are distributed throughout Northern and eastern Australia, New Guinea, South and Southeast Asia and parts of Africa. The APG IV system places Leea in the subfamily Leeoideae (Vitaceae).', 'Medium', '2021-12-28 02:50:21', '2022-01-27 21:27:34'),
(72, 1, 15, 'Philodendron Violin Golden', 'img/DSC02887.jpg', 225000, 5, 'Philodendron Bipennifolium Aurea, also known as Gold Violin is a climbing Philodendron that positively glows! Neon-yellow young leaves and exaggerated lobes give this plant the name \'Gold Violin\'. The leaf shape does vary quite a bit, with juvenile leaves looking much different from mature leaves.', 'Medium', '2021-12-28 03:04:00', '2022-02-06 22:10:57'),
(73, 1, 12, 'Monstera Karstenianum', 'img/DSC02542.jpg', 80000, 1000, 'Monstera karstenianum or it can also be known as the Peruvian monstera at first glance looks like a betel leaf. But don\'t get me wrong Toppers, apparently this is one of the unique ornamental plants whose price is slightly cheaper than other types. Peruvian monstera is used to living in environments with high humidity, so it is very important to regularly spray the leaves.', 'Medium', '2021-12-28 03:05:48', '2022-01-27 21:22:25'),
(76, 1, 15, 'Philodendron Pink Princess', 'img/DSC02693.jpg', 1200000, 10, 'The Philodendron Pink Princess—botanical name Philodendron erubescens—is a trailing plant in the family Araceae. Apart from the splendid pink and dark green leaves, the plant is identified by large waxy leaves. ... The pinkness on the leaves is due to a lack of chlorophyll—the chemical that makes plants\' leaves green.', 'Rare', '2021-12-28 03:32:10', '2022-01-27 21:21:13'),
(77, 1, 17, 'Rhaphidophora Tetasperma', 'img/DSC02606.jpg', 140000, 100, 'Rhaphidophora is a genus in the family Araceae, occurring from tropical Africa eastward through Malesia and Australasia to the Western Pacific. The genus consists of about 100 species.', 'Medium', '2021-12-28 08:22:14', '2022-01-27 21:13:59'),
(78, 1, 18, 'Scindapsus Treubii Dark Form', 'img/DSC02965.jpg', 50000, 5000, 'Scindapsus Treubii Dark Form is a rare and beautiful looking vining species of scindapsus with large nearly black leaves. Scindapsus Treubii Dark Form is an easy to grow plant often recommended for low light environments. As it is a trailing plant it will appreciate a brass plant support to climb on.', 'Medium', '2021-12-28 08:34:16', '2022-02-11 06:15:21'),
(79, 1, 18, 'Scindapsus Treubii Moonlight', 'img/DSC03146.jpg', 50000, 5000, 'Scindapsus treubii \'Moonlight\' is a cousin of the better known Scindapsus pictus. Moonlight showcases almost completely silver leaves with a dash of green. Just like pictus it is a climbing variety and when given a moss stick to climb, the leaves can reach an impressive size!', 'Rare', '2021-12-28 08:37:00', '2022-02-08 03:57:09'),
(80, 1, 18, 'Scindapsus Exotica', 'img/IMG_1888.jpg', 50000, 5000, 'Scindapsus Pictus \'Exotica\' is a striking vining plant with large, heart-shaped dark-green leaves with silvery-white splashes. ... This tropical hanging basket plant goes by the common names Satin Pothos, Silver Pothos, Philodendron Silver, and Silver Vine', 'Medium', '2021-12-28 08:40:53', '2022-01-27 21:12:17'),
(83, 1, 19, 'Syngonium Three King', 'img/DSC02592.jpg', 65000, 20, 'Syngonium podophyllum is part of the Araceae family and its native range is Mexico to Tropical America. \'Three Kings\' is a new cultivar, leaves are large, dark green with frosted green variegation. Syngonium have a climbing growth habit so would appreciate a moss pole.', 'Medium', '2021-12-28 08:59:28', '2022-01-27 21:10:19'),
(84, 1, 19, 'Syngonium Maria Alussion', 'img/DSC02434.jpg', 70000, 10, 'Syngonium podophyllum \'Maria Allusion\' is an excellent lower light houseplant that features stunning dark red and green leaves with pink venation. It would make a fantastic plant for your home or office! Keep soil moist but do not let the root sit in standing water.', 'Medium', '2021-12-28 09:03:52', '2022-01-27 21:09:25'),
(85, 1, 19, 'Syngonium White Albo', 'img/DSC02577.jpg', 65000, 10, 'White Knight Albo Variegata are very easy to grow tropical plants that require little care indoors or out. Like other aroids, many species of Syngonium can be grown as houseplants, or outdoors in mild climates.', 'Medium', '2021-12-28 09:06:55', '2022-01-27 21:08:31'),
(86, 1, 19, 'Syngonium Mojito', 'img/DSC02531.jpg', 150000, 10, 'Syngonium Podophyllum Mottled “Mojito” is a sweet, beautiful Syngonium variety with arrow-head leaved mottled with dark greens through to lighter, cream greens. This fast growing plant will become an instant hit, especially if you get the whole collection of Syngonium, suitable for almost every spot in your home.', 'Medium', '2021-12-28 09:09:22', '2022-01-27 21:07:47'),
(88, 1, 19, 'Syngonium Pink Spot', 'img/DSC02193.jpg', 135000, 5, 'Syngonium Pink Spot\'s cream to light-green, arrow-head leaves are covered with pink spots and speckles giving it the freckled look we love! This fast growing plant will become an instant hit, suitable for almost every spot in your home. Syngonium is a considered a fast growing climber from the Aracae family.', 'Medium', '2021-12-28 09:15:01', '2022-01-27 21:06:36'),
(90, 1, 19, 'Syngonium Pink Splash', 'img/DSC02202.jpg', 135000, 10, 'This Syngonium is a desirable new plant with arrow-shaped leaves that are sporadically splashed with shades of pink! It\'s super easy to care for and if you give it a pole to climb the leaves will become much larger. Leaves can range from slightly variegated to almost white.', 'Medium', '2021-12-28 09:21:57', '2022-01-27 21:05:55'),
(92, 1, 20, 'Tradescantia Nanouk', 'img/images-9.jpeg', 35000, 10, 'Tradescantia albiflora Nanouk, Fantasy Venice, is an ornamental plant with blue, reddish, purplish colored vines that has caught the attention of fans in the collection of plants.', 'Medium', '2021-12-28 19:38:55', '2022-01-27 20:34:18'),
(94, 1, 5, 'Begonia Karpet', 'img/DSC02513.jpg', 35000, 1, 'This carpet begonia ornamental plant has the characteristics of leaf size as big as the palm of an adult hand and can be fewer. The leaves of the carpet begonia ornamental plant are also uniquely bright green in color with a reddish-brown pattern in the middle.', 'Medium', '2021-12-28 20:23:11', '2022-01-27 20:32:48'),
(96, 1, 1, 'Aglaonema Pictum Tricolor', 'img/images-11.jpeg', 150000, 0, 'The aglonema pictum tricolor plant is a sub-tropical shrub belonging to the aglonema pictum species. Aglonema pictum tricolor grows at an altitude of 1000 – 2000 meters on the slopes of volcanoes on the islands of Sumatra and Nias.', 'Medium', '2021-12-28 20:43:09', '2022-01-27 20:31:50'),
(97, 1, 3, 'Amydrium Silver', 'img/DSC02967.jpg', 50000, 0, 'Amydrium Medium Silver is a vigorous climber with blue crocodile-like textured foliage that belongs to Araceae family and is native to Indonesia. Amydrium Medium Silver is a vigorous climber with crocodile-like textured silver foliage.', 'Medium', '2021-12-28 20:56:34', '2022-02-11 06:02:21'),
(101, 1, 15, 'Philodendron Standleyana Var', 'img/DSC01876.jpg', 150000, 100, 'Philodendron is a type of plant from the Araceae tribe, which has many species. Its name comes from the Greek, namely from the words philo and dendron. Because of the beauty of the shape and colorful leaves, Philodendron is much preferred as a room or garden ornamental plant', 'Medium', '2021-12-28 21:59:00', '2022-01-27 20:27:17'),
(102, 1, 13, 'Oxalys Triangularis', 'img/DSC02711.jpg', 40000, 100, 'Oxalis triangularis is a beautiful clump-forming herbaceous plant that grows up to 10 inches (25 cm) tall and up to 15 inches (38 cm) wide. Leaves are purple, trifoliate with leaflets shaped like inverted triangles. They are open during the day and close at night.', 'Medium', '2021-12-28 23:43:42', '2022-01-27 20:26:25'),
(105, 1, 14, 'Peperomia Watermelon', 'img/DSC02446 (2).jpg', 35000, 100, 'Peperomia argyreia, watermelon peperomia or watermelon begonia, is a species of flowering plant in the family Piperaceae, native to northern South America, including Bolivia, Brazil, Ecuador, and Venezuela. This plant is not closely related to watermelon or begonias.', 'Medium', '2021-12-29 00:22:17', '2022-01-27 20:25:06'),
(106, 1, 14, 'Peperomia Metalica', 'img/DSC02497.jpg', 35000, 100, 'The plant named is pronounced as Pep-er-ROH-mee-uh Meh-TAL-ih-kuh. This plant is also known as Red Tree, and it is a small-sized Peperomia. Peperomias are, no doubt, the easiest houseplants to grow.', 'Medium', '2021-12-29 00:24:05', '2022-01-27 20:24:42'),
(108, 1, 14, 'Peperomia Caperata Emerald', 'img/DSC02491.jpg', 35000, 100, 'Peperomia caperata, the emerald ripple peperomia, is a species of flowering plant in the family Piperaceae, native to Brazil. It is a mound-forming evergreen plant that grows 20 cm high and wide, with wavy heart-shaped leaves, and thin spikes of white flowers 5-8 cm long, in summer.', 'Medium', '2021-12-29 00:28:16', '2022-01-27 20:21:16'),
(109, 1, 16, 'Piper Crocatum', 'img/DSC02716.jpg', 50000, 10, 'Piper crocatum is a plant containing natural chemicals that may have an antioxidant ability to inhibit fatty acid oxidation and reduce free radicals, however, there is no published scientific reports up to now.', 'Medium', '2021-12-29 00:34:01', '2022-01-27 20:17:28'),
(111, 1, 4, 'Anthurium Marble', 'img/DSC01848.jpg', 250000, 5, 'Anthurium belongs to the Araceae family. This beautiful leafy plant is still related to a number of popular ornamental plants such as aglaonema, philodendron, ornamental taro, and allocation. ... The main attraction of anthurium is its beautiful, unique and varied leaf shape.', 'Medium', '2021-12-29 01:17:20', '2022-01-27 20:12:40'),
(114, 1, 12, 'Monstera Adansonii', 'img/DSC01738.jpg', 60000, 10, 'Monstera adansonii is a species of flowering plant from the Araceae family that grows in South America and Central America.', 'Medium', '2021-12-31 00:53:21', '2022-01-27 20:07:03'),
(115, 1, 12, 'Monstera Deliciosa', 'img/DSC01710.jpg', 135000, 5, 'Monstera deliciosa, the Swiss cheese plant, is a species of flowering plant native to the tropical forests of southern Mexico, south to Panama. It has been introduced to many tropical areas, and has become a somewhat invasive species in Hawaii, the Seychelles, Ascension Island and the Society Islands.', 'Medium', '2021-12-31 01:00:43', '2022-01-27 20:02:55'),
(116, 1, 7, 'Calathea Silver Plate', 'img/DSC03111.jpg', 45000, 100, 'This silver maranta plant has the scientific name Calathea silver plate which is a short shrub plant variety. The leaves of this leaf type plant are shiny greenish gray on the surface of the leaves where the leaves have a tendency to roll when doused with water. Because this plant is very unique, you must try to plant it. This plant is very suitable to be placed in a shady area by using pouros growing media', 'Medium', '2022-02-07 21:17:40', '2022-02-07 21:20:35'),
(117, 1, 15, 'Philodendron Green Saw', 'img/DSC03104.jpg', 259900, 20, NULL, 'Medium', '2022-02-08 03:27:21', '2022-02-08 03:27:21'),
(118, 1, 6, 'Caladium Mickey Mouse', 'img/DSC03119.jpg', 49900, 100, 'The large and shiny dark-green elephant-ear leaves have light-green to creamy-white irregular variegations. You will see these variegations spread all over the leaf surface, making no two leaves look similar to each other. Although a perfect outdoor dweller, this is commonly considered an indoor plant. And the good thing is that all this beauty comes in a ‘not so difficult to care’ package.', 'Medium', '2022-02-11 06:26:35', '2022-02-11 06:26:35'),
(119, 1, 5, 'Begonia Ice Cream', 'img/BEGONIA ICE CREAM.jpg', 35000, 10, 'Keunikan dari tanaman hias begonia ice cream yaitu warna daun yang memiliki tiga macam berbeda dan menyolok. Tanaman hias begonia ice cream akan sangat menarik jika ditaruh di taman, halaman, atau teras rumah. Ciri-cirinya warna daun tanaman hias begonia ice cream ada tiga macam, hitam, cream dan merah. Ditambah ada hijau pada yang tuanya.  Batang daun begonia ice cream berbulu halus dan tegak dari pangkal sampai dengan ke atas tanaman hias tersebut.  Bagian bawah antar batang begonia ice cream rapat dan tumbuh berjarak ke bagian atas tanaman hias tersebut.', 'Medium', '2022-02-11 06:59:11', '2022-02-11 06:59:11'),
(120, 1, 1, 'Aglonema Super White', 'img/DSC03217.jpg', 399900, 10, 'Aglaonema Super white dengan daun putih hampir murni di seluruh daunnya ini sangat unik!. Tanaman yang sangat cocok untuk di dalam ruangan yang fantastis atau tanaman bawah di taman terlindung yang hangat.', 'Medium', '2022-02-11 07:14:22', '2022-02-17 02:52:50'),
(121, 1, 1, 'Aglonema Red Bourjue', 'img/DSC03215.jpg', 249900, 10, 'Aglonema red borju memang sangat mempesona. Ada kesan elegan dan menawan.  Ciri khas daun aglonema red borju, yakni memiliki warna hijau tua dengan perpaduan merah muda di bagian tulangnya. Sementara urat-uratnya terlihat berwarna semu kuning. Bentuk daunnya cenderung oval dengan ukuran sedang.', 'Medium', '2022-02-11 07:17:39', '2022-02-17 02:52:04'),
(122, 1, 1, 'Aglonema Red Kochin', 'img/DSC03227.jpg', 149900, 10, 'Aglonema red kochin memiliki nama lain yaitu aglonema kochin super atau super red kochin. Warna daun aglonema jenis ini berwarna merah tua, namun tepi daunnya berwarna hijau gelap. Aglonema red kochin memiliki bentuk tangkai panjang dan daun yang menjuntai. Red kochin digemari karena warna merah cerah yang dimilikinya.  Artikel ini telah tayang di Kompas.com dengan judul \"Kaleidoskop 2020: Aglonema Populer, Red Kochin Sampai Adelia\", Klik untuk baca: https://www.kompas.com/homey/read/2020/12/15/161136176/kaleidoskop-2020-aglonema-populer-red-kochin-sampai-adelia?page=all. Penulis : Abdul Haris Maulana Editor : Sakina Rakhma Diah Setiawan  Download aplikasi Kompas.com untuk akses berita lebih mudah dan cepat: Android: https://bit.ly/3g85pkA iOS: https://apple.co/3hXWJ0L', 'Medium', '2022-02-11 07:32:11', '2022-02-17 02:51:21'),
(123, 1, 1, 'Aglonema Red Anjamani', 'img/DSC02697.jpg', 69900, 10, 'Red Anjamani, salah satu jenis aglaonema favorit para hobiis. Aglaonema ini memiliki daun atas berwarna merah muda, berbatang hijau. Aglaonema ini cocok untuk menghiasi ruang tamu atau pekarangan rumah Anda.', 'Medium', '2022-02-11 07:43:55', '2022-02-11 07:43:55'),
(126, 1, 15, 'Philodendron Subhastatum', 'img/PHILO SUBHASTATUM.jpg', 49900, 10, NULL, 'Medium', '2022-02-11 08:01:18', '2022-02-11 08:01:18'),
(127, 1, 18, 'Scindapsus Lucens', 'img/DSC02979.jpg', 109900, 100, NULL, 'Medium', '2022-02-11 08:12:03', '2022-02-11 08:12:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `place_of_birth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_profile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/assets/img/img_profile.png',
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','member') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'member',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `date_of_birth`, `place_of_birth`, `phone`, `email`, `email_verified_at`, `password`, `address`, `img_profile`, `notes`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL, '', 'admin@tasanesia.com', NULL, '$2y$10$otfBqx0umqZ18lkinRfmCuMwGVZjCjeRRn7IMpGzdgnoTvPQdzl9u', '', '/assets/img/img_profile.png', '', 'admin', 'Lww3Vb20RMMzOywHPuaXkeylS90AOUiNC2qVUm30P8VQ6k5EfKNGqTVt7Zld', '2021-12-27 00:58:56', '2021-12-27 00:58:56'),
(2, 'Obed El Fatih Syams', NULL, NULL, '', 'fatihsyams21@gmail.com', NULL, '$2y$10$ic/l6x2sr5edyD9nnWtlTOw0IVbI/CjjuZzkVSAVY6h7Icy7UcCZm', '', '/assets/img/img_profile.png', '', 'member', NULL, '2021-12-27 02:26:13', '2021-12-27 02:26:13'),
(3, 'nadya', NULL, NULL, '', 'ndyaakn@gmail.com', NULL, '$2y$10$OnLy0CGVf4FJCU4wGAlxTuwCZIzjRaqxLYoKx42nE4qG7t9EZSjiO', '', '/assets/img/img_profile.png', '', 'member', NULL, '2022-01-02 20:54:36', '2022-01-02 20:54:36'),
(4, 'jess', NULL, NULL, '', 'bumi2772@gmail.com', NULL, '$2y$10$I0H8P8knBaYJHFMHGmJb4uN43os/Q.ByMcWhRxOfjwp4sYomvCbGe', '', '/assets/img/img_profile.png', '', 'member', NULL, '2022-01-04 23:35:15', '2022-01-04 23:35:15'),
(5, 'Evie', NULL, NULL, '085717346924', 'sekar.sari@gmail.com', NULL, '$2y$10$ukqYR2bkHKbRz//p.yJmle87aNii7ld.LGAeylZeMtQpZUpjhuXni', '', '/assets/img/img_profile.png', '', 'member', 'jX4WrPdsI9C8tSY4tw1x1SaIoYvplRdZptGMEkdAEBWf4zp0u2JGTuH8IK94', '2022-01-09 07:46:59', '2022-01-09 07:46:59'),
(6, 'Evie2', NULL, NULL, '0818209007', 'eviessari@gmail.com', NULL, '$2y$10$7UPg8vwXGRRNQ2PXJzbyPO/eC9ZZaBtuQhfMp.M627l6f5OfU4yBK', '', '/assets/img/img_profile.png', '', 'member', NULL, '2022-01-09 21:32:43', '2022-01-09 21:32:43'),
(7, 'Sekar Sari', NULL, NULL, '0818209007', 'sekar@gmail.com', NULL, '$2y$10$HAhZS7935oXdR97bzjU2U.7MG.17DNHSXBFCoxmOpwRPKvGfy7SzW', '', '/assets/img/img_profile.png', '', 'member', NULL, '2022-01-17 00:53:44', '2022-01-17 00:53:44'),
(8, 'Jundi Husni', NULL, NULL, '081729392912', 'jundihusni02@gmail.com', NULL, '$2y$10$rZJby8wCufbz02ngErh95eC1HqxI0lCDcVYsJWx4RIaEnMacG/RkW', '', '/assets/img/img_profile.png', '', 'member', NULL, '2022-01-19 21:03:33', '2022-01-19 21:03:33'),
(9, 'dinda', NULL, NULL, '083197519647', 'knnanad95@gmail.com', NULL, '$2y$10$wMGZKrz44Z/2my2sT48lN.a5X4qQNOL9MDmL3rvrGEJ4ASsdortJi', '', '/assets/img/img_profile.png', '', 'member', NULL, '2022-01-26 07:43:30', '2022-01-26 07:43:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaigns_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_subs`
--
ALTER TABLE `category_subs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_subs_category_id_foreign` (`category_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `homes`
--
ALTER TABLE `homes`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_category_subs_id_foreign` (`category_subs_id`);

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
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category_subs`
--
ALTER TABLE `category_subs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homes`
--
ALTER TABLE `homes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD CONSTRAINT `campaigns_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `category_subs`
--
ALTER TABLE `category_subs`
  ADD CONSTRAINT `category_subs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_subs_id`) REFERENCES `category_subs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

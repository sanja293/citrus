-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2019 at 08:54 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `citrus`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `email` varchar(100) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `date`, `email`, `message`, `status`) VALUES
(1, 'Mr. NiceGuy', '2019-11-17', 'mr.nice.guy@gmail.com', 'I really love citrus!! It\'s so NICE!!! <3', 'approved'),
(2, 'Witch666', '2019-11-17', 'witch.evil.yes@yahoo.com', 'Love to cook them with bath wings!! Yummy!!!', 'approved'),
(21, 'Sanja', '2019-11-17', 'sanja293@gmail.com', 'Just some random comment!!!', 'new'),
(22, 'JA', '2019-11-17', 'sanja293@gmail.com', 'I like lime!!!', 'approved'),
(24, 'damjan', '2019-11-17', 'sanja293@gmail.com', 'I like oranges.', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `image`, `description`) VALUES
(1, 'Lemon', 'lemon.jpg', 'The lemon, Citrus limon (L.) Osbeck, is a species of small evergreen tree in the flowering plant family Rutaceae, native to South Asia, primarily North eastern India.\r\n\r\nThe tree\'s ellipsoidal yellow fruit is used for culinary and non-culinary purposes throughout the world, primarily for its juice, which has both culinary and cleaning uses.[2] The pulp and rind are also used in cooking and baking. The juice of the lemon is about 5% to 6% citric acid, with a pH of around 2.2, giving it a sour taste. The distinctive sour taste of lemon juice makes it a key ingredient in drinks and foods such as lemonade and lemon meringue pie.'),
(2, 'Orange', 'orange.jpg', 'The orange is the fruit of the citrus species Citrus × sinensis in the family Rutaceae, native to China.[1] It is also called sweet orange, to distinguish it from the related Citrus × aurantium, referred to as bitter orange. The sweet orange reproduces asexually (apomixis through nucellar embryony); varieties of sweet orange arise through mutations.[2][3][4][5]\r\n\r\nThe orange is a hybrid between pomelo (Citrus maxima) and mandarin (Citrus reticulata).[2][6] The chloroplast genome, and therefore the maternal line, is that of pomelo.[7] The sweet orange has had its full genome sequenced.'),
(3, 'Buddha\'s hand', 'buddha_hand.jpg', 'Citrus medica var. sarcodactylis, or the fingered citron, is an unusually shaped citron variety whose fruit is segmented into finger-like sections, resembling those seen on representations of Buddha. It is called Buddha\'s hand in Chinese (佛手柑), Japanese (仏手柑), Korean (불수감) and Vietnamese (Phật thủ).\r\n\r\nThe different cultivars and variations of this citron variety form a gradient from \"open-hand\" types with outward-splayed segments to \"closed-hand\" types, in which the fingers are kept together. There are also half-fingered fruits, in which the basal side is united and the apical side fingered. The origin of this kind of citron is commonly traced back to the Far East, probably northeastern India or China, where most domesticated citrus fruits originate.'),
(4, 'Grapefruit', 'grapefruit.jpg', 'The grapefruit (Citrus × paradisi) is a subtropical citrus tree known for its relatively large sour to semi-sweet, somewhat bitter fruit. Grapefruit is a citrus hybrid originating in Barbados as an accidental cross between two introduced species – sweet orange (C. sinensis), and pomelo (or shaddock) (C. maxima) – both of which were introduced from Asia in the seventeenth century.[1] When found, it was nicknamed the \"forbidden fruit\".[2] Frequently, it is misidentified as the very similar parent species, pomelo.[3]\r\n\r\nThe grape part of the name alludes to clusters of fruit on the tree that often appear similar to grape clusters.[4] The interior flesh is segmented and varies in color from white to yellow to red to pink.'),
(5, 'Greek citron', 'greek_citron.jpg', 'The Greek citron variety of Citrus medica (Greek: κιτριά, Hebrew: אתרוג קורפו‎ or יְוָנִי) was botanically classified by Adolf Engler[1] as the \"variety etrog\". This is remarking on its major use for the Jewish ritual etrog during Sukkot.[2][3]\r\n\r\nIt was also called pitima, or the cedro col pigolo (\"citron with a pitom), because its usually persisting pitom (carpel).[4] The last does not only enhance its character, but also adds Halachic promotion.'),
(6, 'Kumquat', 'kumquat.jpg', 'Kumquats (or cumquats in Australian English, /ˈkʌmkwɒt/;[2] Citrus japonica) are a group of small fruit-bearing trees in the flowering plant family Rutaceae. They were previously classified as forming the now-historical genus Fortunella, or placed within Citrus sensu lato.\r\n\r\nThe edible fruit closely resembles the orange (Citrus sinensis) in color and shape but is much smaller, being approximately the size of a large olive. Kumquat is a fairly cold-hardy citrus.'),
(7, 'Lime', 'lime.jpg', 'A lime (from French lime, from Arabic līma, from Persian līmū, \"lemon\")[1] is a citrus fruit, which is typically round, green in color, 3–6 centimetres (1.2–2.4 in) in diameter, and contains acidic juice vesicles.[2]\r\n\r\nThere are several species of citrus trees whose fruits are called limes, including the Key lime (Citrus aurantiifolia), Persian lime, kaffir lime, and desert lime. Limes are a rich source of vitamin C, are sour, and are often used to accent the flavours of foods and beverages. They are grown year-round.[3] Plants with fruit called \"limes\" have diverse genetic origins; limes do not form a monophyletic group.'),
(8, 'Mandarin', 'mandarin.jpg', 'The mandarin (Citrus reticulata), also known as the mandarin orange or mandarine, is a small citrus tree with fruit resembling oranges, usually eaten plain or in fruit salads.[1] The tangerine is a group of orange-colored citrus fruit consisting of hybrids of mandarin.\r\n\r\nMandarins are smaller and oblate, rather than spherical, like the common oranges (which are a mandarin hybrid).[1] The taste is considered less sour, as well as sweeter and stronger.[2] A ripe mandarin is firm to slightly soft, heavy for its size, and pebbly-skinned. The peel is thin, with little white mesocarp,[3] so they are usually easier to peel and to split into segments.[1] Hybrids generally have these traits to a lesser degree. The mandarin is tender and is damaged easily by cold. It can be grown in tropical and subtropical areas'),
(10, 'Papeda', 'papeda.jpg', 'Papeda or papaeda is the common name for a group of citrus native to tropical Asia that are hardy and slow growing, and produce unpalatable fruit. Walter Tennyson Swingle segregated these species into a separate subgenus, Papeda. It included the Ichang lemon, yuzu, kaffir lime, kabosu, sudachi, and a number of wild and uncultivated species and hybrids. Recent genetic analysis shows the papedas to be distributed among distinct branches of the citrus phylogenetic tree, and hence Swingle\'s proposed subgenus is polyphyletic and not a valid taxonomic grouping, but the term persists as a common name.\r\n\r\nBecause of generally slow growth and bitter, less palatable fruits than in other citruses, papeda species have only limited commercial cultivation.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

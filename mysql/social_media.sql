-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 02, 2022 at 09:57 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social_media`
--

-- --------------------------------------------------------

--
-- Table structure for table `FriendRequest`
--

CREATE TABLE `FriendRequest` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `FriendRequest`
--

INSERT INTO `FriendRequest` (`id`, `created_at`, `from_user_id`, `to_user_id`) VALUES
(1, '2022-01-02 08:56:20', 1, 4),
(2, '2022-01-02 08:56:20', 1, 5),
(3, '2022-01-02 08:56:20', 2, 13),
(4, '2022-01-02 08:56:20', 3, 15),
(5, '2022-01-02 08:56:20', 3, 13),
(6, '2022-01-02 08:56:20', 4, 14),
(7, '2022-01-02 08:56:20', 4, 13),
(8, '2022-01-02 08:56:20', 5, 18),
(9, '2022-01-02 08:56:20', 5, 14),
(10, '2022-01-02 08:56:20', 6, 7),
(11, '2022-01-02 08:56:20', 6, 19),
(12, '2022-01-02 08:56:20', 7, 12),
(13, '2022-01-02 08:56:20', 7, 16),
(14, '2022-01-02 08:56:20', 8, 3),
(15, '2022-01-02 08:56:20', 8, 17),
(16, '2022-01-02 08:56:20', 9, 1),
(17, '2022-01-02 08:56:20', 10, 11),
(18, '2022-01-02 08:56:20', 10, 8),
(19, '2022-01-02 08:56:20', 11, 5),
(20, '2022-01-02 08:56:20', 11, 7),
(21, '2022-01-02 08:56:20', 12, 3),
(22, '2022-01-02 08:56:20', 12, 7),
(23, '2022-01-02 08:56:20', 13, 11),
(24, '2022-01-02 08:56:20', 13, 16),
(25, '2022-01-02 08:56:20', 14, 16),
(26, '2022-01-02 08:56:20', 14, 11),
(27, '2022-01-02 08:56:20', 15, 14),
(28, '2022-01-02 08:56:20', 15, 5),
(29, '2022-01-02 08:56:20', 16, 19),
(30, '2022-01-02 08:56:20', 16, 3),
(31, '2022-01-02 08:56:20', 17, 9),
(32, '2022-01-02 08:56:20', 17, 3),
(33, '2022-01-02 08:56:20', 18, 4),
(34, '2022-01-02 08:56:20', 19, 8),
(35, '2022-01-02 08:56:20', 19, 14),
(36, '2022-01-02 08:56:20', 20, 2),
(37, '2022-01-02 08:56:20', 20, 6);

-- --------------------------------------------------------

--
-- Table structure for table `Friendship`
--

CREATE TABLE `Friendship` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `first_user_id` int(11) NOT NULL,
  `second_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Friendship`
--

INSERT INTO `Friendship` (`id`, `created_at`, `first_user_id`, `second_user_id`) VALUES
(1, '2022-01-02 08:56:20', 1, 14),
(2, '2022-01-02 08:56:20', 1, 10),
(3, '2022-01-02 08:56:20', 1, 12),
(4, '2022-01-02 08:56:20', 1, 17),
(5, '2022-01-02 08:56:20', 2, 12),
(6, '2022-01-02 08:56:20', 2, 11),
(7, '2022-01-02 08:56:20', 2, 10),
(8, '2022-01-02 08:56:20', 2, 5),
(9, '2022-01-02 08:56:20', 2, 3),
(10, '2022-01-02 08:56:20', 3, 19),
(11, '2022-01-02 08:56:20', 3, 18),
(12, '2022-01-02 08:56:20', 3, 4),
(13, '2022-01-02 08:56:20', 3, 16),
(14, '2022-01-02 08:56:20', 3, 9),
(15, '2022-01-02 08:56:20', 3, 6),
(16, '2022-01-02 08:56:20', 4, 9),
(17, '2022-01-02 08:56:20', 4, 3),
(18, '2022-01-02 08:56:20', 4, 5),
(19, '2022-01-02 08:56:20', 4, 18),
(20, '2022-01-02 08:56:20', 4, 12),
(21, '2022-01-02 08:56:20', 4, 19),
(22, '2022-01-02 08:56:20', 5, 9),
(23, '2022-01-02 08:56:20', 5, 10),
(24, '2022-01-02 08:56:20', 5, 6),
(25, '2022-01-02 08:56:20', 5, 11),
(26, '2022-01-02 08:56:20', 5, 8),
(27, '2022-01-02 08:56:20', 5, 16),
(28, '2022-01-02 08:56:20', 6, 16),
(29, '2022-01-02 08:56:20', 6, 15),
(30, '2022-01-02 08:56:20', 6, 3),
(31, '2022-01-02 08:56:20', 6, 19),
(32, '2022-01-02 08:56:20', 6, 7),
(33, '2022-01-02 08:56:20', 6, 5),
(34, '2022-01-02 08:56:20', 7, 9),
(35, '2022-01-02 08:56:20', 7, 11),
(36, '2022-01-02 08:56:20', 7, 10),
(37, '2022-01-02 08:56:20', 7, 12),
(38, '2022-01-02 08:56:20', 7, 5),
(39, '2022-01-02 08:56:20', 8, 10),
(40, '2022-01-02 08:56:20', 8, 9),
(41, '2022-01-02 08:56:20', 8, 2),
(42, '2022-01-02 08:56:20', 8, 19),
(43, '2022-01-02 08:56:20', 8, 1),
(44, '2022-01-02 08:56:20', 8, 6),
(45, '2022-01-02 08:56:20', 9, 4),
(46, '2022-01-02 08:56:20', 9, 2),
(47, '2022-01-02 08:56:20', 9, 6),
(48, '2022-01-02 08:56:20', 9, 13),
(49, '2022-01-02 08:56:20', 9, 12),
(50, '2022-01-02 08:56:20', 10, 14),
(51, '2022-01-02 08:56:20', 10, 6),
(52, '2022-01-02 08:56:20', 10, 18),
(53, '2022-01-02 08:56:20', 10, 8),
(54, '2022-01-02 08:56:20', 11, 2),
(55, '2022-01-02 08:56:20', 11, 8),
(56, '2022-01-02 08:56:20', 11, 12),
(57, '2022-01-02 08:56:20', 11, 3),
(58, '2022-01-02 08:56:20', 11, 4),
(59, '2022-01-02 08:56:20', 12, 14),
(60, '2022-01-02 08:56:20', 12, 15),
(61, '2022-01-02 08:56:20', 12, 16),
(62, '2022-01-02 08:56:20', 12, 17),
(63, '2022-01-02 08:56:20', 13, 17),
(64, '2022-01-02 08:56:20', 13, 5),
(65, '2022-01-02 08:56:20', 13, 7),
(66, '2022-01-02 08:56:20', 13, 19),
(67, '2022-01-02 08:56:20', 14, 2),
(68, '2022-01-02 08:56:20', 14, 10),
(69, '2022-01-02 08:56:20', 14, 9),
(70, '2022-01-02 08:56:20', 14, 16),
(71, '2022-01-02 08:56:20', 14, 18),
(72, '2022-01-02 08:56:20', 15, 7),
(73, '2022-01-02 08:56:20', 15, 2),
(74, '2022-01-02 08:56:20', 15, 12),
(75, '2022-01-02 08:56:20', 15, 3),
(76, '2022-01-02 08:56:20', 15, 9),
(77, '2022-01-02 08:56:20', 15, 13),
(78, '2022-01-02 08:56:20', 16, 9),
(79, '2022-01-02 08:56:20', 16, 1),
(80, '2022-01-02 08:56:20', 16, 7),
(81, '2022-01-02 08:56:20', 16, 18),
(82, '2022-01-02 08:56:20', 16, 14),
(83, '2022-01-02 08:56:20', 17, 15),
(84, '2022-01-02 08:56:20', 17, 19),
(85, '2022-01-02 08:56:20', 17, 11),
(86, '2022-01-02 08:56:20', 17, 1),
(87, '2022-01-02 08:56:20', 17, 3),
(88, '2022-01-02 08:56:20', 17, 12),
(89, '2022-01-02 08:56:20', 18, 14),
(90, '2022-01-02 08:56:20', 18, 5),
(91, '2022-01-02 08:56:20', 18, 9),
(92, '2022-01-02 08:56:20', 18, 13),
(93, '2022-01-02 08:56:20', 19, 13),
(94, '2022-01-02 08:56:20', 19, 3),
(95, '2022-01-02 08:56:20', 19, 6),
(96, '2022-01-02 08:56:20', 20, 11),
(97, '2022-01-02 08:56:20', 20, 16),
(98, '2022-01-02 08:56:20', 20, 14),
(99, '2022-01-02 08:56:20', 20, 12),
(100, '2022-01-02 08:56:20', 20, 5);

-- --------------------------------------------------------

--
-- Table structure for table `Message`
--

CREATE TABLE `Message` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `message_body` text NOT NULL,
  `author_id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Message`
--

INSERT INTO `Message` (`id`, `created_at`, `message_body`, `author_id`, `thread_id`) VALUES
(1, '2022-01-02 08:56:21', 'Ratione et tempore a sed blanditiis.', 11, 1),
(2, '2022-01-02 08:56:21', 'Rerum laudantium illum.', 18, 1),
(3, '2022-01-02 08:56:21', 'Facere blanditiis ipsam nulla autem cum delectus recusandae.', 16, 2),
(4, '2022-01-02 08:56:21', 'Voluptatem odit dolor accusamus non esse.', 1, 2),
(5, '2022-01-02 08:56:21', 'Est quasi praesentium sed.', 17, 3),
(6, '2022-01-02 08:56:21', 'Nulla aperiam aperiam ut sit.', 4, 3),
(7, '2022-01-02 08:56:21', 'Inventore rem facere dolorem id necessitatibus maxime id.', 11, 4),
(8, '2022-01-02 08:56:21', 'Sequi impedit omnis quas rerum voluptas.', 19, 4),
(9, '2022-01-02 08:56:21', 'Sint omnis et.', 6, 5),
(10, '2022-01-02 08:56:21', 'Laboriosam officia sed.', 8, 5),
(11, '2022-01-02 08:56:21', 'Voluptatem qui veritatis mollitia harum autem autem.', 16, 6),
(12, '2022-01-02 08:56:21', 'Incidunt fugiat neque inventore fugiat qui eum.', 15, 6),
(13, '2022-01-02 08:56:21', 'Quos id ipsam.', 7, 8),
(14, '2022-01-02 08:56:21', 'Aut inventore voluptas ipsum qui qui non et ut.', 6, 8),
(15, '2022-01-02 08:56:21', 'Incidunt voluptatem odit saepe.', 12, 9),
(16, '2022-01-02 08:56:21', 'Cum ea quis deleniti dolores repellendus amet illum quis quae.', 8, 9),
(17, '2022-01-02 08:56:21', 'Labore quisquam aspernatur exercitationem perferendis veniam.', 12, 10),
(18, '2022-01-02 08:56:21', 'Sint ad qui quis consequatur.', 6, 10),
(19, '2022-01-02 08:56:21', 'Iure deserunt in dolorem est et molestiae similique voluptate qui.', 4, 11),
(20, '2022-01-02 08:56:21', 'Pariatur doloribus rerum porro quibusdam et assumenda distinctio.', 10, 11),
(21, '2022-01-02 08:56:21', 'Ducimus veniam consequatur.', 17, 12),
(22, '2022-01-02 08:56:21', 'Inventore officia illum sapiente beatae nulla architecto.', 10, 12),
(23, '2022-01-02 08:56:21', 'Sint ex cumque omnis eius corporis.', 6, 13),
(24, '2022-01-02 08:56:21', 'Libero aperiam praesentium laborum laboriosam.', 3, 13),
(25, '2022-01-02 08:56:21', 'Tenetur atque quo dolor temporibus nihil doloribus aut incidunt.', 10, 14),
(26, '2022-01-02 08:56:21', 'Et quis ab nostrum nostrum sint et sequi.', 18, 14),
(27, '2022-01-02 08:56:21', 'Explicabo consequatur veritatis sit sint culpa.', 18, 16),
(28, '2022-01-02 08:56:21', 'At corporis dolor officia ea necessitatibus consequuntur accusantium.', 4, 16),
(29, '2022-01-02 08:56:21', 'Exercitationem dolore sequi eos occaecati.', 10, 17),
(30, '2022-01-02 08:56:21', 'Id non unde.', 19, 17),
(31, '2022-01-02 08:56:21', 'Et modi porro.', 6, 18),
(32, '2022-01-02 08:56:21', 'Accusantium consequuntur et quasi alias commodi sit porro voluptate hic.', 17, 18),
(33, '2022-01-02 08:56:21', 'Quis et nesciunt corporis minima blanditiis aspernatur velit hic.', 12, 19),
(34, '2022-01-02 08:56:21', 'Dicta quis et et tempora id odio.', 16, 19),
(35, '2022-01-02 08:56:21', 'Vel dolores quo nostrum delectus facilis consequatur velit.', 7, 21),
(36, '2022-01-02 08:56:21', 'Voluptas porro placeat praesentium assumenda beatae ad ad distinctio.', 14, 21),
(37, '2022-01-02 08:56:21', 'Omnis autem maxime omnis error ipsum pariatur magnam reiciendis aut.', 19, 22),
(38, '2022-01-02 08:56:21', 'Sunt dolor dolore dolorum veritatis rem.', 3, 22),
(39, '2022-01-02 08:56:21', 'Totam eligendi explicabo recusandae perspiciatis.', 11, 23),
(40, '2022-01-02 08:56:21', 'Quam aut illum dicta et.', 4, 23),
(41, '2022-01-02 08:56:21', 'In et fuga aut similique voluptatem est quis eius.', 8, 24),
(42, '2022-01-02 08:56:21', 'Unde odio sit nobis quae sunt ad recusandae perspiciatis aperiam.', 7, 24),
(43, '2022-01-02 08:56:21', 'Explicabo necessitatibus enim sit occaecati id aut voluptate quasi earum.', 3, 27),
(44, '2022-01-02 08:56:21', 'Beatae impedit voluptatem et sapiente.', 7, 27),
(45, '2022-01-02 08:56:21', 'Et sequi in molestiae.', 3, 29),
(46, '2022-01-02 08:56:21', 'Earum eaque optio velit fugiat eaque at nostrum ut voluptas.', 10, 29),
(47, '2022-01-02 08:56:21', 'Rerum adipisci corporis porro aperiam aut explicabo saepe eaque quo.', 13, 30),
(48, '2022-01-02 08:56:21', 'Maxime fugit ducimus quod aliquam dolorem sequi voluptatem velit.', 8, 30),
(49, '2022-01-02 08:56:21', 'Laudantium consequatur quae accusantium deleniti et itaque consectetur sequi reprehenderit.', 18, 31),
(50, '2022-01-02 08:56:21', 'Nisi modi dolores voluptates.', 17, 31),
(51, '2022-01-02 08:56:21', 'Rerum deleniti voluptatum qui consectetur nam.', 3, 32),
(52, '2022-01-02 08:56:21', 'Ducimus consequatur exercitationem aut nulla et voluptatem dolores.', 11, 32),
(53, '2022-01-02 08:56:21', 'Accusantium est et quam.', 15, 33),
(54, '2022-01-02 08:56:21', 'Vitae non consequatur aspernatur.', 5, 33),
(55, '2022-01-02 08:56:21', 'Hic quis facilis tempore.', 9, 34),
(56, '2022-01-02 08:56:21', 'Et modi amet exercitationem fugiat veritatis beatae beatae.', 8, 34),
(57, '2022-01-02 08:56:21', 'Possimus laboriosam iste aut.', 13, 35),
(58, '2022-01-02 08:56:21', 'Ipsum qui non ut incidunt atque autem repellat.', 19, 35),
(59, '2022-01-02 08:56:21', 'Non cum voluptas occaecati sit fugit culpa omnis.', 1, 36),
(60, '2022-01-02 08:56:21', 'Aspernatur maiores excepturi officia quod aliquam ab ea molestiae repellat.', 8, 36),
(61, '2022-01-02 08:56:21', 'Modi sit doloremque aut.', 15, 37),
(62, '2022-01-02 08:56:21', 'Ipsum expedita ipsam perspiciatis voluptates magni omnis.', 7, 37),
(63, '2022-01-02 08:56:21', 'Repellat aliquam dolores commodi sed illo minus.', 11, 38),
(64, '2022-01-02 08:56:21', 'Non repellendus ducimus neque sit vitae et.', 17, 38),
(65, '2022-01-02 08:56:21', 'Cumque vel aut debitis explicabo consequuntur eum.', 19, 39),
(66, '2022-01-02 08:56:21', 'Doloremque enim odit hic eos nam facere.', 7, 39);

-- --------------------------------------------------------

--
-- Table structure for table `MessageThread`
--

CREATE TABLE `MessageThread` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `MessageThread`
--

INSERT INTO `MessageThread` (`id`, `created_at`) VALUES
(1, '2022-01-02 08:56:20'),
(2, '2022-01-02 08:56:20'),
(3, '2022-01-02 08:56:20'),
(4, '2022-01-02 08:56:20'),
(5, '2022-01-02 08:56:20'),
(6, '2022-01-02 08:56:20'),
(7, '2022-01-02 08:56:20'),
(8, '2022-01-02 08:56:20'),
(9, '2022-01-02 08:56:20'),
(10, '2022-01-02 08:56:20'),
(11, '2022-01-02 08:56:20'),
(12, '2022-01-02 08:56:20'),
(13, '2022-01-02 08:56:20'),
(14, '2022-01-02 08:56:20'),
(15, '2022-01-02 08:56:20'),
(16, '2022-01-02 08:56:20'),
(17, '2022-01-02 08:56:20'),
(18, '2022-01-02 08:56:20'),
(19, '2022-01-02 08:56:20'),
(20, '2022-01-02 08:56:20'),
(21, '2022-01-02 08:56:20'),
(22, '2022-01-02 08:56:20'),
(23, '2022-01-02 08:56:20'),
(24, '2022-01-02 08:56:20'),
(25, '2022-01-02 08:56:20'),
(26, '2022-01-02 08:56:20'),
(27, '2022-01-02 08:56:20'),
(28, '2022-01-02 08:56:20'),
(29, '2022-01-02 08:56:20'),
(30, '2022-01-02 08:56:20'),
(31, '2022-01-02 08:56:20'),
(32, '2022-01-02 08:56:20'),
(33, '2022-01-02 08:56:20'),
(34, '2022-01-02 08:56:20'),
(35, '2022-01-02 08:56:20'),
(36, '2022-01-02 08:56:20'),
(37, '2022-01-02 08:56:20'),
(38, '2022-01-02 08:56:20'),
(39, '2022-01-02 08:56:20'),
(40, '2022-01-02 08:56:20');

-- --------------------------------------------------------

--
-- Table structure for table `MessageThreadOnUser`
--

CREATE TABLE `MessageThreadOnUser` (
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `MessageThreadOnUser`
--

INSERT INTO `MessageThreadOnUser` (`created_at`, `user_id`, `thread_id`) VALUES
('2022-01-02 08:56:20', 1, 2),
('2022-01-02 08:56:20', 1, 36),
('2022-01-02 08:56:20', 3, 13),
('2022-01-02 08:56:20', 3, 22),
('2022-01-02 08:56:20', 3, 27),
('2022-01-02 08:56:20', 3, 29),
('2022-01-02 08:56:20', 3, 32),
('2022-01-02 08:56:20', 4, 3),
('2022-01-02 08:56:20', 4, 11),
('2022-01-02 08:56:20', 4, 16),
('2022-01-02 08:56:20', 4, 23),
('2022-01-02 08:56:20', 5, 33),
('2022-01-02 08:56:20', 6, 5),
('2022-01-02 08:56:20', 6, 8),
('2022-01-02 08:56:20', 6, 10),
('2022-01-02 08:56:20', 6, 13),
('2022-01-02 08:56:20', 6, 18),
('2022-01-02 08:56:20', 7, 8),
('2022-01-02 08:56:20', 7, 21),
('2022-01-02 08:56:20', 7, 24),
('2022-01-02 08:56:20', 7, 27),
('2022-01-02 08:56:20', 7, 37),
('2022-01-02 08:56:20', 7, 39),
('2022-01-02 08:56:20', 8, 5),
('2022-01-02 08:56:20', 8, 9),
('2022-01-02 08:56:20', 8, 24),
('2022-01-02 08:56:20', 8, 30),
('2022-01-02 08:56:20', 8, 34),
('2022-01-02 08:56:20', 8, 36),
('2022-01-02 08:56:20', 9, 34),
('2022-01-02 08:56:20', 10, 11),
('2022-01-02 08:56:20', 10, 12),
('2022-01-02 08:56:20', 10, 14),
('2022-01-02 08:56:20', 10, 17),
('2022-01-02 08:56:20', 10, 29),
('2022-01-02 08:56:20', 11, 1),
('2022-01-02 08:56:20', 11, 4),
('2022-01-02 08:56:20', 11, 23),
('2022-01-02 08:56:20', 11, 32),
('2022-01-02 08:56:20', 11, 38),
('2022-01-02 08:56:20', 12, 9),
('2022-01-02 08:56:20', 12, 10),
('2022-01-02 08:56:20', 12, 19),
('2022-01-02 08:56:20', 13, 30),
('2022-01-02 08:56:20', 13, 35),
('2022-01-02 08:56:20', 14, 21),
('2022-01-02 08:56:20', 15, 6),
('2022-01-02 08:56:20', 15, 33),
('2022-01-02 08:56:20', 15, 37),
('2022-01-02 08:56:20', 16, 2),
('2022-01-02 08:56:20', 16, 6),
('2022-01-02 08:56:20', 16, 19),
('2022-01-02 08:56:20', 17, 3),
('2022-01-02 08:56:20', 17, 12),
('2022-01-02 08:56:20', 17, 18),
('2022-01-02 08:56:20', 17, 31),
('2022-01-02 08:56:20', 17, 38),
('2022-01-02 08:56:20', 18, 1),
('2022-01-02 08:56:20', 18, 14),
('2022-01-02 08:56:20', 18, 16),
('2022-01-02 08:56:20', 18, 31),
('2022-01-02 08:56:20', 19, 4),
('2022-01-02 08:56:20', 19, 17),
('2022-01-02 08:56:20', 19, 22),
('2022-01-02 08:56:20', 19, 35),
('2022-01-02 08:56:20', 19, 39);

-- --------------------------------------------------------

--
-- Table structure for table `Post`
--

CREATE TABLE `Post` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `post_body` text NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Post`
--

INSERT INTO `Post` (`id`, `created_at`, `post_body`, `author_id`) VALUES
(1, '2022-01-02 08:56:20', 'Nihil cum et quibusdam.', 1),
(2, '2022-01-02 08:56:20', 'Quae dolor fugiat magnam impedit amet totam nobis eos aut.', 1),
(3, '2022-01-02 08:56:20', 'Tenetur est pariatur.', 1),
(4, '2022-01-02 08:56:20', 'Est et hic natus autem.', 2),
(5, '2022-01-02 08:56:20', 'Perferendis iste minima distinctio eos aut.', 2),
(6, '2022-01-02 08:56:20', 'Asperiores dignissimos in amet illum expedita odio tenetur aperiam.', 2),
(7, '2022-01-02 08:56:20', 'Incidunt sit ad vitae aliquam.', 3),
(8, '2022-01-02 08:56:20', 'Voluptatem sed quisquam.', 3),
(9, '2022-01-02 08:56:20', 'Quo dolores aut aut.', 3),
(10, '2022-01-02 08:56:20', 'Suscipit soluta autem.', 4),
(11, '2022-01-02 08:56:20', 'Quo quidem fugit.', 4),
(12, '2022-01-02 08:56:20', 'Saepe dicta ea ex dicta.', 4),
(13, '2022-01-02 08:56:20', 'Dolores et error voluptatem aspernatur et voluptatem est omnis.', 5),
(14, '2022-01-02 08:56:20', 'Aut est quia et optio voluptatem autem.', 5),
(15, '2022-01-02 08:56:20', 'Impedit et esse commodi fugit id molestiae.', 5),
(16, '2022-01-02 08:56:20', 'Ut saepe deserunt saepe voluptatem.', 6),
(17, '2022-01-02 08:56:20', 'Et et consequuntur sit tempore quia iste itaque.', 6),
(18, '2022-01-02 08:56:20', 'Eos dolorem totam cumque.', 6),
(19, '2022-01-02 08:56:20', 'Qui ut voluptas unde error enim autem quasi.', 7),
(20, '2022-01-02 08:56:20', 'Esse ipsum reiciendis possimus natus et mollitia.', 7),
(21, '2022-01-02 08:56:20', 'Incidunt sapiente odit saepe.', 7),
(22, '2022-01-02 08:56:20', 'Rerum in nesciunt ratione.', 8),
(23, '2022-01-02 08:56:20', 'Inventore doloribus voluptatum qui et.', 8),
(24, '2022-01-02 08:56:20', 'Sint culpa aut in asperiores.', 8),
(25, '2022-01-02 08:56:20', 'Ut quas et.', 9),
(26, '2022-01-02 08:56:20', 'Laborum aut quidem alias nam repellat sapiente facere.', 9),
(27, '2022-01-02 08:56:20', 'Consequatur optio at velit quis autem cumque consectetur.', 9),
(28, '2022-01-02 08:56:20', 'Molestias officia id quia.', 10),
(29, '2022-01-02 08:56:20', 'Architecto itaque qui.', 10),
(30, '2022-01-02 08:56:20', 'Voluptate modi aut nisi tempora omnis voluptatum velit itaque.', 10),
(31, '2022-01-02 08:56:20', 'Earum aspernatur eius dolores.', 11),
(32, '2022-01-02 08:56:20', 'Quae at aut ea et nihil repellendus rerum.', 11),
(33, '2022-01-02 08:56:20', 'Magni atque voluptates.', 11),
(34, '2022-01-02 08:56:20', 'Ad laboriosam praesentium hic vel rerum.', 12),
(35, '2022-01-02 08:56:20', 'Voluptas nobis eligendi officia dolorum placeat atque.', 12),
(36, '2022-01-02 08:56:20', 'Minus dolore aliquam deserunt.', 12),
(37, '2022-01-02 08:56:20', 'Laboriosam nulla sed placeat.', 13),
(38, '2022-01-02 08:56:20', 'Quia illo dolorem corrupti possimus vero.', 13),
(39, '2022-01-02 08:56:20', 'Enim nulla voluptatibus adipisci iure dignissimos at voluptatem.', 13),
(40, '2022-01-02 08:56:20', 'Doloremque culpa architecto odio id animi nesciunt est sed.', 14),
(41, '2022-01-02 08:56:20', 'Omnis nisi incidunt eveniet amet aut nulla quos aliquam.', 14),
(42, '2022-01-02 08:56:20', 'Et voluptas mollitia numquam qui voluptatum ab natus aut.', 14),
(43, '2022-01-02 08:56:20', 'Sunt labore sapiente vero aut ut debitis totam.', 15),
(44, '2022-01-02 08:56:20', 'Consectetur laborum sunt.', 15),
(45, '2022-01-02 08:56:20', 'Provident rerum rerum totam.', 15),
(46, '2022-01-02 08:56:20', 'Architecto et deserunt dolorum vero.', 16),
(47, '2022-01-02 08:56:20', 'Omnis ut qui.', 16),
(48, '2022-01-02 08:56:20', 'Necessitatibus aut nemo non distinctio et nesciunt.', 16),
(49, '2022-01-02 08:56:20', 'Sit ea sint repellendus quo voluptatibus.', 17),
(50, '2022-01-02 08:56:20', 'Autem quos esse commodi quis sed veniam aut in illo.', 17),
(51, '2022-01-02 08:56:20', 'Velit qui harum rem exercitationem labore eligendi veniam.', 17),
(52, '2022-01-02 08:56:20', 'Ex eligendi velit earum omnis.', 18),
(53, '2022-01-02 08:56:20', 'Quos facilis soluta fuga voluptas.', 18),
(54, '2022-01-02 08:56:20', 'Consequuntur ut molestiae eos ipsam.', 18),
(55, '2022-01-02 08:56:20', 'Aspernatur nesciunt consequatur asperiores.', 19),
(56, '2022-01-02 08:56:20', 'Laboriosam non ipsam autem assumenda pariatur saepe ipsum.', 19),
(57, '2022-01-02 08:56:20', 'Et aperiam doloribus corporis labore iure in.', 19),
(58, '2022-01-02 08:56:20', 'Ipsa et error molestiae corrupti laborum.', 20),
(59, '2022-01-02 08:56:20', 'Soluta vitae exercitationem deleniti iste quaerat possimus aut nisi.', 20),
(60, '2022-01-02 08:56:20', 'Aliquid laborum sit sint occaecati impedit dolor.', 20);

-- --------------------------------------------------------

--
-- Table structure for table `PostComment`
--

CREATE TABLE `PostComment` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `comment_body` text NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `PostComment`
--

INSERT INTO `PostComment` (`id`, `created_at`, `comment_body`, `post_id`, `user_id`) VALUES
(1, '2022-01-02 08:56:20', 'Nisi voluptatem rerum.', 1, 18),
(2, '2022-01-02 08:56:20', 'Quam laboriosam dolor est maxime minima dolores aut sint perspiciatis.', 1, 10),
(3, '2022-01-02 08:56:20', 'Quia itaque necessitatibus aliquam id consequatur.', 2, 8),
(4, '2022-01-02 08:56:20', 'Dolor aut harum doloremque odit.', 2, 10),
(5, '2022-01-02 08:56:20', 'Saepe ut mollitia omnis beatae omnis quis dignissimos dolor.', 3, 1),
(6, '2022-01-02 08:56:20', 'Id labore ut quis adipisci qui omnis ut.', 3, 11),
(7, '2022-01-02 08:56:20', 'Quam omnis est alias et.', 4, 14),
(8, '2022-01-02 08:56:20', 'Eos sit incidunt amet.', 4, 11),
(9, '2022-01-02 08:56:20', 'Et eius facere laboriosam maiores impedit aut.', 5, 8),
(10, '2022-01-02 08:56:20', 'Neque pariatur eos dolor.', 5, 1),
(11, '2022-01-02 08:56:20', 'Perferendis similique dolore et ut laboriosam iure a.', 6, 17),
(12, '2022-01-02 08:56:20', 'Et et vel rem est consequatur rem.', 6, 8),
(13, '2022-01-02 08:56:20', 'Sapiente rerum nisi at nulla impedit neque.', 7, 5),
(14, '2022-01-02 08:56:20', 'Et recusandae voluptatem molestiae.', 7, 3),
(15, '2022-01-02 08:56:20', 'Reprehenderit eius dolor accusantium unde.', 8, 9),
(16, '2022-01-02 08:56:20', 'Id sunt aut.', 8, 5),
(17, '2022-01-02 08:56:20', 'Quia dolorum corrupti.', 9, 16),
(18, '2022-01-02 08:56:20', 'Impedit eaque est numquam itaque enim voluptas et ut reprehenderit.', 9, 15),
(19, '2022-01-02 08:56:20', 'Voluptas nemo consequatur suscipit ut voluptas enim.', 10, 13),
(20, '2022-01-02 08:56:20', 'Consequatur maiores reprehenderit vel est velit dolor.', 10, 2),
(21, '2022-01-02 08:56:20', 'Fugiat perferendis consequatur adipisci voluptas tempore totam voluptatem.', 11, 2),
(22, '2022-01-02 08:56:20', 'Ipsam omnis quis minus numquam ex est voluptatibus.', 11, 12),
(23, '2022-01-02 08:56:20', 'Dolorem est et quod recusandae est pariatur laboriosam.', 12, 13),
(24, '2022-01-02 08:56:20', 'Mollitia tenetur consectetur quibusdam fuga.', 12, 15),
(25, '2022-01-02 08:56:20', 'Beatae vel reiciendis suscipit.', 13, 15),
(26, '2022-01-02 08:56:20', 'Veritatis reiciendis ratione.', 13, 12),
(27, '2022-01-02 08:56:20', 'Qui in saepe eos placeat excepturi nulla eum sed.', 14, 17),
(28, '2022-01-02 08:56:20', 'Excepturi accusamus numquam ea iste.', 14, 14),
(29, '2022-01-02 08:56:20', 'Omnis similique deleniti aut voluptatem explicabo porro molestiae.', 15, 9),
(30, '2022-01-02 08:56:20', 'Neque doloremque nostrum et qui dolores autem eius numquam.', 15, 4),
(31, '2022-01-02 08:56:20', 'Nemo deserunt nesciunt.', 16, 5),
(32, '2022-01-02 08:56:20', 'Amet praesentium id et sit dolores nostrum et.', 16, 8),
(33, '2022-01-02 08:56:20', 'Recusandae facilis autem.', 17, 11),
(34, '2022-01-02 08:56:20', 'Quia iusto eaque dolor aliquam est et.', 17, 4),
(35, '2022-01-02 08:56:20', 'Ea vitae quod nobis perspiciatis eius sed voluptatem suscipit repellendus.', 18, 8),
(36, '2022-01-02 08:56:20', 'Quisquam cum ipsa possimus dicta vero.', 18, 4),
(37, '2022-01-02 08:56:20', 'Mollitia eveniet dolorem soluta nisi maiores alias et quidem quibusdam.', 19, 19),
(38, '2022-01-02 08:56:20', 'In mollitia reprehenderit commodi.', 19, 7),
(39, '2022-01-02 08:56:20', 'Quas voluptas et molestiae ullam non harum culpa nostrum.', 20, 8),
(40, '2022-01-02 08:56:20', 'Eaque ipsum aspernatur.', 20, 14),
(41, '2022-01-02 08:56:20', 'Delectus qui ad autem ea et porro iure est.', 21, 8),
(42, '2022-01-02 08:56:20', 'Ut minus expedita optio consequatur temporibus est totam.', 21, 18),
(43, '2022-01-02 08:56:20', 'Vel voluptatibus delectus iusto minus incidunt aut sapiente ratione delectus.', 22, 2),
(44, '2022-01-02 08:56:20', 'Consequatur eligendi sequi ut ut porro deserunt in aut.', 22, 14),
(45, '2022-01-02 08:56:20', 'Vel et dolor molestias est facere porro reprehenderit est repellendus.', 23, 11),
(46, '2022-01-02 08:56:20', 'Consequuntur omnis numquam et voluptate minima at blanditiis.', 23, 4),
(47, '2022-01-02 08:56:20', 'Sit voluptas quos facilis ut non.', 24, 15),
(48, '2022-01-02 08:56:20', 'Omnis debitis quae optio similique vel eligendi.', 24, 18),
(49, '2022-01-02 08:56:20', 'Rerum voluptas in.', 25, 12),
(50, '2022-01-02 08:56:20', 'Ipsa odio quis.', 25, 16),
(51, '2022-01-02 08:56:20', 'Et sit quia sed eos.', 26, 19),
(52, '2022-01-02 08:56:20', 'Suscipit adipisci veniam ratione ea aliquid recusandae et.', 26, 3),
(53, '2022-01-02 08:56:20', 'Sapiente nihil placeat optio veritatis quia repudiandae aut officiis nihil.', 27, 13),
(54, '2022-01-02 08:56:20', 'Tempore non eum non voluptatem doloribus odio odit.', 27, 8),
(55, '2022-01-02 08:56:20', 'Sint molestiae minima possimus ipsa voluptatibus occaecati quia.', 28, 7),
(56, '2022-01-02 08:56:20', 'Enim est omnis modi id natus architecto rerum quos id.', 28, 2),
(57, '2022-01-02 08:56:20', 'Rerum voluptatem rerum repudiandae saepe et.', 29, 6),
(58, '2022-01-02 08:56:20', 'Ullam explicabo ut sunt.', 29, 4),
(59, '2022-01-02 08:56:20', 'Quibusdam ut quasi aperiam laborum totam id harum impedit.', 30, 4),
(60, '2022-01-02 08:56:20', 'Voluptas animi magnam eaque voluptas alias esse.', 30, 1),
(61, '2022-01-02 08:56:20', 'Ipsum minus perferendis similique eos repellat et.', 31, 7),
(62, '2022-01-02 08:56:20', 'Eos labore aut unde unde.', 31, 11),
(63, '2022-01-02 08:56:20', 'Voluptatem nihil quia voluptatibus.', 32, 6),
(64, '2022-01-02 08:56:20', 'Et velit et pariatur aut quis laborum.', 32, 4),
(65, '2022-01-02 08:56:20', 'Accusamus laudantium aut fugit accusantium qui occaecati quis non debitis.', 33, 13),
(66, '2022-01-02 08:56:20', 'Accusantium debitis incidunt non alias accusamus.', 33, 14),
(67, '2022-01-02 08:56:20', 'Nobis at aut at.', 34, 10),
(68, '2022-01-02 08:56:20', 'Maiores libero quos maiores laboriosam molestias dolores animi nisi quia.', 34, 16),
(69, '2022-01-02 08:56:20', 'Consequatur consequuntur reprehenderit.', 35, 17),
(70, '2022-01-02 08:56:20', 'Qui et reprehenderit similique.', 35, 16),
(71, '2022-01-02 08:56:20', 'Fugiat et nihil quod sapiente sed.', 36, 4),
(72, '2022-01-02 08:56:20', 'Et et omnis et aperiam animi nihil dolore.', 36, 10),
(73, '2022-01-02 08:56:20', 'Ut consequatur sed rem.', 37, 8),
(74, '2022-01-02 08:56:20', 'Ut aut praesentium mollitia ut beatae.', 37, 12),
(75, '2022-01-02 08:56:20', 'Quos et id accusamus rerum molestiae sit.', 38, 15),
(76, '2022-01-02 08:56:20', 'Vero culpa officia sit molestiae ut quod.', 38, 2),
(77, '2022-01-02 08:56:20', 'Et sequi quas.', 39, 16),
(78, '2022-01-02 08:56:20', 'Ullam delectus vero.', 39, 9),
(79, '2022-01-02 08:56:20', 'Sint quos aut quos velit harum sunt consequuntur aliquam.', 40, 3),
(80, '2022-01-02 08:56:20', 'Voluptatem non soluta ut sunt et aut accusamus hic ut.', 40, 12),
(81, '2022-01-02 08:56:20', 'Provident iure ut quo voluptatem.', 41, 1),
(82, '2022-01-02 08:56:20', 'Quia repellendus quisquam dolorem libero nisi.', 41, 12),
(83, '2022-01-02 08:56:20', 'Quae dolor mollitia dolorem sint nisi sit sunt consequuntur.', 42, 12),
(84, '2022-01-02 08:56:20', 'Quidem ratione sunt eveniet reiciendis facere.', 42, 9),
(85, '2022-01-02 08:56:20', 'Necessitatibus placeat enim laudantium fugiat eveniet pariatur.', 43, 10),
(86, '2022-01-02 08:56:20', 'Sunt recusandae eius sit hic sed.', 43, 14),
(87, '2022-01-02 08:56:20', 'Qui est consequatur occaecati illo.', 44, 15),
(88, '2022-01-02 08:56:20', 'Hic velit voluptatem.', 44, 6),
(89, '2022-01-02 08:56:20', 'Velit qui eaque amet praesentium modi ut.', 45, 14),
(90, '2022-01-02 08:56:20', 'Aut odio vero.', 45, 12),
(91, '2022-01-02 08:56:20', 'Ut magnam at et qui numquam.', 46, 18),
(92, '2022-01-02 08:56:20', 'Ipsam est doloribus.', 46, 15),
(93, '2022-01-02 08:56:20', 'Sint facere illo.', 47, 17),
(94, '2022-01-02 08:56:20', 'Optio a maxime voluptatem et voluptatibus sequi vel rerum.', 47, 10),
(95, '2022-01-02 08:56:20', 'Expedita explicabo aliquid ex quasi quia amet.', 48, 18),
(96, '2022-01-02 08:56:20', 'Cum ut vel dolores delectus et reprehenderit perspiciatis et architecto.', 48, 11),
(97, '2022-01-02 08:56:20', 'Facilis deleniti voluptate blanditiis magnam consequuntur.', 49, 11),
(98, '2022-01-02 08:56:20', 'Est sunt quo nulla.', 49, 15),
(99, '2022-01-02 08:56:20', 'Ut ratione est blanditiis cum doloremque tenetur esse et eos.', 50, 1),
(100, '2022-01-02 08:56:20', 'Sit consequatur voluptates recusandae earum.', 50, 15),
(101, '2022-01-02 08:56:20', 'Aut ducimus sit qui harum eum ut praesentium sint quis.', 51, 3),
(102, '2022-01-02 08:56:20', 'Autem fugiat error libero assumenda aut asperiores.', 51, 8),
(103, '2022-01-02 08:56:20', 'Illum animi est distinctio enim eum natus quasi.', 52, 1),
(104, '2022-01-02 08:56:20', 'Magnam et id dolorem molestiae facere.', 52, 3),
(105, '2022-01-02 08:56:20', 'Dolor dolore voluptatibus.', 53, 12),
(106, '2022-01-02 08:56:20', 'Perferendis itaque asperiores laborum voluptate aperiam quo quis.', 53, 12),
(107, '2022-01-02 08:56:20', 'Laudantium enim ut quia tempore commodi repellendus nesciunt.', 54, 12),
(108, '2022-01-02 08:56:20', 'Dolor hic odit error quo quia deleniti eius quos aspernatur.', 54, 13),
(109, '2022-01-02 08:56:20', 'Aut unde autem et voluptatem.', 55, 15),
(110, '2022-01-02 08:56:20', 'Sunt ut et voluptatem quisquam dolorem ratione.', 55, 7),
(111, '2022-01-02 08:56:20', 'Dolor aut id eveniet.', 56, 15),
(112, '2022-01-02 08:56:20', 'Vero eaque commodi accusamus eius ea mollitia nulla non.', 56, 8),
(113, '2022-01-02 08:56:20', 'Est minima voluptatum et.', 57, 12),
(114, '2022-01-02 08:56:20', 'Maxime magnam impedit eos et rerum excepturi aut illum.', 57, 14),
(115, '2022-01-02 08:56:20', 'Vel rem quam non excepturi.', 58, 6),
(116, '2022-01-02 08:56:20', 'Rem accusantium odio laborum ea.', 58, 5),
(117, '2022-01-02 08:56:20', 'Et voluptatem porro.', 59, 13),
(118, '2022-01-02 08:56:20', 'Aut sed totam nostrum.', 59, 15),
(119, '2022-01-02 08:56:20', 'Delectus autem fugit.', 60, 9),
(120, '2022-01-02 08:56:20', 'Minus non ipsa dolorem.', 60, 3);

-- --------------------------------------------------------

--
-- Table structure for table `PostLike`
--

CREATE TABLE `PostLike` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `PostLike`
--

INSERT INTO `PostLike` (`id`, `created_at`, `post_id`, `user_id`) VALUES
(1, '2022-01-02 08:56:20', 32, 1),
(2, '2022-01-02 08:56:20', 33, 1),
(3, '2022-01-02 08:56:20', 57, 1),
(4, '2022-01-02 08:56:20', 6, 1),
(5, '2022-01-02 08:56:20', 54, 1),
(6, '2022-01-02 08:56:20', 25, 1),
(7, '2022-01-02 08:56:20', 20, 2),
(8, '2022-01-02 08:56:20', 43, 2),
(9, '2022-01-02 08:56:20', 2, 2),
(10, '2022-01-02 08:56:20', 35, 2),
(11, '2022-01-02 08:56:20', 45, 2),
(12, '2022-01-02 08:56:20', 27, 2),
(13, '2022-01-02 08:56:20', 28, 3),
(14, '2022-01-02 08:56:20', 45, 3),
(15, '2022-01-02 08:56:20', 7, 3),
(16, '2022-01-02 08:56:20', 32, 3),
(17, '2022-01-02 08:56:20', 41, 3),
(18, '2022-01-02 08:56:20', 37, 3),
(19, '2022-01-02 08:56:20', 39, 4),
(20, '2022-01-02 08:56:20', 45, 4),
(21, '2022-01-02 08:56:20', 38, 4),
(22, '2022-01-02 08:56:20', 21, 4),
(23, '2022-01-02 08:56:20', 31, 4),
(24, '2022-01-02 08:56:20', 48, 4),
(25, '2022-01-02 08:56:20', 58, 5),
(26, '2022-01-02 08:56:20', 47, 5),
(27, '2022-01-02 08:56:20', 53, 5),
(28, '2022-01-02 08:56:20', 30, 5),
(29, '2022-01-02 08:56:20', 59, 5),
(30, '2022-01-02 08:56:20', 41, 5),
(31, '2022-01-02 08:56:20', 4, 6),
(32, '2022-01-02 08:56:20', 47, 6),
(33, '2022-01-02 08:56:20', 38, 6),
(34, '2022-01-02 08:56:20', 9, 6),
(35, '2022-01-02 08:56:20', 58, 6),
(36, '2022-01-02 08:56:20', 40, 7),
(37, '2022-01-02 08:56:20', 29, 7),
(38, '2022-01-02 08:56:20', 17, 7),
(39, '2022-01-02 08:56:20', 16, 7),
(40, '2022-01-02 08:56:20', 33, 7),
(41, '2022-01-02 08:56:20', 15, 8),
(42, '2022-01-02 08:56:20', 43, 8),
(43, '2022-01-02 08:56:20', 36, 8),
(44, '2022-01-02 08:56:20', 59, 8),
(45, '2022-01-02 08:56:20', 51, 8),
(46, '2022-01-02 08:56:20', 18, 8),
(47, '2022-01-02 08:56:20', 6, 9),
(48, '2022-01-02 08:56:20', 4, 9),
(49, '2022-01-02 08:56:20', 7, 9),
(50, '2022-01-02 08:56:20', 45, 9),
(51, '2022-01-02 08:56:20', 12, 9),
(52, '2022-01-02 08:56:20', 46, 9),
(53, '2022-01-02 08:56:20', 41, 10),
(54, '2022-01-02 08:56:20', 31, 10),
(55, '2022-01-02 08:56:20', 47, 10),
(56, '2022-01-02 08:56:20', 26, 10),
(57, '2022-01-02 08:56:20', 58, 10),
(58, '2022-01-02 08:56:20', 40, 10),
(59, '2022-01-02 08:56:20', 36, 11),
(60, '2022-01-02 08:56:20', 51, 11),
(61, '2022-01-02 08:56:20', 46, 11),
(62, '2022-01-02 08:56:20', 18, 11),
(63, '2022-01-02 08:56:20', 1, 11),
(64, '2022-01-02 08:56:20', 31, 11),
(65, '2022-01-02 08:56:20', 57, 12),
(66, '2022-01-02 08:56:20', 10, 12),
(67, '2022-01-02 08:56:20', 8, 12),
(68, '2022-01-02 08:56:20', 32, 12),
(69, '2022-01-02 08:56:20', 50, 12),
(70, '2022-01-02 08:56:20', 18, 12),
(71, '2022-01-02 08:56:20', 35, 13),
(72, '2022-01-02 08:56:20', 34, 13),
(73, '2022-01-02 08:56:20', 52, 13),
(74, '2022-01-02 08:56:20', 46, 13),
(75, '2022-01-02 08:56:20', 15, 13),
(76, '2022-01-02 08:56:20', 34, 14),
(77, '2022-01-02 08:56:20', 7, 14),
(78, '2022-01-02 08:56:20', 52, 14),
(79, '2022-01-02 08:56:20', 2, 14),
(80, '2022-01-02 08:56:20', 46, 14),
(81, '2022-01-02 08:56:20', 24, 14),
(82, '2022-01-02 08:56:20', 48, 15),
(83, '2022-01-02 08:56:20', 33, 15),
(84, '2022-01-02 08:56:20', 23, 15),
(85, '2022-01-02 08:56:20', 24, 15),
(86, '2022-01-02 08:56:20', 17, 15),
(87, '2022-01-02 08:56:20', 55, 15),
(88, '2022-01-02 08:56:20', 45, 16),
(89, '2022-01-02 08:56:20', 24, 16),
(90, '2022-01-02 08:56:20', 27, 16),
(91, '2022-01-02 08:56:20', 9, 16),
(92, '2022-01-02 08:56:20', 41, 16),
(93, '2022-01-02 08:56:20', 32, 17),
(94, '2022-01-02 08:56:20', 53, 17),
(95, '2022-01-02 08:56:20', 56, 17),
(96, '2022-01-02 08:56:20', 4, 17),
(97, '2022-01-02 08:56:20', 21, 17),
(98, '2022-01-02 08:56:20', 29, 17),
(99, '2022-01-02 08:56:20', 15, 18),
(100, '2022-01-02 08:56:20', 14, 18),
(101, '2022-01-02 08:56:20', 5, 18),
(102, '2022-01-02 08:56:20', 45, 18),
(103, '2022-01-02 08:56:20', 57, 18),
(104, '2022-01-02 08:56:20', 29, 19),
(105, '2022-01-02 08:56:20', 56, 19),
(106, '2022-01-02 08:56:20', 8, 19),
(107, '2022-01-02 08:56:20', 2, 19),
(108, '2022-01-02 08:56:20', 41, 19),
(109, '2022-01-02 08:56:20', 55, 19),
(110, '2022-01-02 08:56:20', 33, 20),
(111, '2022-01-02 08:56:20', 53, 20),
(112, '2022-01-02 08:56:20', 51, 20),
(113, '2022-01-02 08:56:20', 28, 20),
(114, '2022-01-02 08:56:20', 9, 20),
(115, '2022-01-02 08:56:20', 47, 20);

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `email` text NOT NULL,
  `username` text NOT NULL,
  `password_hash` text NOT NULL,
  `bio` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`id`, `created_at`, `email`, `username`, `password_hash`, `bio`) VALUES
(1, '2022-01-02 08:56:19', 'Hilario.Johnston44@gmail.com', 'Bonita.Kiehn', 'A1fsfXHiKk94dKo', 'Non odio impedit quibusdam nemo pariatur. Est assumenda debitis enim amet illo rerum blanditiis omnis.'),
(2, '2022-01-02 08:56:19', 'Sabina43@yahoo.com', 'Julianne.Homenick', 'd2GUwssTrOjOgJH', 'Architecto in non expedita possimus quasi eos similique. Error vero est quae quae repudiandae consequuntur. Accusantium rem commodi neque iusto rerum ut temporibus ut et. Architecto qui recusandae ea magni. Quibusdam animi aut voluptatem sunt sit qui et excepturi minus. Dolore velit facere sequi non corporis nam repellat quisquam suscipit.'),
(3, '2022-01-02 08:56:19', 'Wilford.Crona76@hotmail.com', 'Reagan92', 'sJaX1BZ0NaNGXk6', 'Voluptatem et et maiores similique dolore eos et inventore. Eum deserunt consequatur aut. Natus laudantium doloribus inventore. Rem tenetur deleniti ex maiores nisi nostrum.'),
(4, '2022-01-02 08:56:19', 'Dean65@hotmail.com', 'Ryleigh68', '2c8Kz0JirXd0B2y', 'Aut neque dolore aperiam possimus soluta debitis id. Praesentium ipsa eos. Atque culpa consequatur eaque molestias sapiente asperiores rem. Pariatur officia ducimus dolor ut. Sed alias beatae dignissimos id ipsum ut non explicabo. Iusto autem eum eius necessitatibus consequatur nobis.'),
(5, '2022-01-02 08:56:19', 'Fritz.Torphy63@gmail.com', 'Alta_Mills', 'FrjnhmGRdbHUna3', 'Quibusdam fugiat voluptatem est animi quam. Animi et enim. Odit incidunt voluptates incidunt cupiditate placeat provident velit incidunt molestiae. Corrupti dolore quasi enim et ullam nisi.'),
(6, '2022-01-02 08:56:19', 'Leta_Kiehn74@hotmail.com', 'Devante_Yundt93', 'Ex4KA8HvrnaeOrk', 'Repudiandae sint nobis voluptas accusantium. Quam eos enim est et ab inventore perspiciatis. Hic aut nulla ipsa nulla qui id. Debitis qui in illo rerum provident. Est dolore ipsa ullam dolorem.'),
(7, '2022-01-02 08:56:19', 'Ulises_Lang47@hotmail.com', 'Tressie_Murazik', '4uxOhBH_jiXdsdJ', 'Provident vel veniam non. Rerum et aut quos velit perferendis. Et veritatis et tempora qui error.'),
(8, '2022-01-02 08:56:19', 'Rosalinda.Kunde13@gmail.com', 'Danielle_Yost', '3ZzdhH9Dm9P3qtT', 'Qui et repudiandae consequatur omnis iusto. Enim est sunt hic culpa sint. Perferendis quibusdam rem qui illum nihil laborum beatae.'),
(9, '2022-01-02 08:56:19', 'Roxanne.Lowe65@hotmail.com', 'Raymond.Jaskolski82', '_gJhEYJ56BYvmUs', 'Quia et voluptatem adipisci inventore. Dicta ipsa ipsam eveniet. Libero modi quia eum veniam ea.'),
(10, '2022-01-02 08:56:19', 'Deven_Robel41@gmail.com', 'Unique.Barton86', 'uoQ59gqpcZyiQQW', 'Repellat consequatur iste molestiae. Dignissimos rem illum at dignissimos perferendis doloremque doloremque voluptas. Eum quis fuga ratione optio. Aliquam aut laboriosam consequatur facilis provident atque culpa pariatur est. Quidem aliquam sed. Animi veritatis aspernatur autem et.'),
(11, '2022-01-02 08:56:19', 'Foster58@gmail.com', 'Lionel.Reynolds10', 'MLVvxwwdWQ3xREx', 'Corporis et doloremque ad et omnis minima ducimus ea perspiciatis. Veritatis quis et maxime aut aperiam. Est in quaerat et dolor. Enim ducimus optio esse qui beatae. Soluta sit id et aperiam expedita veniam. Molestiae perspiciatis recusandae earum eum accusamus vel voluptas.'),
(12, '2022-01-02 08:56:19', 'Imelda18@hotmail.com', 'Clay_Lowe', 'UZIZ1gWruvT7Slt', 'Libero et assumenda. Explicabo inventore non. Eum voluptatum nam deserunt alias et deleniti repudiandae ea et. Et velit officia velit quo perferendis est eaque officia. Qui et ut inventore ut et nihil fuga ipsa itaque.'),
(13, '2022-01-02 08:56:19', 'Lesly.Predovic98@yahoo.com', 'Rodrigo.Morar12', '14Xii93COsZsyF8', 'Dolor aliquid atque qui eveniet quisquam eligendi quia voluptatem. Sit explicabo et sequi. Cumque et voluptates.'),
(14, '2022-01-02 08:56:19', 'Layne_Nicolas@yahoo.com', 'Seamus.Kuhn55', 'IuYOLJmG3wHQOOs', 'Deleniti rerum quia. Totam quidem dolores reiciendis nihil incidunt quisquam. Possimus inventore aut tenetur et facere.'),
(15, '2022-01-02 08:56:19', 'Abigayle_Franecki@gmail.com', 'Zetta95', 'YnUF0UN7MAs4VS7', 'Ut eius et exercitationem fugit. Est nihil est rerum provident totam qui numquam doloribus.'),
(16, '2022-01-02 08:56:19', 'Octavia.Hilpert@yahoo.com', 'Dortha40', 'LxO8DCSk_7h0uZ8', 'In temporibus ullam sit vel repellat et ut eaque sit. Quasi explicabo odio. Ea vero distinctio. Maiores explicabo aut et aut id.'),
(17, '2022-01-02 08:56:19', 'Ova_Feeney@gmail.com', 'Obie_Mohr', 'nP3qbPHs3tJ7M71', 'Velit eveniet enim molestiae nam repellendus praesentium quidem expedita. Ex odit expedita necessitatibus temporibus dolorem porro dolor quae odit. Aperiam dolorum optio et cupiditate. Autem ut distinctio consequatur consectetur quae explicabo commodi corrupti odio. Nulla non est ipsam.'),
(18, '2022-01-02 08:56:19', 'Cayla.Jacobson87@yahoo.com', 'Annalise_Murray', 'vWuTbc0PhyrdG5l', 'Facere eum ut aut. Enim quo temporibus placeat deserunt rem. Nam et adipisci dolor ut omnis velit. Eaque ipsa similique quis ea alias. Velit quae vel temporibus excepturi laborum repudiandae. Minima eum aut et necessitatibus ut at aperiam.'),
(19, '2022-01-02 08:56:19', 'Celia.Goldner85@yahoo.com', 'Kimberly.Beahan', 'hJa2F_dLjNjXtaD', 'Quos nulla cumque et ea. Quam maiores rerum.'),
(20, '2022-01-02 08:56:19', 'Kristina.Deckow93@hotmail.com', 'Gabriel61', '32KBX50EoiJgQ45', 'Magni deserunt id labore asperiores. Soluta quae beatae commodi culpa doloremque impedit et eos maiores. Quae vel facere sit possimus.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `FriendRequest`
--
ALTER TABLE `FriendRequest`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_friendrequest` (`from_user_id`,`to_user_id`),
  ADD UNIQUE KEY `friendrequest_from_user_id_to_user_id_key` (`from_user_id`,`to_user_id`),
  ADD KEY `to_user_id` (`to_user_id`);

--
-- Indexes for table `Friendship`
--
ALTER TABLE `Friendship`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_friendship` (`first_user_id`,`second_user_id`),
  ADD UNIQUE KEY `friendship_first_user_id_second_user_id_key` (`first_user_id`,`second_user_id`),
  ADD KEY `second_user_id` (`second_user_id`);

--
-- Indexes for table `Message`
--
ALTER TABLE `Message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `thread_id` (`thread_id`);

--
-- Indexes for table `MessageThread`
--
ALTER TABLE `MessageThread`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `MessageThreadOnUser`
--
ALTER TABLE `MessageThreadOnUser`
  ADD PRIMARY KEY (`user_id`,`thread_id`);

--
-- Indexes for table `Post`
--
ALTER TABLE `Post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `PostComment`
--
ALTER TABLE `PostComment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `PostLike`
--
ALTER TABLE `PostLike`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_postlike` (`post_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_email_key` (`email`) USING HASH,
  ADD UNIQUE KEY `user_username_key` (`username`) USING HASH;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `FriendRequest`
--
ALTER TABLE `FriendRequest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `Friendship`
--
ALTER TABLE `Friendship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `Message`
--
ALTER TABLE `Message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `MessageThread`
--
ALTER TABLE `MessageThread`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `Post`
--
ALTER TABLE `Post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `PostComment`
--
ALTER TABLE `PostComment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `PostLike`
--
ALTER TABLE `PostLike`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `FriendRequest`
--
ALTER TABLE `FriendRequest`
  ADD CONSTRAINT `FriendRequest_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `User` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FriendRequest_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `User` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `Friendship`
--
ALTER TABLE `Friendship`
  ADD CONSTRAINT `Friendship_ibfk_1` FOREIGN KEY (`first_user_id`) REFERENCES `User` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Friendship_ibfk_2` FOREIGN KEY (`second_user_id`) REFERENCES `User` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `Message`
--
ALTER TABLE `Message`
  ADD CONSTRAINT `Message_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `User` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Message_ibfk_2` FOREIGN KEY (`thread_id`) REFERENCES `MessageThread` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `Post`
--
ALTER TABLE `Post`
  ADD CONSTRAINT `Post_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `User` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `PostComment`
--
ALTER TABLE `PostComment`
  ADD CONSTRAINT `PostComment_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `Post` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `PostComment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `PostLike`
--
ALTER TABLE `PostLike`
  ADD CONSTRAINT `PostLike_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `Post` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `PostLike_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

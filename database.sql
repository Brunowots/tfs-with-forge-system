-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 09-08-2022 a las 22:34:56
-- Versión del servidor: 8.0.30-0ubuntu0.20.04.2
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mystical`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts`
--

CREATE TABLE `accounts` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `password` char(40) NOT NULL,
  `secret` char(16) DEFAULT NULL,
  `type` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `premdays` int NOT NULL DEFAULT '0',
  `coins` int UNSIGNED NOT NULL DEFAULT '0',
  `lastday` bigint UNSIGNED NOT NULL DEFAULT '0',
  `proxy_id` int NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL DEFAULT '',
  `creation` int UNSIGNED NOT NULL DEFAULT '0',
  `recruiter` int DEFAULT '0',
  `vote` int NOT NULL DEFAULT '0',
  `key` varchar(64) NOT NULL DEFAULT '',
  `blocked` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'internal usage',
  `created` int NOT NULL DEFAULT '0',
  `email_new` varchar(255) NOT NULL DEFAULT '',
  `email_new_time` int NOT NULL DEFAULT '0',
  `rlname` varchar(255) NOT NULL DEFAULT '',
  `location` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(3) NOT NULL DEFAULT '',
  `web_lastlogin` int NOT NULL DEFAULT '0',
  `web_flags` int NOT NULL DEFAULT '0',
  `email_hash` varchar(32) NOT NULL DEFAULT '',
  `email_verified` tinyint(1) NOT NULL DEFAULT '0',
  `page_access` int NOT NULL DEFAULT '0',
  `email_code` varchar(255) NOT NULL DEFAULT '',
  `email_next` int NOT NULL DEFAULT '0',
  `premium_points` int NOT NULL DEFAULT '0',
  `create_date` bigint NOT NULL DEFAULT '0',
  `create_ip` bigint NOT NULL DEFAULT '0',
  `last_post` int NOT NULL DEFAULT '0',
  `flag` varchar(80) NOT NULL DEFAULT '',
  `vip_time` int NOT NULL DEFAULT '0',
  `guild_points` int NOT NULL DEFAULT '0',
  `guild_points_stats` int NOT NULL DEFAULT '0',
  `passed` int NOT NULL DEFAULT '0',
  `block` int NOT NULL DEFAULT '0',
  `refresh` int NOT NULL DEFAULT '0',
  `birth_date` varchar(50) NOT NULL DEFAULT '',
  `gender` varchar(20) NOT NULL DEFAULT '',
  `loyalty_points` bigint NOT NULL DEFAULT '0',
  `authToken` varchar(100) NOT NULL DEFAULT '',
  `player_sell_bank` int DEFAULT '0',
  `secret_status` tinyint(1) NOT NULL DEFAULT '0',
  `tournamentBalance` int NOT NULL DEFAULT '0',
  `tournament_coins` int DEFAULT NULL,
  `next_email` varchar(11) NOT NULL DEFAULT '',
  `tournamentchek` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `password`, `secret`, `type`, `premdays`, `coins`, `lastday`, `proxy_id`, `email`, `creation`, `recruiter`, `vote`, `key`, `blocked`, `created`, `email_new`, `email_new_time`, `rlname`, `location`, `country`, `web_lastlogin`, `web_flags`, `email_hash`, `email_verified`, `page_access`, `email_code`, `email_next`, `premium_points`, `create_date`, `create_ip`, `last_post`, `flag`, `vip_time`, `guild_points`, `guild_points_stats`, `passed`, `block`, `refresh`, `birth_date`, `gender`, `loyalty_points`, `authToken`, `player_sell_bank`, `secret_status`, `tournamentBalance`, `tournament_coins`, `next_email`, `tournamentchek`) VALUES
(5, 'god@marcuz', '0ba6aefb06d4dfae9ef8d0765daaf74ee62b7dd4', '', 5, 9966, 0, 1649532087, 0, '@godmarcuzserver', 1646594487, 0, 0, 'IMUX-YZUW-ALEP-O8A8', 0, 0, '', 0, 'Felipe Alencar', 'Maringa', '', 1658182876, 0, '', 0, 999, '', 0, 0, 0, 2890143799, 1647485102, 'vn', 0, 0, 0, 0, 0, 0, '23/12/1997', 'male', 0, '', 0, 0, 0, 8100, '0', 1),
(1026, 'marcuz', 'c1dae3f8d65fba212712f22c53f8829c0a736d57', NULL, 5, 0, 280, 0, 0, 'marcuz_115@hotmail.com', 0, 0, 0, 'VPEFHHQJBE', 0, 1656644605, '', 0, '', '', 'us', 1658706916, 3, '', 0, 0, '', 0, 0, 0, 0, 0, '', 1662409096, 0, 0, 0, 0, 0, '', '', 0, '', 0, 0, 0, 4825, '', 1),
(1027, 'marcuz@asewre', 'af2508c97c73bf7425948df6521a24391111d67b', NULL, 1, 0, 0, 0, 0, 'marcuz@asewre', 0, 0, 0, '', 0, 1656648863, '', 0, '', '', 'us', 1656648902, 0, '', 0, 0, '', 0, 0, 0, 0, 0, '', 1656845427, 0, 0, 0, 0, 0, '', '', 0, '', 0, 0, 0, 50, '', 0),
(1186, 'jacksonie', '93f9b066b3d08e3ca21d6ce6a1a9c6e88a2dd512', NULL, 1, 0, 0, 0, 0, 'jackson.ie@llive.com', 0, 0, 0, '', 0, 1658164249, '', 0, '', '', 'br', 1658435322, 0, '', 0, 0, '', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, '', '', 0, '', 0, 0, 0, 1000, '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts_storage`
--

CREATE TABLE `accounts_storage` (
  `account_id` int NOT NULL DEFAULT '0',
  `key` int UNSIGNED NOT NULL DEFAULT '0',
  `value` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `account_bans`
--

CREATE TABLE `account_bans` (
  `account_id` int NOT NULL,
  `reason` varchar(255) NOT NULL,
  `banned_at` bigint NOT NULL,
  `expires_at` bigint NOT NULL,
  `banned_by` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `account_ban_history`
--

CREATE TABLE `account_ban_history` (
  `id` int UNSIGNED NOT NULL,
  `account_id` int NOT NULL,
  `reason` varchar(255) NOT NULL,
  `banned_at` bigint NOT NULL,
  `expired_at` bigint NOT NULL,
  `banned_by` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `account_character_sale`
--

CREATE TABLE `account_character_sale` (
  `id` int NOT NULL,
  `id_account` int NOT NULL,
  `id_player` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `price_type` tinyint NOT NULL,
  `price_coins` int DEFAULT NULL,
  `price_gold` int DEFAULT NULL,
  `dta_insert` datetime NOT NULL,
  `dta_valid` datetime NOT NULL,
  `dta_sale` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `account_viplist`
--

CREATE TABLE `account_viplist` (
  `account_id` int NOT NULL COMMENT 'id of account whose viplist entry it is',
  `player_id` int NOT NULL COMMENT 'id of target player of viplist entry',
  `description` varchar(128) NOT NULL DEFAULT '',
  `icon` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `notify` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `announcements`
--

CREATE TABLE `announcements` (
  `id` int NOT NULL,
  `title` varchar(50) NOT NULL,
  `text` varchar(255) NOT NULL,
  `date` varchar(20) NOT NULL,
  `author` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blessings_history`
--

CREATE TABLE `blessings_history` (
  `id` int NOT NULL,
  `player_id` int NOT NULL,
  `blessing` tinyint NOT NULL,
  `loss` tinyint(1) NOT NULL,
  `timestamp` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `boosted_creature`
--

CREATE TABLE `boosted_creature` (
  `looktype` int NOT NULL DEFAULT '136',
  `lookfeet` int NOT NULL DEFAULT '0',
  `looklegs` int NOT NULL DEFAULT '0',
  `lookhead` int NOT NULL DEFAULT '0',
  `lookbody` int NOT NULL DEFAULT '0',
  `lookaddons` int NOT NULL DEFAULT '0',
  `lookmount` int DEFAULT '0',
  `date` varchar(250) NOT NULL DEFAULT '',
  `boostname` text,
  `raceid` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `boosted_creature`
--

INSERT INTO `boosted_creature` (`looktype`, `lookfeet`, `looklegs`, `lookhead`, `lookbody`, `lookaddons`, `lookmount`, `date`, `boostname`, `raceid`) VALUES
(990, 0, 0, 0, 0, 0, 0, '25', 'Barkless Devotee', '1486');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coins_transactions`
--

CREATE TABLE `coins_transactions` (
  `id` int NOT NULL,
  `account_id` int UNSIGNED NOT NULL,
  `type` tinyint UNSIGNED NOT NULL,
  `amount` int UNSIGNED NOT NULL,
  `description` varchar(3500) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `daily_reward_history`
--

CREATE TABLE `daily_reward_history` (
  `id` int UNSIGNED NOT NULL,
  `daystreak` smallint NOT NULL DEFAULT '0',
  `player_id` int NOT NULL,
  `timestamp` int NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forge_system_history`
--

CREATE TABLE `forge_system_history` (
  `player_id` int NOT NULL,
  `action_type` int NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `success` tinyint NOT NULL DEFAULT '0',
  `bonus` tinyint NOT NULL DEFAULT '0',
  `cost` int NOT NULL DEFAULT '0',
  `gained` int NOT NULL DEFAULT '0',
  `done_at` bigint NOT NULL,
  `done_at_date` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `free_pass`
--

CREATE TABLE `free_pass` (
  `player_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `global_storage`
--

CREATE TABLE `global_storage` (
  `key` varchar(32) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `global_storage`
--

INSERT INTO `global_storage` (`key`, `value`) VALUES
('14110', '1658765103');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guilds`
--

CREATE TABLE `guilds` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `ownerid` int NOT NULL,
  `creationdata` bigint NOT NULL,
  `motd` varchar(255) NOT NULL DEFAULT '',
  `residence` int DEFAULT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `guild_logo` mediumblob,
  `create_ip` bigint NOT NULL DEFAULT '0',
  `balance` bigint UNSIGNED NOT NULL DEFAULT '0',
  `last_execute_points` bigint NOT NULL DEFAULT '0',
  `logo_name` varchar(255) NOT NULL DEFAULT 'default.gif',
  `level` int NOT NULL DEFAULT '1',
  `points` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `guilds`
--

INSERT INTO `guilds` (`id`, `name`, `ownerid`, `creationdata`, `motd`, `residence`, `description`, `guild_logo`, `create_ip`, `balance`, `last_execute_points`, `logo_name`, `level`, `points`) VALUES
(1, 'Najlepzi', 1643, 1658393495, '', NULL, 'New guild. Leader must edit this text :)', NULL, 0, 0, 0, 'default.gif', 1, 0);

--
-- Disparadores `guilds`
--
DELIMITER $$
CREATE TRIGGER `oncreate_guilds` AFTER INSERT ON `guilds` FOR EACH ROW BEGIN
    INSERT INTO `guild_ranks` (`name`, `level`, `guild_id`) VALUES ('The Leader', 3, NEW.`id`);
    INSERT INTO `guild_ranks` (`name`, `level`, `guild_id`) VALUES ('Vice-Leader', 2, NEW.`id`);
    INSERT INTO `guild_ranks` (`name`, `level`, `guild_id`) VALUES ('Member', 1, NEW.`id`);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guildwar_kills`
--

CREATE TABLE `guildwar_kills` (
  `id` int NOT NULL,
  `killer` varchar(50) NOT NULL,
  `target` varchar(50) NOT NULL,
  `killerguild` int NOT NULL DEFAULT '0',
  `targetguild` int NOT NULL DEFAULT '0',
  `warid` int NOT NULL DEFAULT '0',
  `time` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guild_actions_h`
--

CREATE TABLE `guild_actions_h` (
  `id` int UNSIGNED NOT NULL,
  `guild_id` int DEFAULT NULL,
  `player_id` int NOT NULL,
  `value` int NOT NULL,
  `date` bigint DEFAULT NULL,
  `type` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guild_invites`
--

CREATE TABLE `guild_invites` (
  `player_id` int NOT NULL DEFAULT '0',
  `guild_id` int NOT NULL DEFAULT '0',
  `date` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `guild_invites`
--

INSERT INTO `guild_invites` (`player_id`, `guild_id`, `date`) VALUES
(1645, 1, 1658445773),
(1646, 1, 1658445818),
(1647, 1, 1658445766),
(1650, 1, 1658445810),
(1662, 1, 1658445788);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guild_membership`
--

CREATE TABLE `guild_membership` (
  `player_id` int NOT NULL,
  `guild_id` int NOT NULL,
  `rank_id` int NOT NULL,
  `nick` varchar(15) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `guild_membership`
--

INSERT INTO `guild_membership` (`player_id`, `guild_id`, `rank_id`, `nick`) VALUES
(1643, 1, 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guild_ranks`
--

CREATE TABLE `guild_ranks` (
  `id` int NOT NULL,
  `guild_id` int NOT NULL COMMENT 'guild',
  `name` varchar(255) NOT NULL COMMENT 'rank name',
  `level` int NOT NULL COMMENT 'rank level - leader, vice, member, maybe something else'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `guild_ranks`
--

INSERT INTO `guild_ranks` (`id`, `guild_id`, `name`, `level`) VALUES
(1, 1, 'The Leader', 3),
(2, 1, 'Vice-Leader', 2),
(3, 1, 'Member', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guild_transfer_h`
--

CREATE TABLE `guild_transfer_h` (
  `id` int UNSIGNED NOT NULL,
  `player_id` int NOT NULL,
  `from_guild_id` int NOT NULL,
  `to_guild_id` int NOT NULL,
  `value` int NOT NULL,
  `date` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guild_wars`
--

CREATE TABLE `guild_wars` (
  `id` int NOT NULL,
  `guild1` int NOT NULL DEFAULT '0',
  `guild2` int NOT NULL DEFAULT '0',
  `name1` varchar(255) NOT NULL,
  `name2` varchar(255) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `started` bigint NOT NULL DEFAULT '0',
  `ended` bigint NOT NULL DEFAULT '0',
  `frags_limit` int DEFAULT '20'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `houses`
--

CREATE TABLE `houses` (
  `id` int NOT NULL,
  `owner` int NOT NULL,
  `paid` int UNSIGNED NOT NULL DEFAULT '0',
  `warnings` int NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `rent` int NOT NULL DEFAULT '0',
  `town_id` int NOT NULL DEFAULT '0',
  `bid` int NOT NULL DEFAULT '0',
  `bid_end` int NOT NULL DEFAULT '0',
  `last_bid` int NOT NULL DEFAULT '0',
  `highest_bidder` int NOT NULL DEFAULT '0',
  `size` int NOT NULL DEFAULT '0',
  `guildid` int DEFAULT NULL,
  `beds` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `houses`
--

INSERT INTO `houses` (`id`, `owner`, `paid`, `warnings`, `name`, `rent`, `town_id`, `bid`, `bid_end`, `last_bid`, `highest_bidder`, `size`, `guildid`, `beds`) VALUES
(2628, 0, 1650163047, 0, 'Castle of the Winds', 500000, 5, 0, 0, 0, 0, 863, NULL, 36),
(2629, 0, 1650163047, 0, 'Ab\'Dendriel Clanhall', 250000, 5, 0, 0, 0, 0, 456, NULL, 20),
(2630, 0, 1650163047, 0, 'Underwood 9', 50000, 5, 0, 0, 0, 0, 29, NULL, 2),
(2631, 0, 1650163047, 0, 'Treetop 13', 100000, 5, 0, 0, 0, 0, 45, NULL, 4),
(2632, 0, 1650163047, 0, 'Underwood 8', 50000, 5, 0, 0, 0, 0, 33, NULL, 4),
(2633, 0, 1650163047, 0, 'Treetop 11', 50000, 5, 0, 0, 0, 0, 34, NULL, 4),
(2635, 0, 1650163047, 0, 'Great Willow 2a', 50000, 5, 0, 0, 0, 0, 34, NULL, 2),
(2637, 0, 1650163047, 0, 'Great Willow 2b', 50000, 5, 0, 0, 0, 0, 29, NULL, 2),
(2638, 0, 1650163047, 0, 'Great Willow Western Wing', 100000, 5, 0, 0, 0, 0, 90, NULL, 10),
(2640, 0, 1650163047, 0, 'Great Willow 1', 100000, 5, 0, 0, 0, 0, 55, NULL, 4),
(2642, 0, 1650163047, 0, 'Great Willow 3a', 50000, 5, 0, 0, 0, 0, 33, NULL, 2),
(2644, 0, 1650163047, 0, 'Great Willow 3b', 80000, 5, 0, 0, 0, 0, 52, NULL, 4),
(2645, 0, 1650163047, 0, 'Great Willow 4a', 25000, 5, 0, 0, 0, 0, 27, NULL, 4),
(2648, 0, 1650163047, 0, 'Great Willow 4b', 25000, 5, 0, 0, 0, 0, 31, NULL, 4),
(2649, 0, 1650163047, 0, 'Underwood 6', 100000, 5, 0, 0, 0, 0, 55, NULL, 6),
(2650, 0, 1650163047, 0, 'Underwood 3', 100000, 5, 0, 0, 0, 0, 56, NULL, 6),
(2651, 0, 1650163047, 0, 'Underwood 5', 80000, 5, 0, 0, 0, 0, 49, NULL, 6),
(2652, 0, 1650163047, 0, 'Underwood 2', 100000, 5, 0, 0, 0, 0, 53, NULL, 4),
(2653, 0, 1650163047, 0, 'Underwood 1', 100000, 5, 0, 0, 0, 0, 54, NULL, 4),
(2654, 0, 1650163047, 0, 'Prima Arbor', 400000, 5, 0, 0, 0, 0, 316, NULL, 6),
(2655, 0, 1650163047, 0, 'Underwood 7', 200000, 5, 0, 0, 0, 0, 52, NULL, 4),
(2656, 0, 1650163047, 0, 'Underwood 10', 25000, 5, 0, 0, 0, 0, 30, NULL, 2),
(2657, 0, 1650163047, 0, 'Underwood 4', 100000, 5, 0, 0, 0, 0, 72, NULL, 8),
(2658, 0, 1650163047, 0, 'Treetop 9', 50000, 5, 0, 0, 0, 0, 35, NULL, 4),
(2659, 0, 1650163047, 0, 'Treetop 10', 80000, 5, 0, 0, 0, 0, 42, NULL, 4),
(2660, 0, 1650163047, 0, 'Treetop 8', 25000, 5, 0, 0, 0, 0, 35, NULL, 2),
(2661, 0, 1650163047, 0, 'Treetop 7', 50000, 5, 0, 0, 0, 0, 28, NULL, 2),
(2662, 0, 1650163047, 0, 'Treetop 6', 25000, 5, 0, 0, 0, 0, 24, NULL, 2),
(2663, 0, 1650163047, 0, 'Treetop 5 (Shop)', 80000, 5, 0, 0, 0, 0, 54, NULL, 2),
(2664, 0, 1650163047, 0, 'Treetop 12 (Shop)', 100000, 5, 0, 0, 0, 0, 56, NULL, 2),
(2665, 0, 1650163047, 0, 'Treetop 4 (Shop)', 80000, 5, 0, 0, 0, 0, 48, NULL, 2),
(2666, 0, 1650163047, 0, 'Treetop 3 (Shop)', 80000, 5, 0, 0, 0, 0, 60, NULL, 2),
(2687, 0, 1650163047, 0, 'Northern Street 1a', 100000, 6, 0, 0, 0, 0, 42, NULL, 4),
(2688, 0, 1650163047, 0, 'Park Lane 3a', 100000, 6, 0, 0, 0, 0, 48, NULL, 4),
(2689, 0, 1650163047, 0, 'Park Lane 1a', 150000, 6, 0, 0, 0, 0, 53, NULL, 4),
(2690, 0, 1650163047, 0, 'Park Lane 4', 150000, 6, 0, 0, 0, 0, 42, NULL, 4),
(2691, 0, 1650163047, 0, 'Park Lane 2', 150000, 6, 0, 0, 0, 0, 42, NULL, 4),
(2692, 0, 1650163047, 0, 'Theater Avenue 7, Flat 04', 50000, 6, 0, 0, 0, 0, 20, NULL, 2),
(2693, 0, 1650163047, 0, 'Theater Avenue 7, Flat 03', 25000, 6, 0, 0, 0, 0, 19, NULL, 2),
(2694, 0, 1650163047, 0, 'Theater Avenue 7, Flat 05', 50000, 6, 0, 0, 0, 0, 20, NULL, 2),
(2695, 0, 1650163047, 0, 'Theater Avenue 7, Flat 06', 25000, 6, 0, 0, 0, 0, 20, NULL, 2),
(2696, 0, 1650163047, 0, 'Theater Avenue 7, Flat 02', 25000, 6, 0, 0, 0, 0, 20, NULL, 2),
(2697, 0, 1650163047, 0, 'Theater Avenue 7, Flat 01', 25000, 6, 0, 0, 0, 0, 20, NULL, 2),
(2698, 0, 1650163047, 0, 'Northern Street 5', 200000, 6, 0, 0, 0, 0, 68, NULL, 4),
(2699, 0, 1650163047, 0, 'Northern Street 7', 150000, 6, 0, 0, 0, 0, 59, NULL, 4),
(2700, 0, 1650163047, 0, 'Theater Avenue 6e', 80000, 6, 0, 0, 0, 0, 31, NULL, 4),
(2701, 0, 1650163047, 0, 'Theater Avenue 6c', 25000, 6, 0, 0, 0, 0, 12, NULL, 2),
(2702, 0, 1650163047, 0, 'Theater Avenue 6a', 80000, 6, 0, 0, 0, 0, 35, NULL, 4),
(2703, 0, 1650163047, 0, 'Theater Avenue, Tower', 300000, 6, 0, 0, 0, 0, 125, NULL, 0),
(2705, 0, 1650163047, 0, 'East Lane 2', 300000, 6, 0, 0, 0, 0, 111, NULL, 4),
(2706, 0, 1650163047, 0, 'Harbour Lane 2a (Shop)', 80000, 6, 0, 0, 0, 0, 32, NULL, 0),
(2707, 0, 1650163047, 0, 'Harbour Lane 2b (Shop)', 80000, 6, 0, 0, 0, 0, 40, NULL, 0),
(2708, 0, 1650163047, 0, 'Harbour Lane 3', 400000, 6, 0, 0, 0, 0, 113, NULL, 6),
(2709, 0, 1650163047, 0, 'Magician\'s Alley 8', 150000, 6, 0, 0, 0, 0, 49, NULL, 4),
(2710, 0, 1650163047, 0, 'Lonely Sea Side Hostel', 400000, 6, 0, 0, 0, 0, 397, NULL, 16),
(2711, 0, 1650163047, 0, 'Suntower', 500000, 6, 0, 0, 0, 0, 449, NULL, 14),
(2712, 0, 1650163047, 0, 'House of Recreation', 500000, 6, 0, 0, 0, 0, 687, NULL, 32),
(2713, 0, 1650163047, 0, 'Carlin Clanhall', 250000, 6, 0, 0, 0, 0, 374, NULL, 20),
(2714, 0, 1650163047, 0, 'Magician\'s Alley 4', 200000, 6, 0, 0, 0, 0, 96, NULL, 8),
(2715, 0, 1650163047, 0, 'Theater Avenue 14 (Shop)', 200000, 6, 0, 0, 0, 0, 83, NULL, 2),
(2716, 0, 1650163047, 0, 'Theater Avenue 12', 80000, 6, 0, 0, 0, 0, 28, NULL, 4),
(2717, 0, 1650163047, 0, 'Magician\'s Alley 1', 100000, 6, 0, 0, 0, 0, 35, NULL, 4),
(2718, 0, 1650163047, 0, 'Theater Avenue 10', 100000, 6, 0, 0, 0, 0, 45, NULL, 4),
(2719, 0, 1650163047, 0, 'Magician\'s Alley 1b', 25000, 6, 0, 0, 0, 0, 24, NULL, 4),
(2720, 0, 1650163047, 0, 'Magician\'s Alley 1a', 25000, 6, 0, 0, 0, 0, 28, NULL, 4),
(2721, 0, 1650163047, 0, 'Magician\'s Alley 1c', 25000, 6, 0, 0, 0, 0, 20, NULL, 2),
(2722, 0, 1650163047, 0, 'Magician\'s Alley 1d', 25000, 6, 0, 0, 0, 0, 24, NULL, 2),
(2723, 0, 1650163047, 0, 'Magician\'s Alley 5c', 100000, 6, 0, 0, 0, 0, 35, NULL, 4),
(2724, 0, 1650163047, 0, 'Magician\'s Alley 5f', 80000, 6, 0, 0, 0, 0, 42, NULL, 4),
(2725, 0, 1650163047, 0, 'Magician\'s Alley 5b', 50000, 6, 0, 0, 0, 0, 40, NULL, 4),
(2727, 0, 1650163047, 0, 'Magician\'s Alley 5a', 50000, 6, 0, 0, 0, 0, 45, NULL, 4),
(2729, 0, 1650163047, 0, 'Central Plaza 3 (Shop)', 50000, 6, 0, 0, 0, 0, 24, NULL, 0),
(2730, 0, 1650163047, 0, 'Central Plaza 2 (Shop)', 25000, 6, 0, 0, 0, 0, 24, NULL, 0),
(2731, 0, 1650163047, 0, 'Central Plaza 1 (Shop)', 50000, 6, 0, 0, 0, 0, 24, NULL, 0),
(2732, 0, 1650163047, 0, 'Theater Avenue 8b', 100000, 6, 0, 0, 0, 0, 49, NULL, 4),
(2733, 0, 1650163047, 0, 'Harbour Lane 1 (Shop)', 100000, 6, 0, 0, 0, 0, 54, NULL, 0),
(2734, 0, 1650163047, 0, 'Theater Avenue 6f', 80000, 6, 0, 0, 0, 0, 31, NULL, 4),
(2735, 0, 1650163047, 0, 'Theater Avenue 6d', 25000, 6, 0, 0, 0, 0, 12, NULL, 2),
(2736, 0, 1650163047, 0, 'Theater Avenue 6b', 50000, 6, 0, 0, 0, 0, 35, NULL, 4),
(2737, 0, 1650163047, 0, 'Northern Street 3a', 80000, 6, 0, 0, 0, 0, 34, NULL, 4),
(2738, 0, 1650163047, 0, 'Northern Street 3b', 80000, 6, 0, 0, 0, 0, 36, NULL, 4),
(2739, 0, 1650163047, 0, 'Northern Street 1b', 80000, 6, 0, 0, 0, 0, 37, NULL, 4),
(2740, 0, 1650163047, 0, 'Northern Street 1c', 80000, 6, 0, 0, 0, 0, 35, NULL, 4),
(2741, 0, 1650163047, 0, 'Theater Avenue 7, Flat 14', 25000, 6, 0, 0, 0, 0, 20, NULL, 2),
(2742, 0, 1650163047, 0, 'Theater Avenue 7, Flat 13', 25000, 6, 0, 0, 0, 0, 20, NULL, 2),
(2743, 0, 1650163047, 0, 'Theater Avenue 7, Flat 15', 25000, 6, 0, 0, 0, 0, 20, NULL, 2),
(2744, 0, 1650163047, 0, 'Theater Avenue 7, Flat 12', 25000, 6, 0, 0, 0, 0, 20, NULL, 2),
(2745, 0, 1650163047, 0, 'Theater Avenue 7, Flat 11', 50000, 6, 0, 0, 0, 0, 24, NULL, 2),
(2746, 0, 1650163047, 0, 'Theater Avenue 7, Flat 16', 25000, 6, 0, 0, 0, 0, 24, NULL, 2),
(2747, 0, 1650163047, 0, 'Theater Avenue 5', 200000, 6, 0, 0, 0, 0, 165, NULL, 6),
(2751, 0, 1650163047, 0, 'Harbour Flats, Flat 11', 25000, 6, 0, 0, 0, 0, 24, NULL, 2),
(2752, 0, 1650163047, 0, 'Harbour Flats, Flat 13', 25000, 6, 0, 0, 0, 0, 24, NULL, 2),
(2753, 0, 1650163047, 0, 'Harbour Flats, Flat 15', 50000, 6, 0, 0, 0, 0, 38, NULL, 4),
(2755, 0, 1650163047, 0, 'Harbour Flats, Flat 12', 50000, 6, 0, 0, 0, 0, 40, NULL, 4),
(2757, 0, 1650163047, 0, 'Harbour Flats, Flat 16', 50000, 6, 0, 0, 0, 0, 45, NULL, 4),
(2759, 0, 1650163047, 0, 'Harbour Flats, Flat 21', 50000, 6, 0, 0, 0, 0, 35, NULL, 4),
(2760, 0, 1650163047, 0, 'Harbour Flats, Flat 22', 80000, 6, 0, 0, 0, 0, 45, NULL, 4),
(2761, 0, 1650163047, 0, 'Harbour Flats, Flat 23', 25000, 6, 0, 0, 0, 0, 25, NULL, 2),
(2763, 0, 1650163047, 0, 'Park Lane 1b', 200000, 6, 0, 0, 0, 0, 54, NULL, 4),
(2764, 0, 1650163047, 0, 'Theater Avenue 8a', 100000, 6, 0, 0, 0, 0, 49, NULL, 6),
(2765, 0, 1650163047, 0, 'Theater Avenue 11a', 100000, 6, 0, 0, 0, 0, 48, NULL, 4),
(2767, 0, 1650163047, 0, 'Theater Avenue 11b', 100000, 6, 0, 0, 0, 0, 54, NULL, 4),
(2768, 0, 1650163047, 0, 'Caretaker\'s Residence', 600000, 6, 0, 0, 0, 0, 423, NULL, 0),
(2769, 0, 1650163047, 0, 'Moonkeep', 250000, 6, 0, 0, 0, 0, 518, NULL, 32),
(2770, 0, 1650163047, 0, 'Mangrove 1', 80000, 5, 0, 0, 0, 0, 56, NULL, 6),
(2771, 0, 1650163047, 0, 'Coastwood 2', 50000, 5, 0, 0, 0, 0, 28, NULL, 4),
(2772, 0, 1650163047, 0, 'Coastwood 1', 50000, 5, 0, 0, 0, 0, 35, NULL, 4),
(2773, 0, 1650163047, 0, 'Coastwood 3', 50000, 5, 0, 0, 0, 0, 37, NULL, 4),
(2774, 0, 1650163047, 0, 'Coastwood 4', 50000, 5, 0, 0, 0, 0, 42, NULL, 4),
(2775, 0, 1650163047, 0, 'Mangrove 4', 50000, 5, 0, 0, 0, 0, 36, NULL, 4),
(2776, 0, 1650163047, 0, 'Coastwood 10', 80000, 5, 0, 0, 0, 0, 49, NULL, 6),
(2777, 0, 1650163047, 0, 'Coastwood 5', 50000, 5, 0, 0, 0, 0, 49, NULL, 4),
(2778, 0, 1650163047, 0, 'Coastwood 6 (Shop)', 80000, 5, 0, 0, 0, 0, 48, NULL, 2),
(2779, 0, 1650163047, 0, 'Coastwood 7', 25000, 5, 0, 0, 0, 0, 29, NULL, 2),
(2780, 0, 1650163047, 0, 'Coastwood 8', 50000, 5, 0, 0, 0, 0, 42, NULL, 4),
(2781, 0, 1650163047, 0, 'Coastwood 9', 50000, 5, 0, 0, 0, 0, 36, NULL, 2),
(2782, 0, 1650163047, 0, 'Treetop 2', 25000, 5, 0, 0, 0, 0, 24, NULL, 2),
(2783, 0, 1650163047, 0, 'Treetop 1', 25000, 5, 0, 0, 0, 0, 30, NULL, 2),
(2784, 0, 1650163047, 0, 'Mangrove 3', 80000, 5, 0, 0, 0, 0, 42, NULL, 4),
(2785, 0, 1650163047, 0, 'Mangrove 2', 50000, 5, 0, 0, 0, 0, 48, NULL, 4),
(2786, 0, 1650163047, 0, 'The Hideout', 250000, 5, 0, 0, 0, 0, 584, NULL, 40),
(2787, 0, 1650163047, 0, 'Shadow Towers', 250000, 5, 0, 0, 0, 0, 708, NULL, 36),
(2788, 0, 1650163047, 0, 'Druids Retreat A', 50000, 6, 0, 0, 0, 0, 60, NULL, 4),
(2789, 0, 1650163047, 0, 'Druids Retreat C', 50000, 6, 0, 0, 0, 0, 45, NULL, 4),
(2790, 0, 1650163047, 0, 'Druids Retreat B', 50000, 6, 0, 0, 0, 0, 56, NULL, 4),
(2791, 0, 1650163047, 0, 'Druids Retreat D', 80000, 6, 0, 0, 0, 0, 51, NULL, 4),
(2792, 0, 1650163047, 0, 'East Lane 1b', 150000, 6, 0, 0, 0, 0, 53, NULL, 4),
(2793, 0, 1650163047, 0, 'East Lane 1a', 200000, 6, 0, 0, 0, 0, 87, NULL, 4),
(2794, 0, 1650163047, 0, 'Senja Village 11', 80000, 6, 0, 0, 0, 0, 92, NULL, 4),
(2795, 0, 1650163047, 0, 'Senja Village 10', 50000, 6, 0, 0, 0, 0, 72, NULL, 2),
(2796, 0, 1650163047, 0, 'Senja Village 9', 80000, 6, 0, 0, 0, 0, 112, NULL, 4),
(2797, 0, 1650163047, 0, 'Senja Village 8', 50000, 6, 0, 0, 0, 0, 72, NULL, 4),
(2798, 0, 1650163047, 0, 'Senja Village 7', 25000, 6, 0, 0, 0, 0, 36, NULL, 4),
(2799, 0, 1650163047, 0, 'Senja Village 6b', 25000, 6, 0, 0, 0, 0, 30, NULL, 2),
(2800, 0, 1650163047, 0, 'Senja Village 6a', 50000, 6, 0, 0, 0, 0, 30, NULL, 2),
(2801, 0, 1650163047, 0, 'Senja Village 5', 50000, 6, 0, 0, 0, 0, 48, NULL, 4),
(2802, 0, 1650163047, 0, 'Senja Village 4', 50000, 6, 0, 0, 0, 0, 66, NULL, 4),
(2803, 0, 1650163047, 0, 'Senja Village 3', 50000, 6, 0, 0, 0, 0, 72, NULL, 4),
(2804, 0, 1650163047, 0, 'Senja Village 1b', 50000, 6, 0, 0, 0, 0, 66, NULL, 4),
(2805, 0, 1650163047, 0, 'Senja Village 1a', 25000, 6, 0, 0, 0, 0, 36, NULL, 2),
(2806, 0, 1650163047, 0, 'Rosebud C', 100000, 6, 0, 0, 0, 0, 70, NULL, 0),
(2807, 0, 1650163047, 0, 'Rosebud B', 80000, 6, 0, 0, 0, 0, 60, NULL, 2),
(2808, 0, 1650163047, 0, 'Rosebud A', 50000, 6, 0, 0, 0, 0, 60, NULL, 2),
(2809, 0, 1650163047, 0, 'Park Lane 3b', 100000, 6, 0, 0, 0, 0, 48, NULL, 4),
(2810, 0, 1650163047, 0, 'Northport Village 6', 80000, 6, 0, 0, 0, 0, 64, NULL, 4),
(2811, 0, 1650163047, 0, 'Northport Village 5', 80000, 6, 0, 0, 0, 0, 56, NULL, 4),
(2812, 0, 1650163047, 0, 'Northport Village 4', 100000, 6, 0, 0, 0, 0, 92, NULL, 4),
(2813, 0, 1650163047, 0, 'Northport Village 3', 150000, 6, 0, 0, 0, 0, 119, NULL, 4),
(2814, 0, 1650163047, 0, 'Northport Village 2', 50000, 6, 0, 0, 0, 0, 40, NULL, 4),
(2815, 0, 1650163047, 0, 'Northport Village 1', 50000, 6, 0, 0, 0, 0, 48, NULL, 4),
(2816, 0, 1650163047, 0, 'Nautic Observer', 200000, 6, 0, 0, 0, 0, 226, NULL, 8),
(2817, 0, 1650163047, 0, 'Nordic Stronghold', 250000, 6, 0, 0, 0, 0, 809, NULL, 42),
(2818, 0, 1650163047, 0, 'Senja Clanhall', 250000, 6, 0, 0, 0, 0, 396, NULL, 18),
(2819, 0, 1650163047, 0, 'Seawatch', 250000, 6, 0, 0, 0, 0, 749, NULL, 38),
(2820, 0, 1650163047, 0, 'Dwarven Magnate\'s Estate', 300000, 7, 0, 0, 0, 0, 395, NULL, 0),
(2821, 0, 1650163047, 0, 'Forge Master\'s Quarters', 300000, 7, 0, 0, 0, 0, 117, NULL, 0),
(2822, 0, 1650163047, 0, 'Upper Barracks 13', 25000, 7, 0, 0, 0, 0, 24, NULL, 4),
(2823, 0, 1650163047, 0, 'Upper Barracks 5', 80000, 7, 0, 0, 0, 0, 50, NULL, 6),
(2824, 0, 1650163047, 0, 'Upper Barracks 3', 80000, 7, 0, 0, 0, 0, 24, NULL, 4),
(2825, 0, 1650163047, 0, 'Upper Barracks 4', 50000, 7, 0, 0, 0, 0, 35, NULL, 4),
(2826, 0, 1650163047, 0, 'Upper Barracks 2', 80000, 7, 0, 0, 0, 0, 50, NULL, 6),
(2827, 0, 1650163047, 0, 'Upper Barracks 1', 50000, 7, 0, 0, 0, 0, 35, NULL, 4),
(2828, 0, 1650163047, 0, 'Tunnel Gardens 9', 150000, 7, 0, 0, 0, 0, 145, NULL, 14),
(2829, 0, 1650163047, 0, 'Tunnel Gardens 8', 25000, 7, 0, 0, 0, 0, 42, NULL, 4),
(2830, 0, 1650163047, 0, 'Tunnel Gardens 7', 50000, 7, 0, 0, 0, 0, 35, NULL, 4),
(2831, 0, 1650163047, 0, 'Tunnel Gardens 6', 25000, 7, 0, 0, 0, 0, 42, NULL, 4),
(2832, 0, 1650163047, 0, 'Tunnel Gardens 5', 25000, 7, 0, 0, 0, 0, 35, NULL, 4),
(2835, 0, 1650163047, 0, 'Tunnel Gardens 4', 80000, 7, 0, 0, 0, 0, 58, NULL, 6),
(2836, 0, 1650163047, 0, 'Tunnel Gardens 2', 80000, 7, 0, 0, 0, 0, 54, NULL, 6),
(2837, 0, 1650163047, 0, 'Tunnel Gardens 1', 80000, 7, 0, 0, 0, 0, 47, NULL, 6),
(2838, 0, 1650163047, 0, 'Tunnel Gardens 3', 80000, 7, 0, 0, 0, 0, 65, NULL, 6),
(2839, 0, 1650163047, 0, 'The Market 4 (Shop)', 80000, 7, 0, 0, 0, 0, 63, NULL, 2),
(2840, 0, 1650163047, 0, 'The Market 3 (Shop)', 80000, 7, 0, 0, 0, 0, 54, NULL, 2),
(2841, 0, 1650163047, 0, 'The Market 2 (Shop)', 50000, 7, 0, 0, 0, 0, 45, NULL, 2),
(2842, 0, 1650163047, 0, 'The Market 1 (Shop)', 25000, 7, 0, 0, 0, 0, 25, NULL, 2),
(2843, 0, 1650163047, 0, 'The Farms 6, Fishing Hut', 50000, 7, 0, 0, 0, 0, 42, NULL, 4),
(2844, 0, 1650163047, 0, 'The Farms 5', 50000, 7, 0, 0, 0, 0, 49, NULL, 4),
(2845, 0, 1650163047, 0, 'The Farms 4', 25000, 7, 0, 0, 0, 0, 49, NULL, 4),
(2846, 0, 1650163047, 0, 'The Farms 3', 80000, 7, 0, 0, 0, 0, 49, NULL, 4),
(2847, 0, 1650163047, 0, 'The Farms 2', 50000, 7, 0, 0, 0, 0, 49, NULL, 4),
(2849, 0, 1650163047, 0, 'The Farms 1', 80000, 7, 0, 0, 0, 0, 78, NULL, 6),
(2850, 0, 1650163047, 0, 'Outlaw Camp 14 (Shop)', 25000, 7, 0, 0, 0, 0, 35, NULL, 0),
(2852, 0, 1650163047, 0, 'Outlaw Camp 13 (Shop)', 50000, 7, 0, 0, 0, 0, 40, NULL, 0),
(2853, 0, 1650163047, 0, 'Outlaw Camp 9', 80000, 7, 0, 0, 0, 0, 40, NULL, 4),
(2854, 0, 1650163047, 0, 'Outlaw Camp 7', 25000, 7, 0, 0, 0, 0, 38, NULL, 4),
(2855, 0, 1650163047, 0, 'Outlaw Camp 4', 50000, 7, 0, 0, 0, 0, 40, NULL, 2),
(2856, 0, 1650163047, 0, 'Outlaw Camp 2', 50000, 7, 0, 0, 0, 0, 40, NULL, 2),
(2857, 0, 1650163047, 0, 'Outlaw Camp 3', 50000, 7, 0, 0, 0, 0, 35, NULL, 4),
(2858, 0, 1650163047, 0, 'Outlaw Camp 1', 80000, 7, 0, 0, 0, 0, 54, NULL, 4),
(2859, 0, 1650163047, 0, 'Nobility Quarter 5', 100000, 7, 0, 0, 0, 0, 143, NULL, 8),
(2860, 0, 1650163047, 0, 'Nobility Quarter 4', 50000, 7, 0, 0, 0, 0, 66, NULL, 4),
(2861, 0, 1650163047, 0, 'Nobility Quarter 3', 80000, 7, 0, 0, 0, 0, 56, NULL, 6),
(2862, 0, 1650163047, 0, 'Nobility Quarter 2', 50000, 7, 0, 0, 0, 0, 61, NULL, 6),
(2863, 0, 1650163047, 0, 'Nobility Quarter 1', 80000, 7, 0, 0, 0, 0, 64, NULL, 6),
(2864, 0, 1650163047, 0, 'Lower Barracks 10', 80000, 7, 0, 0, 0, 0, 50, NULL, 4),
(2865, 0, 1650163047, 0, 'Lower Barracks 9', 80000, 7, 0, 0, 0, 0, 50, NULL, 4),
(2866, 0, 1650163047, 0, 'Lower Barracks 8', 80000, 7, 0, 0, 0, 0, 50, NULL, 4),
(2867, 0, 1650163047, 0, 'Lower Barracks 1', 80000, 7, 0, 0, 0, 0, 50, NULL, 4),
(2868, 0, 1650163047, 0, 'Lower Barracks 2', 80000, 7, 0, 0, 0, 0, 50, NULL, 4),
(2869, 0, 1650163047, 0, 'Lower Barracks 3', 80000, 7, 0, 0, 0, 0, 50, NULL, 4),
(2870, 0, 1650163047, 0, 'Lower Barracks 4', 50000, 7, 0, 0, 0, 0, 50, NULL, 2),
(2871, 0, 1650163047, 0, 'Lower Barracks 5', 100000, 7, 0, 0, 0, 0, 100, NULL, 2),
(2872, 0, 1650163047, 0, 'Lower Barracks 6', 100000, 7, 0, 0, 0, 0, 100, NULL, 4),
(2873, 0, 1650163047, 0, 'Lower Barracks 7', 80000, 7, 0, 0, 0, 0, 50, NULL, 2),
(2874, 0, 1650163047, 0, 'Wolftower', 500000, 7, 0, 0, 0, 0, 680, NULL, 46),
(2875, 0, 1650163047, 0, 'Riverspring', 250000, 7, 0, 0, 0, 0, 632, NULL, 36),
(2876, 0, 1650163047, 0, 'Outlaw Castle', 250000, 7, 0, 0, 0, 0, 356, NULL, 18),
(2877, 0, 1650163047, 0, 'Marble Guildhall', 250000, 7, 0, 0, 0, 0, 612, NULL, 34),
(2878, 0, 1650163047, 0, 'Iron Guildhall', 250000, 7, 0, 0, 0, 0, 534, NULL, 34),
(2879, 0, 1650163047, 0, 'Hill Hideout', 250000, 7, 0, 0, 0, 0, 386, NULL, 30),
(2880, 0, 1650163047, 0, 'Granite Guildhall', 250000, 7, 0, 0, 0, 0, 627, NULL, 34),
(2881, 0, 1650163047, 0, 'Alai Flats, Flat 01', 50000, 8, 0, 0, 0, 0, 25, NULL, 2),
(2882, 0, 1650163047, 0, 'Alai Flats, Flat 02', 50000, 8, 0, 0, 0, 0, 35, NULL, 2),
(2883, 0, 1650163047, 0, 'Alai Flats, Flat 03', 50000, 8, 0, 0, 0, 0, 36, NULL, 2),
(2884, 0, 1650163047, 0, 'Alai Flats, Flat 04', 80000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2885, 0, 1650163047, 0, 'Alai Flats, Flat 05', 100000, 8, 0, 0, 0, 0, 42, NULL, 4),
(2886, 0, 1650163047, 0, 'Alai Flats, Flat 06', 100000, 8, 0, 0, 0, 0, 42, NULL, 4),
(2887, 0, 1650163047, 0, 'Alai Flats, Flat 07', 25000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2888, 0, 1650163047, 0, 'Alai Flats, Flat 08', 50000, 8, 0, 0, 0, 0, 36, NULL, 2),
(2889, 0, 1650163047, 0, 'Alai Flats, Flat 11', 80000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2890, 0, 1650163047, 0, 'Alai Flats, Flat 12', 25000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2891, 0, 1650163047, 0, 'Alai Flats, Flat 13', 50000, 8, 0, 0, 0, 0, 36, NULL, 2),
(2892, 0, 1650163047, 0, 'Alai Flats, Flat 14', 80000, 8, 0, 0, 0, 0, 32, NULL, 2),
(2893, 0, 1650163047, 0, 'Alai Flats, Flat 15', 100000, 8, 0, 0, 0, 0, 46, NULL, 4),
(2894, 0, 1650163047, 0, 'Alai Flats, Flat 16', 100000, 8, 0, 0, 0, 0, 46, NULL, 4),
(2895, 0, 1650163047, 0, 'Alai Flats, Flat 17', 80000, 8, 0, 0, 0, 0, 32, NULL, 2),
(2896, 0, 1650163047, 0, 'Alai Flats, Flat 18', 50000, 8, 0, 0, 0, 0, 38, NULL, 2),
(2897, 0, 1650163047, 0, 'Alai Flats, Flat 21', 50000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2898, 0, 1650163047, 0, 'Alai Flats, Flat 22', 50000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2899, 0, 1650163047, 0, 'Alai Flats, Flat 23', 25000, 8, 0, 0, 0, 0, 36, NULL, 2),
(2900, 0, 1650163047, 0, 'Alai Flats, Flat 28', 80000, 8, 0, 0, 0, 0, 32, NULL, 2),
(2901, 0, 1650163047, 0, 'Alai Flats, Flat 27', 80000, 8, 0, 0, 0, 0, 32, NULL, 2),
(2902, 0, 1650163047, 0, 'Alai Flats, Flat 26', 100000, 8, 0, 0, 0, 0, 46, NULL, 4),
(2903, 0, 1650163047, 0, 'Alai Flats, Flat 25', 100000, 8, 0, 0, 0, 0, 46, NULL, 4),
(2904, 0, 1650163047, 0, 'Alai Flats, Flat 24', 80000, 8, 0, 0, 0, 0, 39, NULL, 2),
(2905, 0, 1650163047, 0, 'Beach Home Apartments, Flat 01', 50000, 8, 0, 0, 0, 0, 25, NULL, 2),
(2906, 0, 1650163047, 0, 'Beach Home Apartments, Flat 02', 80000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2907, 0, 1650163047, 0, 'Beach Home Apartments, Flat 03', 80000, 8, 0, 0, 0, 0, 24, NULL, 2),
(2908, 0, 1650163047, 0, 'Beach Home Apartments, Flat 04', 50000, 8, 0, 0, 0, 0, 24, NULL, 2),
(2909, 0, 1650163047, 0, 'Beach Home Apartments, Flat 05', 80000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2910, 0, 1650163047, 0, 'Beach Home Apartments, Flat 06', 100000, 8, 0, 0, 0, 0, 40, NULL, 4),
(2911, 0, 1650163047, 0, 'Beach Home Apartments, Flat 11', 25000, 8, 0, 0, 0, 0, 25, NULL, 2),
(2912, 0, 1650163047, 0, 'Beach Home Apartments, Flat 12', 50000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2913, 0, 1650163047, 0, 'Beach Home Apartments, Flat 13', 80000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2914, 0, 1650163047, 0, 'Beach Home Apartments, Flat 14', 25000, 8, 0, 0, 0, 0, 15, NULL, 2),
(2915, 0, 1650163047, 0, 'Beach Home Apartments, Flat 15', 25000, 8, 0, 0, 0, 0, 20, NULL, 2),
(2916, 0, 1650163047, 0, 'Beach Home Apartments, Flat 16', 80000, 8, 0, 0, 0, 0, 40, NULL, 4),
(2917, 0, 1650163047, 0, 'Demon Tower', 100000, 8, 0, 0, 0, 0, 150, NULL, 4),
(2918, 1688, 1659163740, 0, 'Farm Lane, 1st floor (Shop)', 80000, 8, 0, 0, 0, 0, 36, NULL, 0),
(2919, 0, 1650163047, 0, 'Farm Lane, 2nd Floor (Shop)', 50000, 8, 0, 0, 0, 0, 36, NULL, 0),
(2920, 0, 1650163047, 0, 'Farm Lane, Basement (Shop)', 50000, 8, 0, 0, 0, 0, 42, NULL, 0),
(2921, 0, 1650163047, 0, 'Fibula Village 1', 25000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2922, 0, 1650163047, 0, 'Fibula Village 2', 25000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2923, 0, 1650163047, 0, 'Fibula Village 4', 25000, 8, 0, 0, 0, 0, 42, NULL, 4),
(2924, 0, 1650163047, 0, 'Fibula Village 5', 50000, 8, 0, 0, 0, 0, 49, NULL, 4),
(2925, 0, 1650163047, 0, 'Fibula Village 3', 80000, 8, 0, 0, 0, 0, 110, NULL, 8),
(2926, 0, 1650163047, 0, 'Fibula Village, Tower Flat', 100000, 8, 0, 0, 0, 0, 156, NULL, 4),
(2927, 0, 1650163047, 0, 'Guildhall of the Red Rose', 250000, 8, 0, 0, 0, 0, 597, NULL, 30),
(2928, 0, 1650163047, 0, 'Fibula Village, Bar (Shop)', 100000, 8, 0, 0, 0, 0, 127, NULL, 4),
(2929, 0, 1650163047, 0, 'Fibula Village, Villa', 200000, 8, 0, 0, 0, 0, 397, NULL, 10),
(2930, 0, 1650163047, 0, 'Greenshore Village 1', 80000, 8, 0, 0, 0, 0, 64, NULL, 6),
(2931, 0, 1650163047, 0, 'Greenshore Clanhall', 250000, 8, 0, 0, 0, 0, 312, NULL, 20),
(2932, 0, 1650163047, 0, 'Castle of Greenshore', 250000, 8, 0, 0, 0, 0, 474, NULL, 24),
(2933, 0, 1650163047, 0, 'Greenshore Village, Shop', 80000, 8, 0, 0, 0, 0, 64, NULL, 2),
(2934, 0, 1650163047, 0, 'Greenshore Village, Villa', 300000, 8, 0, 0, 0, 0, 262, NULL, 8),
(2935, 0, 1650163047, 0, 'Greenshore Village 7', 25000, 8, 0, 0, 0, 0, 42, NULL, 2),
(2936, 0, 1650163047, 0, 'Greenshore Village 3', 50000, 8, 0, 0, 0, 0, 55, NULL, 4),
(2939, 0, 1650163047, 0, 'Greenshore Village 2', 50000, 8, 0, 0, 0, 0, 55, NULL, 4),
(2940, 0, 1650163047, 0, 'Greenshore Village 6', 150000, 8, 0, 0, 0, 0, 112, NULL, 4),
(2941, 1646, 1658802113, 0, 'Harbour Place 1 (Shop)', 800000, 8, 0, 0, 0, 0, 48, NULL, 0),
(2942, 1647, 1658967820, 0, 'Harbour Place 2 (Shop)', 600000, 8, 0, 0, 0, 0, 54, NULL, 2),
(2943, 1584, 1658967877, 0, 'Harbour Place 3', 800000, 8, 0, 0, 0, 0, 138, NULL, 2),
(2944, 0, 1650163047, 0, 'Harbour Place 4', 80000, 8, 0, 0, 0, 0, 36, NULL, 2),
(2945, 1698, 1659104047, 0, 'Lower Swamp Lane 1', 400000, 8, 0, 0, 0, 0, 156, NULL, 8),
(2946, 0, 1650163047, 0, 'Lower Swamp Lane 3', 400000, 8, 0, 0, 0, 0, 156, NULL, 8),
(2947, 1603, 1659313287, 0, 'Main Street 9, 1st floor (Shop)', 200000, 8, 0, 0, 0, 0, 63, NULL, 0),
(2948, 0, 1650163047, 0, 'Main Street 9a, 2nd floor (Shop)', 100000, 8, 0, 0, 0, 0, 30, NULL, 0),
(2949, 0, 1659043449, 0, 'Main Street 9b, 2nd floor (Shop)', 150000, 8, 0, 0, 0, 0, 57, NULL, 0),
(2950, 0, 1650163047, 0, 'Mill Avenue 1 (Shop)', 200000, 8, 0, 0, 0, 0, 54, NULL, 2),
(2951, 0, 1650163047, 0, 'Mill Avenue 2 (Shop)', 200000, 8, 0, 0, 0, 0, 100, NULL, 4),
(2952, 0, 1650163047, 0, 'Mill Avenue 3', 100000, 8, 0, 0, 0, 0, 49, NULL, 4),
(2953, 0, 1650163047, 0, 'Mill Avenue 4', 100000, 8, 0, 0, 0, 0, 49, NULL, 4),
(2954, 0, 1650163047, 0, 'Mill Avenue 5', 300000, 8, 0, 0, 0, 0, 116, NULL, 8),
(2955, 0, 1650163047, 0, 'Open-Air Theatre', 150000, 8, 0, 0, 0, 0, 111, NULL, 2),
(2956, 0, 1650163047, 0, 'Smuggler\'s Den', 400000, 8, 0, 0, 0, 0, 298, NULL, 8),
(2957, 0, 1657926127, 1, 'Sorcerer\'s Avenue 1a', 100000, 8, 0, 0, 0, 0, 42, NULL, 4),
(2958, 0, 1650163047, 0, 'Sorcerer\'s Avenue 5 (Shop)', 150000, 8, 0, 0, 0, 0, 96, NULL, 2),
(2959, 0, 1650163047, 0, 'Sorcerer\'s Avenue 1b', 80000, 8, 0, 0, 0, 0, 30, NULL, 4),
(2960, 0, 1658120661, 1, 'Sorcerer\'s Avenue 1c', 100000, 8, 0, 0, 0, 0, 42, NULL, 4),
(2961, 0, 1650163047, 0, 'Sorcerer\'s Avenue Labs 2a', 50000, 8, 0, 0, 0, 0, 54, NULL, 4),
(2962, 0, 1650163047, 0, 'Sorcerer\'s Avenue Labs 2c', 50000, 8, 0, 0, 0, 0, 48, NULL, 4),
(2963, 0, 1650163047, 0, 'Sorcerer\'s Avenue Labs 2b', 50000, 8, 0, 0, 0, 0, 54, NULL, 4),
(2964, 0, 1658355314, 0, 'Sunset Homes, Flat 01', 100000, 8, 0, 0, 0, 0, 25, NULL, 2),
(2965, 0, 1658495800, 0, 'Sunset Homes, Flat 02', 80000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2966, 0, 1650163047, 0, 'Sunset Homes, Flat 03', 80000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2967, 0, 1650163047, 0, 'Sunset Homes, Flat 11', 80000, 8, 0, 0, 0, 0, 25, NULL, 2),
(2968, 0, 1650163047, 0, 'Sunset Homes, Flat 12', 50000, 8, 0, 0, 0, 0, 26, NULL, 2),
(2969, 0, 1658471442, 0, 'Sunset Homes, Flat 13', 100000, 8, 0, 0, 0, 0, 35, NULL, 4),
(2970, 0, 1650163047, 0, 'Sunset Homes, Flat 14', 50000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2971, 0, 1650163047, 0, 'Sunset Homes, Flat 21', 50000, 8, 0, 0, 0, 0, 25, NULL, 2),
(2972, 0, 1650163047, 0, 'Sunset Homes, Flat 22', 50000, 8, 0, 0, 0, 0, 26, NULL, 2),
(2973, 0, 1650163047, 0, 'Sunset Homes, Flat 23', 80000, 8, 0, 0, 0, 0, 35, NULL, 4),
(2974, 0, 1650163047, 0, 'Sunset Homes, Flat 24', 50000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2975, 0, 1650163047, 0, 'Thais Hostel', 200000, 8, 0, 0, 0, 0, 171, NULL, 0),
(2976, 0, 1650163047, 0, 'The City Wall 1a', 150000, 8, 0, 0, 0, 0, 49, NULL, 4),
(2977, 0, 1650163047, 0, 'The City Wall 1b', 100000, 8, 0, 0, 0, 0, 49, NULL, 4),
(2978, 0, 1650163047, 0, 'The City Wall 3a', 100000, 8, 0, 0, 0, 0, 35, NULL, 4),
(2979, 0, 1650163047, 0, 'The City Wall 3b', 100000, 8, 0, 0, 0, 0, 35, NULL, 4),
(2980, 0, 1650163047, 0, 'The City Wall 3c', 100000, 8, 0, 0, 0, 0, 42, NULL, 4),
(2981, 0, 1650163047, 0, 'The City Wall 3d', 100000, 8, 0, 0, 0, 0, 35, NULL, 4),
(2982, 0, 1650163047, 0, 'The City Wall 3e', 100000, 8, 0, 0, 0, 0, 35, NULL, 4),
(2983, 0, 1650163047, 0, 'The City Wall 3f', 100000, 8, 0, 0, 0, 0, 42, NULL, 4),
(2984, 0, 1659085505, 0, 'Upper Swamp Lane 12', 300000, 8, 0, 0, 0, 0, 124, NULL, 6),
(2985, 0, 1650163047, 0, 'Upper Swamp Lane 10', 150000, 8, 0, 0, 0, 0, 70, NULL, 6),
(2986, 1594, 1659073206, 0, 'Upper Swamp Lane 8', 600000, 8, 0, 0, 0, 0, 206, NULL, 6),
(2987, 1578, 1659049643, 0, 'Upper Swamp Lane 4', 600000, 8, 0, 0, 0, 0, 176, NULL, 4),
(2988, 1630, 1658989017, 0, 'Upper Swamp Lane 2', 600000, 8, 0, 0, 0, 0, 176, NULL, 4),
(2989, 0, 1650163047, 0, 'The City Wall 9', 80000, 8, 0, 0, 0, 0, 50, NULL, 4),
(2990, 0, 1650163047, 0, 'The City Wall 7h', 50000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2991, 0, 1650163047, 0, 'The City Wall 7b', 25000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2992, 0, 1650163047, 0, 'The City Wall 7d', 50000, 8, 0, 0, 0, 0, 36, NULL, 4),
(2993, 0, 1650163047, 0, 'The City Wall 7f', 80000, 8, 0, 0, 0, 0, 36, NULL, 4),
(2994, 0, 1650163047, 0, 'The City Wall 7c', 80000, 8, 0, 0, 0, 0, 36, NULL, 4),
(2995, 0, 1650163047, 0, 'The City Wall 7a', 80000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2996, 0, 1650163047, 0, 'The City Wall 7g', 50000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2997, 0, 1650163047, 0, 'The City Wall 7e', 80000, 8, 0, 0, 0, 0, 36, NULL, 4),
(2998, 0, 1650163047, 0, 'The City Wall 5b', 50000, 8, 0, 0, 0, 0, 24, NULL, 2),
(2999, 0, 1650163047, 0, 'The City Wall 5d', 50000, 8, 0, 0, 0, 0, 24, NULL, 2),
(3000, 0, 1650163047, 0, 'The City Wall 5f', 25000, 8, 0, 0, 0, 0, 30, NULL, 2),
(3001, 0, 1650163047, 0, 'The City Wall 5a', 50000, 8, 0, 0, 0, 0, 24, NULL, 2),
(3002, 0, 1650163047, 0, 'The City Wall 5c', 50000, 8, 0, 0, 0, 0, 24, NULL, 2),
(3003, 0, 1650163047, 0, 'The City Wall 5e', 50000, 8, 0, 0, 0, 0, 30, NULL, 2),
(3004, 1657, 1658965042, 0, 'Warriors\' Guildhall', 5000000, 8, 0, 0, 0, 0, 535, NULL, 22),
(3005, 0, 1650163047, 0, 'The Tibianic', 500000, 8, 0, 0, 0, 0, 824, NULL, 44),
(3006, 0, 1650163047, 0, 'Bloodhall', 500000, 8, 0, 0, 0, 0, 539, NULL, 30),
(3007, 0, 1650163047, 0, 'Fibula Clanhall', 250000, 8, 0, 0, 0, 0, 305, NULL, 20),
(3008, 1736, 1659311820, 0, 'Dark Mansion', 1000000, 8, 0, 0, 0, 0, 590, NULL, 28),
(3009, 0, 1650163047, 0, 'Halls of the Adventurers', 250000, 8, 0, 0, 0, 0, 512, NULL, 36),
(3010, 0, 1650163047, 0, 'Mercenary Tower', 250000, 8, 0, 0, 0, 0, 982, NULL, 52),
(3011, 0, 1650163047, 0, 'Snake Tower', 500000, 8, 0, 0, 0, 0, 1041, NULL, 42),
(3012, 1755, 1659362680, 0, 'Southern Thais Guildhall', 1000000, 8, 0, 0, 0, 0, 635, NULL, 34),
(3013, 0, 1650163047, 0, 'Spiritkeep', 500000, 8, 0, 0, 0, 0, 564, NULL, 26),
(3014, 1740, 1659337321, 0, 'Thais Clanhall', 500000, 8, 0, 0, 0, 0, 380, NULL, 20),
(3015, 0, 1650163047, 0, 'The Lair', 200000, 9, 0, 0, 0, 0, 335, NULL, 6),
(3016, 0, 1650163047, 0, 'Silver Street 4', 300000, 9, 0, 0, 0, 0, 153, NULL, 4),
(3017, 0, 1650163047, 0, 'Dream Street 1 (Shop)', 600000, 9, 0, 0, 0, 0, 178, NULL, 4),
(3018, 0, 1650163047, 0, 'Dagger Alley 1', 200000, 9, 0, 0, 0, 0, 126, NULL, 4),
(3019, 0, 1650163047, 0, 'Dream Street 2', 400000, 9, 0, 0, 0, 0, 138, NULL, 4),
(3020, 0, 1650163047, 0, 'Dream Street 3', 300000, 9, 0, 0, 0, 0, 126, NULL, 4),
(3021, 0, 1650163047, 0, 'Elm Street 1', 300000, 9, 0, 0, 0, 0, 114, NULL, 4),
(3022, 0, 1650163047, 0, 'Elm Street 3', 300000, 9, 0, 0, 0, 0, 120, NULL, 6),
(3023, 0, 1650163047, 0, 'Elm Street 2', 300000, 9, 0, 0, 0, 0, 120, NULL, 4),
(3024, 0, 1650163047, 0, 'Elm Street 4', 300000, 9, 0, 0, 0, 0, 126, NULL, 4),
(3025, 1620, 1659260934, 0, 'Seagull Walk 1', 800000, 9, 0, 0, 0, 0, 202, NULL, 4),
(3026, 0, 1650163047, 0, 'Seagull Walk 2', 300000, 9, 0, 0, 0, 0, 132, NULL, 6),
(3027, 0, 1650163047, 0, 'Dream Street 4', 400000, 9, 0, 0, 0, 0, 168, NULL, 8),
(3028, 0, 1650163047, 0, 'Old Lighthouse', 200000, 9, 0, 0, 0, 0, 177, NULL, 4),
(3029, 0, 1650163047, 0, 'Market Street 1', 600000, 9, 0, 0, 0, 0, 258, NULL, 6),
(3030, 0, 1650163047, 0, 'Market Street 3', 600000, 9, 0, 0, 0, 0, 153, NULL, 4),
(3031, 0, 1650163047, 0, 'Market Street 4 (Shop)', 800000, 9, 0, 0, 0, 0, 209, NULL, 6),
(3032, 0, 1650163047, 0, 'Market Street 5 (Shop)', 800000, 9, 0, 0, 0, 0, 243, NULL, 8),
(3033, 0, 1650163047, 0, 'Market Street 2', 600000, 9, 0, 0, 0, 0, 200, NULL, 6),
(3034, 0, 1650163047, 0, 'Loot Lane 1 (Shop)', 600000, 9, 0, 0, 0, 0, 198, NULL, 6),
(3035, 0, 1650163047, 0, 'Mystic Lane 1', 300000, 9, 0, 0, 0, 0, 110, NULL, 6),
(3036, 0, 1650163047, 0, 'Mystic Lane 2', 200000, 9, 0, 0, 0, 0, 139, NULL, 4),
(3037, 0, 1650163047, 0, 'Lucky Lane 2 (Tower)', 600000, 9, 0, 0, 0, 0, 240, NULL, 4),
(3038, 0, 1650163047, 0, 'Lucky Lane 3 (Tower)', 600000, 9, 0, 0, 0, 0, 240, NULL, 4),
(3039, 0, 1650163047, 0, 'Iron Alley 1', 300000, 9, 0, 0, 0, 0, 120, NULL, 8),
(3040, 0, 1650163047, 0, 'Iron Alley 2', 300000, 9, 0, 0, 0, 0, 144, NULL, 8),
(3041, 0, 1650163047, 0, 'Swamp Watch', 500000, 9, 0, 0, 0, 0, 420, NULL, 24),
(3042, 0, 1650163047, 0, 'Golden Axe Guildhall', 500000, 9, 0, 0, 0, 0, 390, NULL, 20),
(3043, 0, 1650163047, 0, 'Silver Street 1', 200000, 9, 0, 0, 0, 0, 125, NULL, 2),
(3044, 0, 1650163047, 0, 'Valorous Venore', 500000, 9, 0, 0, 0, 0, 507, NULL, 18),
(3045, 0, 1650163047, 0, 'Salvation Street 2', 300000, 9, 0, 0, 0, 0, 135, NULL, 4),
(3046, 0, 1650163047, 0, 'Salvation Street 3', 300000, 9, 0, 0, 0, 0, 162, NULL, 4),
(3047, 0, 1650163047, 0, 'Silver Street 2', 200000, 9, 0, 0, 0, 0, 84, NULL, 2),
(3048, 0, 1650163047, 0, 'Silver Street 3', 200000, 9, 0, 0, 0, 0, 105, NULL, 2),
(3049, 0, 1650163047, 0, 'Mystic Lane 3 (Tower)', 800000, 9, 0, 0, 0, 0, 245, NULL, 0),
(3050, 0, 1650163047, 0, 'Market Street 7', 200000, 9, 0, 0, 0, 0, 114, NULL, 4),
(3051, 0, 1650163047, 0, 'Market Street 6', 600000, 9, 0, 0, 0, 0, 216, NULL, 10),
(3052, 0, 1650163047, 0, 'Iron Alley Watch, Upper', 600000, 9, 0, 0, 0, 0, 252, NULL, 6),
(3053, 0, 1650163047, 0, 'Iron Alley Watch, Lower', 600000, 9, 0, 0, 0, 0, 240, NULL, 4),
(3054, 0, 1650163047, 0, 'Blessed Shield Guildhall', 500000, 9, 0, 0, 0, 0, 289, NULL, 18),
(3055, 1643, 1650163047, 0, 'Steel Home', 500000, 9, 0, 0, 0, 0, 441, NULL, 26),
(3056, 0, 1650163047, 0, 'Salvation Street 1 (Shop)', 600000, 9, 0, 0, 0, 0, 249, NULL, 8),
(3057, 0, 1650163047, 0, 'Lucky Lane 1 (Shop)', 800000, 9, 0, 0, 0, 0, 253, NULL, 8),
(3058, 0, 1650163047, 0, 'Paupers Palace, Flat 34', 100000, 9, 0, 0, 0, 0, 60, NULL, 3),
(3059, 0, 1650163047, 0, 'Paupers Palace, Flat 33', 50000, 9, 0, 0, 0, 0, 35, NULL, 2),
(3060, 0, 1650163047, 0, 'Paupers Palace, Flat 32', 100000, 9, 0, 0, 0, 0, 50, NULL, 4),
(3061, 0, 1650163047, 0, 'Paupers Palace, Flat 31', 80000, 9, 0, 0, 0, 0, 40, NULL, 2),
(3062, 0, 1650163047, 0, 'Paupers Palace, Flat 28', 25000, 9, 0, 0, 0, 0, 15, NULL, 2),
(3063, 0, 1650163047, 0, 'Paupers Palace, Flat 26', 25000, 9, 0, 0, 0, 0, 20, NULL, 2),
(3064, 0, 1650163047, 0, 'Paupers Palace, Flat 24', 25000, 9, 0, 0, 0, 0, 20, NULL, 2),
(3065, 0, 1650163047, 0, 'Paupers Palace, Flat 22', 25000, 9, 0, 0, 0, 0, 20, NULL, 2),
(3066, 0, 1650163047, 0, 'Paupers Palace, Flat 21', 25000, 9, 0, 0, 0, 0, 20, NULL, 2),
(3067, 0, 1650163047, 0, 'Paupers Palace, Flat 27', 50000, 9, 0, 0, 0, 0, 25, NULL, 4),
(3068, 0, 1650163047, 0, 'Paupers Palace, Flat 25', 50000, 9, 0, 0, 0, 0, 25, NULL, 2),
(3069, 0, 1650163047, 0, 'Paupers Palace, Flat 23', 50000, 9, 0, 0, 0, 0, 30, NULL, 2),
(3070, 0, 1650163047, 0, 'Paupers Palace, Flat 11', 25000, 9, 0, 0, 0, 0, 15, NULL, 2),
(3071, 0, 1650163047, 0, 'Paupers Palace, Flat 13', 50000, 9, 0, 0, 0, 0, 20, NULL, 2),
(3072, 0, 1650163047, 0, 'Paupers Palace, Flat 15', 50000, 9, 0, 0, 0, 0, 20, NULL, 2),
(3073, 0, 1650163047, 0, 'Paupers Palace, Flat 17', 25000, 9, 0, 0, 0, 0, 20, NULL, 2),
(3074, 0, 1650163047, 0, 'Paupers Palace, Flat 18', 25000, 9, 0, 0, 0, 0, 20, NULL, 2),
(3075, 0, 1650163047, 0, 'Paupers Palace, Flat 12', 50000, 9, 0, 0, 0, 0, 25, NULL, 4),
(3076, 0, 1650163047, 0, 'Paupers Palace, Flat 14', 50000, 9, 0, 0, 0, 0, 25, NULL, 2),
(3077, 0, 1650163047, 0, 'Paupers Palace, Flat 16', 50000, 9, 0, 0, 0, 0, 30, NULL, 2),
(3078, 0, 1650163047, 0, 'Paupers Palace, Flat 06', 25000, 9, 0, 0, 0, 0, 20, NULL, 2),
(3079, 0, 1650163047, 0, 'Paupers Palace, Flat 05', 25000, 9, 0, 0, 0, 0, 15, NULL, 2),
(3080, 0, 1650163047, 0, 'Paupers Palace, Flat 04', 25000, 9, 0, 0, 0, 0, 25, NULL, 2),
(3081, 0, 1650163047, 0, 'Paupers Palace, Flat 07', 50000, 9, 0, 0, 0, 0, 23, NULL, 4),
(3082, 0, 1650163047, 0, 'Paupers Palace, Flat 03', 25000, 9, 0, 0, 0, 0, 20, NULL, 2),
(3083, 0, 1650163047, 0, 'Paupers Palace, Flat 02', 25000, 9, 0, 0, 0, 0, 25, NULL, 2),
(3084, 0, 1650163047, 0, 'Paupers Palace, Flat 01', 25000, 9, 0, 0, 0, 0, 24, NULL, 2),
(3085, 0, 1650163047, 0, 'Castle, Residence', 600000, 11, 0, 0, 0, 0, 182, NULL, 0),
(3086, 0, 1650163047, 0, 'Castle, 3rd Floor, Flat 07', 80000, 11, 0, 0, 0, 0, 30, NULL, 2),
(3087, 0, 1650163047, 0, 'Castle, 3rd Floor, Flat 04', 25000, 11, 0, 0, 0, 0, 25, NULL, 2),
(3088, 0, 1650163047, 0, 'Castle, 3rd Floor, Flat 03', 50000, 11, 0, 0, 0, 0, 30, NULL, 2),
(3089, 0, 1650163047, 0, 'Castle, 3rd Floor, Flat 06', 100000, 11, 0, 0, 0, 0, 36, NULL, 4),
(3090, 0, 1650163047, 0, 'Castle, 3rd Floor, Flat 05', 80000, 11, 0, 0, 0, 0, 30, NULL, 2),
(3091, 0, 1650163047, 0, 'Castle, 3rd Floor, Flat 02', 80000, 11, 0, 0, 0, 0, 30, NULL, 2),
(3092, 0, 1650163047, 0, 'Castle, 3rd Floor, Flat 01', 50000, 11, 0, 0, 0, 0, 30, NULL, 2),
(3093, 0, 1650163047, 0, 'Castle, 4th Floor, Flat 09', 50000, 11, 0, 0, 0, 0, 28, NULL, 2),
(3094, 0, 1650163047, 0, 'Castle, 4th Floor, Flat 08', 80000, 11, 0, 0, 0, 0, 42, NULL, 2),
(3095, 0, 1650163047, 0, 'Castle, 4th Floor, Flat 07', 80000, 11, 0, 0, 0, 0, 30, NULL, 2),
(3096, 0, 1650163047, 0, 'Castle, 4th Floor, Flat 04', 50000, 11, 0, 0, 0, 0, 25, NULL, 2),
(3097, 0, 1650163047, 0, 'Castle, 4th Floor, Flat 03', 50000, 11, 0, 0, 0, 0, 30, NULL, 2),
(3098, 0, 1650163047, 0, 'Castle, 4th Floor, Flat 06', 100000, 11, 0, 0, 0, 0, 36, NULL, 2),
(3099, 0, 1650163047, 0, 'Castle, 4th Floor, Flat 05', 80000, 11, 0, 0, 0, 0, 30, NULL, 2),
(3100, 0, 1650163047, 0, 'Castle, 4th Floor, Flat 02', 80000, 11, 0, 0, 0, 0, 30, NULL, 2),
(3101, 0, 1650163047, 0, 'Castle, 4th Floor, Flat 01', 50000, 11, 0, 0, 0, 0, 30, NULL, 2),
(3102, 0, 1650163047, 0, 'Castle Street 2', 150000, 11, 0, 0, 0, 0, 56, NULL, 4),
(3103, 0, 1650163047, 0, 'Castle Street 3', 150000, 11, 0, 0, 0, 0, 64, NULL, 4),
(3104, 0, 1650163047, 0, 'Castle Street 4', 150000, 11, 0, 0, 0, 0, 61, NULL, 4),
(3105, 0, 1650163047, 0, 'Castle Street 5', 150000, 11, 0, 0, 0, 0, 64, NULL, 4),
(3106, 0, 1650163047, 0, 'Castle Street 1', 300000, 11, 0, 0, 0, 0, 112, NULL, 6),
(3107, 0, 1650163047, 0, 'Edron Flats, Flat 08', 25000, 11, 0, 0, 0, 0, 20, NULL, 2),
(3108, 0, 1650163047, 0, 'Edron Flats, Flat 05', 25000, 11, 0, 0, 0, 0, 20, NULL, 2),
(3109, 0, 1650163047, 0, 'Edron Flats, Flat 04', 25000, 11, 0, 0, 0, 0, 25, NULL, 2),
(3110, 0, 1650163047, 0, 'Edron Flats, Flat 01', 50000, 11, 0, 0, 0, 0, 25, NULL, 2),
(3111, 0, 1650163047, 0, 'Edron Flats, Flat 07', 25000, 11, 0, 0, 0, 0, 20, NULL, 2),
(3112, 0, 1650163047, 0, 'Edron Flats, Flat 06', 25000, 11, 0, 0, 0, 0, 20, NULL, 2),
(3113, 0, 1650163047, 0, 'Edron Flats, Flat 03', 25000, 11, 0, 0, 0, 0, 20, NULL, 2),
(3114, 0, 1650163047, 0, 'Edron Flats, Flat 02', 100000, 11, 0, 0, 0, 0, 40, NULL, 4),
(3115, 0, 1650163047, 0, 'Edron Flats, Basement Flat 2', 100000, 11, 0, 0, 0, 0, 54, NULL, 4),
(3116, 0, 1650163047, 0, 'Edron Flats, Basement Flat 1', 100000, 11, 0, 0, 0, 0, 63, NULL, 4),
(3119, 0, 1650163047, 0, 'Edron Flats, Flat 13', 80000, 11, 0, 0, 0, 0, 45, NULL, 4),
(3121, 0, 1650163047, 0, 'Edron Flats, Flat 14', 100000, 11, 0, 0, 0, 0, 50, NULL, 4),
(3123, 0, 1650163047, 0, 'Edron Flats, Flat 12', 80000, 11, 0, 0, 0, 0, 45, NULL, 4),
(3124, 0, 1650163047, 0, 'Edron Flats, Flat 11', 100000, 11, 0, 0, 0, 0, 60, NULL, 4),
(3125, 0, 1650163047, 0, 'Edron Flats, Flat 25', 80000, 11, 0, 0, 0, 0, 60, NULL, 4),
(3127, 0, 1650163047, 0, 'Edron Flats, Flat 24', 80000, 11, 0, 0, 0, 0, 35, NULL, 4),
(3128, 0, 1650163047, 0, 'Edron Flats, Flat 21', 80000, 11, 0, 0, 0, 0, 40, NULL, 4),
(3131, 0, 1650163047, 0, 'Edron Flats, Flat 23', 80000, 11, 0, 0, 0, 0, 40, NULL, 4),
(3133, 0, 1650163047, 0, 'Castle Shop 1', 400000, 11, 0, 0, 0, 0, 70, NULL, 2),
(3134, 0, 1659338473, 0, 'Castle Shop 2', 400000, 11, 0, 0, 0, 0, 70, NULL, 2),
(3135, 1663, 1659108021, 0, 'Castle Shop 3', 300000, 11, 0, 0, 0, 0, 80, NULL, 2),
(3136, 1634, 1658978024, 0, 'Central Circle 1', 800000, 11, 0, 0, 0, 0, 98, NULL, 4),
(3137, 1582, 1659043289, 0, 'Central Circle 2', 800000, 11, 0, 0, 0, 0, 120, NULL, 4),
(3138, 0, 1650163047, 0, 'Central Circle 3', 800000, 11, 0, 0, 0, 0, 147, NULL, 10),
(3139, 0, 1650163047, 0, 'Central Circle 4', 800000, 11, 0, 0, 0, 0, 147, NULL, 10),
(3140, 0, 1650163047, 0, 'Central Circle 5', 800000, 11, 0, 0, 0, 0, 168, NULL, 10),
(3141, 0, 1650163047, 0, 'Central Circle 8 (Shop)', 400000, 11, 0, 0, 0, 0, 168, NULL, 4),
(3142, 0, 1650163047, 0, 'Central Circle 7 (Shop)', 400000, 11, 0, 0, 0, 0, 168, NULL, 4),
(3143, 0, 1650163047, 0, 'Central Circle 6 (Shop)', 400000, 11, 0, 0, 0, 0, 192, NULL, 4),
(3144, 0, 1650163047, 0, 'Central Circle 9a', 150000, 11, 0, 0, 0, 0, 42, NULL, 4),
(3145, 0, 1650163047, 0, 'Central Circle 9b', 150000, 11, 0, 0, 0, 0, 42, NULL, 4),
(3146, 0, 1650163047, 0, 'Sky Lane, Guild 1', 1000000, 11, 0, 0, 0, 0, 663, NULL, 46),
(3147, 0, 1650163047, 0, 'Sky Lane, Sea Tower', 300000, 11, 0, 0, 0, 0, 196, NULL, 12),
(3148, 0, 1650163047, 0, 'Sky Lane, Guild 3', 1000000, 11, 0, 0, 0, 0, 507, NULL, 36),
(3149, 0, 1650163047, 0, 'Sky Lane, Guild 2', 1000000, 11, 0, 0, 0, 0, 653, NULL, 28),
(3150, 0, 1650163047, 0, 'Wood Avenue 11', 600000, 11, 0, 0, 0, 0, 245, NULL, 12),
(3151, 0, 1650163047, 0, 'Wood Avenue 8', 800000, 11, 0, 0, 0, 0, 218, NULL, 6),
(3152, 1625, 1659108719, 0, 'Wood Avenue 7', 800000, 11, 0, 0, 0, 0, 232, NULL, 6),
(3153, 0, 1650163047, 0, 'Wood Avenue 10a', 200000, 11, 0, 0, 0, 0, 56, NULL, 4),
(3154, 0, 1650163047, 0, 'Wood Avenue 9a', 200000, 11, 0, 0, 0, 0, 56, NULL, 4),
(3155, 0, 1650163047, 0, 'Wood Avenue 6a', 300000, 11, 0, 0, 0, 0, 64, NULL, 4),
(3156, 0, 1650163047, 0, 'Wood Avenue 6b', 200000, 11, 0, 0, 0, 0, 56, NULL, 4),
(3157, 0, 1650163047, 0, 'Wood Avenue 9b', 200000, 11, 0, 0, 0, 0, 56, NULL, 4),
(3158, 0, 1650163047, 0, 'Wood Avenue 10b', 200000, 11, 0, 0, 0, 0, 64, NULL, 6),
(3159, 0, 1650163047, 0, 'Stronghold', 800000, 11, 0, 0, 0, 0, 285, NULL, 0),
(3160, 0, 1650163047, 0, 'Wood Avenue 5', 300000, 11, 0, 0, 0, 0, 64, NULL, 4),
(3161, 1579, 1659245316, 0, 'Wood Avenue 3', 200000, 11, 0, 0, 0, 0, 52, NULL, 4),
(3162, 0, 1650163047, 0, 'Wood Avenue 4', 200000, 11, 0, 0, 0, 0, 60, NULL, 4),
(3163, 0, 1650163047, 0, 'Wood Avenue 2', 200000, 11, 0, 0, 0, 0, 64, NULL, 4),
(3164, 0, 1650163047, 0, 'Wood Avenue 1', 200000, 11, 0, 0, 0, 0, 64, NULL, 4),
(3165, 0, 1650163047, 0, 'Wood Avenue 4c', 200000, 11, 0, 0, 0, 0, 57, NULL, 4),
(3166, 0, 1650163047, 0, 'Wood Avenue 4a', 150000, 11, 0, 0, 0, 0, 56, NULL, 4),
(3167, 0, 1650163047, 0, 'Wood Avenue 4b', 150000, 11, 0, 0, 0, 0, 56, NULL, 4),
(3168, 0, 1650163047, 0, 'Stonehome Village 1', 150000, 11, 0, 0, 0, 0, 77, NULL, 4),
(3169, 0, 1650163047, 0, 'Stonehome Flats, Flat 04', 80000, 11, 0, 0, 0, 0, 45, NULL, 4),
(3171, 0, 1650163047, 0, 'Stonehome Flats, Flat 03', 80000, 11, 0, 0, 0, 0, 45, NULL, 4),
(3173, 0, 1650163047, 0, 'Stonehome Flats, Flat 02', 25000, 11, 0, 0, 0, 0, 30, NULL, 4),
(3174, 0, 1650163047, 0, 'Stonehome Flats, Flat 01', 25000, 11, 0, 0, 0, 0, 25, NULL, 2),
(3175, 0, 1650163047, 0, 'Stonehome Flats, Flat 13', 80000, 11, 0, 0, 0, 0, 45, NULL, 4),
(3177, 0, 1650163047, 0, 'Stonehome Flats, Flat 11', 50000, 11, 0, 0, 0, 0, 30, NULL, 4),
(3178, 0, 1650163047, 0, 'Stonehome Flats, Flat 14', 80000, 11, 0, 0, 0, 0, 45, NULL, 4),
(3180, 0, 1650163047, 0, 'Stonehome Flats, Flat 12', 50000, 11, 0, 0, 0, 0, 30, NULL, 4),
(3181, 0, 1650163047, 0, 'Stonehome Village 2', 50000, 11, 0, 0, 0, 0, 35, NULL, 2),
(3182, 0, 1650163047, 0, 'Stonehome Village 3', 50000, 11, 0, 0, 0, 0, 36, NULL, 2),
(3183, 0, 1650163047, 0, 'Stonehome Village 4', 80000, 11, 0, 0, 0, 0, 42, NULL, 4),
(3184, 0, 1650163047, 0, 'Stonehome Village 6', 100000, 11, 0, 0, 0, 0, 55, NULL, 4),
(3185, 0, 1650163047, 0, 'Stonehome Village 5', 80000, 11, 0, 0, 0, 0, 49, NULL, 4),
(3186, 0, 1650163047, 0, 'Stonehome Village 7', 100000, 11, 0, 0, 0, 0, 49, NULL, 4),
(3187, 0, 1650163047, 0, 'Stonehome Village 8', 25000, 11, 0, 0, 0, 0, 36, NULL, 2),
(3188, 0, 1650163047, 0, 'Stonehome Village 9', 50000, 11, 0, 0, 0, 0, 36, NULL, 2),
(3189, 0, 1650163047, 0, 'Stonehome Clanhall', 250000, 11, 0, 0, 0, 0, 364, NULL, 18),
(3190, 0, 1650163047, 0, 'Mad Scientist\'s Lab', 600000, 17, 0, 0, 0, 0, 115, NULL, 0),
(3191, 0, 1650163047, 0, 'Radiant Plaza 4', 800000, 17, 0, 0, 0, 0, 361, NULL, 6),
(3192, 0, 1650163047, 0, 'Radiant Plaza 3', 800000, 17, 0, 0, 0, 0, 245, NULL, 4),
(3193, 0, 1650163047, 0, 'Radiant Plaza 2', 600000, 17, 0, 0, 0, 0, 153, NULL, 4),
(3194, 0, 1650163047, 0, 'Radiant Plaza 1', 800000, 17, 0, 0, 0, 0, 257, NULL, 8),
(3195, 0, 1650163047, 0, 'Aureate Court 3', 400000, 17, 0, 0, 0, 0, 226, NULL, 4),
(3196, 0, 1650163047, 0, 'Aureate Court 4', 400000, 17, 0, 0, 0, 0, 185, NULL, 8),
(3197, 0, 1650163047, 0, 'Aureate Court 5', 600000, 17, 0, 0, 0, 0, 201, NULL, 0),
(3198, 0, 1650163047, 0, 'Aureate Court 2', 400000, 17, 0, 0, 0, 0, 176, NULL, 4),
(3199, 0, 1650163047, 0, 'Aureate Court 1', 600000, 17, 0, 0, 0, 0, 264, NULL, 6),
(3205, 0, 1650163047, 0, 'Halls of Serenity', 5000000, 17, 0, 0, 0, 0, 1026, NULL, 66),
(3206, 0, 1650163047, 0, 'Fortune Wing 3', 600000, 17, 0, 0, 0, 0, 235, NULL, 4),
(3207, 0, 1650163047, 0, 'Fortune Wing 4', 600000, 17, 0, 0, 0, 0, 252, NULL, 8),
(3208, 0, 1650163047, 0, 'Fortune Wing 2', 600000, 17, 0, 0, 0, 0, 260, NULL, 4),
(3209, 0, 1650163047, 0, 'Fortune Wing 1', 800000, 17, 0, 0, 0, 0, 400, NULL, 8),
(3211, 0, 1650163047, 0, 'Cascade Towers', 5000000, 17, 0, 0, 0, 0, 739, NULL, 66),
(3212, 0, 1650163047, 0, 'Luminous Arc 5', 800000, 17, 0, 0, 0, 0, 196, NULL, 0),
(3213, 0, 1650163047, 0, 'Luminous Arc 2', 600000, 17, 0, 0, 0, 0, 298, NULL, 8),
(3214, 0, 1650163047, 0, 'Luminous Arc 1', 800000, 17, 0, 0, 0, 0, 341, NULL, 4),
(3215, 0, 1650163047, 0, 'Luminous Arc 3', 600000, 17, 0, 0, 0, 0, 228, NULL, 6),
(3216, 0, 1650163047, 0, 'Luminous Arc 4', 800000, 17, 0, 0, 0, 0, 326, NULL, 10),
(3217, 0, 1650163047, 0, 'Harbour Promenade 1', 800000, 17, 0, 0, 0, 0, 205, NULL, 0),
(3218, 0, 1650163047, 0, 'Sun Palace', 5000000, 17, 0, 0, 0, 0, 926, NULL, 54),
(3219, 0, 1650163047, 0, 'Haggler\'s Hangout 3', 300000, 15, 0, 0, 0, 0, 241, NULL, 8),
(3220, 0, 1650163047, 0, 'Haggler\'s Hangout 7', 400000, 15, 0, 0, 0, 0, 240, NULL, 0),
(3221, 0, 1650163047, 0, 'Big Game Hunter\'s Lodge', 600000, 15, 0, 0, 0, 0, 257, NULL, 0),
(3222, 0, 1650163047, 0, 'Haggler\'s Hangout 6', 400000, 15, 0, 0, 0, 0, 188, NULL, 8),
(3223, 0, 1650163047, 0, 'Haggler\'s Hangout 5 (Shop)', 200000, 15, 0, 0, 0, 0, 56, NULL, 2),
(3224, 0, 1650163047, 0, 'Haggler\'s Hangout 4b (Shop)', 150000, 15, 0, 0, 0, 0, 48, NULL, 2),
(3225, 0, 1650163047, 0, 'Haggler\'s Hangout 4a (Shop)', 200000, 15, 0, 0, 0, 0, 64, NULL, 2),
(3226, 0, 1650163047, 0, 'Haggler\'s Hangout 2', 100000, 15, 0, 0, 0, 0, 49, NULL, 2),
(3227, 0, 1650163047, 0, 'Haggler\'s Hangout 1', 100000, 15, 0, 0, 0, 0, 49, NULL, 4),
(3228, 0, 1650163047, 0, 'Bamboo Garden 3', 150000, 15, 0, 0, 0, 0, 63, NULL, 4),
(3229, 0, 1650163047, 0, 'Bamboo Fortress', 500000, 15, 0, 0, 0, 0, 762, NULL, 40),
(3230, 0, 1650163047, 0, 'Bamboo Garden 2', 80000, 15, 0, 0, 0, 0, 42, NULL, 4),
(3231, 0, 1650163047, 0, 'Bamboo Garden 1', 100000, 15, 0, 0, 0, 0, 63, NULL, 6),
(3232, 0, 1650163047, 0, 'Banana Bay 4', 25000, 15, 0, 0, 0, 0, 25, NULL, 2),
(3233, 0, 1650163047, 0, 'Banana Bay 2', 50000, 15, 0, 0, 0, 0, 36, NULL, 2),
(3234, 0, 1650163047, 0, 'Banana Bay 3', 50000, 15, 0, 0, 0, 0, 25, NULL, 2),
(3235, 0, 1650163047, 0, 'Banana Bay 1', 25000, 15, 0, 0, 0, 0, 25, NULL, 2),
(3236, 0, 1650163047, 0, 'Crocodile Bridge 1', 80000, 15, 0, 0, 0, 0, 42, NULL, 4),
(3237, 0, 1650163047, 0, 'Crocodile Bridge 2', 80000, 15, 0, 0, 0, 0, 36, NULL, 4),
(3238, 0, 1650163047, 0, 'Crocodile Bridge 3', 100000, 15, 0, 0, 0, 0, 49, NULL, 4),
(3239, 0, 1650163047, 0, 'Crocodile Bridge 4', 300000, 15, 0, 0, 0, 0, 158, NULL, 8),
(3240, 0, 1650163047, 0, 'Crocodile Bridge 5', 200000, 15, 0, 0, 0, 0, 137, NULL, 4),
(3241, 0, 1650163047, 0, 'Woodway 1', 80000, 15, 0, 0, 0, 0, 25, NULL, 2),
(3242, 0, 1650163047, 0, 'Woodway 2', 50000, 15, 0, 0, 0, 0, 20, NULL, 2),
(3243, 0, 1650163047, 0, 'Woodway 3', 150000, 15, 0, 0, 0, 0, 65, NULL, 4),
(3244, 0, 1650163047, 0, 'Woodway 4', 25000, 15, 0, 0, 0, 0, 24, NULL, 2),
(3245, 0, 1650163047, 0, 'Flamingo Flats 5', 150000, 15, 0, 0, 0, 0, 72, NULL, 2),
(3246, 0, 1650163047, 0, 'Flamingo Flats 4', 80000, 15, 0, 0, 0, 0, 36, NULL, 4),
(3247, 0, 1650163047, 0, 'Flamingo Flats 1', 50000, 15, 0, 0, 0, 0, 30, NULL, 4),
(3248, 0, 1650163047, 0, 'Flamingo Flats 2', 80000, 15, 0, 0, 0, 0, 42, NULL, 4),
(3249, 0, 1650163047, 0, 'Flamingo Flats 3', 50000, 15, 0, 0, 0, 0, 30, NULL, 4),
(3250, 0, 1650163047, 0, 'Jungle Edge 1', 200000, 15, 0, 0, 0, 0, 85, NULL, 6),
(3251, 0, 1650163047, 0, 'Jungle Edge 2', 200000, 15, 0, 0, 0, 0, 128, NULL, 6),
(3252, 0, 1650163047, 0, 'Jungle Edge 4', 80000, 15, 0, 0, 0, 0, 36, NULL, 4),
(3253, 0, 1650163047, 0, 'Jungle Edge 5', 80000, 15, 0, 0, 0, 0, 36, NULL, 4),
(3254, 0, 1650163047, 0, 'Jungle Edge 6', 25000, 15, 0, 0, 0, 0, 25, NULL, 2),
(3255, 0, 1650163047, 0, 'Jungle Edge 3', 80000, 15, 0, 0, 0, 0, 36, NULL, 4),
(3256, 0, 1650163047, 0, 'River Homes 3', 200000, 15, 0, 0, 0, 0, 140, NULL, 14),
(3257, 0, 1650163047, 0, 'River Homes 2b', 150000, 15, 0, 0, 0, 0, 49, NULL, 6),
(3258, 0, 1650163047, 0, 'River Homes 2a', 100000, 15, 0, 0, 0, 0, 49, NULL, 4),
(3259, 0, 1650163047, 0, 'River Homes 1', 300000, 15, 0, 0, 0, 0, 128, NULL, 6),
(3260, 0, 1650163047, 0, 'Coconut Quay 4', 150000, 15, 0, 0, 0, 0, 72, NULL, 6),
(3261, 0, 1650163047, 0, 'Coconut Quay 3', 200000, 15, 0, 0, 0, 0, 70, NULL, 8),
(3262, 0, 1650163047, 0, 'Coconut Quay 2', 100000, 15, 0, 0, 0, 0, 42, NULL, 4),
(3263, 0, 1650163047, 0, 'Coconut Quay 1', 150000, 15, 0, 0, 0, 0, 64, NULL, 4),
(3264, 0, 1650163047, 0, 'Shark Manor', 250000, 15, 0, 0, 0, 0, 240, NULL, 30),
(3265, 0, 1650163047, 0, 'Glacier Side 2', 300000, 16, 0, 0, 0, 0, 154, NULL, 6),
(3266, 0, 1650163047, 0, 'Glacier Side 1', 150000, 16, 0, 0, 0, 0, 65, NULL, 4),
(3267, 0, 1650163047, 0, 'Glacier Side 3', 150000, 16, 0, 0, 0, 0, 75, NULL, 4),
(3268, 0, 1650163047, 0, 'Glacier Side 4', 150000, 16, 0, 0, 0, 0, 70, NULL, 2),
(3269, 0, 1650163047, 0, 'Shelf Site', 300000, 16, 0, 0, 0, 0, 145, NULL, 6),
(3270, 0, 1650163047, 0, 'Spirit Homes 5', 150000, 16, 0, 0, 0, 0, 56, NULL, 4),
(3271, 0, 1650163047, 0, 'Spirit Homes 4', 80000, 16, 0, 0, 0, 0, 49, NULL, 2),
(3272, 0, 1650163047, 0, 'Spirit Homes 1', 150000, 16, 0, 0, 0, 0, 56, NULL, 4),
(3273, 0, 1650163047, 0, 'Spirit Homes 2', 150000, 16, 0, 0, 0, 0, 72, NULL, 4),
(3274, 0, 1650163047, 0, 'Spirit Homes 3', 300000, 16, 0, 0, 0, 0, 128, NULL, 6),
(3275, 0, 1650163047, 0, 'Arena Walk 3', 300000, 16, 0, 0, 0, 0, 126, NULL, 6),
(3276, 0, 1650163047, 0, 'Arena Walk 2', 150000, 16, 0, 0, 0, 0, 54, NULL, 4),
(3277, 0, 1650163047, 0, 'Arena Walk 1', 300000, 16, 0, 0, 0, 0, 128, NULL, 6),
(3278, 0, 1650163047, 0, 'Bears Paw 2', 300000, 16, 0, 0, 0, 0, 98, NULL, 4),
(3279, 0, 1650163047, 0, 'Bears Paw 1', 200000, 16, 0, 0, 0, 0, 72, NULL, 4),
(3280, 0, 1650163047, 0, 'Crystal Glance', 1000000, 16, 0, 0, 0, 0, 549, NULL, 48),
(3281, 0, 1650163047, 0, 'Shady Rocks 2', 200000, 16, 0, 0, 0, 0, 77, NULL, 8),
(3282, 0, 1650163047, 0, 'Shady Rocks 1', 300000, 16, 0, 0, 0, 0, 116, NULL, 8),
(3283, 0, 1650163047, 0, 'Shady Rocks 3', 300000, 16, 0, 0, 0, 0, 137, NULL, 6),
(3284, 0, 1650163047, 0, 'Shady Rocks 4 (Shop)', 200000, 16, 0, 0, 0, 0, 95, NULL, 4),
(3285, 0, 1650163047, 0, 'Shady Rocks 5', 300000, 16, 0, 0, 0, 0, 110, NULL, 4),
(3286, 0, 1650163047, 0, 'Tusk Flats 2', 80000, 16, 0, 0, 0, 0, 42, NULL, 4),
(3287, 0, 1650163047, 0, 'Tusk Flats 1', 80000, 16, 0, 0, 0, 0, 40, NULL, 4),
(3288, 0, 1650163047, 0, 'Tusk Flats 3', 80000, 16, 0, 0, 0, 0, 35, NULL, 4),
(3289, 0, 1650163047, 0, 'Tusk Flats 4', 25000, 16, 0, 0, 0, 0, 24, NULL, 2),
(3290, 0, 1650163047, 0, 'Tusk Flats 6', 50000, 16, 0, 0, 0, 0, 35, NULL, 4),
(3291, 0, 1650163047, 0, 'Tusk Flats 5', 25000, 16, 0, 0, 0, 0, 30, NULL, 2),
(3292, 0, 1650163047, 0, 'Corner Shop (Shop)', 200000, 16, 0, 0, 0, 0, 88, NULL, 4),
(3293, 0, 1650163047, 0, 'Bears Paw 5', 200000, 16, 0, 0, 0, 0, 81, NULL, 6),
(3294, 0, 1650163047, 0, 'Bears Paw 4', 400000, 16, 0, 0, 0, 0, 185, NULL, 8),
(3295, 0, 1650163047, 0, 'Trout Plaza 2', 150000, 16, 0, 0, 0, 0, 64, NULL, 4),
(3296, 0, 1650163047, 0, 'Trout Plaza 1', 200000, 16, 0, 0, 0, 0, 112, NULL, 4),
(3297, 0, 1650163047, 0, 'Trout Plaza 5 (Shop)', 300000, 16, 0, 0, 0, 0, 135, NULL, 4),
(3298, 0, 1650163047, 0, 'Trout Plaza 3', 80000, 16, 0, 0, 0, 0, 36, NULL, 2);
INSERT INTO `houses` (`id`, `owner`, `paid`, `warnings`, `name`, `rent`, `town_id`, `bid`, `bid_end`, `last_bid`, `highest_bidder`, `size`, `guildid`, `beds`) VALUES
(3299, 0, 1650163047, 0, 'Trout Plaza 4', 80000, 16, 0, 0, 0, 0, 45, NULL, 2),
(3300, 0, 1650163047, 0, 'Skiffs End 2', 80000, 16, 0, 0, 0, 0, 42, NULL, 4),
(3301, 0, 1650163047, 0, 'Skiffs End 1', 100000, 16, 0, 0, 0, 0, 70, NULL, 4),
(3302, 0, 1650163047, 0, 'Furrier Quarter 3', 100000, 16, 0, 0, 0, 0, 54, NULL, 4),
(3303, 0, 1650163047, 0, 'Fimbul Shelf 4', 100000, 16, 0, 0, 0, 0, 56, NULL, 4),
(3304, 0, 1650163047, 0, 'Fimbul Shelf 3', 100000, 16, 0, 0, 0, 0, 66, NULL, 4),
(3305, 0, 1650163047, 0, 'Furrier Quarter 2', 80000, 16, 0, 0, 0, 0, 56, NULL, 4),
(3306, 0, 1650163047, 0, 'Furrier Quarter 1', 150000, 16, 0, 0, 0, 0, 84, NULL, 6),
(3307, 0, 1650163047, 0, 'Fimbul Shelf 2', 100000, 16, 0, 0, 0, 0, 56, NULL, 4),
(3308, 0, 1650163047, 0, 'Fimbul Shelf 1', 80000, 16, 0, 0, 0, 0, 48, NULL, 4),
(3309, 0, 1650163047, 0, 'Bears Paw 3', 200000, 16, 0, 0, 0, 0, 82, NULL, 6),
(3310, 0, 1650163047, 0, 'Raven Corner 2', 150000, 16, 0, 0, 0, 0, 60, NULL, 6),
(3311, 0, 1650163047, 0, 'Raven Corner 1', 80000, 16, 0, 0, 0, 0, 45, NULL, 2),
(3312, 0, 1650163047, 0, 'Raven Corner 3', 100000, 16, 0, 0, 0, 0, 45, NULL, 2),
(3313, 0, 1650163047, 0, 'Mammoth Belly', 1000000, 16, 0, 0, 0, 0, 634, NULL, 60),
(3314, 0, 1650163047, 0, 'Darashia 3, Flat 01', 150000, 13, 0, 0, 0, 0, 42, NULL, 4),
(3315, 0, 1650163047, 0, 'Darashia 3, Flat 05', 150000, 13, 0, 0, 0, 0, 42, NULL, 2),
(3316, 0, 1650163047, 0, 'Darashia 3, Flat 02', 200000, 13, 0, 0, 0, 0, 66, NULL, 4),
(3317, 0, 1650163047, 0, 'Darashia 3, Flat 04', 150000, 13, 0, 0, 0, 0, 66, NULL, 4),
(3318, 0, 1650163047, 0, 'Darashia 3, Flat 03', 150000, 13, 0, 0, 0, 0, 48, NULL, 4),
(3319, 0, 1650163047, 0, 'Darashia 3, Flat 12', 200000, 13, 0, 0, 0, 0, 90, NULL, 10),
(3320, 0, 1650163047, 0, 'Darashia 3, Flat 11', 100000, 13, 0, 0, 0, 0, 42, NULL, 2),
(3321, 0, 1650163047, 0, 'Darashia 3, Flat 14', 200000, 13, 0, 0, 0, 0, 96, NULL, 6),
(3322, 0, 1650163047, 0, 'Darashia 3, Flat 13', 100000, 13, 0, 0, 0, 0, 48, NULL, 4),
(3323, 0, 1650163047, 0, 'Darashia 8, Flat 01', 300000, 13, 0, 0, 0, 0, 82, NULL, 4),
(3325, 0, 1650163047, 0, 'Darashia 8, Flat 05', 300000, 13, 0, 0, 0, 0, 92, NULL, 4),
(3326, 0, 1650163047, 0, 'Darashia 8, Flat 04', 200000, 13, 0, 0, 0, 0, 90, NULL, 4),
(3327, 0, 1650163047, 0, 'Darashia 8, Flat 03', 300000, 13, 0, 0, 0, 0, 171, NULL, 6),
(3328, 0, 1650163047, 0, 'Darashia 8, Flat 12', 150000, 13, 0, 0, 0, 0, 60, NULL, 4),
(3329, 0, 1650163047, 0, 'Darashia 8, Flat 11', 200000, 13, 0, 0, 0, 0, 72, NULL, 4),
(3330, 0, 1650163047, 0, 'Darashia 8, Flat 14', 150000, 13, 0, 0, 0, 0, 66, NULL, 4),
(3331, 0, 1650163047, 0, 'Darashia 8, Flat 13', 150000, 13, 0, 0, 0, 0, 78, NULL, 4),
(3332, 0, 1650163047, 0, 'Darashia, Villa', 800000, 13, 0, 0, 0, 0, 233, NULL, 8),
(3333, 0, 1650163047, 0, 'Darashia, Eastern Guildhall', 1000000, 13, 0, 0, 0, 0, 456, NULL, 32),
(3334, 0, 1650163047, 0, 'Darashia, Western Guildhall', 500000, 13, 0, 0, 0, 0, 376, NULL, 28),
(3335, 0, 1650163047, 0, 'Darashia 2, Flat 03', 100000, 13, 0, 0, 0, 0, 42, NULL, 2),
(3336, 0, 1650163047, 0, 'Darashia 2, Flat 02', 100000, 13, 0, 0, 0, 0, 42, NULL, 2),
(3337, 0, 1650163047, 0, 'Darashia 2, Flat 01', 150000, 13, 0, 0, 0, 0, 48, NULL, 2),
(3338, 0, 1650163047, 0, 'Darashia 2, Flat 04', 80000, 13, 0, 0, 0, 0, 24, NULL, 2),
(3339, 0, 1650163047, 0, 'Darashia 2, Flat 05', 150000, 13, 0, 0, 0, 0, 48, NULL, 4),
(3340, 0, 1650163047, 0, 'Darashia 2, Flat 06', 80000, 13, 0, 0, 0, 0, 24, NULL, 2),
(3341, 0, 1650163047, 0, 'Darashia 2, Flat 07', 150000, 13, 0, 0, 0, 0, 48, NULL, 2),
(3342, 0, 1650163047, 0, 'Darashia 2, Flat 13', 100000, 13, 0, 0, 0, 0, 42, NULL, 2),
(3343, 0, 1650163047, 0, 'Darashia 2, Flat 14', 50000, 13, 0, 0, 0, 0, 24, NULL, 2),
(3344, 0, 1650163047, 0, 'Darashia 2, Flat 15', 100000, 13, 0, 0, 0, 0, 48, NULL, 4),
(3345, 0, 1650163047, 0, 'Darashia 2, Flat 16', 80000, 13, 0, 0, 0, 0, 30, NULL, 2),
(3346, 0, 1650163047, 0, 'Darashia 2, Flat 17', 100000, 13, 0, 0, 0, 0, 42, NULL, 2),
(3347, 0, 1650163047, 0, 'Darashia 2, Flat 18', 100000, 13, 0, 0, 0, 0, 30, NULL, 2),
(3348, 0, 1650163047, 0, 'Darashia 2, Flat 11', 100000, 13, 0, 0, 0, 0, 42, NULL, 2),
(3349, 0, 1650163047, 0, 'Darashia 2, Flat 12', 80000, 13, 0, 0, 0, 0, 30, NULL, 2),
(3350, 0, 1650163047, 0, 'Darashia 1, Flat 03', 300000, 13, 0, 0, 0, 0, 96, NULL, 8),
(3351, 0, 1650163047, 0, 'Darashia 1, Flat 04', 100000, 13, 0, 0, 0, 0, 42, NULL, 2),
(3352, 0, 1650163047, 0, 'Darashia 1, Flat 02', 100000, 13, 0, 0, 0, 0, 42, NULL, 2),
(3353, 0, 1650163047, 0, 'Darashia 1, Flat 01', 100000, 13, 0, 0, 0, 0, 48, NULL, 4),
(3354, 0, 1650163047, 0, 'Darashia 1, Flat 05', 100000, 13, 0, 0, 0, 0, 48, NULL, 4),
(3355, 0, 1650163047, 0, 'Darashia 1, Flat 12', 150000, 13, 0, 0, 0, 0, 66, NULL, 4),
(3356, 0, 1650163047, 0, 'Darashia 1, Flat 13', 150000, 13, 0, 0, 0, 0, 72, NULL, 4),
(3357, 0, 1650163047, 0, 'Darashia 1, Flat 14', 200000, 13, 0, 0, 0, 0, 102, NULL, 10),
(3358, 0, 1650163047, 0, 'Darashia 1, Flat 11', 100000, 13, 0, 0, 0, 0, 48, NULL, 4),
(3359, 0, 1650163047, 0, 'Darashia 5, Flat 02', 150000, 13, 0, 0, 0, 0, 60, NULL, 4),
(3360, 0, 1650163047, 0, 'Darashia 5, Flat 01', 150000, 13, 0, 0, 0, 0, 48, NULL, 2),
(3361, 0, 1650163047, 0, 'Darashia 5, Flat 05', 100000, 13, 0, 0, 0, 0, 42, NULL, 2),
(3362, 0, 1650163047, 0, 'Darashia 5, Flat 04', 150000, 13, 0, 0, 0, 0, 66, NULL, 4),
(3363, 0, 1650163047, 0, 'Darashia 5, Flat 03', 150000, 13, 0, 0, 0, 0, 48, NULL, 2),
(3364, 0, 1650163047, 0, 'Darashia 5, Flat 11', 150000, 13, 0, 0, 0, 0, 66, NULL, 4),
(3365, 0, 1650163047, 0, 'Darashia 5, Flat 12', 150000, 13, 0, 0, 0, 0, 66, NULL, 4),
(3366, 0, 1650163047, 0, 'Darashia 5, Flat 13', 150000, 13, 0, 0, 0, 0, 72, NULL, 4),
(3367, 0, 1650163047, 0, 'Darashia 5, Flat 14', 150000, 13, 0, 0, 0, 0, 72, NULL, 4),
(3368, 0, 1650163047, 0, 'Darashia 6a', 300000, 13, 0, 0, 0, 0, 117, NULL, 4),
(3369, 0, 1650163047, 0, 'Darashia 6b', 300000, 13, 0, 0, 0, 0, 139, NULL, 4),
(3370, 0, 1650163047, 0, 'Darashia 4, Flat 02', 200000, 13, 0, 0, 0, 0, 66, NULL, 4),
(3371, 0, 1650163047, 0, 'Darashia 4, Flat 03', 150000, 13, 0, 0, 0, 0, 42, NULL, 2),
(3372, 0, 1650163047, 0, 'Darashia 4, Flat 04', 200000, 13, 0, 0, 0, 0, 72, NULL, 4),
(3373, 0, 1650163047, 0, 'Darashia 4, Flat 05', 150000, 13, 0, 0, 0, 0, 48, NULL, 4),
(3374, 0, 1650163047, 0, 'Darashia 4, Flat 01', 100000, 13, 0, 0, 0, 0, 48, NULL, 2),
(3375, 0, 1650163047, 0, 'Darashia 4, Flat 12', 200000, 13, 0, 0, 0, 0, 96, NULL, 6),
(3376, 0, 1650163047, 0, 'Darashia 4, Flat 11', 100000, 13, 0, 0, 0, 0, 42, NULL, 2),
(3377, 0, 1650163047, 0, 'Darashia 4, Flat 13', 200000, 13, 0, 0, 0, 0, 72, NULL, 4),
(3378, 0, 1650163047, 0, 'Darashia 4, Flat 14', 150000, 13, 0, 0, 0, 0, 78, NULL, 4),
(3379, 0, 1650163047, 0, 'Darashia 7, Flat 01', 100000, 13, 0, 0, 0, 0, 42, NULL, 2),
(3380, 0, 1650163047, 0, 'Darashia 7, Flat 02', 100000, 13, 0, 0, 0, 0, 42, NULL, 2),
(3381, 0, 1650163047, 0, 'Darashia 7, Flat 03', 200000, 13, 0, 0, 0, 0, 102, NULL, 8),
(3382, 0, 1650163047, 0, 'Darashia 7, Flat 05', 150000, 13, 0, 0, 0, 0, 42, NULL, 4),
(3383, 0, 1650163047, 0, 'Darashia 7, Flat 04', 150000, 13, 0, 0, 0, 0, 48, NULL, 2),
(3384, 0, 1650163047, 0, 'Darashia 7, Flat 12', 200000, 13, 0, 0, 0, 0, 96, NULL, 8),
(3385, 0, 1650163047, 0, 'Darashia 7, Flat 11', 100000, 13, 0, 0, 0, 0, 42, NULL, 2),
(3386, 0, 1650163047, 0, 'Darashia 7, Flat 14', 200000, 13, 0, 0, 0, 0, 102, NULL, 8),
(3387, 0, 1650163047, 0, 'Darashia 7, Flat 13', 100000, 13, 0, 0, 0, 0, 48, NULL, 2),
(3388, 0, 1650163047, 0, 'Pirate Shipwreck 1', 800000, 13, 0, 0, 0, 0, 205, NULL, 0),
(3389, 0, 1650163047, 0, 'Pirate Shipwreck 2', 800000, 13, 0, 0, 0, 0, 294, NULL, 0),
(3390, 0, 1650163047, 0, 'The Shelter', 250000, 14, 0, 0, 0, 0, 560, NULL, 62),
(3391, 0, 1650163047, 0, 'Litter Promenade 1', 25000, 14, 0, 0, 0, 0, 25, NULL, 4),
(3392, 0, 1650163047, 0, 'Litter Promenade 2', 50000, 14, 0, 0, 0, 0, 25, NULL, 2),
(3394, 0, 1650163047, 0, 'Litter Promenade 3', 25000, 14, 0, 0, 0, 0, 36, NULL, 2),
(3395, 0, 1650163047, 0, 'Litter Promenade 4', 25000, 14, 0, 0, 0, 0, 30, NULL, 2),
(3396, 0, 1650163047, 0, 'Rum Alley 3', 25000, 14, 0, 0, 0, 0, 28, NULL, 2),
(3397, 0, 1650163047, 0, 'Straycat\'s Corner 5', 80000, 14, 0, 0, 0, 0, 48, NULL, 4),
(3398, 0, 1650163047, 0, 'Straycat\'s Corner 6', 25000, 14, 0, 0, 0, 0, 25, NULL, 2),
(3399, 0, 1650163047, 0, 'Litter Promenade 5', 25000, 14, 0, 0, 0, 0, 35, NULL, 4),
(3401, 0, 1650163047, 0, 'Straycat\'s Corner 4', 50000, 14, 0, 0, 0, 0, 40, NULL, 4),
(3402, 0, 1650163047, 0, 'Straycat\'s Corner 2', 50000, 14, 0, 0, 0, 0, 49, NULL, 2),
(3403, 0, 1650163047, 0, 'Straycat\'s Corner 1', 25000, 14, 0, 0, 0, 0, 25, NULL, 2),
(3404, 0, 1650163047, 0, 'Rum Alley 2', 25000, 14, 0, 0, 0, 0, 25, NULL, 2),
(3405, 0, 1650163047, 0, 'Rum Alley 1', 25000, 14, 0, 0, 0, 0, 36, NULL, 2),
(3406, 0, 1650163047, 0, 'Smuggler Backyard 3', 50000, 14, 0, 0, 0, 0, 40, NULL, 4),
(3407, 0, 1650163047, 0, 'Shady Trail 3', 25000, 14, 0, 0, 0, 0, 25, NULL, 2),
(3408, 0, 1650163047, 0, 'Shady Trail 1', 100000, 14, 0, 0, 0, 0, 48, NULL, 10),
(3409, 0, 1650163047, 0, 'Shady Trail 2', 25000, 14, 0, 0, 0, 0, 30, NULL, 4),
(3410, 0, 1650163047, 0, 'Smuggler Backyard 4', 25000, 14, 0, 0, 0, 0, 30, NULL, 2),
(3411, 0, 1650163047, 0, 'Smuggler Backyard 2', 25000, 14, 0, 0, 0, 0, 40, NULL, 4),
(3412, 0, 1650163047, 0, 'Smuggler Backyard 1', 25000, 14, 0, 0, 0, 0, 40, NULL, 4),
(3413, 0, 1650163047, 0, 'Smuggler Backyard 5', 25000, 14, 0, 0, 0, 0, 35, NULL, 4),
(3414, 0, 1650163047, 0, 'Sugar Street 1', 200000, 14, 0, 0, 0, 0, 84, NULL, 6),
(3415, 0, 1650163047, 0, 'Sugar Street 2', 150000, 14, 0, 0, 0, 0, 84, NULL, 6),
(3416, 0, 1650163047, 0, 'Sugar Street 3a', 100000, 14, 0, 0, 0, 0, 48, NULL, 6),
(3417, 0, 1650163047, 0, 'Sugar Street 3b', 150000, 14, 0, 0, 0, 0, 66, NULL, 6),
(3418, 0, 1650163047, 0, 'Sugar Street 4d', 50000, 14, 0, 0, 0, 0, 24, NULL, 4),
(3419, 0, 1650163047, 0, 'Sugar Street 4c', 25000, 14, 0, 0, 0, 0, 24, NULL, 2),
(3420, 0, 1650163047, 0, 'Sugar Street 4b', 100000, 14, 0, 0, 0, 0, 30, NULL, 4),
(3421, 0, 1650163047, 0, 'Sugar Street 4a', 80000, 14, 0, 0, 0, 0, 36, NULL, 4),
(3422, 0, 1650163047, 0, 'Harvester\'s Haven, Flat 01', 50000, 14, 0, 0, 0, 0, 30, NULL, 4),
(3423, 0, 1650163047, 0, 'Harvester\'s Haven, Flat 03', 50000, 14, 0, 0, 0, 0, 30, NULL, 4),
(3424, 0, 1650163047, 0, 'Harvester\'s Haven, Flat 05', 50000, 14, 0, 0, 0, 0, 36, NULL, 4),
(3425, 0, 1650163047, 0, 'Harvester\'s Haven, Flat 06', 50000, 14, 0, 0, 0, 0, 30, NULL, 4),
(3426, 0, 1650163047, 0, 'Harvester\'s Haven, Flat 04', 50000, 14, 0, 0, 0, 0, 30, NULL, 4),
(3427, 0, 1650163047, 0, 'Harvester\'s Haven, Flat 02', 50000, 14, 0, 0, 0, 0, 36, NULL, 4),
(3428, 0, 1650163047, 0, 'Harvester\'s Haven, Flat 07', 80000, 14, 0, 0, 0, 0, 30, NULL, 4),
(3429, 0, 1650163047, 0, 'Harvester\'s Haven, Flat 09', 50000, 14, 0, 0, 0, 0, 30, NULL, 4),
(3430, 0, 1650163047, 0, 'Harvester\'s Haven, Flat 11', 25000, 14, 0, 0, 0, 0, 36, NULL, 4),
(3431, 0, 1650163047, 0, 'Harvester\'s Haven, Flat 08', 50000, 14, 0, 0, 0, 0, 30, NULL, 4),
(3432, 0, 1650163047, 0, 'Harvester\'s Haven, Flat 10', 50000, 14, 0, 0, 0, 0, 30, NULL, 4),
(3433, 0, 1650163047, 0, 'Harvester\'s Haven, Flat 12', 25000, 14, 0, 0, 0, 0, 36, NULL, 4),
(3434, 0, 1650163047, 0, 'Marble Lane 3', 600000, 14, 0, 0, 0, 0, 240, NULL, 8),
(3435, 0, 1650163047, 0, 'Marble Lane 2', 400000, 14, 0, 0, 0, 0, 200, NULL, 6),
(3436, 0, 1650163047, 0, 'Marble Lane 4', 400000, 14, 0, 0, 0, 0, 192, NULL, 8),
(3437, 0, 1650163047, 0, 'Admiral\'s Avenue 1', 400000, 14, 0, 0, 0, 0, 176, NULL, 4),
(3438, 0, 1650163047, 0, 'Admiral\'s Avenue 2', 400000, 14, 0, 0, 0, 0, 183, NULL, 8),
(3439, 0, 1650163047, 0, 'Admiral\'s Avenue 3', 300000, 14, 0, 0, 0, 0, 144, NULL, 4),
(3440, 0, 1650163047, 0, 'Ivory Circle 1', 400000, 14, 0, 0, 0, 0, 160, NULL, 4),
(3441, 0, 1650163047, 0, 'Sugar Street 5', 150000, 14, 0, 0, 0, 0, 48, NULL, 4),
(3442, 0, 1650163047, 0, 'Freedom Street 1', 200000, 14, 0, 0, 0, 0, 84, NULL, 4),
(3443, 0, 1650163047, 0, 'Trader\'s Point 1', 200000, 14, 0, 0, 0, 0, 77, NULL, 4),
(3444, 0, 1650163047, 0, 'Trader\'s Point 2 (Shop)', 600000, 14, 0, 0, 0, 0, 195, NULL, 4),
(3445, 0, 1650163047, 0, 'Trader\'s Point 3 (Shop)', 600000, 14, 0, 0, 0, 0, 198, NULL, 4),
(3446, 0, 1650163047, 0, 'Ivory Mansion', 800000, 14, 0, 0, 0, 0, 455, NULL, 0),
(3447, 0, 1650163047, 0, 'Ivory Circle 2', 400000, 14, 0, 0, 0, 0, 196, NULL, 4),
(3448, 0, 1650163047, 0, 'Ivy Cottage', 500000, 14, 0, 0, 0, 0, 876, NULL, 52),
(3449, 0, 1650163047, 0, 'Marble Lane 1', 600000, 14, 0, 0, 0, 0, 320, NULL, 12),
(3450, 0, 1650163047, 0, 'Freedom Street 2', 400000, 14, 0, 0, 0, 0, 208, NULL, 8),
(3452, 0, 1650163047, 0, 'Meriana Beach', 150000, 14, 0, 0, 0, 0, 219, NULL, 6),
(3453, 0, 1650163047, 0, 'The Tavern 1a', 150000, 14, 0, 0, 0, 0, 73, NULL, 8),
(3454, 0, 1650163047, 0, 'The Tavern 1b', 100000, 14, 0, 0, 0, 0, 54, NULL, 4),
(3455, 0, 1650163047, 0, 'The Tavern 1c', 200000, 14, 0, 0, 0, 0, 126, NULL, 6),
(3456, 0, 1650163047, 0, 'The Tavern 1d', 100000, 14, 0, 0, 0, 0, 54, NULL, 4),
(3457, 0, 1650163047, 0, 'The Tavern 2a', 300000, 14, 0, 0, 0, 0, 163, NULL, 10),
(3458, 0, 1650163047, 0, 'The Tavern 2b', 100000, 14, 0, 0, 0, 0, 57, NULL, 4),
(3459, 0, 1650163047, 0, 'The Tavern 2d', 100000, 14, 0, 0, 0, 0, 40, NULL, 4),
(3460, 0, 1650163047, 0, 'The Tavern 2c', 50000, 14, 0, 0, 0, 0, 40, NULL, 2),
(3461, 0, 1650163047, 0, 'The Yeah Beach Project', 150000, 14, 0, 0, 0, 0, 202, NULL, 6),
(3462, 0, 1650163047, 0, 'Mountain Hideout', 500000, 14, 0, 0, 0, 0, 511, NULL, 34),
(3463, 0, 1650163047, 0, 'Darashia 8, Flat 02', 300000, 13, 0, 0, 0, 0, 135, NULL, 4),
(3464, 0, 1650163047, 0, 'Castle, Basement, Flat 01', 50000, 11, 0, 0, 0, 0, 30, NULL, 2),
(3465, 0, 1650163047, 0, 'Castle, Basement, Flat 02', 50000, 11, 0, 0, 0, 0, 24, NULL, 2),
(3466, 0, 1650163047, 0, 'Castle, Basement, Flat 03', 50000, 11, 0, 0, 0, 0, 24, NULL, 2),
(3467, 0, 1650163047, 0, 'Castle, Basement, Flat 05', 50000, 11, 0, 0, 0, 0, 24, NULL, 2),
(3468, 0, 1650163047, 0, 'Castle, Basement, Flat 04', 50000, 11, 0, 0, 0, 0, 24, NULL, 2),
(3469, 0, 1650163047, 0, 'Castle, Basement, Flat 06', 50000, 11, 0, 0, 0, 0, 24, NULL, 2),
(3470, 0, 1650163047, 0, 'Castle, Basement, Flat 07', 50000, 11, 0, 0, 0, 0, 24, NULL, 2),
(3471, 0, 1650163047, 0, 'Castle, Basement, Flat 09', 25000, 11, 0, 0, 0, 0, 30, NULL, 2),
(3472, 0, 1650163047, 0, 'Castle, Basement, Flat 08', 50000, 11, 0, 0, 0, 0, 30, NULL, 2),
(3473, 0, 1650163047, 0, 'Cormaya 1', 150000, 11, 0, 0, 0, 0, 49, NULL, 4),
(3474, 0, 1650163047, 0, 'Cormaya Flats, Flat 01', 25000, 11, 0, 0, 0, 0, 20, NULL, 2),
(3475, 0, 1650163047, 0, 'Cormaya Flats, Flat 02', 25000, 11, 0, 0, 0, 0, 20, NULL, 2),
(3476, 0, 1650163047, 0, 'Cormaya Flats, Flat 03', 50000, 11, 0, 0, 0, 0, 35, NULL, 4),
(3477, 0, 1650163047, 0, 'Cormaya Flats, Flat 06', 25000, 11, 0, 0, 0, 0, 20, NULL, 2),
(3478, 0, 1650163047, 0, 'Cormaya Flats, Flat 05', 25000, 11, 0, 0, 0, 0, 20, NULL, 2),
(3479, 0, 1650163047, 0, 'Cormaya Flats, Flat 04', 50000, 11, 0, 0, 0, 0, 35, NULL, 4),
(3480, 0, 1650163047, 0, 'Cormaya Flats, Flat 11', 100000, 11, 0, 0, 0, 0, 45, NULL, 4),
(3482, 0, 1650163047, 0, 'Cormaya Flats, Flat 13', 25000, 11, 0, 0, 0, 0, 30, NULL, 4),
(3483, 0, 1650163047, 0, 'Cormaya Flats, Flat 12', 100000, 11, 0, 0, 0, 0, 45, NULL, 4),
(3485, 0, 1650163047, 0, 'Cormaya Flats, Flat 14', 25000, 11, 0, 0, 0, 0, 30, NULL, 4),
(3486, 0, 1650163047, 0, 'Cormaya 2', 300000, 11, 0, 0, 0, 0, 144, NULL, 6),
(3487, 0, 1650163047, 0, 'Cormaya 4', 150000, 11, 0, 0, 0, 0, 63, NULL, 4),
(3488, 0, 1650163047, 0, 'Cormaya 3', 200000, 11, 0, 0, 0, 0, 72, NULL, 4),
(3489, 0, 1650163047, 0, 'Cormaya 6', 200000, 11, 0, 0, 0, 0, 84, NULL, 4),
(3490, 0, 1650163047, 0, 'Cormaya 7', 200000, 11, 0, 0, 0, 0, 84, NULL, 4),
(3491, 0, 1650163047, 0, 'Cormaya 8', 200000, 11, 0, 0, 0, 0, 106, NULL, 4),
(3492, 0, 1650163047, 0, 'Cormaya 5', 300000, 11, 0, 0, 0, 0, 165, NULL, 6),
(3493, 0, 1650163047, 0, 'Castle of the White Dragon', 1000000, 11, 0, 0, 0, 0, 888, NULL, 38),
(3494, 0, 1650163047, 0, 'Cormaya 9b', 150000, 11, 0, 0, 0, 0, 88, NULL, 4),
(3495, 0, 1650163047, 0, 'Cormaya 9a', 80000, 11, 0, 0, 0, 0, 48, NULL, 4),
(3496, 0, 1650163047, 0, 'Cormaya 9d', 150000, 11, 0, 0, 0, 0, 88, NULL, 4),
(3497, 0, 1650163047, 0, 'Cormaya 9c', 80000, 11, 0, 0, 0, 0, 48, NULL, 4),
(3498, 0, 1650163047, 0, 'Cormaya 10', 300000, 11, 0, 0, 0, 0, 144, NULL, 6),
(3499, 0, 1650163047, 0, 'Cormaya 11', 150000, 11, 0, 0, 0, 0, 72, NULL, 4),
(3500, 0, 1650163047, 0, 'Edron Flats, Flat 22', 50000, 11, 0, 0, 0, 0, 25, NULL, 2),
(3501, 0, 1650163047, 0, 'Magic Academy, Shop', 150000, 11, 0, 0, 0, 0, 48, NULL, 2),
(3502, 0, 1650163047, 0, 'Magic Academy, Flat 1', 100000, 11, 0, 0, 0, 0, 55, NULL, 6),
(3503, 0, 1650163047, 0, 'Magic Academy, Guild', 500000, 11, 0, 0, 0, 0, 401, NULL, 28),
(3504, 0, 1650163047, 0, 'Magic Academy, Flat 2', 80000, 11, 0, 0, 0, 0, 53, NULL, 4),
(3505, 0, 1650163047, 0, 'Magic Academy, Flat 3', 100000, 11, 0, 0, 0, 0, 53, NULL, 2),
(3506, 0, 1650163047, 0, 'Magic Academy, Flat 4', 100000, 11, 0, 0, 0, 0, 50, NULL, 4),
(3507, 0, 1650163047, 0, 'Magic Academy, Flat 5', 80000, 11, 0, 0, 0, 0, 53, NULL, 2),
(3508, 0, 1650163047, 0, 'Oskahl I f', 100000, 10, 0, 0, 0, 0, 35, NULL, 2),
(3509, 0, 1650163047, 0, 'Oskahl I g', 100000, 10, 0, 0, 0, 0, 42, NULL, 4),
(3510, 0, 1650163047, 0, 'Oskahl I h', 150000, 10, 0, 0, 0, 0, 74, NULL, 6),
(3511, 0, 1650163047, 0, 'Oskahl I i', 80000, 10, 0, 0, 0, 0, 36, NULL, 2),
(3512, 0, 1650163047, 0, 'Oskahl I j', 80000, 10, 0, 0, 0, 0, 36, NULL, 2),
(3513, 0, 1650163047, 0, 'Oskahl I b', 80000, 10, 0, 0, 0, 0, 30, NULL, 2),
(3514, 0, 1650163047, 0, 'Oskahl I d', 100000, 10, 0, 0, 0, 0, 42, NULL, 4),
(3515, 0, 1650163047, 0, 'Oskahl I e', 80000, 10, 0, 0, 0, 0, 36, NULL, 2),
(3516, 0, 1650163047, 0, 'Oskahl I c', 80000, 10, 0, 0, 0, 0, 36, NULL, 2),
(3517, 0, 1650163047, 0, 'Chameken I', 100000, 10, 0, 0, 0, 0, 36, NULL, 2),
(3518, 0, 1650163047, 0, 'Chameken II', 80000, 10, 0, 0, 0, 0, 36, NULL, 2),
(3519, 0, 1650163047, 0, 'Charsirakh III', 50000, 10, 0, 0, 0, 0, 36, NULL, 2),
(3520, 0, 1650163047, 0, 'Charsirakh II', 100000, 10, 0, 0, 0, 0, 49, NULL, 4),
(3521, 0, 1650163047, 0, 'Murkhol I a', 80000, 10, 0, 0, 0, 0, 48, NULL, 4),
(3523, 0, 1650163047, 0, 'Murkhol I c', 50000, 10, 0, 0, 0, 0, 24, NULL, 2),
(3524, 0, 1650163047, 0, 'Murkhol I b', 50000, 10, 0, 0, 0, 0, 24, NULL, 2),
(3525, 0, 1650163047, 0, 'Charsirakh I b', 150000, 10, 0, 0, 0, 0, 64, NULL, 4),
(3526, 0, 1650163047, 0, 'Harrah I', 250000, 10, 0, 0, 0, 0, 232, NULL, 20),
(3527, 0, 1650163047, 0, 'Thanah I d', 200000, 10, 0, 0, 0, 0, 84, NULL, 8),
(3528, 0, 1650163047, 0, 'Thanah I c', 200000, 10, 0, 0, 0, 0, 112, NULL, 6),
(3529, 0, 1650163047, 0, 'Thanah I b', 150000, 10, 0, 0, 0, 0, 100, NULL, 6),
(3530, 0, 1650163047, 0, 'Thanah I a', 25000, 10, 0, 0, 0, 0, 36, NULL, 2),
(3531, 0, 1650163047, 0, 'Othehothep I c', 150000, 10, 0, 0, 0, 0, 60, NULL, 6),
(3532, 0, 1657871845, 1, 'Othehothep I d', 150000, 10, 0, 0, 0, 0, 84, NULL, 8),
(3533, 0, 1650163047, 0, 'Othehothep I b', 100000, 10, 0, 0, 0, 0, 64, NULL, 4),
(3534, 0, 1650163047, 0, 'Othehothep II c', 80000, 10, 0, 0, 0, 0, 30, NULL, 2),
(3535, 0, 1650163047, 0, 'Othehothep II d', 80000, 10, 0, 0, 0, 0, 35, NULL, 2),
(3536, 0, 1650163047, 0, 'Othehothep II e', 150000, 10, 0, 0, 0, 0, 48, NULL, 4),
(3537, 0, 1650163047, 0, 'Othehothep II f', 100000, 10, 0, 0, 0, 0, 56, NULL, 4),
(3538, 0, 1650163047, 0, 'Othehothep II b', 150000, 10, 0, 0, 0, 0, 81, NULL, 6),
(3539, 0, 1650163047, 0, 'Othehothep II a', 25000, 10, 0, 0, 0, 0, 25, NULL, 2),
(3540, 0, 1650163047, 0, 'Mothrem I', 80000, 10, 0, 0, 0, 0, 49, NULL, 4),
(3541, 0, 1650163047, 0, 'Arakmehn I', 100000, 10, 0, 0, 0, 0, 56, NULL, 6),
(3542, 0, 1650163047, 0, 'Arakmehn II', 80000, 10, 0, 0, 0, 0, 49, NULL, 2),
(3543, 0, 1650163047, 0, 'Arakmehn III', 100000, 10, 0, 0, 0, 0, 49, NULL, 4),
(3544, 0, 1650163047, 0, 'Arakmehn IV', 100000, 10, 0, 0, 0, 0, 56, NULL, 4),
(3545, 0, 1650163047, 0, 'Unklath II b', 50000, 10, 0, 0, 0, 0, 25, NULL, 2),
(3546, 0, 1650163047, 0, 'Unklath II c', 50000, 10, 0, 0, 0, 0, 30, NULL, 2),
(3547, 0, 1650163047, 0, 'Unklath II d', 100000, 10, 0, 0, 0, 0, 66, NULL, 4),
(3548, 0, 1650163047, 0, 'Unklath II a', 50000, 10, 0, 0, 0, 0, 49, NULL, 2),
(3549, 0, 1650163047, 0, 'Rathal I b', 50000, 10, 0, 0, 0, 0, 25, NULL, 2),
(3550, 0, 1650163047, 0, 'Rathal I c', 25000, 10, 0, 0, 0, 0, 30, NULL, 2),
(3551, 0, 1650163047, 0, 'Rathal I d', 50000, 10, 0, 0, 0, 0, 30, NULL, 4),
(3552, 0, 1650163047, 0, 'Rathal I e', 50000, 10, 0, 0, 0, 0, 36, NULL, 4),
(3553, 0, 1650163047, 0, 'Rathal I a', 80000, 10, 0, 0, 0, 0, 49, NULL, 4),
(3554, 0, 1650163047, 0, 'Rathal II b', 50000, 10, 0, 0, 0, 0, 25, NULL, 2),
(3555, 0, 1650163047, 0, 'Rathal II c', 50000, 10, 0, 0, 0, 0, 30, NULL, 2),
(3556, 0, 1650163047, 0, 'Rathal II d', 100000, 10, 0, 0, 0, 0, 66, NULL, 4),
(3557, 0, 1650163047, 0, 'Rathal II a', 80000, 10, 0, 0, 0, 0, 49, NULL, 2),
(3558, 0, 1650163047, 0, 'Esuph I', 50000, 10, 0, 0, 0, 0, 36, NULL, 2),
(3559, 0, 1650163047, 0, 'Esuph II b', 100000, 10, 0, 0, 0, 0, 64, NULL, 4),
(3560, 0, 1650163047, 0, 'Esuph II a', 25000, 10, 0, 0, 0, 0, 20, NULL, 2),
(3561, 0, 1650163047, 0, 'Esuph III b', 100000, 10, 0, 0, 0, 0, 64, NULL, 4),
(3562, 0, 1650163047, 0, 'Esuph III a', 25000, 10, 0, 0, 0, 0, 20, NULL, 2),
(3564, 0, 1650163047, 0, 'Esuph IV c', 80000, 10, 0, 0, 0, 0, 43, NULL, 4),
(3565, 0, 1650163047, 0, 'Esuph IV d', 25000, 10, 0, 0, 0, 0, 38, NULL, 2),
(3566, 0, 1650163047, 0, 'Esuph IV a', 25000, 10, 0, 0, 0, 0, 25, NULL, 2),
(3567, 0, 1650163047, 0, 'Horakhal', 250000, 10, 0, 0, 0, 0, 332, NULL, 28),
(3568, 0, 1650163047, 0, 'Botham II d', 100000, 10, 0, 0, 0, 0, 49, NULL, 4),
(3569, 0, 1650163047, 0, 'Botham II e', 100000, 10, 0, 0, 0, 0, 49, NULL, 4),
(3570, 0, 1650163047, 0, 'Botham II f', 80000, 10, 0, 0, 0, 0, 49, NULL, 4),
(3571, 0, 1650163047, 0, 'Botham II g', 80000, 10, 0, 0, 0, 0, 49, NULL, 4),
(3572, 0, 1650163047, 0, 'Botham II c', 100000, 10, 0, 0, 0, 0, 40, NULL, 4),
(3573, 0, 1650163047, 0, 'Botham II b', 100000, 10, 0, 0, 0, 0, 60, NULL, 4),
(3574, 0, 1650163047, 0, 'Botham II a', 25000, 10, 0, 0, 0, 0, 36, NULL, 2),
(3575, 0, 1650163047, 0, 'Botham III f', 150000, 10, 0, 0, 0, 0, 56, NULL, 6),
(3576, 0, 1650163047, 0, 'Botham III h', 200000, 10, 0, 0, 0, 0, 113, NULL, 6),
(3577, 0, 1650163047, 0, 'Botham III g', 100000, 10, 0, 0, 0, 0, 56, NULL, 4),
(3578, 0, 1650163047, 0, 'Botham III b', 50000, 10, 0, 0, 0, 0, 25, NULL, 4),
(3579, 0, 1650163047, 0, 'Botham III c', 25000, 10, 0, 0, 0, 0, 30, NULL, 2),
(3581, 0, 1650163047, 0, 'Botham III e', 100000, 10, 0, 0, 0, 0, 66, NULL, 4),
(3582, 0, 1650163047, 0, 'Botham III a', 80000, 10, 0, 0, 0, 0, 49, NULL, 4),
(3583, 0, 1650163047, 0, 'Botham IV f', 100000, 10, 0, 0, 0, 0, 49, NULL, 4),
(3584, 0, 1650163047, 0, 'Botham IV h', 100000, 10, 0, 0, 0, 0, 56, NULL, 2),
(3585, 0, 1650163047, 0, 'Botham IV i', 150000, 10, 0, 0, 0, 0, 56, NULL, 6),
(3586, 0, 1650163047, 0, 'Botham IV g', 100000, 10, 0, 0, 0, 0, 64, NULL, 4),
(3587, 0, 1650163047, 0, 'Botham IV e', 100000, 10, 0, 0, 0, 0, 121, NULL, 8),
(3591, 0, 1650163047, 0, 'Botham IV a', 100000, 10, 0, 0, 0, 0, 49, NULL, 4),
(3592, 0, 1650163047, 0, 'Ramen Tah', 250000, 10, 0, 0, 0, 0, 227, NULL, 32),
(3593, 0, 1650163047, 0, 'Botham I c', 150000, 10, 0, 0, 0, 0, 49, NULL, 4),
(3594, 0, 1650163047, 0, 'Botham I e', 80000, 10, 0, 0, 0, 0, 49, NULL, 4),
(3595, 0, 1650163047, 0, 'Botham I d', 150000, 10, 0, 0, 0, 0, 98, NULL, 6),
(3596, 0, 1650163047, 0, 'Botham I b', 150000, 10, 0, 0, 0, 0, 100, NULL, 6),
(3597, 0, 1650163047, 0, 'Botham I a', 50000, 10, 0, 0, 0, 0, 40, NULL, 2),
(3598, 0, 1650163047, 0, 'Charsirakh I a', 25000, 10, 0, 0, 0, 0, 20, NULL, 2),
(3599, 0, 1650163047, 0, 'Low Waters Observatory', 400000, 10, 0, 0, 0, 0, 743, NULL, 10),
(3600, 0, 1650163047, 0, 'Oskahl I a', 150000, 10, 0, 0, 0, 0, 64, NULL, 4),
(3601, 0, 1650163047, 0, 'Othehothep I a', 25000, 10, 0, 0, 0, 0, 20, NULL, 2),
(3602, 0, 1650163047, 0, 'Othehothep III a', 25000, 10, 0, 0, 0, 0, 20, NULL, 2),
(3603, 0, 1650163047, 0, 'Othehothep III b', 80000, 10, 0, 0, 0, 0, 64, NULL, 4),
(3604, 0, 1650163047, 0, 'Othehothep III c', 80000, 10, 0, 0, 0, 0, 30, NULL, 4),
(3605, 0, 1650163047, 0, 'Othehothep III d', 80000, 10, 0, 0, 0, 0, 42, NULL, 2),
(3606, 0, 1650163047, 0, 'Othehothep III e', 50000, 10, 0, 0, 0, 0, 35, NULL, 2),
(3607, 0, 1650163047, 0, 'Othehothep III f', 50000, 10, 0, 0, 0, 0, 37, NULL, 2),
(3608, 0, 1650163047, 0, 'Unklath I f', 100000, 10, 0, 0, 0, 0, 49, NULL, 4),
(3609, 0, 1650163047, 0, 'Unklath I g', 100000, 10, 0, 0, 0, 0, 56, NULL, 2),
(3610, 0, 1650163047, 0, 'Unklath I d', 150000, 10, 0, 0, 0, 0, 56, NULL, 6),
(3611, 0, 1650163047, 0, 'Unklath I e', 150000, 10, 0, 0, 0, 0, 64, NULL, 4),
(3612, 0, 1650163047, 0, 'Unklath I b', 100000, 10, 0, 0, 0, 0, 55, NULL, 4),
(3613, 0, 1650163047, 0, 'Unklath I c', 100000, 10, 0, 0, 0, 0, 66, NULL, 4),
(3614, 0, 1650163047, 0, 'Unklath I a', 100000, 10, 0, 0, 0, 0, 49, NULL, 4),
(3615, 0, 1650163047, 0, 'Thanah II a', 25000, 10, 0, 0, 0, 0, 36, NULL, 2),
(3616, 0, 1650163047, 0, 'Thanah II b', 50000, 10, 0, 0, 0, 0, 20, NULL, 2),
(3617, 0, 1650163047, 0, 'Thanah II d', 50000, 10, 0, 0, 0, 0, 20, NULL, 2),
(3618, 0, 1650163047, 0, 'Thanah II e', 25000, 10, 0, 0, 0, 0, 16, NULL, 2),
(3619, 0, 1650163047, 0, 'Thanah II c', 25000, 10, 0, 0, 0, 0, 24, NULL, 2),
(3620, 0, 1650163047, 0, 'Thanah II f', 150000, 10, 0, 0, 0, 0, 86, NULL, 6),
(3621, 0, 1650163047, 0, 'Thanah II g', 100000, 10, 0, 0, 0, 0, 51, NULL, 4),
(3622, 0, 1650163047, 0, 'Thanah II h', 100000, 10, 0, 0, 0, 0, 55, NULL, 4),
(3623, 0, 1650163047, 0, 'Thrarhor I a (Shop)', 50000, 10, 0, 0, 0, 0, 32, NULL, 2),
(3624, 0, 1650163047, 0, 'Thrarhor I c (Shop)', 50000, 10, 0, 0, 0, 0, 32, NULL, 2),
(3625, 0, 1650163047, 0, 'Thrarhor I d (Shop)', 80000, 10, 0, 0, 0, 0, 32, NULL, 2),
(3626, 0, 1650163047, 0, 'Thrarhor I b (Shop)', 50000, 10, 0, 0, 0, 0, 28, NULL, 2),
(3627, 0, 1650163047, 0, 'Uthemath I a', 25000, 10, 0, 0, 0, 0, 20, NULL, 2),
(3628, 0, 1650163047, 0, 'Uthemath I b', 50000, 10, 0, 0, 0, 0, 36, NULL, 2),
(3629, 0, 1650163047, 0, 'Uthemath I c', 80000, 10, 0, 0, 0, 0, 45, NULL, 4),
(3630, 0, 1650163047, 0, 'Uthemath I d', 80000, 10, 0, 0, 0, 0, 30, NULL, 2),
(3631, 0, 1650163047, 0, 'Uthemath I e', 80000, 10, 0, 0, 0, 0, 35, NULL, 4),
(3632, 0, 1650163047, 0, 'Uthemath I f', 150000, 10, 0, 0, 0, 0, 104, NULL, 6),
(3633, 0, 1650163047, 0, 'Uthemath II', 250000, 10, 0, 0, 0, 0, 170, NULL, 16),
(3634, 0, 1650163047, 0, 'Marketplace 1', 400000, 22, 0, 0, 0, 0, 137, NULL, 2),
(3635, 0, 1650163047, 0, 'Marketplace 2', 400000, 22, 0, 0, 0, 0, 148, NULL, 4),
(3636, 0, 1650163047, 0, 'Quay 1', 200000, 22, 0, 0, 0, 0, 124, NULL, 4),
(3637, 0, 1650163047, 0, 'Quay 2', 200000, 22, 0, 0, 0, 0, 185, NULL, 6),
(3638, 0, 1650163047, 0, 'Halls of Sun and Sea', 1000000, 22, 0, 0, 0, 0, 536, NULL, 18),
(3639, 0, 1650163047, 0, 'Palace Vicinity', 200000, 22, 0, 0, 0, 0, 198, NULL, 4),
(3640, 0, 1650163047, 0, 'Wave Tower', 400000, 22, 0, 0, 0, 0, 341, NULL, 8),
(3641, 0, 1650163047, 0, 'Old Sanctuary of God King Qjell', 300000, 18, 0, 0, 0, 0, 701, NULL, 12),
(3642, 0, 1650163047, 0, 'Old Heritage Estate', 600000, 20, 0, 0, 0, 0, 435, NULL, 14),
(3643, 0, 1650163047, 0, 'Rathleton Plaza 4', 400000, 20, 0, 0, 0, 0, 200, NULL, 4),
(3644, 0, 1650163047, 0, 'Rathleton Plaza 3', 400000, 20, 0, 0, 0, 0, 224, NULL, 6),
(3645, 0, 1650163047, 0, 'Rathleton Plaza 2', 400000, 20, 0, 0, 0, 0, 112, NULL, 4),
(3646, 0, 1650163047, 0, 'Rathleton Plaza 1', 300000, 20, 0, 0, 0, 0, 120, NULL, 4),
(3647, 0, 1650163047, 0, 'Antimony Lane 2', 400000, 20, 0, 0, 0, 0, 196, NULL, 6),
(3648, 0, 1650163047, 0, 'Antimony Lane 1', 400000, 20, 0, 0, 0, 0, 265, NULL, 10),
(3649, 0, 1650163047, 0, 'Wallside Residence', 400000, 20, 0, 0, 0, 0, 264, NULL, 8),
(3650, 0, 1650163047, 0, 'Wallside Lane 1', 800000, 20, 0, 0, 0, 0, 286, NULL, 8),
(3651, 0, 1650163047, 0, 'Wallside Lane 2', 600000, 20, 0, 0, 0, 0, 312, NULL, 8),
(3652, 0, 1650163047, 0, 'Vanward Flats B', 400000, 20, 0, 0, 0, 0, 243, NULL, 8),
(3653, 0, 1650163047, 0, 'Vanward Flats A', 400000, 20, 0, 0, 0, 0, 276, NULL, 8),
(3654, 0, 1650163047, 0, 'Bronze Brothers Bastion', 5000000, 20, 0, 0, 0, 0, 1231, NULL, 30),
(3655, 0, 1650163047, 0, 'Cistern Ave', 300000, 20, 0, 0, 0, 0, 156, NULL, 4),
(3656, 0, 1650163047, 0, 'Antimony Lane 4', 400000, 20, 0, 0, 0, 0, 218, NULL, 6),
(3657, 0, 1650163047, 0, 'Antimony Lane 3', 400000, 20, 0, 0, 0, 0, 140, NULL, 6),
(3658, 0, 1650163047, 0, 'Rathleton Hills Residence', 400000, 20, 0, 0, 0, 0, 252, NULL, 6),
(3659, 0, 1650163047, 0, 'Rathleton Hills Estate', 1000000, 20, 0, 0, 0, 0, 710, NULL, 26),
(3660, 0, 1650163047, 0, 'Lion\'s Head Reef', 400000, 25, 0, 0, 0, 0, 191, NULL, 0),
(3661, 0, 1650163047, 0, 'Shadow Caves 1', 50000, 5, 0, 0, 0, 0, 45, NULL, 4),
(3662, 0, 1650163047, 0, 'Shadow Caves 2', 50000, 5, 0, 0, 0, 0, 54, NULL, 4),
(3663, 0, 1650163047, 0, 'Shadow Caves 3', 100000, 5, 0, 0, 0, 0, 80, NULL, 4),
(3664, 0, 1650163047, 0, 'Shadow Caves 4', 100000, 5, 0, 0, 0, 0, 80, NULL, 4),
(3665, 0, 1650163047, 0, 'Shadow Caves 5', 100000, 5, 0, 0, 0, 0, 90, NULL, 4),
(3666, 0, 1650163047, 0, 'Shadow Caves 6', 100000, 5, 0, 0, 0, 0, 90, NULL, 4),
(3667, 0, 1650163047, 0, 'Northport Clanhall', 250000, 6, 0, 0, 0, 0, 306, NULL, 20),
(3668, 0, 1650163047, 0, 'The Treehouse', 250000, 15, 0, 0, 0, 0, 1067, NULL, 46),
(3669, 0, 1650163047, 0, 'Frost Manor', 500000, 16, 0, 0, 0, 0, 743, NULL, 48),
(3670, 0, 1650163047, 0, 'Hare\'s Den', 150000, 7, 0, 0, 0, 0, 306, NULL, 8),
(3671, 0, 1650163047, 0, 'Lost Cavern', 200000, 7, 0, 0, 0, 0, 806, NULL, 14),
(3673, 0, 1650163047, 0, 'Caveman Shelter', 150000, 12, 0, 0, 0, 0, 146, NULL, 8),
(3674, 0, 1650163047, 0, 'Eastern House of Tranquility', 200000, 12, 0, 0, 0, 0, 419, NULL, 10),
(3675, 0, 1650163047, 0, 'Lakeside Mansion', 300000, 16, 0, 0, 0, 0, 218, NULL, 0),
(3676, 0, 1650163047, 0, 'Pilchard Bin 1', 80000, 16, 0, 0, 0, 0, 30, NULL, 4),
(3677, 0, 1650163047, 0, 'Pilchard Bin 2', 50000, 16, 0, 0, 0, 0, 24, NULL, 4),
(3678, 0, 1650163047, 0, 'Pilchard Bin 3', 50000, 16, 0, 0, 0, 0, 24, NULL, 2),
(3679, 0, 1650163047, 0, 'Pilchard Bin 4', 50000, 16, 0, 0, 0, 0, 24, NULL, 2),
(3680, 0, 1650163047, 0, 'Pilchard Bin 5', 80000, 16, 0, 0, 0, 0, 24, NULL, 4),
(3681, 0, 1650163047, 0, 'Pilchard Bin 6', 25000, 16, 0, 0, 0, 0, 20, NULL, 2),
(3682, 0, 1650163047, 0, 'Pilchard Bin 7', 25000, 16, 0, 0, 0, 0, 20, NULL, 2),
(3683, 0, 1650163047, 0, 'Pilchard Bin 8', 25000, 16, 0, 0, 0, 0, 20, NULL, 4),
(3684, 0, 1650163047, 0, 'Pilchard Bin 9', 50000, 16, 0, 0, 0, 0, 20, NULL, 2),
(3685, 0, 1650163047, 0, 'Pilchard Bin 10', 0, 16, 0, 0, 0, 0, 20, NULL, 2),
(3686, 0, 1650163047, 0, 'Mammoth House', 300000, 16, 0, 0, 0, 0, 310, NULL, 12),
(3687, 0, 1650163047, 0, '', 0, 0, 0, 0, 0, 0, 5, NULL, 0),
(3688, 0, 1650163047, 0, '', 0, 0, 0, 0, 0, 0, 6, NULL, 0),
(3689, 0, 1650163047, 0, 'Unnamed House #3689', 0, 8, 0, 0, 0, 0, 79, NULL, 0),
(3690, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 12, NULL, 0),
(3691, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 14, NULL, 0),
(3693, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 18, NULL, 0),
(3697, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 29, NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `house_lists`
--

CREATE TABLE `house_lists` (
  `house_id` int NOT NULL,
  `listid` int NOT NULL,
  `list` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `house_lists`
--

INSERT INTO `house_lists` (`house_id`, `listid`, `list`) VALUES
(2918, 256, 'Elder Wizard\n'),
(2941, 256, 'Psyko Liran\nPsyko alberto\nPsyko adicto\nPsyko Cuak\nPsyko Skorxz\nEskarlet\nPsyko sugest\nKing Malekiin\npingo\nMago Tachuela'),
(2942, 256, 'Mago Tachuela'),
(2942, 257, 'Raulito Bonito\nPsyko Adicto\nPsyko Sugest'),
(2943, 256, 'King Malekiin\npesadilla\nArthurowh'),
(2943, 257, 'King Malekiin\nArthurowh'),
(2945, 256, 'Gold\nplutarco\n'),
(2969, 256, 'Buatamaerihotson\n'),
(2986, 256, 'elite knight'),
(2986, 257, 'elite knight\n'),
(2987, 256, 'Eddie'),
(2987, 257, 'Eddie\n'),
(2987, 4, 'Chapillo'),
(2987, 4, 'Chapillo'),
(2987, 4, 'Chapillo'),
(2988, 256, 'Avopoc\nColumbnino\nAlexzs\n'),
(2988, 4, 'Avopoc\nColumbnino'),
(2988, 4, 'Avopoc\nColumbnino'),
(2988, 4, 'Avopoc\nColumbnino'),
(3004, 256, 'King Malekiin\nnoxuos\n Kaisser Omegga\nFRANK\nalek vufah'),
(3004, 257, 'lord luchito\nDeadshot\ngandalf\n'),
(3008, 256, 'Luchito\n'),
(3025, 256, 'Lebiatan Mode Tank\ncocokena\n'),
(3136, 256, 'Leon\nIriq\nun paladin mas\n\n'),
(3136, 257, 'enkushado\n'),
(3137, 256, 'Jhin'),
(3152, 256, 'king kong'),
(3152, 257, 'king kong\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ip_bans`
--

CREATE TABLE `ip_bans` (
  `ip` int UNSIGNED NOT NULL,
  `reason` varchar(255) NOT NULL,
  `banned_at` bigint NOT NULL,
  `expires_at` bigint NOT NULL,
  `banned_by` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `links`
--

CREATE TABLE `links` (
  `account_id` int NOT NULL,
  `code` varchar(50) NOT NULL,
  `code_date` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `live_casts`
--

CREATE TABLE `live_casts` (
  `player_id` int NOT NULL,
  `cast_name` varchar(255) NOT NULL,
  `password` tinyint(1) NOT NULL DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `spectators` smallint DEFAULT '0',
  `version` int DEFAULT '1220'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `market_history`
--

CREATE TABLE `market_history` (
  `id` int UNSIGNED NOT NULL,
  `player_id` int NOT NULL,
  `sale` tinyint(1) NOT NULL DEFAULT '0',
  `itemtype` int UNSIGNED NOT NULL,
  `amount` smallint UNSIGNED NOT NULL,
  `price` bigint UNSIGNED DEFAULT NULL,
  `expires_at` bigint UNSIGNED NOT NULL,
  `inserted` bigint UNSIGNED NOT NULL,
  `state` tinyint UNSIGNED NOT NULL,
  `tier` smallint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `market_offers`
--

CREATE TABLE `market_offers` (
  `id` int UNSIGNED NOT NULL,
  `player_id` int NOT NULL,
  `sale` tinyint(1) NOT NULL DEFAULT '0',
  `itemtype` int UNSIGNED NOT NULL,
  `amount` smallint UNSIGNED NOT NULL,
  `created` bigint UNSIGNED NOT NULL,
  `anonymous` tinyint(1) NOT NULL DEFAULT '0',
  `price` bigint UNSIGNED DEFAULT NULL,
  `tier` smallint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_account_actions`
--

CREATE TABLE `myaac_account_actions` (
  `account_id` int NOT NULL,
  `ip` varchar(16) NOT NULL DEFAULT '0.0.0.0',
  `ipv6` binary(16) NOT NULL DEFAULT '0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `date` int NOT NULL DEFAULT '0',
  `action` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_admin_menu`
--

CREATE TABLE `myaac_admin_menu` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `page` varchar(255) NOT NULL DEFAULT '',
  `ordering` int NOT NULL DEFAULT '0',
  `flags` int NOT NULL DEFAULT '0',
  `enabled` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_bugtracker`
--

CREATE TABLE `myaac_bugtracker` (
  `account` varchar(255) NOT NULL,
  `type` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `id` int NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `reply` int NOT NULL DEFAULT '0',
  `who` int NOT NULL DEFAULT '0',
  `uid` int NOT NULL,
  `tag` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_changelog`
--

CREATE TABLE `myaac_changelog` (
  `id` int NOT NULL,
  `body` varchar(500) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 - added, 2 - removed, 3 - changed, 4 - fixed',
  `where` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 - server, 2 - site',
  `date` int NOT NULL DEFAULT '0',
  `player_id` int NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `myaac_changelog`
--

INSERT INTO `myaac_changelog` (`id`, `body`, `type`, `where`, `date`, `player_id`, `hidden`) VALUES
(1, 'MyAAC installed. (:', 3, 2, 1656644551, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_charbazaar`
--

CREATE TABLE `myaac_charbazaar` (
  `id` int NOT NULL,
  `account_old` int NOT NULL,
  `account_new` int NOT NULL,
  `player_id` int NOT NULL,
  `price` int NOT NULL,
  `date_end` datetime NOT NULL,
  `date_start` datetime NOT NULL,
  `bid_account` int NOT NULL,
  `bid_price` int NOT NULL,
  `status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `myaac_charbazaar`
--

INSERT INTO `myaac_charbazaar` (`id`, `account_old`, `account_new`, `player_id`, `price`, `date_end`, `date_start`, `bid_account`, `bid_price`, `status`) VALUES
(1, 1026, 1, 1575, 200, '2022-07-31 22:20:12', '2022-07-21 22:20:12', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_charbazaar_bid`
--

CREATE TABLE `myaac_charbazaar_bid` (
  `id` int NOT NULL,
  `account_id` int NOT NULL,
  `auction_id` int NOT NULL,
  `bid` int NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_config`
--

CREATE TABLE `myaac_config` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  `value` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `myaac_config`
--

INSERT INTO `myaac_config` (`id`, `name`, `value`) VALUES
(1, 'database_version', '32'),
(2, 'status_online', '1'),
(3, 'status_players', '26'),
(4, 'status_playersMax', '1000'),
(5, 'status_lastCheck', '1658778732'),
(6, 'status_uptime', '13581'),
(7, 'status_monsters', '79010'),
(8, 'last_usage_report', '1657485310'),
(9, 'views_counter', '12090'),
(10, 'status_uptimeReadable', '3h 46m'),
(11, 'status_motd', 'Bem vindo ao Mexico Global'),
(12, 'status_mapAuthor', 'OTServBR'),
(13, 'status_mapName', 'map'),
(14, 'status_mapWidth', '64764'),
(15, 'status_mapHeight', '64764'),
(16, 'status_server', 'Umera - Global'),
(17, 'status_serverVersion', 'Umera Engine Optimized v2.1'),
(18, 'status_clientVersion', '12.87'),
(19, 'site_closed', '0'),
(20, 'site_closed_message', 'Server is under maintenance, please visit later.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_faq`
--

CREATE TABLE `myaac_faq` (
  `id` int NOT NULL,
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` varchar(1020) NOT NULL DEFAULT '',
  `ordering` int NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_forum`
--

CREATE TABLE `myaac_forum` (
  `id` int NOT NULL,
  `first_post` int NOT NULL DEFAULT '0',
  `last_post` int NOT NULL DEFAULT '0',
  `section` int NOT NULL DEFAULT '0',
  `replies` int NOT NULL DEFAULT '0',
  `views` int NOT NULL DEFAULT '0',
  `author_aid` int NOT NULL DEFAULT '0',
  `author_guid` int NOT NULL DEFAULT '0',
  `post_text` text NOT NULL,
  `post_topic` varchar(255) NOT NULL DEFAULT '',
  `post_smile` tinyint(1) NOT NULL DEFAULT '0',
  `post_html` tinyint(1) NOT NULL DEFAULT '0',
  `post_date` int NOT NULL DEFAULT '0',
  `last_edit_aid` int NOT NULL DEFAULT '0',
  `edit_date` int NOT NULL DEFAULT '0',
  `post_ip` varchar(32) NOT NULL DEFAULT '0.0.0.0',
  `sticked` tinyint(1) NOT NULL DEFAULT '0',
  `closed` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_forum_boards`
--

CREATE TABLE `myaac_forum_boards` (
  `id` int NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `ordering` int NOT NULL DEFAULT '0',
  `guild` int NOT NULL DEFAULT '0',
  `access` int NOT NULL DEFAULT '0',
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `myaac_forum_boards`
--

INSERT INTO `myaac_forum_boards` (`id`, `name`, `description`, `ordering`, `guild`, `access`, `closed`, `hidden`) VALUES
(1, 'News', 'News commenting', 0, 0, 0, 1, 0),
(2, 'Trade', 'Trade offers.', 1, 0, 0, 0, 0),
(3, 'Quests', 'Quest making.', 2, 0, 0, 0, 0),
(4, 'Pictures', 'Your pictures.', 3, 0, 0, 0, 0),
(5, 'Bug Report', 'Report bugs there.', 4, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_gallery`
--

CREATE TABLE `myaac_gallery` (
  `id` int NOT NULL,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL DEFAULT '',
  `ordering` int NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `myaac_gallery`
--

INSERT INTO `myaac_gallery` (`id`, `comment`, `image`, `thumb`, `author`, `ordering`, `hidden`) VALUES
(1, 'Demon', 'images/gallery/demon.jpg', 'images/gallery/demon_thumb.gif', 'MyAAC', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_menu`
--

CREATE TABLE `myaac_menu` (
  `id` int NOT NULL,
  `template` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `blank` tinyint(1) NOT NULL DEFAULT '0',
  `color` varchar(6) NOT NULL DEFAULT '',
  `category` int NOT NULL DEFAULT '1',
  `ordering` int NOT NULL DEFAULT '0',
  `enabled` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `myaac_menu`
--

INSERT INTO `myaac_menu` (`id`, `template`, `name`, `link`, `blank`, `color`, `category`, `ordering`, `enabled`) VALUES
(1, 'tibiacom', 'Latest News', 'news', 0, '', 1, 0, 1),
(2, 'tibiacom', 'News Archive', 'news/archive', 0, '', 1, 1, 1),
(3, 'tibiacom', 'Event Schedule', 'eventcalendar', 0, '', 1, 2, 1),
(4, 'tibiacom', 'Account Management', 'account/manage', 0, '', 2, 0, 1),
(5, 'tibiacom', 'Create Account', 'account/create', 0, '', 2, 1, 1),
(6, 'tibiacom', 'Lost Account?', 'account/lost', 0, '', 2, 2, 1),
(7, 'tibiacom', 'Server Rules', 'rules', 0, '', 2, 3, 1),
(8, 'tibiacom', 'Downloads', 'downloadclient', 0, '', 2, 4, 1),
(9, 'tibiacom', 'Report Bug', 'bugtracker', 0, '', 2, 5, 1),
(10, 'tibiacom', 'Characters', 'characters', 0, '', 3, 0, 1),
(11, 'tibiacom', 'Who Is Online?', 'online', 0, '', 3, 1, 1),
(12, 'tibiacom', 'Highscores', 'highscores', 0, '', 3, 2, 1),
(13, 'tibiacom', 'Last Kills', 'lastkills', 0, '', 3, 3, 1),
(14, 'tibiacom', 'Houses', 'houses', 0, '', 3, 4, 1),
(15, 'tibiacom', 'Guilds', 'guilds', 0, '', 3, 5, 1),
(16, 'tibiacom', 'Polls', 'polls', 0, '', 3, 6, 1),
(17, 'tibiacom', 'Bans', 'bans', 0, '', 3, 7, 1),
(18, 'tibiacom', 'Support List', 'team', 0, '', 3, 8, 1),
(19, 'tibiacom', 'Forum', 'forum', 0, '', 4, 0, 1),
(20, 'tibiacom', 'Creatures', 'creatures', 0, '', 5, 0, 1),
(21, 'tibiacom', 'Spells', 'spells', 0, '', 5, 1, 1),
(22, 'tibiacom', 'Commands', 'commands', 0, '', 5, 2, 1),
(23, 'tibiacom', 'Gallery', 'gallery', 0, '', 5, 3, 1),
(24, 'tibiacom', 'Server Info', 'serverInfo', 0, '', 5, 4, 1),
(25, 'tibiacom', 'Experience Table', 'experienceTable', 0, '', 5, 5, 1),
(26, 'tibiacom', 'Current Auctions', 'currentcharactertrades', 0, '', 7, 0, 1),
(27, 'tibiacom', 'Auction History', 'pastcharactertrades', 0, '', 7, 1, 1),
(28, 'tibiacom', 'My Bids', 'ownbids', 0, '', 7, 2, 1),
(29, 'tibiacom', 'My Auctions', 'owncharactertrades', 0, '', 7, 3, 1),
(30, 'tibiacom', 'Create Auction', 'createcharacterauction', 0, '', 7, 4, 1),
(31, 'tibiacom', 'Buy Points', 'points', 0, '', 6, 0, 1),
(32, 'tibiacom', 'Shop Offer', 'gifts', 0, '', 6, 1, 1),
(33, 'tibiacom', 'Shop History', 'gifts/history', 0, '', 6, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_monsters`
--

CREATE TABLE `myaac_monsters` (
  `id` int NOT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `mana` int NOT NULL DEFAULT '0',
  `exp` int NOT NULL,
  `health` int NOT NULL,
  `speed_lvl` int NOT NULL DEFAULT '1',
  `use_haste` tinyint(1) NOT NULL,
  `voices` text NOT NULL,
  `immunities` varchar(255) NOT NULL,
  `elements` text NOT NULL,
  `summonable` tinyint(1) NOT NULL,
  `convinceable` tinyint(1) NOT NULL,
  `pushable` tinyint(1) NOT NULL DEFAULT '0',
  `canpushitems` tinyint(1) NOT NULL DEFAULT '0',
  `canwalkonenergy` tinyint(1) NOT NULL DEFAULT '0',
  `canwalkonpoison` tinyint(1) NOT NULL DEFAULT '0',
  `canwalkonfire` tinyint(1) NOT NULL DEFAULT '0',
  `runonhealth` tinyint(1) NOT NULL DEFAULT '0',
  `hostile` tinyint(1) NOT NULL DEFAULT '0',
  `attackable` tinyint(1) NOT NULL DEFAULT '0',
  `rewardboss` tinyint(1) NOT NULL DEFAULT '0',
  `defense` int NOT NULL DEFAULT '0',
  `armor` int NOT NULL DEFAULT '0',
  `canpushcreatures` tinyint(1) NOT NULL DEFAULT '0',
  `race` varchar(255) NOT NULL,
  `loot` text NOT NULL,
  `summons` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_news`
--

CREATE TABLE `myaac_news` (
  `id` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 - news, 2 - ticker, 3 - article',
  `date` int NOT NULL DEFAULT '0',
  `category` tinyint(1) NOT NULL DEFAULT '0',
  `player_id` int NOT NULL DEFAULT '0',
  `last_modified_by` int NOT NULL DEFAULT '0',
  `last_modified_date` int NOT NULL DEFAULT '0',
  `comments` varchar(50) NOT NULL DEFAULT '',
  `article_text` varchar(300) NOT NULL DEFAULT '',
  `article_image` varchar(100) NOT NULL DEFAULT '',
  `hidden` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `myaac_news`
--

INSERT INTO `myaac_news` (`id`, `title`, `body`, `type`, `date`, `category`, `player_id`, `last_modified_by`, `last_modified_date`, `comments`, `article_text`, `article_image`, `hidden`) VALUES
(1, 'Welcome to Mex Server 12.87', '<p><em>Hello everyone and welcome to <strong>Global Mex Server</strong> here you can get all the information about the Server</em></p>\r\n<h2><em>New Potions</em></h2>\r\n<p><em>The New <strong>potions</strong> were added to The Server</em></p>\r\n<p><img class=\"\" style=\"width: 616px; height: 425px; display: block; margin-left: auto; margin-right: auto;\" src=\"https://i.ibb.co/RYBkGhF/items.png\" alt=\"items\" width=\"776\" height=\"534\" data-is360=\"0\" data-load=\"full\" /></p>\r\n<p><strong>What does our server contain?</strong></p>\r\n<p style=\"text-align: center;\"><em>Forge System 100% Working (Magic to search monster)</em></p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: center;\"><img src=\"https://i.ibb.co/yFFykVr/Winter-Update-2021-Artwork.jpg\" alt=\"https://i.ibb.co/yFFykVr/Winter-Update-2021-Artwork.jpg\" /></p>\r\n<p style=\"text-align: center;\">Spell&nbsp;<em>Exiva Moe Res Working</em></p>\r\n<p style=\"text-align: center;\"><em>Oberon</em></p>\r\n<p style=\"text-align: center;\"><em>Scarlet</em></p>\r\n<p style=\"text-align: center;\">Tournament Points Free each 1hr</p>\r\n<p style=\"text-align: center;\"><em>War Zones 1,2,3,4,5,6,7,8,9 </em></p>\r\n<p style=\"text-align: center;\"><em>New Zone Carnivalys</em></p>\r\n<p style=\"text-align: center;\"><em>Obujus, Tanjis, Jaul</em></p>\r\n<p style=\"text-align: center;\"><em>New Oufits</em></p>\r\n<p style=\"text-align: center;\"><em>N</em><em>ew Mounts</em></p>\r\n<p style=\"text-align: center;\"><em>MiniBosses All Working!</em></p>\r\n<p style=\"text-align: center;\"><em>Regeneration Stamina Pz Zone</em></p>\r\n<p style=\"text-align: center;\"><em>Reward to upload level Money - <strong>Only Vips</strong></em></p>\r\n<p style=\"text-align: center;\"><em>Autoloot - Automatic Money Bank - <strong>Only Vips</strong></em></p>\r\n<h2><br /><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://www.ezodus.net/images/news/1639049423-Exaltation_Forge.gif\" alt=\"\" />&nbsp;&nbsp;<br /><br /><em><strong>Vip Redward</strong></em></h2>\r\n<p style=\"text-align: center;\"><span style=\"font-style: italic;\">Enhance your gaming experience by gaining additional abilities and advantages:</span><br /><br /><strong><em>10% xp boost</em></strong><br /><strong><em>10% loot boost</em></strong><br /><strong><em>Regeneration boost</em></strong><br /><strong><em>3 Exclusive outfits</em></strong><br /><strong><em>3 Exclusive mounts</em></strong><br /><strong><em>Autoloot</em></strong><br /><strong><em>Automatic money to the bank</em></strong><br /><strong><em>Mex Items</em></strong><br /><strong><em>Tournament boost</em></strong><br /><strong><em>Daily reward boost</em></strong></p>\r\n<p style=\"text-align: center;\"><strong><em>General Stast Working</em></strong></p>\r\n<p style=\"text-align: center;\"><img src=\"https://i.ibb.co/whvHpVT/cobat.png\" /></p>\r\n<p><br /><em><strong>Note</strong>: All the quest is available dont need access for to do.! This server is not pay to win </em><br /><em>you can get all the items from tibia as in rl the only thing that is for sale is the vip </em><br /><em>and certain items if you want to get them it is under your responsibility</em><br /><br /><em>We contain the latest in tibia with the exception of what is new that tibia offers but we will </em><br /><em>get it online very soon</em></p>', 1, 1656644605, 1, 1344, 1574, 1658276462, 'https://my-aac.org', '', 'images/news/announcement.jpg', 0),
(2, 'Hello tickets!', '<p>Welcome to Mex Server https://mexico-global.com</p>', 2, 1656644605, 4, 1344, 1574, 1658254898, '', '', 'images/news/announcement.jpg', 0),
(4, 'Boot', '<p>The bot cant be used on this server</p>', 2, 1658290046, 1, 1574, 0, 0, '0', '', '', 0),
(6, 'Server Online', '<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" style=\"text-align: left;\" data-placeholder=\"Traducci&oacute;n\"><span class=\"Y2IQFc\" lang=\"en\">Server Online 12.87</span></pre>\r\n<p>&nbsp;</p>', 2, 1658355322, 1, 1574, 1574, 1658645473, '0', '', 'images/news/announcement.jpg', 0),
(8, 'Double Skill End', '<p>To the next day will be coming EXP double loot and Skills</p>\r\n<p>&nbsp;</p>\r\n<p>Monday 25 Double loot</p>\r\n<p>Wenesday 27 Double Skill</p>\r\n<p>Friday 29 Double EXP</p>', 1, 1658527721, 1, 1574, 1574, 1658600379, '0', '', 'images/news/announcement.jpg', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_news_categories`
--

CREATE TABLE `myaac_news_categories` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(50) NOT NULL DEFAULT '',
  `icon_id` int NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `myaac_news_categories`
--

INSERT INTO `myaac_news_categories` (`id`, `name`, `description`, `icon_id`, `hidden`) VALUES
(1, '', '', 0, 0),
(2, '', '', 1, 0),
(3, '', '', 2, 0),
(4, '', '', 3, 0),
(5, '', '', 4, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_notepad`
--

CREATE TABLE `myaac_notepad` (
  `id` int NOT NULL,
  `account_id` int NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_pages`
--

CREATE TABLE `myaac_pages` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `body` text NOT NULL,
  `date` int NOT NULL DEFAULT '0',
  `player_id` int NOT NULL DEFAULT '0',
  `php` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 - plain html, 1 - php',
  `enable_tinymce` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 - enabled, 0 - disabled',
  `access` tinyint NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `myaac_pages`
--

INSERT INTO `myaac_pages` (`id`, `name`, `title`, `body`, `date`, `player_id`, `php`, `enable_tinymce`, `access`, `hidden`) VALUES
(1, 'downloads', 'Downloads', '<p>&nbsp;</p>\n<p>&nbsp;</p>\n<div style=\"text-align: center;\">We\'re using official Tibia Client <strong>{{ config.client / 100 }}</strong><br />\n<p>Download Tibia Client <strong>{{ config.client / 100 }}</strong>&nbsp;for Windows <a href=\"https://drive.google.com/drive/folders/0B2-sMQkWYzhGSFhGVlY2WGk5czQ\" target=\"_blank\" rel=\"noopener\">HERE</a>.</p>\n<h2>IP Changer:</h2>\n<a href=\"https://static.otland.net/ipchanger.exe\" target=\"_blank\" rel=\"noopener\">HERE</a></div>', 0, 1, 0, 1, 1, 0),
(2, 'commands', 'Commands', '<table style=\"border-collapse: collapse; width: 87.8471%; height: 57px;\" border=\"1\">\n<tbody>\n<tr style=\"height: 18px;\">\n<td style=\"width: 33.3333%; background-color: #505050; height: 18px;\"><span style=\"color: #ffffff;\"><strong>Words</strong></span></td>\n<td style=\"width: 33.3333%; background-color: #505050; height: 18px;\"><span style=\"color: #ffffff;\"><strong>Description</strong></span></td>\n</tr>\n<tr style=\"height: 18px; background-color: #f1e0c6;\">\n<td style=\"width: 33.3333%; height: 18px;\"><em>!example</em></td>\n<td style=\"width: 33.3333%; height: 18px;\">This is just an example</td>\n</tr>\n<tr style=\"height: 18px; background-color: #d4c0a1;\">\n<td style=\"width: 33.3333%; height: 18px;\"><em>!buyhouse</em></td>\n<td style=\"width: 33.3333%; height: 18px;\">Buy house you are looking at</td>\n</tr>\n<tr style=\"height: 18px; background-color: #f1e0c6;\">\n<td style=\"width: 33.3333%; height: 18px;\"><em>!aol</em></td>\n<td style=\"width: 33.3333%; height: 18px;\">Buy AoL</td>\n</tr>\n</tbody>\n</table>', 0, 1, 0, 1, 1, 0),
(3, 'rules_on_the_page', 'Rules', '1. Names\na) Names which contain insulting (e.g. \"Bastard\"), racist (e.g. \"Nigger\"), extremely right-wing (e.g. \"Hitler\"), sexist (e.g. \"Bitch\") or offensive (e.g. \"Copkiller\") language.\nb) Names containing parts of sentences (e.g. \"Mike returns\"), nonsensical combinations of letters (e.g. \"Fgfshdsfg\") or invalid formattings (e.g. \"Thegreatknight\").\nc) Names that obviously do not describe a person (e.g. \"Christmastree\", \"Matrix\"), names of real life celebrities (e.g. \"Britney Spears\"), names that refer to real countries (e.g. \"Swedish Druid\"), names which were created to fake other players\' identities (e.g. \"Arieswer\" instead of \"Arieswar\") or official positions (e.g. \"System Admin\").\n\n2. Cheating\na) Exploiting obvious errors of the game (\"bugs\"), for instance to duplicate items. If you find an error you must report it to CipSoft immediately.\nb) Intentional abuse of weaknesses in the gameplay, for example arranging objects or players in a way that other players cannot move them.\nc) Using tools to automatically perform or repeat certain actions without any interaction by the player (\"macros\").\nd) Manipulating the client program or using additional software to play the game.\ne) Trying to steal other players\' account data (\"hacking\").\nf) Playing on more than one account at the same time (\"multi-clienting\").\ng) Offering account data to other players or accepting other players\' account data (\"account-trading/sharing\").\n\n3. Gamemasters\na) Threatening a gamemaster because of his or her actions or position as a gamemaster.\nb) Pretending to be a gamemaster or to have influence on the decisions of a gamemaster.\nc) Intentionally giving wrong or misleading information to a gamemaster concerning his or her investigations or making false reports about rule violations.\n\n4. Player Killing\na) Excessive killing of characters who are not marked with a \"skull\" on worlds which are not PvP-enforced. Please note that killing marked characters is not a reason for a banishment.\n\nA violation of the Tibia Rules may lead to temporary banishment of characters and accounts. In severe cases removal or modification of character skills, attributes and belongings, as well as the permanent removal of accounts without any compensation may be considered. The sanction is based on the seriousness of the rule violation and the previous record of the player. It is determined by the gamemaster imposing the banishment.\n\nThese rules may be changed at any time. All changes will be announced on the official website.', 0, 1, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_polls`
--

CREATE TABLE `myaac_polls` (
  `id` int NOT NULL,
  `question` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `end` int NOT NULL,
  `start` int NOT NULL,
  `answers` int NOT NULL,
  `votes_all` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_polls_answers`
--

CREATE TABLE `myaac_polls_answers` (
  `poll_id` int NOT NULL,
  `answer_id` int NOT NULL,
  `answer` varchar(255) NOT NULL,
  `votes` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_spells`
--

CREATE TABLE `myaac_spells` (
  `id` int NOT NULL,
  `spell` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL,
  `words` varchar(255) NOT NULL DEFAULT '',
  `category` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 - attack, 2 - healing, 3 - summon, 4 - supply, 5 - support',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 - instant, 2 - conjure, 3 - rune',
  `level` int NOT NULL DEFAULT '0',
  `maglevel` int NOT NULL DEFAULT '0',
  `mana` int NOT NULL DEFAULT '0',
  `soul` tinyint NOT NULL DEFAULT '0',
  `conjure_id` int NOT NULL DEFAULT '0',
  `conjure_count` tinyint NOT NULL DEFAULT '0',
  `reagent` int NOT NULL DEFAULT '0',
  `item_id` int NOT NULL DEFAULT '0',
  `premium` tinyint(1) NOT NULL DEFAULT '0',
  `vocations` varchar(100) NOT NULL DEFAULT '',
  `hidden` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_videos`
--

CREATE TABLE `myaac_videos` (
  `id` int NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `youtube_id` varchar(20) NOT NULL,
  `author` varchar(50) NOT NULL DEFAULT '',
  `ordering` int NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_visitors`
--

CREATE TABLE `myaac_visitors` (
  `ip` varchar(16) NOT NULL,
  `lastvisit` int NOT NULL DEFAULT '0',
  `page` varchar(2048) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `myaac_visitors`
--

INSERT INTO `myaac_visitors` (`ip`, `lastvisit`, `page`) VALUES
('162.158.129.86', 1657485525, '/?characters/Noma+Mes'),
('172.69.33.114', 1657485310, '/'),
('172.70.207.19', 1657485777, '/?news'),
('172.70.210.108', 1657485629, '/?highscores'),
('172.70.214.82', 1657485499, '/?news'),
('172.71.114.58', 1657485808, '/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_weapons`
--

CREATE TABLE `myaac_weapons` (
  `id` int NOT NULL,
  `level` int NOT NULL DEFAULT '0',
  `maglevel` int NOT NULL DEFAULT '0',
  `vocations` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `newsticker`
--

CREATE TABLE `newsticker` (
  `id` int UNSIGNED NOT NULL,
  `date` int NOT NULL,
  `text` mediumtext NOT NULL,
  `icon` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagseguro`
--

CREATE TABLE `pagseguro` (
  `date` datetime NOT NULL,
  `code` varchar(50) NOT NULL,
  `reference` varchar(200) NOT NULL,
  `type` int NOT NULL,
  `status` int NOT NULL,
  `lastEventDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagseguro_transactions`
--

CREATE TABLE `pagseguro_transactions` (
  `transaction_code` varchar(36) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `payment_method` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `item_count` int NOT NULL,
  `data` datetime NOT NULL,
  `payment_amount` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paypal_transactions`
--

CREATE TABLE `paypal_transactions` (
  `id` int NOT NULL,
  `payment_status` varchar(70) NOT NULL DEFAULT '',
  `date` datetime NOT NULL,
  `payer_email` varchar(255) NOT NULL DEFAULT '',
  `payer_id` varchar(255) NOT NULL DEFAULT '',
  `item_number1` varchar(255) NOT NULL DEFAULT '',
  `mc_gross` float NOT NULL,
  `mc_currency` varchar(5) NOT NULL DEFAULT '',
  `txn_id` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `players`
--

CREATE TABLE `players` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `group_id` int NOT NULL DEFAULT '1',
  `account_id` int NOT NULL DEFAULT '0',
  `level` int NOT NULL DEFAULT '1',
  `vocation` int NOT NULL DEFAULT '0',
  `health` int NOT NULL DEFAULT '150',
  `healthmax` int NOT NULL DEFAULT '150',
  `experience` bigint NOT NULL DEFAULT '0',
  `exptoday` int DEFAULT NULL,
  `lookbody` int NOT NULL DEFAULT '0',
  `lookfeet` int NOT NULL DEFAULT '0',
  `lookhead` int NOT NULL DEFAULT '0',
  `looklegs` int NOT NULL DEFAULT '0',
  `looktype` int NOT NULL DEFAULT '136',
  `lookaddons` int NOT NULL DEFAULT '0',
  `maglevel` int NOT NULL DEFAULT '0',
  `mana` int NOT NULL DEFAULT '0',
  `manamax` int NOT NULL DEFAULT '0',
  `manaspent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `soul` int UNSIGNED NOT NULL DEFAULT '0',
  `town_id` int NOT NULL DEFAULT '0',
  `posx` int NOT NULL DEFAULT '0',
  `posy` int NOT NULL DEFAULT '0',
  `posz` int NOT NULL DEFAULT '0',
  `conditions` blob NOT NULL,
  `cap` int NOT NULL DEFAULT '0',
  `sex` int NOT NULL DEFAULT '0',
  `lastlogin` bigint UNSIGNED NOT NULL DEFAULT '0',
  `lastip` int UNSIGNED NOT NULL DEFAULT '0',
  `save` tinyint(1) NOT NULL DEFAULT '1',
  `skull` tinyint(1) NOT NULL DEFAULT '0',
  `skulltime` bigint NOT NULL DEFAULT '0',
  `lastlogout` bigint UNSIGNED NOT NULL DEFAULT '0',
  `blessings` tinyint NOT NULL DEFAULT '0',
  `blessings1` tinyint NOT NULL DEFAULT '0',
  `blessings2` tinyint NOT NULL DEFAULT '0',
  `blessings3` tinyint NOT NULL DEFAULT '0',
  `blessings4` tinyint NOT NULL DEFAULT '0',
  `blessings5` tinyint NOT NULL DEFAULT '0',
  `blessings6` tinyint NOT NULL DEFAULT '0',
  `blessings7` tinyint NOT NULL DEFAULT '0',
  `blessings8` tinyint NOT NULL DEFAULT '0',
  `onlinetime` bigint NOT NULL DEFAULT '0',
  `deletion` bigint NOT NULL DEFAULT '0',
  `balance` bigint UNSIGNED NOT NULL DEFAULT '0',
  `bonusrerollcount` bigint DEFAULT '0',
  `quickloot_fallback` tinyint(1) DEFAULT '0',
  `lookmountbody` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `lookmountfeet` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `lookmounthead` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `lookmountlegs` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `lookfamiliarstype` int UNSIGNED NOT NULL DEFAULT '0',
  `isreward` tinyint(1) NOT NULL DEFAULT '1',
  `istutorial` tinyint(1) NOT NULL DEFAULT '0',
  `offlinetraining_time` smallint UNSIGNED NOT NULL DEFAULT '43200',
  `offlinetraining_skill` int NOT NULL DEFAULT '-1',
  `stamina` smallint UNSIGNED NOT NULL DEFAULT '2520',
  `skill_fist` int UNSIGNED NOT NULL DEFAULT '10',
  `skill_fist_tries` bigint UNSIGNED NOT NULL DEFAULT '0',
  `skill_club` int UNSIGNED NOT NULL DEFAULT '10',
  `skill_club_tries` bigint UNSIGNED NOT NULL DEFAULT '0',
  `skill_sword` int UNSIGNED NOT NULL DEFAULT '10',
  `skill_sword_tries` bigint UNSIGNED NOT NULL DEFAULT '0',
  `skill_axe` int UNSIGNED NOT NULL DEFAULT '10',
  `skill_axe_tries` bigint UNSIGNED NOT NULL DEFAULT '0',
  `skill_dist` int UNSIGNED NOT NULL DEFAULT '10',
  `skill_dist_tries` bigint UNSIGNED NOT NULL DEFAULT '0',
  `skill_shielding` int UNSIGNED NOT NULL DEFAULT '10',
  `skill_shielding_tries` bigint UNSIGNED NOT NULL DEFAULT '0',
  `skill_fishing` int UNSIGNED NOT NULL DEFAULT '10',
  `skill_fishing_tries` bigint UNSIGNED NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `create_ip` bigint NOT NULL DEFAULT '0',
  `create_date` bigint NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `skill_critical_hit_chance` int UNSIGNED NOT NULL DEFAULT '0',
  `skill_critical_hit_chance_tries` bigint UNSIGNED NOT NULL DEFAULT '0',
  `skill_critical_hit_damage` int UNSIGNED NOT NULL DEFAULT '0',
  `skill_critical_hit_damage_tries` bigint UNSIGNED NOT NULL DEFAULT '0',
  `skill_life_leech_chance` int UNSIGNED NOT NULL DEFAULT '0',
  `skill_life_leech_chance_tries` bigint UNSIGNED NOT NULL DEFAULT '0',
  `skill_life_leech_amount` int UNSIGNED NOT NULL DEFAULT '0',
  `skill_life_leech_amount_tries` bigint UNSIGNED NOT NULL DEFAULT '0',
  `skill_mana_leech_chance` int UNSIGNED NOT NULL DEFAULT '0',
  `skill_mana_leech_chance_tries` bigint UNSIGNED NOT NULL DEFAULT '0',
  `skill_mana_leech_amount` int UNSIGNED NOT NULL DEFAULT '0',
  `skill_mana_leech_amount_tries` bigint UNSIGNED NOT NULL DEFAULT '0',
  `skill_criticalhit_chance` bigint UNSIGNED NOT NULL DEFAULT '0',
  `skill_criticalhit_damage` bigint UNSIGNED NOT NULL DEFAULT '0',
  `skill_lifeleech_chance` bigint UNSIGNED NOT NULL DEFAULT '0',
  `skill_lifeleech_amount` bigint UNSIGNED NOT NULL DEFAULT '0',
  `skill_manaleech_chance` bigint UNSIGNED NOT NULL DEFAULT '0',
  `skill_manaleech_amount` bigint UNSIGNED NOT NULL DEFAULT '0',
  `manashield` smallint UNSIGNED NOT NULL DEFAULT '0',
  `max_manashield` smallint UNSIGNED NOT NULL DEFAULT '0',
  `xpboost_stamina` int DEFAULT NULL,
  `xpboost_value` int DEFAULT NULL,
  `marriage_status` bigint UNSIGNED NOT NULL DEFAULT '0',
  `hide_skills` int DEFAULT NULL,
  `hide_set` int DEFAULT NULL,
  `former` varchar(255) NOT NULL DEFAULT '-',
  `signature` varchar(255) NOT NULL DEFAULT '',
  `marriage_spouse` int NOT NULL DEFAULT '-1',
  `loyalty_ranking` tinyint(1) NOT NULL DEFAULT '0',
  `bonus_rerolls` bigint NOT NULL DEFAULT '0',
  `critical` int DEFAULT '0',
  `bonus_reroll` int NOT NULL DEFAULT '0',
  `sbw_points` int NOT NULL DEFAULT '0',
  `instantrewardtokens` int UNSIGNED NOT NULL DEFAULT '0',
  `charmpoints` int DEFAULT '0',
  `direction` tinyint(1) DEFAULT '0',
  `lookmount` int DEFAULT '0',
  `version` int DEFAULT '1000',
  `lootaction` tinyint DEFAULT '0',
  `spells` blob,
  `storages` mediumblob,
  `items` longblob,
  `depotitems` longblob,
  `inboxitems` longblob,
  `rewards` longblob,
  `varcap` int NOT NULL DEFAULT '0',
  `charmExpansion` tinyint DEFAULT '0',
  `bestiarykills` longblob,
  `charms` longblob,
  `bestiaryTracker` longblob,
  `autoloot` blob,
  `lastday` bigint DEFAULT '0',
  `cast` tinyint(1) NOT NULL DEFAULT '0',
  `created` int NOT NULL DEFAULT '0',
  `hide_char` tinyint(1) NOT NULL DEFAULT '0',
  `precoleilao` int NOT NULL DEFAULT '0',
  `old_account` int NOT NULL DEFAULT '0',
  `prey_wildcard` bigint NOT NULL DEFAULT '0',
  `task_points` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `players`
--

INSERT INTO `players` (`id`, `name`, `group_id`, `account_id`, `level`, `vocation`, `health`, `healthmax`, `experience`, `exptoday`, `lookbody`, `lookfeet`, `lookhead`, `looklegs`, `looktype`, `lookaddons`, `maglevel`, `mana`, `manamax`, `manaspent`, `soul`, `town_id`, `posx`, `posy`, `posz`, `conditions`, `cap`, `sex`, `lastlogin`, `lastip`, `save`, `skull`, `skulltime`, `lastlogout`, `blessings`, `blessings1`, `blessings2`, `blessings3`, `blessings4`, `blessings5`, `blessings6`, `blessings7`, `blessings8`, `onlinetime`, `deletion`, `balance`, `bonusrerollcount`, `quickloot_fallback`, `lookmountbody`, `lookmountfeet`, `lookmounthead`, `lookmountlegs`, `lookfamiliarstype`, `isreward`, `istutorial`, `offlinetraining_time`, `offlinetraining_skill`, `stamina`, `skill_fist`, `skill_fist_tries`, `skill_club`, `skill_club_tries`, `skill_sword`, `skill_sword_tries`, `skill_axe`, `skill_axe_tries`, `skill_dist`, `skill_dist_tries`, `skill_shielding`, `skill_shielding_tries`, `skill_fishing`, `skill_fishing_tries`, `deleted`, `description`, `comment`, `create_ip`, `create_date`, `hidden`, `skill_critical_hit_chance`, `skill_critical_hit_chance_tries`, `skill_critical_hit_damage`, `skill_critical_hit_damage_tries`, `skill_life_leech_chance`, `skill_life_leech_chance_tries`, `skill_life_leech_amount`, `skill_life_leech_amount_tries`, `skill_mana_leech_chance`, `skill_mana_leech_chance_tries`, `skill_mana_leech_amount`, `skill_mana_leech_amount_tries`, `skill_criticalhit_chance`, `skill_criticalhit_damage`, `skill_lifeleech_chance`, `skill_lifeleech_amount`, `skill_manaleech_chance`, `skill_manaleech_amount`, `manashield`, `max_manashield`, `xpboost_stamina`, `xpboost_value`, `marriage_status`, `hide_skills`, `hide_set`, `former`, `signature`, `marriage_spouse`, `loyalty_ranking`, `bonus_rerolls`, `critical`, `bonus_reroll`, `sbw_points`, `instantrewardtokens`, `charmpoints`, `direction`, `lookmount`, `version`, `lootaction`, `spells`, `storages`, `items`, `depotitems`, `inboxitems`, `rewards`, `varcap`, `charmExpansion`, `bestiarykills`, `charms`, `bestiaryTracker`, `autoloot`, `lastday`, `cast`, `created`, `hide_char`, `precoleilao`, `old_account`, `prey_wildcard`, `task_points`) VALUES
(1, 'Rook Sample', 1, 5, 2, 0, 155, 155, 100, NULL, 113, 115, 95, 39, 129, 0, 2, 60, 60, 5936, 100, 1, 33503, 31503, 13, '', 410, 1, 1646821971, 3485118911, 1, 0, 0, 1646821973, 0, 1, 1, 1, 1, 1, 1, 1, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 43200, -1, 2520, 10, 0, 12, 155, 12, 155, 12, 155, 12, 93, 10, 0, 10, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '-', '', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'Sorcerer Sample', 1, 5, 8, 1, 185, 185, 4200, NULL, 113, 115, 95, 39, 129, 0, 0, 90, 90, 0, 100, 8, 32369, 32241, 7, '', 470, 1, 1646821975, 3485118911, 1, 0, 0, 1646821982, 0, 1, 1, 1, 1, 1, 1, 1, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '-', '', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 'Druid Sample', 1, 5, 8, 2, 185, 185, 4200, NULL, 113, 115, 95, 39, 129, 0, 0, 90, 90, 0, 100, 8, 32369, 32241, 7, '', 470, 1, 1646821997, 3485118911, 1, 0, 0, 1646822005, 0, 1, 1, 1, 1, 1, 1, 1, 1, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '-', '', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'Paladin Sample', 1, 5, 8, 3, 185, 185, 4200, NULL, 113, 115, 95, 39, 129, 0, 0, 90, 90, 0, 100, 8, 32370, 32241, 7, '', 470, 1, 1646821969, 3485118911, 1, 0, 0, 1646821970, 0, 1, 1, 1, 1, 1, 1, 1, 1, 385, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '-', '', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 'Knight Sample', 1, 5, 8, 4, 185, 185, 4200, NULL, 113, 115, 95, 39, 129, 0, 0, 90, 90, 0, 100, 8, 32370, 32241, 7, '', 470, 1, 1646822005, 3485118911, 1, 0, 0, 1646822011, 0, 1, 1, 1, 1, 1, 1, 1, 1, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '-', '', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0),
(1574, 'God Mex', 6, 1026, 444, 4, 6725, 6725, 1439218400, NULL, 114, 85, 114, 114, 1322, 1, 2, 2270, 2270, 7536, 0, 8, 32342, 32225, 7, '', 11370, 1, 1658699231, 830927793, 1, 0, 0, 1658765102, 0, 3, 3, 3, 3, 3, 3, 3, 3, 1931950, 0, 206831951, 0, 0, 0, 0, 0, 0, 991, 1, 0, 43200, -1, 2520, 12, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3600, 50, 0, NULL, NULL, '-', '', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 1658170087, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `players_online`
--

CREATE TABLE `players_online` (
  `player_id` int NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_binary_items`
--

CREATE TABLE `player_binary_items` (
  `player_id` int NOT NULL,
  `type` int NOT NULL,
  `items` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_charms`
--

CREATE TABLE `player_charms` (
  `player_guid` int NOT NULL,
  `charm_points` varchar(250) DEFAULT NULL,
  `charm_expansion` tinyint(1) DEFAULT NULL,
  `rune_wound` int DEFAULT NULL,
  `rune_enflame` int DEFAULT NULL,
  `rune_poison` int DEFAULT NULL,
  `rune_freeze` int DEFAULT NULL,
  `rune_zap` int DEFAULT NULL,
  `rune_curse` int DEFAULT NULL,
  `rune_cripple` int DEFAULT NULL,
  `rune_parry` int DEFAULT NULL,
  `rune_dodge` int DEFAULT NULL,
  `rune_adrenaline` int DEFAULT NULL,
  `rune_numb` int DEFAULT NULL,
  `rune_cleanse` int DEFAULT NULL,
  `rune_bless` int DEFAULT NULL,
  `rune_scavenge` int DEFAULT NULL,
  `rune_gut` int DEFAULT NULL,
  `rune_low_blow` int DEFAULT NULL,
  `rune_divine` int DEFAULT NULL,
  `rune_vamp` int DEFAULT NULL,
  `rune_void` int DEFAULT NULL,
  `UsedRunesBit` varchar(250) DEFAULT NULL,
  `UnlockedRunesBit` varchar(250) DEFAULT NULL,
  `tracker list` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_deaths`
--

CREATE TABLE `player_deaths` (
  `player_id` int NOT NULL,
  `time` bigint UNSIGNED NOT NULL DEFAULT '0',
  `level` int NOT NULL DEFAULT '1',
  `killed_by` varchar(255) NOT NULL,
  `is_player` tinyint(1) NOT NULL DEFAULT '1',
  `mostdamage_by` varchar(100) NOT NULL,
  `mostdamage_is_player` tinyint(1) NOT NULL DEFAULT '0',
  `unjustified` tinyint(1) NOT NULL DEFAULT '0',
  `mostdamage_unjustified` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_depotitems`
--

CREATE TABLE `player_depotitems` (
  `player_id` int NOT NULL,
  `sid` int NOT NULL COMMENT 'any given range eg 0-100 will be reserved for depot lockers and all > 100 will be then normal items inside depots',
  `pid` int NOT NULL DEFAULT '0',
  `itemtype` int NOT NULL DEFAULT '0',
  `count` int NOT NULL DEFAULT '0',
  `attributes` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_former_names`
--

CREATE TABLE `player_former_names` (
  `id` int NOT NULL,
  `player_id` int NOT NULL,
  `former_name` varchar(35) NOT NULL,
  `date` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_hirelings`
--

CREATE TABLE `player_hirelings` (
  `id` int NOT NULL,
  `player_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `sex` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `posx` int NOT NULL DEFAULT '0',
  `posy` int NOT NULL DEFAULT '0',
  `posz` int NOT NULL DEFAULT '0',
  `lookbody` int NOT NULL DEFAULT '0',
  `lookfeet` int NOT NULL DEFAULT '0',
  `lookhead` int NOT NULL DEFAULT '0',
  `looklegs` int NOT NULL DEFAULT '0',
  `looktype` int NOT NULL DEFAULT '136'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `player_hirelings`
--

INSERT INTO `player_hirelings` (`id`, `player_id`, `name`, `active`, `sex`, `posx`, `posy`, `posz`, `lookbody`, `lookfeet`, `lookhead`, `looklegs`, `looktype`) VALUES
(1, 1586, 'Malekiin', 1, 1, 32341, 32209, 7, 34, 97, 97, 3, 1132),
(2, 1574, 'Teniente', 1, 1, 32380, 32227, 7, 34, 116, 97, 3, 128),
(3, 1657, 'Lucho', 0, 1, 0, 0, 0, 34, 116, 97, 3, 128),
(4, 1634, 'Queen', 1, 1, 33203, 31836, 7, 95, 58, 58, 95, 1108),
(5, 1663, 'Lalo', 1, 1, 33207, 31809, 7, 86, 19, 19, 124, 1118),
(6, 1582, 'Dealer', 0, 1, 0, 0, 0, 34, 116, 97, 3, 128),
(7, 1574, 'Dale Wachin', 1, 1, 32380, 32226, 7, 34, 116, 97, 3, 128),
(8, 1657, 'Lucho', 1, 1, 32345, 32207, 7, 34, 97, 97, 3, 1132),
(9, 1736, 'Cositas', 1, 1, 32399, 32153, 7, 34, 97, 97, 3, 1124),
(10, 1755, 'Rompe', 1, 1, 32396, 32245, 7, 114, 114, 114, 114, 1112);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_inboxitems`
--

CREATE TABLE `player_inboxitems` (
  `player_id` int NOT NULL,
  `sid` int NOT NULL,
  `pid` int NOT NULL DEFAULT '0',
  `itemtype` int NOT NULL DEFAULT '0',
  `count` int NOT NULL DEFAULT '0',
  `attributes` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `player_inboxitems`
--

INSERT INTO `player_inboxitems` (`player_id`, `sid`, `pid`, `itemtype`, `count`, `attributes`) VALUES
(1574, 101, 0, 26054, 1, 0x073900556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c6372696d736f6e206361727065743e2e2501000000000000000800756e777261706964020367000000000000),
(1574, 102, 0, 26054, 1, 0x073900556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c6372696d736f6e206361727065743e2e2501000000000000000800756e777261706964020367000000000000),
(1574, 103, 0, 26054, 1, 0x073900556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c6372696d736f6e206361727065743e2e2501000000000000000800756e777261706964020367000000000000),
(1574, 104, 0, 26054, 1, 0x073900556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c6372696d736f6e206361727065743e2e2501000000000000000800756e777261706964020367000000000000),
(1574, 105, 0, 26054, 1, 0x073900556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c6372696d736f6e206361727065743e2e2501000000000000000800756e777261706964020367000000000000),
(1574, 106, 0, 26054, 1, 0x073900556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c6372696d736f6e206361727065743e2e2501000000000000000800756e777261706964020367000000000000),
(1574, 107, 0, 26054, 1, 0x073900556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c6372696d736f6e206361727065743e2e2501000000000000000800756e777261706964020367000000000000),
(1574, 108, 0, 26054, 1, 0x073900556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c6372696d736f6e206361727065743e2e2501000000000000000800756e777261706964020367000000000000),
(1574, 109, 0, 26054, 1, 0x073900556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c6372696d736f6e206361727065743e2e2501000000000000000800756e777261706964020367000000000000),
(1574, 110, 0, 26054, 1, 0x073900556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c6372696d736f6e206361727065743e2e2501000000000000000800756e777261706964020367000000000000),
(1574, 111, 0, 26054, 1, 0x073900556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c6372696d736f6e206361727065743e2e2501000000000000000800756e777261706964020367000000000000),
(1574, 112, 0, 26054, 1, 0x073900556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c6372696d736f6e206361727065743e2e2501000000000000000800756e777261706964020367000000000000),
(1574, 113, 0, 26054, 1, 0x073900556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c6372696d736f6e206361727065743e2e2501000000000000000800756e777261706964020367000000000000),
(1574, 114, 0, 26054, 1, 0x073900556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c6372696d736f6e206361727065743e2e2501000000000000000800756e777261706964020367000000000000),
(1574, 115, 0, 26054, 1, 0x073900556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c6372696d736f6e206361727065743e2e2501000000000000000800756e777261706964020367000000000000),
(1574, 116, 0, 26054, 1, 0x073900556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c6372696d736f6e206361727065743e2e2501000000000000000800756e777261706964020367000000000000),
(1574, 117, 0, 26054, 1, 0x073b00556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c62726f636164652074617065737472793e2e2501000000000000000800756e777261706964020d67000000000000),
(1574, 118, 0, 26054, 1, 0x073900556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c6372696d736f6e206361727065743e2e2501000000000000000800756e777261706964020367000000000000),
(1574, 119, 0, 26054, 1, 0x073900556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c6372696d736f6e206361727065743e2e2501000000000000000800756e777261706964020367000000000000),
(1574, 120, 0, 26054, 1, 0x073900556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c6372696d736f6e206361727065743e2e2501000000000000000800756e777261706964020367000000000000),
(1574, 121, 0, 26054, 1, 0x073900556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c6372696d736f6e206361727065743e2e2501000000000000000800756e777261706964020367000000000000),
(1574, 122, 0, 26054, 1, 0x073900556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c6372696d736f6e206361727065743e2e2501000000000000000800756e777261706964020367000000000000),
(1574, 123, 0, 26054, 1, 0x073900556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c6372696d736f6e206361727065743e2e2501000000000000000800756e777261706964020367000000000000),
(1574, 124, 0, 26054, 1, 0x073b00556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c62726f636164652074617065737472793e2e2501000000000000000800756e777261706964020d67000000000000),
(1574, 125, 0, 26054, 1, 0x073900556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c6372696d736f6e206361727065743e2e2501000000000000000800756e777261706964020367000000000000),
(1574, 126, 0, 26054, 1, 0x073900556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c6372696d736f6e206361727065743e2e2501000000000000000800756e777261706964020367000000000000),
(1574, 127, 0, 26054, 1, 0x073900556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c6372696d736f6e206361727065743e2e2501000000000000000800756e777261706964020367000000000000),
(1574, 128, 0, 26054, 1, 0x073b00556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c62726f636164652074617065737472793e2e2501000000000000000800756e777261706964020d67000000000000),
(1574, 129, 0, 26054, 1, 0x073b00556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c62726f636164652074617065737472793e2e2501000000000000000800756e777261706964020d67000000000000),
(1574, 130, 0, 26054, 1, 0x073b00556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c62726f636164652074617065737472793e2e2501000000000000000800756e777261706964020d67000000000000),
(1574, 131, 0, 26054, 1, 0x073900556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c6669736820696e20612074616e6b3e2e2501000000000000000800756e77726170696402eb66000000000000),
(1574, 132, 0, 38932, 1, ''),
(1574, 133, 0, 32419, 1, ''),
(1574, 134, 0, 32420, 1, ''),
(1574, 135, 0, 26054, 1, 0x073700556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c6372797374616c206c616d703e2e2501000000000000000800756e77726170696402c08c000000000000),
(1574, 136, 0, 26054, 1, 0x073900556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c65786572636973652064756d6d793e2e2501000000000000000800756e777261706964028f7d000000000000),
(1574, 137, 0, 32415, 1, ''),
(1574, 138, 0, 38934, 1, ''),
(1574, 139, 0, 26054, 1, 0x073d00556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c6368657374206f66206162756e64616e63653e2e2501000000000000000800756e77726170696402ec82000000000000),
(1574, 140, 0, 26054, 1, 0x074200556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c696e636f6d70726568656e7369626c65207269636865733e2e2501000000000000000800756e77726170696402eb82000000000000),
(1574, 141, 0, 26054, 1, 0x074200556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c696e636f6d70726568656e7369626c65207269636865733e2e2501000000000000000800756e77726170696402eb82000000000000),
(1574, 142, 0, 26054, 1, 0x073900556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c65786572636973652064756d6d793e2e2501000000000000000800756e777261706964028f7d000000000000),
(1574, 143, 0, 26054, 1, 0x073400556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c64656d6f6e207065743e2e2501000000000000000800756e77726170696402e172000000000000),
(1574, 144, 0, 26054, 1, 0x073900556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c65786572636973652064756d6d793e2e2501000000000000000800756e777261706964028f7d000000000000),
(1582, 101, 0, 7393, 1, ''),
(1582, 102, 0, 11315, 1, ''),
(1582, 103, 0, 8473, 9, 0x0f09),
(1582, 104, 0, 2153, 1, 0x0f01),
(1582, 105, 0, 7393, 1, ''),
(1586, 101, 0, 25377, 1, 0x0f01),
(1603, 101, 0, 26189, 1, ''),
(1603, 102, 0, 26189, 1, ''),
(1603, 103, 0, 26189, 1, ''),
(1603, 104, 0, 26189, 1, ''),
(1603, 105, 0, 26189, 1, ''),
(1603, 106, 0, 26189, 1, ''),
(1603, 107, 0, 26189, 1, ''),
(1603, 108, 0, 26189, 1, ''),
(1603, 109, 0, 26189, 1, ''),
(1603, 110, 0, 26189, 1, ''),
(1603, 111, 0, 26189, 1, ''),
(1603, 112, 0, 26189, 1, ''),
(1603, 113, 0, 26189, 1, ''),
(1603, 114, 0, 26189, 1, ''),
(1603, 115, 0, 26189, 1, ''),
(1603, 116, 0, 26189, 1, ''),
(1603, 117, 0, 26189, 1, ''),
(1603, 118, 0, 26200, 1, ''),
(1603, 119, 0, 26200, 1, ''),
(1634, 101, 0, 2596, 1, ''),
(1634, 102, 0, 2596, 1, ''),
(1634, 103, 101, 2599, 1, 0x060b00517565656e646976696e651223d4da621304004c656f6e),
(1634, 104, 102, 2599, 1, 0x060b00517565656e646976696e65121e02da621304004c656f6e),
(1643, 101, 0, 7394, 1, ''),
(1643, 102, 0, 42396, 1, ''),
(1643, 103, 0, 2470, 1, ''),
(1643, 104, 0, 7894, 1, ''),
(1643, 105, 0, 7899, 1, ''),
(1643, 106, 0, 8865, 1, ''),
(1643, 107, 0, 2514, 1, ''),
(1643, 108, 0, 8924, 1, ''),
(1643, 109, 0, 8902, 1, ''),
(1643, 110, 0, 7441, 1, ''),
(1643, 111, 0, 12630, 1, ''),
(1643, 112, 0, 8929, 1, ''),
(1643, 113, 0, 5741, 1, ''),
(1643, 114, 0, 5741, 1, ''),
(1643, 115, 0, 5741, 1, ''),
(1643, 116, 0, 7405, 1, ''),
(1643, 117, 0, 8868, 1, ''),
(1643, 118, 0, 2644, 1, ''),
(1643, 119, 0, 2542, 1, ''),
(1643, 120, 0, 2656, 1, ''),
(1643, 121, 0, 2644, 1, ''),
(1643, 122, 0, 2472, 1, ''),
(1643, 123, 0, 7382, 1, ''),
(1643, 124, 0, 2466, 1, ''),
(1643, 125, 0, 8903, 1, ''),
(1647, 101, 0, 30886, 1, ''),
(1660, 101, 0, 2596, 1, ''),
(1660, 102, 101, 2599, 1, 0x060f00596162626120446162626120446f6f12563edc6213060044757374696e),
(1662, 101, 0, 2596, 1, ''),
(1662, 102, 101, 2599, 1, 0x060a007073796b6f206375616b12619dd962130d005073796b6f20416c626572746f),
(1666, 101, 0, 2596, 1, ''),
(1666, 102, 101, 1987, 1, 0x2400),
(1666, 103, 101, 2599, 1, 0x060c007073796b6f207375676573741268d0dc62130d005073796b6f20416c626572746f),
(1666, 104, 102, 10519, 1, ''),
(1742, 101, 0, 8852, 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_items`
--

CREATE TABLE `player_items` (
  `player_id` int NOT NULL DEFAULT '0',
  `pid` int NOT NULL DEFAULT '0',
  `sid` int NOT NULL DEFAULT '0',
  `itemtype` int NOT NULL DEFAULT '0',
  `count` int NOT NULL DEFAULT '0',
  `attributes` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_kills`
--

CREATE TABLE `player_kills` (
  `player_id` int NOT NULL,
  `time` bigint UNSIGNED NOT NULL DEFAULT '0',
  `target` int NOT NULL,
  `unavenged` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `player_kills`
--

INSERT INTO `player_kills` (`player_id`, `time`, `target`, `unavenged`) VALUES
(1586, 1658702582, 1634, 1),
(1619, 1658638176, 1734, 1),
(1619, 1658638188, 1740, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_misc`
--

CREATE TABLE `player_misc` (
  `player_id` int NOT NULL,
  `info` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `player_misc`
--

INSERT INTO `player_misc` (`player_id`, `info`) VALUES
(1344, 0x7b7d),
(1585, 0x7b7d),
(1587, 0x7b7d),
(1588, 0x7b7d),
(1589, 0x7b7d),
(1590, 0x7b7d),
(1593, 0x7b7d),
(1600, 0x7b7d),
(1602, 0x7b7d),
(1604, 0x7b7d),
(1609, 0x7b7d),
(1617, 0x7b7d),
(1575, 0x7b7d),
(1640, 0x7b7d),
(1649, 0x7b7d),
(1648, 0x7b7d),
(1658, 0x7b7d),
(1641, 0x7b7d),
(1631, 0x7b7d),
(1633, 0x7b7d),
(1632, 0x7b7d),
(1668, 0x7b7d),
(1670, 0x7b7d),
(1682, 0x7b7d),
(1689, 0x7b7d),
(1599, 0x7b7d),
(1601, 0x7b7d),
(1697, 0x7b7d),
(1607, 0x7b7d),
(1699, 0x7b7d),
(1595, 0x7b7d),
(1706, 0x7b7d),
(1708, 0x7b7d),
(1707, 0x7b7d),
(1605, 0x7b7d),
(1591, 0x7b7d),
(1692, 0x7b7d),
(1693, 0x7b7d),
(1705, 0x7b7d),
(1724, 0x7b7d),
(1674, 0x7b7d),
(1673, 0x7b7d),
(1671, 0x7b7d),
(1725, 0x7b7d),
(1701, 0x7b7d),
(1676, 0x7b7d),
(1625, 0x7b7d),
(1703, 0x7b7d),
(1621, 0x7b7d),
(1660, 0x7b7d),
(1723, 0x7b7d),
(1669, 0x7b7d),
(1645, 0x7b7d),
(1696, 0x7b7d),
(1711, 0x7b7d),
(1738, 0x7b7d),
(1737, 0x7b7d),
(1732, 0x7b7d),
(1606, 0x7b7d),
(1733, 0x7b7d),
(1597, 0x7b7d),
(1744, 0x7b7d),
(1722, 0x7b7d),
(1623, 0x7b7d),
(1702, 0x7b7d),
(1686, 0x7b7d),
(1739, 0x7b7d),
(1579, 0x7b7d),
(1715, 0x7b7d),
(1749, 0x7b7d),
(1748, 0x7b7d),
(1728, 0x7b7d),
(1592, 0x7b7d),
(1586, 0x7b7d),
(1741, 0x7b7d),
(1752, 0x7b7d),
(1709, 0x7b7d),
(1596, 0x7b7d),
(1638, 0x7b7d),
(1594, 0x7b7d),
(1713, 0x7b7d),
(1714, 0x7b7d),
(1619, 0x7b7d),
(1694, 0x7b7d),
(1639, 0x7b7d),
(1616, 0x7b7d),
(1746, 0x7b7d),
(1642, 0x7b7d),
(1598, 0x7b7d),
(1618, 0x7b7d),
(1608, 0x7b7d),
(1613, 0x7b7d),
(1656, 0x7b7d),
(1620, 0x7b7d),
(1583, 0x7b7d),
(1718, 0x7b7d),
(1721, 0x7b7d),
(1719, 0x7b7d),
(1688, 0x7b7d),
(1603, 0x7b7d),
(1651, 0x7b7d),
(1734, 0x7b7d),
(1665, 0x7b7d),
(1662, 0x7b7d),
(1745, 0x7b7d),
(1726, 0x7b7d),
(1643, 0x7b7d),
(1691, 0x7b7d),
(1698, 0x7b7d),
(1655, 0x7b7d),
(1742, 0x7b7d),
(1736, 0x7b7d),
(1727, 0x7b7d),
(1657, 0x7b7d),
(1663, 0x7b7d),
(1755, 0x7b7d),
(1684, 0x7b7d),
(1740, 0x7b7d),
(1574, 0x7b7d),
(1612, 0x7b7d),
(1635, 0x7b7d),
(1636, 0x7b7d),
(1637, 0x7b7d),
(1664, 0x7b7d),
(1630, 0x7b7d),
(1685, 0x7b7d),
(1578, 0x7b7d),
(1581, 0x7b7d),
(1650, 0x7b7d),
(1672, 0x7b7d),
(1675, 0x7b7d),
(1754, 0x7b7d),
(1762, 0x7b7d),
(1611, 0x7b7d),
(1735, 0x7b7d),
(1731, 0x7b7d),
(1628, 0x7b7d),
(1627, 0x7b7d),
(1626, 0x7b7d),
(1622, 0x7b7d),
(1761, 0x7b7d),
(1765, 0x7b7d),
(1646, 0x7b7d),
(1582, 0x7b7d),
(1704, 0x7b7d),
(1730, 0x7b7d),
(1763, 0x7b7d),
(1695, 0x7b7d),
(1760, 0x7b7d),
(1751, 0x7b7d),
(1750, 0x7b7d),
(1577, 0x7b7d),
(1666, 0x7b7d),
(1647, 0x7b7d),
(1584, 0x7b7d),
(1634, 0x7b7d),
(1678, 0x7b7d),
(1624, 0x7b7d);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_namelocks`
--

CREATE TABLE `player_namelocks` (
  `player_id` int NOT NULL,
  `reason` varchar(255) NOT NULL,
  `namelocked_at` bigint NOT NULL,
  `namelocked_by` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_prey`
--

CREATE TABLE `player_prey` (
  `player_id` int NOT NULL,
  `slot` tinyint(1) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `raceid` varchar(250) NOT NULL,
  `option` tinyint(1) NOT NULL,
  `bonus_type` tinyint(1) NOT NULL,
  `bonus_rarity` tinyint(1) NOT NULL,
  `bonus_percentage` varchar(250) NOT NULL,
  `bonus_time` varchar(250) NOT NULL,
  `free_reroll` bigint NOT NULL,
  `monster_list` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `player_prey`
--

INSERT INTO `player_prey` (`player_id`, `slot`, `state`, `raceid`, `option`, `bonus_type`, `bonus_rarity`, `bonus_percentage`, `bonus_time`, `free_reroll`, `monster_list`) VALUES
(1573, 0, 3, '0', 0, 3, 6, '24', '0', 1658241482830, 0x32003f015100bd06d6031b0365031501de00),
(1573, 1, 3, '0', 0, 2, 5, '20', '0', 1658241482832, 0x2a0525001e002a010d012d00000215000403),
(1573, 2, 0, '0', 0, 1, 9, '36', '0', 1658241482834, ''),
(1344, 0, 3, '0', 0, 0, 2, '8', '0', 1658235746076, 0x5b039c051b000600c5020c005c0376003a02),
(1344, 1, 3, '0', 0, 2, 6, '24', '0', 1658235746078, 0x8b0736011d002d000f02ef066f0203088b06),
(1344, 2, 0, '0', 0, 1, 6, '24', '0', 1658235746079, ''),
(1585, 0, 3, '0', 0, 2, 6, '24', '0', 1658248808079, 0x7c040600e302f204ec04f70021032a013800),
(1585, 1, 3, '0', 0, 2, 6, '24', '0', 1658248808081, 0x8807b50104030e01d800ae04ce061b00c801),
(1585, 2, 0, '0', 0, 2, 8, '32', '0', 1658248808082, ''),
(1587, 0, 3, '0', 0, 3, 4, '16', '0', 1658249252304, 0x1d044d01fc0512043600f603d30324004a04),
(1587, 1, 3, '0', 0, 1, 3, '12', '0', 1658249252306, 0x2d024502f8036d025e031603480066023500),
(1587, 2, 0, '0', 0, 3, 9, '36', '0', 1658249252308, ''),
(1588, 0, 3, '0', 0, 2, 9, '36', '0', 1658249282062, 0xba026d000403560692037301a20287058a04),
(1588, 1, 3, '0', 0, 1, 3, '12', '0', 1658249282064, 0xd8053d007f01210168031f01480124000400),
(1588, 2, 0, '0', 0, 1, 4, '16', '0', 1658249282065, ''),
(1589, 0, 3, '0', 0, 0, 4, '16', '0', 1658250193030, 0x8a040f01dd0003012701a702d503f7001f04),
(1589, 1, 3, '0', 0, 1, 5, '20', '0', 1658250193035, 0x0f046e008d0716005302d302ef0644007203),
(1589, 2, 0, '0', 0, 1, 3, '12', '0', 1658250193038, ''),
(1590, 0, 3, '0', 0, 0, 5, '20', '0', 1658253546968, 0x7b001800f40008030a066e03d3003d002a01),
(1590, 1, 3, '0', 0, 2, 3, '12', '0', 1658253546970, 0x0d01a202760389071300bc02090024007a00),
(1590, 2, 0, '0', 0, 0, 9, '36', '0', 1658253546972, ''),
(1593, 0, 3, '0', 0, 2, 8, '32', '0', 1658257275009, 0xc802420254062b00b602ab0709031c01cd02),
(1593, 1, 3, '0', 0, 1, 6, '24', '0', 1658257275012, 0x7802ec000e038904200732001d00ff003800),
(1593, 2, 0, '0', 0, 1, 2, '8', '0', 1658257275015, ''),
(1600, 0, 3, '0', 0, 2, 2, '8', '0', 1658260925863, 0x01021b0181016d02890130022b0207005504),
(1600, 1, 3, '0', 0, 0, 7, '28', '0', 1658260925865, 0x4f013e01cf027b03fe011002020388073400),
(1600, 2, 0, '0', 0, 3, 3, '12', '0', 1658260925866, ''),
(1602, 0, 3, '0', 0, 1, 2, '8', '0', 1658261529790, 0x1303080382031f040e01000107020f008102),
(1602, 1, 3, '0', 0, 2, 6, '24', '0', 1658261529791, 0xe505ab0714004000bc065a06b902c8017a00),
(1602, 2, 0, '0', 0, 1, 5, '20', '0', 1658261529793, ''),
(1604, 0, 3, '0', 0, 0, 10, '40', '0', 1658266890980, 0x30024c0028010e0173000f002f0568030900),
(1604, 1, 3, '0', 0, 2, 6, '24', '0', 1658266890982, 0x0200e902ea05480154061d070a03aa070c06),
(1604, 2, 0, '0', 0, 0, 2, '8', '0', 1658266890984, ''),
(1609, 0, 3, '0', 0, 2, 10, '40', '0', 1658270432917, 0x9b07fc0011000b028101f80030023e001e00),
(1609, 1, 3, '0', 0, 2, 8, '32', '0', 1658270432919, 0xef061b0000024d01c1038306e0009203d402),
(1609, 2, 0, '0', 0, 3, 9, '36', '0', 1658270432920, ''),
(1610, 0, 3, '0', 0, 2, 9, '36', '0', 1658270916331, 0x07074802be03d7007500ae070400f4034f01),
(1610, 1, 3, '0', 0, 0, 3, '12', '0', 1658270916334, 0x460282011d00ad0415007702ec0308030e07),
(1610, 2, 0, '0', 0, 3, 5, '20', '0', 1658270916336, ''),
(1617, 0, 3, '0', 0, 2, 6, '24', '0', 1658288256673, 0x0302b8023f018a0701036900520292071501),
(1617, 1, 3, '0', 0, 3, 9, '36', '0', 1658288256675, 0x1f042801a20271007700e105530078003500),
(1617, 2, 0, '0', 0, 2, 3, '12', '0', 1658288256678, ''),
(1575, 0, 3, '0', 0, 2, 7, '28', '0', 1658246549231, 0xe8050002c6068801100295033f010d073400),
(1575, 1, 3, '0', 0, 3, 3, '12', '0', 1658246549235, 0xf200f5050f04ad0492039407d8003e013f00),
(1575, 2, 0, '0', 0, 3, 3, '12', '0', 1658246549237, ''),
(1640, 0, 3, '0', 0, 1, 2, '8', '0', 1658439696764, 0x5300fb051c03df001d04e102f503ad077b03),
(1640, 1, 3, '0', 0, 0, 6, '24', '0', 1658439696767, 0xff011e0090037901a002700268007d005104),
(1640, 2, 0, '0', 0, 3, 7, '28', '0', 1658439696768, ''),
(1649, 0, 3, '0', 0, 1, 5, '20', '0', 1658446444972, 0x4502c8020a03c0067305c1031b0335009a07),
(1649, 1, 3, '0', 0, 2, 3, '12', '0', 1658446444974, 0x4c044e000f0175004800dd001d019d07d503),
(1649, 2, 0, '0', 0, 3, 6, '24', '0', 1658446444976, ''),
(1648, 0, 3, '0', 0, 2, 9, '36', '0', 1658444195336, 0x8c0798032c0003017a005f04c20653006104),
(1648, 1, 3, '0', 0, 0, 8, '32', '0', 1658444195337, 0x2a011604440216004800780615017f011700),
(1648, 2, 0, '0', 0, 2, 2, '8', '0', 1658444195339, ''),
(1658, 0, 3, '0', 0, 0, 3, '12', '0', 1658455600215, 0x72033000c7013f010501200166028106a702),
(1658, 1, 3, '0', 0, 0, 8, '32', '0', 1658455600217, 0xe807ac070401b902c9058102fc050e011500),
(1658, 2, 0, '0', 0, 2, 4, '16', '0', 1658455600219, ''),
(1631, 0, 3, '0', 0, 3, 9, '36', '0', 1658489458314, 0x1a00a302fb006303e10585018d072d020300),
(1631, 1, 3, '0', 0, 1, 3, '12', '0', 1658489458317, 0x67001c0191037305c8010f007d0084050903),
(1631, 2, 0, '0', 0, 1, 2, '8', '0', 1658489458318, ''),
(1633, 0, 3, '0', 0, 2, 7, '28', '0', 1658488394844, 0x1c004601bc02cd038c074e0101032206f603),
(1633, 1, 3, '0', 0, 2, 5, '20', '0', 1658488394847, 0x7606210019001b07730445001d0230002805),
(1633, 2, 0, '0', 0, 3, 6, '24', '0', 1658488394850, ''),
(1632, 0, 3, '0', 0, 0, 6, '24', '0', 1658488930234, 0x0200df00bf03be06f8004c007d0051044000),
(1632, 1, 3, '0', 0, 3, 9, '36', '0', 1658488930236, 0xc1066f027a00790249002a007c0090039201),
(1632, 2, 0, '0', 0, 3, 8, '32', '0', 1658488930237, ''),
(1668, 0, 3, '0', 0, 1, 8, '32', '0', 1658505805328, 0x27001100de002106c606db00ac043e012d00),
(1668, 1, 3, '0', 0, 2, 3, '12', '0', 1658505805329, 0x1b01e302a7024300c901c003700077021600),
(1668, 2, 0, '0', 0, 3, 2, '8', '0', 1658505805332, ''),
(1670, 0, 3, '0', 0, 2, 3, '12', '0', 1658508390616, 0x4d010c00af07ed00020316002c003f002200),
(1670, 1, 3, '0', 0, 1, 7, '28', '0', 1658508390618, 0xca0102011d03000113009c056e060e03c806),
(1670, 2, 0, '0', 0, 1, 6, '24', '0', 1658508390620, ''),
(1682, 0, 3, '0', 0, 3, 5, '20', '0', 1658512544631, 0x09028506cc017a047702da000f024c013800),
(1682, 1, 3, '0', 0, 2, 10, '40', '0', 1658512544633, 0xad0490030d06cf01a305f800db002e052001),
(1682, 2, 0, '0', 0, 2, 3, '12', '0', 1658512544635, ''),
(1689, 0, 3, '0', 0, 1, 8, '32', '0', 1658524629044, 0x8d0713040d022c020c0234000d0109024b04),
(1689, 1, 3, '0', 0, 0, 8, '32', '0', 1658524629046, 0x7b0378048901d001fc00770281026c022100),
(1689, 2, 0, '0', 0, 2, 6, '24', '0', 1658524629047, ''),
(1599, 0, 3, '0', 0, 3, 2, '8', '0', 1658259948763, 0x830386066300d00348001f013f007a004804),
(1599, 1, 3, '0', 0, 1, 5, '20', '0', 1658259948765, 0x9201550648026900b5017f06cf02f7003900),
(1599, 2, 0, '0', 0, 2, 6, '24', '0', 1658259948767, ''),
(1601, 0, 4, '0', 0, 0, 5, '20', '0', 1658527014910, 0xcf034c00df05aa070c02020148041c04e005),
(1601, 1, 4, '0', 0, 3, 3, '12', '0', 1658527012964, 0x0f044300f5038405f800f4001b00bd023400),
(1601, 2, 0, '0', 0, 3, 6, '24', '0', 1658260936689, ''),
(1697, 0, 3, '0', 0, 1, 3, '12', '0', 1658546823224, 0x5d07140089012905cd02000180069603dd00),
(1697, 1, 3, '0', 0, 3, 9, '36', '0', 1658546823227, 0xfb037504c40291036e00d303340043009d05),
(1697, 2, 0, '0', 0, 3, 3, '12', '0', 1658546823229, ''),
(1607, 0, 3, '0', 0, 1, 4, '16', '0', 1658269247841, 0x4202e105780374019403c506ff0042001b06),
(1607, 1, 3, '0', 0, 3, 8, '32', '0', 1658269247844, 0x75061403b50196033d0177003900d7027a03),
(1607, 2, 0, '0', 0, 1, 9, '36', '0', 1658269247846, ''),
(1699, 0, 3, '0', 0, 0, 6, '24', '0', 1658568110633, 0x3f000a0655040600fd010f02d7066d023500),
(1699, 1, 3, '0', 0, 0, 5, '20', '0', 1658568110635, 0x1a01b902cd062d00f603c0066900f5051b03),
(1699, 2, 0, '0', 0, 0, 7, '28', '0', 1658568110637, ''),
(1595, 0, 3, '0', 0, 2, 5, '20', '0', 1658257508541, 0xb9064a079a0570000f025300d403db002200),
(1595, 1, 3, '0', 0, 1, 4, '16', '0', 1658257508544, 0x7706d302b6029d03480777020b000802f603),
(1595, 2, 0, '0', 0, 2, 3, '12', '0', 1658257508546, ''),
(1706, 0, 3, '0', 0, 2, 9, '36', '0', 1658585492570, 0xe6052301ab076f020c013f0069007a000e02),
(1706, 1, 3, '0', 0, 1, 7, '28', '0', 1658585492572, 0xae0730004202f403f2041000fc003e01be06),
(1706, 2, 0, '0', 0, 3, 6, '24', '0', 1658585492573, ''),
(1708, 0, 3, '0', 0, 2, 5, '20', '0', 1658587009411, 0xc5025c041c026a00fb059a0576002900fc00),
(1708, 1, 3, '0', 0, 0, 4, '16', '0', 1658587009413, 0x7802fc010e032800fe036403df050e072400),
(1708, 2, 0, '0', 0, 1, 10, '40', '0', 1658587009415, ''),
(1707, 0, 3, '0', 0, 3, 8, '32', '0', 1658586872711, 0x340079013600f403cc01f3003f017305f601),
(1707, 1, 3, '0', 0, 2, 5, '20', '0', 1658586872713, 0x4f002b00ae04d0034d010d06830624000001),
(1707, 2, 0, '0', 0, 1, 8, '32', '0', 1658586872715, ''),
(1605, 0, 3, '0', 0, 0, 8, '32', '0', 1658267097841, 0x6e00c8011102b9024c01e9028a048606d204),
(1605, 1, 3, '0', 0, 1, 8, '32', '0', 1658267097844, 0x3e000902db00d40281034400d30204018102),
(1605, 2, 0, '0', 0, 0, 5, '20', '0', 1658267097845, ''),
(1591, 0, 3, '0', 0, 0, 7, '28', '0', 1658253967910, 0x8a06b50200017000f9054c042805d3020707),
(1591, 1, 3, '0', 0, 3, 6, '24', '0', 1658253967913, 0x0300110056060b021303d602e8075f047700),
(1591, 2, 0, '0', 0, 0, 3, '12', '0', 1658253967917, ''),
(1692, 0, 3, '0', 0, 3, 10, '40', '0', 1658529944121, 0x9a07f70028001d0442021803120010046900),
(1692, 1, 3, '0', 0, 2, 9, '36', '0', 1658529944123, 0xc20344015104e40524008705520256060301),
(1692, 2, 0, '0', 0, 2, 4, '16', '0', 1658529944125, ''),
(1693, 0, 4, '0', 0, 3, 9, '36', '0', 1658616241627, 0xf5074a077400b7021e04c6061200a2050101),
(1693, 1, 4, '0', 0, 2, 5, '20', '0', 1658616239386, 0xfb05910317004b047704f505e5054d00ae04),
(1693, 2, 0, '0', 0, 3, 3, '12', '0', 1658531251765, ''),
(1705, 0, 3, '0', 0, 1, 2, '8', '0', 1658583478266, 0x7a06a202f2042100d90242011c04df029a05),
(1705, 1, 3, '0', 0, 0, 7, '28', '0', 1658583478268, 0x28010902fe006400a70206017500dc029403),
(1705, 2, 0, '0', 0, 0, 10, '40', '0', 1658583478270, ''),
(1724, 0, 3, '0', 0, 2, 6, '24', '0', 1658627811590, 0xe3022206d802ac04b502870118003e017504),
(1724, 1, 3, '0', 0, 1, 8, '32', '0', 1658627811593, 0xf900ed005104aa074d018801b50784052c00),
(1724, 2, 0, '0', 0, 3, 9, '36', '0', 1658627811595, ''),
(1674, 0, 3, '0', 0, 1, 6, '24', '0', 1658509361032, 0xd101f4009e03c2034c00210068032c028102),
(1674, 1, 3, '0', 0, 2, 6, '24', '0', 1658509361035, 0x5d03c9062c00c9011b000b002a05d7003900),
(1674, 2, 0, '0', 0, 3, 5, '20', '0', 1658509361036, ''),
(1673, 0, 3, '0', 0, 3, 8, '32', '0', 1658509556135, 0x8501c2022601c2035c0490034100b5078b06),
(1673, 1, 3, '0', 0, 1, 6, '24', '0', 1658509556139, 0x0f071b00b906cd010400c901b5017500df00),
(1673, 2, 0, '0', 0, 2, 4, '16', '0', 1658509556141, ''),
(1671, 0, 3, '0', 0, 3, 10, '40', '0', 1658509056841, 0xfb0006000f0219074d04cc066e030f00f403),
(1671, 1, 3, '0', 0, 1, 10, '40', '0', 1658509056843, 0x06073e005f00b7012a0568030f072d00a102),
(1671, 2, 0, '0', 0, 0, 5, '20', '0', 1658509056845, ''),
(1725, 0, 3, '0', 0, 3, 10, '40', '0', 1658628060127, 0x82012d05080351048606e80570002601fd01),
(1725, 1, 3, '0', 0, 3, 2, '8', '0', 1658628060129, 0x2004400016036f035302150490034200ca01),
(1725, 2, 0, '0', 0, 3, 8, '32', '0', 1658628060132, ''),
(1703, 0, 3, '0', 0, 3, 7, '28', '0', 1658573016879, 0x1d03c006c10290030b00a305130088012300),
(1703, 1, 3, '0', 0, 3, 9, '36', '0', 1658573016882, 0xd304390187054d010f015c033f0080060807),
(1703, 2, 0, '0', 0, 1, 2, '8', '0', 1658573016884, ''),
(1621, 0, 3, '0', 0, 2, 4, '16', '0', 1658313337842, 0x000204004900290010071d00e00560057a00),
(1621, 1, 3, '0', 0, 2, 9, '36', '0', 1658313337844, 0xc9064801640583020903db021e071b007804),
(1621, 2, 0, '0', 0, 3, 6, '24', '0', 1658313337845, ''),
(1660, 0, 3, '0', 0, 2, 7, '28', '0', 1658457672862, 0x7003be01a20542021d00110418002d000902),
(1660, 1, 3, '0', 0, 2, 2, '8', '0', 1658457672864, 0x99073e01f7007f01db005000490017006e04),
(1660, 2, 0, '0', 0, 1, 8, '32', '0', 1658457672866, ''),
(1723, 0, 3, '0', 0, 1, 6, '24', '0', 1658626616696, 0xc0034907f90517008d072400150076064d00),
(1723, 1, 3, '0', 0, 1, 2, '8', '0', 1658626616698, 0x2b015a068a067c048a04e902610448018102),
(1723, 2, 0, '0', 0, 2, 5, '20', '0', 1658626616700, ''),
(1641, 0, 3, '0', 0, 1, 2, '8', '0', 1658441231769, 0xdb002f051d04120035001500f7033a021d00),
(1641, 1, 3, '0', 0, 2, 3, '12', '0', 1658441231770, 0x8607dc024700b60189014c041b00a2020c02),
(1641, 2, 0, '0', 0, 0, 7, '28', '0', 1658441231771, ''),
(1669, 0, 4, '0', 0, 3, 5, '20', '0', 1658507517782, 0xbe06d902cd0342020c00920104002d050707),
(1669, 1, 4, '0', 0, 1, 3, '12', '0', 1658507517785, 0x7b060f012600f5070501ce03e102ff001c01),
(1669, 2, 0, '0', 0, 2, 7, '28', '0', 1658507517787, ''),
(1701, 0, 3, '0', 0, 1, 8, '32', '0', 1658572646136, 0xa70204024e017a037401ce0338000e03ef00),
(1701, 1, 3, '0', 0, 1, 5, '20', '0', 1658572646138, 0x2e0219005d074c0104018501c3039d032a05),
(1701, 2, 0, '0', 0, 0, 9, '36', '0', 1658572646140, ''),
(1645, 0, 4, '0', 0, 2, 9, '36', '0', 1658443587220, 0x73030802720010040f0248046d008f021701),
(1645, 1, 4, '0', 0, 3, 4, '16', '0', 1658443587222, 0x9b072d059d030601430027002c0071031c02),
(1645, 2, 0, '0', 0, 2, 3, '12', '0', 1658443587224, ''),
(1696, 0, 4, '0', 0, 0, 5, '20', '0', 1658693610234, 0x8101ef06c002f8006c022c00db00ae04dc02),
(1696, 1, 4, '0', 0, 2, 7, '28', '0', 1658693622031, 0x2600b6070301ce0543011000d7003d007403),
(1696, 2, 0, '0', 0, 0, 7, '28', '0', 1658544722157, ''),
(1711, 0, 3, '0', 0, 1, 4, '16', '0', 1658627408193, 0xc8047b00200170000f006c0084060c06d800),
(1711, 1, 3, '0', 0, 0, 10, '40', '0', 1658627408195, 0xe8077203a205790110022e02280069001b03),
(1711, 2, 0, '0', 0, 0, 6, '24', '0', 1658627408196, ''),
(1738, 0, 3, '0', 0, 0, 5, '20', '0', 1658702503280, 0x2c0009022d0251000f0181035300c203f601),
(1738, 1, 3, '0', 0, 1, 5, '20', '0', 1658702503282, 0x0102e20515047304df024c00130377063e01),
(1738, 2, 0, '0', 0, 2, 4, '16', '0', 1658702503283, ''),
(1737, 0, 3, '0', 0, 0, 2, '8', '0', 1658702023330, 0xc4069c0330009f058102a702d800fb007903),
(1737, 1, 3, '0', 0, 0, 7, '28', '0', 1658702023332, 0x8b0675044d04d303da005d070e0147001501),
(1737, 2, 0, '0', 0, 1, 2, '8', '0', 1658702023334, ''),
(1732, 0, 3, '0', 0, 0, 6, '24', '0', 1658695470393, 0x42014d000a03b6029e0577062f004a021204),
(1732, 1, 3, '0', 0, 2, 4, '16', '0', 1658695470396, 0x9503760692031b06f100cf023000e3024801),
(1732, 2, 0, '0', 0, 0, 8, '32', '0', 1658695470398, ''),
(1606, 0, 3, '0', 0, 0, 2, '8', '0', 1658267851170, 0x64034802bd06b50253004a02810243016500),
(1606, 1, 3, '0', 0, 1, 7, '28', '0', 1658267851172, 0x06026602390056064f011004bc02d2031504),
(1606, 2, 0, '0', 0, 2, 2, '8', '0', 1658267851174, ''),
(1733, 0, 3, '0', 0, 2, 5, '20', '0', 1658696355522, 0x440121003d00a70276043000700218079703),
(1733, 1, 3, '0', 0, 0, 6, '24', '0', 1658696355524, 0xb6028506cc06100216007b004500f4032c00),
(1733, 2, 3, '0', 0, 4, 1, '5', '0', 1658696355526, 0xea052c02ec034e016a024c005e00f3002400),
(1597, 0, 3, '0', 0, 3, 6, '24', '0', 1658259083580, 0x21018102490014036d000b00940379006a00),
(1597, 1, 3, '0', 0, 3, 5, '20', '0', 1658259083581, 0x0f0248009002420068002d05180092078a04),
(1597, 2, 0, '0', 0, 0, 3, '12', '0', 1658259083583, ''),
(1722, 0, 3, '0', 0, 0, 8, '32', '0', 1658624227545, 0x2f0296030501fb037c00710048071800d402),
(1722, 1, 3, '0', 0, 1, 3, '12', '0', 1658624227548, 0x95034f01ff01fa036a004801f9051b006403),
(1722, 2, 0, '0', 0, 1, 2, '8', '0', 1658624227549, ''),
(1744, 0, 2, '64', 0, 0, 8, '32', '6840', 1658707812594, 0x6104ad07d8001e07f60051001d04be03),
(1744, 1, 2, '1532', 0, 1, 2, '8', '6840', 1658707812596, 0xd003b602080014009d03900369009203),
(1744, 2, 0, '0', 0, 3, 5, '20', '0', 1658707812597, ''),
(1623, 0, 4, '0', 0, 3, 7, '28', '0', 1658641034156, 0x60050b0019074c007c040403a30573040702),
(1623, 1, 4, '0', 0, 1, 2, '8', '0', 1658713398162, 0x8b064b047d009e0372057301c3020d017b06),
(1623, 2, 0, '0', 0, 3, 2, '8', '0', 1658453646823, ''),
(1702, 0, 3, '0', 0, 1, 2, '8', '0', 1658581119371, 0xc5023f00c5062c007304cd0590020c06c203),
(1702, 1, 3, '0', 0, 3, 2, '8', '0', 1658581119373, 0xb9062c021807520002012701780115016f02),
(1702, 2, 0, '0', 0, 2, 6, '24', '0', 1658581119375, ''),
(1686, 0, 4, '0', 0, 2, 2, '8', '0', 1658608568349, 0xce05f800fb003600ef060602e102ec002701),
(1686, 1, 4, '0', 0, 2, 7, '28', '0', 1658608566069, 0xc802ce031c07010217007300ff0008068706),
(1686, 2, 0, '0', 0, 2, 6, '24', '0', 1658519403142, ''),
(1676, 0, 3, '0', 0, 0, 6, '24', '0', 1658510251038, 0xc8040b03be0274016005db020c013e006802),
(1676, 1, 3, '0', 0, 2, 2, '8', '0', 1658510251041, 0xd60383034100810224012400f30452000803),
(1676, 2, 0, '0', 0, 2, 7, '28', '0', 1658510251042, ''),
(1739, 0, 3, '0', 0, 0, 7, '28', '0', 1658703058050, 0xca01af0790031b037100000231006d02f403),
(1739, 1, 3, '0', 0, 3, 8, '32', '0', 1658703058053, 0x5e047b06e205e10021034c011c02e3021d00),
(1739, 2, 0, '0', 0, 3, 6, '24', '0', 1658703058056, ''),
(1579, 0, 4, '0', 0, 2, 7, '28', '0', 1658723361264, 0x0103320229007400080628054a04fb037303),
(1579, 1, 4, '0', 0, 2, 8, '32', '0', 1658723353976, 0xcd054d040600f2006f0281028b0781062007),
(1579, 2, 0, '0', 0, 0, 4, '16', '0', 1658248580846, ''),
(1715, 0, 3, '0', 0, 0, 7, '28', '0', 1658598183597, 0x4900030172056d02bc0284063500d2046f02),
(1715, 1, 3, '0', 0, 0, 4, '16', '0', 1658598183600, 0x4502cd02c206da006a00bd02fb009703ad04),
(1715, 2, 0, '0', 0, 1, 8, '32', '0', 1658598183601, ''),
(1749, 0, 3, '0', 0, 2, 3, '12', '0', 1658773874629, 0x1b06e305330230003d0115009b052d007100),
(1749, 1, 3, '0', 0, 1, 6, '24', '0', 1658773874630, 0x0302fb03c80138004c040d017900df008102),
(1749, 2, 0, '0', 0, 0, 9, '36', '0', 1658773874631, ''),
(1748, 0, 3, '0', 0, 0, 9, '36', '0', 1658773010301, 0x770425001d01db0077024802c2031c023e01),
(1748, 1, 3, '0', 0, 0, 4, '16', '0', 1658773010304, 0x0c06dd002301f905b9063700090330000e03),
(1748, 2, 0, '0', 0, 1, 7, '28', '0', 1658773010307, ''),
(1728, 0, 3, '0', 0, 0, 3, '12', '0', 1658761281266, 0x1007fd0073049e057b040e03d300c5022100),
(1728, 1, 3, '0', 0, 1, 7, '28', '0', 1658761281268, 0xde021600a2059b07d30363001b030f001e01),
(1728, 2, 0, '0', 0, 1, 8, '32', '0', 1658761281270, ''),
(1592, 0, 3, '0', 0, 1, 9, '36', '0', 1658255907220, 0x23017f0170022206d603bc0208031c034d01),
(1592, 1, 3, '0', 0, 3, 10, '40', '0', 1658255907224, 0x720016006e04a305710073052f020f006900),
(1592, 2, 0, '0', 0, 2, 6, '24', '0', 1658255907227, ''),
(1586, 0, 2, '1930', 0, 2, 10, '40', '6660', 1658544052707, 0x0a006e04d3007a0301027000100783034700),
(1586, 1, 2, '1938', 0, 2, 10, '40', '5820', 1658544053594, 0x79027500f1005c0406001b074a071b03ae04),
(1586, 2, 2, '1933', 0, 2, 10, '40', '6660', 1658544054545, 0x85065e03b906180015013a02df0519076005),
(1741, 0, 3, '0', 0, 3, 6, '24', '0', 1658720036012, 0x1404fa00b50119005d077100c20674012c00),
(1741, 1, 3, '0', 0, 3, 2, '8', '0', 1658720036014, 0x4602680354066405f700b502b40755060f00),
(1741, 2, 0, '0', 0, 2, 6, '24', '0', 1658720036017, ''),
(1752, 0, 3, '0', 0, 2, 10, '40', '0', 1658782423950, 0x2200dc02d2040402c70211001200ed003e01),
(1752, 1, 3, '0', 0, 0, 2, '8', '0', 1658782423952, 0xba06fc004801b7014d010e0116037f060c06),
(1752, 2, 0, '0', 0, 1, 8, '32', '0', 1658782423954, ''),
(1709, 0, 3, '0', 0, 2, 9, '36', '0', 1658782430371, 0x5f009d05f0046a023e01c80201030f02dc00),
(1709, 1, 3, '0', 0, 0, 2, '8', '0', 1658782430374, 0xce0595031a0130020c000f01280527000200),
(1709, 2, 0, '0', 0, 0, 6, '24', '0', 1658782430376, ''),
(1596, 0, 3, '0', 0, 1, 10, '40', '0', 1658427924247, 0x0707490404010400f6036a00210399076900),
(1596, 1, 3, '0', 0, 1, 4, '16', '0', 1658427924250, 0x8203fc005f007600dc0212049201d3030800),
(1596, 2, 0, '0', 0, 1, 5, '20', '0', 1658427924252, ''),
(1638, 0, 4, '0', 0, 1, 8, '32', '0', 1658787084600, 0x7f0667023b0022060e03d302f70007020403),
(1638, 1, 2, '34', 0, 1, 5, '20', '6600', 1658787076497, 0xa20244010400fb0514001d076a004f00),
(1638, 2, 0, '0', 0, 3, 10, '40', '0', 1658437567003, ''),
(1594, 0, 3, '0', 0, 2, 7, '28', '0', 1658257785328, 0x7401c2060e037c040f004502180323004400),
(1594, 1, 3, '0', 0, 0, 3, '12', '0', 1658257785330, 0xfd015d0313009403ba0223014d01e1022a00),
(1594, 2, 0, '0', 0, 2, 9, '36', '0', 1658257785332, ''),
(1713, 0, 3, '0', 0, 3, 5, '20', '0', 1658791699345, 0xf7010902f80368032701f8009403cf014a02),
(1713, 1, 3, '0', 0, 3, 4, '16', '0', 1658791699346, 0xe905e807950703000f002905470009038306),
(1713, 2, 0, '0', 0, 1, 3, '12', '0', 1658791699350, ''),
(1714, 0, 3, '0', 0, 2, 6, '24', '0', 1658794904562, 0xd80517010c001002df001504190178002400),
(1714, 1, 3, '0', 0, 0, 2, '8', '0', 1658794904565, 0xd0010201f7006a006f0276034a0713001501),
(1714, 2, 0, '0', 0, 0, 8, '32', '0', 1658794904566, ''),
(1619, 0, 3, '0', 0, 4, 1, '5', '0', 1658716630622, 0x0d071b0484058206d0016400e505d700e405),
(1619, 1, 2, '1724', 0, 1, 4, '16', '1380', 1658716632550, 0x9e05c406d2032a00db00cf0385051000),
(1619, 2, 0, '0', 0, 2, 8, '32', '0', 1658286136193, ''),
(1694, 0, 3, '0', 0, 1, 3, '12', '0', 1658540537277, 0xe1008405760387074e01be0110042a05fb00),
(1694, 1, 3, '0', 0, 0, 5, '20', '0', 1658540537281, 0xc5061002f7010e04d800fc05dc023e011303),
(1694, 2, 0, '0', 0, 1, 4, '16', '0', 1658540537283, ''),
(1639, 0, 4, '0', 0, 2, 6, '24', '0', 1658795838279, 0x7804ed000903b702b5072c001a079507bc02),
(1639, 1, 3, '0', 0, 4, 1, '5', '0', 1658795840238, 0xfe036004b6017f06ff010f010500e807dc02),
(1639, 2, 0, '0', 0, 0, 6, '24', '0', 1658436750598, ''),
(1616, 0, 4, '0', 0, 0, 4, '16', '0', 1658704232140, 0x4100180011021d02c90122017a0048078b06),
(1616, 1, 4, '0', 0, 3, 7, '28', '0', 1658704237079, 0x520079011c078b0404026a0232006f064502),
(1616, 2, 0, '0', 0, 2, 6, '24', '0', 1658283476527, ''),
(1746, 0, 3, '0', 0, 3, 10, '40', '0', 1658759502991, 0x2300cf039a07760296034f01f70089017302),
(1746, 1, 3, '0', 0, 2, 7, '28', '0', 1658759502993, 0x9d057706f2048102d001fb0348005c044c01),
(1746, 2, 0, '0', 0, 3, 5, '20', '0', 1658759502995, ''),
(1598, 0, 3, '0', 0, 3, 7, '28', '0', 1658258844693, 0x110032020e015f0413047400920794030501),
(1598, 1, 3, '0', 0, 1, 10, '40', '0', 1658258844695, 0xe30571032c002f052400ae047c0478017000),
(1598, 2, 0, '0', 0, 1, 8, '32', '0', 1658258844697, ''),
(1618, 0, 2, '1963', 0, 0, 4, '16', '3600', 1658799609152, 0xcf02640302018203ec03cd0663002801),
(1618, 1, 2, '888', 0, 2, 6, '24', '3600', 1658799607711, 0x6a009e037102c20301029d0760053302),
(1618, 2, 0, '0', 0, 2, 4, '16', '0', 1658286799314, ''),
(1608, 0, 3, '0', 0, 3, 5, '20', '0', 1658269396209, 0xae043e0112000301c00376040b0312038901),
(1608, 1, 3, '0', 0, 0, 9, '36', '0', 1658269396211, 0x1a076f02df0078040501150403006a007901),
(1608, 2, 0, '0', 0, 0, 6, '24', '0', 1658269396212, ''),
(1656, 0, 3, '0', 0, 2, 2, '8', '0', 1658453889381, 0xdc000f07000272009d037b00920345020c06),
(1656, 1, 3, '0', 0, 0, 8, '32', '0', 1658453889383, 0x3e016a00e10248004301ce03d40345007a06),
(1656, 2, 0, '0', 0, 2, 5, '20', '0', 1658453889385, ''),
(1620, 0, 2, '1143', 0, 0, 4, '16', '6360', 1658795463184, 0x08002700d602900375007a061300),
(1620, 1, 2, '673', 0, 1, 10, '40', '6360', 1658800794753, 0xf803be024602d1019c05fb0015027d00),
(1620, 2, 0, '0', 0, 2, 7, '28', '0', 1658288492966, ''),
(1583, 0, 2, '34', 0, 2, 10, '40', '6900', 1658653569666, 0x49010e011e070300f5059d03800606010c06),
(1583, 1, 4, '0', 0, 1, 10, '40', '0', 1658653570975, 0x5504cc0679018d06040121066403f2042b02),
(1583, 2, 0, '0', 0, 1, 5, '20', '0', 1658248677165, ''),
(1718, 0, 4, '0', 0, 1, 5, '20', '0', 1658738214301, 0x41006702810222050d022d00cd054c00ac04),
(1718, 1, 4, '0', 0, 2, 9, '36', '0', 1658738217011, 0x3a01d304be01c203f9002a000901d3020902),
(1718, 2, 0, '0', 0, 2, 4, '16', '0', 1658619488066, ''),
(1721, 0, 4, '0', 0, 3, 2, '8', '0', 1658723402739, 0x8b07ae044100cc060e011701cf0218000f00),
(1721, 1, 4, '0', 0, 1, 4, '16', '0', 1658723404534, 0x3d006004550644029407c10346004801ce06),
(1721, 2, 0, '0', 0, 0, 9, '36', '0', 1658621508125, ''),
(1719, 0, 4, '0', 0, 3, 10, '40', '0', 1658719367179, 0x8203120087016700b4077d00470021006c02),
(1719, 1, 4, '0', 0, 3, 5, '20', '0', 1658719368854, 0x8302ed004000510445000f00c40678001e01),
(1719, 2, 0, '0', 0, 0, 10, '40', '0', 1658620620709, ''),
(1688, 0, 3, '0', 0, 4, 1, '5', '0', 1658795719109, 0x53065e033f01770008001c0177021f046a00),
(1688, 1, 2, '1022', 0, 0, 10, '40', '4860', 1658795716116, 0xe0055807e102f40395035c0390034300),
(1688, 2, 0, '0', 0, 3, 4, '16', '0', 1658522955441, ''),
(1603, 0, 2, '1818', 0, 2, 6, '24', '6840', 1658780980213, 0x08067102080303085a061c02c3022001),
(1603, 1, 2, '672', 0, 2, 8, '32', '6840', 1658780797061, 0x3000d20363038b07c804490076040300),
(1603, 2, 0, '0', 0, 0, 7, '28', '0', 1658265459170, ''),
(1651, 0, 3, '0', 0, 2, 6, '24', '0', 1658449624271, 0x7b036f04de023f01c20352021604c1026500),
(1651, 1, 3, '0', 0, 0, 4, '16', '0', 1658449624274, 0x86067e037600f20096039507d8000f008d06),
(1651, 2, 0, '0', 0, 0, 10, '40', '0', 1658449624275, ''),
(1734, 0, 2, '1013', 0, 1, 8, '32', '5400', 1658782231955, 0x81027602950374039002d8027e03c406c602),
(1734, 1, 2, '1014', 0, 3, 6, '24', '5400', 1658782234839, 0x790222058904b5079703fc01880121006a02),
(1734, 2, 2, '1022', 0, 0, 6, '24', '5400', 1658782236285, 0x6e06d702de024700d204d3020c0289011e04),
(1665, 0, 3, '0', 0, 2, 10, '40', '0', 1658506642016, 0x25000d027103c6024000830273041c00e205),
(1665, 1, 3, '0', 0, 3, 9, '36', '0', 1658506642018, 0x5e0088070b031d041a001b010401f8009507),
(1665, 2, 0, '0', 0, 3, 4, '16', '0', 1658506642020, ''),
(1662, 0, 4, '0', 0, 1, 9, '36', '0', 1658624141524, 0xbd0679034904fe009b057500250048001100),
(1662, 1, 4, '0', 0, 1, 6, '24', '0', 1658624141000, 0x68006a02f403da00880146014c01d7069503),
(1662, 2, 0, '0', 0, 1, 9, '36', '0', 1658461157150, ''),
(1745, 0, 3, '0', 0, 1, 5, '20', '0', 1658716884208, 0xd800a1024a016c02700052000d064a071c00),
(1745, 1, 3, '0', 0, 0, 5, '20', '0', 1658716884211, 0x480155060400730549047d00a002d0011701),
(1745, 2, 0, '0', 0, 3, 6, '24', '0', 1658716884214, ''),
(1691, 0, 2, '519', 0, 0, 4, '16', '6360', 1658696469975, 0xe102b60148004802ec03fa0302011102),
(1691, 1, 2, '1134', 0, 0, 7, '28', '6360', 1658696467311, 0x940308021c02c9057606f7002103cd05),
(1691, 2, 0, '0', 0, 0, 6, '24', '0', 1658526086016, ''),
(1698, 0, 4, '0', 0, 3, 5, '20', '0', 1658782635733, 0xd7001c07ac04030118034301960495030a06),
(1698, 1, 4, '0', 0, 1, 4, '16', '0', 1658782637023, 0x1004c606fb03be01e4051d01c20381039f05),
(1698, 2, 0, '0', 0, 2, 5, '20', '0', 1658552844585, ''),
(1655, 0, 3, '0', 0, 3, 9, '36', '0', 1658453692458, 0x0302090107000f047e03f8000f00f304d001),
(1655, 1, 3, '0', 0, 0, 3, '12', '0', 1658453692460, 0x7d000a00f703f6000c02be01830330007801),
(1655, 2, 0, '0', 0, 2, 3, '12', '0', 1658453692462, ''),
(1736, 0, 2, '1013', 0, 1, 10, '40', '3000', 1658701902393, 0x0403170130026a009907770006007d004802),
(1736, 1, 2, '1022', 0, 1, 10, '40', '3000', 1658701902395, 0xa2025504bc0619000e02430023018c079803),
(1736, 2, 2, '1014', 0, 1, 10, '40', '3000', 1658701902396, 0x260187014b04d7064e01180735003e00ff00),
(1727, 0, 4, '0', 0, 2, 7, '28', '0', 1658788632375, 0x1b0013002e026c009603c2030e030b00b407),
(1727, 1, 4, '0', 0, 1, 4, '16', '0', 1658788633849, 0xfc017b03e402d6002c021002c8027603d300),
(1727, 2, 0, '0', 0, 2, 5, '20', '0', 1658630953638, ''),
(1663, 0, 2, '1013', 0, 2, 10, '40', '5580', 1658536078469, 0x6f03df051200490101029c033f011b04c606),
(1663, 1, 2, '1022', 0, 2, 7, '28', '5580', 1658536079484, 0xfb05e902d602030804002f02510489013b00),
(1663, 2, 2, '1014', 0, 2, 10, '40', '5580', 1658536080427, 0xae073a01a002690087014c01df0217007803),
(1755, 0, 3, '0', 0, 1, 6, '24', '0', 1658802854853, 0x000223017901cc01c0025e000f02e9051303),
(1755, 1, 3, '0', 0, 3, 6, '24', '0', 1658802854855, 0x9b07cd036e034c010c017a04320045001b03),
(1755, 2, 0, '0', 0, 2, 2, '8', '0', 1658802854858, ''),
(1684, 0, 3, '0', 0, 2, 4, '16', '0', 1658512540253, 0x7000d3008801d60289048b07d4037400d402),
(1684, 1, 3, '0', 0, 3, 10, '40', '0', 1658512540255, 0x8306df05ce05b5070c06fe007b0001016e00),
(1684, 2, 3, '0', 0, 4, 1, '5', '0', 1658512540257, 0xd30341010e011c0073048a071a0112031e00),
(1740, 0, 2, '35', 0, 0, 10, '40', '6300', 1658702830102, 0x830335000c06d7027602db0281034c017806),
(1740, 1, 2, '1196', 0, 0, 10, '40', '6300', 1658702830103, 0xd902e5050c01750339009002640024003700),
(1740, 2, 2, '1197', 0, 0, 10, '40', '6300', 1658702830104, 0xa7021000d10117010f070d018b0622000d02),
(1574, 0, 2, '1096', 0, 2, 9, '36', '7200', 1658352508181, 0x3a00b50785019d031a07f700db001f01),
(1574, 1, 2, '1806', 0, 2, 9, '36', '7200', 1658352510273, 0x20047c0014005c037803d8004807af07),
(1574, 2, 2, '1807', 0, 1, 5, '20', '7200', 1658242130032, 0xe100f2040c00890776042c0203088203),
(1612, 0, 3, '0', 0, 0, 2, '8', '0', 1658440457346, 0x1004c0064a012400e000e505d800f2002c02),
(1612, 1, 3, '0', 0, 0, 4, '16', '0', 1658440457348, 0x50000e0273040d073e01d0036f0412032c00),
(1612, 2, 0, '0', 0, 1, 4, '16', '0', 1658440457349, ''),
(1635, 0, 3, '0', 0, 1, 10, '40', '0', 1658430758687, 0xfa001b00f7018807e30578012f00b7022100),
(1635, 1, 3, '0', 0, 2, 9, '36', '0', 1658430758689, 0xba026f0618007802030804005202c6025606),
(1635, 2, 0, '0', 0, 0, 9, '36', '0', 1658430758691, ''),
(1636, 0, 3, '0', 0, 3, 3, '12', '0', 1658430266353, 0x0f0476021d074c010e01ef008907ef064901),
(1636, 1, 3, '0', 0, 2, 5, '20', '0', 1658430266356, 0x030218005302bd02d8027a03c00245020707),
(1636, 2, 0, '0', 0, 3, 9, '36', '0', 1658430266359, ''),
(1637, 0, 3, '0', 0, 3, 2, '8', '0', 1658431001307, 0x490495077500e3010403d8000c0676007301),
(1637, 1, 3, '0', 0, 0, 3, '12', '0', 1658431001309, 0xc7066500c402e405470046000201fd005504),
(1637, 2, 0, '0', 0, 0, 7, '28', '0', 1658431001312, ''),
(1664, 0, 3, '0', 0, 3, 9, '36', '0', 1658506500696, 0x3a01600479030a036a002b00cc0679019907),
(1664, 1, 3, '0', 0, 1, 3, '12', '0', 1658506500697, 0x3a00ce0640002f000a064c0001017003d204),
(1664, 2, 0, '0', 0, 1, 3, '12', '0', 1658506500699, ''),
(1685, 0, 3, '0', 0, 3, 3, '12', '0', 1658514135438, 0x6f060c062700d805c90138003002c7026803),
(1685, 1, 3, '0', 0, 2, 3, '12', '0', 1658514135441, 0x1502f0007600060731024700320035004802),
(1685, 2, 0, '0', 0, 3, 7, '28', '0', 1658514135443, ''),
(1657, 0, 2, '1776', 0, 0, 10, '40', '2640', 1658542141617, 0xf10419017c04f100f50732025d03cf01),
(1657, 1, 2, '1775', 0, 0, 10, '40', '2640', 1658795900177, 0xf701f0007f06210612041e072c001400fd03),
(1657, 2, 2, '1824', 0, 0, 10, '40', '2640', 1658795902327, 0x8706d20420042800fe019c077b06bc02),
(1578, 0, 2, '1119', 0, 2, 10, '40', '5640', 1658782689456, 0x780148041b00160313044f017f017102f803),
(1578, 1, 2, '1120', 0, 2, 10, '40', '5640', 1658782691504, 0x0607cf0173049407f407c806d1019c03fa03),
(1578, 2, 0, '0', 0, 1, 6, '24', '0', 1658248580513, ''),
(1581, 0, 3, '0', 0, 0, 9, '36', '0', 1658456732207, 0x2f024901f703fd03fb0021067602fc052d00),
(1581, 1, 3, '0', 0, 1, 3, '12', '0', 1658456732210, 0x170370027c00ae041b03170000029e03b601),
(1581, 2, 0, '0', 0, 1, 5, '20', '0', 1658456732213, ''),
(1650, 0, 4, '0', 0, 0, 8, '32', '0', 1658529943186, 0x730158077600fa007403e0052b00c302f000),
(1650, 1, 4, '0', 0, 3, 4, '16', '0', 1658529940275, 0xc806f700d3040d029b050702710009012d02),
(1650, 2, 0, '0', 0, 2, 10, '40', '0', 1658447637099, ''),
(1675, 0, 3, '0', 0, 0, 7, '28', '0', 1658841484199, 0xef061701d6027000d0034500f400ae07ff00),
(1675, 1, 3, '0', 0, 1, 4, '16', '0', 1658841484202, 0x1b07490420010903d300450213001c024202),
(1675, 2, 0, '0', 0, 1, 6, '24', '0', 1658841484205, ''),
(1754, 0, 3, '0', 0, 3, 4, '16', '0', 1658792293931, 0x1203780302019002b8027500d700cf021703),
(1754, 1, 3, '0', 0, 0, 7, '28', '0', 1658792293934, 0xe6051102040150004201100256069c05d101),
(1754, 2, 0, '0', 0, 3, 2, '8', '0', 1658792293936, ''),
(1625, 0, 2, '2051', 0, 2, 10, '40', '5760', 1658573177567, 0x07077504b702d204c4024000f5007000),
(1625, 1, 2, '2024', 0, 2, 10, '40', '5760', 1658573176650, 0xd6028103c40609031b04cf012700b501),
(1625, 2, 0, '0', 0, 3, 8, '32', '0', 1658457037523, ''),
(1762, 0, 3, '0', 0, 0, 7, '28', '0', 1658828832972, 0x0308040004020d02090360059d07ff010f00),
(1762, 1, 3, '0', 0, 2, 10, '40', '0', 1658828832975, 0x14009003ce05ec0364004f003a02c905ce06),
(1762, 2, 0, '0', 0, 1, 4, '16', '0', 1658828832977, ''),
(1611, 0, 3, '0', 0, 4, 1, '5', '0', 1658839136143, 0xbf03c5020e0300010a069d076803f4070203),
(1611, 1, 4, '0', 0, 2, 3, '12', '0', 1658839141260, 0x18031c00e505ab07d0017b000f070a000d01),
(1611, 2, 3, '0', 0, 4, 1, '5', '0', 1658839142268, 0xf70021002101220081024d019503fa002106),
(1735, 0, 3, '0', 0, 2, 10, '40', '0', 1658697534132, 0x0e07670046027b041300d70251003d005e00),
(1735, 1, 3, '0', 0, 1, 4, '16', '0', 1658697534134, 0x12036e06fb0092012e050b001c0020017401),
(1735, 2, 0, '0', 0, 3, 7, '28', '0', 1658697534135, ''),
(1731, 0, 3, '0', 0, 3, 5, '20', '0', 1658695075714, 0x15046c0266023e01710087067304bd02be01),
(1731, 1, 3, '0', 0, 0, 3, '12', '0', 1658695075716, 0x2f001a017a044201ed0040008f020f023500),
(1731, 2, 0, '0', 0, 3, 9, '36', '0', 1658695075718, ''),
(1628, 0, 3, '0', 0, 1, 2, '8', '0', 1658427544133, 0x2100970381027b049c030c02210348045506),
(1628, 1, 3, '0', 0, 3, 3, '12', '0', 1658427544135, 0xd0054e0078013d001a0191030402f7004201),
(1628, 2, 0, '0', 0, 1, 4, '16', '0', 1658427544136, ''),
(1627, 0, 3, '0', 0, 0, 4, '16', '0', 1658428110893, 0x4a043e012b01080784057d001c024c01ab07),
(1627, 1, 3, '0', 0, 2, 8, '32', '0', 1658428110895, 0x0a030f043f009703fb037a00c8017a031e04),
(1627, 2, 0, '0', 0, 1, 3, '12', '0', 1658428110897, ''),
(1626, 0, 3, '0', 0, 1, 3, '12', '0', 1658428297360, 0x7a067a00730215020600c706df005a064d01),
(1626, 1, 3, '0', 0, 0, 3, '12', '0', 1658428297362, 0x5f0476041002480009010103de00c303be01),
(1626, 2, 0, '0', 0, 0, 4, '16', '0', 1658428297364, ''),
(1622, 0, 4, '0', 0, 3, 9, '36', '0', 1658778980614, 0x350091032d054c002f00e80565039307c206),
(1622, 1, 4, '0', 0, 3, 8, '32', '0', 1658778982250, 0x7604b502d6007b067b03b802f4039b057f01),
(1622, 2, 0, '0', 0, 3, 4, '16', '0', 1658429279951, ''),
(1761, 0, 3, '0', 0, 0, 10, '40', '0', 1658842182593, 0x20079201d5031102720015014f01d3031807),
(1761, 1, 3, '0', 0, 2, 7, '28', '0', 1658842182594, 0xbe020e026f04c1067901cd034d0148018705),
(1761, 2, 0, '0', 0, 1, 6, '24', '0', 1658842182597, ''),
(1643, 0, 2, '1776', 0, 0, 10, '40', '2460', 1658550090241, 0xbd066e06f601dc009d037504940723001200),
(1643, 1, 2, '1775', 0, 0, 10, '40', '2460', 1658550089403, 0x75062205fa03750373024a021c029f050501),
(1643, 2, 0, '0', 0, 3, 4, '16', '0', 1658442962467, ''),
(1582, 0, 2, '1776', 2, 2, 10, '40', '6540', 1658480457265, 0xd902c00378010f0069024907d0030101),
(1582, 1, 2, '1824', 2, 2, 10, '40', '6540', 1658480458631, 0x3f0067001f042500fc05b90214003800),
(1582, 2, 2, '1775', 2, 2, 10, '40', '6540', 1658480460436, 0x7d00c7010200d50388013a01fb030906),
(1704, 0, 3, '0', 0, 2, 5, '20', '0', 1658580014491, 0x6f027003f90538000c065a0618001a00b502),
(1704, 1, 3, '0', 0, 0, 7, '28', '0', 1658580014495, 0x4f0193071404dc0204024f001d0078063d00),
(1704, 2, 0, '0', 0, 2, 3, '12', '0', 1658580014498, ''),
(1730, 0, 3, '0', 0, 1, 6, '24', '0', 1658690202125, 0x80064100f7000f042d0012045e043d004202),
(1730, 1, 3, '0', 0, 3, 8, '32', '0', 1658690202127, 0x540622018505300070002e0512007002b507),
(1730, 2, 0, '0', 0, 3, 2, '8', '0', 1658690202130, ''),
(1763, 0, 3, '0', 0, 0, 5, '20', '0', 1658831132344, 0x110219005e04ff01a2025300e005de006d02),
(1763, 1, 3, '0', 0, 1, 9, '36', '0', 1658831132346, 0x7a005104b906d60066023a02c2026303fd01),
(1763, 2, 0, '0', 0, 0, 10, '40', '0', 1658831132347, ''),
(1695, 0, 4, '0', 0, 1, 7, '28', '0', 1658748263579, 0xc7024d041000ba060103790008060d013d00),
(1695, 1, 4, '0', 0, 3, 9, '36', '0', 1658748262058, 0x38001c0348004602ce0651048b07f2009907),
(1695, 2, 0, '0', 0, 3, 7, '28', '0', 1658542732386, ''),
(1760, 0, 3, '0', 0, 1, 3, '12', '0', 1658846248499, 0xd0038705c0037a032d051800790136003e00),
(1760, 1, 3, '0', 0, 3, 2, '8', '0', 1658846248502, 0x0001270112005b03020022061204c4063500),
(1760, 2, 0, '0', 0, 1, 10, '40', '0', 1658846248504, ''),
(1751, 0, 3, '0', 0, 0, 10, '40', '0', 1658781436163, 0x7500fc0078069f05b9026a004900f5003900),
(1751, 1, 3, '0', 0, 3, 8, '32', '0', 1658781436165, 0x70027b03f400dc020c0651008d061d001d07),
(1751, 2, 0, '0', 0, 0, 6, '24', '0', 1658781436167, ''),
(1750, 0, 3, '0', 0, 2, 5, '20', '0', 1658774085935, 0xf0063900be015300e9050403720581020707),
(1750, 1, 3, '0', 0, 3, 8, '32', '0', 1658774085937, 0x2d022701c9050e01cf025d030e03fc052206),
(1750, 2, 0, '0', 0, 3, 5, '20', '0', 1658774085940, ''),
(1577, 0, 3, '0', 0, 2, 5, '20', '0', 1658247939089, 0xd7000a036d0075041e017806300043000900),
(1577, 1, 3, '0', 0, 3, 2, '8', '0', 1658247939094, 0x3a0202003e014202c6021200fd0024006d02),
(1577, 2, 0, '0', 0, 1, 9, '36', '0', 1658247939096, ''),
(1765, 0, 3, '0', 0, 1, 5, '20', '0', 1658845220046, 0x18001e011504d2030201740388011500bc02),
(1765, 1, 3, '0', 0, 2, 8, '32', '0', 1658845220048, 0x68000b037a030e0342024d009a0515018b07),
(1765, 2, 0, '0', 0, 2, 4, '16', '0', 1658845220050, ''),
(1672, 0, 4, '0', 0, 1, 10, '40', '0', 1658591367143, 0xf10453062a054907d3020500ae048f02cf02),
(1672, 1, 4, '0', 0, 2, 8, '32', '0', 1658591374975, 0xd20373016c02190167004a07120435000c06),
(1672, 2, 0, '0', 0, 1, 7, '28', '0', 1658509814582, ''),
(1766, 0, 3, '0', 0, 0, 7, '28', '0', 1658848264235, 0x7f060e04ce030900c20373011700df02d902),
(1766, 1, 3, '0', 0, 2, 10, '40', '0', 1658848264237, 0x4a02de006a02fe0064030601860668001c03),
(1766, 2, 0, '0', 0, 2, 10, '40', '0', 1658848264239, ''),
(1666, 0, 4, '0', 0, 2, 9, '36', '0', 1658839741250, 0x75041102ae07e10052024e011d042101e402),
(1666, 1, 4, '0', 0, 2, 10, '40', '0', 1658688652789, 0x6a02e301f6002f023f01770282068a067200),
(1666, 2, 0, '0', 0, 1, 3, '12', '0', 1658494930049, ''),
(1647, 0, 2, '1013', 2, 1, 10, '40', '1860', 1658595681942, 0xbc06fd030902f505df00ec03210644019907),
(1647, 1, 2, '1022', 2, 1, 10, '40', '1860', 1658444463929, 0x9103d706640013034d005c04d3023901),
(1647, 2, 2, '1014', 2, 1, 10, '40', '1860', 1658747234727, 0x76005d07c80476062d02b501c706f3009403),
(1584, 0, 4, '0', 0, 0, 2, '8', '0', 1658623129746, 0x7b0328018807e005040151043e0105018101),
(1584, 1, 4, '0', 0, 0, 7, '28', '0', 1658623132913, 0xf5037900e305db021600830386068b071d07),
(1584, 2, 0, '0', 0, 2, 5, '20', '0', 1658248751149, ''),
(1634, 0, 3, '0', 0, 4, 1, '5', '0', 1658738665683, 0xd600060221060f074502c2062a01f8005e03),
(1634, 1, 3, '0', 0, 4, 1, '5', '0', 1658738671579, 0x1203530673041e042a058c077b0081062103),
(1634, 2, 2, '1807', 0, 2, 2, '8', '3780', 1658843994502, 0xcd03f304ab077301b607f6039d07a002e205),
(1678, 0, 4, '0', 0, 3, 6, '24', '0', 1658789382395, 0xf30004035104130401010b00ca0189019604),
(1678, 1, 2, '1442', 0, 2, 10, '40', '660', 1658789384748, 0xd603c406c702ad077b06990792035300),
(1678, 2, 0, '0', 0, 1, 9, '36', '0', 1658511807777, ''),
(1630, 0, 4, '0', 0, 0, 8, '32', '0', 1658535689275, 0x1b016a00fc051b03760474002f0550000702),
(1630, 1, 4, '0', 0, 3, 8, '32', '0', 1658535690966, 0x4801d706aa0749002801cc06090105015306),
(1630, 2, 0, '0', 0, 3, 7, '28', '0', 1658429253942, ''),
(1646, 0, 4, '0', 0, 1, 10, '40', '0', 1658836107727, 0xe6051d027606c804be01230089076f036e04),
(1646, 1, 4, '0', 0, 1, 10, '40', '0', 1658836106968, 0x1d01ff0107028b0409000903060781060807),
(1646, 2, 0, '0', 0, 0, 4, '16', '0', 1658444514595, ''),
(1742, 0, 2, '1022', 0, 2, 10, '40', '5580', 1658799740180, 0xb6017c045d035506c80168039c050f00),
(1742, 1, 2, '1014', 0, 2, 10, '40', '5580', 1658799740857, 0x21032e02c606b9022b00a302e9024502fc05),
(1742, 2, 2, '1013', 0, 1, 10, '40', '5580', 1658799741409, 0x2a00c00609021b037403170331007305df00),
(1613, 0, 4, '0', 0, 3, 6, '24', '0', 1658720884626, 0x360065036f0252006802b701080620076a02),
(1613, 1, 4, '0', 0, 3, 2, '8', '0', 1658720885958, 0x3900d9022f02f70330024400bc0287067503),
(1613, 2, 0, '0', 0, 1, 6, '24', '0', 1658271431697, ''),
(1726, 0, 2, '314', 0, 1, 2, '8', '3720', 1658628021136, 0xda0024010101e00528003102f800),
(1726, 1, 2, '1808', 0, 2, 8, '32', '3720', 1658747446191, 0xcd0193072b013300f200990788013000),
(1726, 2, 0, '0', 0, 3, 2, '8', '0', 1658628021140, ''),
(1624, 0, 4, '0', 0, 0, 4, '16', '0', 1658616353463, 0xf200ac078c07ea051b04e1000707da001901),
(1624, 1, 4, '0', 0, 1, 2, '8', '0', 1658616356189, 0x66028203d6023f011c016a009d05d4021600),
(1624, 2, 0, '0', 0, 0, 2, '8', '0', 1658427241450, ''),
(1768, 0, 3, '0', 0, 0, 2, '8', '0', 1658849085985, 0xaa07870509024901bc020807e9020e041a00),
(1768, 1, 3, '0', 0, 0, 2, '8', '0', 1658849085988, 0x1b0419001a07de00b9027e035c0308060c06),
(1768, 2, 0, '0', 0, 0, 10, '40', '0', 1658849085990, ''),
(1642, 0, 3, '0', 0, 0, 2, '8', '0', 1658443690812, 0x800606001800150148013b0069009604f300),
(1642, 1, 3, '0', 0, 3, 4, '16', '0', 1658443690813, 0xba0672053e00d802d30003004b040c066500),
(1642, 2, 0, '0', 0, 2, 7, '28', '0', 1658443690815, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_preydata`
--

CREATE TABLE `player_preydata` (
  `player_id` int NOT NULL,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_preytimes`
--

CREATE TABLE `player_preytimes` (
  `player_id` int NOT NULL,
  `bonus_type1` int NOT NULL,
  `bonus_value1` int NOT NULL,
  `bonus_name1` varchar(50) NOT NULL,
  `bonus_type2` int NOT NULL,
  `bonus_value2` int NOT NULL,
  `bonus_name2` varchar(50) NOT NULL,
  `bonus_type3` int NOT NULL,
  `bonus_value3` int NOT NULL,
  `bonus_name3` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_rewards`
--

CREATE TABLE `player_rewards` (
  `player_id` int NOT NULL,
  `sid` int NOT NULL,
  `pid` int NOT NULL DEFAULT '0',
  `itemtype` int NOT NULL DEFAULT '0',
  `count` int NOT NULL DEFAULT '0',
  `attributes` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_spells`
--

CREATE TABLE `player_spells` (
  `player_id` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_stash`
--

CREATE TABLE `player_stash` (
  `player_id` int NOT NULL,
  `item_id` int NOT NULL,
  `item_count` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_storage`
--

CREATE TABLE `player_storage` (
  `player_id` int NOT NULL DEFAULT '0',
  `key` int UNSIGNED NOT NULL DEFAULT '0',
  `value` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_taskhunt`
--

CREATE TABLE `player_taskhunt` (
  `player_id` int NOT NULL,
  `slot` tinyint(1) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `raceid` varchar(250) NOT NULL,
  `upgrade` tinyint(1) NOT NULL,
  `rarity` tinyint(1) NOT NULL,
  `kills` varchar(250) NOT NULL,
  `disabled_time` bigint NOT NULL,
  `free_reroll` bigint NOT NULL,
  `monster_list` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quickloot_containers`
--

CREATE TABLE `quickloot_containers` (
  `player_id` int NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `cid` int UNSIGNED NOT NULL,
  `sid` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sellchar`
--

CREATE TABLE `sellchar` (
  `id` int NOT NULL,
  `name` varchar(40) NOT NULL,
  `vocation` int NOT NULL,
  `price` int NOT NULL,
  `status` varchar(40) NOT NULL,
  `oldid` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sell_players`
--

CREATE TABLE `sell_players` (
  `player_id` int NOT NULL,
  `account` int NOT NULL,
  `create` bigint NOT NULL,
  `createip` bigint NOT NULL,
  `coin` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sell_players_history`
--

CREATE TABLE `sell_players_history` (
  `player_id` int NOT NULL,
  `accountold` int NOT NULL,
  `accountnew` int NOT NULL,
  `create` bigint NOT NULL,
  `createip` bigint NOT NULL,
  `buytime` bigint NOT NULL,
  `buyip` bigint NOT NULL,
  `coin` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `server_config`
--

CREATE TABLE `server_config` (
  `config` varchar(50) NOT NULL,
  `value` varchar(256) NOT NULL DEFAULT '',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `server_config`
--

INSERT INTO `server_config` (`config`, `value`) VALUES
('motd_num', '7'),
('motd_hash', '95266845ab43dab907606b219b2ad709c78fd6ea'),
('players_record', '37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `store_history`
--

CREATE TABLE `store_history` (
  `id` int NOT NULL,
  `account_id` int UNSIGNED NOT NULL,
  `mode` smallint NOT NULL DEFAULT '0',
  `description` varchar(3500) NOT NULL,
  `coin_amount` int NOT NULL,
  `time` bigint UNSIGNED NOT NULL,
  `timestamp` int NOT NULL DEFAULT '0',
  `coins` int NOT NULL DEFAULT '0',
  `coin_type` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `store_history`
--

INSERT INTO `store_history` (`id`, `account_id`, `mode`, `description`, `coin_amount`, `time`, `timestamp`, `coins`, `coin_type`) VALUES
(1, 1026, 0, 'Teleport Stone', -200, 1658175261, 0, 0, 0),
(76, 1026, 0, 'XP Boost', -30, 1658278394, 0, 0, 0),
(77, 1026, 0, 'Permanent Prey Slot', -400, 1658280531, 0, 0, 0),
(78, 1026, 0, 'XP Boost', -30, 1658280906, 0, 0, 0),
(93, 1026, 0, 'You transfered this amount to Lupis Beta', -500, 1658361632, 0, 0, 0),
(123, 1026, 0, 'Ferumbras Exercise Dummy', -200, 1658364989, 0, 0, 0),
(124, 1026, 0, 'Ferumbras Exercise Dummy', -200, 1658364994, 0, 0, 0),
(125, 1026, 0, 'Boss Eye', -150, 1658365046, 0, 0, 0),
(133, 1026, 0, 'Hireling Apprentice (Teniente)', -150, 1658365702, 0, 0, 0),
(145, 1026, 0, 'Daily Exercise Rod', -300, 1658370138, 0, 0, 0),
(161, 1026, 0, 'You transfered this amount to Crustacea Gigantica', -200, 1658372704, 0, 0, 0),
(166, 1026, 0, 'You transfered this amount to Crustacea Gigantica', -205, 1658372988, 0, 0, 0),
(186, 1026, 0, 'Trader Dress', -100, 1658380525, 0, 0, 0),
(187, 1026, 0, 'Steward Dress', -100, 1658380530, 0, 0, 0),
(188, 1026, 0, 'Chest of Abundance', -30, 1658380627, 0, 0, 0),
(189, 1026, 0, 'Crystal Lamp', -20, 1658380638, 0, 0, 0),
(190, 1026, 0, 'Demon Pet', -50, 1658380645, 0, 0, 0),
(191, 1026, 0, 'Fish Tank', -40, 1658380655, 0, 0, 0),
(192, 1026, 0, 'Incomprehensible Riches', -30, 1658380666, 0, 0, 0),
(193, 1026, 0, 'Incomprehensible Riches', -30, 1658380671, 0, 0, 0),
(194, 1026, 0, 'bestiary betterment', -10, 1658380871, 0, 0, 0),
(195, 1026, 0, 'charm upgrade', -10, 1658380875, 0, 0, 0),
(470, 1026, 0, 'You transfered this amount to Plutarco', -465, 1658467474, 0, 0, 0),
(605, 1026, 0, 'Hireling Apprentice (Dale Wachin)', -150, 1658523055, 0, 0, 0),
(639, 1026, 0, 'You transfered this amount to Six King', -1075, 1658553760, 0, 0, 0),
(792, 1026, 0, 'death amplification', -10, 1658626958, 0, 0, 0),
(857, 1026, 0, 'Exercise Axe', -540, 1658636296, 0, 0, 2),
(858, 1026, 0, 'Exercise Bow', -540, 1658636300, 0, 0, 2),
(859, 1026, 0, 'Sneaky Stabber of Eliteness', -540, 1658636305, 0, 0, 2),
(987, 1026, 0, 'All Regular Blessings', -20, 1658698653, 0, 0, 0),
(988, 1026, 0, 'All Regular Blessings', -20, 1658698775, 0, 0, 0),
(990, 1026, 0, 'All Regular Blessings', -20, 1658698820, 0, 0, 2),
(1031, 1026, 0, 'King Malekiin transfered you this amount.', 10000, 1658707680, 0, 0, 0),
(1042, 1026, 0, 'You transfered this amount to Nieves Favela', -3000, 1658716506, 0, 0, 0),
(1086, 1026, 0, 'You transfered this amount to Alek Vufah', -4000, 1658729955, 0, 0, 0),
(1093, 1026, 0, 'You transfered this amount to Rompe Sptm', -11565, 1658731087, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tickets`
--

CREATE TABLE `tickets` (
  `ticket_id` int NOT NULL,
  `ticket_subject` varchar(255) DEFAULT NULL,
  `ticket_author` varchar(255) DEFAULT NULL,
  `ticket_author_acc_id` int NOT NULL,
  `ticket_last_reply` varchar(11) DEFAULT NULL,
  `ticket_admin_reply` int DEFAULT NULL,
  `ticket_date` varchar(255) DEFAULT NULL,
  `ticket_ended` varchar(255) DEFAULT NULL,
  `ticket_status` varchar(255) DEFAULT NULL,
  `ticket_category` varchar(255) DEFAULT NULL,
  `ticket_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tickets_reply`
--

CREATE TABLE `tickets_reply` (
  `reply_id` int NOT NULL,
  `ticket_id` int DEFAULT NULL,
  `reply_author` varchar(255) DEFAULT NULL,
  `reply_message` varchar(255) DEFAULT NULL,
  `reply_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tile_store`
--

CREATE TABLE `tile_store` (
  `house_id` int NOT NULL,
  `data` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `znote`
--

CREATE TABLE `znote` (
  `id` int NOT NULL,
  `version` varchar(30) NOT NULL COMMENT 'Znote AAC version',
  `installed` int NOT NULL,
  `cached` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `znote`
--

INSERT INTO `znote` (`id`, `version`, `installed`, `cached`) VALUES
(1, '1.5_SVN', 1656892800, NULL),
(2, '1.5_SVN', 1657065600, NULL),
(3, '1.5_SVN', 1657065600, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `znote_accounts`
--

CREATE TABLE `znote_accounts` (
  `id` int NOT NULL,
  `account_id` int NOT NULL,
  `ip` bigint UNSIGNED NOT NULL,
  `created` int NOT NULL,
  `points` int DEFAULT '0',
  `cooldown` int DEFAULT '0',
  `active` tinyint NOT NULL DEFAULT '0',
  `active_email` tinyint NOT NULL DEFAULT '0',
  `activekey` int NOT NULL DEFAULT '0',
  `flag` varchar(20) NOT NULL,
  `secret` char(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `znote_accounts`
--

INSERT INTO `znote_accounts` (`id`, `account_id`, `ip`, `created`, `points`, `cooldown`, `active`, `active_email`, `activekey`, `flag`, `secret`) VALUES
(1, 1028, 0, 1656892800, 0, 0, 0, 0, 0, '', NULL),
(2, 1029, 2985526833, 1656892800, 0, 0, 0, 0, 0, '', NULL),
(3, 1026, 2985526833, 1656892800, 0, 0, 0, 0, 0, '', NULL),
(4, 5, 2985526833, 1656892800, 0, 0, 0, 0, 0, '', NULL),
(5, 1027, 0, 1656892800, 0, 0, 0, 0, 0, '', NULL),
(8, 1030, 2985526833, 1656970835, 0, 0, 1, 0, 151901665, 'pl', NULL),
(9, 1031, 3149968338, 1656980925, 0, 0, 1, 0, 984919589, 'mx', NULL),
(10, 1032, 2984368150, 1657071835, 0, 0, 1, 0, 793968570, 'mx', NULL),
(11, 1033, 3378620375, 1657072355, 0, 0, 1, 0, 230284410, 'mx', NULL),
(12, 1034, 3200845091, 1657072503, 0, 0, 1, 0, 637937317, 've', NULL),
(13, 1035, 3201896106, 1657072871, 0, 0, 1, 0, 900717549, 've', NULL),
(14, 1036, 2984369169, 1657072937, 0, 0, 1, 0, 386319353, 'mx', NULL),
(15, 1037, 3149761904, 1657074215, 0, 0, 1, 0, 983624717, 'mx', NULL),
(16, 1038, 2985895941, 1657075492, 0, 0, 1, 0, 790576196, 'mx', NULL),
(17, 1039, 2561437596, 1657076131, 0, 0, 1, 0, 726303498, 'cl', NULL),
(18, 1040, 3210939314, 1657076781, 0, 0, 1, 0, 731836233, 'ec', NULL),
(19, 1041, 3183723402, 1657077496, 0, 0, 1, 0, 450395576, 'mx', NULL),
(20, 1042, 3148674703, 1657078628, 0, 0, 1, 0, 144481578, 'mx', NULL),
(21, 1043, 3148657491, 1657079796, 0, 0, 1, 0, 592272017, 'mx', NULL),
(22, 1044, 3184299101, 1657079959, 0, 0, 1, 0, 207909118, 'mx', NULL),
(23, 1045, 3149839239, 1657079977, 0, 0, 1, 0, 405262795, 'mx', NULL),
(24, 1046, 3147893227, 1657081712, 0, 0, 1, 0, 313140863, 'af', NULL),
(25, 1047, 3045985259, 1657082444, 0, 0, 1, 0, 547218580, 'co', NULL),
(26, 1048, 3146271209, 1657084653, 0, 0, 1, 0, 268437142, 'qa', NULL),
(27, 1049, 3382900335, 1657085179, 0, 0, 1, 0, 207034116, 'mx', NULL),
(28, 1050, 3148612468, 1657085390, 0, 0, 1, 0, 327245099, 'mx', NULL),
(29, 1051, 3359942172, 1657090731, 0, 0, 1, 0, 800898932, 'mc', NULL),
(30, 1052, 3386748294, 1657092944, 0, 0, 1, 0, 108223645, 'us', NULL),
(31, 1053, 3182169317, 1657097388, 0, 0, 1, 0, 529322258, 'mx', NULL),
(32, 1054, 3154010198, 1657099049, 0, 0, 1, 0, 759460973, 'mx', NULL),
(33, 1055, 3359308856, 1657099601, 0, 0, 1, 0, 897109296, 'mx', NULL),
(34, 1056, 702623832, 1657101394, 0, 0, 1, 0, 501247801, 'tn', NULL),
(35, 1057, 1562631094, 1657107918, 0, 0, 1, 0, 405087248, 'it', NULL),
(36, 1058, 3147952694, 1657112304, 0, 0, 1, 0, 933659813, 'mx', NULL),
(37, 1059, 3132694798, 1657112390, 0, 0, 1, 0, 746388125, 've', NULL),
(38, 1060, 3192668098, 1657116975, 0, 0, 1, 0, 204736782, 've', NULL),
(39, 1061, 3370506322, 1657117477, 0, 0, 1, 0, 888213394, 'cg', NULL),
(40, 1062, 3149716564, 1657118716, 0, 0, 1, 0, 817379644, 'mx', NULL),
(41, 1063, 3383741154, 1657119472, 0, 0, 1, 0, 497752673, 'mx', NULL),
(42, 1064, 1841590818, 1657119840, 0, 0, 1, 0, 846428831, 'pl', NULL),
(43, 1065, 3185188641, 1657122947, 0, 0, 1, 0, 685247262, 'mx', NULL),
(44, 1066, 2984407909, 1657123263, 0, 0, 1, 0, 951908785, 'mg', NULL),
(45, 1067, 2561422644, 1657124536, 0, 0, 1, 0, 373418312, 'cl', NULL),
(46, 1068, 3154011905, 1657125230, 0, 0, 1, 0, 134716303, 'mx', NULL),
(47, 1069, 3386733186, 1657125733, 0, 0, 1, 0, 580853985, 'us', NULL),
(48, 1070, 3149758489, 1657130362, 0, 0, 1, 0, 563223644, 'mx', NULL),
(49, 1071, 3201896106, 1657130508, 0, 0, 1, 0, 990421178, 've', NULL),
(50, 1072, 3210682618, 1657130637, 0, 0, 1, 0, 309433678, 'co', NULL),
(51, 1073, 3182647358, 1657133826, 0, 0, 1, 0, 898315795, 'mx', NULL),
(52, 1074, 3126846197, 1657135703, 0, 0, 1, 0, 586069981, 've', NULL),
(53, 1075, 3382885893, 1657135744, 0, 0, 1, 0, 368002870, 'mx', NULL),
(54, 1076, 3147389309, 1657136967, 0, 0, 1, 0, 857349863, 'mx', NULL),
(55, 1077, 3153413996, 1657137005, 0, 0, 1, 0, 575834226, 'mx', NULL),
(56, 1078, 3210682618, 1657139079, 0, 0, 1, 0, 715196227, 'aw', NULL),
(57, 1079, 3210682618, 1657139213, 0, 0, 1, 0, 376113907, 'at', NULL),
(58, 1080, 646217442, 1657140315, 0, 0, 1, 0, 920202273, 've', NULL),
(59, 1081, 3041067707, 1657141478, 0, 0, 1, 0, 238872381, 'pe', NULL),
(60, 1082, 3041067707, 1657141786, 0, 0, 1, 0, 581010711, 'pe', NULL),
(61, 1083, 3383716752, 1657141880, 0, 0, 1, 0, 329794445, 'mx', NULL),
(62, 1084, 702645915, 1657144826, 0, 0, 1, 0, 242461003, 'tn', NULL),
(63, 1085, 3185300231, 1657145461, 0, 0, 1, 0, 740631967, 'mx', NULL),
(64, 1086, 3201896106, 1657145610, 0, 0, 1, 0, 390020594, 'vu', NULL),
(65, 1087, 3048322175, 1657145763, 0, 0, 1, 0, 277569335, 'bo', NULL),
(66, 1088, 3041067707, 1657147955, 0, 0, 1, 0, 754918983, 'pe', NULL),
(67, 1089, 3044246739, 1657149384, 0, 0, 1, 0, 371633372, 'bo', NULL),
(68, 1090, 3185064941, 1657151676, 0, 0, 1, 0, 591591113, 'mx', NULL),
(69, 1091, 3201896106, 1657152196, 0, 0, 1, 0, 142104008, 'kh', NULL),
(70, 1092, 3185241218, 1657157038, 0, 0, 1, 0, 238056440, 'mx', NULL),
(71, 1093, 3201896106, 1657164656, 0, 0, 1, 0, 161415055, 'vu', NULL),
(72, 1094, 3146777414, 1657164666, 0, 0, 1, 0, 938870965, 'mx', NULL),
(73, 1095, 3149831833, 1657166750, 0, 0, 1, 0, 236403004, 'mx', NULL),
(74, 1096, 3146649625, 1657170214, 0, 0, 1, 0, 482947452, 'mx', NULL),
(75, 1097, 3003556024, 1657172085, 0, 0, 1, 0, 889557291, 'pe', NULL),
(76, 1098, 3146253572, 1657177966, 0, 0, 1, 0, 583970787, 'mx', NULL),
(77, 1099, 1502473345, 1657194112, 0, 0, 1, 0, 146397578, 'es', NULL),
(78, 1100, 3146252772, 1657204473, 0, 0, 1, 0, 201598743, 'mx', NULL),
(79, 1101, 1562631595, 1657209213, 0, 0, 1, 0, 728265125, 'it', NULL),
(80, 1102, 3153414093, 1657213463, 0, 0, 1, 0, 724089634, 'mx', NULL),
(81, 1103, 1089334576, 1657237293, 0, 0, 1, 0, 736057851, 'pr', NULL),
(82, 1104, 3149760530, 1657237630, 0, 0, 1, 0, 107522583, 'mx', NULL),
(83, 1105, 3149968338, 1657239946, 0, 0, 1, 0, 444511998, 'mc', NULL),
(84, 1106, 3149814454, 1657239953, 0, 0, 1, 0, 500649975, 'mx', NULL),
(85, 1107, 2319125049, 1657244272, 0, 0, 1, 0, 176020494, 've', NULL),
(86, 1108, 3149968338, 1657244438, 0, 0, 1, 0, 267827060, 'mc', NULL),
(87, 1109, 3185186337, 1657247664, 0, 0, 1, 0, 286007173, 'mx', NULL),
(88, 1110, 2890302359, 1657251541, 0, 0, 1, 0, 309166898, 'mx', NULL),
(89, 1111, 1822611622, 1657256906, 0, 0, 1, 0, 415640506, 'mx', NULL),
(90, 1112, 2890322715, 1657267511, 0, 0, 1, 0, 608846571, 'aq', NULL),
(91, 1113, 2890355254, 1657276652, 0, 0, 1, 0, 253723078, 'mx', NULL),
(92, 1114, 2890221398, 1657281363, 0, 0, 1, 0, 465097267, 'mx', NULL),
(93, 1115, 2890302359, 1657286469, 0, 0, 1, 0, 786790604, 'mx', NULL),
(94, 1116, 2890333708, 1657291372, 0, 0, 1, 0, 205632530, 've', NULL),
(95, 1117, 2890314314, 1657292957, 0, 0, 1, 0, 458744830, 'mx', NULL),
(96, 1118, 3361525257, 1657297953, 0, 0, 1, 0, 912621317, 'mx', NULL),
(97, 1119, 1822612944, 1657298394, 0, 0, 1, 0, 963129430, 'al', NULL),
(98, 1120, 3149738380, 1657307398, 0, 0, 1, 0, 616487394, 'mx', NULL),
(99, 1121, 2890289772, 1657315347, 0, 0, 1, 0, 541699455, 've', NULL),
(100, 1122, 2890322699, 1657322478, 0, 0, 1, 0, 202386747, 'aw', NULL),
(101, 1123, 2890301193, 1657338391, 0, 0, 1, 0, 574600963, 'us', NULL),
(102, 1124, 2890322749, 1657357587, 0, 0, 1, 0, 347468905, 'us', NULL),
(103, 1125, 3380841866, 1657393586, 0, 0, 1, 0, 739090585, 'br', NULL),
(104, 1126, 2890221359, 1657398818, 0, 0, 1, 0, 281104320, 'mx', NULL),
(105, 1127, 3049727646, 1657407548, 0, 0, 1, 0, 575510423, 'ec', NULL),
(106, 1128, 1822612810, 1657411735, 0, 0, 1, 0, 899363568, 'mx', NULL),
(107, 1129, 2890322699, 1657428813, 0, 0, 1, 0, 741422410, 'mx', NULL),
(108, 1130, 2372234910, 1657429613, 0, 0, 1, 0, 328689953, 'co', NULL),
(109, 1131, 2890221082, 1657430952, 0, 0, 1, 0, 393405509, 'us', NULL),
(110, 1132, 2890339978, 1657430964, 0, 0, 1, 0, 507321042, 'us', NULL),
(111, 1133, 2890282731, 1657431591, 0, 0, 1, 0, 507217562, 've', NULL),
(112, 1134, 2890333728, 1657436847, 0, 0, 1, 0, 913117208, 've', NULL),
(113, 1135, 1822612768, 1657438703, 0, 0, 1, 0, 724064476, 'mx', NULL),
(114, 1136, 2890282700, 1657441103, 0, 0, 1, 0, 220165751, 've', NULL),
(115, 1137, 2975785292, 1657441868, 0, 0, 1, 0, 615160368, 'br', NULL),
(116, 1138, 2890333722, 1657454501, 0, 0, 1, 0, 800692133, 've', NULL),
(117, 1139, 2890333708, 1657468130, 0, 0, 1, 0, 416106375, 've', NULL),
(118, 1140, 3149815479, 1657469511, 0, 0, 1, 0, 101015737, 'mx', NULL),
(119, 1141, 2890289810, 1657469762, 0, 0, 1, 0, 911068464, 've', NULL),
(120, 1142, 1822612908, 1657471849, 0, 0, 1, 0, 834265230, 'mx', NULL),
(121, 1144, 2890322699, 1657497163, 0, 0, 1, 0, 851888539, 'mn', NULL),
(122, 1145, 2890322699, 1657497306, 0, 0, 1, 0, 617768004, 'mx', NULL),
(123, 1146, 2890282731, 1657500741, 0, 0, 1, 0, 884032984, 've', NULL),
(124, 1147, 2890220975, 1657504564, 0, 0, 1, 0, 560077175, 'mx', NULL),
(125, 1148, 2890333874, 1657505777, 0, 0, 1, 0, 959743608, 've', NULL),
(126, 1149, 2890221406, 1657506911, 0, 0, 1, 0, 956936375, 'mx', NULL),
(127, 1150, 2890220717, 1657509133, 0, 0, 1, 0, 375533600, 'mx', NULL),
(128, 1151, 2890220762, 1657513242, 0, 0, 1, 0, 314602927, 'pl', NULL),
(129, 1152, 2890220762, 1657547207, 0, 0, 1, 0, 783034688, 'mx', NULL),
(130, 1153, 2372232716, 1657547299, 0, 0, 1, 0, 254390709, 'cl', NULL),
(131, 1154, 2890321530, 1657547611, 0, 0, 1, 0, 106624193, 'mx', NULL),
(132, 1155, 2728289166, 1657551922, 0, 0, 1, 0, 244560108, 'bo', NULL),
(133, 1156, 2890322715, 1657555608, 0, 0, 1, 0, 212901505, 'mx', NULL),
(134, 1157, 2805605298, 1657584743, 0, 0, 1, 0, 349306362, 'uy', NULL),
(135, 1158, 2890327570, 1657585872, 0, 0, 1, 0, 136035002, 've', NULL),
(136, 1159, 1822612810, 1657596710, 0, 0, 1, 0, 369373236, 'mx', NULL),
(137, 1160, 3383748645, 1657598981, 0, 0, 1, 0, 552184651, 'mx', NULL),
(138, 1161, 3149734594, 1657619068, 0, 0, 1, 0, 979867953, 'mx', NULL),
(139, 1162, 1822610092, 1657632185, 0, 0, 1, 0, 716582587, 've', NULL),
(140, 1163, 2890282668, 1657635507, 0, 0, 1, 0, 101249983, 've', NULL),
(141, 1164, 1822612768, 1657637414, 0, 0, 1, 0, 783540616, 'mx', NULL),
(142, 1165, 3195599281, 1657671164, 0, 0, 1, 0, 388833962, 've', NULL),
(143, 1166, 2890220975, 1657671958, 0, 0, 1, 0, 952251917, 'mx', NULL),
(144, 1167, 2890321683, 1657674414, 0, 0, 1, 0, 853272955, 'mx', NULL),
(145, 1168, 2890220762, 1657674851, 0, 0, 1, 0, 261356807, 'mx', NULL),
(146, 1169, 2890220823, 1657676325, 0, 0, 1, 0, 775131673, 'mx', NULL),
(147, 1170, 1822612768, 1657678683, 0, 0, 1, 0, 101011970, 'mx', NULL),
(148, 1171, 2890220783, 1657739001, 0, 0, 1, 0, 849482602, 'mx', NULL),
(149, 1172, 2890333705, 1657739532, 0, 0, 1, 0, 510920428, 've', NULL),
(150, 1173, 3153909087, 1657766218, 0, 0, 1, 0, 583030672, 'mx', NULL),
(151, 1174, 2890220796, 1657771059, 0, 0, 1, 0, 236489623, 'mx', NULL),
(152, 1175, 3185300243, 1657772728, 0, 0, 1, 0, 793791513, 'mx', NULL),
(153, 1176, 2890221082, 1657802652, 0, 0, 1, 0, 853478441, 'mx', NULL),
(154, 1177, 2890302194, 1657814565, 0, 0, 1, 0, 621376064, 'mx', NULL),
(155, 1178, 2890321598, 1657817809, 0, 0, 1, 0, 633942514, 'mx', NULL),
(156, 1179, 3216733706, 1657821801, 0, 0, 1, 0, 394004755, 'br', NULL),
(157, 1180, 2890289810, 1657830176, 0, 0, 1, 0, 249672818, 've', NULL),
(158, 1181, 2890220796, 1657842220, 0, 0, 1, 0, 254785745, 'mx', NULL),
(159, 1182, 2890282668, 1657853998, 0, 0, 1, 0, 308929683, 'us', NULL),
(160, 1183, 2890211738, 1657863402, 0, 0, 1, 0, 912376539, 'mx', NULL),
(161, 1184, 3146356865, 1657864528, 0, 0, 1, 0, 135227011, 'mx', NULL),
(162, 1185, 2890282732, 1657877951, 0, 0, 1, 0, 983555498, 'us', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `znote_auction_player`
--

CREATE TABLE `znote_auction_player` (
  `id` int NOT NULL,
  `player_id` int NOT NULL,
  `original_account_id` int NOT NULL,
  `bidder_account_id` int NOT NULL,
  `time_begin` int NOT NULL,
  `time_end` int NOT NULL,
  `price` int NOT NULL,
  `bid` int NOT NULL,
  `deposit` int NOT NULL,
  `sold` tinyint NOT NULL,
  `claimed` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `znote_changelog`
--

CREATE TABLE `znote_changelog` (
  `id` int NOT NULL,
  `text` varchar(255) NOT NULL,
  `time` int NOT NULL,
  `report_id` int NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `znote_deleted_characters`
--

CREATE TABLE `znote_deleted_characters` (
  `id` int NOT NULL,
  `original_account_id` int NOT NULL,
  `character_name` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `done` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `znote_deleted_characters`
--

INSERT INTO `znote_deleted_characters` (`id`, `original_account_id`, `character_name`, `time`, `done`) VALUES
(1, 1048, 'Chabelo', '2022-07-09 14:54:51', 1),
(2, 1069, 'Sio Polak', '2022-07-09 16:43:10', 0),
(3, 1026, 'Test', '2022-07-10 23:27:54', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `znote_forum`
--

CREATE TABLE `znote_forum` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `access` tinyint NOT NULL,
  `closed` tinyint NOT NULL,
  `hidden` tinyint NOT NULL,
  `guild_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `znote_forum`
--

INSERT INTO `znote_forum` (`id`, `name`, `access`, `closed`, `hidden`, `guild_id`) VALUES
(1, 'Staff Board', 4, 0, 0, 0),
(2, 'Tutors Board', 2, 0, 0, 0),
(3, 'Discussion', 1, 0, 0, 0),
(4, 'Feedback', 1, 0, 1, 0),
(5, 'Staff Board', 4, 0, 0, 0),
(6, 'Tutors Board', 2, 0, 0, 0),
(7, 'Discussion', 1, 0, 0, 0),
(8, 'Feedback', 1, 0, 1, 0),
(9, 'Staff Board', 4, 0, 0, 0),
(10, 'Tutors Board', 2, 0, 0, 0),
(11, 'Discussion', 1, 0, 0, 0),
(12, 'Feedback', 1, 0, 1, 0),
(13, 'Guild', 1, 0, 0, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `znote_forum_posts`
--

CREATE TABLE `znote_forum_posts` (
  `id` int NOT NULL,
  `thread_id` int NOT NULL,
  `player_id` int NOT NULL,
  `player_name` varchar(50) NOT NULL,
  `text` text NOT NULL,
  `created` int NOT NULL,
  `updated` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `znote_forum_threads`
--

CREATE TABLE `znote_forum_threads` (
  `id` int NOT NULL,
  `forum_id` int NOT NULL,
  `player_id` int NOT NULL,
  `player_name` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `text` text NOT NULL,
  `created` int NOT NULL,
  `updated` int NOT NULL,
  `sticky` tinyint NOT NULL,
  `hidden` tinyint NOT NULL,
  `closed` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `znote_global_storage`
--

CREATE TABLE `znote_global_storage` (
  `key` varchar(32) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `znote_global_storage`
--

INSERT INTO `znote_global_storage` (`key`, `value`) VALUES
('23856', '15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `znote_guild_wars`
--

CREATE TABLE `znote_guild_wars` (
  `id` int NOT NULL,
  `limit` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `znote_images`
--

CREATE TABLE `znote_images` (
  `id` int NOT NULL,
  `title` varchar(30) NOT NULL,
  `desc` text NOT NULL,
  `date` int NOT NULL,
  `status` int NOT NULL,
  `image` varchar(50) NOT NULL,
  `delhash` varchar(30) NOT NULL,
  `account_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `znote_news`
--

CREATE TABLE `znote_news` (
  `id` int NOT NULL,
  `title` varchar(30) NOT NULL,
  `text` text NOT NULL,
  `date` int NOT NULL,
  `pid` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `znote_news`
--

INSERT INTO `znote_news` (`id`, `title`, `text`, `date`, `pid`) VALUES
(1, 'Forge System Adding', '<h3 style=\"text-align: left;\">&nbsp;Welcome to <b>Mex Server</b>&nbsp;<span style=\"font-size: 9pt;\">With <b>Forge System</b> 100% Tibia Real</span></h3><div style=\"text-align: left;\"><span style=\"font-size: 9pt;\"><br></span></div><div style=\"text-align: left;\"><h2><span style=\"font-weight: 700;\">&nbsp;Mex Info:&nbsp;</span><img src=\"https://tiblioteca.com/wp-content/uploads/2021/11/lightbearer_280.png\" style=\"font-size: 14px;\"></h2><br><blockquote><span style=\"font-style: italic;\">Server Info:</span><br><br>•&nbsp; Quest All<br>•&nbsp; Items as RL - Spell as RL - Attack&nbsp;<br>•&nbsp; Forge System as RL 100%<br>•&nbsp; Autoloot<br>•&nbsp; Map Full Real With New Zones<br>•&nbsp; Warzones 1 - 9 with your bosses<br>•&nbsp; All the Island</blockquote></div><div style=\"text-align: left;\"><div><img>&nbsp; &nbsp;&nbsp;<img src=\"https://tiblioteca.com/wp-content/uploads/2021/11/preview_wu21_night_skull.png\">&nbsp;</div><div><br></div><div><h2><b>&nbsp;Premium Info:</b></h2><br><blockquote><span style=\" font-style:italic;\">Enhance your gaming experience by gaining additional abilities and advantages:</span><br><br>• 10% xp boost<br>• 10% loot boost<br>• regeneration boost<br>• autoloot<br>• automatic money to the bank<br>• Extremer Items<br>• tournament boost<br>• daily reward boost</blockquote></div></div>', 1657056239, 1344),
(2, 'Forge Monsters', '<div><br></div><div><h4>System Forge like RL</h4></div><div><br></div><div><img src=\"https://i.ibb.co/z5Tx1Jf/monsterwithforge.png\" alt=\"https://i.ibb.co/z5Tx1Jf/monsterwithforge.png\" class=\"transparent\"></div>', 1657200806, 1344),
(3, 'Double Skill Solo Hoy', '<ul><li><font size=\"2\">Doble EXP</font></li></ul><ul><li><font size=\"2\">Doble Skill <br></font></li></ul><ul><li><font size=\"2\">Doble Loot</font></li></ul><ul><li><font size=\"2\">Agregados esto es una recompensa por la espera</font></li></ul><ul><li><font size=\"2\">Bosses Todos Activados</font></li></ul><ul><li><font size=\"2\" face=\"arial\">Tanjis Monday</font></li></ul><ul><li><font size=\"2\" face=\"arial\">Jaul Tuesday</font></li></ul><ul><li><font size=\"2\" face=\"arial\">Obujus Wednesday</font></li></ul><ul><li><font size=\"2\" face=\"arial\">Jaul Thuersday</font></li></ul><ul><li><font size=\"2\" face=\"arial\">Obujus Friday</font></li></ul><ul><li><font size=\"2\" face=\"arial\">Tanjis Saturday</font></li></ul><ul><li><font size=\"2\" face=\"arial\">Jaul Sunday</font></li></ul><div align=\"center\"><br></div>', 1657253182, 1344);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `znote_paygol`
--

CREATE TABLE `znote_paygol` (
  `id` int NOT NULL,
  `account_id` int NOT NULL,
  `price` int NOT NULL,
  `points` int NOT NULL,
  `message_id` varchar(255) NOT NULL,
  `service_id` varchar(255) NOT NULL,
  `shortcode` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `operator` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `znote_paypal`
--

CREATE TABLE `znote_paypal` (
  `id` int NOT NULL,
  `txn_id` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `accid` int NOT NULL,
  `price` int NOT NULL,
  `points` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `znote_players`
--

CREATE TABLE `znote_players` (
  `id` int NOT NULL,
  `player_id` int NOT NULL,
  `created` int NOT NULL,
  `hide_char` tinyint NOT NULL,
  `comment` varchar(255) NOT NULL,
  `exphist_lastexp` bigint UNSIGNED NOT NULL DEFAULT '0',
  `exphist1` bigint UNSIGNED NOT NULL DEFAULT '0',
  `exphist2` bigint UNSIGNED NOT NULL DEFAULT '0',
  `exphist3` bigint UNSIGNED NOT NULL DEFAULT '0',
  `exphist4` bigint UNSIGNED NOT NULL DEFAULT '0',
  `exphist5` bigint UNSIGNED NOT NULL DEFAULT '0',
  `exphist6` bigint UNSIGNED NOT NULL DEFAULT '0',
  `exphist7` bigint UNSIGNED NOT NULL DEFAULT '0',
  `onlinetimetoday` bigint NOT NULL DEFAULT '0',
  `onlinetime1` bigint NOT NULL DEFAULT '0',
  `onlinetime2` bigint NOT NULL DEFAULT '0',
  `onlinetime3` bigint NOT NULL DEFAULT '0',
  `onlinetime4` bigint NOT NULL DEFAULT '0',
  `onlinetime5` bigint NOT NULL DEFAULT '0',
  `onlinetime6` bigint NOT NULL DEFAULT '0',
  `onlinetime7` bigint NOT NULL DEFAULT '0',
  `onlinetimeall` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `znote_player_reports`
--

CREATE TABLE `znote_player_reports` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `posx` int NOT NULL,
  `posy` int NOT NULL,
  `posz` int NOT NULL,
  `report_description` varchar(255) NOT NULL,
  `date` int NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `znote_shop`
--

CREATE TABLE `znote_shop` (
  `id` int NOT NULL,
  `type` int NOT NULL,
  `itemid` int DEFAULT NULL,
  `count` int NOT NULL DEFAULT '1',
  `description` varchar(255) NOT NULL,
  `points` int NOT NULL DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `znote_shop_logs`
--

CREATE TABLE `znote_shop_logs` (
  `id` int NOT NULL,
  `account_id` int NOT NULL,
  `player_id` int NOT NULL,
  `type` int NOT NULL,
  `itemid` int NOT NULL,
  `count` int NOT NULL,
  `points` int NOT NULL,
  `time` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `znote_shop_orders`
--

CREATE TABLE `znote_shop_orders` (
  `id` int NOT NULL,
  `account_id` int NOT NULL,
  `type` int NOT NULL,
  `itemid` int NOT NULL,
  `count` int NOT NULL,
  `time` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `znote_tickets`
--

CREATE TABLE `znote_tickets` (
  `id` int NOT NULL,
  `owner` int NOT NULL,
  `username` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `subject` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `message` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ip` bigint NOT NULL,
  `creation` int NOT NULL,
  `status` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `znote_tickets`
--

INSERT INTO `znote_tickets` (`id`, `owner`, `username`, `subject`, `message`, `ip`, `creation`, `status`) VALUES
(1, 1123, 'Yubby', 'Char stuck', 'EK Yusew stuck on boat.', 2890302180, 1657463539, 'Open');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `znote_tickets_replies`
--

CREATE TABLE `znote_tickets_replies` (
  `id` int NOT NULL,
  `tid` int NOT NULL,
  `username` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `message` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `znote_visitors`
--

CREATE TABLE `znote_visitors` (
  `id` int NOT NULL,
  `ip` bigint NOT NULL,
  `value` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `znote_visitors_details`
--

CREATE TABLE `znote_visitors_details` (
  `id` int NOT NULL,
  `ip` bigint NOT NULL,
  `time` int NOT NULL,
  `type` tinyint NOT NULL,
  `account_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `z_polls`
--

CREATE TABLE `z_polls` (
  `id` int NOT NULL,
  `question` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `end` int NOT NULL DEFAULT '0',
  `start` int NOT NULL DEFAULT '0',
  `answers` int NOT NULL DEFAULT '0',
  `votes_all` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `z_polls_answers`
--

CREATE TABLE `z_polls_answers` (
  `poll_id` int NOT NULL,
  `answer_id` int NOT NULL,
  `answer` varchar(255) NOT NULL,
  `votes` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `z_shop_categories`
--

CREATE TABLE `z_shop_categories` (
  `id` int NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `hidden` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `z_shop_history`
--

CREATE TABLE `z_shop_history` (
  `id` int NOT NULL,
  `comunication_id` int NOT NULL DEFAULT '0',
  `to_name` varchar(255) NOT NULL DEFAULT '0',
  `to_account` int NOT NULL DEFAULT '0',
  `from_nick` varchar(255) NOT NULL DEFAULT '',
  `from_account` int NOT NULL DEFAULT '0',
  `price` int NOT NULL DEFAULT '0',
  `offer_id` int NOT NULL DEFAULT '0',
  `trans_state` varchar(255) NOT NULL,
  `trans_start` int NOT NULL DEFAULT '0',
  `trans_real` int NOT NULL DEFAULT '0',
  `is_pacc` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `z_shop_offer`
--

CREATE TABLE `z_shop_offer` (
  `id` int NOT NULL,
  `points` int NOT NULL DEFAULT '0',
  `itemid1` int NOT NULL DEFAULT '0',
  `count1` int NOT NULL DEFAULT '0',
  `itemid2` int NOT NULL DEFAULT '0',
  `count2` int NOT NULL DEFAULT '0',
  `offer_type` varchar(255) DEFAULT NULL,
  `offer_description` text NOT NULL,
  `offer_name` varchar(255) NOT NULL DEFAULT '',
  `hidden` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `name_2` (`name`),
  ADD UNIQUE KEY `name_3` (`name`);

--
-- Indices de la tabla `accounts_storage`
--
ALTER TABLE `accounts_storage`
  ADD PRIMARY KEY (`account_id`,`key`);

--
-- Indices de la tabla `account_bans`
--
ALTER TABLE `account_bans`
  ADD PRIMARY KEY (`account_id`),
  ADD KEY `banned_by` (`banned_by`);

--
-- Indices de la tabla `account_ban_history`
--
ALTER TABLE `account_ban_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `banned_by` (`banned_by`),
  ADD KEY `account_id_2` (`account_id`),
  ADD KEY `account_id_3` (`account_id`),
  ADD KEY `account_id_4` (`account_id`),
  ADD KEY `account_id_5` (`account_id`);

--
-- Indices de la tabla `account_character_sale`
--
ALTER TABLE `account_character_sale`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_player_UNIQUE` (`id_player`),
  ADD KEY `account_character_sale_ibfk_2` (`id_account`);

--
-- Indices de la tabla `account_viplist`
--
ALTER TABLE `account_viplist`
  ADD UNIQUE KEY `account_player_index` (`account_id`,`player_id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `player_id` (`player_id`);

--
-- Indices de la tabla `blessings_history`
--
ALTER TABLE `blessings_history`
  ADD KEY `blessings_history_ibfk_1` (`player_id`);

--
-- Indices de la tabla `boosted_creature`
--
ALTER TABLE `boosted_creature`
  ADD PRIMARY KEY (`date`);

--
-- Indices de la tabla `coins_transactions`
--
ALTER TABLE `coins_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `coins_transactions_pk` (`account_id`);

--
-- Indices de la tabla `daily_reward_history`
--
ALTER TABLE `daily_reward_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `player_id` (`player_id`);

--
-- Indices de la tabla `free_pass`
--
ALTER TABLE `free_pass`
  ADD KEY `free_pass_ibfk_1` (`player_id`);

--
-- Indices de la tabla `global_storage`
--
ALTER TABLE `global_storage`
  ADD UNIQUE KEY `key` (`key`);

--
-- Indices de la tabla `guilds`
--
ALTER TABLE `guilds`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `ownerid` (`ownerid`);

--
-- Indices de la tabla `guildwar_kills`
--
ALTER TABLE `guildwar_kills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warid` (`warid`);

--
-- Indices de la tabla `guild_actions_h`
--
ALTER TABLE `guild_actions_h`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `guild_invites`
--
ALTER TABLE `guild_invites`
  ADD PRIMARY KEY (`player_id`,`guild_id`),
  ADD KEY `guild_id` (`guild_id`);

--
-- Indices de la tabla `guild_membership`
--
ALTER TABLE `guild_membership`
  ADD PRIMARY KEY (`player_id`),
  ADD KEY `guild_id` (`guild_id`),
  ADD KEY `rank_id` (`rank_id`);

--
-- Indices de la tabla `guild_ranks`
--
ALTER TABLE `guild_ranks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guild_id` (`guild_id`);

--
-- Indices de la tabla `guild_transfer_h`
--
ALTER TABLE `guild_transfer_h`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `guild_wars`
--
ALTER TABLE `guild_wars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guild1` (`guild1`),
  ADD KEY `guild2` (`guild2`);

--
-- Indices de la tabla `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner` (`owner`),
  ADD KEY `town_id` (`town_id`);

--
-- Indices de la tabla `house_lists`
--
ALTER TABLE `house_lists`
  ADD KEY `house_id` (`house_id`);

--
-- Indices de la tabla `ip_bans`
--
ALTER TABLE `ip_bans`
  ADD PRIMARY KEY (`ip`),
  ADD KEY `banned_by` (`banned_by`);

--
-- Indices de la tabla `live_casts`
--
ALTER TABLE `live_casts`
  ADD UNIQUE KEY `player_id_2` (`player_id`);

--
-- Indices de la tabla `market_history`
--
ALTER TABLE `market_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `player_id` (`player_id`,`sale`);

--
-- Indices de la tabla `market_offers`
--
ALTER TABLE `market_offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale` (`sale`,`itemtype`),
  ADD KEY `created` (`created`),
  ADD KEY `player_id` (`player_id`);

--
-- Indices de la tabla `myaac_account_actions`
--
ALTER TABLE `myaac_account_actions`
  ADD KEY `account_id` (`account_id`);

--
-- Indices de la tabla `myaac_admin_menu`
--
ALTER TABLE `myaac_admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `myaac_bugtracker`
--
ALTER TABLE `myaac_bugtracker`
  ADD PRIMARY KEY (`uid`);

--
-- Indices de la tabla `myaac_changelog`
--
ALTER TABLE `myaac_changelog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `myaac_charbazaar`
--
ALTER TABLE `myaac_charbazaar`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `myaac_charbazaar_bid`
--
ALTER TABLE `myaac_charbazaar_bid`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `myaac_config`
--
ALTER TABLE `myaac_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `myaac_faq`
--
ALTER TABLE `myaac_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `myaac_forum`
--
ALTER TABLE `myaac_forum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section` (`section`);

--
-- Indices de la tabla `myaac_forum_boards`
--
ALTER TABLE `myaac_forum_boards`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `myaac_gallery`
--
ALTER TABLE `myaac_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `myaac_menu`
--
ALTER TABLE `myaac_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `myaac_monsters`
--
ALTER TABLE `myaac_monsters`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `myaac_news`
--
ALTER TABLE `myaac_news`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `myaac_news_categories`
--
ALTER TABLE `myaac_news_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `myaac_notepad`
--
ALTER TABLE `myaac_notepad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `myaac_pages`
--
ALTER TABLE `myaac_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `myaac_polls`
--
ALTER TABLE `myaac_polls`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `myaac_spells`
--
ALTER TABLE `myaac_spells`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `myaac_videos`
--
ALTER TABLE `myaac_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `myaac_visitors`
--
ALTER TABLE `myaac_visitors`
  ADD UNIQUE KEY `ip` (`ip`);

--
-- Indices de la tabla `myaac_weapons`
--
ALTER TABLE `myaac_weapons`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `newsticker`
--
ALTER TABLE `newsticker`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pagseguro_transactions`
--
ALTER TABLE `pagseguro_transactions`
  ADD UNIQUE KEY `transaction_code` (`transaction_code`,`status`),
  ADD KEY `name` (`name`),
  ADD KEY `status` (`status`);

--
-- Indices de la tabla `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `vocation` (`vocation`);

--
-- Indices de la tabla `players_online`
--
ALTER TABLE `players_online`
  ADD PRIMARY KEY (`player_id`);

--
-- Indices de la tabla `player_binary_items`
--
ALTER TABLE `player_binary_items`
  ADD UNIQUE KEY `player_id_2` (`player_id`,`type`);

--
-- Indices de la tabla `player_deaths`
--
ALTER TABLE `player_deaths`
  ADD KEY `player_id` (`player_id`),
  ADD KEY `killed_by` (`killed_by`),
  ADD KEY `mostdamage_by` (`mostdamage_by`);

--
-- Indices de la tabla `player_depotitems`
--
ALTER TABLE `player_depotitems`
  ADD UNIQUE KEY `player_id_2` (`player_id`,`sid`);

--
-- Indices de la tabla `player_former_names`
--
ALTER TABLE `player_former_names`
  ADD PRIMARY KEY (`id`),
  ADD KEY `player_id` (`player_id`);

--
-- Indices de la tabla `player_hirelings`
--
ALTER TABLE `player_hirelings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `player_id` (`player_id`);

--
-- Indices de la tabla `player_inboxitems`
--
ALTER TABLE `player_inboxitems`
  ADD UNIQUE KEY `player_id_2` (`player_id`,`sid`);

--
-- Indices de la tabla `player_items`
--
ALTER TABLE `player_items`
  ADD KEY `player_id` (`player_id`),
  ADD KEY `sid` (`sid`);

--
-- Indices de la tabla `player_kills`
--
ALTER TABLE `player_kills`
  ADD KEY `player_kills_ibfk_1` (`player_id`),
  ADD KEY `player_kills_ibfk_2` (`target`);

--
-- Indices de la tabla `player_namelocks`
--
ALTER TABLE `player_namelocks`
  ADD PRIMARY KEY (`player_id`),
  ADD KEY `namelocked_by` (`namelocked_by`);

--
-- Indices de la tabla `player_preydata`
--
ALTER TABLE `player_preydata`
  ADD PRIMARY KEY (`player_id`);

--
-- Indices de la tabla `player_rewards`
--
ALTER TABLE `player_rewards`
  ADD UNIQUE KEY `player_id_2` (`player_id`,`sid`);

--
-- Indices de la tabla `player_spells`
--
ALTER TABLE `player_spells`
  ADD KEY `player_id` (`player_id`);

--
-- Indices de la tabla `player_storage`
--
ALTER TABLE `player_storage`
  ADD PRIMARY KEY (`player_id`,`key`);

--
-- Indices de la tabla `quickloot_containers`
--
ALTER TABLE `quickloot_containers`
  ADD KEY `fk_quickloot_containers_player_id` (`player_id`);

--
-- Indices de la tabla `sellchar`
--
ALTER TABLE `sellchar`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sell_players`
--
ALTER TABLE `sell_players`
  ADD PRIMARY KEY (`player_id`);

--
-- Indices de la tabla `sell_players_history`
--
ALTER TABLE `sell_players_history`
  ADD PRIMARY KEY (`player_id`,`buytime`) USING BTREE;

--
-- Indices de la tabla `store_history`
--
ALTER TABLE `store_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `store_history_pk` (`account_id`);

--
-- Indices de la tabla `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `tickets_ibfk_1` (`ticket_author_acc_id`);

--
-- Indices de la tabla `tickets_reply`
--
ALTER TABLE `tickets_reply`
  ADD PRIMARY KEY (`reply_id`),
  ADD KEY `tickets_reply_ibfk_1` (`ticket_id`);

--
-- Indices de la tabla `tile_store`
--
ALTER TABLE `tile_store`
  ADD KEY `house_id` (`house_id`);

--
-- Indices de la tabla `znote`
--
ALTER TABLE `znote`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `znote_accounts`
--
ALTER TABLE `znote_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `znote_auction_player`
--
ALTER TABLE `znote_auction_player`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `znote_changelog`
--
ALTER TABLE `znote_changelog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `znote_deleted_characters`
--
ALTER TABLE `znote_deleted_characters`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `znote_forum`
--
ALTER TABLE `znote_forum`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `znote_forum_posts`
--
ALTER TABLE `znote_forum_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `znote_forum_threads`
--
ALTER TABLE `znote_forum_threads`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `znote_global_storage`
--
ALTER TABLE `znote_global_storage`
  ADD UNIQUE KEY `key` (`key`);

--
-- Indices de la tabla `znote_guild_wars`
--
ALTER TABLE `znote_guild_wars`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `znote_images`
--
ALTER TABLE `znote_images`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `znote_news`
--
ALTER TABLE `znote_news`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `znote_paygol`
--
ALTER TABLE `znote_paygol`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `znote_paypal`
--
ALTER TABLE `znote_paypal`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `znote_players`
--
ALTER TABLE `znote_players`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `znote_player_reports`
--
ALTER TABLE `znote_player_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `znote_shop`
--
ALTER TABLE `znote_shop`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `znote_shop_logs`
--
ALTER TABLE `znote_shop_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `znote_shop_orders`
--
ALTER TABLE `znote_shop_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `znote_tickets`
--
ALTER TABLE `znote_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `znote_tickets_replies`
--
ALTER TABLE `znote_tickets_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `znote_visitors`
--
ALTER TABLE `znote_visitors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `znote_visitors_details`
--
ALTER TABLE `znote_visitors_details`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `z_polls`
--
ALTER TABLE `z_polls`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1322;

--
-- AUTO_INCREMENT de la tabla `account_ban_history`
--
ALTER TABLE `account_ban_history`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `account_character_sale`
--
ALTER TABLE `account_character_sale`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `coins_transactions`
--
ALTER TABLE `coins_transactions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `daily_reward_history`
--
ALTER TABLE `daily_reward_history`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `guilds`
--
ALTER TABLE `guilds`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `guildwar_kills`
--
ALTER TABLE `guildwar_kills`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `guild_actions_h`
--
ALTER TABLE `guild_actions_h`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `guild_ranks`
--
ALTER TABLE `guild_ranks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `guild_transfer_h`
--
ALTER TABLE `guild_transfer_h`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `guild_wars`
--
ALTER TABLE `guild_wars`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `houses`
--
ALTER TABLE `houses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3698;

--
-- AUTO_INCREMENT de la tabla `market_history`
--
ALTER TABLE `market_history`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `market_offers`
--
ALTER TABLE `market_offers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myaac_admin_menu`
--
ALTER TABLE `myaac_admin_menu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myaac_bugtracker`
--
ALTER TABLE `myaac_bugtracker`
  MODIFY `uid` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myaac_changelog`
--
ALTER TABLE `myaac_changelog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `myaac_charbazaar`
--
ALTER TABLE `myaac_charbazaar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `myaac_charbazaar_bid`
--
ALTER TABLE `myaac_charbazaar_bid`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myaac_config`
--
ALTER TABLE `myaac_config`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `myaac_faq`
--
ALTER TABLE `myaac_faq`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myaac_forum`
--
ALTER TABLE `myaac_forum`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myaac_forum_boards`
--
ALTER TABLE `myaac_forum_boards`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `myaac_gallery`
--
ALTER TABLE `myaac_gallery`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `myaac_menu`
--
ALTER TABLE `myaac_menu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `myaac_monsters`
--
ALTER TABLE `myaac_monsters`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myaac_news`
--
ALTER TABLE `myaac_news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `myaac_news_categories`
--
ALTER TABLE `myaac_news_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `myaac_notepad`
--
ALTER TABLE `myaac_notepad`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myaac_pages`
--
ALTER TABLE `myaac_pages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `myaac_spells`
--
ALTER TABLE `myaac_spells`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myaac_videos`
--
ALTER TABLE `myaac_videos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `newsticker`
--
ALTER TABLE `newsticker`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `players`
--
ALTER TABLE `players`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1769;

--
-- AUTO_INCREMENT de la tabla `player_former_names`
--
ALTER TABLE `player_former_names`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `player_hirelings`
--
ALTER TABLE `player_hirelings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `sellchar`
--
ALTER TABLE `sellchar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `store_history`
--
ALTER TABLE `store_history`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1179;

--
-- AUTO_INCREMENT de la tabla `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticket_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tickets_reply`
--
ALTER TABLE `tickets_reply`
  MODIFY `reply_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `znote`
--
ALTER TABLE `znote`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `znote_accounts`
--
ALTER TABLE `znote_accounts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT de la tabla `znote_auction_player`
--
ALTER TABLE `znote_auction_player`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `znote_changelog`
--
ALTER TABLE `znote_changelog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `znote_deleted_characters`
--
ALTER TABLE `znote_deleted_characters`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `znote_forum`
--
ALTER TABLE `znote_forum`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `znote_forum_posts`
--
ALTER TABLE `znote_forum_posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `znote_forum_threads`
--
ALTER TABLE `znote_forum_threads`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `znote_guild_wars`
--
ALTER TABLE `znote_guild_wars`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `znote_images`
--
ALTER TABLE `znote_images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `znote_news`
--
ALTER TABLE `znote_news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `znote_paygol`
--
ALTER TABLE `znote_paygol`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `znote_paypal`
--
ALTER TABLE `znote_paypal`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `znote_players`
--
ALTER TABLE `znote_players`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `znote_player_reports`
--
ALTER TABLE `znote_player_reports`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `znote_shop`
--
ALTER TABLE `znote_shop`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `znote_shop_logs`
--
ALTER TABLE `znote_shop_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `znote_shop_orders`
--
ALTER TABLE `znote_shop_orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `znote_tickets`
--
ALTER TABLE `znote_tickets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `znote_tickets_replies`
--
ALTER TABLE `znote_tickets_replies`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `znote_visitors`
--
ALTER TABLE `znote_visitors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `znote_visitors_details`
--
ALTER TABLE `znote_visitors_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `z_polls`
--
ALTER TABLE `z_polls`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `store_history`
--
ALTER TABLE `store_history`
  ADD CONSTRAINT `store_history_account_fk` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

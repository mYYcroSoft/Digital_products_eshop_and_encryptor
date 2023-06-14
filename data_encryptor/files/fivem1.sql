-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Pát 24. bře 2023, 22:04
-- Verze serveru: 10.4.27-MariaDB
-- Verze PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `fivem`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('society_ambulance', 'Emergency Medical Services', 1),
('society_bennys', 'Benny´s Original', 1),
('society_exotic', 'Auto Exotic', 1),
('society_fire', 'Los Santos Fire Department', 1),
('society_galaxy', 'Galaxy Nightclub', 1),
('society_irish', 'Irish Pub', 1),
('society_lawyer', 'Los Santos Lawyer', 1),
('society_lostmc', 'TheLostMC', 1),
('society_lsgc', 'Los Santos Gun Club', 1),
('society_megwillies', 'MegWillies', 1),
('society_police', 'Los Santos Sheriff Department', 1),
('society_royal', 'Royal Custom', 1),
('society_sanandreas', 'San Andreas', 1),
('society_taxi', 'Downtown Cab Co.', 1),
('society_tequila', 'Tequi-la-la', 1),
('society_unicorn', 'Vanilla Unicorn', 1),
('society_yellow', 'Yellow Jack', 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(46) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(1, 'society_police', 227730, NULL),
(3, 'society_ambulance', 346710, NULL),
(5, 'society_unicorn', 50000, NULL),
(7, 'society_taxi', 68710, NULL),
(15, 'society_bennys', 42200, NULL),
(17, 'society_tequila', 50000, NULL),
(19, 'society_galaxy', 45400, NULL),
(21, 'society_megwillies', 50583, NULL),
(24, 'society_lsgc', 40439, NULL),
(147, 'society_royal', 22626067, NULL),
(179, 'society_lawyer', 50000, NULL),
(256, 'society_sanandreas', 4855712, NULL),
(257, 'society_irish', 49800, NULL),
(562, 'society_lostmc', 2783, NULL),
(585, 'society_fire', 380600, NULL),
(761, 'society_yellow', 50000, NULL),
(850, 'society_exotic', 12088, NULL);

-- --------------------------------------------------------

--
-- Struktura tabulky `cd_dispatch`
--

CREATE TABLE `cd_dispatch` (
  `identifier` varchar(46) DEFAULT NULL,
  `callsign` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `cd_dispatch`
--

INSERT INTO `cd_dispatch` (`identifier`, `callsign`) VALUES
('char1:c9134d4df5b10443686b0370214af498ed464fad', 'Ranger-2'),
('char1:9f92532a07891e00ad46526c68b955a2935c3c24', 'Papa 1'),
('char1:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 'Ranger-1'),
('char1:6c8c6ae8c062d2f8c67c6f72bfedd76aea374840', 'County-1'),
('char2:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 'King-1'),
('char2:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', 'George-1');

-- --------------------------------------------------------

--
-- Struktura tabulky `cd_garage_keys`
--

CREATE TABLE `cd_garage_keys` (
  `plate` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `owner_identifier` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `reciever_identifier` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `char_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `cd_garage_privategarage`
--

CREATE TABLE `cd_garage_privategarage` (
  `identifier` varchar(46) DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `dpkeybinds`
--

CREATE TABLE `dpkeybinds` (
  `id` varchar(50) DEFAULT NULL,
  `keybind1` varchar(50) DEFAULT 'num4',
  `emote1` varchar(255) DEFAULT '',
  `keybind2` varchar(50) DEFAULT 'num5',
  `emote2` varchar(255) DEFAULT '',
  `keybind3` varchar(50) DEFAULT 'num6',
  `emote3` varchar(255) DEFAULT '',
  `keybind4` varchar(50) DEFAULT 'num7',
  `emote4` varchar(255) DEFAULT '',
  `keybind5` varchar(50) DEFAULT 'num8',
  `emote5` varchar(255) DEFAULT '',
  `keybind6` varchar(50) DEFAULT 'num9',
  `emote6` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Vypisuji data pro tabulku `dpkeybinds`
--

INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
('license:d3da62f33fe647236cdb1840121f6c72fbec6284', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:5c05ee14c612826f70f079920b8dfac37ffae67a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:349f3bb5ebdf294033fa382b0484eb8138a20249', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:5ca0111f580cb83eb1233591f8f0497e20a6a5ff', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:2a0a64e69866ce26216c03a42ebec6d62d089591', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:16a0801acc1703cc72dadc5fe391cb530e97d6d9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:772dbc1e664e2181c55f2bc7ff239d51a0b99326', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:096a1174e562cec8470b3f647f45b3f0d5cf93e1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:2639ebfec8823612fb740b8e80eabba6904f52a2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:d5ecb54941755850c9b4c0203c4c1b79f8d54322', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:8b738557b51059dd1243c514317c74a3fa11d556', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:1a8dee6c7fe491a0c02c3e79a217ca897a1738aa', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:f86e1e3c3a9e09083e2bdb952344520510b46fe7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:12d06572d0b1c619f15f0cb18f3a523a182432a0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:1ef542f4d01b0b40f5e2e108de6ca7336970f171', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:0c9812bdcd6831fb225152cf2e84e8b7595baa00', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:6529d6fde470132e946507d4df187ca19af645a1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:c9134d4df5b10443686b0370214af498ed464fad', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:82525b79f3f01aa57c3cb6ee29c430c4cc7cbe20', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:9cde2b050fccb3fab4152931a063fe454961987d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:64fbb0bd951efef0d40bf59f5a1968509ac10853', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:7a164dc2c3d533818fcaf073ceead9d568ac1173', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:ad4ea0c5cf36ad5960f0f4d5ceb5bbb09ea71b99', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:f423c8262f5172c002cf81affb5fa3f78255eacf', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:9dda4c73ff2a6ad2da4f50e592fd7ee2efbe6340', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:c8ca57b1830d343c52617873b00568c0e52d4429', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:7e1970f3fe11c87755f3cacdf124231710d0f21e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:6c8c6ae8c062d2f8c67c6f72bfedd76aea374840', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:3fc217f7887890eccb6fbd22c10eed78d313b255', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:62f06c8dc7f2b87a1113fe96fe6aa02cddd294dd', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');

-- --------------------------------------------------------

--
-- Struktura tabulky `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint(20) NOT NULL,
  `identifier` text DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Vypisuji data pro tabulku `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('ambulance', 'Emergency Medical Services', 1),
('bennys', 'Benny´s Original', 1),
('exotic', 'Auto Exotic', 1),
('fire', 'Los Santos Fire Department', 1),
('galaxy', 'Galaxy Nightclub', 1),
('garbage', 'Gimple Garbage', 0),
('irish', 'Irish Pub', 1),
('lawyer', 'Los Santos Lawyer Corp.', 1),
('lostmc', 'TheLostMC', 1),
('lsgc', 'Los Santos Gun Club', 1),
('megwillies', 'MegWillies', 1),
('offambulance', 'Mimo službu', 1),
('offfire', 'Mimo službu', 1),
('offpolice', 'Mimo službu', 1),
('police', 'Los Santos Sheriff Department', 1),
('royal', 'Royal Custom', 1),
('sanandreas', 'San Andreas', 1),
('taxi', 'Downtown Cab Co.', 0),
('tequila', 'Tequi-la-la', 1),
('unemployed', 'Úřad práce', 0),
('unicorn', 'Vanilla Unicorn', 1),
('yellow', 'Yellow Jack', 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(255) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Nezaměstnaný', 75),
(2, 'police', 0, 'recruit', 'Cadet', 200),
(3, 'police', 1, 'ds1', 'Deputy Sheriff I', 400),
(4, 'police', 2, 'ds2', 'Deputy Sheriff II', 425),
(5, 'police', 3, 'ds3', 'Deputy Sheriff III', 450),
(6, 'police', 4, 'ds31', 'Deputy Sheriff III+I', 475),
(7, 'police', 5, 'sergeant', 'Sergeant', 525),
(8, 'police', 6, 'staffsergeant', 'Staff Sergeant', 550),
(9, 'police', 7, 'lieutenant', 'Lieutenant', 575),
(10, 'police', 8, 'captain', 'Captain', 650),
(11, 'police', 9, 'boss', 'Commander', 675),
(12, 'police', 10, 'boss', 'Undersheriff', 725),
(13, 'police', 11, 'boss', 'Sheriff', 750),
(15, 'offpolice', 0, 'recruit', 'Cadet', 100),
(16, 'offpolice', 1, 'ds1', 'Deputy Sheriff I', 100),
(17, 'offpolice', 2, 'ds2', 'Deputy Sheriff II', 100),
(18, 'offpolice', 3, 'ds3', 'Deputy Sheriff III', 100),
(19, 'offpolice', 4, 'ds3', 'Deputy Sheriff III+I', 100),
(20, 'offpolice', 5, 'sergeant', 'Sergeant', 100),
(21, 'offpolice', 6, 'staffsergeant', 'Staff Sergeant', 100),
(22, 'offpolice', 7, 'lieutenant', 'Lieutenant', 100),
(23, 'offpolice', 8, 'captain', 'Captain', 100),
(24, 'offpolice', 9, 'boss', 'Commander', 100),
(25, 'offpolice', 10, 'boss', 'Undersheriff', 100),
(26, 'offpolice', 11, 'boss', 'Sheriff', 100),
(44, 'fire', 0, 'cadet', 'Firefighter I', 100),
(45, 'fire', 1, 'firefighter', 'Firefighter II', 100),
(46, 'fire', 2, 'firefighterII', 'Firefighter III', 150),
(47, 'fire', 3, 'lieutenant', 'Lieutenant', 150),
(48, 'fire', 4, 'captain', 'Captain', 200),
(49, 'fire', 5, 'boss', 'Deputy Chief', 300),
(50, 'fire', 6, 'boss', 'Fire Chief', 350),
(51, 'offfire', 0, 'cadet', 'Firefighter I', 100),
(52, 'offfire', 1, 'firefighter', 'Firefighter II', 100),
(53, 'offfire', 2, 'firefighterII', 'Firefighter III', 100),
(54, 'offfire', 3, 'lieutenant', 'Lieutenant', 100),
(55, 'offfire', 4, 'captain', 'Captain', 100),
(56, 'offfire', 5, 'boss', 'Deputy Chief', 100),
(57, 'offfire', 6, 'boss', 'Fire Chief', 100),
(58, 'unicorn', 0, 'barman', 'Ochranka', 150),
(59, 'unicorn', 1, 'ochranka', 'Barman', 200),
(60, 'unicorn', 2, 'manager', 'Manažer', 1),
(61, 'unicorn', 3, 'boss', 'Majitel', 1),
(62, 'taxi', 0, 'recrue', 'Nováček', 0),
(63, 'taxi', 1, 'uber', 'Pokročilý řidič', 225),
(64, 'taxi', 2, 'boss', 'Majitel', 300),
(65, 'bennys', 0, 'rookie', 'Mechanik', 150),
(66, 'bennys', 1, 'mechanik', 'Pokročilý mechanik', 200),
(67, 'bennys', 2, 'sef', 'Šéf mechaniků', 250),
(68, 'bennys', 3, 'viceboss', 'Manažer', 500),
(69, 'bennys', 4, 'boss', 'Majitel', 800),
(70, 'tequila', 0, 'bratok', 'Ochranka', 150),
(71, 'tequila', 1, 'brigadier', 'Barman', 200),
(72, 'tequila', 2, 'shestyorka', 'Zkušený barman', 250),
(73, 'tequila', 3, 'consigliere', 'Manažer', 275),
(74, 'tequila', 4, 'boss', 'Spolumajitel', 275),
(75, 'tequila', 5, 'boss', 'Majitel', 300),
(76, 'galaxy', 0, 'skladnik', 'Brigádník', 200),
(77, 'galaxy', 1, 'security', 'Barman', 250),
(78, 'galaxy', 2, 'barman', 'Zkušený barman', 300),
(79, 'galaxy', 3, 'manager', 'Manažer', 350),
(80, 'galaxy', 4, 'boss', 'Majitel', 500),
(81, 'megwillies', 0, 'brigadnik', 'Brigádník', 150),
(82, 'megwillies', 1, 'ridic', 'Řidič', 200),
(83, 'megwillies', 2, 'vedouci', 'Skladník', 250),
(84, 'megwillies', 3, 'manazer', 'Manažer', 50),
(85, 'megwillies', 4, 'boss', 'Majitel', 250),
(86, 'lawyer', 0, 'employee', 'Koncipient', 150),
(87, 'lawyer', 1, 'lawyer', 'Právnik', 175),
(88, 'lawyer', 2, 'spolocnik', 'Spoločník', 250),
(89, 'lawyer', 3, 'boss', 'CEO', 500),
(90, 'lsgc', 0, 'brigadnik', 'Brigádník', 100),
(91, 'lsgc', 1, 'ridic', 'Zaměstnanec', 200),
(92, 'lsgc', 2, 'vedouci', 'Manažer', 250),
(93, 'lsgc', 3, 'boss', 'Majitel', 300),
(94, 'royal', 0, 'novice', 'Začátečnik', 200),
(95, 'royal', 1, 'novice', 'Mechanik', 250),
(96, 'royal', 2, 'novice', 'Pokročilý mechanik', 325),
(97, 'royal', 3, 'novice', 'Šéf mechanikû', 350),
(98, 'royal', 4, 'novice', 'Manažer', 400),
(99, 'royal', 5, 'boss', 'Ředitel', 500),
(105, 'irish', 0, 'brigadnik', 'Brigádník', 100),
(106, 'irish', 1, 'employee', 'Zaměstnanec', 150),
(107, 'irish', 2, 'viceboss', 'Manažer', 175),
(108, 'irish', 3, 'boss', 'Majitel', 200),
(113, 'lostmc', 0, 'rookie', 'Mechanik', 1),
(114, 'lostmc', 1, 'mechanik', 'Pokročilý mechanik', 1),
(115, 'lostmc', 2, 'viceboss', 'Manažer', 1),
(116, 'lostmc', 3, 'boss', 'Majitel', 1),
(117, 'yellow', 0, 'barman', 'Barman', 10),
(118, 'yellow', 1, 'viceboss', 'Manažer', 10),
(119, 'yellow', 2, 'boss', 'Majitel', 10),
(122, 'sanandreas', 0, 'normal', 'DMV: Investigative Officer', 12),
(123, 'sanandreas', 1, 'boss', 'DMV: Director', 12),
(124, 'sanandreas', 2, 'normal', 'DOJ: State Attorney', 12),
(125, 'sanandreas', 3, 'boss', 'DOJ: State Attorney General', 12),
(126, 'sanandreas', 4, 'normal', 'SC: Associate Justice', 12),
(127, 'sanandreas', 5, 'boss', 'SC: Chief Justice', 12),
(128, 'sanandreas', 6, 'boss', 'Secretary of State', 12),
(129, 'sanandreas', 7, 'boss', 'Governor', 12),
(141, 'exotic', 0, 'rookie', 'Mechanik', 290),
(142, 'exotic', 1, 'mechanik', 'Pokročilý mechanik', 350),
(143, 'exotic', 3, 'viceboss', 'Manažer', 150),
(144, 'exotic', 4, 'boss', 'Majitel', 150),
(145, 'exotic', 2, 'mistr', 'Mistr dílny', 400),
(146, 'ambulance', 0, 'emt', 'EMT', 200),
(147, 'offambulance', 0, 'emt', 'Mimo službu - EMT', 100),
(148, 'ambulance', 1, 'paramedic', 'Paramedic', 300),
(149, 'offambulance', 1, 'paramedic', 'Mimo službu - Paramedic', 100),
(150, 'ambulance', 2, 'doctor', 'Doktor', 450),
(151, 'offambulance', 2, 'doctor', 'Mimo službu - Doktor', 100),
(152, 'ambulance', 3, 'medass', 'Medical Assistant', 500),
(153, 'offambulance', 3, 'medass', 'Mimo službu - Medical Assistant', 100),
(154, 'ambulance', 3, 'viceboss', 'Zástupce ředitele', 600),
(155, 'offambulance', 3, 'viceboss', 'Mimo službu - Zástupce ředitele', 100),
(156, 'ambulance', 3, 'boss', 'Ředitel', 700),
(157, 'offambulance', 3, 'boss', 'Mimo službu - Ředitel', 100),
(158, 'garbage', 0, 'garbage', 'Popelář', 150);

-- --------------------------------------------------------

--
-- Struktura tabulky `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Vypisuji data pro tabulku `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('dmv', 'Řidičský teoretický test'),
('drive', 'Řidičské oprávnění skupiny B'),
('drive_bike', 'Řidičské oprávnění skupiny A'),
('drive_bus', 'Řidičské oprávnění skupiny D'),
('drive_truck', 'Řidičské oprávnění skupiny C'),
('weapon', 'Zbrojní průkaz');

-- --------------------------------------------------------

--
-- Struktura tabulky `mdt_char_profiles`
--

CREATE TABLE `mdt_char_profiles` (
  `identifier` varchar(46) NOT NULL,
  `firstName` tinytext NOT NULL,
  `lastName` tinytext NOT NULL,
  `dob` varchar(50) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `photoId` text NOT NULL,
  `contact` text NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Vypisuji data pro tabulku `mdt_char_profiles`
--

INSERT INTO `mdt_char_profiles` (`identifier`, `firstName`, `lastName`, `dob`, `sex`, `photoId`, `contact`, `notes`) VALUES
('char1:252400a9738eef79b93a74c5937b0548e469c253', 'Frank', 'Pill', '1995-12-27', 'Male', '', '{\"relatedTo\":[],\"address\":\"\",\"phone\":\"\"}', ''),
('char1:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 'Richard', 'Moore', '1987-02-02', 'Male', 'https://cdn.discordapp.com/attachments/1057778984160608288/1059212602766544926/Sheriff.png', '{\"relatedTo\":[],\"address\":\"\",\"phone\":\"\"}', ''),
('char1:58c130ffb0b6b2ae3b2cbc189ddbf643c65aa6d4', 'Jack', 'Brown', '1998-07-18', 'Male', '', '{\"address\":\"\",\"relatedTo\":[],\"phone\":\"\"}', ''),
('char1:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', 'Jonathan', 'Price', '1974-03-10', 'Male', 'https://i.ibb.co/v4wW4RP/screenshot.jpg', '{\"relatedTo\":[],\"phone\":\"3552719\",\"address\":\"Los Santos Medical Center\"}', 'Ředitel EMS.\nRegistrace Zbraně 183846URK581624'),
('char1:6da4d857b509dd6583ba6782a8301d467bf36380', 'Martin', 'Rogers', '1989-11-21', 'Male', 'https://cdn.discordapp.com/attachments/1057778984160608288/1059193876465844244/image.png', '{\"relatedTo\":[],\"address\":\"\",\"phone\":\"\"}', ''),
('char1:71f6216001838f0b67bf404d0e401d8a20127fe0', 'Jacob', 'Brown', '2000-12-15', 'Male', '', '{\"address\":\"\",\"relatedTo\":[],\"phone\":\"\"}', ''),
('char1:739f45face4a989b414f43753a220053ece07406', 'Jake', 'Smith', '1992-11-25', 'Male', '', '{\"relatedTo\":[],\"address\":\"\",\"phone\":\"\"}', ''),
('char1:9dd7913bbd62f2a73d45d26b229765a1828ece15', 'Dino', 'Lopez', '1989-07-18', 'Male', 'https://cdn.discordapp.com/attachments/1057778984160608288/1059212600111534080/FiveM_by_Cfx.re_-_PixelRP.cz_3.0_1_1_2023_9_07_00_PM.png', '{\"relatedTo\":[],\"address\":\"\",\"phone\":\"\"}', ''),
('char1:9f92532a07891e00ad46526c68b955a2935c3c24', 'Mike', 'Smith', '2000-08-24', 'Male', '', '{\"address\":\"\",\"phone\":\"\",\"relatedTo\":[]}', ''),
('char1:a46aad5d50e8754e3611f8cd512abaf136512ba8', 'Thomas', 'Johnson', '1997-02-03', 'Male', '', '{\"phone\":\"\",\"address\":\"\",\"relatedTo\":[]}', ''),
('char1:aa067204a8e40dfc2807f01efeb9d2dbc066bdfd', 'Carl', 'Cox', '1990-08-05', 'Male', 'https://i.ibb.co/WfP0TLq/screenshot.jpg', '{\"relatedTo\":[],\"phone\":\"\",\"address\":\"\"}', ''),
('char1:c9134d4df5b10443686b0370214af498ed464fad', 'Anthony', 'Woods', '1985-04-01', 'Male', '', '{\"address\":\"\",\"relatedTo\":[],\"phone\":\"\"}', ''),
('char1:fd77610e8f35fbcb85957438e3647d5b4b26c29c', 'Martin', 'Smith', '1995-05-21', 'Male', '', '{\"address\":\"\",\"phone\":\"\",\"relatedTo\":[]}', ''),
('char2:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 'Peter', 'Williams', '1996-04-04', 'Male', '', '{\"address\":\"\",\"relatedTo\":[],\"phone\":\"\"}', 'Philbox Hill - Chief of EMS'),
('char2:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', 'David', 'Jones', '1970-10-10', 'Male', 'https://i.ibb.co/9b9jpC4/screenshot.jpg', '{\"phone\":\"480-2681\",\"relatedTo\":[],\"address\":\"Sheriff Department Sandy Shores\"}', 'Nora-3 David Jones.\nKapitán Sandy Shores Sheriff Department.'),
('char2:83f8d788299c4cf1928bbd97d37da3db69da3b3a', 'Alex', 'Shatterhand', '1982-04-15', 'Male', '', '{\"relatedTo\":[],\"address\":\"\",\"phone\":\"\"}', ''),
('char2:b1dc43c6fb4ef390d0248afa02f04484c4f34a36', 'Semir', 'Gerkhan', '1980-03-08', 'Male', '', '{\"phone\":\"\",\"relatedTo\":[],\"address\":\"\"}', ''),
('char2:d3da62f33fe647236cdb1840121f6c72fbec6284', 'Nikolai', 'Gustenavoj', '1980-08-17', 'Male', '', '{\"relatedTo\":[],\"phone\":\"\",\"address\":\"\"}', 'Registrovaná zbraň: Combat Pistol 787565XPK345501\n\nVlastní zbrojní průkaz'),
('char3:6c8c6ae8c062d2f8c67c6f72bfedd76aea374840', 'William', 'Smith', '1988-09-01', 'Male', '', '{\"address\":\"\",\"relatedTo\":[],\"phone\":\"\"}', '');

-- --------------------------------------------------------

--
-- Struktura tabulky `mdt_criminal_record`
--

CREATE TABLE `mdt_criminal_record` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `type` varchar(10) NOT NULL,
  `description` text NOT NULL,
  `input` longtext NOT NULL,
  `data` longtext NOT NULL,
  `date` bigint(20) NOT NULL,
  `submittedBy` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Vypisuji data pro tabulku `mdt_criminal_record`
--

INSERT INTO `mdt_criminal_record` (`id`, `identifier`, `type`, `description`, `input`, `data`, `date`, `submittedBy`) VALUES
(2, 'char1:58c130ffb0b6b2ae3b2cbc189ddbf643c65aa6d4', 'Arrest', 'Krádež vozidla, reckless, ujíždění', '{\"briefDescription\":\"Krádež vozidla, reckless, ujíždění\",\"evidence\":\"\",\"fineReduction\":\"\",\"vehicleInvolved\":\"vozidlo bez SPZ\",\"location\":\"Popular St. 9279\",\"details\":\"\",\"individualsInvolved\":\"Jack Brown, Jacob Brown\",\"charges\":\"- [Felony] Krádež vozidla x1\\n- [Wobbler] Reckless driving x1\\n- [Felony] Ujíždění PD x1\",\"dueDate\":\"4\",\"jailReduction\":\"\",\"submittedBy\":\"Staff-1 - William David Larson\",\"lawEnforcementInvolved\":\"Staff-1 - William David Larson, a Nora-1 - Michael Espinoza.\",\"totalFines\":\"$20,000\",\"incidentResult\":\"\",\"subjectName\":\"Jack Brown\",\"totalJail\":\"108 Měsíce\"}', '{\"dueDate\":1672516417239,\"criminalCharges\":[{\"data\":{\"count\":1,\"description\":\"Krádež vozidla.\",\"class\":\"Felony\",\"offense\":\"Krádež vozidla\",\"punishment\":{\"time\":36,\"label\":\"16 měsíců, 2 nebo 3 roky - $5,000\",\"fine\":5000}},\"key\":\"criminalCode_0_6\"},{\"data\":{\"count\":1,\"description\":\"\",\"class\":\"Wobbler\",\"offense\":\"Reckless driving\",\"punishment\":{\"time\":36,\"label\":\"až 3 roky vězení - $5,000 + 6 bodů na DL\",\"fine\":5000}},\"key\":\"criminalCode_1_5\"},{\"data\":{\"count\":1,\"description\":\"\",\"class\":\"Felony\",\"offense\":\"Ujíždění PD\",\"punishment\":{\"time\":36,\"label\":\"až 3 roky - $10,000\",\"fine\":10000}},\"key\":\"criminalCode_1_11\"}],\"total\":{\"fines\":20000,\"jailReduction\":0,\"fineReduction\":0,\"jail\":108},\"criminalChargesMetadata\":{\"criminalCode_0_6\":{\"selected\":true,\"count\":1},\"criminalCode_1_5\":{\"selected\":true,\"count\":1},\"criminalCode_1_11\":{\"selected\":true,\"count\":1}},\"lawEnforcement\":[{\"identifier\":\"char1:d3da62f33fe647236cdb1840121f6c72fbec6284\",\"name\":\"William David Larson\",\"callsign\":\"Staff-1\"},{\"identifier\":\"char1:6c8c6ae8c062d2f8c67c6f72bfedd76aea374840\",\"name\":\"Michael Espinoza\",\"callsign\":\"Nora-1\"}],\"charData\":{\"name\":\"Jack Brown\",\"identifier\":\"char1:58c130ffb0b6b2ae3b2cbc189ddbf643c65aa6d4\"},\"submittedImages\":[]}', 1672170817239, 'char1:d3da62f33fe647236cdb1840121f6c72fbec6284'),
(5, 'char1:6da4d857b509dd6583ba6782a8301d467bf36380', 'Arrest', 'Osoba identifikována jako suspect krádeže majetku G6', '{\"totalFines\":\"$15,000\",\"charges\":\"- [Felony] Loupež I. stupně x1\",\"submittedBy\":\"Nora-1 - William David Larson\",\"vehicleInvolved\":\"\",\"lawEnforcementInvolved\":\"Ranger-1 - Richard Moore, a Ranger - 2 - Anthony Woods.\",\"location\":\"Úřad práce, Legion Square\",\"dueDate\":\"4\",\"totalJail\":\"60 Měsíce\",\"fineReduction\":\"Sníženo na $1,499\",\"briefDescription\":\"Osoba identifikována jako suspect krádeže majetku G6\",\"subjectName\":\"Martin Rogers\",\"evidence\":\"\",\"jailReduction\":\"Sníženo na 0 Měsíce\",\"details\":\"\",\"individualsInvolved\":\"Martin Rogers\",\"incidentResult\":\"\"}', '{\"criminalCharges\":[{\"key\":\"criminalCode_0_8\",\"data\":{\"offense\":\"Loupež I. stupně\",\"class\":\"Felony\",\"count\":1,\"punishment\":{\"label\":\"5 let - $15,000\",\"fine\":15000,\"time\":60},\"description\":\"Definováno jako např. vniknutí silou do do domu za účelem pobrat, co se vevnitř nachází. Míření zbraní na osobu, co si vybrala peníze z bankomatu za účelem výdělku.\"}}],\"submittedImages\":[],\"charData\":{\"name\":\"Martin Rogers\",\"identifier\":\"char1:6da4d857b509dd6583ba6782a8301d467bf36380\"},\"lawEnforcement\":[{\"callsign\":\"Ranger-1\",\"identifier\":\"char1:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53\",\"name\":\"Richard Moore\"},{\"callsign\":\"Ranger - 2\",\"identifier\":\"char1:c9134d4df5b10443686b0370214af498ed464fad\",\"name\":\"Anthony Woods\"}],\"criminalChargesMetadata\":{\"criminalCode_0_8\":{\"selected\":true,\"count\":1}},\"dueDate\":1672947753492,\"total\":{\"jailReduction\":0,\"fines\":15000,\"fineReduction\":1499,\"jail\":60}}', 1672602153492, 'char1:d3da62f33fe647236cdb1840121f6c72fbec6284'),
(6, 'char1:9dd7913bbd62f2a73d45d26b229765a1828ece15', 'Incident', 'Napadění, bránění ve výkonu', '{\"fineReduction\":\"\",\"charges\":\"- [Felony] Bránení ve výkonu x1\\n- [Felony] Napadení x1\",\"submittedBy\":\"Ranger-1 - Richard Moore\",\"vehicleInvolved\":\"\",\"totalJail\":\"12 Měsíce\",\"location\":\"PSC: 7093, 9002\",\"dueDate\":\"7\",\"subjectName\":\"Dino Lopez\",\"lawEnforcementInvolved\":\"Ranger - 2 - Anthony Woods.\",\"briefDescription\":\"Napadění, bránění ve výkonu\",\"totalFines\":\"$21,500\",\"evidence\":\"Telefon\\nZapalovač\\nHotovost\",\"jailReduction\":\"Sníženo na 0 Měsíce\",\"details\":\"\",\"individualsInvolved\":\"\",\"incidentResult\":\"Pokutován\"}', '{\"criminalCharges\":[{\"key\":\"criminalCode_0_0\",\"data\":{\"offense\":\"Bránení ve výkonu\",\"class\":\"Felony\",\"count\":1,\"punishment\":{\"fine\":4000,\"label\":\"6 měsíců - $4,000\",\"time\":6},\"description\":\"Čin, kde osoba jakýmkoli způsobem brání ve výkonu strážníkovi.\"}},{\"key\":\"criminalCode_0_10\",\"data\":{\"offense\":\"Napadení\",\"class\":\"Felony\",\"count\":1,\"punishment\":{\"fine\":7500,\"label\":\"6 měsíců - $7,500\",\"time\":6},\"description\":\"I plivnutí na osobu jinou je bráno jako napadení.\"}}],\"submittedImages\":[],\"charData\":{\"name\":\"Dino Lopez\",\"identifier\":\"char1:9dd7913bbd62f2a73d45d26b229765a1828ece15\"},\"lawEnforcement\":[{\"callsign\":\"Ranger - 2\",\"identifier\":\"char1:c9134d4df5b10443686b0370214af498ed464fad\",\"name\":\"Anthony Woods\"}],\"criminalChargesMetadata\":{\"criminalCode_0_0\":{\"selected\":true,\"count\":1},\"criminalCode_0_10\":{\"selected\":true,\"count\":1}},\"dueDate\":1673208767488,\"total\":{\"fineReduction\":0,\"jailReduction\":0,\"fines\":21500,\"jail\":12}}', 1672603967488, 'char1:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53'),
(7, 'char1:a46aad5d50e8754e3611f8cd512abaf136512ba8', 'Incident', 'Krádež vozidla', '{\"briefDescription\":\"Krádež vozidla\",\"evidence\":\"\",\"totalJail\":\"36 Měsíce\",\"charges\":\"- [Felony] Krádež vozidla x1\",\"location\":\"Náměstí Legion Square\",\"dueDate\":\"7\",\"incidentResult\":\"Pokutován\",\"lawEnforcementInvolved\":\"Ranger-1 - Richard Moore.\",\"jailReduction\":\"Sníženo na 0 Měsíce\",\"vehicleInvolved\":\"Místní vozidlo | E7U3Y732\",\"subjectName\":\"Thomas Johnson\",\"details\":\"Přiznání ke krádeži vozidla, osoba na místě pokutováná\",\"individualsInvolved\":\"- Frank Pill\",\"fineReduction\":\"\",\"submittedBy\":\"Ranger-1 - Richard Moore\",\"totalFines\":\"$10,000\"}', '{\"charData\":{\"identifier\":\"char1:a46aad5d50e8754e3611f8cd512abaf136512ba8\",\"name\":\"Thomas Johnson\"},\"criminalChargesMetadata\":{\"criminalCode_0_6\":{\"count\":1,\"selected\":true}},\"total\":{\"fines\":10000,\"fineReduction\":0,\"jailReduction\":0,\"jail\":36},\"criminalCharges\":[{\"key\":\"criminalCode_0_6\",\"data\":{\"punishment\":{\"time\":36,\"fine\":5000,\"label\":\"16 měsíců, 2 nebo 3 roky - $5,000\"},\"offense\":\"Krádež vozidla\",\"count\":1,\"class\":\"Felony\",\"description\":\"Krádež vozidla.\"}}],\"dueDate\":1673291819038,\"lawEnforcement\":[{\"callsign\":\"Ranger-1\",\"identifier\":\"char1:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53\",\"name\":\"Richard Moore\"}],\"submittedImages\":[]}', 1672687019038, 'char1:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53'),
(8, 'char1:9dd7913bbd62f2a73d45d26b229765a1828ece15', 'Arrest', '10-14', '{\"submittedBy\":\"Edward-1 - William David Larson\",\"lawEnforcementInvolved\":\"Edward-1 - William David Larson.\",\"briefDescription\":\"10-14\",\"fineReduction\":\"Sníženo na $10,000\",\"subjectName\":\"Dino Lopez\",\"incidentResult\":\"\",\"jailReduction\":\"Sníženo na 0 Měsíce\",\"evidence\":\"18x Joint\",\"individualsInvolved\":\"\",\"dueDate\":\"7\",\"charges\":\"- [Felony] Držení marihuany za účelem prodeje x1\",\"vehicleInvolved\":\"\",\"totalFines\":\"$20,000\",\"location\":\"Dry Dock Street\",\"details\":\"Pachatel bych chycen bodycamem Williama D. Larsona, jak podává osobě jeden joint za finanční odměnu ve výši 180$.\",\"totalJail\":\"36 Měsíce\"}', '{\"lawEnforcement\":[{\"identifier\":\"char1:d3da62f33fe647236cdb1840121f6c72fbec6284\",\"callsign\":\"Edward-1\",\"name\":\"William David Larson\"}],\"total\":{\"jail\":36,\"fines\":20000,\"jailReduction\":0,\"fineReduction\":10000},\"dueDate\":1673388313686,\"charData\":{\"name\":\"Dino Lopez\",\"identifier\":\"char1:9dd7913bbd62f2a73d45d26b229765a1828ece15\"},\"criminalCharges\":[{\"key\":\"criminalCode_0_4\",\"data\":{\"class\":\"Felony\",\"count\":1,\"description\":\"Držení marihuany za účelem prodeje.\",\"punishment\":{\"label\":\"36 měsíců - $20,000\",\"fine\":20000,\"time\":36},\"offense\":\"Držení marihuany za účelem prodeje\"}}],\"criminalChargesMetadata\":{\"criminalCode_0_4\":{\"selected\":true,\"count\":1}},\"submittedImages\":[]}', 1672783513686, 'char1:d3da62f33fe647236cdb1840121f6c72fbec6284');

-- --------------------------------------------------------

--
-- Struktura tabulky `mdt_duty_tracker`
--

CREATE TABLE `mdt_duty_tracker` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `job` varchar(255) NOT NULL,
  `start` bigint(20) NOT NULL,
  `end` bigint(20) NOT NULL,
  `duration` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Vypisuji data pro tabulku `mdt_duty_tracker`
--

INSERT INTO `mdt_duty_tracker` (`id`, `identifier`, `job`, `start`, `end`, `duration`) VALUES
(2, 'char1:c9134d4df5b10443686b0370214af498ed464fad', 'police', 1671480287128, 1671480375251, 88123),
(3, 'char1:9f92532a07891e00ad46526c68b955a2935c3c24', 'ems', 1671478400915, 1671481664000, 3263085),
(4, 'char1:6c8c6ae8c062d2f8c67c6f72bfedd76aea374840', 'police', 1671478447810, 1671481980430, 3532620),
(5, 'char1:9f92532a07891e00ad46526c68b955a2935c3c24', 'ems', 1671481882488, 1671482471906, 589418),
(6, 'char1:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 'police', 1671478453946, 1671482814581, 4360635),
(7, 'char1:9dda4c73ff2a6ad2da4f50e592fd7ee2efbe6340', 'police', 1671481670780, 1671483304868, 1634088),
(8, 'char1:d3da62f33fe647236cdb1840121f6c72fbec6284', 'police', 1671478436751, 1671484260379, 5823628),
(9, 'char1:c9134d4df5b10443686b0370214af498ed464fad', 'police', 1671484980699, 1671484987821, 7122),
(12, 'char1:6c8c6ae8c062d2f8c67c6f72bfedd76aea374840', 'police', 1671481987601, 1671485505000, 3517399),
(13, 'char1:c9134d4df5b10443686b0370214af498ed464fad', 'police', 1671485339938, 1671487871176, 2531238),
(14, 'char1:9f92532a07891e00ad46526c68b955a2935c3c24', 'ems', 1671552968059, 1671553461480, 493421),
(15, 'char1:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 'police', 1671554614104, 1671555284000, 669896),
(16, 'char1:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 'police', 1671555405230, 1671558573000, 3167770),
(19, 'char1:c9134d4df5b10443686b0370214af498ed464fad', 'police', 1671566639306, 1671567781427, 1142121),
(20, 'char1:9f92532a07891e00ad46526c68b955a2935c3c24', 'ems', 1671566360591, 1671570310997, 3950406),
(21, 'char1:d3da62f33fe647236cdb1840121f6c72fbec6284', 'police', 1671571303422, 1671572095944, 792522),
(22, 'char1:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 'police', 1671564684155, 1671572454000, 7769845),
(24, 'char1:c9134d4df5b10443686b0370214af498ed464fad', 'police', 1671568911945, 1671572829306, 3917361),
(25, 'char1:9f92532a07891e00ad46526c68b955a2935c3c24', 'ems', 1671635476733, 1671638336884, 2860151),
(26, 'char1:9dda4c73ff2a6ad2da4f50e592fd7ee2efbe6340', 'police', 1671698817401, 1671699418000, 600599),
(27, 'char1:9f92532a07891e00ad46526c68b955a2935c3c24', 'ems', 1671739794154, 1671740171418, 377264),
(28, 'char1:9f92532a07891e00ad46526c68b955a2935c3c24', 'ems', 1671743760617, 1671744241000, 480383),
(29, 'char1:9f92532a07891e00ad46526c68b955a2935c3c24', 'ems', 1671744648327, 1671744654573, 6246),
(30, 'char1:9f92532a07891e00ad46526c68b955a2935c3c24', 'ems', 1671811744641, 1671812200665, 456024),
(32, 'char1:9f92532a07891e00ad46526c68b955a2935c3c24', 'ems', 1671830666462, 1671831027004, 360542),
(33, 'char1:c9134d4df5b10443686b0370214af498ed464fad', 'police', 1671830842308, 1671831209184, 366876),
(36, 'char1:9dda4c73ff2a6ad2da4f50e592fd7ee2efbe6340', 'police', 1671974790077, 1671974808000, 17923),
(37, 'char3:b1dc43c6fb4ef390d0248afa02f04484c4f34a36', 'ems', 1671980968183, 1671980984440, 16257),
(38, 'char1:c9134d4df5b10443686b0370214af498ed464fad', 'police', 1671995126987, 1671996787181, 1660194),
(39, 'char1:c9134d4df5b10443686b0370214af498ed464fad', 'police', 1671996946093, 1671996974675, 28582),
(40, 'char1:9f92532a07891e00ad46526c68b955a2935c3c24', 'ems', 1671994719143, 1671999418728, 4699585),
(41, 'char1:fd77610e8f35fbcb85957438e3647d5b4b26c29c', 'ems', 1671999116736, 1671999559333, 442597),
(42, 'char1:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 'police', 1671997633072, 1672000920000, 3286928),
(43, 'char1:c9134d4df5b10443686b0370214af498ed464fad', 'police', 1671996993600, 1672000946142, 3952542),
(44, 'char1:d3da62f33fe647236cdb1840121f6c72fbec6284', 'police', 1672056492767, 1672056596581, 103814),
(47, 'char1:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 'police', 1672089558195, 1672090549000, 990805),
(48, 'char1:9dda4c73ff2a6ad2da4f50e592fd7ee2efbe6340', 'police', 1672086547744, 1672090573000, 4025256),
(50, 'char1:d3da62f33fe647236cdb1840121f6c72fbec6284', 'police', 1672170672497, 1672171841636, 1169139),
(51, 'char1:6c8c6ae8c062d2f8c67c6f72bfedd76aea374840', 'police', 1672169015585, 1672172538000, 3522415),
(53, 'char1:d3da62f33fe647236cdb1840121f6c72fbec6284', 'police', 1672226739677, 1672230403686, 3664009),
(54, 'char1:c9134d4df5b10443686b0370214af498ed464fad', 'police', 1672250942326, 1672251868000, 925674),
(55, 'char1:6c8c6ae8c062d2f8c67c6f72bfedd76aea374840', 'police', 1672250835300, 1672251868000, 1032700),
(56, 'char1:c9134d4df5b10443686b0370214af498ed464fad', 'police', 1672251980094, 1672255115000, 3134906),
(57, 'char1:aa067204a8e40dfc2807f01efeb9d2dbc066bdfd', 'police', 1672253876050, 1672259540000, 5663950),
(59, 'char2:83f8d788299c4cf1928bbd97d37da3db69da3b3a', 'police', 1672267347656, 1672267532000, 184344),
(60, 'char1:aa067204a8e40dfc2807f01efeb9d2dbc066bdfd', 'police', 1672262063950, 1672275403203, 13339253),
(61, 'char2:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', 'police', 1672336196539, 1672342531275, 6334736),
(62, 'char2:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', 'police', 1672376023080, 1672376444000, 420920),
(63, 'char1:c9134d4df5b10443686b0370214af498ed464fad', 'police', 1672522004552, 1672526747000, 4742448),
(64, 'char1:d3da62f33fe647236cdb1840121f6c72fbec6284', 'police', 1672577850112, 1672577855685, 5573),
(65, 'char1:d3da62f33fe647236cdb1840121f6c72fbec6284', 'police', 1672577878652, 1672577883429, 4777),
(66, 'char1:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 'police', 1672587847600, 1672590802000, 2954400),
(67, 'char2:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', 'police', 1672586062076, 1672591004000, 4941924),
(68, 'char1:9f92532a07891e00ad46526c68b955a2935c3c24', 'ems', 1672593633019, 1672593697000, 63981),
(69, 'char1:9f92532a07891e00ad46526c68b955a2935c3c24', 'ems', 1672594522148, 1672594936252, 414104),
(70, 'char1:d3da62f33fe647236cdb1840121f6c72fbec6284', 'police', 1672601718636, 1672603012000, 1293364),
(71, 'char1:9f92532a07891e00ad46526c68b955a2935c3c24', 'ems', 1672601742781, 1672607250545, 5507764),
(72, 'char1:8b738557b51059dd1243c514317c74a3fa11d556', 'police', 1672604083149, 1672608958000, 4874851),
(73, 'char1:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 'police', 1672599394503, 1672612215000, 12820497),
(74, 'char1:c9134d4df5b10443686b0370214af498ed464fad', 'police', 1672598313185, 1672612282529, 13969344),
(75, 'char2:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', 'police', 1672651749636, 1672651753369, 3733),
(76, 'char1:9f92532a07891e00ad46526c68b955a2935c3c24', 'ems', 1672675089680, 1672675680711, 591031),
(77, 'char1:8b738557b51059dd1243c514317c74a3fa11d556', 'police', 1672675845097, 1672677184000, 1338903),
(78, 'char1:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 'police', 1672686514335, 1672688773432, 2259097),
(79, 'char1:9f92532a07891e00ad46526c68b955a2935c3c24', 'ems', 1672692034994, 1672692035151, 157),
(80, 'char1:9f92532a07891e00ad46526c68b955a2935c3c24', 'ems', 1672692041685, 1672693665972, 1624287),
(81, 'char2:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', 'police', 1672748731575, 1672749826000, 1094425),
(82, 'char1:c9134d4df5b10443686b0370214af498ed464fad', 'police', 1672768137625, 1672768142873, 5248),
(83, 'char1:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 'police', 1672769375321, 1672771722000, 2346679),
(84, 'char1:6c8c6ae8c062d2f8c67c6f72bfedd76aea374840', 'police', 1672769117081, 1672776687000, 7569919),
(85, 'char1:9f92532a07891e00ad46526c68b955a2935c3c24', 'ems', 1672767386481, 1672776942712, 9556231),
(86, 'char1:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 'police', 1672771878374, 1672778226000, 6347626),
(87, 'char1:d3da62f33fe647236cdb1840121f6c72fbec6284', 'police', 1672777798502, 1672779144000, 1345498),
(88, 'char1:c9134d4df5b10443686b0370214af498ed464fad', 'police', 1672772422046, 1672780940000, 8517954),
(89, 'char1:d3da62f33fe647236cdb1840121f6c72fbec6284', 'police', 1672780114666, 1672783625935, 3511269),
(90, 'char1:6c8c6ae8c062d2f8c67c6f72bfedd76aea374840', 'police', 1672781792033, 1672784121000, 2328967),
(91, 'char1:c9134d4df5b10443686b0370214af498ed464fad', 'police', 1672781044536, 1672785581181, 4536645),
(92, 'char1:c9134d4df5b10443686b0370214af498ed464fad', 'police', 1672785732663, 1672786455000, 722337),
(93, 'char1:9f92532a07891e00ad46526c68b955a2935c3c24', 'ems', 1672855506865, 1672856867748, 1360883),
(94, 'char1:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 'police', 1672858798031, 1672859432000, 633969),
(95, 'char1:9f92532a07891e00ad46526c68b955a2935c3c24', 'ems', 1672858310987, 1672859753693, 1442706),
(96, 'char1:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 'police', 1672860261276, 1672860892000, 630724),
(97, 'char1:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 'police', 1672865187614, 1672867431000, 2243386),
(98, 'char1:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 'police', 1672867538709, 1672867962000, 423291),
(99, 'char1:c9134d4df5b10443686b0370214af498ed464fad', 'police', 1672865196880, 1672870288418, 5091538),
(100, 'char1:9f92532a07891e00ad46526c68b955a2935c3c24', 'ems', 1673032577120, 1673035044191, 2467071),
(101, 'char2:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 'ems', 1673090917061, 1673091498000, 580939),
(102, 'char1:9f92532a07891e00ad46526c68b955a2935c3c24', 'ems', 1673106194753, 1673106369742, 174989),
(103, 'char1:9f92532a07891e00ad46526c68b955a2935c3c24', 'ems', 1673106378200, 1673107173021, 794821),
(104, 'char2:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 'ems', 1673109245860, 1673110378000, 1132140),
(105, 'char2:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 'ems', 1673112349545, 1673115130000, 2780455),
(106, 'char1:9f92532a07891e00ad46526c68b955a2935c3c24', 'ems', 1673201484002, 1673203862136, 2378134),
(107, 'char1:a0f7631205cb6e82660d688375a78c4dfd78a7b1', 'ems', 1673203389553, 1673203871712, 482159),
(108, 'char1:a0f7631205cb6e82660d688375a78c4dfd78a7b1', 'ems', 1673203879985, 1673203887106, 7121),
(109, 'char1:a0f7631205cb6e82660d688375a78c4dfd78a7b1', 'ems', 1673204055324, 1673204121900, 66576),
(110, 'char1:9f92532a07891e00ad46526c68b955a2935c3c24', 'ems', 1673204028710, 1673204232478, 203768),
(111, 'char2:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 'ems', 1673215020576, 1673215786000, 765424),
(112, 'char2:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 'ems', 1673293982193, 1673295370000, 1387807),
(113, 'char1:c9134d4df5b10443686b0370214af498ed464fad', 'police', 1673293974731, 1673296689529, 2714798),
(114, 'char1:9f92532a07891e00ad46526c68b955a2935c3c24', 'ems', 1673983564900, 1673983947000, 382100),
(115, 'char1:d3da62f33fe647236cdb1840121f6c72fbec6284', 'police', 1675266921661, 1675267161000, 239339),
(116, 'char2:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', 'police', 1675268455542, 1675269243000, 787458),
(117, 'char1:d3da62f33fe647236cdb1840121f6c72fbec6284', 'police', 1675351602399, 1675353421000, 1818601);

-- --------------------------------------------------------

--
-- Struktura tabulky `mdt_fines`
--

CREATE TABLE `mdt_fines` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `fine` int(11) NOT NULL DEFAULT 0,
  `reference` int(11) NOT NULL,
  `date` bigint(20) NOT NULL,
  `due_date` bigint(20) NOT NULL,
  `paid` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Vypisuji data pro tabulku `mdt_fines`
--

INSERT INTO `mdt_fines` (`id`, `identifier`, `fine`, `reference`, `date`, `due_date`, `paid`) VALUES
(6, 'char1:a46aad5d50e8754e3611f8cd512abaf136512ba8', 10000, 7, 1672687019038, 1673291819038, 0),
(7, 'char1:9dd7913bbd62f2a73d45d26b229765a1828ece15', 10000, 8, 1672783513686, 1673388313686, 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `mdt_person_bolos`
--

CREATE TABLE `mdt_person_bolos` (
  `id` int(11) NOT NULL,
  `creator` tinytext NOT NULL,
  `name` tinytext NOT NULL,
  `lastSeen` tinytext NOT NULL,
  `reason` text NOT NULL,
  `description` text NOT NULL,
  `notes` text NOT NULL,
  `date` bigint(20) NOT NULL,
  `targetIdentifier` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Vypisuji data pro tabulku `mdt_person_bolos`
--

INSERT INTO `mdt_person_bolos` (`id`, `creator`, `name`, `lastSeen`, `reason`, `description`, `notes`, `date`, `targetIdentifier`) VALUES
(1, 'Staff-1 - William David Larson', 'Jacob Brown', 'Popular St.', 'Krádež vozidla, ujíždění hlídce, reckless driving, podezřelý z pokusu o vraždu', 'Černá mikina, černé krátké vlasy.', 'Osoba utekla po 10-80, zajistili jsme jeho bratra a pár minut po úniku započala střelba z blízké budovy.', 1672171031489, 'char1:71f6216001838f0b67bf404d0e401d8a20127fe0');

-- --------------------------------------------------------

--
-- Struktura tabulky `mdt_users`
--

CREATE TABLE `mdt_users` (
  `identifier` varchar(46) NOT NULL,
  `name` tinytext NOT NULL,
  `callsign` varchar(20) NOT NULL,
  `job` varchar(50) NOT NULL,
  `settings` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Vypisuji data pro tabulku `mdt_users`
--

INSERT INTO `mdt_users` (`identifier`, `name`, `callsign`, `job`, `settings`) VALUES
('char1:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 'Richard Moore', 'Ranger-1', 'police', '{\"keybind\":\"\",\"notify\":{\"sound\":3,\"alerts\":{\"onDuty\":false,\"offDuty\":false,\"boloEntry\":true},\"volume\":\"0.1\",\"panicVolume\":0.75}}'),
('char1:6c8c6ae8c062d2f8c67c6f72bfedd76aea374840', 'Michael Espinoza', 'County-1', 'police', '{\"keybind\":\"\",\"notify\":{\"alerts\":{\"boloEntry\":true,\"onDuty\":true,\"offDuty\":true},\"sound\":1,\"volume\":0.5,\"panicVolume\":0.75}}'),
('char1:8b738557b51059dd1243c514317c74a3fa11d556', 'Peter Clark', 'Charlie-2', 'police', '{}'),
('char1:9dda4c73ff2a6ad2da4f50e592fd7ee2efbe6340', 'Petr Saltyn', 'L-4', 'police', '{}'),
('char1:9f92532a07891e00ad46526c68b955a2935c3c24', 'Mike Smith', 'Alpha-1', 'ems', '{\"notify\":{\"alerts\":{\"offDuty\":true,\"boloEntry\":true,\"onDuty\":true},\"panicVolume\":0.75,\"volume\":0.5,\"sound\":1},\"keybind\":\"\"}'),
('char1:a0f7631205cb6e82660d688375a78c4dfd78a7b1', 'John White', 'Fire-2', 'ems', '{}'),
('char1:aa067204a8e40dfc2807f01efeb9d2dbc066bdfd', 'Carl Cox', 'A-5', 'police', '{\"notify\":{\"sound\":1,\"volume\":\"1\",\"panicVolume\":\"1\",\"alerts\":{\"boloEntry\":true,\"onDuty\":true,\"offDuty\":true}},\"keybind\":\"F5\"}'),
('char1:c9134d4df5b10443686b0370214af498ed464fad', 'Anthony Woods', 'Ranger - 2', 'police', '{\"notify\":{\"volume\":\"0\",\"sound\":1,\"panicVolume\":0.75,\"alerts\":{\"boloEntry\":true,\"onDuty\":true,\"offDuty\":true}},\"keybind\":\"\"}'),
('char1:d3da62f33fe647236cdb1840121f6c72fbec6284', 'William David Larson', 'Edward-1', 'police', '{}'),
('char1:fd77610e8f35fbcb85957438e3647d5b4b26c29c', 'Martin Smith', 'Fire-1', 'ems', '{}'),
('char2:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 'Peter Williams', 'King-1', 'ems', '{}'),
('char2:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', 'David Jones', 'George-1', 'police', '{}'),
('char2:83f8d788299c4cf1928bbd97d37da3db69da3b3a', 'Alex Shatterhand', 'Sheriff 1', 'police', '{}'),
('char2:d3da62f33fe647236cdb1840121f6c72fbec6284', 'Nikolai Gustenavoj', '', 'doj', '{}'),
('char3:b1dc43c6fb4ef390d0248afa02f04484c4f34a36', 'Mike Banning', '', 'police', '{}');

-- --------------------------------------------------------

--
-- Struktura tabulky `mdt_veh_bolos`
--

CREATE TABLE `mdt_veh_bolos` (
  `id` int(11) NOT NULL,
  `creator` tinytext NOT NULL,
  `plate` varchar(10) NOT NULL,
  `model` tinytext NOT NULL,
  `lastSeen` tinytext NOT NULL,
  `color` tinytext NOT NULL,
  `description` text NOT NULL,
  `reason` text NOT NULL,
  `notes` text NOT NULL,
  `date` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Struktura tabulky `mdt_veh_profiles`
--

CREATE TABLE `mdt_veh_profiles` (
  `plate` varchar(10) NOT NULL,
  `model` tinytext NOT NULL,
  `color` tinytext NOT NULL,
  `photoId` text NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Vypisuji data pro tabulku `mdt_veh_profiles`
--

INSERT INTO `mdt_veh_profiles` (`plate`, `model`, `color`, `photoId`, `notes`) VALUES
('06SWO293', '', '', '', ''),
('93OIR714', '', '', '', ''),
('94HMK394', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktura tabulky `mdt_warrants`
--

CREATE TABLE `mdt_warrants` (
  `id` int(11) NOT NULL,
  `creator` tinytext NOT NULL,
  `name` tinytext NOT NULL,
  `lastSeen` tinytext NOT NULL,
  `reason` text NOT NULL,
  `description` text NOT NULL,
  `notes` text NOT NULL,
  `date` bigint(20) NOT NULL,
  `targetIdentifier` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Struktura tabulky `multicharacter_slots`
--

CREATE TABLE `multicharacter_slots` (
  `identifier` varchar(46) NOT NULL,
  `slots` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Vypisuji data pro tabulku `multicharacter_slots`
--

INSERT INTO `multicharacter_slots` (`identifier`, `slots`) VALUES
('288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 3),
('8b738557b51059dd1243c514317c74a3fa11d556', 3),
('d3da62f33fe647236cdb1840121f6c72fbec6284', 3),
('b1dc43c6fb4ef390d0248afa02f04484c4f34a36', 4),
('6c8c6ae8c062d2f8c67c6f72bfedd76aea374840', 5);

-- --------------------------------------------------------

--
-- Struktura tabulky `okokbilling`
--

CREATE TABLE `okokbilling` (
  `id` int(11) NOT NULL,
  `ref_id` varchar(10) NOT NULL,
  `receiver_identifier` varchar(255) NOT NULL,
  `receiver_name` varchar(255) NOT NULL,
  `author_identifier` varchar(255) NOT NULL,
  `author_name` varchar(255) NOT NULL,
  `society` varchar(255) NOT NULL,
  `society_name` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `invoice_value` int(11) NOT NULL,
  `fees_amount` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `notes` varchar(255) DEFAULT ' ',
  `sent_date` varchar(255) NOT NULL,
  `limit_pay_date` varchar(255) NOT NULL,
  `paid_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `okokbilling`
--

INSERT INTO `okokbilling` (`id`, `ref_id`, `receiver_identifier`, `receiver_name`, `author_identifier`, `author_name`, `society`, `society_name`, `item`, `invoice_value`, `fees_amount`, `status`, `notes`, `sent_date`, `limit_pay_date`, `paid_date`) VALUES
(1, 'OKF0F32C01', 'char1:d3da62f33fe647236cdb1840121f6c72fbec6284', 'William David Larson', 'char1:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 'Richard Moore', 'society_police', 'Los Santos Police Department', 'Nelegální tuning', 250, 0, 'paid', 'kokot', '2022-12-19 20:25:48', '2022-12-26', '2022-12-19 20:26:07'),
(6, 'OK43E2B234', 'char1:6c8c6ae8c062d2f8c67c6f72bfedd76aea374840', 'Michael Espinoza', 'char2:d3da62f33fe647236cdb1840121f6c72fbec6284', 'Nikolai Gustenavoj', '', '', 'Popruh', 300, 0, 'paid', '', '2022-12-27 20:11:28', '2023-01-03', '2022-12-27 20:12:04'),
(7, 'OK629B7063', 'char1:71f6216001838f0b67bf404d0e401d8a20127fe0', 'Jacob Brown', 'char2:d3da62f33fe647236cdb1840121f6c72fbec6284', 'Nikolai Gustenavoj', '', '', 'Nůž', 500, 25, 'unpaid', '', '2022-12-27 20:19:29', '2023-01-03', NULL),
(8, 'OK68A53FFF', 'char1:58c130ffb0b6b2ae3b2cbc189ddbf643c65aa6d4', 'Jack Brown', 'char2:d3da62f33fe647236cdb1840121f6c72fbec6284', 'Nikolai Gustenavoj', '', '', 'Nůž', 500, 25, 'paid', '', '2022-12-27 20:19:39', '2023-01-03', '2023-01-02 23:03:15'),
(9, 'OK55BFFDE9', 'char1:58c130ffb0b6b2ae3b2cbc189ddbf643c65aa6d4', 'Jack Brown', 'char1:d3da62f33fe647236cdb1840121f6c72fbec6284', 'William David Larson', 'society_police', 'Los Santos Police Department', 'Vlastní', 20000, 1000, 'paid', 'Hlášení o incidentu ID 2', '2022-12-27 20:54:55', '2023-01-03', '2023-01-02 23:03:15'),
(10, 'OK4B0CF971', 'char1:aa067204a8e40dfc2807f01efeb9d2dbc066bdfd', 'Carl Cox', 'char2:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', 'David Jones', 'society_police', 'Los Santos Police Department', 'Vlastní', 100, 5, 'paid', 'Test', '2022-12-29 19:26:21', '2023-01-05', '2023-01-04 23:01:13'),
(11, 'OKED1D511C', 'char1:6da4d857b509dd6583ba6782a8301d467bf36380', 'Martin Rogers', 'char1:d3da62f33fe647236cdb1840121f6c72fbec6284', 'William David Larson', 'society_police', 'Los Santos Police Department', 'Vlastní', 2000, 100, 'paid', 'Krádež majetku G6', '2023-01-01 20:38:54', '2023-01-08', '2023-01-02 11:46:57'),
(13, 'OK047052F5', 'char1:739f45face4a989b414f43753a220053ece07406', 'Jake Smith', 'char1:9f92532a07891e00ad46526c68b955a2935c3c24', 'Mike Smith', 'society_fire', 'Los Santos Fire Department', 'Výjazd EMT', 2000, 100, 'paid', 'výjazd', '2023-01-03 19:47:04', '2023-01-10', '2023-01-11 10:26:01'),
(14, 'OKF307432E', 'char3:6c8c6ae8c062d2f8c67c6f72bfedd76aea374840', 'William Smith', 'char1:6da4d857b509dd6583ba6782a8301d467bf36380', 'Martin Rogers', 'society_lostmc', 'TheLostMC', 'Tuning', 100000, 0, 'paid', '', '2023-01-03 21:41:07', '2023-01-10', '2023-01-03 21:41:26'),
(15, 'OKBAB98745', 'char1:6d33049611fce73e866daa98f13513c53a3b36b1', 'Michael Will', 'char1:6da4d857b509dd6583ba6782a8301d467bf36380', 'Martin Rogers', 'society_lostmc', 'TheLostMC', 'Tuning', 1, 0, 'paid', 'The Lost MC', '2023-01-05 00:51:38', '2023-01-12', '2023-01-05 00:51:57'),
(16, 'OK2F669B4F', 'char1:09bd2ceb267e8769174dea3bcfbcccf87517aa7a', 'Frank Lucas', 'char1:f3e71e94ead0e0b54c28491a2b012f196ab8d472', 'Mike Mamutovic', 'society_lostmc', 'TheLostMC', 'Tuning', 92701, 0, 'paid', '', '2023-01-12 17:43:04', '2023-01-19', '2023-01-12 17:43:11'),
(17, 'OKC5E67911', 'char1:09bd2ceb267e8769174dea3bcfbcccf87517aa7a', 'Frank Lucas', 'char1:f3e71e94ead0e0b54c28491a2b012f196ab8d472', 'Mike Mamutovic', 'society_lostmc', 'TheLostMC', 'Tuning', 15000, 0, 'paid', '', '2023-01-12 18:15:55', '2023-01-19', '2023-01-12 18:16:08'),
(18, 'OK65D13FF5', 'char1:a8cfd975ad8e17a808e69fea1873127e0e8dd9e9', 'Jay Jay', 'char1:9f92532a07891e00ad46526c68b955a2935c3c24', 'Mike Smith', '', '', 'Pistol', 10000, 0, 'paid', 'poplatok', '2023-01-31 17:14:54', '2023-02-07', '2023-01-31 17:16:09');

-- --------------------------------------------------------

--
-- Struktura tabulky `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `owner` varchar(46) DEFAULT NULL,
  `plate` varchar(12) NOT NULL,
  `in_garage` tinyint(1) DEFAULT 0,
  `impound` int(1) NOT NULL DEFAULT 0,
  `property` mediumint(9) NOT NULL DEFAULT 0,
  `garage_id` varchar(50) DEFAULT '8037',
  `image` longtext DEFAULT NULL,
  `garage_type` varchar(50) DEFAULT 'car',
  `job_personalowned` varchar(50) DEFAULT '',
  `vehicle` longtext DEFAULT NULL,
  `adv_stats` longtext DEFAULT '{"plate":"nil","mileage":0.0,"maxhealth":1000.0}',
  `impound_data` longtext DEFAULT '',
  `trunk` longtext DEFAULT NULL,
  `glovebox` longtext DEFAULT NULL,
  `code` int(40) NOT NULL DEFAULT 0,
  `stolen` int(50) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Vypisuji data pro tabulku `owned_vehicles`
--

INSERT INTO `owned_vehicles` (`owner`, `plate`, `in_garage`, `impound`, `property`, `garage_id`, `image`, `garage_type`, `job_personalowned`, `vehicle`, `adv_stats`, `impound_data`, `trunk`, `glovebox`, `code`, `stolen`) VALUES
('char2:b1dc43c6fb4ef390d0248afa02f04484c4f34a36', '02AMD988', 1, 0, 0, '8047', NULL, 'car', '', '{\"neonColor\":[255,0,255],\"modTrimB\":-1,\"wheelColor\":0,\"modDoorSpeaker\":-1,\"modTrimA\":-1,\"wheels\":3,\"customPrimaryColor\":[4,32,141],\"windowTint\":-1,\"model\":83136452,\"modAirFilter\":-1,\"modHydrolic\":-1,\"modArchCover\":-1,\"modSmokeEnabled\":false,\"modFrame\":-1,\"modSteeringWheel\":-1,\"modDoorR\":-1,\"tankHealth\":1000.0,\"modArmor\":-1,\"modDial\":-1,\"doors\":[false,false,false,false,false,false],\"drift\":false,\"modWheelVariat\":false,\"windows\":[false,false,false,false,false,true],\"modStruts\":-1,\"modPlateHolder\":-1,\"doorsBroken\":{\"6\":false,\"0\":false,\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false},\"modAPlate\":-1,\"xenonColor\":255,\"modExhaust\":-1,\"modSideSkirt\":-1,\"modDashboard\":-1,\"modGrille\":-1,\"bodyHealth\":1000.0,\"modShifterLeavers\":-1,\"modHorns\":-1,\"pearlescentColor\":4,\"tyreBurst\":{\"5\":false,\"0\":false,\"4\":false,\"1\":false},\"modOrnaments\":-1,\"paintType\":[0,0],\"modVanityPlate\":-1,\"modEngineBlock\":-1,\"modRightFender\":-1,\"windowsBroken\":{\"6\":false,\"7\":false,\"0\":false,\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false},\"modBackWheels\":-1,\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"modRoof\":-1,\"color2\":30,\"plate\":\"02AMD988\",\"modAerials\":-1,\"color3\":[4,32,141],\"modHood\":-1,\"modXenon\":false,\"modSuspension\":-1,\"modFrontBumper\":-1,\"dshcolor\":0,\"plateIndex\":0,\"modLightbar\":-1,\"modTyresBurst\":1,\"modWindows\":-1,\"modEngine\":-1,\"dirtLevel\":6.1,\"extras\":[],\"modLivery\":-1,\"color1\":6,\"modSeats\":-1,\"fuelLevel\":76.1,\"modTurbo\":false,\"intcolor\":4,\"customSecondaryColor\":[4,32,141],\"modFrontWheels\":-1,\"tyreSmokeColor\":[255,255,255],\"modFender\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modRearBumper\":-1,\"engineHealth\":1000.0,\"modBrakes\":-1,\"modSpeakers\":-1,\"color4\":[4,32,141],\"modTank\":-1,\"modSpoilers\":-1,\"modTrunk\":-1,\"ColorType\":[0,0]}', '{\"maxhealth\":1000.0,\"mileage\":0.0,\"plate\":\"02AMD988\"}', '', NULL, NULL, 0, 0),
('police', '03POZ835', 1, 0, 0, '8037', NULL, 'car', '', '{\"model\":941471002,\"modTrimA\":-1,\"modAirFilter\":-1,\"drift\":false,\"modShifterLeavers\":-1,\"modLivery\":-1,\"modBackWheels\":-1,\"neonEnabled\":[false,false,false,false],\"dirtLevel\":8.1,\"tyreSmokeColor\":[255,255,255],\"paintType\":[7,7],\"extras\":{\"11\":1},\"modSideSkirt\":-1,\"modSmokeEnabled\":false,\"modRightFender\":-1,\"modLightbar\":-1,\"windowsBroken\":{\"7\":true,\"0\":false,\"1\":true,\"2\":true,\"3\":true,\"4\":true,\"5\":true,\"6\":true},\"modVanityPlate\":-1,\"modTank\":-1,\"engineHealth\":1000.0,\"windows\":[false,true,true,true,false,true],\"modSteeringWheel\":-1,\"modTransmission\":-1,\"modTrimB\":-1,\"customPrimaryColor\":[240,240,240],\"modSeats\":-1,\"modHood\":-1,\"modHydrolic\":-1,\"modAPlate\":-1,\"modArmor\":-1,\"modPlateHolder\":-1,\"windowTint\":-1,\"modFrame\":-1,\"modBrakes\":-1,\"dshcolor\":0,\"modEngineBlock\":-1,\"intcolor\":0,\"modExhaust\":-1,\"pearlescentColor\":0,\"tyreBurst\":{\"5\":false,\"4\":false,\"1\":false,\"0\":false},\"modDashboard\":-1,\"modTyresBurst\":1,\"plate\":\"03POZ835\",\"modFrontWheels\":-1,\"modSpoilers\":-1,\"neonColor\":[255,0,255],\"modFrontBumper\":-1,\"color1\":0,\"color2\":0,\"ColorType\":[-1,-1],\"xenonColor\":255,\"modWheelVariat\":false,\"plateIndex\":4,\"color4\":[240,240,240],\"modSuspension\":-1,\"modTrunk\":-1,\"modEngine\":-1,\"bodyHealth\":1000.0,\"modDial\":-1,\"customSecondaryColor\":[240,240,240],\"modWindows\":-1,\"modStruts\":-1,\"modGrille\":-1,\"modFender\":-1,\"doors\":[false,false,false,false,false,false],\"modArchCover\":-1,\"modTurbo\":false,\"modRoof\":-1,\"doorsBroken\":{\"0\":false,\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":false},\"modDoorR\":-1,\"modOrnaments\":-1,\"modRearBumper\":-1,\"modDoorSpeaker\":-1,\"modSpeakers\":-1,\"tankHealth\":1000.0,\"fuelLevel\":64.2,\"color3\":[240,240,240],\"modHorns\":-1,\"modXenon\":false,\"wheels\":1,\"tyres\":[false,false,false,false,false,false,false],\"wheelColor\":156,\"modAerials\":-1}', '{\"maxhealth\":1000.0,\"mileage\":0.0,\"plate\":\"03POZ835\"}', '', '[]', NULL, 0, 0),
('sanandreas', '04YES545', 1, 0, 0, '8037', NULL, 'car', '', '{\"modDoorR\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modFrame\":-1,\"modDial\":-1,\"modTyresBurst\":false,\"modAerials\":-1,\"customSecondaryColor\":[0,0,0],\"modArmor\":-1,\"modTurbo\":1,\"drift\":false,\"color1\":0,\"modShifterLeavers\":-1,\"customPrimaryColor\":[0,0,0],\"modRightFender\":-1,\"dshcolor\":0,\"modFrontWheels\":-1,\"intcolor\":0,\"modSmokeEnabled\":1,\"wheels\":3,\"doorsBroken\":{\"6\":false,\"5\":false,\"4\":false,\"3\":false,\"2\":false,\"1\":false,\"0\":false},\"windowsBroken\":{\"7\":false,\"6\":false,\"5\":true,\"4\":true,\"3\":false,\"2\":false,\"1\":false,\"0\":false},\"modXenon\":1,\"modVanityPlate\":-1,\"windows\":[false,false,false,false,false,true],\"extras\":{\"12\":1},\"modExhaust\":-1,\"fuelLevel\":64.0,\"modTrunk\":-1,\"modSpeakers\":-1,\"modSuspension\":-1,\"modRoof\":-1,\"modBrakes\":-1,\"pearlescentColor\":0,\"modSteeringWheel\":-1,\"modTrimB\":-1,\"modSeats\":-1,\"modTrimA\":-1,\"modStruts\":-1,\"ColorType\":[0,0],\"modPlateHolder\":-1,\"modFender\":-1,\"xenonColor\":255,\"windowTint\":-1,\"doors\":[false,false,false,false,false,false],\"modWheelVariat\":false,\"wheelColor\":156,\"neonEnabled\":[false,false,false,false],\"modEngineBlock\":-1,\"modAirFilter\":-1,\"modEngine\":-1,\"modHorns\":-1,\"paintType\":[0,0],\"tyres\":[false,false,false,false,false,false,false],\"modLivery\":-1,\"dirtLevel\":0.1,\"modHood\":-1,\"color3\":[0,0,0],\"modOrnaments\":-1,\"model\":68236862,\"plateIndex\":1,\"modTransmission\":-1,\"engineHealth\":1000.0,\"tyreSmokeColor\":[0,0,1],\"modLightbar\":-1,\"modFrontBumper\":-1,\"modTank\":-1,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modWindows\":-1,\"plate\":\"04YES545\",\"modBackWheels\":-1,\"color2\":0,\"modDashboard\":-1,\"bodyHealth\":1000.0,\"modRearBumper\":-1,\"modHydrolic\":-1,\"modDoorSpeaker\":-1,\"modSpoilers\":-1,\"tankHealth\":1000.0,\"modArchCover\":-1,\"color4\":[0,0,0],\"tyreBurst\":{\"0\":false,\"1\":false,\"5\":false,\"4\":false}}', '{\"maxhealth\":1000.0,\"plate\":\"04YES545\",\"mileage\":0.0}', '', NULL, NULL, 0, 0),
('police', '05ZFP602', 1, 0, 0, '8037', NULL, 'car', '', '{\"model\":-815291495,\"modTrimA\":-1,\"modAirFilter\":-1,\"drift\":false,\"modShifterLeavers\":-1,\"modLivery\":-1,\"modBackWheels\":-1,\"neonEnabled\":[false,false,false,false],\"dirtLevel\":13.1,\"tyreSmokeColor\":[255,255,255],\"paintType\":[0,0],\"extras\":{\"7\":1,\"10\":false},\"modSideSkirt\":-1,\"modSmokeEnabled\":false,\"modRightFender\":-1,\"modLightbar\":-1,\"windowsBroken\":{\"7\":false,\"0\":false,\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":false},\"modVanityPlate\":-1,\"modTank\":-1,\"engineHealth\":887.5,\"windows\":[false,false,false,false,false,true],\"modSteeringWheel\":-1,\"modTransmission\":-1,\"modTrimB\":-1,\"customPrimaryColor\":[240,240,240],\"modSeats\":-1,\"modHood\":-1,\"modHydrolic\":-1,\"modAPlate\":-1,\"modArmor\":-1,\"modPlateHolder\":-1,\"windowTint\":-1,\"modFrame\":-1,\"modBrakes\":-1,\"dshcolor\":0,\"modEngineBlock\":-1,\"intcolor\":0,\"modExhaust\":-1,\"pearlescentColor\":1,\"tyreBurst\":{\"5\":false,\"4\":false,\"1\":false,\"0\":false},\"modDashboard\":-1,\"modTyresBurst\":1,\"plate\":\"05ZFP602\",\"modFrontWheels\":-1,\"modSpoilers\":-1,\"neonColor\":[255,0,255],\"modFrontBumper\":-1,\"color1\":0,\"color2\":0,\"ColorType\":[0,0],\"xenonColor\":255,\"modWheelVariat\":false,\"plateIndex\":4,\"color4\":[8,8,8],\"modSuspension\":-1,\"modTrunk\":-1,\"modEngine\":-1,\"bodyHealth\":975.2,\"modDial\":-1,\"customSecondaryColor\":[8,8,8],\"modWindows\":-1,\"modStruts\":-1,\"modGrille\":-1,\"modFender\":-1,\"doors\":[false,false,false,false,false,false],\"modArchCover\":-1,\"modTurbo\":false,\"modRoof\":-1,\"doorsBroken\":{\"0\":false,\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":false},\"modDoorR\":-1,\"modOrnaments\":-1,\"modRearBumper\":-1,\"modDoorSpeaker\":-1,\"modSpeakers\":-1,\"tankHealth\":1000.0,\"fuelLevel\":22.5,\"color3\":[240,240,240],\"modHorns\":-1,\"modXenon\":false,\"wheels\":0,\"tyres\":[false,false,false,false,false,false,false],\"wheelColor\":156,\"modAerials\":-1}', '{\"maxhealth\":1000.0,\"mileage\":327.55,\"plate\":\"05ZFP602\"}', '', NULL, NULL, 0, 0),
('lostmc', '06QEF497', 1, 0, 0, '8037', NULL, 'car', '', '{\"drift\":false,\"doorsBroken\":{\"0\":false,\"1\":false},\"modFrame\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modAirFilter\":-1,\"modFender\":-1,\"modExhaust\":-1,\"bodyHealth\":1000.0,\"tyreSmokeColor\":[255,255,255],\"extras\":[],\"modDoorSpeaker\":-1,\"modDashboard\":-1,\"modArmor\":-1,\"modAerials\":-1,\"modSeats\":-1,\"modTrimA\":-1,\"neonColor\":[255,255,255],\"modPlateHolder\":-1,\"modTyresBurst\":1,\"windowTint\":-1,\"plateIndex\":4,\"modEngine\":-1,\"fuelLevel\":35.0,\"model\":1131912276,\"modBrakes\":-1,\"modSuspension\":-1,\"intcolor\":0,\"modLivery\":-1,\"modHydrolic\":-1,\"modSteeringWheel\":-1,\"color1\":0,\"modWheelVariat\":false,\"modBackWheels\":-1,\"neonEnabled\":[false,false,false,false],\"windows\":[true,true,true,true,true,true],\"modSpoilers\":-1,\"plate\":\"06QEF497\",\"modSpeakers\":-1,\"modFrontBumper\":-1,\"customSecondaryColor\":[35,35,45],\"dshcolor\":0,\"modStruts\":-1,\"engineHealth\":1000.0,\"modEngineBlock\":-1,\"modDial\":-1,\"dirtLevel\":0.6,\"modTrimB\":-1,\"windowsBroken\":{\"4\":true,\"5\":true,\"2\":true,\"3\":true,\"0\":true,\"1\":true,\"6\":true,\"7\":true},\"modSmokeEnabled\":false,\"customPrimaryColor\":[35,35,45],\"modRoof\":-1,\"ColorType\":[0,0],\"modFrontWheels\":-1,\"modTrunk\":-1,\"modAPlate\":-1,\"modArchCover\":-1,\"modSideSkirt\":-1,\"modGrille\":-1,\"modShifterLeavers\":-1,\"modWindows\":-1,\"color2\":0,\"modTank\":-1,\"modRightFender\":-1,\"modVanityPlate\":-1,\"modDoorR\":-1,\"modHood\":-1,\"doors\":[false,false,false,false,false,false],\"tankHealth\":1000.0,\"color4\":[35,35,45],\"modHorns\":-1,\"modTurbo\":false,\"color3\":[35,35,45],\"paintType\":[0,0],\"modTransmission\":-1,\"wheels\":6,\"modLightbar\":-1,\"tyreBurst\":{\"4\":false,\"0\":false},\"modRearBumper\":-1,\"modXenon\":false,\"wheelColor\":156,\"xenonColor\":255,\"modOrnaments\":-1,\"pearlescentColor\":74}', '{\"plate\":\"06QEF497\",\"maxhealth\":1000.0,\"mileage\":33.01}', '', NULL, NULL, 0, 0),
('fire', '08ASU985', 1, 0, 0, '8037', NULL, 'car', '', '{\"modTurbo\":false,\"modAPlate\":-1,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"modRightFender\":-1,\"modLivery\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modTrimA\":-1,\"modVanityPlate\":-1,\"windowsBroken\":{\"1\":false,\"2\":false,\"7\":false,\"0\":false,\"5\":true,\"6\":false,\"3\":false,\"4\":true},\"neonColor\":[255,0,255],\"modAerials\":-1,\"modEngine\":-1,\"doors\":[false,false,false,false,false,false],\"modXenon\":false,\"modArmor\":-1,\"modGrille\":-1,\"modHorns\":-1,\"modHydrolic\":-1,\"modTank\":-1,\"wheels\":3,\"modBackWheels\":-1,\"modAirFilter\":-1,\"extras\":[],\"modHood\":-1,\"modDoorSpeaker\":-1,\"modTransmission\":-1,\"windows\":[false,false,false,false,false,true],\"dshcolor\":0,\"customPrimaryColor\":[138,11,0],\"modSideSkirt\":-1,\"modStruts\":-1,\"modSteeringWheel\":-1,\"modDoorR\":-1,\"paintType\":[0,0],\"intcolor\":0,\"neonEnabled\":[false,false,false,false],\"modRearBumper\":-1,\"color3\":[138,11,0],\"color1\":0,\"modDial\":-1,\"windowTint\":-1,\"tankHealth\":1000.0,\"modSpeakers\":-1,\"pearlescentColor\":0,\"bodyHealth\":1000.0,\"modTyresBurst\":1,\"customSecondaryColor\":[255,255,255],\"modFender\":-1,\"modWheelVariat\":false,\"modSpoilers\":-1,\"color2\":0,\"plate\":\"08ASU985\",\"modSuspension\":-1,\"wheelColor\":0,\"modEngineBlock\":-1,\"color4\":[255,255,255],\"modTrunk\":-1,\"modPlateHolder\":-1,\"modFrontBumper\":-1,\"modWindows\":-1,\"modShifterLeavers\":-1,\"modTrimB\":-1,\"modSmokeEnabled\":false,\"engineHealth\":1000.0,\"modSeats\":-1,\"tyreBurst\":{\"5\":false,\"0\":false,\"1\":false,\"4\":false},\"modDashboard\":-1,\"xenonColor\":255,\"ColorType\":[0,0],\"model\":-1800628960,\"modArchCover\":-1,\"modBrakes\":-1,\"plateIndex\":4,\"doorsBroken\":{\"1\":false,\"2\":false,\"7\":false,\"0\":false,\"5\":false,\"6\":false,\"3\":false,\"4\":false},\"fuelLevel\":67.4,\"modRoof\":-1,\"dirtLevel\":2.4,\"modLightbar\":-1,\"drift\":false,\"modFrontWheels\":-1,\"modOrnaments\":-1,\"modExhaust\":-1}', '{\"plate\":\"08ASU985\",\"mileage\":210.54,\"maxhealth\":1000.0}', '', '[]', NULL, 0, 0),
('char1:f3e71e94ead0e0b54c28491a2b012f196ab8d472', '08HUR147', 1, 0, 0, '7293', NULL, 'car', '', '{\"modStruts\":-1,\"modDial\":-1,\"modEngineBlock\":-1,\"modPlateHolder\":-1,\"modWheelVariat\":false,\"modHydrolic\":-1,\"modBrakes\":-1,\"modShifterLeavers\":-1,\"color4\":[0,0,0],\"pearlescentColor\":111,\"modTransmission\":-1,\"tankHealth\":996.7,\"modDoorR\":-1,\"plateIndex\":0,\"fuelLevel\":27.6,\"intcolor\":0,\"windowsBroken\":{\"0\":true,\"1\":true,\"2\":true,\"3\":true,\"4\":true,\"5\":true,\"6\":true,\"7\":true},\"modHood\":-1,\"model\":301427732,\"modSpeakers\":-1,\"modTrunk\":-1,\"modFrontBumper\":-1,\"modRoof\":-1,\"windowTint\":-1,\"color3\":[0,0,0],\"modBackWheels\":-1,\"modEngine\":-1,\"plate\":\"08HUR147\",\"neonEnabled\":[false,false,false,false],\"customSecondaryColor\":[0,0,0],\"modGrille\":-1,\"modVanityPlate\":-1,\"customPrimaryColor\":[0,0,0],\"doors\":[false,false,false,false,false,false],\"modAerials\":-1,\"wheels\":6,\"color2\":0,\"modWindows\":-1,\"modOrnaments\":-1,\"modSideSkirt\":-1,\"modSuspension\":-1,\"neonColor\":[255,0,255],\"modSpoilers\":-1,\"tyreBurst\":{\"0\":false,\"4\":false},\"modSteeringWheel\":-1,\"doorsBroken\":{\"0\":false,\"1\":false},\"modTrimA\":-1,\"xenonColor\":255,\"modArchCover\":-1,\"modFrontWheels\":-1,\"modXenon\":false,\"extras\":[],\"modRearBumper\":-1,\"tyreSmokeColor\":[255,255,255],\"bodyHealth\":992.5,\"modTyresBurst\":1,\"modRightFender\":-1,\"windows\":[true,true,true,true,true,true],\"color1\":0,\"modDoorSpeaker\":-1,\"wheelColor\":156,\"modTrimB\":-1,\"modDashboard\":-1,\"drift\":false,\"ColorType\":[0,0],\"modTank\":-1,\"modArmor\":-1,\"modAPlate\":-1,\"modAirFilter\":-1,\"modHorns\":-1,\"engineHealth\":981.0,\"modLightbar\":-1,\"modTurbo\":false,\"modLivery\":-1,\"modExhaust\":-1,\"paintType\":[0,0],\"modFrame\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modSmokeEnabled\":false,\"dshcolor\":0,\"modFender\":-1,\"dirtLevel\":15.0,\"modSeats\":-1}', '{\"maxhealth\":1000.0,\"mileage\":0.0,\"plate\":\"08HUR147\"}', '', NULL, '[]', 0, 0),
('fire', '09LXU994', 1, 0, 0, '8037', NULL, 'car', '', '{\"modTurbo\":false,\"modAPlate\":-1,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"modRightFender\":-1,\"modLivery\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modTrimA\":-1,\"modVanityPlate\":-1,\"windowsBroken\":{\"1\":false,\"2\":false,\"7\":false,\"0\":false,\"5\":true,\"6\":false,\"3\":false,\"4\":true},\"neonColor\":[255,0,255],\"modAerials\":-1,\"modEngine\":-1,\"doors\":[false,false,false,false,false,false],\"modXenon\":false,\"modArmor\":-1,\"modGrille\":-1,\"modHorns\":-1,\"modHydrolic\":-1,\"modTank\":-1,\"wheels\":3,\"modBackWheels\":-1,\"modAirFilter\":-1,\"extras\":{\"11\":false,\"12\":1,\"1\":1,\"10\":false},\"modHood\":-1,\"modDoorSpeaker\":-1,\"modTransmission\":-1,\"windows\":[false,false,false,false,false,true],\"dshcolor\":0,\"customPrimaryColor\":[240,240,240],\"modSideSkirt\":-1,\"modStruts\":-1,\"modSteeringWheel\":-1,\"modDoorR\":-1,\"paintType\":[0,0],\"intcolor\":0,\"neonEnabled\":[false,false,false,false],\"modRearBumper\":-1,\"color3\":[240,240,240],\"color1\":0,\"modDial\":-1,\"windowTint\":-1,\"tankHealth\":1000.0,\"modSpeakers\":-1,\"pearlescentColor\":0,\"bodyHealth\":966.0,\"modTyresBurst\":1,\"customSecondaryColor\":[240,240,240],\"modFender\":-1,\"modWheelVariat\":false,\"modSpoilers\":-1,\"color2\":0,\"plate\":\"09LXU994\",\"modSuspension\":-1,\"wheelColor\":156,\"modEngineBlock\":-1,\"color4\":[240,240,240],\"modTrunk\":-1,\"modPlateHolder\":-1,\"modFrontBumper\":-1,\"modWindows\":-1,\"modShifterLeavers\":-1,\"modTrimB\":-1,\"modSmokeEnabled\":false,\"engineHealth\":862.0,\"modSeats\":-1,\"tyreBurst\":{\"5\":false,\"0\":false,\"1\":false,\"4\":false},\"modDashboard\":-1,\"xenonColor\":255,\"ColorType\":[0,0],\"model\":1816776839,\"modArchCover\":-1,\"modBrakes\":-1,\"plateIndex\":4,\"doorsBroken\":{\"1\":false,\"2\":false,\"0\":false,\"5\":false,\"3\":false,\"4\":false},\"fuelLevel\":94.6,\"modRoof\":-1,\"dirtLevel\":7.0,\"modLightbar\":-1,\"drift\":false,\"modFrontWheels\":-1,\"modOrnaments\":-1,\"modExhaust\":-1}', '{\"plate\":\"09LXU994\",\"mileage\":198.09,\"maxhealth\":1000.0}', '', '[{\"count\":3,\"name\":\"medikit\",\"slot\":1},{\"count\":3,\"name\":\"bandage\",\"slot\":2},{\"count\":2,\"name\":\"sandwich\",\"slot\":6},{\"count\":2,\"name\":\"icetea\",\"slot\":11}]', NULL, 0, 0),
('char1:739f45face4a989b414f43753a220053ece07406', '13OET791', 1, 0, 0, '8037', NULL, 'car', '', '{\"bodyHealth\":1000.0,\"modAPlate\":-1,\"modAirFilter\":-1,\"color2\":111,\"pearlescentColor\":3,\"xenonColor\":255,\"neonColor\":[255,0,255],\"ColorType\":[0,0],\"color4\":[0,0,0],\"wheelColor\":156,\"modDoorSpeaker\":-1,\"modBackWheels\":-1,\"modFrontBumper\":-1,\"modDoorR\":-1,\"engineHealth\":1000.0,\"modTyresBurst\":1,\"modShifterLeavers\":-1,\"windowsBroken\":{\"2\":true,\"3\":true,\"0\":true,\"1\":true,\"6\":true,\"7\":true,\"4\":true,\"5\":true},\"tankHealth\":1000.0,\"modVanityPlate\":-1,\"customSecondaryColor\":[0,0,0],\"modSeats\":-1,\"model\":-186537451,\"modSuspension\":-1,\"wheels\":6,\"dirtLevel\":12.0,\"modDashboard\":-1,\"modArchCover\":-1,\"dshcolor\":0,\"modXenon\":false,\"modTank\":-1,\"modRoof\":-1,\"modEngine\":-1,\"modRearBumper\":-1,\"tyreBurst\":{\"4\":false,\"0\":false},\"modSmokeEnabled\":false,\"modArmor\":-1,\"modFrame\":-1,\"modDial\":-1,\"color3\":[0,0,0],\"neonEnabled\":[false,false,false,false],\"modHorns\":-1,\"modTrimA\":-1,\"modFrontWheels\":-1,\"modBrakes\":-1,\"modWheelVariat\":false,\"intcolor\":0,\"modWindows\":-1,\"customPrimaryColor\":[0,0,0],\"windowTint\":-1,\"modStruts\":-1,\"modRightFender\":-1,\"plateIndex\":0,\"modTrimB\":-1,\"modHood\":-1,\"paintType\":[0,0],\"modHydrolic\":-1,\"modFender\":-1,\"modTurbo\":false,\"fuelLevel\":0.0,\"modPlateHolder\":-1,\"tyreSmokeColor\":[255,255,255],\"extras\":{\"2\":false,\"1\":false},\"modSteeringWheel\":-1,\"modLivery\":-1,\"modTransmission\":-1,\"modAerials\":-1,\"plate\":\"13OET791\",\"doorsBroken\":{\"0\":false,\"1\":false},\"modGrille\":-1,\"modSideSkirt\":-1,\"modEngineBlock\":-1,\"modSpoilers\":-1,\"modTrunk\":-1,\"modOrnaments\":-1,\"modLightbar\":-1,\"modSpeakers\":-1,\"drift\":false,\"modExhaust\":-1,\"color1\":3}', '{\"plate\":\"nil\",\"mileage\":0.0,\"maxhealth\":1000.0}', '', NULL, NULL, 0, 0),
('char1:825bafdeb0879ee3488dcc11ee78b11b484d73a6', '14GCJ443', 1, 0, 0, '8037', NULL, 'car', '', '{\"color3\":[0,0,0],\"doorsBroken\":{\"4\":false,\"2\":false,\"3\":false,\"0\":false,\"1\":false},\"modSmokeEnabled\":false,\"tyres\":[false,false,false,false,false,false,false],\"modAirFilter\":-1,\"modFender\":-1,\"xenonColor\":255,\"bodyHealth\":971.8,\"tyreSmokeColor\":[255,255,255],\"extras\":{\"1\":false,\"2\":false,\"3\":1},\"modDoorSpeaker\":-1,\"modDashboard\":-1,\"modArmor\":-1,\"modAerials\":-1,\"modSeats\":-1,\"modTrimA\":-1,\"neonColor\":[255,0,255],\"modPlateHolder\":-1,\"modTyresBurst\":1,\"modSideSkirt\":-1,\"color4\":[0,0,0],\"modEngine\":-1,\"fuelLevel\":78.6,\"model\":-1361687965,\"modBrakes\":-1,\"modSuspension\":-1,\"intcolor\":3,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modSteeringWheel\":-1,\"color1\":142,\"modWheelVariat\":false,\"modBackWheels\":-1,\"neonEnabled\":[false,false,false,false],\"windows\":[true,false,true,true,true,true],\"modSpoilers\":-1,\"plate\":\"14GCJ443\",\"modRearBumper\":-1,\"modWindows\":-1,\"customSecondaryColor\":[0,0,0],\"dshcolor\":111,\"modStruts\":-1,\"engineHealth\":832.5,\"modEngineBlock\":-1,\"customPrimaryColor\":[0,0,0],\"modFrame\":-1,\"modHood\":-1,\"windowsBroken\":{\"4\":false,\"5\":false,\"2\":true,\"3\":true,\"0\":true,\"1\":false,\"6\":false,\"7\":true},\"modTank\":-1,\"ColorType\":[-1,-1],\"modRoof\":-1,\"modGrille\":-1,\"wheels\":1,\"modTrunk\":-1,\"modAPlate\":-1,\"windowTint\":-1,\"modXenon\":false,\"modFrontBumper\":-1,\"modShifterLeavers\":-1,\"plateIndex\":0,\"color2\":25,\"modTrimB\":-1,\"modSpeakers\":-1,\"modVanityPlate\":-1,\"modDoorR\":-1,\"modRightFender\":-1,\"doors\":[false,false,false,false,false,false],\"tankHealth\":1000.0,\"modArchCover\":-1,\"modHorns\":-1,\"modLivery\":-1,\"modTurbo\":false,\"paintType\":[7,7],\"modTransmission\":-1,\"modLightbar\":-1,\"modDial\":-1,\"tyreBurst\":{\"0\":false,\"1\":false,\"5\":false,\"4\":false},\"dirtLevel\":13.6,\"drift\":false,\"wheelColor\":88,\"modExhaust\":-1,\"modOrnaments\":-1,\"pearlescentColor\":120}', '{\"plate\":\"14GCJ443\",\"maxhealth\":1000.0,\"mileage\":428.2}', '', '[{\"slot\":1,\"count\":1,\"name\":\"capo\"},{\"slot\":2,\"count\":4,\"name\":\"llanta\"},{\"slot\":3,\"count\":4,\"name\":\"puerta\"}]', '[{\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: 14GCJ443\\n\\nSuma: 286$\\n\\nPodpis: Jay Williams\\n\\nDatum vydání: 2023-01-03 o 15:50:55\"},\"slot\":1,\"count\":1,\"name\":\"blocek\"},{\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: 14GCJ443\\n\\nSuma: 202$\\n\\nPodpis: Jay Williams\\n\\nDatum vydání: 2022-12-28 o 13:30:45\"},\"slot\":2,\"count\":1,\"name\":\"blocek\"}]', 0, 0),
('sanandreas', '15ASC555', 1, 0, 0, '8037', NULL, 'car', '', '{\"modDoorR\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modFrame\":-1,\"modDial\":-1,\"modTyresBurst\":1,\"modAerials\":-1,\"customSecondaryColor\":[0,0,0],\"modArmor\":-1,\"modTurbo\":1,\"drift\":false,\"color1\":0,\"modShifterLeavers\":-1,\"customPrimaryColor\":[0,0,0],\"modRightFender\":-1,\"dshcolor\":0,\"modFrontWheels\":-1,\"intcolor\":0,\"modSmokeEnabled\":1,\"wheels\":1,\"doorsBroken\":{\"5\":false,\"4\":false,\"3\":false,\"2\":false,\"1\":false,\"0\":false},\"windowsBroken\":{\"7\":true,\"6\":false,\"5\":true,\"4\":true,\"3\":false,\"2\":false,\"1\":false,\"0\":false},\"modXenon\":1,\"modVanityPlate\":-1,\"windows\":[false,false,false,false,false,true],\"extras\":[],\"modExhaust\":-1,\"fuelLevel\":63.4,\"modTrunk\":-1,\"modSpeakers\":-1,\"modSuspension\":-1,\"modRoof\":-1,\"modBrakes\":-1,\"pearlescentColor\":0,\"modSteeringWheel\":-1,\"modTrimB\":-1,\"modSeats\":-1,\"modTrimA\":-1,\"modStruts\":-1,\"ColorType\":[0,0],\"modPlateHolder\":-1,\"modFender\":-1,\"xenonColor\":255,\"windowTint\":-1,\"doors\":[false,false,false,false,false,false],\"modWheelVariat\":false,\"wheelColor\":0,\"neonEnabled\":[false,false,false,false],\"modEngineBlock\":-1,\"modAirFilter\":-1,\"modEngine\":-1,\"modHorns\":-1,\"paintType\":[0,0],\"tyres\":[false,false,false,false,false,false,false],\"modLivery\":-1,\"dirtLevel\":0.1,\"modHood\":-1,\"color3\":[0,0,0],\"modOrnaments\":-1,\"model\":1910096300,\"plateIndex\":1,\"modTransmission\":-1,\"engineHealth\":1000.0,\"tyreSmokeColor\":[0,0,1],\"modLightbar\":-1,\"modFrontBumper\":-1,\"modTank\":-1,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modWindows\":-1,\"plate\":\"15ASC555\",\"modBackWheels\":-1,\"color2\":0,\"modDashboard\":-1,\"bodyHealth\":1000.0,\"modRearBumper\":-1,\"modHydrolic\":-1,\"modDoorSpeaker\":-1,\"modSpoilers\":-1,\"tankHealth\":1000.0,\"modArchCover\":-1,\"color4\":[0,0,0],\"tyreBurst\":{\"0\":false,\"1\":false,\"5\":false,\"4\":false}}', '{\"maxhealth\":1000.0,\"plate\":\"15ASC555\",\"mileage\":0.0}', '', NULL, NULL, 0, 0),
('char1:30dc648396c5827e37d17745ba9cb7f852018b93', '20CGA013', 1, 0, 0, '8037', NULL, 'car', '', '{\"modFrontWheels\":-1,\"modSeats\":-1,\"modSideSkirt\":-1,\"neonColor\":[255,0,255],\"wheels\":6,\"paintType\":[0,0],\"tyreSmokeColor\":[255,255,255],\"modFender\":-1,\"modSpeakers\":-1,\"modStruts\":-1,\"modBackWheels\":-1,\"tankHealth\":1000.0,\"modDoorSpeaker\":-1,\"modWindows\":-1,\"drift\":false,\"modTrimB\":-1,\"modHydrolic\":-1,\"modBrakes\":-1,\"modTyresBurst\":1,\"customPrimaryColor\":[0,0,0],\"modSteeringWheel\":-1,\"modTurbo\":false,\"modRearBumper\":-1,\"dshcolor\":0,\"modTank\":-1,\"modAirFilter\":-1,\"modExhaust\":-1,\"color1\":57,\"fuelLevel\":0.0,\"ColorType\":[0,0],\"intcolor\":0,\"modEngine\":-1,\"color4\":[0,0,0],\"neonEnabled\":[false,false,false,false],\"modLivery\":-1,\"modShifterLeavers\":-1,\"modTransmission\":-1,\"color3\":[0,0,0],\"modArchCover\":-1,\"modFrontBumper\":-1,\"color2\":0,\"xenonColor\":255,\"model\":1131912276,\"customSecondaryColor\":[0,0,0],\"plate\":\"20CGA013\",\"modGrille\":-1,\"modWheelVariat\":false,\"windowTint\":-1,\"modRightFender\":-1,\"modAPlate\":-1,\"engineHealth\":1000.0,\"modDoorR\":-1,\"windowsBroken\":{\"2\":true,\"1\":true,\"4\":true,\"3\":true,\"6\":true,\"5\":true,\"0\":true,\"7\":true},\"modXenon\":false,\"tyreBurst\":{\"4\":false,\"0\":false},\"modSpoilers\":-1,\"extras\":[],\"bodyHealth\":1000.0,\"modRoof\":-1,\"dirtLevel\":4.0,\"modDashboard\":-1,\"pearlescentColor\":57,\"modHood\":-1,\"modTrunk\":-1,\"modSmokeEnabled\":false,\"modSuspension\":-1,\"modAerials\":-1,\"modVanityPlate\":-1,\"modOrnaments\":-1,\"modHorns\":-1,\"modPlateHolder\":-1,\"modArmor\":-1,\"modDial\":-1,\"plateIndex\":4,\"wheelColor\":156,\"modLightbar\":-1,\"modEngineBlock\":-1,\"doorsBroken\":{\"0\":false,\"1\":false},\"modTrimA\":-1,\"modFrame\":-1}', '{\"plate\":\"nil\",\"mileage\":0.0,\"maxhealth\":1000.0}', '', NULL, NULL, 0, 0),
('police', '21CMK145', 1, 0, 0, '8037', NULL, 'car', '', '{\"fuelLevel\":98.2,\"modVanityPlate\":-1,\"modExhaust\":-1,\"doors\":[false,false,false,false,false,false],\"modWindows\":-1,\"plate\":\"21CMK145\",\"customSecondaryColor\":[8,8,8],\"neonEnabled\":[false,false,false,false],\"wheels\":3,\"wheelColor\":0,\"engineHealth\":950.6,\"neonColor\":[255,0,255],\"modFender\":-1,\"modOrnaments\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modSeats\":-1,\"modHorns\":-1,\"modBrakes\":-1,\"modDoorR\":-1,\"modRoof\":-1,\"modDial\":-1,\"modArmor\":-1,\"modStruts\":-1,\"modLivery\":-1,\"modRearBumper\":-1,\"color4\":[8,8,8],\"bodyHealth\":992.2,\"tankHealth\":997.7,\"windowsBroken\":{\"1\":true,\"0\":true,\"3\":false,\"2\":false,\"5\":true,\"4\":true,\"7\":false,\"6\":false},\"doorsBroken\":{\"1\":false,\"0\":false,\"3\":false,\"2\":false,\"5\":false,\"4\":false,\"7\":false,\"6\":false},\"modTrunk\":-1,\"dshcolor\":0,\"modArchCover\":-1,\"paintType\":[0,0],\"modPlateHolder\":-1,\"modAerials\":-1,\"customPrimaryColor\":[179,185,201],\"tyreSmokeColor\":[255,255,255],\"modAirFilter\":-1,\"modTrimA\":-1,\"modFrame\":-1,\"modTrimB\":-1,\"modTransmission\":-1,\"modXenon\":false,\"modGrille\":-1,\"modSteeringWheel\":-1,\"tyreBurst\":{\"1\":false,\"0\":false,\"4\":false,\"5\":false},\"ColorType\":[0,0],\"modSuspension\":-1,\"modTurbo\":false,\"plateIndex\":4,\"color1\":0,\"xenonColor\":255,\"color2\":0,\"windows\":[true,true,false,false,true,true],\"modTyresBurst\":1,\"modWheelVariat\":false,\"modFrontBumper\":-1,\"modEngine\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":0.5,\"modAPlate\":-1,\"modTank\":-1,\"extras\":{\"1\":1,\"3\":false,\"2\":false,\"4\":false,\"10\":1},\"color3\":[179,185,201],\"intcolor\":0,\"modEngineBlock\":-1,\"modSpoilers\":-1,\"modHydrolic\":-1,\"modRightFender\":-1,\"windowTint\":-1,\"modSpeakers\":-1,\"modSideSkirt\":-1,\"modSmokeEnabled\":false,\"pearlescentColor\":0,\"modLightbar\":-1,\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modDoorSpeaker\":-1,\"modHood\":-1,\"drift\":false,\"model\":-1373176589,\"modDashboard\":-1}', '{\"plate\":\"21CMK145\",\"mileage\":469.56,\"maxhealth\":1000.0}', '', NULL, NULL, 0, 0),
('char1:08b92adb13c370a0ee3f6d9c6da9b21eeab5f160', '21FLQ921', 1, 0, 0, '7293', NULL, 'car', '', '{\"modSpeakers\":-1,\"modArmor\":-1,\"color2\":0,\"neonEnabled\":[false,false,false,false],\"intcolor\":0,\"modTrimB\":-1,\"modEngineBlock\":-1,\"windows\":[true,true,true,true,true,true],\"paintType\":[0,0],\"modRoof\":-1,\"modLivery\":-1,\"modSideSkirt\":-1,\"modSuspension\":-1,\"xenonColor\":255,\"modDashboard\":-1,\"extras\":[],\"engineHealth\":1000.0,\"modSteeringWheel\":-1,\"modEngine\":-1,\"modFrontWheels\":-1,\"color3\":[0,0,0],\"modBrakes\":-1,\"pearlescentColor\":57,\"modTrimA\":-1,\"customPrimaryColor\":[0,0,0],\"modStruts\":-1,\"plate\":\"21FLQ921\",\"color1\":57,\"modFrontBumper\":-1,\"tyres\":[false,false,false,false,false,false,false],\"tankHealth\":1000.0,\"modWheelVariat\":false,\"modBackWheels\":-1,\"wheelColor\":156,\"tyreSmokeColor\":[255,255,255],\"modTransmission\":-1,\"modWindows\":-1,\"fuelLevel\":52.8,\"modFrame\":-1,\"modTank\":-1,\"color4\":[0,0,0],\"modHydrolic\":-1,\"modAerials\":-1,\"modSmokeEnabled\":false,\"modDial\":-1,\"windowTint\":-1,\"modDoorSpeaker\":-1,\"modSpoilers\":-1,\"model\":1131912276,\"modExhaust\":-1,\"modVanityPlate\":-1,\"modRightFender\":-1,\"modGrille\":-1,\"neonColor\":[255,0,255],\"dshcolor\":0,\"windowsBroken\":{\"3\":true,\"4\":true,\"5\":true,\"6\":true,\"7\":true,\"0\":true,\"1\":true,\"2\":true},\"modTrunk\":-1,\"modFender\":-1,\"modDoorR\":-1,\"modTyresBurst\":1,\"modShifterLeavers\":-1,\"dirtLevel\":6.5,\"customSecondaryColor\":[0,0,0],\"modLightbar\":-1,\"modAirFilter\":-1,\"modPlateHolder\":-1,\"doorsBroken\":{\"1\":false,\"0\":false},\"modTurbo\":false,\"doors\":[false,false,false,false,false,false],\"modHood\":-1,\"modSeats\":-1,\"wheels\":6,\"modRearBumper\":-1,\"drift\":false,\"bodyHealth\":1000.0,\"ColorType\":[0,0],\"tyreBurst\":{\"0\":false,\"4\":false},\"modXenon\":false,\"modArchCover\":-1,\"modOrnaments\":-1,\"modAPlate\":-1,\"modHorns\":-1,\"plateIndex\":4}', '{\"mileage\":0.0,\"plate\":\"21FLQ921\",\"maxhealth\":1000.0}', '', NULL, NULL, 0, 0),
('police', '23LTV826', 1, 0, 0, '8037', NULL, 'car', '', '{\"model\":-2106715301,\"modTrimA\":-1,\"modAirFilter\":-1,\"drift\":false,\"modShifterLeavers\":-1,\"modLivery\":-1,\"modBackWheels\":-1,\"neonEnabled\":[false,false,false,false],\"dirtLevel\":2.1,\"tyreSmokeColor\":[255,255,255],\"paintType\":[0,0],\"extras\":{\"11\":1,\"5\":false,\"6\":1},\"modSideSkirt\":-1,\"modSmokeEnabled\":false,\"modRightFender\":-1,\"modLightbar\":-1,\"windowsBroken\":{\"7\":false,\"0\":true,\"1\":true,\"2\":false,\"3\":false,\"4\":true,\"5\":true,\"6\":false},\"modVanityPlate\":-1,\"modTank\":-1,\"engineHealth\":979.4,\"windows\":[true,true,false,false,true,true],\"modSteeringWheel\":-1,\"modTransmission\":-1,\"modTrimB\":-1,\"customPrimaryColor\":[179,185,201],\"modSeats\":-1,\"modHood\":-1,\"modHydrolic\":-1,\"modAPlate\":-1,\"modArmor\":-1,\"modPlateHolder\":-1,\"windowTint\":-1,\"modFrame\":-1,\"modBrakes\":-1,\"dshcolor\":0,\"modEngineBlock\":-1,\"intcolor\":0,\"modExhaust\":-1,\"pearlescentColor\":0,\"tyreBurst\":{\"5\":false,\"4\":false,\"1\":false,\"0\":false},\"modDashboard\":-1,\"modTyresBurst\":1,\"plate\":\"23LTV826\",\"modFrontWheels\":-1,\"modSpoilers\":-1,\"neonColor\":[255,0,255],\"modFrontBumper\":-1,\"color1\":0,\"color2\":0,\"ColorType\":[0,0],\"xenonColor\":255,\"modWheelVariat\":false,\"plateIndex\":4,\"color4\":[179,185,201],\"modSuspension\":-1,\"modTrunk\":-1,\"modEngine\":-1,\"bodyHealth\":995.3,\"modDial\":-1,\"customSecondaryColor\":[179,185,201],\"modWindows\":-1,\"modStruts\":-1,\"modGrille\":-1,\"modFender\":-1,\"doors\":[false,false,false,false,false,false],\"modArchCover\":-1,\"modTurbo\":false,\"modRoof\":-1,\"doorsBroken\":{\"7\":false,\"0\":false,\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":false},\"modDoorR\":-1,\"modOrnaments\":-1,\"modRearBumper\":-1,\"modDoorSpeaker\":-1,\"modSpeakers\":-1,\"tankHealth\":1000.0,\"fuelLevel\":95.3,\"color3\":[179,185,201],\"modHorns\":-1,\"modXenon\":false,\"wheels\":3,\"tyres\":[false,false,false,false,false,false,false],\"wheelColor\":156,\"modAerials\":-1}', '{\"maxhealth\":1000.0,\"mileage\":671.09,\"plate\":\"23LTV826\"}', '', NULL, NULL, 0, 0),
('police', '24BTU530', 1, 0, 0, '8037', NULL, 'car', '', '{\"fuelLevel\":64.7,\"modVanityPlate\":-1,\"modExhaust\":-1,\"doors\":[false,false,false,false,false,false],\"modWindows\":-1,\"plate\":\"24BTU530\",\"customSecondaryColor\":[8,8,8],\"neonEnabled\":[false,false,false,false],\"wheels\":3,\"wheelColor\":0,\"engineHealth\":1000.0,\"neonColor\":[255,0,255],\"modFender\":-1,\"modOrnaments\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modSeats\":-1,\"modHorns\":-1,\"modBrakes\":-1,\"modDoorR\":-1,\"modRoof\":-1,\"modDial\":-1,\"modArmor\":-1,\"modStruts\":-1,\"modLivery\":-1,\"modRearBumper\":-1,\"color4\":[8,8,8],\"bodyHealth\":1000.0,\"tankHealth\":1000.0,\"windowsBroken\":{\"1\":false,\"0\":false,\"3\":false,\"2\":false,\"5\":true,\"4\":true,\"7\":false,\"6\":false},\"doorsBroken\":{\"1\":false,\"0\":false,\"3\":false,\"2\":false,\"5\":false,\"4\":false,\"7\":false,\"6\":false},\"modTrunk\":-1,\"dshcolor\":0,\"modArchCover\":-1,\"paintType\":[7,7],\"modPlateHolder\":-1,\"modAerials\":-1,\"customPrimaryColor\":[179,185,201],\"tyreSmokeColor\":[255,255,255],\"modAirFilter\":-1,\"modTrimA\":-1,\"modFrame\":-1,\"modTrimB\":-1,\"modTransmission\":-1,\"modXenon\":false,\"modGrille\":-1,\"modSteeringWheel\":-1,\"tyreBurst\":{\"1\":false,\"0\":false,\"4\":false,\"5\":false},\"ColorType\":[-1,-1],\"modSuspension\":-1,\"modTurbo\":false,\"plateIndex\":4,\"color1\":0,\"xenonColor\":255,\"color2\":0,\"windows\":[false,false,false,false,false,true],\"modTyresBurst\":1,\"modWheelVariat\":false,\"modFrontBumper\":-1,\"modEngine\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":0.0,\"modAPlate\":-1,\"modTank\":-1,\"extras\":{\"1\":false,\"3\":false,\"2\":1,\"4\":false,\"10\":1},\"color3\":[179,185,201],\"intcolor\":0,\"modEngineBlock\":-1,\"modSpoilers\":-1,\"modHydrolic\":-1,\"modRightFender\":-1,\"windowTint\":-1,\"modSpeakers\":-1,\"modSideSkirt\":-1,\"modSmokeEnabled\":false,\"pearlescentColor\":0,\"modLightbar\":-1,\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modDoorSpeaker\":-1,\"modHood\":-1,\"drift\":false,\"model\":-1373176589,\"modDashboard\":-1}', '{\"plate\":\"24BTU530\",\"mileage\":134.75,\"maxhealth\":1000.0}', '', NULL, NULL, 0, 0),
('sanandreas', '26YWW367', 1, 0, 0, '8037', NULL, 'car', '', '{\"doorsBroken\":{\"3\":false,\"4\":false,\"5\":false,\"6\":false,\"0\":false,\"1\":false,\"2\":false},\"modArmor\":4,\"modFender\":-1,\"neonEnabled\":[false,false,false,false],\"ColorType\":[0,0],\"modTrimB\":-1,\"modEngineBlock\":-1,\"windows\":[false,false,false,false,false,true],\"paintType\":[1,1],\"modRoof\":-1,\"modLivery\":-1,\"modSideSkirt\":-1,\"modSuspension\":3,\"modSpoilers\":-1,\"modDashboard\":-1,\"extras\":{\"1\":false,\"12\":1,\"11\":1,\"10\":false,\"2\":1},\"engineHealth\":1000.0,\"modSteeringWheel\":-1,\"modEngine\":3,\"modXenon\":1,\"color3\":[0,0,0],\"modBrakes\":2,\"pearlescentColor\":0,\"modTrimA\":-1,\"customPrimaryColor\":[0,0,0],\"modRearBumper\":-1,\"plate\":\"26YWW367\",\"doors\":[false,false,false,false,false,false],\"modFrontBumper\":-1,\"tyres\":[false,false,false,false,false,false,false],\"tankHealth\":1000.0,\"modWheelVariat\":false,\"modBackWheels\":-1,\"wheelColor\":0,\"tyreSmokeColor\":[0,0,1],\"modTransmission\":2,\"modWindows\":-1,\"fuelLevel\":61.9,\"modFrame\":-1,\"modTank\":-1,\"color4\":[0,0,0],\"modHydrolic\":-1,\"modAerials\":-1,\"modGrille\":-1,\"color2\":0,\"windowTint\":1,\"xenonColor\":255,\"modShifterLeavers\":-1,\"modDoorR\":-1,\"modExhaust\":-1,\"modVanityPlate\":-1,\"color1\":0,\"modTrunk\":-1,\"plateIndex\":1,\"dshcolor\":0,\"windowsBroken\":{\"3\":false,\"4\":false,\"5\":false,\"6\":false,\"7\":false,\"0\":false,\"1\":false,\"2\":false},\"modAirFilter\":-1,\"modDoorSpeaker\":-1,\"intcolor\":0,\"modTyresBurst\":1,\"neonColor\":[255,0,255],\"dirtLevel\":0.3,\"customSecondaryColor\":[0,0,0],\"modLightbar\":-1,\"model\":-664237760,\"modPlateHolder\":-1,\"modDial\":-1,\"modTurbo\":1,\"modSmokeEnabled\":1,\"tyreBurst\":{\"4\":false,\"0\":false,\"5\":false,\"1\":false},\"modStruts\":-1,\"wheels\":3,\"modHood\":-1,\"drift\":false,\"bodyHealth\":1000.0,\"modSpeakers\":-1,\"modSeats\":-1,\"modFrontWheels\":-1,\"modArchCover\":-1,\"modOrnaments\":-1,\"modAPlate\":-1,\"modHorns\":-1,\"modRightFender\":-1}', '{\"mileage\":40.8,\"plate\":\"26YWW367\",\"maxhealth\":1000.0}', '', NULL, NULL, 0, 0),
('sanandreas', '28UAZ112', 1, 0, 0, '8037', NULL, 'car', '', '{\"modAerials\":-1,\"modEngine\":-1,\"modBrakes\":-1,\"modExhaust\":-1,\"color3\":[0,0,0],\"modSeats\":-1,\"model\":-2073904390,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"modHydrolic\":-1,\"modDoorR\":-1,\"modTrunk\":-1,\"modSideSkirt\":-1,\"modVanityPlate\":-1,\"modStruts\":-1,\"modFrontWheels\":-1,\"windowsBroken\":{\"2\":false,\"1\":false,\"4\":true,\"3\":false,\"6\":false,\"5\":true,\"0\":false,\"7\":true},\"modHood\":-1,\"color1\":0,\"plateIndex\":1,\"customPrimaryColor\":[0,0,0],\"modDashboard\":-1,\"modFrontBumper\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modTank\":-1,\"modSpeakers\":-1,\"modEngineBlock\":-1,\"tyreBurst\":{\"0\":false,\"1\":false,\"4\":false,\"5\":false},\"neonColor\":[255,0,255],\"modTransmission\":-1,\"modAirFilter\":-1,\"modArchCover\":-1,\"doorsBroken\":{\"2\":false,\"1\":false,\"4\":false,\"3\":false,\"5\":false,\"0\":false},\"modRightFender\":-1,\"wheels\":3,\"modSpoilers\":-1,\"windowTint\":-1,\"modOrnaments\":-1,\"tankHealth\":1000.0,\"modSmokeEnabled\":1,\"modFrame\":-1,\"modGrille\":-1,\"modRearBumper\":-1,\"xenonColor\":255,\"wheelColor\":0,\"modSuspension\":-1,\"extras\":{\"12\":false,\"1\":1},\"modDoorSpeaker\":-1,\"color2\":0,\"modXenon\":1,\"dirtLevel\":0.1,\"bodyHealth\":1000.0,\"modTyresBurst\":false,\"intcolor\":0,\"modLightbar\":-1,\"customSecondaryColor\":[0,0,0],\"tyreSmokeColor\":[0,0,1],\"ColorType\":[0,0],\"modAPlate\":-1,\"doors\":[false,false,false,false,false,false],\"modTurbo\":1,\"tyres\":[false,false,false,false,false,false,false],\"color4\":[0,0,0],\"modTrimA\":-1,\"modWindows\":-1,\"pearlescentColor\":0,\"modArmor\":-1,\"drift\":false,\"modRoof\":-1,\"neonEnabled\":[false,false,false,false],\"paintType\":[0,0],\"plate\":\"28UAZ112\",\"windows\":[false,false,false,false,false,true],\"dshcolor\":0,\"fuelLevel\":62.4,\"engineHealth\":1000.0,\"modBackWheels\":-1,\"modHorns\":-1,\"modTrimB\":-1,\"modFender\":-1,\"modWheelVariat\":false,\"modLivery\":-1}', '{\"plate\":\"28UAZ112\",\"maxhealth\":1000.0,\"mileage\":0.35}', '', NULL, NULL, 0, 0),
('police', '29CKR853', 1, 0, 0, '8037', NULL, 'car', '', '{\"fuelLevel\":93.4,\"modVanityPlate\":-1,\"modExhaust\":-1,\"doors\":[false,false,false,false,false,false],\"modWindows\":-1,\"plate\":\"29CKR853\",\"customSecondaryColor\":[8,8,8],\"neonEnabled\":[false,false,false,false],\"wheels\":3,\"wheelColor\":156,\"engineHealth\":924.3,\"neonColor\":[255,0,255],\"modFender\":-1,\"modOrnaments\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modSeats\":-1,\"modHorns\":-1,\"modBrakes\":-1,\"modDoorR\":-1,\"modRoof\":-1,\"modDial\":-1,\"modArmor\":-1,\"modStruts\":-1,\"modLivery\":-1,\"modRearBumper\":-1,\"color4\":[8,8,8],\"bodyHealth\":991.4,\"tankHealth\":995.8,\"windowsBroken\":{\"1\":false,\"0\":false,\"3\":false,\"2\":false,\"5\":true,\"4\":true,\"7\":false,\"6\":false},\"doorsBroken\":{\"1\":false,\"0\":false,\"3\":false,\"2\":false,\"5\":false,\"4\":false,\"6\":false},\"modTrunk\":-1,\"dshcolor\":0,\"modArchCover\":-1,\"paintType\":[0,0],\"modPlateHolder\":-1,\"modAerials\":-1,\"customPrimaryColor\":[28,30,33],\"tyreSmokeColor\":[255,255,255],\"modAirFilter\":-1,\"modTrimA\":-1,\"modFrame\":-1,\"modTrimB\":-1,\"modTransmission\":-1,\"modXenon\":false,\"modGrille\":-1,\"modSteeringWheel\":-1,\"tyreBurst\":{\"1\":false,\"0\":false,\"4\":false,\"5\":false},\"ColorType\":[0,0],\"modSuspension\":-1,\"modTurbo\":false,\"plateIndex\":4,\"color1\":0,\"xenonColor\":255,\"color2\":0,\"windows\":[false,false,false,false,false,true],\"modTyresBurst\":1,\"modWheelVariat\":false,\"modFrontBumper\":-1,\"modEngine\":-1,\"modShifterLeavers\":-1,\"dirtLevel\":5.6,\"modAPlate\":-1,\"modTank\":-1,\"extras\":[],\"color3\":[28,30,33],\"intcolor\":0,\"modEngineBlock\":-1,\"modSpoilers\":-1,\"modHydrolic\":-1,\"modRightFender\":-1,\"windowTint\":-1,\"modSpeakers\":-1,\"modSideSkirt\":-1,\"modSmokeEnabled\":false,\"pearlescentColor\":134,\"modLightbar\":-1,\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modDoorSpeaker\":-1,\"modHood\":-1,\"drift\":false,\"model\":-2111081553,\"modDashboard\":-1}', '{\"plate\":\"29CKR853\",\"mileage\":478.97,\"maxhealth\":1000.0}', '', NULL, NULL, 0, 0),
('char1:09bd2ceb267e8769174dea3bcfbcccf87517aa7a', '30ECU074', 1, 0, 0, '7293', NULL, 'car', '', '{\"modStruts\":-1,\"modXenon\":1,\"customSecondaryColor\":[189,0,44],\"dshcolor\":111,\"color1\":0,\"modFender\":-1,\"modExhaust\":3,\"plate\":\"30ECU074\",\"wheels\":3,\"customPrimaryColor\":[0,0,0],\"color3\":[0,0,0],\"pearlescentColor\":17,\"modTrunk\":-1,\"modOrnaments\":-1,\"modSideSkirt\":2,\"fuelLevel\":78.3,\"tankHealth\":1000.0,\"paintType\":[7,7],\"extras\":{\"1\":1,\"2\":false},\"modSeats\":-1,\"windows\":[false,false,false,false,false,true],\"modSpoilers\":8,\"ColorType\":[-1,-1],\"drift\":false,\"modBackWheels\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modTrimB\":-1,\"modRightFender\":-1,\"modAirFilter\":-1,\"modAerials\":-1,\"neonColor\":[255,0,255],\"modEngineBlock\":-1,\"xenonColor\":2,\"bodyHealth\":906.6,\"modSpeakers\":-1,\"modSmokeEnabled\":1,\"modFrame\":-1,\"modHood\":10,\"modTrimA\":-1,\"modSuspension\":-1,\"wheelColor\":0,\"windowTint\":1,\"tyres\":[false,false,false,false,false,false,false],\"modWheelVariat\":false,\"modHorns\":-1,\"neonEnabled\":[false,false,false,false],\"modDoorSpeaker\":-1,\"modGrille\":-1,\"windowsBroken\":{\"3\":false,\"4\":true,\"5\":true,\"6\":false,\"7\":false,\"0\":false,\"1\":false,\"2\":false},\"engineHealth\":451.6,\"modTurbo\":1,\"modDial\":-1,\"modDashboard\":-1,\"modPlateHolder\":-1,\"modArchCover\":-1,\"modHydrolic\":-1,\"modRearBumper\":7,\"modAPlate\":-1,\"modFrontBumper\":8,\"model\":1728985388,\"color2\":0,\"modDoorR\":-1,\"modVanityPlate\":-1,\"modTransmission\":-1,\"modLivery\":-1,\"modTank\":0,\"modLightbar\":-1,\"modShifterLeavers\":-1,\"tyreBurst\":{\"5\":false,\"4\":false,\"1\":false,\"0\":false},\"tyreSmokeColor\":[255,255,255],\"modRoof\":2,\"modSteeringWheel\":-1,\"modTyresBurst\":1,\"modEngine\":1,\"intcolor\":0,\"dirtLevel\":15.0,\"doors\":[false,false,false,false,false,false],\"modFrontWheels\":-1,\"doorsBroken\":{\"3\":false,\"4\":false,\"5\":false,\"6\":false,\"0\":false,\"1\":false,\"2\":false},\"modWindows\":-1,\"color4\":[189,0,44],\"plateIndex\":1}', '{\"plate\":\"30ECU074\",\"mileage\":884.08,\"maxhealth\":1000.0}', '', '[{\"slot\":1,\"name\":\"phone\",\"count\":1},{\"slot\":2,\"name\":\"phone\",\"count\":1},{\"slot\":3,\"name\":\"lockpick\",\"count\":22},{\"slot\":6,\"name\":\"clothe\",\"count\":80},{\"slot\":7,\"name\":\"bandage\",\"count\":37},{\"slot\":8,\"name\":\"phone\",\"count\":1},{\"slot\":9,\"name\":\"phone\",\"count\":1},{\"slot\":10,\"name\":\"phone\",\"count\":1},{\"slot\":11,\"name\":\"phone\",\"count\":1},{\"slot\":12,\"name\":\"phone\",\"count\":1},{\"slot\":13,\"name\":\"phone\",\"count\":1},{\"slot\":14,\"name\":\"phone\",\"count\":1},{\"slot\":15,\"name\":\"phone\",\"count\":1},{\"slot\":16,\"name\":\"cola\",\"count\":27},{\"slot\":17,\"name\":\"pet\",\"count\":6},{\"slot\":18,\"name\":\"lahev\",\"count\":3},{\"slot\":19,\"name\":\"water\",\"count\":26},{\"slot\":20,\"name\":\"ammo-9\",\"count\":34},{\"slot\":21,\"name\":\"weed\",\"count\":2},{\"slot\":22,\"name\":\"WEAPON_COMBATPISTOL\",\"count\":1,\"metadata\":{\"ammo\":0,\"components\":[],\"durability\":100,\"registered\":\"Frank Lucas\",\"serial\":\"VHM6602797227\"}}]', NULL, 0, 0),
('char1:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', '32ZDA306', 1, 0, 0, '7282', NULL, 'car', '', '{\"modSpoilers\":-1,\"modXenon\":1,\"neonColor\":[255,0,255],\"modPlateHolder\":-1,\"modRightFender\":-1,\"modSteeringWheel\":-1,\"modDoorR\":-1,\"modAPlate\":-1,\"modTransmission\":-1,\"modBackWheels\":-1,\"modAerials\":-1,\"modHorns\":-1,\"modDashboard\":-1,\"doors\":[false,false,false,false,false,false],\"modSideSkirt\":-1,\"windowsBroken\":{\"6\":false,\"5\":true,\"4\":true,\"3\":true,\"2\":true,\"1\":false,\"0\":false,\"7\":false},\"customPrimaryColor\":[0,0,0],\"modShifterLeavers\":-1,\"modAirFilter\":-1,\"modEngine\":1,\"intcolor\":2,\"wheelColor\":4,\"color1\":0,\"dirtLevel\":0.0,\"paintType\":[7,7],\"modTrimB\":-1,\"windowTint\":1,\"modStruts\":-1,\"modFrame\":-1,\"fuelLevel\":60.0,\"modSeats\":-1,\"modFrontWheels\":7,\"tyreSmokeColor\":[255,255,255],\"modExhaust\":-1,\"modHood\":-1,\"modTrimA\":-1,\"modGrille\":-1,\"pearlescentColor\":0,\"modTrunk\":-1,\"customSecondaryColor\":[35,35,45],\"color2\":0,\"color3\":[0,0,0],\"neonEnabled\":[false,false,false,false],\"modLightbar\":-1,\"modDoorSpeaker\":-1,\"modTank\":-1,\"ColorType\":[-1,0],\"extras\":[],\"model\":-1540373595,\"modBrakes\":-1,\"modSuspension\":-1,\"modWindows\":-1,\"engineHealth\":996.0,\"modHydrolic\":-1,\"color4\":[35,35,45],\"tyres\":[false,false,false,false,false,false,false],\"wheels\":7,\"plate\":\"32ZDA306\",\"tankHealth\":1000.0,\"modTyresBurst\":1,\"modOrnaments\":-1,\"modRearBumper\":-1,\"modFrontBumper\":-1,\"modTurbo\":false,\"modArmor\":4,\"modFender\":-1,\"modWheelVariat\":false,\"modDial\":-1,\"modVanityPlate\":-1,\"modEngineBlock\":-1,\"plateIndex\":0,\"modLivery\":-1,\"bodyHealth\":999.0,\"windows\":[false,false,true,true,false,true],\"modSpeakers\":-1,\"modArchCover\":-1,\"doorsBroken\":{\"4\":false,\"3\":false,\"2\":false,\"1\":false,\"0\":false},\"dshcolor\":156,\"tyreBurst\":{\"0\":false,\"1\":false,\"4\":false,\"5\":false},\"modRoof\":-1,\"drift\":false,\"modSmokeEnabled\":1,\"xenonColor\":0}', '{\"maxhealth\":1000.0,\"plate\":\"32ZDA306\",\"mileage\":956.01}', '', '[{\"name\":\"towing_rope\",\"count\":1,\"slot\":1},{\"name\":\"phone\",\"count\":1,\"slot\":6}]', NULL, 0, 0),
('sanandreas', '35ZVT662', 1, 0, 0, '8037', NULL, 'car', '', '{\"modDoorR\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modFrame\":-1,\"modDial\":-1,\"modTyresBurst\":1,\"modAerials\":-1,\"customSecondaryColor\":[0,0,0],\"modArmor\":4,\"modTurbo\":1,\"drift\":false,\"color1\":0,\"modShifterLeavers\":-1,\"customPrimaryColor\":[0,0,0],\"modRightFender\":-1,\"dshcolor\":0,\"modFrontWheels\":-1,\"intcolor\":0,\"modSmokeEnabled\":1,\"wheels\":3,\"doorsBroken\":{\"6\":false,\"5\":false,\"4\":false,\"3\":false,\"2\":false,\"1\":false,\"0\":false},\"windowsBroken\":{\"7\":false,\"6\":false,\"5\":false,\"4\":false,\"3\":false,\"2\":false,\"1\":false,\"0\":false},\"modXenon\":1,\"modVanityPlate\":-1,\"windows\":[false,false,false,false,false,true],\"extras\":{\"10\":1,\"11\":1,\"12\":1,\"2\":1,\"1\":false},\"modExhaust\":-1,\"fuelLevel\":64.0,\"modTrunk\":-1,\"modSpeakers\":-1,\"modSuspension\":3,\"modRoof\":-1,\"modBrakes\":2,\"pearlescentColor\":0,\"modSteeringWheel\":-1,\"modTrimB\":-1,\"modSeats\":-1,\"modTrimA\":-1,\"modStruts\":-1,\"ColorType\":[0,0],\"modPlateHolder\":-1,\"modFender\":-1,\"xenonColor\":255,\"windowTint\":1,\"doors\":[false,false,false,false,false,false],\"modWheelVariat\":false,\"wheelColor\":0,\"neonEnabled\":[false,false,false,false],\"modEngineBlock\":-1,\"modAirFilter\":-1,\"modEngine\":3,\"modHorns\":-1,\"paintType\":[1,1],\"tyres\":[false,false,false,false,false,false,false],\"modLivery\":-1,\"dirtLevel\":0.1,\"modHood\":-1,\"color3\":[0,0,0],\"modOrnaments\":-1,\"model\":-664237760,\"plateIndex\":1,\"modTransmission\":2,\"engineHealth\":1000.0,\"tyreSmokeColor\":[0,0,1],\"modLightbar\":-1,\"modFrontBumper\":-1,\"modTank\":-1,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modWindows\":-1,\"plate\":\"35ZVT662\",\"modBackWheels\":-1,\"color2\":0,\"modDashboard\":-1,\"bodyHealth\":1000.0,\"modRearBumper\":-1,\"modHydrolic\":-1,\"modDoorSpeaker\":-1,\"modSpoilers\":-1,\"tankHealth\":1000.0,\"modArchCover\":-1,\"color4\":[0,0,0],\"tyreBurst\":{\"0\":false,\"1\":false,\"5\":false,\"4\":false}}', '{\"maxhealth\":1000.0,\"plate\":\"35ZVT662\",\"mileage\":54.2}', '', NULL, NULL, 0, 0);
INSERT INTO `owned_vehicles` (`owner`, `plate`, `in_garage`, `impound`, `property`, `garage_id`, `image`, `garage_type`, `job_personalowned`, `vehicle`, `adv_stats`, `impound_data`, `trunk`, `glovebox`, `code`, `stolen`) VALUES
('sanandreas', '37QUN202', 1, 0, 0, '8037', NULL, 'car', '', '{\"modDoorR\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modFrame\":-1,\"modDial\":-1,\"modTyresBurst\":false,\"modAerials\":-1,\"customSecondaryColor\":[0,0,0],\"modArmor\":-1,\"modTurbo\":1,\"drift\":false,\"color1\":0,\"modShifterLeavers\":-1,\"customPrimaryColor\":[0,0,0],\"modRightFender\":-1,\"dshcolor\":0,\"modFrontWheels\":-1,\"intcolor\":0,\"modSmokeEnabled\":1,\"wheels\":3,\"doorsBroken\":{\"6\":false,\"5\":false,\"4\":false,\"3\":false,\"2\":false,\"1\":false,\"0\":false},\"windowsBroken\":{\"7\":false,\"6\":false,\"5\":true,\"4\":true,\"3\":false,\"2\":false,\"1\":false,\"0\":false},\"modXenon\":1,\"modVanityPlate\":-1,\"windows\":[false,false,false,false,false,true],\"extras\":[],\"modExhaust\":-1,\"fuelLevel\":65.0,\"modTrunk\":-1,\"modSpeakers\":-1,\"modSuspension\":-1,\"modRoof\":-1,\"modBrakes\":-1,\"pearlescentColor\":0,\"modSteeringWheel\":-1,\"modTrimB\":-1,\"modSeats\":-1,\"modTrimA\":-1,\"modStruts\":-1,\"ColorType\":[0,0],\"modPlateHolder\":-1,\"modFender\":-1,\"xenonColor\":255,\"windowTint\":-1,\"doors\":[false,false,false,false,false,false],\"modWheelVariat\":false,\"wheelColor\":156,\"neonEnabled\":[false,false,false,false],\"modEngineBlock\":-1,\"modAirFilter\":-1,\"modEngine\":-1,\"modHorns\":-1,\"paintType\":[0,0],\"tyres\":[false,false,false,false,false,false,false],\"modLivery\":-1,\"dirtLevel\":0.0,\"modHood\":-1,\"color3\":[0,0,0],\"modOrnaments\":-1,\"model\":286571503,\"plateIndex\":1,\"modTransmission\":-1,\"engineHealth\":1000.0,\"tyreSmokeColor\":[0,0,1],\"modLightbar\":-1,\"modFrontBumper\":-1,\"modTank\":-1,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modWindows\":-1,\"plate\":\"37QUN202\",\"modBackWheels\":-1,\"color2\":0,\"modDashboard\":-1,\"bodyHealth\":1000.0,\"modRearBumper\":-1,\"modHydrolic\":-1,\"modDoorSpeaker\":-1,\"modSpoilers\":-1,\"tankHealth\":1000.0,\"modArchCover\":-1,\"color4\":[0,0,0],\"tyreBurst\":{\"0\":false,\"1\":false,\"5\":false,\"4\":false}}', '{\"maxhealth\":1000.0,\"plate\":\"37QUN202\",\"mileage\":0.01}', '', NULL, NULL, 0, 0),
('sanandreas', '37SOS025', 1, 0, 0, '8037', NULL, 'car', '', '{\"modFender\":-1,\"modOrnaments\":-1,\"modAPlate\":-1,\"modAirFilter\":-1,\"doors\":[false,false,false,false,false,false],\"modEngineBlock\":-1,\"modTank\":-1,\"modGrille\":-1,\"pearlescentColor\":111,\"modSeats\":-1,\"modXenon\":1,\"bodyHealth\":1000.0,\"dshcolor\":0,\"tyres\":[false,false,false,false,false,false,false],\"modWindows\":-1,\"neonColor\":[255,0,255],\"modHorns\":-1,\"extras\":{\"12\":1},\"modSpoilers\":-1,\"modTransmission\":-1,\"modSpeakers\":-1,\"modArmor\":-1,\"xenonColor\":255,\"modTrimA\":-1,\"modFrontBumper\":-1,\"modSteeringWheel\":-1,\"modStruts\":-1,\"modWheelVariat\":false,\"modFrame\":-1,\"customSecondaryColor\":[8,8,8],\"modSmokeEnabled\":1,\"color1\":0,\"modSideSkirt\":-1,\"fuelLevel\":64.0,\"modTurbo\":1,\"modEngine\":-1,\"modAerials\":-1,\"neonEnabled\":[false,false,false,false],\"ColorType\":[0,0],\"modLightbar\":-1,\"modHydrolic\":-1,\"windowTint\":-1,\"tankHealth\":1000.0,\"wheels\":3,\"windowsBroken\":{\"2\":false,\"3\":false,\"0\":false,\"1\":false,\"6\":false,\"7\":false,\"4\":true,\"5\":true},\"modTrunk\":-1,\"tyreBurst\":{\"5\":false,\"4\":false,\"0\":false,\"1\":false},\"modBackWheels\":-1,\"modBrakes\":-1,\"modVanityPlate\":-1,\"modRightFender\":-1,\"modTyresBurst\":false,\"modShifterLeavers\":-1,\"plate\":\"37SOS025\",\"modSuspension\":-1,\"modDial\":-1,\"plateIndex\":1,\"paintType\":[0,0],\"color3\":[90,94,102],\"modFrontWheels\":-1,\"dirtLevel\":0.1,\"intcolor\":0,\"color4\":[8,8,8],\"modPlateHolder\":-1,\"tyreSmokeColor\":[0,0,1],\"modArchCover\":-1,\"color2\":0,\"modRearBumper\":-1,\"modDashboard\":-1,\"modTrimB\":-1,\"modExhaust\":-1,\"modLivery\":-1,\"modDoorR\":-1,\"model\":-1309140529,\"modDoorSpeaker\":-1,\"doorsBroken\":{\"2\":false,\"3\":false,\"0\":false,\"1\":false,\"6\":false,\"4\":false,\"5\":false},\"engineHealth\":1000.0,\"customPrimaryColor\":[90,94,102],\"modHood\":-1,\"windows\":[false,false,false,false,false,true],\"modRoof\":-1,\"drift\":false,\"wheelColor\":156}', '{\"mileage\":0.0,\"plate\":\"37SOS025\",\"maxhealth\":1000.0}', '', NULL, NULL, 0, 0),
('char1:83f8d788299c4cf1928bbd97d37da3db69da3b3a', '38RIQ051', 1, 0, 0, '9093', NULL, 'car', '', '{\"model\":-1883002148,\"tyres\":[false,false,false,false,false,false,false],\"modAirFilter\":-1,\"drift\":false,\"modShifterLeavers\":-1,\"neonColor\":[255,0,255],\"modBackWheels\":-1,\"neonEnabled\":[false,false,false,false],\"dirtLevel\":0.0,\"tyreSmokeColor\":[255,255,255],\"paintType\":[0,0],\"modSuspension\":-1,\"modSideSkirt\":-1,\"color1\":0,\"modRightFender\":-1,\"modLightbar\":-1,\"windowsBroken\":{\"7\":false,\"0\":false,\"1\":false,\"2\":false,\"3\":false,\"4\":true,\"5\":true,\"6\":false},\"modVanityPlate\":-1,\"modTank\":-1,\"engineHealth\":956.7,\"windows\":[false,false,false,false,false,true],\"modSteeringWheel\":-1,\"modTransmission\":-1,\"modTrimB\":-1,\"customPrimaryColor\":[0,0,0],\"modXenon\":false,\"modHood\":-1,\"modHydrolic\":-1,\"modAPlate\":-1,\"modArmor\":-1,\"modPlateHolder\":-1,\"windowTint\":-1,\"modFrame\":-1,\"modBrakes\":-1,\"dshcolor\":0,\"modSpeakers\":-1,\"intcolor\":0,\"modFrontBumper\":-1,\"modWindows\":-1,\"tyreBurst\":{\"0\":false,\"4\":false,\"5\":false,\"1\":false},\"color3\":[0,0,0],\"modTyresBurst\":1,\"modArchCover\":-1,\"modSeats\":-1,\"modSpoilers\":-1,\"color4\":[0,0,0],\"modLivery\":-1,\"plate\":\"38RIQ051\",\"color2\":0,\"modDoorR\":-1,\"xenonColor\":255,\"extras\":{\"11\":false,\"12\":1,\"10\":false},\"plateIndex\":3,\"modExhaust\":-1,\"modEngineBlock\":-1,\"modTrunk\":-1,\"modEngine\":-1,\"bodyHealth\":991.8,\"modDial\":-1,\"doors\":[false,false,false,false,false,false],\"modHorns\":-1,\"modStruts\":-1,\"ColorType\":[0,0],\"doorsBroken\":{\"0\":false,\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":false},\"wheels\":2,\"modDashboard\":-1,\"modTurbo\":false,\"modRoof\":-1,\"modFender\":-1,\"modGrille\":-1,\"modOrnaments\":-1,\"modRearBumper\":-1,\"modDoorSpeaker\":-1,\"modWheelVariat\":false,\"tankHealth\":1000.0,\"fuelLevel\":60.2,\"modSmokeEnabled\":false,\"modFrontWheels\":-1,\"pearlescentColor\":0,\"customSecondaryColor\":[0,0,0],\"modTrimA\":-1,\"wheelColor\":156,\"modAerials\":-1}', '{\"maxhealth\":1000.0,\"mileage\":403.89,\"plate\":\"38RIQ051\"}', '', '[{\"name\":\"cola\",\"slot\":2,\"count\":3},{\"name\":\"clothe\",\"slot\":4,\"count\":56},{\"name\":\"capo\",\"slot\":6,\"count\":3},{\"name\":\"llanta\",\"slot\":7,\"count\":6},{\"name\":\"puerta\",\"slot\":8,\"count\":10},{\"name\":\"bateria\",\"slot\":9,\"count\":1},{\"name\":\"autoradio\",\"slot\":10,\"count\":1},{\"name\":\"phone\",\"metadata\":{\"lbPhoneNumber\":\"3202626\"},\"slot\":11,\"count\":1},{\"name\":\"phone\",\"metadata\":{\"lbPhoneNumber\":\"3202278\"},\"slot\":12,\"count\":1},{\"name\":\"phone\",\"slot\":13,\"count\":1},{\"name\":\"phone\",\"slot\":14,\"count\":1}]', '[{\"name\":\"chip\",\"slot\":1,\"count\":2},{\"name\":\"lockpick\",\"slot\":2,\"count\":64},{\"name\":\"bandage\",\"slot\":3,\"count\":16},{\"name\":\"weed\",\"slot\":4,\"count\":4},{\"name\":\"WEAPON_COMBATPISTOL\",\"metadata\":{\"components\":[],\"durability\":100,\"serial\":\"137209GDN383133\",\"registered\":\"Robert Storm\",\"ammo\":11},\"slot\":5,\"count\":1},{\"name\":\"phone\",\"slot\":6,\"count\":1},{\"name\":\"phone\",\"metadata\":{\"lbPhoneNumber\":\"2760583\"},\"slot\":7,\"count\":1},{\"name\":\"phone\",\"metadata\":{\"lbPhoneNumber\":\"2568137\"},\"slot\":8,\"count\":1},{\"name\":\"phone\",\"slot\":9,\"count\":1},{\"name\":\"WEAPON_COMBATPISTOL\",\"metadata\":{\"components\":[],\"durability\":100,\"serial\":\"KDV1126021359\",\"registered\":\"Robert Storm\",\"ammo\":0},\"slot\":10,\"count\":1},{\"name\":\"phone\",\"slot\":11,\"count\":1}]', 0, 0),
('sanandreas', '38WLC138', 1, 0, 0, '8037', NULL, 'car', '', '{\"modDoorR\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modFrame\":-1,\"modDial\":-1,\"modTyresBurst\":false,\"modAerials\":-1,\"customSecondaryColor\":[0,0,0],\"modArmor\":-1,\"modTurbo\":1,\"drift\":false,\"color1\":0,\"modShifterLeavers\":-1,\"customPrimaryColor\":[0,0,0],\"modRightFender\":-1,\"dshcolor\":0,\"modFrontWheels\":-1,\"intcolor\":0,\"modSmokeEnabled\":1,\"wheels\":3,\"doorsBroken\":{\"6\":false,\"5\":false,\"4\":false,\"3\":false,\"2\":false,\"1\":false,\"0\":false},\"windowsBroken\":{\"7\":true,\"6\":false,\"5\":true,\"4\":true,\"3\":false,\"2\":false,\"1\":false,\"0\":false},\"modXenon\":1,\"modVanityPlate\":-1,\"windows\":[false,false,false,false,false,true],\"extras\":{\"12\":1},\"modExhaust\":-1,\"fuelLevel\":78.1,\"modTrunk\":-1,\"modSpeakers\":-1,\"modSuspension\":-1,\"modRoof\":-1,\"modBrakes\":-1,\"pearlescentColor\":0,\"modSteeringWheel\":-1,\"modTrimB\":-1,\"modSeats\":-1,\"modTrimA\":-1,\"modStruts\":-1,\"ColorType\":[0,0],\"modPlateHolder\":-1,\"modFender\":-1,\"xenonColor\":255,\"windowTint\":-1,\"doors\":[false,false,false,false,false,false],\"modWheelVariat\":false,\"wheelColor\":0,\"neonEnabled\":[false,false,false,false],\"modEngineBlock\":-1,\"modAirFilter\":-1,\"modEngine\":-1,\"modHorns\":-1,\"paintType\":[0,0],\"tyres\":[false,false,false,false,false,false,false],\"modLivery\":-1,\"dirtLevel\":0.4,\"modHood\":-1,\"color3\":[0,0,0],\"modOrnaments\":-1,\"model\":701682754,\"plateIndex\":1,\"modTransmission\":-1,\"engineHealth\":1000.0,\"tyreSmokeColor\":[0,0,1],\"modLightbar\":-1,\"modFrontBumper\":-1,\"modTank\":-1,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modWindows\":-1,\"plate\":\"38WLC138\",\"modBackWheels\":-1,\"color2\":0,\"modDashboard\":-1,\"bodyHealth\":1000.0,\"modRearBumper\":-1,\"modHydrolic\":-1,\"modDoorSpeaker\":-1,\"modSpoilers\":-1,\"tankHealth\":1000.0,\"modArchCover\":-1,\"color4\":[0,0,0],\"tyreBurst\":{\"0\":false,\"1\":false,\"5\":false,\"4\":false}}', '{\"maxhealth\":1000.0,\"plate\":\"38WLC138\",\"mileage\":0.02}', '', NULL, NULL, 0, 0),
('police', '40BCH995', 1, 0, 0, '8037', NULL, 'car', '', '{\"modSpeakers\":-1,\"modGrille\":-1,\"color2\":0,\"neonEnabled\":[false,false,false,false],\"intcolor\":0,\"modTrimB\":-1,\"modEngineBlock\":-1,\"windows\":[false,false,false,false,false,true],\"paintType\":[0,0],\"modRoof\":-1,\"modLivery\":-1,\"modSideSkirt\":-1,\"modSuspension\":-1,\"xenonColor\":255,\"modDashboard\":-1,\"extras\":{\"7\":false,\"8\":false,\"9\":false,\"10\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":false,\"12\":false,\"11\":false,\"1\":1,\"2\":false},\"engineHealth\":1000.0,\"modSteeringWheel\":-1,\"modEngine\":-1,\"modXenon\":false,\"color3\":[8,8,8],\"modBrakes\":-1,\"pearlescentColor\":0,\"modTrimA\":-1,\"customPrimaryColor\":[8,8,8],\"modStruts\":-1,\"plate\":\"40BCH995\",\"color1\":0,\"modFrontBumper\":-1,\"tyres\":[false,false,false,false,false,false,false],\"tankHealth\":1000.0,\"modDoorR\":-1,\"tyreBurst\":{\"0\":false,\"4\":false,\"5\":false,\"1\":false},\"wheelColor\":0,\"tyreSmokeColor\":[255,255,255],\"modTransmission\":-1,\"modWindows\":-1,\"fuelLevel\":63.7,\"modFrame\":-1,\"modTank\":-1,\"color4\":[0,16,41],\"modHydrolic\":-1,\"modAerials\":-1,\"modSmokeEnabled\":false,\"modRightFender\":-1,\"windowTint\":-1,\"modArmor\":-1,\"modFender\":-1,\"modDoorSpeaker\":-1,\"modExhaust\":-1,\"modVanityPlate\":-1,\"plateIndex\":4,\"modAirFilter\":-1,\"doorsBroken\":{\"3\":false,\"4\":false,\"5\":false,\"6\":false,\"0\":false,\"1\":false,\"2\":false},\"dshcolor\":0,\"windowsBroken\":{\"3\":false,\"4\":true,\"5\":true,\"6\":false,\"7\":false,\"0\":false,\"1\":false,\"2\":false},\"modTrunk\":-1,\"modBackWheels\":-1,\"modHorns\":-1,\"modTyresBurst\":1,\"model\":129664328,\"dirtLevel\":0.0,\"customSecondaryColor\":[0,16,41],\"modLightbar\":-1,\"modSeats\":-1,\"modPlateHolder\":-1,\"modDial\":-1,\"modTurbo\":false,\"modFrontWheels\":-1,\"modHood\":-1,\"modRearBumper\":-1,\"wheels\":0,\"doors\":[false,false,false,false,false,false],\"drift\":false,\"bodyHealth\":1000.0,\"modWheelVariat\":false,\"modSpoilers\":-1,\"modShifterLeavers\":-1,\"modArchCover\":-1,\"modOrnaments\":-1,\"modAPlate\":-1,\"neonColor\":[255,0,255],\"ColorType\":[0,0]}', '{\"mileage\":0.79,\"plate\":\"40BCH995\",\"maxhealth\":1000.0}', '', NULL, NULL, 0, 0),
('police', '40JTT511', 1, 0, 0, '8037', NULL, 'car', '', '{\"modHydrolic\":-1,\"modTyresBurst\":1,\"modRearBumper\":-1,\"wheels\":1,\"modTurbo\":false,\"color2\":0,\"engineHealth\":1000.0,\"modAPlate\":-1,\"drift\":false,\"modPlateHolder\":-1,\"modBackWheels\":-1,\"bodyHealth\":1000.0,\"doors\":[false,false,false,false,false,false],\"modFrontBumper\":-1,\"tyreBurst\":{\"5\":false,\"0\":false,\"1\":false,\"4\":false},\"modSeats\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modTrunk\":-1,\"modOrnaments\":-1,\"modTrimA\":-1,\"model\":2046537925,\"windows\":[false,false,false,false,false,true],\"dirtLevel\":0.0,\"modWindows\":-1,\"modDoorR\":-1,\"modSpeakers\":-1,\"modVanityPlate\":-1,\"modFrame\":-1,\"modLightbar\":-1,\"modShifterLeavers\":-1,\"modHood\":-1,\"modSteeringWheel\":-1,\"modDashboard\":-1,\"windowsBroken\":{\"7\":false,\"6\":false,\"1\":false,\"0\":false,\"3\":false,\"2\":false,\"5\":true,\"4\":true},\"modAerials\":-1,\"modExhaust\":-1,\"color3\":[179,185,201],\"modAirFilter\":-1,\"color4\":[8,8,8],\"modBrakes\":-1,\"fuelLevel\":63.2,\"modDial\":-1,\"dshcolor\":0,\"wheelColor\":115,\"modSmokeEnabled\":false,\"modHorns\":-1,\"extras\":{\"12\":false,\"1\":false,\"11\":false,\"2\":1,\"10\":false},\"modSideSkirt\":-1,\"modTransmission\":-1,\"tankHealth\":1000.0,\"modEngineBlock\":-1,\"modStruts\":-1,\"modLivery\":-1,\"modSpoilers\":-1,\"customPrimaryColor\":[179,185,201],\"modRoof\":-1,\"modTrimB\":-1,\"pearlescentColor\":0,\"modArmor\":-1,\"customSecondaryColor\":[8,8,8],\"modEngine\":-1,\"modArchCover\":-1,\"modRightFender\":-1,\"windowTint\":-1,\"modFrontWheels\":-1,\"modDoorSpeaker\":-1,\"xenonColor\":255,\"modTank\":-1,\"neonEnabled\":[false,false,false,false],\"tyreSmokeColor\":[255,255,255],\"modSuspension\":-1,\"modFender\":-1,\"doorsBroken\":{\"6\":false,\"1\":false,\"0\":false,\"3\":false,\"2\":false,\"5\":false,\"4\":false},\"plateIndex\":4,\"neonColor\":[255,0,255],\"modXenon\":false,\"modWheelVariat\":false,\"modGrille\":-1,\"color1\":0,\"plate\":\"40JTT511\",\"ColorType\":[0,0],\"paintType\":[0,0],\"intcolor\":0}', '{\"plate\":\"40JTT511\",\"mileage\":0.42,\"maxhealth\":1000.0}', '', NULL, NULL, 0, 0),
('char1:6c8c6ae8c062d2f8c67c6f72bfedd76aea374840', '40QWB240', 1, 0, 0, '8037', NULL, 'car', '', '{\"modAPlate\":-1,\"modLivery\":-1,\"modFender\":-1,\"modSeats\":-1,\"modAerials\":-1,\"modTrimA\":-1,\"modAirFilter\":-1,\"modRearBumper\":-1,\"plate\":\"40QWB240\",\"tankHealth\":1000.0,\"intcolor\":0,\"extras\":{\"10\":1,\"11\":false},\"modExhaust\":-1,\"modSpoilers\":-1,\"modArchCover\":-1,\"modRightFender\":-1,\"doorsBroken\":{\"3\":false,\"4\":false,\"1\":false,\"2\":false,\"0\":false,\"5\":false,\"6\":false},\"modSuspension\":-1,\"modRoof\":-1,\"modFrontBumper\":-1,\"modEngine\":-1,\"modSteeringWheel\":-1,\"modDoorSpeaker\":-1,\"modTrunk\":-1,\"windowsBroken\":{\"3\":false,\"4\":true,\"1\":false,\"2\":false,\"7\":false,\"0\":false,\"5\":true,\"6\":false},\"windowTint\":-1,\"neonEnabled\":[false,false,false,false],\"color4\":[0,0,0],\"modDial\":-1,\"modBackWheels\":-1,\"modWindows\":-1,\"engineHealth\":1000.0,\"modFrontWheels\":-1,\"plateIndex\":0,\"paintType\":[0,0],\"bodyHealth\":1000.0,\"modOrnaments\":-1,\"drift\":false,\"modVanityPlate\":-1,\"color3\":[0,0,0],\"tyreBurst\":{\"0\":false,\"4\":false,\"5\":false,\"1\":false},\"modShifterLeavers\":-1,\"wheelColor\":156,\"tyreSmokeColor\":[255,255,255],\"pearlescentColor\":111,\"modSideSkirt\":-1,\"modTank\":-1,\"modHood\":-1,\"color2\":4,\"modLightbar\":-1,\"modWheelVariat\":false,\"wheels\":5,\"modDoorR\":-1,\"modHorns\":-1,\"color1\":4,\"modPlateHolder\":-1,\"ColorType\":[0,0],\"modTransmission\":-1,\"modFrame\":-1,\"model\":-1809822327,\"modGrille\":-1,\"modXenon\":false,\"customPrimaryColor\":[0,0,0],\"modTrimB\":-1,\"modHydrolic\":-1,\"modArmor\":-1,\"modSmokeEnabled\":false,\"modTyresBurst\":1,\"modBrakes\":-1,\"fuelLevel\":50.0,\"modStruts\":-1,\"modSpeakers\":-1,\"modDashboard\":-1,\"xenonColor\":255,\"dshcolor\":0,\"dirtLevel\":8.0,\"modEngineBlock\":-1,\"customSecondaryColor\":[0,0,0],\"modTurbo\":false,\"neonColor\":[255,0,255]}', '{\"plate\":\"nil\",\"mileage\":0.0,\"maxhealth\":1000.0}', '', NULL, NULL, 0, 0),
('police', '43CKY358', 1, 0, 0, '8037', NULL, 'car', '', '{\"fuelLevel\":64.9,\"modVanityPlate\":-1,\"modExhaust\":-1,\"doors\":[false,false,false,false,false,false],\"modWindows\":-1,\"plate\":\"43CKY358\",\"customSecondaryColor\":[255,255,255],\"neonEnabled\":[false,false,false,false],\"wheels\":0,\"wheelColor\":0,\"engineHealth\":1000.0,\"neonColor\":[255,0,255],\"modFender\":-1,\"modOrnaments\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modSeats\":-1,\"modHorns\":-1,\"modBrakes\":-1,\"modDoorR\":-1,\"modRoof\":-1,\"modDial\":-1,\"modArmor\":-1,\"modStruts\":-1,\"modLivery\":-1,\"modRearBumper\":-1,\"color4\":[255,255,255],\"bodyHealth\":1000.0,\"tankHealth\":1000.0,\"windowsBroken\":{\"1\":false,\"0\":false,\"3\":false,\"2\":false,\"5\":true,\"4\":true,\"7\":false,\"6\":false},\"doorsBroken\":{\"1\":false,\"0\":false,\"3\":false,\"2\":false,\"5\":false,\"4\":false,\"6\":false},\"modTrunk\":-1,\"dshcolor\":134,\"modArchCover\":-1,\"paintType\":[7,7],\"modPlateHolder\":-1,\"modAerials\":-1,\"customPrimaryColor\":[8,8,8],\"tyreSmokeColor\":[255,255,255],\"modAirFilter\":-1,\"modTrimA\":-1,\"modFrame\":-1,\"modTrimB\":-1,\"modTransmission\":-1,\"modXenon\":false,\"modGrille\":-1,\"modSteeringWheel\":-1,\"tyreBurst\":{\"1\":false,\"0\":false,\"4\":false,\"5\":false},\"ColorType\":[-1,-1],\"modSuspension\":-1,\"modTurbo\":1,\"plateIndex\":4,\"color1\":0,\"xenonColor\":255,\"color2\":0,\"windows\":[false,false,false,false,false,true],\"modTyresBurst\":1,\"modWheelVariat\":false,\"modFrontBumper\":-1,\"modEngine\":1,\"modShifterLeavers\":-1,\"dirtLevel\":0.9,\"modAPlate\":-1,\"modTank\":-1,\"extras\":{\"3\":1,\"1\":false},\"color3\":[8,8,8],\"intcolor\":93,\"modEngineBlock\":-1,\"modSpoilers\":-1,\"modHydrolic\":-1,\"modRightFender\":-1,\"windowTint\":-1,\"modSpeakers\":-1,\"modSideSkirt\":-1,\"modSmokeEnabled\":false,\"pearlescentColor\":0,\"modLightbar\":-1,\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modDoorSpeaker\":-1,\"modHood\":-1,\"drift\":false,\"model\":-2111582652,\"modDashboard\":-1}', '{\"plate\":\"43CKY358\",\"mileage\":4286.55,\"maxhealth\":1000.0}', '', '[]', NULL, 0, 0),
('fire', '43ETZ091', 1, 0, 0, '8037', NULL, 'car', '', '{\"modTurbo\":false,\"modAPlate\":-1,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"modRightFender\":-1,\"modLivery\":-1,\"engineHealth\":806.6,\"modTrimA\":-1,\"modVanityPlate\":-1,\"windowsBroken\":{\"1\":false,\"2\":false,\"7\":true,\"0\":true,\"5\":true,\"6\":false,\"3\":false,\"4\":true},\"neonColor\":[255,0,255],\"modAerials\":-1,\"modEngine\":-1,\"modOrnaments\":-1,\"modXenon\":false,\"modArmor\":-1,\"modGrille\":-1,\"modHorns\":-1,\"modHydrolic\":-1,\"modTank\":-1,\"wheels\":0,\"modBackWheels\":-1,\"modAirFilter\":-1,\"extras\":{\"11\":false,\"4\":false,\"3\":false,\"10\":1},\"doorsBroken\":{\"1\":false,\"2\":false,\"0\":false,\"3\":false,\"4\":false},\"modDoorSpeaker\":-1,\"modTransmission\":-1,\"windows\":[true,false,false,false,true,true],\"dirtLevel\":4.2,\"customPrimaryColor\":[240,240,240],\"modSideSkirt\":-1,\"modStruts\":-1,\"modSteeringWheel\":-1,\"modDoorR\":-1,\"paintType\":[0,0],\"intcolor\":0,\"neonEnabled\":[false,false,false,false],\"modRearBumper\":-1,\"color3\":[240,240,240],\"color1\":0,\"modFrontBumper\":-1,\"windowTint\":-1,\"modArchCover\":-1,\"modSpeakers\":-1,\"wheelColor\":156,\"bodyHealth\":955.3,\"plate\":\"43ETZ091\",\"fuelLevel\":85.9,\"modFender\":-1,\"modWheelVariat\":false,\"modHood\":-1,\"color2\":0,\"modSuspension\":-1,\"tankHealth\":1000.0,\"doors\":[false,false,false,false,false,false],\"dshcolor\":0,\"color4\":[240,240,240],\"modTrunk\":-1,\"modPlateHolder\":-1,\"modDial\":-1,\"modWindows\":-1,\"modShifterLeavers\":-1,\"modTrimB\":-1,\"modSmokeEnabled\":false,\"modRoof\":-1,\"modSeats\":-1,\"tyreBurst\":{\"5\":false,\"4\":false,\"1\":false,\"0\":false},\"modSpoilers\":-1,\"xenonColor\":255,\"ColorType\":[0,0],\"model\":-1278185944,\"modDashboard\":-1,\"modBrakes\":-1,\"plateIndex\":4,\"modTyresBurst\":1,\"modEngineBlock\":-1,\"customSecondaryColor\":[240,240,240],\"tyres\":[false,false,false,false,false,false,false],\"modLightbar\":-1,\"drift\":false,\"modFrontWheels\":-1,\"pearlescentColor\":0,\"modExhaust\":-1}', '{\"plate\":\"43ETZ091\",\"mileage\":50.69,\"maxhealth\":1000.0}', '', '[{\"count\":5,\"name\":\"medikit\",\"slot\":1},{\"count\":5,\"name\":\"bandage\",\"slot\":2},{\"count\":1,\"metadata\":{\"durability\":100,\"ammo\":100,\"components\":[]},\"name\":\"WEAPON_FIREEXTINGUISHER\",\"slot\":6}]', NULL, 0, 0),
('police', '43ORK744', 1, 0, 0, '8037', NULL, 'car', '', '{\"drift\":false,\"doorsBroken\":{\"0\":false,\"1\":false},\"modSmokeEnabled\":false,\"tyres\":[false,false,false,false,false,false,false],\"modAirFilter\":-1,\"modFender\":-1,\"dirtLevel\":8.5,\"bodyHealth\":1000.0,\"tyreSmokeColor\":[255,255,255],\"extras\":[],\"modDoorSpeaker\":-1,\"modDashboard\":-1,\"modArmor\":-1,\"modAerials\":-1,\"modSeats\":-1,\"modTrimA\":-1,\"neonColor\":[255,0,255],\"modPlateHolder\":-1,\"customPrimaryColor\":[8,8,8],\"windowTint\":-1,\"wheels\":6,\"modEngine\":-1,\"fuelLevel\":99.1,\"model\":-1921512137,\"modBrakes\":-1,\"modSuspension\":-1,\"intcolor\":0,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modSteeringWheel\":-1,\"color1\":0,\"modWheelVariat\":false,\"modBackWheels\":-1,\"neonEnabled\":[false,false,false,false],\"windows\":[true,true,true,true,true,true],\"modSpoilers\":-1,\"plate\":\"43ORK744\",\"modRearBumper\":-1,\"modFrontBumper\":-1,\"customSecondaryColor\":[8,8,8],\"dshcolor\":0,\"modStruts\":-1,\"engineHealth\":1000.0,\"modEngineBlock\":-1,\"modLightbar\":-1,\"modRoof\":-1,\"color4\":[8,8,8],\"modSpeakers\":-1,\"paintType\":[0,0],\"modArchCover\":-1,\"ColorType\":[0,0],\"windowsBroken\":{\"4\":true,\"5\":true,\"2\":true,\"3\":true,\"0\":true,\"1\":true,\"6\":true,\"7\":true},\"modXenon\":false,\"modTrunk\":-1,\"modAPlate\":-1,\"modExhaust\":-1,\"tankHealth\":1000.0,\"modWindows\":-1,\"modShifterLeavers\":-1,\"modRightFender\":-1,\"color2\":0,\"xenonColor\":255,\"color3\":[8,8,8],\"modVanityPlate\":-1,\"modDoorR\":-1,\"plateIndex\":4,\"doors\":[false,false,false,false,false,false],\"modGrille\":-1,\"modLivery\":-1,\"modHorns\":-1,\"modDial\":-1,\"modTank\":-1,\"modTurbo\":false,\"modTransmission\":-1,\"modTrimB\":-1,\"modHood\":-1,\"tyreBurst\":{\"4\":false,\"0\":false},\"modFrame\":-1,\"modSideSkirt\":-1,\"wheelColor\":0,\"modTyresBurst\":1,\"modOrnaments\":-1,\"pearlescentColor\":0}', '{\"plate\":\"43ORK744\",\"maxhealth\":1000.0,\"mileage\":33.96}', '', NULL, NULL, 0, 0),
('lostmc', '44JZH701', 1, 0, 0, '8037', NULL, 'car', '', '{\"extras\":{\"10\":1},\"modDashboard\":-1,\"color1\":0,\"pearlescentColor\":111,\"modGrille\":-1,\"modEngineBlock\":-1,\"modAirFilter\":-1,\"modSeats\":-1,\"dirtLevel\":2.5,\"plate\":\"44JZH701\",\"modEngine\":-1,\"customSecondaryColor\":[4,32,141],\"plateIndex\":3,\"modSpoilers\":-1,\"modOrnaments\":-1,\"modLivery\":-1,\"neonEnabled\":[false,false,false,false],\"fuelLevel\":44.6,\"modExhaust\":-1,\"modStruts\":-1,\"windowsBroken\":{\"2\":false,\"1\":false,\"0\":false,\"7\":false,\"6\":false,\"5\":true,\"4\":true,\"3\":false},\"modArmor\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"windowTint\":-1,\"customPrimaryColor\":[4,32,141],\"tyres\":[false,false,false,false,false,false,false],\"tyreBurst\":{\"5\":false,\"1\":false,\"4\":false,\"0\":false},\"modTransmission\":-1,\"modFender\":-1,\"color4\":[4,32,141],\"modSideSkirt\":-1,\"modVanityPlate\":-1,\"modSpeakers\":-1,\"modDoorR\":-1,\"modXenon\":false,\"modPlateHolder\":-1,\"modBrakes\":-1,\"modBackWheels\":-1,\"color2\":0,\"xenonColor\":255,\"modWindows\":-1,\"modSmokeEnabled\":false,\"modTrimB\":-1,\"modDoorSpeaker\":-1,\"modRoof\":-1,\"modFrontWheels\":-1,\"doorsBroken\":{\"2\":false,\"1\":false,\"0\":false,\"6\":false,\"5\":false,\"4\":false,\"3\":false},\"modRearBumper\":-1,\"modDial\":-1,\"drift\":false,\"modSuspension\":-1,\"dshcolor\":0,\"wheels\":0,\"modRightFender\":-1,\"modHorns\":-1,\"wheelColor\":156,\"tankHealth\":1000.0,\"tyreSmokeColor\":[255,255,255],\"ColorType\":[0,0],\"modHood\":-1,\"model\":-1130810103,\"modTrunk\":-1,\"modAerials\":-1,\"modTrimA\":-1,\"bodyHealth\":1000.0,\"modHydrolic\":-1,\"modAPlate\":-1,\"windows\":[false,false,false,false,false,true],\"color3\":[4,32,141],\"modFrontBumper\":-1,\"modFrame\":-1,\"engineHealth\":1000.0,\"modTurbo\":false,\"modArchCover\":-1,\"doors\":[false,false,false,false,false,false],\"paintType\":[0,0],\"modTank\":-1,\"modWheelVariat\":false,\"neonColor\":[255,255,255],\"modTyresBurst\":1,\"modLightbar\":-1,\"intcolor\":0}', '{\"plate\":\"44JZH701\",\"maxhealth\":1000.0,\"mileage\":0.34}', '', NULL, NULL, 0, 0),
('lsgc', '44UJL380', 1, 0, 0, '8037', NULL, 'car', '', '{\"modExhaust\":-1,\"modSpoilers\":-1,\"modEngine\":-1,\"modRightFender\":-1,\"modWindows\":-1,\"tyreBurst\":{\"5\":false,\"0\":false,\"1\":false,\"4\":false},\"dirtLevel\":8.3,\"pearlescentColor\":0,\"tankHealth\":999.0,\"modRearBumper\":-1,\"modTurbo\":false,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modFender\":-1,\"doorsBroken\":{\"1\":false,\"2\":false,\"0\":false,\"5\":false,\"6\":false,\"3\":false,\"4\":false},\"modHorns\":-1,\"modSmokeEnabled\":false,\"modLivery\":-1,\"modTank\":-1,\"modDoorSpeaker\":-1,\"modSuspension\":-1,\"neonEnabled\":[false,false,false,false],\"dshcolor\":0,\"intcolor\":0,\"doors\":[false,false,false,false,false,false],\"engineHealth\":957.4,\"modTyresBurst\":1,\"modBackWheels\":-1,\"modTrimB\":-1,\"customPrimaryColor\":[32,87,151],\"modFrontBumper\":-1,\"modHydrolic\":-1,\"color4\":[32,87,151],\"modSideSkirt\":-1,\"windowsBroken\":{\"1\":false,\"2\":false,\"7\":true,\"0\":false,\"5\":true,\"6\":false,\"3\":false,\"4\":true},\"tyres\":[false,false,false,false,false,false,false],\"modDoorR\":-1,\"fuelLevel\":65.5,\"windowTint\":-1,\"customSecondaryColor\":[32,87,151],\"extras\":[],\"xenonColor\":255,\"wheelColor\":156,\"modFrame\":-1,\"modOrnaments\":-1,\"wheels\":1,\"windows\":[false,false,false,false,false,true],\"drift\":false,\"modDashboard\":-1,\"bodyHealth\":990.2,\"modTransmission\":-1,\"ColorType\":[0,0],\"modTrimA\":-1,\"modTrunk\":-1,\"modEngineBlock\":-1,\"color3\":[32,87,151],\"modRoof\":-1,\"modVanityPlate\":-1,\"tyreSmokeColor\":[255,255,255],\"modHood\":-1,\"paintType\":[0,0],\"modXenon\":false,\"modWheelVariat\":false,\"modSeats\":-1,\"modDial\":-1,\"modGrille\":-1,\"modLightbar\":-1,\"neonColor\":[255,0,255],\"modAirFilter\":-1,\"color1\":0,\"plate\":\"44UJL380\",\"modAerials\":-1,\"modSteeringWheel\":-1,\"color2\":0,\"modStruts\":-1,\"modFrontWheels\":-1,\"model\":1954121213,\"modSpeakers\":-1,\"plateIndex\":0,\"modArchCover\":-1,\"modShifterLeavers\":-1,\"modArmor\":-1,\"modBrakes\":-1}', '{\"mileage\":17.8,\"maxhealth\":1000.0,\"plate\":\"44UJL380\"}', '', NULL, NULL, 0, 0),
('sanandreas', '45BIK994', 1, 0, 0, '8037', NULL, 'car', '', '{\"modDoorR\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modFrame\":-1,\"modDial\":-1,\"modTyresBurst\":false,\"modAerials\":-1,\"customSecondaryColor\":[0,0,0],\"modArmor\":-1,\"modTurbo\":1,\"drift\":false,\"color1\":0,\"modShifterLeavers\":-1,\"customPrimaryColor\":[0,0,0],\"modRightFender\":-1,\"dshcolor\":0,\"modFrontWheels\":-1,\"intcolor\":0,\"modSmokeEnabled\":1,\"wheels\":3,\"doorsBroken\":{\"6\":false,\"5\":false,\"4\":false,\"3\":false,\"2\":false,\"1\":false,\"0\":false},\"windowsBroken\":{\"7\":false,\"6\":false,\"5\":true,\"4\":true,\"3\":false,\"2\":false,\"1\":false,\"0\":false},\"modXenon\":1,\"modVanityPlate\":-1,\"windows\":[false,false,false,false,false,true],\"extras\":[],\"modExhaust\":-1,\"fuelLevel\":64.4,\"modTrunk\":-1,\"modSpeakers\":-1,\"modSuspension\":-1,\"modRoof\":-1,\"modBrakes\":-1,\"pearlescentColor\":0,\"modSteeringWheel\":-1,\"modTrimB\":-1,\"modSeats\":-1,\"modTrimA\":-1,\"modStruts\":-1,\"ColorType\":[0,0],\"modPlateHolder\":-1,\"modFender\":-1,\"xenonColor\":255,\"windowTint\":-1,\"doors\":[false,false,false,false,false,false],\"modWheelVariat\":false,\"wheelColor\":0,\"neonEnabled\":[false,false,false,false],\"modEngineBlock\":-1,\"modAirFilter\":-1,\"modEngine\":-1,\"modHorns\":-1,\"paintType\":[0,0],\"tyres\":[false,false,false,false,false,false,false],\"modLivery\":-1,\"dirtLevel\":0.1,\"modHood\":-1,\"color3\":[0,0,0],\"modOrnaments\":-1,\"model\":422720257,\"plateIndex\":1,\"modTransmission\":-1,\"engineHealth\":1000.0,\"tyreSmokeColor\":[0,0,1],\"modLightbar\":-1,\"modFrontBumper\":-1,\"modTank\":-1,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modWindows\":-1,\"plate\":\"45BIK994\",\"modBackWheels\":-1,\"color2\":0,\"modDashboard\":-1,\"bodyHealth\":1000.0,\"modRearBumper\":-1,\"modHydrolic\":-1,\"modDoorSpeaker\":-1,\"modSpoilers\":-1,\"tankHealth\":1000.0,\"modArchCover\":-1,\"color4\":[0,0,0],\"tyreBurst\":{\"0\":false,\"1\":false,\"5\":false,\"4\":false}}', '{\"maxhealth\":1000.0,\"plate\":\"45BIK994\",\"mileage\":0.06}', '', NULL, NULL, 0, 0),
('char1:a0d0df65040210c65c5c097b25c5011637af60b6', '46JXB256', 1, 0, 0, '8037', NULL, 'car', '', '{\"modSmokeEnabled\":false,\"modWheelVariat\":false,\"paintType\":[0,0],\"pearlescentColor\":7,\"modDoorR\":-1,\"modShifterLeavers\":-1,\"modVanityPlate\":-1,\"wheelColor\":5,\"modHorns\":-1,\"modHood\":-1,\"modTurbo\":false,\"modLightbar\":-1,\"customSecondaryColor\":[35,35,45],\"modExhaust\":-1,\"modEngineBlock\":-1,\"plateIndex\":0,\"color4\":[35,35,45],\"engineHealth\":998.7,\"modDial\":-1,\"modArchCover\":-1,\"modBackWheels\":-1,\"ColorType\":[0,0],\"xenonColor\":255,\"modBrakes\":-1,\"modEngine\":-1,\"modTrimB\":-1,\"bodyHealth\":999.8,\"modFrame\":-1,\"modWindows\":-1,\"modArmor\":-1,\"extras\":[],\"modTransmission\":-1,\"modRoof\":-1,\"modFrontWheels\":-1,\"doors\":[false,false,false,false,false,false],\"modAPlate\":-1,\"modPlateHolder\":-1,\"windowTint\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modStruts\":-1,\"tankHealth\":1000.0,\"fuelLevel\":70.5,\"intcolor\":5,\"dirtLevel\":8.1,\"windowsBroken\":{\"4\":true,\"5\":true,\"2\":false,\"3\":false,\"0\":false,\"1\":false,\"6\":false,\"7\":false},\"modDashboard\":-1,\"dshcolor\":156,\"neonEnabled\":[false,false,false,false],\"modHydrolic\":-1,\"modSideSkirt\":-1,\"plate\":\"46JXB256\",\"doorsBroken\":{\"4\":false,\"2\":false,\"3\":false,\"0\":false,\"1\":false},\"modDoorSpeaker\":-1,\"model\":931280609,\"modAirFilter\":-1,\"modRightFender\":-1,\"neonColor\":[255,0,255],\"color3\":[35,35,45],\"windows\":[false,false,false,false,false,true],\"modSeats\":-1,\"modSuspension\":-1,\"modAerials\":-1,\"modFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modTrunk\":-1,\"customPrimaryColor\":[35,35,45],\"modFrontBumper\":-1,\"drift\":false,\"modTrimA\":-1,\"modOrnaments\":-1,\"tyreBurst\":{\"4\":false,\"1\":false,\"5\":false,\"0\":false},\"tyres\":[false,false,false,false,false,false,false],\"modTank\":-1,\"modLivery\":-1,\"color1\":29,\"modSteeringWheel\":-1,\"modRearBumper\":-1,\"modXenon\":false,\"modGrille\":-1,\"color2\":111,\"modTyresBurst\":1,\"modSpoilers\":-1}', '{\"plate\":\"46JXB256\",\"maxhealth\":1000.0,\"mileage\":0.0}', '', NULL, NULL, 0, 0),
('police', '47MBV749', 1, 0, 0, '8037', NULL, 'car', '', '{\"modRightFender\":-1,\"modTurbo\":false,\"dirtLevel\":3.0,\"modWindows\":-1,\"modBackWheels\":-1,\"wheels\":3,\"modSmokeEnabled\":false,\"modHydrolic\":-1,\"dshcolor\":0,\"extras\":{\"3\":false,\"2\":false,\"4\":false,\"1\":1,\"10\":1},\"pearlescentColor\":0,\"xenonColor\":255,\"modSuspension\":-1,\"modTrimB\":-1,\"tyreSmokeColor\":[255,255,255],\"modArchCover\":-1,\"color3\":[179,185,201],\"modSideSkirt\":-1,\"wheelColor\":0,\"color4\":[8,8,8],\"modVanityPlate\":-1,\"modTrimA\":-1,\"modTransmission\":-1,\"ColorType\":[0,0],\"neonColor\":[255,0,255],\"modAerials\":-1,\"modDashboard\":-1,\"plate\":\"47MBV749\",\"modEngine\":-1,\"modTank\":-1,\"modGrille\":-1,\"modRearBumper\":-1,\"modSpoilers\":-1,\"modDoorR\":-1,\"modHood\":-1,\"modFrontWheels\":-1,\"modDial\":-1,\"engineHealth\":962.6,\"modRoof\":-1,\"modDoorSpeaker\":-1,\"windowTint\":-1,\"modSteeringWheel\":-1,\"modXenon\":false,\"modHorns\":-1,\"fuelLevel\":61.0,\"customSecondaryColor\":[8,8,8],\"modOrnaments\":-1,\"modAirFilter\":-1,\"modFrontBumper\":-1,\"windowsBroken\":{\"3\":false,\"2\":false,\"5\":true,\"4\":true,\"7\":false,\"6\":false,\"1\":false,\"0\":false},\"color1\":0,\"modWheelVariat\":false,\"tankHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"modLivery\":-1,\"model\":-1373176589,\"modFrame\":-1,\"customPrimaryColor\":[179,185,201],\"modArmor\":-1,\"modPlateHolder\":-1,\"modStruts\":-1,\"modBrakes\":-1,\"modShifterLeavers\":-1,\"modFender\":-1,\"windows\":[false,false,false,false,false,true],\"color2\":0,\"paintType\":[0,0],\"modTrunk\":-1,\"modLightbar\":-1,\"modSeats\":-1,\"modSpeakers\":-1,\"modExhaust\":-1,\"modAPlate\":-1,\"doors\":[false,false,false,false,false,false],\"neonEnabled\":[false,false,false,false],\"bodyHealth\":995.7,\"intcolor\":0,\"tyreBurst\":{\"0\":false,\"1\":false,\"5\":false,\"4\":false},\"drift\":false,\"plateIndex\":4,\"doorsBroken\":{\"3\":false,\"2\":false,\"5\":false,\"4\":false,\"7\":false,\"6\":false,\"1\":false,\"0\":false},\"modTyresBurst\":1,\"modEngineBlock\":-1}', '{\"plate\":\"47MBV749\",\"mileage\":149.03,\"maxhealth\":1000.0}', '', NULL, NULL, 0, 0),
('sanandreas', '53GTE387', 1, 0, 0, '8037', NULL, 'car', '', '{\"modFender\":-1,\"modOrnaments\":-1,\"modAPlate\":-1,\"modAirFilter\":-1,\"doors\":[false,false,false,false,false,false],\"modEngineBlock\":-1,\"modTank\":-1,\"modGrille\":-1,\"pearlescentColor\":0,\"modSeats\":-1,\"modXenon\":1,\"bodyHealth\":1000.0,\"dshcolor\":0,\"tyres\":[false,false,false,false,false,false,false],\"modWindows\":-1,\"neonColor\":[255,0,255],\"modHorns\":-1,\"extras\":[],\"modSpoilers\":-1,\"modTransmission\":-1,\"modSpeakers\":-1,\"modArmor\":-1,\"xenonColor\":255,\"modTrimA\":-1,\"modFrontBumper\":-1,\"modSteeringWheel\":-1,\"modStruts\":-1,\"modWheelVariat\":false,\"modFrame\":-1,\"customSecondaryColor\":[0,0,0],\"modSmokeEnabled\":1,\"color1\":0,\"modSideSkirt\":-1,\"fuelLevel\":64.9,\"modTurbo\":1,\"modEngine\":-1,\"modAerials\":-1,\"neonEnabled\":[false,false,false,false],\"ColorType\":[0,0],\"modLightbar\":-1,\"modHydrolic\":-1,\"windowTint\":-1,\"tankHealth\":1000.0,\"wheels\":3,\"windowsBroken\":{\"2\":false,\"3\":false,\"0\":false,\"1\":false,\"6\":false,\"7\":false,\"4\":true,\"5\":true},\"modTrunk\":-1,\"tyreBurst\":{\"5\":false,\"4\":false,\"0\":false,\"1\":false},\"modBackWheels\":-1,\"modBrakes\":-1,\"modVanityPlate\":-1,\"modRightFender\":-1,\"modTyresBurst\":false,\"modShifterLeavers\":-1,\"plate\":\"53GTE387\",\"modSuspension\":-1,\"modDial\":-1,\"plateIndex\":1,\"paintType\":[0,0],\"color3\":[0,0,0],\"modFrontWheels\":-1,\"dirtLevel\":0.0,\"intcolor\":0,\"color4\":[0,0,0],\"modPlateHolder\":-1,\"tyreSmokeColor\":[0,0,1],\"modArchCover\":-1,\"color2\":0,\"modRearBumper\":-1,\"modDashboard\":-1,\"modTrimB\":-1,\"modExhaust\":-1,\"modLivery\":-1,\"modDoorR\":-1,\"model\":-1797129440,\"modDoorSpeaker\":-1,\"doorsBroken\":{\"2\":false,\"3\":false,\"0\":false,\"1\":false,\"6\":false,\"4\":false,\"5\":false},\"engineHealth\":1000.0,\"customPrimaryColor\":[0,0,0],\"modHood\":-1,\"windows\":[false,false,false,false,false,true],\"modRoof\":-1,\"drift\":false,\"wheelColor\":156}', '{\"mileage\":0.0,\"plate\":\"53GTE387\",\"maxhealth\":1000.0}', '', NULL, NULL, 0, 0),
('ambulance', '55VYS294', 1, 0, 0, '8037', NULL, 'car', '', '{\"modHydrolic\":-1,\"modRightFender\":-1,\"paintType\":[7,7],\"modSuspension\":-1,\"modTrimA\":-1,\"modAerials\":-1,\"xenonColor\":255,\"modLivery\":-1,\"ColorType\":[-1,-1],\"modDoorSpeaker\":-1,\"modFrontWheels\":-1,\"plate\":\"55VYS294\",\"tankHealth\":999.9,\"modWheelVariat\":false,\"modTransmission\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modExhaust\":-1,\"modFender\":-1,\"tyreBurst\":{\"4\":false,\"0\":false,\"5\":false,\"1\":false},\"neonColor\":[255,0,255],\"customPrimaryColor\":[240,240,240],\"modHorns\":-1,\"extras\":{\"1\":false,\"2\":1,\"10\":1},\"customSecondaryColor\":[117,66,49],\"modAPlate\":-1,\"modGrille\":-1,\"plateIndex\":0,\"model\":1500677296,\"modArmor\":-1,\"modRoof\":-1,\"modSeats\":-1,\"modTank\":-1,\"modArchCover\":-1,\"tyreSmokeColor\":[255,255,255],\"modVanityPlate\":-1,\"modSpoilers\":-1,\"neonEnabled\":[false,false,false,false],\"windowsBroken\":{\"4\":true,\"3\":false,\"2\":false,\"1\":false,\"0\":false,\"7\":true,\"6\":false,\"5\":true},\"dshcolor\":87,\"engineHealth\":995.7,\"modSteeringWheel\":-1,\"modHood\":-1,\"modLightbar\":-1,\"modFrame\":-1,\"modEngineBlock\":-1,\"modTrunk\":-1,\"modSpeakers\":-1,\"modDial\":-1,\"pearlescentColor\":13,\"modSmokeEnabled\":false,\"drift\":false,\"modWindows\":-1,\"fuelLevel\":59.9,\"wheelColor\":156,\"bodyHealth\":999.0,\"modTyresBurst\":1,\"modAirFilter\":-1,\"modPlateHolder\":-1,\"modDashboard\":-1,\"color2\":0,\"modBrakes\":-1,\"windowTint\":-1,\"modRearBumper\":-1,\"wheels\":1,\"modShifterLeavers\":-1,\"intcolor\":32,\"color1\":0,\"dirtLevel\":2.9,\"modEngine\":-1,\"modDoorR\":-1,\"doors\":[false,false,false,false,false,false],\"modTrimB\":-1,\"modTurbo\":false,\"modFrontBumper\":-1,\"modStruts\":-1,\"modXenon\":false,\"modSideSkirt\":-1,\"doorsBroken\":{\"4\":false,\"3\":false,\"2\":false,\"1\":false,\"0\":false,\"6\":false,\"5\":false},\"color3\":[240,240,240],\"modOrnaments\":-1,\"color4\":[117,66,49],\"windows\":[false,false,false,false,false,true],\"modBackWheels\":-1}', '{\"mileage\":1097.41,\"maxhealth\":1000.0,\"plate\":\"55VYS294\"}', '', '[{\"count\":26,\"name\":\"medikit\",\"slot\":1},{\"count\":13,\"name\":\"fak\",\"slot\":2},{\"count\":21,\"name\":\"bandage\",\"slot\":3},{\"count\":36,\"name\":\"burger\",\"slot\":6},{\"count\":36,\"name\":\"water\",\"slot\":7}]', NULL, 0, 0),
('char1:252400a9738eef79b93a74c5937b0548e469c253', '57HOY199', 1, 0, 0, '7299 private', NULL, 'car', '', '{\"modGrille\":-1,\"modSuspension\":-1,\"tyreBurst\":{\"4\":false,\"0\":false},\"windowsBroken\":{\"2\":true,\"3\":true,\"0\":true,\"1\":true,\"6\":true,\"7\":true,\"4\":true,\"5\":true},\"modWindows\":-1,\"modShifterLeavers\":-1,\"pearlescentColor\":111,\"modBrakes\":-1,\"modAPlate\":-1,\"modFrontBumper\":-1,\"fuelLevel\":0.0,\"modOrnaments\":-1,\"modSeats\":-1,\"wheels\":6,\"modLivery\":-1,\"modTrimA\":-1,\"plate\":\"57HOY199\",\"modSideSkirt\":-1,\"modTransmission\":-1,\"paintType\":[0,0],\"tyreSmokeColor\":[255,255,255],\"modStruts\":-1,\"modRearBumper\":-1,\"modSteeringWheel\":-1,\"modXenon\":false,\"neonColor\":[255,0,255],\"doorsBroken\":{\"0\":false,\"1\":false},\"modBackWheels\":-1,\"tankHealth\":1000.0,\"modTrunk\":-1,\"extras\":[],\"modDashboard\":-1,\"modAerials\":-1,\"modLightbar\":-1,\"modFrontWheels\":-1,\"engineHealth\":1000.0,\"modRoof\":-1,\"modDoorSpeaker\":-1,\"modDoorR\":-1,\"modWheelVariat\":false,\"modArmor\":-1,\"modFrame\":-1,\"doors\":[false,false,false,false,false,false],\"customPrimaryColor\":[0,0,0],\"xenonColor\":255,\"modSpeakers\":-1,\"modExhaust\":-1,\"modTurbo\":false,\"windowTint\":-1,\"modTrimB\":-1,\"windows\":[true,true,true,true,true,true],\"tyres\":[false,false,false,false,false,false,false],\"modHydrolic\":-1,\"modHorns\":-1,\"modAirFilter\":-1,\"modVanityPlate\":-1,\"modSmokeEnabled\":false,\"modTank\":-1,\"neonEnabled\":[false,false,false,false],\"model\":1131912276,\"dirtLevel\":3.4,\"modArchCover\":-1,\"modEngineBlock\":-1,\"bodyHealth\":1000.0,\"color4\":[0,0,0],\"color2\":0,\"color1\":0,\"modPlateHolder\":-1,\"ColorType\":[0,0],\"intcolor\":0,\"plateIndex\":4,\"dshcolor\":0,\"drift\":false,\"color3\":[0,0,0],\"modHood\":-1,\"modFender\":-1,\"modDial\":-1,\"modRightFender\":-1,\"modEngine\":-1,\"customSecondaryColor\":[0,0,0],\"modSpoilers\":-1,\"modTyresBurst\":1,\"wheelColor\":156}', '{\"maxhealth\":1000.0,\"mileage\":151.55,\"plate\":\"57HOY199\"}', '', NULL, NULL, 0, 0),
('ambulance', '57LMW112', 1, 0, 0, '8037', NULL, 'car', '', '{\"modHydrolic\":-1,\"modRightFender\":-1,\"paintType\":[7,7],\"modSuspension\":-1,\"modTrimA\":-1,\"modAerials\":-1,\"xenonColor\":255,\"modLivery\":-1,\"ColorType\":[-1,-1],\"modDoorSpeaker\":-1,\"modFrontWheels\":-1,\"plate\":\"57LMW112\",\"tankHealth\":1000.0,\"modWheelVariat\":false,\"modTransmission\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modExhaust\":-1,\"modFender\":-1,\"tyreBurst\":{\"4\":false,\"0\":false,\"5\":false,\"1\":false},\"neonColor\":[255,0,255],\"customPrimaryColor\":[240,240,240],\"modHorns\":-1,\"extras\":{\"12\":1,\"1\":1},\"customSecondaryColor\":[240,240,240],\"modAPlate\":-1,\"modGrille\":-1,\"plateIndex\":0,\"model\":-524315614,\"modArmor\":-1,\"modRoof\":-1,\"modSeats\":-1,\"modTank\":-1,\"modArchCover\":-1,\"tyreSmokeColor\":[255,255,255],\"modVanityPlate\":-1,\"modSpoilers\":-1,\"neonEnabled\":[false,false,false,false],\"windowsBroken\":{\"4\":false,\"3\":false,\"2\":false,\"1\":false,\"0\":false,\"7\":false,\"6\":false,\"5\":false},\"dshcolor\":0,\"engineHealth\":1000.0,\"modSteeringWheel\":-1,\"modHood\":-1,\"modLightbar\":-1,\"modFrame\":-1,\"modEngineBlock\":-1,\"modTrunk\":-1,\"modSpeakers\":-1,\"modDial\":-1,\"pearlescentColor\":0,\"modSmokeEnabled\":false,\"drift\":false,\"modWindows\":-1,\"fuelLevel\":64.4,\"wheelColor\":156,\"bodyHealth\":1000.0,\"modTyresBurst\":1,\"modAirFilter\":-1,\"modPlateHolder\":-1,\"modDashboard\":-1,\"color2\":0,\"modBrakes\":-1,\"windowTint\":-1,\"modRearBumper\":-1,\"wheels\":3,\"modShifterLeavers\":-1,\"intcolor\":0,\"color1\":0,\"dirtLevel\":4.0,\"modEngine\":-1,\"modDoorR\":-1,\"doors\":[false,false,false,false,false,false],\"modTrimB\":-1,\"modTurbo\":false,\"modFrontBumper\":-1,\"modStruts\":-1,\"modXenon\":false,\"modSideSkirt\":-1,\"doorsBroken\":{\"4\":false,\"3\":false,\"2\":false,\"1\":false,\"0\":false,\"6\":false,\"5\":false},\"color3\":[240,240,240],\"modOrnaments\":-1,\"color4\":[240,240,240],\"windows\":[false,false,false,false,false,true],\"modBackWheels\":-1}', '{\"mileage\":0.43,\"maxhealth\":1000.0,\"plate\":\"57LMW112\"}', '', NULL, NULL, 0, 0),
('char2:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', '58PDQ864', 1, 0, 0, '8047', NULL, 'car', '', '{\"modSpoilers\":-1,\"modTyresBurst\":1,\"wheelColor\":0,\"modTrunk\":-1,\"windowsBroken\":{\"3\":false,\"2\":false,\"5\":true,\"4\":true,\"7\":false,\"6\":false,\"1\":false,\"0\":false},\"modBrakes\":-1,\"bodyHealth\":1000.0,\"windowTint\":-1,\"modSpeakers\":-1,\"modHorns\":-1,\"windows\":[false,false,false,false,false,true],\"modTank\":-1,\"modFrontBumper\":-1,\"modLivery\":-1,\"modDashboard\":-1,\"engineHealth\":1000.0,\"modAPlate\":-1,\"modDial\":-1,\"modStruts\":-1,\"tyreSmokeColor\":[255,255,255],\"color2\":107,\"xenonColor\":255,\"ColorType\":[0,0],\"modBackWheels\":-1,\"intcolor\":3,\"modSteeringWheel\":-1,\"modRearBumper\":-1,\"modGrille\":-1,\"modPlateHolder\":-1,\"color3\":[135,35,39],\"modAirFilter\":-1,\"tyreBurst\":{\"4\":false,\"5\":false,\"1\":false,\"0\":false},\"modLightbar\":-1,\"tankHealth\":1000.0,\"dshcolor\":156,\"modSideSkirt\":-1,\"modTurbo\":false,\"modSmokeEnabled\":false,\"pearlescentColor\":6,\"plate\":\"58PDQ864\",\"modEngineBlock\":-1,\"modFrontWheels\":-1,\"model\":1429622905,\"modTrimB\":-1,\"fuelLevel\":66.4,\"modRoof\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modEngine\":-1,\"modFrame\":-1,\"customSecondaryColor\":[135,35,39],\"modOrnaments\":-1,\"modWheelVariat\":false,\"modShifterLeavers\":-1,\"modXenon\":false,\"modSuspension\":-1,\"modExhaust\":-1,\"modArmor\":-1,\"modRightFender\":-1,\"modArchCover\":-1,\"wheels\":1,\"color1\":107,\"modDoorR\":-1,\"modSeats\":-1,\"plateIndex\":0,\"customPrimaryColor\":[135,35,39],\"neonColor\":[255,0,255],\"extras\":[],\"neonEnabled\":[false,false,false,false],\"modTrimA\":-1,\"dirtLevel\":4.4,\"modHydrolic\":-1,\"modWindows\":-1,\"modVanityPlate\":-1,\"doorsBroken\":{\"3\":false,\"2\":false,\"4\":false,\"1\":false,\"0\":false},\"modHood\":-1,\"paintType\":[0,0],\"modTransmission\":-1,\"modAerials\":-1,\"color4\":[135,35,39],\"doors\":[false,false,false,false,false,false],\"modFender\":-1,\"modDoorSpeaker\":-1,\"drift\":false}', '{\"plate\":\"58PDQ864\",\"maxhealth\":1000.0,\"mileage\":0.0}', '', NULL, NULL, 0, 0),
('char1:a8cfd975ad8e17a808e69fea1873127e0e8dd9e9', '59DDR284', 1, 0, 0, '8037', NULL, 'car', '', '{\"modSpoilers\":-1,\"modWheelVariat\":false,\"modShifterLeavers\":-1,\"bodyHealth\":1000.0,\"dshcolor\":0,\"wheels\":6,\"color4\":[0,0,0],\"modTurbo\":false,\"modAirFilter\":-1,\"modSideSkirt\":-1,\"modAerials\":-1,\"xenonColor\":255,\"modDoorSpeaker\":-1,\"modDashboard\":-1,\"neonEnabled\":[false,false,false,false],\"modRightFender\":-1,\"modSpeakers\":-1,\"tyreBurst\":{\"0\":false,\"4\":false},\"modXenon\":false,\"fuelLevel\":0.0,\"color1\":57,\"modArmor\":-1,\"plateIndex\":4,\"dirtLevel\":7.0,\"doorsBroken\":{\"1\":false,\"0\":false},\"modHorns\":-1,\"modVanityPlate\":-1,\"modBackWheels\":-1,\"modEngine\":-1,\"color2\":0,\"windowTint\":-1,\"windowsBroken\":{\"5\":true,\"6\":true,\"3\":true,\"4\":true,\"1\":true,\"2\":true,\"7\":true,\"0\":true},\"engineHealth\":1000.0,\"wheelColor\":156,\"neonColor\":[255,0,255],\"drift\":false,\"modHood\":-1,\"modFrontWheels\":-1,\"modLivery\":-1,\"tyreSmokeColor\":[255,255,255],\"modAPlate\":-1,\"modTransmission\":-1,\"modTyresBurst\":1,\"model\":1131912276,\"modGrille\":-1,\"paintType\":[0,0],\"modRearBumper\":-1,\"modDial\":-1,\"modTrunk\":-1,\"customPrimaryColor\":[0,0,0],\"modLightbar\":-1,\"modWindows\":-1,\"modSteeringWheel\":-1,\"modTrimB\":-1,\"customSecondaryColor\":[0,0,0],\"extras\":[],\"modFrontBumper\":-1,\"ColorType\":[0,0],\"pearlescentColor\":57,\"modTank\":-1,\"modDoorR\":-1,\"modStruts\":-1,\"intcolor\":0,\"color3\":[0,0,0],\"modSmokeEnabled\":false,\"modHydrolic\":-1,\"modFrame\":-1,\"modPlateHolder\":-1,\"modEngineBlock\":-1,\"modTrimA\":-1,\"modSuspension\":-1,\"modFender\":-1,\"tankHealth\":1000.0,\"plate\":\"59DDR284\",\"modArchCover\":-1,\"modSeats\":-1,\"modRoof\":-1,\"modBrakes\":-1,\"modExhaust\":-1,\"modOrnaments\":-1}', '{\"plate\":\"nil\",\"mileage\":0.0,\"maxhealth\":1000.0}', '', NULL, NULL, 0, 0),
('char1:b1dc43c6fb4ef390d0248afa02f04484c4f34a36', '59EFH330', 1, 0, 0, '7231', NULL, 'car', '', '{\"modRightFender\":-1,\"modTurbo\":1,\"dirtLevel\":1.1,\"modWindows\":-1,\"modBackWheels\":-1,\"wheels\":2,\"neonEnabled\":[1,1,1,1],\"modHydrolic\":-1,\"dshcolor\":134,\"extras\":[],\"pearlescentColor\":38,\"xenonColor\":255,\"modSuspension\":-1,\"modTrimB\":-1,\"tyreSmokeColor\":[0,0,1],\"modArchCover\":-1,\"color3\":[0,0,0],\"modSideSkirt\":-1,\"modTrunk\":-1,\"modAPlate\":-1,\"modVanityPlate\":-1,\"modTrimA\":-1,\"modTransmission\":2,\"ColorType\":[0,0],\"neonColor\":[255,34,0],\"modFrontBumper\":-1,\"modDashboard\":-1,\"plateIndex\":1,\"modEngine\":3,\"modTank\":-1,\"modAirFilter\":-1,\"modRearBumper\":-1,\"modSpoilers\":0,\"modDoorR\":-1,\"modHood\":7,\"modFrontWheels\":26,\"modDial\":-1,\"engineHealth\":1000.0,\"modRoof\":0,\"modDoorSpeaker\":-1,\"intcolor\":93,\"modSteeringWheel\":-1,\"modXenon\":1,\"modHorns\":0,\"fuelLevel\":53.9,\"customSecondaryColor\":[0,0,0],\"modOrnaments\":-1,\"modAerials\":-1,\"modSmokeEnabled\":1,\"modBrakes\":2,\"color1\":0,\"modWheelVariat\":false,\"tankHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"modLivery\":-1,\"windowTint\":1,\"modFrame\":0,\"customPrimaryColor\":[0,0,0],\"modArmor\":-1,\"modPlateHolder\":-1,\"plate\":\"59EFH330\",\"bodyHealth\":1000.0,\"paintType\":[1,1],\"modFender\":-1,\"windows\":[false,false,false,false,false,true],\"color2\":0,\"drift\":false,\"windowsBroken\":{\"3\":false,\"2\":false,\"5\":true,\"4\":true,\"7\":false,\"6\":false,\"1\":false,\"0\":false},\"modLightbar\":-1,\"modSeats\":-1,\"modStruts\":-1,\"modExhaust\":7,\"model\":1532171089,\"doors\":[false,false,false,false,false,false],\"doorsBroken\":{\"3\":false,\"2\":false,\"5\":false,\"4\":false,\"6\":false,\"1\":false,\"0\":false},\"color4\":[0,0,0],\"modShifterLeavers\":-1,\"tyreBurst\":{\"1\":false,\"0\":false,\"5\":false,\"4\":false},\"modGrille\":0,\"wheelColor\":36,\"modSpeakers\":-1,\"modTyresBurst\":1,\"modEngineBlock\":-1}', '{\"maxhealth\":1000.0,\"plate\":\"59EFH330\",\"mileage\":2.4}', '', NULL, NULL, 0, 0);
INSERT INTO `owned_vehicles` (`owner`, `plate`, `in_garage`, `impound`, `property`, `garage_id`, `image`, `garage_type`, `job_personalowned`, `vehicle`, `adv_stats`, `impound_data`, `trunk`, `glovebox`, `code`, `stolen`) VALUES
('police', '61ZBR073', 1, 0, 0, '8037', NULL, 'car', '', '{\"modRightFender\":-1,\"modTurbo\":false,\"dirtLevel\":0.1,\"modWindows\":-1,\"modBackWheels\":-1,\"wheels\":3,\"modSmokeEnabled\":false,\"modHydrolic\":-1,\"dshcolor\":0,\"extras\":{\"1\":1,\"12\":1},\"pearlescentColor\":0,\"xenonColor\":255,\"modSuspension\":-1,\"modTrimB\":-1,\"tyreSmokeColor\":[255,255,255],\"modArchCover\":-1,\"color3\":[8,8,8],\"modSideSkirt\":-1,\"wheelColor\":0,\"color4\":[8,8,8],\"modVanityPlate\":-1,\"modTrimA\":-1,\"modTransmission\":-1,\"ColorType\":[0,0],\"neonColor\":[255,0,255],\"modAerials\":-1,\"modDashboard\":-1,\"plate\":\"61ZBR073\",\"modEngine\":-1,\"modTank\":-1,\"modGrille\":-1,\"modRearBumper\":-1,\"modSpoilers\":-1,\"modDoorR\":-1,\"modHood\":-1,\"modFrontWheels\":-1,\"modDial\":-1,\"engineHealth\":999.1,\"modRoof\":-1,\"modDoorSpeaker\":-1,\"windowTint\":-1,\"modSteeringWheel\":-1,\"modXenon\":false,\"modHorns\":-1,\"fuelLevel\":51.3,\"customSecondaryColor\":[8,8,8],\"modOrnaments\":-1,\"modAirFilter\":-1,\"modFrontBumper\":-1,\"windowsBroken\":{\"3\":false,\"2\":false,\"5\":true,\"4\":true,\"7\":false,\"6\":false,\"1\":true,\"0\":true},\"color1\":0,\"modWheelVariat\":false,\"tankHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"modLivery\":-1,\"model\":-502380072,\"modFrame\":-1,\"customPrimaryColor\":[8,8,8],\"modArmor\":-1,\"modPlateHolder\":-1,\"modStruts\":-1,\"modBrakes\":-1,\"modShifterLeavers\":-1,\"modFender\":-1,\"windows\":[true,true,false,false,true,true],\"color2\":0,\"paintType\":[0,0],\"modTrunk\":-1,\"modLightbar\":-1,\"modSeats\":-1,\"modSpeakers\":-1,\"modExhaust\":-1,\"modAPlate\":-1,\"doors\":[false,false,false,false,false,false],\"neonEnabled\":[false,false,false,false],\"bodyHealth\":999.8,\"intcolor\":0,\"tyreBurst\":{\"0\":false,\"1\":false,\"5\":false,\"4\":false},\"drift\":false,\"plateIndex\":4,\"doorsBroken\":{\"3\":false,\"2\":false,\"5\":false,\"4\":false,\"6\":false,\"1\":false,\"0\":false},\"modTyresBurst\":1,\"modEngineBlock\":-1}', '{\"plate\":\"61ZBR073\",\"mileage\":967.14,\"maxhealth\":1000.0}', '', '[]', NULL, 0, 0),
('sanandreas', '62UZC175', 1, 0, 0, '8037', NULL, 'car', '', '{\"modEngineBlock\":-1,\"windowTint\":-1,\"tyreSmokeColor\":[0,0,1],\"plateIndex\":1,\"drift\":false,\"modShifterLeavers\":-1,\"wheelColor\":156,\"doors\":[false,false,false,false,false,false],\"plate\":\"62UZC175\",\"modPlateHolder\":-1,\"xenonColor\":255,\"modArmor\":-1,\"modSpoilers\":-1,\"modFrontWheels\":-1,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modAerials\":-1,\"modBackWheels\":-1,\"modTyresBurst\":false,\"modStruts\":-1,\"modTransmission\":-1,\"doorsBroken\":{\"5\":false,\"6\":false,\"3\":false,\"4\":false,\"1\":false,\"2\":false,\"0\":false},\"windows\":[false,false,false,false,false,true],\"tyres\":[false,false,false,false,false,false,false],\"modDial\":-1,\"color3\":[0,0,0],\"dirtLevel\":0.1,\"modSuspension\":-1,\"neonEnabled\":[false,false,false,false],\"modFrame\":-1,\"color4\":[0,0,0],\"modSteeringWheel\":-1,\"modFrontBumper\":-1,\"modTurbo\":1,\"ColorType\":[0,0],\"modSpeakers\":-1,\"customSecondaryColor\":[0,0,0],\"modRearBumper\":-1,\"modWheelVariat\":false,\"modDoorSpeaker\":-1,\"modAirFilter\":-1,\"bodyHealth\":995.3,\"fuelLevel\":62.0,\"modDoorR\":-1,\"intcolor\":0,\"modRoof\":-1,\"color1\":0,\"modHood\":-1,\"modXenon\":1,\"modRightFender\":-1,\"modTrimB\":-1,\"modHydrolic\":-1,\"modVanityPlate\":-1,\"modTank\":-1,\"windowsBroken\":{\"5\":true,\"6\":false,\"3\":false,\"4\":true,\"1\":false,\"2\":false,\"7\":false,\"0\":false},\"wheels\":3,\"modLightbar\":-1,\"color2\":0,\"paintType\":[0,0],\"dshcolor\":0,\"modTrimA\":-1,\"modWindows\":-1,\"pearlescentColor\":0,\"tyreBurst\":{\"5\":false,\"1\":false,\"4\":false,\"0\":false},\"customPrimaryColor\":[0,0,0],\"modBrakes\":-1,\"modEngine\":-1,\"modSideSkirt\":-1,\"extras\":{\"12\":1},\"modDashboard\":-1,\"modHorns\":-1,\"modExhaust\":-1,\"tankHealth\":1000.0,\"modGrille\":-1,\"modTrunk\":-1,\"modFender\":-1,\"modSeats\":-1,\"modSmokeEnabled\":1,\"modOrnaments\":-1,\"model\":2081095223,\"modLivery\":-1,\"modArchCover\":-1,\"engineHealth\":979.7}', '{\"mileage\":4.74,\"plate\":\"62UZC175\",\"maxhealth\":1000.0}', '', NULL, NULL, 0, 0),
('char1:b1dc43c6fb4ef390d0248afa02f04484c4f34a36', '63AER655', 1, 0, 0, '8047', NULL, 'car', '', '{\"modRightFender\":-1,\"modTurbo\":1,\"dirtLevel\":0.1,\"modWindows\":-1,\"modBackWheels\":-1,\"wheels\":7,\"neonEnabled\":[1,1,1,1],\"modHydrolic\":-1,\"dshcolor\":65,\"extras\":[],\"pearlescentColor\":0,\"xenonColor\":255,\"modSuspension\":-1,\"modTrimB\":-1,\"tyreSmokeColor\":[0,0,1],\"modArchCover\":-1,\"color3\":[0,123,255],\"modSideSkirt\":4,\"modTrunk\":-1,\"modAPlate\":-1,\"modVanityPlate\":-1,\"modTrimA\":-1,\"modTransmission\":2,\"ColorType\":[0,0],\"neonColor\":[255,255,255],\"modFrontBumper\":2,\"modDashboard\":-1,\"plateIndex\":1,\"modEngine\":3,\"modTank\":-1,\"modAirFilter\":-1,\"modRearBumper\":2,\"modSpoilers\":8,\"modDoorR\":-1,\"modHood\":13,\"modFrontWheels\":-1,\"modDial\":-1,\"engineHealth\":984.5,\"modRoof\":1,\"modDoorSpeaker\":-1,\"intcolor\":0,\"modSteeringWheel\":-1,\"modXenon\":1,\"modHorns\":56,\"fuelLevel\":56.9,\"customSecondaryColor\":[255,255,255],\"modOrnaments\":-1,\"modAerials\":-1,\"modSmokeEnabled\":1,\"modBrakes\":2,\"color1\":0,\"modWheelVariat\":false,\"tankHealth\":999.5,\"tyres\":[false,false,false,false,false,false,false],\"modLivery\":-1,\"windowTint\":1,\"modFrame\":2,\"customPrimaryColor\":[0,123,255],\"modArmor\":-1,\"modPlateHolder\":-1,\"plate\":\"63AER655\",\"bodyHealth\":997.0,\"paintType\":[1,1],\"modFender\":-1,\"windows\":[false,false,true,true,false,true],\"color2\":0,\"drift\":false,\"windowsBroken\":{\"3\":true,\"2\":true,\"5\":true,\"4\":true,\"7\":false,\"6\":false,\"1\":false,\"0\":false},\"modLightbar\":-1,\"modSeats\":-1,\"modStruts\":-1,\"modExhaust\":1,\"model\":1044193113,\"doors\":[false,false,false,false,false,false],\"doorsBroken\":{\"3\":false,\"2\":false,\"1\":false,\"0\":false},\"color4\":[255,255,255],\"modShifterLeavers\":-1,\"tyreBurst\":{\"1\":false,\"0\":false,\"5\":false,\"4\":false},\"modGrille\":-1,\"wheelColor\":0,\"modSpeakers\":-1,\"modTyresBurst\":1,\"modEngineBlock\":-1}', '{\"maxhealth\":1000.0,\"plate\":\"63AER655\",\"mileage\":114.67}', '', NULL, NULL, 0, 0),
('ambulance', '63EAB564', 1, 0, 0, '8037', NULL, 'car', '', '{\"modHydrolic\":-1,\"modRightFender\":-1,\"paintType\":[0,0],\"modSuspension\":-1,\"modTrimA\":-1,\"modAerials\":-1,\"xenonColor\":255,\"modLivery\":-1,\"ColorType\":[0,0],\"modDoorSpeaker\":-1,\"modFrontWheels\":-1,\"plate\":\"63EAB564\",\"tankHealth\":1000.0,\"modWheelVariat\":false,\"modTransmission\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modExhaust\":-1,\"modFender\":-1,\"tyreBurst\":{\"4\":false,\"0\":false,\"5\":false,\"1\":false},\"neonColor\":[255,0,255],\"customPrimaryColor\":[240,240,240],\"modHorns\":-1,\"extras\":{\"1\":false,\"2\":1,\"10\":1},\"customSecondaryColor\":[240,240,240],\"modAPlate\":-1,\"modGrille\":-1,\"plateIndex\":0,\"model\":1500677296,\"modArmor\":-1,\"modRoof\":-1,\"modSeats\":-1,\"modTank\":-1,\"modArchCover\":-1,\"tyreSmokeColor\":[255,255,255],\"modVanityPlate\":-1,\"modSpoilers\":-1,\"neonEnabled\":[false,false,false,false],\"windowsBroken\":{\"4\":true,\"3\":false,\"2\":false,\"1\":false,\"0\":false,\"7\":true,\"6\":false,\"5\":true},\"dshcolor\":0,\"engineHealth\":1000.0,\"modSteeringWheel\":-1,\"modHood\":-1,\"modLightbar\":-1,\"modFrame\":-1,\"modEngineBlock\":-1,\"modTrunk\":-1,\"modSpeakers\":-1,\"modDial\":-1,\"pearlescentColor\":0,\"modSmokeEnabled\":false,\"drift\":false,\"modWindows\":-1,\"fuelLevel\":82.0,\"wheelColor\":156,\"bodyHealth\":1000.0,\"modTyresBurst\":1,\"modAirFilter\":-1,\"modPlateHolder\":-1,\"modDashboard\":-1,\"color2\":0,\"modBrakes\":-1,\"windowTint\":-1,\"modRearBumper\":-1,\"wheels\":1,\"modShifterLeavers\":-1,\"intcolor\":0,\"color1\":0,\"dirtLevel\":9.0,\"modEngine\":-1,\"modDoorR\":-1,\"doors\":[false,false,false,false,false,false],\"modTrimB\":-1,\"modTurbo\":false,\"modFrontBumper\":-1,\"modStruts\":-1,\"modXenon\":false,\"modSideSkirt\":-1,\"doorsBroken\":{\"4\":false,\"3\":false,\"2\":false,\"1\":false,\"0\":false,\"6\":false,\"5\":false},\"color3\":[240,240,240],\"modOrnaments\":-1,\"color4\":[240,240,240],\"windows\":[false,false,false,false,false,true],\"modBackWheels\":-1}', '{\"mileage\":89.52,\"maxhealth\":1000.0,\"plate\":\"63EAB564\"}', '', '[{\"count\":30,\"name\":\"medikit\",\"slot\":1}]', NULL, 0, 0),
('sanandreas', '63OCQ834', 1, 0, 0, '8037', NULL, 'car', '', '{\"modTank\":-1,\"modFender\":-1,\"modAPlate\":-1,\"modAirFilter\":-1,\"modFrontWheels\":-1,\"modSteeringWheel\":-1,\"modBackWheels\":-1,\"modTrimA\":-1,\"modDial\":-1,\"engineHealth\":1000.0,\"wheels\":3,\"modSuspension\":-1,\"doors\":[false,false,false,false,false,false],\"windowsBroken\":{\"5\":true,\"4\":true,\"3\":false,\"2\":false,\"1\":false,\"0\":false,\"7\":false,\"6\":false},\"bodyHealth\":1000.0,\"modTrunk\":-1,\"modFrontBumper\":-1,\"tankHealth\":1000.0,\"modWheelVariat\":false,\"ColorType\":[0,0],\"modDashboard\":-1,\"modBrakes\":-1,\"modHood\":-1,\"modArchCover\":-1,\"modVanityPlate\":-1,\"paintType\":[0,0],\"modArmor\":-1,\"modSpeakers\":-1,\"modDoorR\":-1,\"doorsBroken\":{\"5\":false,\"4\":false,\"3\":false,\"2\":false,\"1\":false,\"0\":false,\"6\":false},\"intcolor\":0,\"modRearBumper\":-1,\"modExhaust\":-1,\"modSideSkirt\":-1,\"modHorns\":-1,\"modHydrolic\":-1,\"modPlateHolder\":-1,\"modShifterLeavers\":-1,\"dshcolor\":0,\"model\":174186656,\"customSecondaryColor\":[0,0,0],\"tyres\":[false,false,false,false,false,false,false],\"modStruts\":-1,\"windowTint\":-1,\"modTrimB\":-1,\"tyreSmokeColor\":[0,0,1],\"color1\":0,\"modRoof\":-1,\"plate\":\"63OCQ834\",\"windows\":[false,false,false,false,false,true],\"color2\":0,\"modEngineBlock\":-1,\"modTyresBurst\":false,\"modTurbo\":1,\"customPrimaryColor\":[0,0,0],\"xenonColor\":255,\"fuelLevel\":63.6,\"modGrille\":-1,\"neonEnabled\":[false,false,false,false],\"extras\":{\"12\":1},\"neonColor\":[255,0,255],\"color4\":[0,0,0],\"modXenon\":1,\"color3\":[0,0,0],\"plateIndex\":1,\"drift\":false,\"modEngine\":-1,\"modRightFender\":-1,\"modAerials\":-1,\"modWindows\":-1,\"modDoorSpeaker\":-1,\"wheelColor\":156,\"modSpoilers\":-1,\"modSmokeEnabled\":1,\"tyreBurst\":{\"5\":false,\"4\":false,\"1\":false,\"0\":false},\"modTransmission\":-1,\"modSeats\":-1,\"modFrame\":-1,\"dirtLevel\":0.4,\"modLightbar\":-1,\"pearlescentColor\":0,\"modLivery\":-1,\"modOrnaments\":-1}', '{\"maxhealth\":1000.0,\"plate\":\"63OCQ834\",\"mileage\":0.0}', '', NULL, NULL, 0, 0),
('sanandreas', '68VKZ611', 1, 0, 0, '8037', NULL, 'car', '', '{\"doorsBroken\":{\"3\":false,\"4\":false,\"5\":false,\"6\":false,\"0\":false,\"1\":false,\"2\":false},\"modArmor\":4,\"modFender\":-1,\"neonEnabled\":[false,false,false,false],\"ColorType\":[0,0],\"modTrimB\":-1,\"modEngineBlock\":-1,\"windows\":[true,false,false,false,true,true],\"paintType\":[0,0],\"modRoof\":-1,\"modLivery\":-1,\"modSideSkirt\":-1,\"modSuspension\":-1,\"modSpoilers\":-1,\"modDashboard\":-1,\"extras\":[],\"engineHealth\":1000.0,\"modSteeringWheel\":-1,\"modEngine\":3,\"modXenon\":1,\"color3\":[0,0,0],\"modBrakes\":2,\"pearlescentColor\":0,\"modTrimA\":-1,\"customPrimaryColor\":[0,0,0],\"modRearBumper\":2,\"plate\":\"68VKZ611\",\"doors\":[false,false,false,false,false,false],\"modFrontBumper\":-1,\"tyres\":[false,false,false,false,false,false,false],\"tankHealth\":1000.0,\"modWheelVariat\":false,\"modBackWheels\":-1,\"wheelColor\":0,\"tyreSmokeColor\":[255,255,255],\"modTransmission\":-1,\"modWindows\":-1,\"fuelLevel\":73.7,\"modFrame\":-1,\"modTank\":-1,\"color4\":[0,0,0],\"modHydrolic\":-1,\"modAerials\":-1,\"modGrille\":-1,\"color2\":0,\"windowTint\":1,\"xenonColor\":255,\"modShifterLeavers\":-1,\"modDoorR\":-1,\"modExhaust\":-1,\"modVanityPlate\":-1,\"color1\":0,\"modTrunk\":-1,\"plateIndex\":1,\"dshcolor\":134,\"windowsBroken\":{\"3\":false,\"4\":false,\"5\":false,\"6\":false,\"7\":false,\"0\":true,\"1\":false,\"2\":false},\"modAirFilter\":-1,\"modDoorSpeaker\":-1,\"intcolor\":93,\"modTyresBurst\":1,\"neonColor\":[255,0,255],\"dirtLevel\":0.5,\"customSecondaryColor\":[0,0,0],\"modLightbar\":-1,\"model\":662793086,\"modPlateHolder\":-1,\"modDial\":-1,\"modTurbo\":1,\"modSmokeEnabled\":1,\"tyreBurst\":{\"4\":false,\"0\":false,\"5\":false,\"1\":false},\"modStruts\":-1,\"wheels\":3,\"modHood\":0,\"drift\":false,\"bodyHealth\":1000.0,\"modSpeakers\":-1,\"modSeats\":-1,\"modFrontWheels\":-1,\"modArchCover\":-1,\"modOrnaments\":-1,\"modAPlate\":-1,\"modHorns\":-1,\"modRightFender\":-1}', '{\"mileage\":56.29,\"plate\":\"68VKZ611\",\"maxhealth\":1000.0}', '', NULL, NULL, 0, 0),
('char1:6da4d857b509dd6583ba6782a8301d467bf36380', '69DIY712', 1, 0, 0, '7299 private', NULL, 'car', '', '{\"modHorns\":57,\"modDashboard\":-1,\"color1\":0,\"modSuspension\":-1,\"modTrunk\":-1,\"modEngineBlock\":-1,\"modAirFilter\":-1,\"modSeats\":-1,\"dirtLevel\":4.2,\"plate\":\"69DIY712\",\"wheelColor\":111,\"customSecondaryColor\":[5,5,5],\"plateIndex\":2,\"modSpoilers\":1,\"modOrnaments\":-1,\"modLivery\":-1,\"neonEnabled\":[false,false,false,false],\"fuelLevel\":74.3,\"modExhaust\":1,\"modStruts\":-1,\"modDial\":-1,\"modArmor\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"windowTint\":-1,\"customPrimaryColor\":[5,5,5],\"modBrakes\":2,\"tyreBurst\":{\"0\":false,\"4\":false},\"modTransmission\":2,\"modFender\":-1,\"color4\":[5,5,5],\"modSideSkirt\":2,\"modVanityPlate\":-1,\"modSpeakers\":-1,\"modDoorR\":-1,\"modXenon\":false,\"doors\":[false,false,false,false,false,false],\"modWindows\":-1,\"modBackWheels\":-1,\"color2\":0,\"xenonColor\":2,\"modFrontWheels\":-1,\"modSmokeEnabled\":1,\"modTrimB\":-1,\"modRearBumper\":-1,\"modHood\":-1,\"tankHealth\":975.7,\"doorsBroken\":{\"0\":false,\"1\":false},\"model\":-2115793025,\"modEngine\":3,\"drift\":false,\"tyres\":[false,false,false,false,false,false,false],\"dshcolor\":111,\"wheels\":6,\"modFrontBumper\":-1,\"modDoorSpeaker\":-1,\"modAerials\":-1,\"modAPlate\":-1,\"tyreSmokeColor\":[255,255,255],\"ColorType\":[0,0],\"modTyresBurst\":1,\"modRightFender\":-1,\"modGrille\":0,\"modRoof\":-1,\"modArchCover\":-1,\"modFrame\":2,\"modHydrolic\":-1,\"modPlateHolder\":-1,\"windows\":[true,true,true,true,true,true],\"color3\":[5,5,5],\"bodyHealth\":940.8,\"windowsBroken\":{\"2\":true,\"1\":true,\"0\":true,\"7\":true,\"6\":true,\"5\":true,\"4\":true,\"3\":true},\"engineHealth\":857.5,\"modTurbo\":false,\"extras\":[],\"modTrimA\":-1,\"paintType\":[1,0],\"modTank\":-1,\"modWheelVariat\":false,\"neonColor\":[255,255,255],\"pearlescentColor\":0,\"modLightbar\":-1,\"intcolor\":111}', '{\"mileage\":1613.61,\"maxhealth\":1000.0,\"plate\":\"69DIY712\"}', '', NULL, NULL, 0, 0),
('police', '69RRM369', 1, 0, 0, '8037', NULL, 'car', '', '{\"fuelLevel\":46.9,\"modVanityPlate\":-1,\"modExhaust\":-1,\"doors\":[false,false,false,false,false,false],\"modWindows\":-1,\"plate\":\"69RRM369\",\"customSecondaryColor\":[255,255,255],\"neonEnabled\":[false,false,false,false],\"wheels\":0,\"wheelColor\":0,\"engineHealth\":1000.0,\"neonColor\":[255,0,255],\"modFender\":-1,\"modOrnaments\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modSeats\":-1,\"modHorns\":-1,\"modBrakes\":-1,\"modDoorR\":-1,\"modRoof\":-1,\"modDial\":-1,\"modArmor\":-1,\"modStruts\":-1,\"modLivery\":-1,\"modRearBumper\":-1,\"color4\":[255,255,255],\"bodyHealth\":1000.0,\"tankHealth\":1000.0,\"windowsBroken\":{\"1\":false,\"0\":false,\"3\":false,\"2\":false,\"5\":true,\"4\":true,\"7\":false,\"6\":false},\"doorsBroken\":{\"1\":false,\"0\":false,\"3\":false,\"2\":false,\"5\":false,\"4\":false,\"6\":false},\"modTrunk\":-1,\"dshcolor\":134,\"modArchCover\":-1,\"paintType\":[7,7],\"modPlateHolder\":-1,\"modAerials\":-1,\"customPrimaryColor\":[8,8,8],\"tyreSmokeColor\":[255,255,255],\"modAirFilter\":-1,\"modTrimA\":-1,\"modFrame\":-1,\"modTrimB\":-1,\"modTransmission\":-1,\"modXenon\":false,\"modGrille\":-1,\"modSteeringWheel\":-1,\"tyreBurst\":{\"1\":false,\"0\":false,\"4\":false,\"5\":false},\"ColorType\":[-1,-1],\"modSuspension\":-1,\"modTurbo\":1,\"plateIndex\":4,\"color1\":0,\"xenonColor\":255,\"color2\":0,\"windows\":[false,false,false,false,false,true],\"modTyresBurst\":1,\"modWheelVariat\":false,\"modFrontBumper\":-1,\"modEngine\":1,\"modShifterLeavers\":-1,\"dirtLevel\":1.3,\"modAPlate\":-1,\"modTank\":-1,\"extras\":{\"3\":false,\"1\":1},\"color3\":[8,8,8],\"intcolor\":93,\"modEngineBlock\":-1,\"modSpoilers\":-1,\"modHydrolic\":-1,\"modRightFender\":-1,\"windowTint\":-1,\"modSpeakers\":-1,\"modSideSkirt\":-1,\"modSmokeEnabled\":false,\"pearlescentColor\":0,\"modLightbar\":-1,\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modDoorSpeaker\":-1,\"modHood\":-1,\"drift\":false,\"model\":-2111582652,\"modDashboard\":-1}', '{\"plate\":\"69RRM369\",\"mileage\":1991.01,\"maxhealth\":1000.0}', '', '[{\"slot\":1,\"count\":1,\"name\":\"medikit\"},{\"slot\":2,\"count\":1,\"name\":\"spikestrip\"},{\"slot\":6,\"count\":1,\"name\":\"armour\"},{\"slot\":7,\"count\":1,\"name\":\"radio\"},{\"metadata\":{\"size\":[30,15000],\"container\":\"ROC1671571652\"},\"slot\":21,\"count\":1,\"name\":\"evidencebag\"},{\"metadata\":{\"size\":[30,15000],\"container\":\"OKT1672169503\"},\"slot\":22,\"count\":1,\"name\":\"evidencebag\"},{\"metadata\":{\"size\":[30,15000],\"container\":\"JJP1671571651\"},\"slot\":23,\"count\":1,\"name\":\"evidencebag\"},{\"slot\":16,\"count\":1,\"name\":\"phone\"},{\"slot\":11,\"count\":1,\"name\":\"pouta\"},{\"slot\":12,\"count\":1,\"name\":\"klicky\"},{\"slot\":41,\"count\":1,\"name\":\"lahev\"}]', NULL, 0, 0),
('sanandreas', '73FMN802', 1, 0, 0, '8037', NULL, 'car', '', '{\"modEngineBlock\":-1,\"windowTint\":-1,\"tyreSmokeColor\":[0,0,1],\"plateIndex\":1,\"drift\":false,\"modShifterLeavers\":-1,\"wheelColor\":156,\"doors\":[false,false,false,false,false,false],\"plate\":\"73FMN802\",\"modPlateHolder\":-1,\"xenonColor\":255,\"modArmor\":-1,\"modSpoilers\":-1,\"modFrontWheels\":-1,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modAerials\":-1,\"modBackWheels\":-1,\"modTyresBurst\":false,\"modStruts\":-1,\"modTransmission\":-1,\"doorsBroken\":{\"5\":false,\"6\":false,\"3\":false,\"4\":false,\"1\":false,\"2\":false,\"0\":false},\"windows\":[false,false,false,false,false,true],\"tyres\":[false,false,false,false,false,false,false],\"modDial\":-1,\"color3\":[0,0,0],\"dirtLevel\":0.3,\"modSuspension\":-1,\"neonEnabled\":[false,false,false,false],\"modFrame\":-1,\"color4\":[0,0,0],\"modSteeringWheel\":-1,\"modFrontBumper\":-1,\"modTurbo\":1,\"ColorType\":[0,0],\"modSpeakers\":-1,\"customSecondaryColor\":[0,0,0],\"modRearBumper\":-1,\"modWheelVariat\":false,\"modDoorSpeaker\":-1,\"modAirFilter\":-1,\"bodyHealth\":1000.0,\"fuelLevel\":60.6,\"modDoorR\":-1,\"intcolor\":0,\"modRoof\":-1,\"color1\":0,\"modHood\":-1,\"modXenon\":1,\"modRightFender\":-1,\"modTrimB\":-1,\"modHydrolic\":-1,\"modVanityPlate\":-1,\"modTank\":-1,\"windowsBroken\":{\"5\":true,\"6\":false,\"3\":false,\"4\":true,\"1\":false,\"2\":false,\"7\":false,\"0\":false},\"wheels\":3,\"modLightbar\":-1,\"color2\":0,\"paintType\":[0,0],\"dshcolor\":0,\"modTrimA\":-1,\"modWindows\":-1,\"pearlescentColor\":0,\"tyreBurst\":{\"5\":false,\"1\":false,\"4\":false,\"0\":false},\"customPrimaryColor\":[0,0,0],\"modBrakes\":-1,\"modEngine\":-1,\"modSideSkirt\":-1,\"extras\":{\"12\":1},\"modDashboard\":-1,\"modHorns\":-1,\"modExhaust\":-1,\"tankHealth\":1000.0,\"modGrille\":-1,\"modTrunk\":-1,\"modFender\":-1,\"modSeats\":-1,\"modSmokeEnabled\":1,\"modOrnaments\":-1,\"model\":1756963312,\"modLivery\":-1,\"modArchCover\":-1,\"engineHealth\":1000.0}', '{\"mileage\":10.22,\"plate\":\"73FMN802\",\"maxhealth\":1000.0}', '', NULL, NULL, 0, 0),
('fire', '74MBY751', 1, 0, 0, '8037', NULL, 'car', '', '{\"modGrille\":-1,\"modSuspension\":-1,\"tyreBurst\":{\"5\":false,\"0\":false,\"4\":false,\"1\":false},\"windowsBroken\":{\"2\":false,\"3\":false,\"0\":false,\"1\":false,\"6\":false,\"7\":false,\"4\":true,\"5\":true},\"modWindows\":-1,\"modPlateHolder\":-1,\"modFender\":-1,\"modBrakes\":-1,\"modAPlate\":-1,\"modFrontBumper\":-1,\"fuelLevel\":69.5,\"modOrnaments\":-1,\"modSeats\":-1,\"drift\":false,\"modLivery\":-1,\"modTrimA\":-1,\"plate\":\"74MBY751\",\"modSideSkirt\":-1,\"modTransmission\":-1,\"paintType\":[0,0],\"tyreSmokeColor\":[255,255,255],\"modStruts\":-1,\"modRearBumper\":-1,\"modSteeringWheel\":-1,\"modHood\":-1,\"neonColor\":[255,0,255],\"doorsBroken\":{\"2\":false,\"3\":false,\"0\":false,\"1\":false,\"4\":false,\"5\":false},\"modBackWheels\":-1,\"tankHealth\":1000.0,\"modTrunk\":-1,\"extras\":{\"2\":false,\"11\":false,\"1\":false},\"modDashboard\":-1,\"modAerials\":-1,\"modLightbar\":-1,\"modFrontWheels\":-1,\"engineHealth\":1000.0,\"modRoof\":-1,\"modDoorSpeaker\":-1,\"modDoorR\":-1,\"modWheelVariat\":false,\"modArmor\":-1,\"modFrame\":-1,\"doors\":[false,false,false,false,false,false],\"color4\":[240,240,240],\"modAirFilter\":-1,\"modSpeakers\":-1,\"modExhaust\":-1,\"modTurbo\":false,\"modSpoilers\":-1,\"modTrimB\":-1,\"windows\":[false,false,false,false,false,false],\"tyres\":[false,false,false,false,false,false,false],\"modHydrolic\":-1,\"windowTint\":-1,\"ColorType\":[0,0],\"modSmokeEnabled\":false,\"xenonColor\":255,\"color1\":0,\"dirtLevel\":3.2,\"wheels\":3,\"modShifterLeavers\":-1,\"modTank\":-1,\"modEngineBlock\":-1,\"bodyHealth\":1000.0,\"modArchCover\":-1,\"color2\":0,\"modDial\":-1,\"model\":-1702023967,\"pearlescentColor\":0,\"intcolor\":0,\"plateIndex\":4,\"dshcolor\":0,\"modVanityPlate\":-1,\"color3\":[240,240,240],\"modRightFender\":-1,\"modXenon\":false,\"customPrimaryColor\":[240,240,240],\"modHorns\":-1,\"modEngine\":-1,\"customSecondaryColor\":[240,240,240],\"wheelColor\":156,\"modTyresBurst\":1,\"neonEnabled\":[false,false,false,false]}', '{\"mileage\":29.61,\"maxhealth\":1000.0,\"plate\":\"74MBY751\"}', '', NULL, '[{\"slot\":1,\"count\":6,\"name\":\"water\"},{\"slot\":2,\"count\":9,\"name\":\"sandwich\"},{\"slot\":11,\"count\":7,\"name\":\"medikit\"},{\"slot\":6,\"count\":5,\"name\":\"bandage\"}]', 0, 0),
('police', '77JQC320', 1, 0, 0, '8037', NULL, 'air', '', '{\"modEngineBlock\":-1,\"modHydrolic\":-1,\"tyreSmokeColor\":[255,255,255],\"plateIndex\":4,\"drift\":false,\"modShifterLeavers\":-1,\"wheelColor\":112,\"doors\":[false,false,false,false,false,false],\"plate\":\"77JQC320\",\"modPlateHolder\":-1,\"xenonColor\":255,\"modArmor\":-1,\"modLivery\":-1,\"modXenon\":false,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modAerials\":-1,\"modBackWheels\":-1,\"modTyresBurst\":false,\"modStruts\":-1,\"modTransmission\":-1,\"doorsBroken\":{\"1\":false,\"2\":false,\"0\":false},\"windows\":[true,true,false,false,true,true],\"tyres\":[false,false,false,false,false,false,false],\"modDial\":-1,\"color3\":[255,216,89],\"dirtLevel\":4.6,\"modSuspension\":-1,\"neonEnabled\":[false,false,false,false],\"wheels\":0,\"color4\":[71,14,14],\"modSteeringWheel\":-1,\"modFrontBumper\":-1,\"modTurbo\":false,\"ColorType\":[0,0],\"modSpeakers\":-1,\"tyreBurst\":{\"1\":false,\"4\":false,\"5\":false,\"0\":false},\"modRearBumper\":-1,\"modWheelVariat\":false,\"modDoorSpeaker\":-1,\"modTrimB\":-1,\"bodyHealth\":1000.0,\"fuelLevel\":92.4,\"modDoorR\":-1,\"intcolor\":22,\"modRoof\":-1,\"color1\":0,\"engineHealth\":1000.0,\"modSeats\":-1,\"modHorns\":-1,\"extras\":{\"10\":1,\"11\":1,\"1\":1,\"2\":1,\"7\":1},\"modAirFilter\":-1,\"modVanityPlate\":-1,\"modFrame\":-1,\"windowsBroken\":{\"5\":false,\"6\":false,\"3\":false,\"4\":false,\"1\":true,\"2\":false,\"7\":false,\"0\":true},\"modRightFender\":-1,\"modLightbar\":-1,\"customPrimaryColor\":[255,216,89],\"modTank\":-1,\"dshcolor\":165,\"modTrimA\":-1,\"modWindows\":-1,\"modFender\":-1,\"paintType\":[0,0],\"model\":-236216158,\"modBrakes\":-1,\"customSecondaryColor\":[71,14,14],\"modSideSkirt\":-1,\"color2\":0,\"modDashboard\":-1,\"modGrille\":-1,\"modHood\":-1,\"tankHealth\":1000.0,\"modExhaust\":-1,\"modSpoilers\":-1,\"modTrunk\":-1,\"windowTint\":-1,\"modSmokeEnabled\":false,\"modOrnaments\":-1,\"pearlescentColor\":219,\"modFrontWheels\":-1,\"modArchCover\":-1,\"modEngine\":-1}', '{\"mileage\":404.32,\"plate\":\"77JQC320\",\"maxhealth\":1000.0}', '', NULL, NULL, 0, 0),
('char1:739f45face4a989b414f43753a220053ece07406', '78GQP696', 1, 0, 0, '8154', NULL, 'car', '', '{\"modSpeakers\":-1,\"modGrille\":-1,\"modFender\":-1,\"neonEnabled\":[false,false,false,false],\"intcolor\":0,\"modTrimB\":-1,\"modEngineBlock\":-1,\"windows\":[true,true,true,true,true,true],\"paintType\":[0,0],\"modRoof\":-1,\"modLivery\":-1,\"modSideSkirt\":-1,\"modSuspension\":-1,\"xenonColor\":255,\"modDashboard\":-1,\"extras\":{\"1\":false,\"2\":false},\"engineHealth\":1000.0,\"modDial\":-1,\"modEngine\":-1,\"modXenon\":false,\"color3\":[0,0,0],\"modBrakes\":-1,\"pearlescentColor\":3,\"modTrimA\":-1,\"customPrimaryColor\":[0,0,0],\"modStruts\":-1,\"plate\":\"78GQP696\",\"color1\":0,\"modFrontBumper\":-1,\"tyres\":[false,false,false,false,false,false,false],\"tankHealth\":1000.0,\"modDoorR\":-1,\"modBackWheels\":-1,\"wheelColor\":156,\"tyreSmokeColor\":[255,255,255],\"modDoorSpeaker\":-1,\"modWindows\":-1,\"modRightFender\":-1,\"modFrame\":-1,\"modTank\":-1,\"color4\":[0,0,0],\"modHydrolic\":-1,\"modAerials\":-1,\"doors\":[false,false,false,false,false,false],\"modShifterLeavers\":-1,\"modSmokeEnabled\":false,\"modWheelVariat\":false,\"modArmor\":-1,\"modTrunk\":-1,\"modExhaust\":-1,\"modVanityPlate\":-1,\"modHood\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"dshcolor\":0,\"windowsBroken\":{\"3\":true,\"4\":true,\"5\":true,\"6\":true,\"7\":true,\"0\":true,\"1\":true,\"2\":true},\"modAirFilter\":-1,\"modSteeringWheel\":-1,\"windowTint\":-1,\"modTyresBurst\":1,\"tyreBurst\":{\"0\":false,\"4\":false},\"dirtLevel\":10.8,\"customSecondaryColor\":[0,0,0],\"modLightbar\":-1,\"neonColor\":[255,0,255],\"modPlateHolder\":-1,\"model\":-186537451,\"modTurbo\":false,\"doorsBroken\":{\"1\":false,\"0\":false},\"modSeats\":-1,\"ColorType\":[0,0],\"wheels\":6,\"fuelLevel\":67.5,\"drift\":false,\"bodyHealth\":1000.0,\"color2\":0,\"modFrontWheels\":-1,\"modTransmission\":-1,\"modArchCover\":-1,\"modOrnaments\":-1,\"modAPlate\":-1,\"modHorns\":-1,\"modRearBumper\":-1}', '{\"mileage\":41.21,\"plate\":\"78GQP696\",\"maxhealth\":1000.0}', '', NULL, NULL, 0, 0),
('megwillies', '80JON438', 1, 0, 0, '8037', NULL, 'car', '', '{\"model\":1954121213,\"modTrimA\":-1,\"modAirFilter\":-1,\"drift\":false,\"modShifterLeavers\":-1,\"modLivery\":-1,\"modBackWheels\":-1,\"neonEnabled\":[false,false,false,false],\"dirtLevel\":6.8,\"tyreSmokeColor\":[255,255,255],\"paintType\":[0,0],\"modSuspension\":-1,\"modSideSkirt\":-1,\"color1\":0,\"modRightFender\":-1,\"modLightbar\":-1,\"windowsBroken\":{\"7\":true,\"0\":true,\"1\":true,\"2\":false,\"3\":false,\"4\":true,\"5\":true,\"6\":false},\"modVanityPlate\":-1,\"modTank\":-1,\"engineHealth\":888.9,\"windows\":[true,true,false,false,true,true],\"modSteeringWheel\":-1,\"modTransmission\":-1,\"modTrimB\":-1,\"customPrimaryColor\":[0,0,0],\"modSeats\":-1,\"modHood\":-1,\"modHydrolic\":-1,\"modAPlate\":-1,\"modArmor\":-1,\"modPlateHolder\":-1,\"windowTint\":-1,\"modFrame\":-1,\"modBrakes\":-1,\"dshcolor\":0,\"modEngineBlock\":-1,\"intcolor\":0,\"modFrontBumper\":-1,\"modWindows\":-1,\"tyreBurst\":{\"5\":false,\"0\":false,\"1\":false,\"4\":false},\"color3\":[0,0,0],\"modTyresBurst\":1,\"color2\":0,\"modDashboard\":-1,\"modSpoilers\":-1,\"color4\":[0,0,0],\"modGrille\":-1,\"modSmokeEnabled\":false,\"modHorns\":-1,\"modDoorR\":-1,\"xenonColor\":255,\"pearlescentColor\":0,\"plateIndex\":0,\"plate\":\"80JON438\",\"modExhaust\":-1,\"modTrunk\":-1,\"modEngine\":-1,\"bodyHealth\":974.7,\"modDial\":-1,\"modSpeakers\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modStruts\":-1,\"customSecondaryColor\":[0,0,0],\"modFender\":-1,\"modXenon\":false,\"doors\":[false,false,false,false,false,false],\"modTurbo\":false,\"modRoof\":-1,\"doorsBroken\":{\"0\":false,\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":false},\"neonColor\":[255,0,255],\"modOrnaments\":-1,\"modRearBumper\":-1,\"modDoorSpeaker\":-1,\"modWheelVariat\":false,\"tankHealth\":997.2,\"fuelLevel\":29.1,\"extras\":[],\"modFrontWheels\":-1,\"ColorType\":[0,0],\"wheels\":1,\"modArchCover\":-1,\"wheelColor\":156,\"modAerials\":-1}', '{\"maxhealth\":1000.0,\"mileage\":749.47,\"plate\":\"80JON438\"}', '', '[]', NULL, 0, 0),
('police', '82OOO838', 1, 0, 0, '8037', NULL, 'car', '', '{\"extras\":{\"1\":false,\"3\":false,\"2\":false,\"5\":false,\"4\":1,\"7\":false,\"6\":false,\"9\":false,\"8\":false,\"12\":false,\"11\":false,\"10\":false},\"dirtLevel\":3.1,\"modSuspension\":-1,\"modWheelVariat\":false,\"pearlescentColor\":0,\"doors\":[false,false,false,false,false,false],\"bodyHealth\":996.2,\"modHood\":-1,\"modFender\":-1,\"modSideSkirt\":-1,\"modDoorR\":-1,\"modDoorSpeaker\":-1,\"modTrimB\":-1,\"neonEnabled\":[false,false,false,false],\"modVanityPlate\":-1,\"modEngineBlock\":-1,\"modGrille\":-1,\"dshcolor\":0,\"color3\":[8,8,8],\"modLightbar\":-1,\"modExhaust\":-1,\"paintType\":[0,0],\"neonColor\":[255,0,255],\"engineHealth\":983.7,\"tyreSmokeColor\":[255,255,255],\"modHorns\":-1,\"color1\":0,\"tankHealth\":1000.0,\"tyreBurst\":{\"5\":false,\"4\":false,\"0\":false,\"1\":false},\"modDial\":-1,\"modSeats\":-1,\"modPlateHolder\":-1,\"modFrame\":-1,\"windowTint\":-1,\"modTyresBurst\":1,\"modHydrolic\":-1,\"fuelLevel\":43.9,\"wheelColor\":0,\"modSpoilers\":-1,\"customSecondaryColor\":[0,16,41],\"color2\":0,\"modSteeringWheel\":-1,\"modTank\":-1,\"color4\":[0,16,41],\"modTrunk\":-1,\"modBrakes\":-1,\"modTransmission\":-1,\"modStruts\":-1,\"modAPlate\":-1,\"modDashboard\":-1,\"windowsBroken\":{\"1\":false,\"0\":false,\"3\":false,\"2\":false,\"5\":true,\"4\":true,\"7\":false,\"6\":false},\"modSmokeEnabled\":false,\"modRearBumper\":-1,\"modAirFilter\":-1,\"plateIndex\":4,\"modFrontWheels\":-1,\"wheels\":0,\"modWindows\":-1,\"modArmor\":-1,\"drift\":false,\"modLivery\":-1,\"modTrimA\":-1,\"modSpeakers\":-1,\"intcolor\":0,\"xenonColor\":255,\"modRoof\":-1,\"windows\":[false,false,false,false,false,true],\"modShifterLeavers\":-1,\"modArchCover\":-1,\"customPrimaryColor\":[8,8,8],\"modAerials\":-1,\"doorsBroken\":{\"1\":false,\"0\":false,\"3\":false,\"2\":false,\"5\":false,\"4\":false,\"6\":false},\"modEngine\":-1,\"model\":129664328,\"modBackWheels\":-1,\"modXenon\":false,\"modFrontBumper\":-1,\"modRightFender\":-1,\"tyres\":[false,false,false,false,false,false,false],\"plate\":\"82OOO838\",\"ColorType\":[0,0],\"modTurbo\":false,\"modOrnaments\":-1}', '{\"plate\":\"82OOO838\",\"maxhealth\":1000.0,\"mileage\":228.94}', '', NULL, NULL, 0, 0),
('fire', '85VFM927', 1, 0, 0, '8037', NULL, 'car', '', '{\"modTurbo\":false,\"modAPlate\":-1,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"modRightFender\":-1,\"modLivery\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modTrimA\":-1,\"modVanityPlate\":-1,\"windowsBroken\":{\"1\":false,\"2\":false,\"7\":true,\"0\":false,\"5\":true,\"6\":false,\"3\":false,\"4\":true},\"neonColor\":[255,0,255],\"modAerials\":-1,\"modEngine\":-1,\"doors\":[false,false,false,false,false,false],\"modXenon\":false,\"modArmor\":-1,\"modGrille\":-1,\"modHorns\":-1,\"modHydrolic\":-1,\"modTank\":-1,\"wheels\":1,\"modBackWheels\":-1,\"modAirFilter\":-1,\"extras\":{\"1\":false,\"2\":1,\"10\":1},\"modHood\":-1,\"modDoorSpeaker\":-1,\"modTransmission\":-1,\"windows\":[false,false,false,false,false,true],\"dshcolor\":0,\"customPrimaryColor\":[240,240,240],\"modSideSkirt\":-1,\"modStruts\":-1,\"modSteeringWheel\":-1,\"modDoorR\":-1,\"paintType\":[7,7],\"intcolor\":0,\"neonEnabled\":[false,false,false,false],\"modRearBumper\":-1,\"color3\":[240,240,240],\"color1\":0,\"modDial\":-1,\"windowTint\":-1,\"tankHealth\":1000.0,\"modSpeakers\":-1,\"pearlescentColor\":0,\"bodyHealth\":996.0,\"modTyresBurst\":1,\"customSecondaryColor\":[240,240,240],\"modFender\":-1,\"modWheelVariat\":false,\"modSpoilers\":-1,\"color2\":0,\"plate\":\"85VFM927\",\"modSuspension\":-1,\"wheelColor\":156,\"modEngineBlock\":-1,\"color4\":[240,240,240],\"modTrunk\":-1,\"modPlateHolder\":-1,\"modFrontBumper\":-1,\"modWindows\":-1,\"modShifterLeavers\":-1,\"modTrimB\":-1,\"modSmokeEnabled\":false,\"engineHealth\":986.9,\"modSeats\":-1,\"tyreBurst\":{\"5\":false,\"0\":false,\"1\":false,\"4\":false},\"modDashboard\":-1,\"xenonColor\":255,\"ColorType\":[-1,-1],\"model\":1500677296,\"modArchCover\":-1,\"modBrakes\":-1,\"plateIndex\":0,\"doorsBroken\":{\"1\":false,\"2\":false,\"0\":false,\"5\":false,\"6\":false,\"3\":false,\"4\":false},\"fuelLevel\":95.4,\"modRoof\":-1,\"dirtLevel\":4.8,\"modLightbar\":-1,\"drift\":false,\"modFrontWheels\":-1,\"modOrnaments\":-1,\"modExhaust\":-1}', '{\"plate\":\"85VFM927\",\"mileage\":514.09,\"maxhealth\":1000.0}', '', '[{\"metadata\":{\"components\":[],\"durability\":100,\"ammo\":100},\"slot\":3,\"count\":1,\"name\":\"WEAPON_FIREEXTINGUISHER\"},{\"slot\":1,\"count\":11,\"name\":\"medikit\"},{\"slot\":2,\"count\":13,\"name\":\"bandage\"}]', NULL, 0, 0),
('char1:6c8c6ae8c062d2f8c67c6f72bfedd76aea374840', '87CGK860', 1, 0, 0, '8037', NULL, 'car', '', '{\"dirtLevel\":3.0,\"modAPlate\":-1,\"modTrimA\":-1,\"modBackWheels\":-1,\"drift\":false,\"xenonColor\":255,\"neonColor\":[255,0,255],\"tyreBurst\":{\"5\":false,\"0\":false,\"1\":false,\"4\":false},\"modTurbo\":false,\"modArchCover\":-1,\"modXenon\":false,\"modHood\":-1,\"modRearBumper\":-1,\"pearlescentColor\":111,\"modHydrolic\":-1,\"wheelColor\":156,\"modShifterLeavers\":-1,\"modSeats\":-1,\"windowsBroken\":{\"1\":false,\"2\":false,\"3\":false,\"4\":true,\"5\":true,\"6\":false,\"7\":false,\"0\":false},\"modFrame\":-1,\"modDial\":-1,\"modTyresBurst\":1,\"modVanityPlate\":-1,\"modFender\":-1,\"extras\":{\"11\":1,\"10\":false},\"modOrnaments\":-1,\"modArmor\":-1,\"modRoof\":-1,\"modFrontWheels\":-1,\"modEngine\":-1,\"modSpoilers\":-1,\"modAerials\":-1,\"neonEnabled\":[false,false,false,false],\"color4\":[0,0,0],\"color2\":4,\"modRightFender\":-1,\"ColorType\":[0,0],\"wheels\":5,\"modTransmission\":-1,\"engineHealth\":1000.0,\"modPlateHolder\":-1,\"model\":-1809822327,\"modWindows\":-1,\"modSideSkirt\":-1,\"color3\":[0,0,0],\"fuelLevel\":50.0,\"plateIndex\":0,\"modStruts\":-1,\"modSuspension\":-1,\"modBrakes\":-1,\"modDoorSpeaker\":-1,\"modEngineBlock\":-1,\"modDoorR\":-1,\"windowTint\":-1,\"tankHealth\":1000.0,\"modWheelVariat\":false,\"modTrunk\":-1,\"modSpeakers\":-1,\"modLivery\":-1,\"dshcolor\":0,\"modSteeringWheel\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modHorns\":-1,\"modAirFilter\":-1,\"customPrimaryColor\":[0,0,0],\"doorsBroken\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":false,\"0\":false},\"modExhaust\":-1,\"plate\":\"87CGK860\",\"intcolor\":0,\"modLightbar\":-1,\"bodyHealth\":1000.0,\"modTank\":-1,\"color1\":4,\"modSmokeEnabled\":false,\"paintType\":[0,0],\"tyreSmokeColor\":[255,255,255],\"customSecondaryColor\":[0,0,0],\"modDashboard\":-1,\"modGrille\":-1}', '{\"plate\":\"nil\",\"mileage\":0.0,\"maxhealth\":1000.0}', '', NULL, NULL, 0, 0),
('ambulance', '87JJU448', 1, 0, 0, '8037', NULL, 'car', '', '{\"modHydrolic\":-1,\"modRightFender\":-1,\"paintType\":[0,0],\"modSuspension\":-1,\"modTrimA\":-1,\"modAerials\":-1,\"xenonColor\":255,\"modLivery\":-1,\"ColorType\":[0,0],\"modDoorSpeaker\":-1,\"modFrontWheels\":-1,\"plate\":\"87JJU448\",\"tankHealth\":999.0,\"modWheelVariat\":false,\"modTransmission\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modExhaust\":-1,\"modFender\":-1,\"tyreBurst\":{\"4\":false,\"0\":false,\"5\":false,\"1\":false},\"neonColor\":[255,0,255],\"customPrimaryColor\":[255,255,255],\"modHorns\":-1,\"extras\":{\"1\":false},\"customSecondaryColor\":[255,255,255],\"modAPlate\":-1,\"modGrille\":-1,\"plateIndex\":4,\"model\":-794924083,\"modArmor\":-1,\"modRoof\":-1,\"modSeats\":-1,\"modTank\":-1,\"modArchCover\":-1,\"tyreSmokeColor\":[255,255,255],\"modVanityPlate\":-1,\"modSpoilers\":-1,\"neonEnabled\":[false,false,false,false],\"windowsBroken\":{\"4\":true,\"3\":false,\"2\":false,\"1\":false,\"0\":false,\"7\":true,\"6\":false,\"5\":true},\"dshcolor\":0,\"engineHealth\":975.0,\"modSteeringWheel\":-1,\"modHood\":-1,\"modLightbar\":-1,\"modFrame\":-1,\"modEngineBlock\":-1,\"modTrunk\":-1,\"modSpeakers\":-1,\"modDial\":-1,\"pearlescentColor\":134,\"modSmokeEnabled\":false,\"drift\":false,\"modWindows\":-1,\"fuelLevel\":62.6,\"wheelColor\":134,\"bodyHealth\":994.0,\"modTyresBurst\":1,\"modAirFilter\":-1,\"modPlateHolder\":-1,\"modDashboard\":-1,\"color2\":0,\"modBrakes\":-1,\"windowTint\":-1,\"modRearBumper\":-1,\"wheels\":0,\"modShifterLeavers\":-1,\"intcolor\":0,\"color1\":0,\"dirtLevel\":2.2,\"modEngine\":-1,\"modDoorR\":-1,\"doors\":[false,false,false,false,false,false],\"modTrimB\":-1,\"modTurbo\":false,\"modFrontBumper\":-1,\"modStruts\":-1,\"modXenon\":false,\"modSideSkirt\":-1,\"doorsBroken\":{\"4\":false,\"3\":false,\"2\":false,\"1\":false,\"0\":false,\"5\":false},\"color3\":[255,255,255],\"modOrnaments\":-1,\"color4\":[255,255,255],\"windows\":[false,false,false,false,false,true],\"modBackWheels\":-1}', '{\"mileage\":292.27,\"maxhealth\":1000.0,\"plate\":\"87JJU448\"}', '', '[{\"slot\":1,\"count\":26,\"name\":\"medikit\"}]', NULL, 0, 0),
('char2:d3da62f33fe647236cdb1840121f6c72fbec6284', '87TUB729', 1, 0, 0, '8037', NULL, 'car', '', '{\"modRightFender\":-1,\"modTurbo\":1,\"dirtLevel\":0.1,\"modWindows\":-1,\"modBackWheels\":-1,\"wheels\":7,\"neonEnabled\":[1,1,1,1],\"modHydrolic\":-1,\"dshcolor\":65,\"extras\":[],\"pearlescentColor\":0,\"xenonColor\":255,\"modSuspension\":0,\"modTrimB\":-1,\"tyreSmokeColor\":[0,0,1],\"modArchCover\":-1,\"color3\":[3,27,120],\"modSideSkirt\":2,\"modShifterLeavers\":-1,\"tyreBurst\":{\"4\":false,\"1\":false,\"5\":false,\"0\":false},\"modVanityPlate\":-1,\"modTrimA\":-1,\"modTransmission\":-1,\"ColorType\":[-1,-1],\"neonColor\":[255,255,255],\"modFrontBumper\":2,\"modDashboard\":-1,\"plateIndex\":2,\"modEngine\":3,\"modTank\":-1,\"modExhaust\":-1,\"modRearBumper\":1,\"modSpoilers\":1,\"modDoorR\":-1,\"modHood\":-1,\"modFrontWheels\":17,\"paintType\":[7,7],\"engineHealth\":985.8,\"modRoof\":-1,\"modDoorSpeaker\":-1,\"intcolor\":93,\"modSteeringWheel\":-1,\"modXenon\":1,\"modHorns\":-1,\"fuelLevel\":58.9,\"customSecondaryColor\":[0,0,0],\"modOrnaments\":-1,\"modSpeakers\":-1,\"wheelColor\":11,\"modStruts\":-1,\"color1\":0,\"modWheelVariat\":false,\"tankHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"modLivery\":-1,\"modAirFilter\":-1,\"modFrame\":-1,\"customPrimaryColor\":[3,27,120],\"modArmor\":-1,\"modPlateHolder\":-1,\"windowsBroken\":{\"3\":false,\"2\":false,\"5\":true,\"4\":true,\"7\":false,\"6\":false,\"1\":false,\"0\":false},\"modBrakes\":2,\"plate\":\"87TUB729\",\"modFender\":-1,\"windows\":[false,false,false,false,false,true],\"color2\":117,\"modTrunk\":-1,\"modSmokeEnabled\":1,\"modLightbar\":-1,\"modSeats\":-1,\"modGrille\":-1,\"drift\":false,\"model\":-1529242755,\"doors\":[false,false,false,false,false,false],\"modDial\":-1,\"modAPlate\":-1,\"modAerials\":-1,\"windowTint\":5,\"color4\":[0,0,0],\"bodyHealth\":996.8,\"doorsBroken\":{\"3\":false,\"2\":false,\"5\":false,\"4\":false,\"6\":false,\"1\":false,\"0\":false},\"modTyresBurst\":1,\"modEngineBlock\":-1}', '{\"maxhealth\":1000.0,\"mileage\":116.17,\"plate\":\"87TUB729\"}', '', NULL, NULL, 0, 0),
('sanandreas', '87YZM764', 1, 0, 0, '8037', NULL, 'car', '', '{\"modTank\":-1,\"modFender\":-1,\"modAPlate\":-1,\"modAirFilter\":-1,\"modFrontWheels\":-1,\"modSteeringWheel\":-1,\"modBackWheels\":-1,\"modTrimA\":-1,\"modDial\":-1,\"engineHealth\":1000.0,\"wheels\":3,\"modSuspension\":-1,\"doors\":[false,false,false,false,false,false],\"windowsBroken\":{\"5\":true,\"4\":true,\"3\":false,\"2\":false,\"1\":false,\"0\":false,\"7\":false,\"6\":false},\"bodyHealth\":1000.0,\"modTrunk\":-1,\"modFrontBumper\":-1,\"tankHealth\":1000.0,\"modWheelVariat\":false,\"ColorType\":[0,0],\"modDashboard\":-1,\"modBrakes\":-1,\"modHood\":-1,\"modArchCover\":-1,\"modVanityPlate\":-1,\"paintType\":[0,0],\"modArmor\":-1,\"modSpeakers\":-1,\"modDoorR\":-1,\"doorsBroken\":{\"5\":false,\"4\":false,\"3\":false,\"2\":false,\"1\":false,\"0\":false,\"6\":false},\"intcolor\":0,\"modRearBumper\":-1,\"modExhaust\":-1,\"modSideSkirt\":-1,\"modHorns\":-1,\"modHydrolic\":-1,\"modPlateHolder\":-1,\"modShifterLeavers\":-1,\"dshcolor\":0,\"model\":-1129745322,\"customSecondaryColor\":[0,0,0],\"tyres\":[false,false,false,false,false,false,false],\"modStruts\":-1,\"windowTint\":-1,\"modTrimB\":-1,\"tyreSmokeColor\":[0,0,1],\"color1\":0,\"modRoof\":-1,\"plate\":\"87YZM764\",\"windows\":[false,false,false,false,false,true],\"color2\":0,\"modEngineBlock\":-1,\"modTyresBurst\":false,\"modTurbo\":1,\"customPrimaryColor\":[0,0,0],\"xenonColor\":255,\"fuelLevel\":63.8,\"modGrille\":-1,\"neonEnabled\":[false,false,false,false],\"extras\":{\"12\":1},\"neonColor\":[255,0,255],\"color4\":[0,0,0],\"modXenon\":1,\"color3\":[0,0,0],\"plateIndex\":1,\"drift\":false,\"modEngine\":-1,\"modRightFender\":-1,\"modAerials\":-1,\"modWindows\":-1,\"modDoorSpeaker\":-1,\"wheelColor\":156,\"modSpoilers\":-1,\"modSmokeEnabled\":1,\"tyreBurst\":{\"5\":false,\"4\":false,\"1\":false,\"0\":false},\"modTransmission\":-1,\"modSeats\":-1,\"modFrame\":-1,\"dirtLevel\":0.1,\"modLightbar\":-1,\"pearlescentColor\":0,\"modLivery\":-1,\"modOrnaments\":-1}', '{\"maxhealth\":1000.0,\"plate\":\"87YZM764\",\"mileage\":0.0}', '', NULL, NULL, 0, 0),
('sanandreas', '89UUN591', 1, 0, 0, '8037', NULL, 'car', '', '{\"modDoorR\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modFrame\":-1,\"modDial\":-1,\"modTyresBurst\":false,\"modAerials\":-1,\"customSecondaryColor\":[0,0,0],\"modArmor\":-1,\"modTurbo\":1,\"drift\":false,\"color1\":0,\"modShifterLeavers\":-1,\"customPrimaryColor\":[0,0,0],\"modRightFender\":-1,\"dshcolor\":0,\"modFrontWheels\":-1,\"intcolor\":0,\"modSmokeEnabled\":1,\"wheels\":3,\"doorsBroken\":{\"6\":false,\"5\":false,\"4\":false,\"3\":false,\"2\":false,\"1\":false,\"0\":false},\"windowsBroken\":{\"7\":false,\"6\":false,\"5\":true,\"4\":true,\"3\":false,\"2\":false,\"1\":false,\"0\":false},\"modXenon\":1,\"modVanityPlate\":-1,\"windows\":[false,false,false,false,false,true],\"extras\":{\"12\":false},\"modExhaust\":-1,\"fuelLevel\":62.9,\"modTrunk\":-1,\"modSpeakers\":-1,\"modSuspension\":-1,\"modRoof\":-1,\"modBrakes\":-1,\"pearlescentColor\":0,\"modSteeringWheel\":-1,\"modTrimB\":-1,\"modSeats\":-1,\"modTrimA\":-1,\"modStruts\":-1,\"ColorType\":[0,0],\"modPlateHolder\":-1,\"modFender\":-1,\"xenonColor\":255,\"windowTint\":-1,\"doors\":[false,false,false,false,false,false],\"modWheelVariat\":false,\"wheelColor\":156,\"neonEnabled\":[false,false,false,false],\"modEngineBlock\":-1,\"modAirFilter\":-1,\"modEngine\":-1,\"modHorns\":-1,\"paintType\":[0,0],\"tyres\":[false,false,false,false,false,false,false],\"modLivery\":-1,\"dirtLevel\":0.4,\"modHood\":-1,\"color3\":[0,0,0],\"modOrnaments\":-1,\"model\":1157867945,\"plateIndex\":1,\"modTransmission\":-1,\"engineHealth\":1000.0,\"tyreSmokeColor\":[0,0,1],\"modLightbar\":-1,\"modFrontBumper\":-1,\"modTank\":-1,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modWindows\":-1,\"plate\":\"89UUN591\",\"modBackWheels\":-1,\"color2\":0,\"modDashboard\":-1,\"bodyHealth\":1000.0,\"modRearBumper\":-1,\"modHydrolic\":-1,\"modDoorSpeaker\":-1,\"modSpoilers\":-1,\"tankHealth\":1000.0,\"modArchCover\":-1,\"color4\":[0,0,0],\"tyreBurst\":{\"0\":false,\"1\":false,\"5\":false,\"4\":false}}', '{\"maxhealth\":1000.0,\"plate\":\"89UUN591\",\"mileage\":0.0}', '', NULL, NULL, 0, 0),
('char1:f3e71e94ead0e0b54c28491a2b012f196ab8d472', '91HFG877', 1, 0, 0, '7293', NULL, 'car', '', '{\"modSmokeEnabled\":1,\"modWheelVariat\":false,\"paintType\":[0,0],\"pearlescentColor\":10,\"modDoorR\":-1,\"modShifterLeavers\":-1,\"modVanityPlate\":-1,\"wheelColor\":0,\"modHorns\":-1,\"modHood\":-1,\"modTurbo\":1,\"modLightbar\":-1,\"customSecondaryColor\":[0,0,0],\"modExhaust\":-1,\"modEngineBlock\":-1,\"plateIndex\":0,\"color4\":[0,0,0],\"engineHealth\":956.0,\"modDial\":-1,\"modArchCover\":-1,\"modBackWheels\":-1,\"ColorType\":[0,0],\"xenonColor\":255,\"modBrakes\":2,\"modEngine\":-1,\"modTrimB\":-1,\"bodyHealth\":987.7,\"modFrame\":-1,\"modWindows\":-1,\"modArmor\":-1,\"extras\":{\"1\":1,\"2\":1,\"3\":1},\"modTransmission\":2,\"modAerials\":-1,\"modFrontWheels\":-1,\"doors\":[false,false,false,false,false,false],\"modAPlate\":-1,\"modPlateHolder\":-1,\"windowTint\":-1,\"modSpeakers\":-1,\"wheels\":4,\"modStruts\":-1,\"tankHealth\":1000.0,\"fuelLevel\":98.9,\"intcolor\":0,\"dirtLevel\":15.0,\"windowsBroken\":{\"4\":true,\"5\":true,\"2\":false,\"3\":false,\"0\":false,\"1\":false,\"6\":false,\"7\":false},\"modDashboard\":-1,\"dshcolor\":0,\"neonEnabled\":[false,false,false,false],\"modAirFilter\":-1,\"plate\":\"91HFG877\",\"modSpoilers\":-1,\"modSeats\":-1,\"modDoorSpeaker\":-1,\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modTrunk\":-1,\"neonColor\":[255,0,255],\"modGrille\":-1,\"modRoof\":-1,\"modLivery\":-1,\"modSuspension\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modFender\":-1,\"modSteeringWheel\":-1,\"tyreBurst\":{\"0\":false,\"1\":false,\"5\":false,\"4\":false},\"modFrontBumper\":-1,\"model\":-1511005096,\"drift\":false,\"modSideSkirt\":-1,\"customPrimaryColor\":[0,0,0],\"modOrnaments\":-1,\"modXenon\":false,\"modTank\":-1,\"modTrimA\":-1,\"color1\":0,\"windows\":[false,false,false,false,false,true],\"modRearBumper\":-1,\"modHydrolic\":-1,\"doorsBroken\":{\"4\":false,\"5\":false,\"2\":false,\"3\":false,\"0\":false,\"1\":false,\"6\":false},\"color2\":0,\"modTyresBurst\":1,\"color3\":[0,0,0]}', '{\"plate\":\"91HFG877\",\"maxhealth\":1000.0,\"mileage\":953.7}', '', '[{\"name\":\"lahev\",\"slot\":1,\"count\":34},{\"name\":\"pet\",\"slot\":2,\"count\":24},{\"name\":\"hotdog\",\"slot\":3,\"count\":3},{\"name\":\"cola\",\"slot\":4,\"count\":54},{\"name\":\"water\",\"slot\":5,\"count\":55},{\"name\":\"phone\",\"slot\":6,\"count\":1},{\"name\":\"phone\",\"slot\":7,\"count\":1},{\"metadata\":{\"lbPhoneNumber\":\"3555338\"},\"name\":\"phone\",\"slot\":8,\"count\":1},{\"name\":\"phone\",\"slot\":9,\"count\":1},{\"name\":\"phone\",\"slot\":10,\"count\":1},{\"name\":\"phone\",\"slot\":11,\"count\":1},{\"name\":\"phone\",\"slot\":12,\"count\":1},{\"name\":\"phone\",\"slot\":13,\"count\":1},{\"name\":\"phone\",\"slot\":14,\"count\":1},{\"name\":\"phone\",\"slot\":15,\"count\":1},{\"name\":\"phone\",\"slot\":16,\"count\":1},{\"name\":\"phone\",\"slot\":17,\"count\":1},{\"name\":\"phone\",\"slot\":18,\"count\":1},{\"name\":\"phone\",\"slot\":19,\"count\":1},{\"name\":\"phone\",\"slot\":20,\"count\":1},{\"name\":\"phone\",\"slot\":21,\"count\":1},{\"name\":\"phone\",\"slot\":22,\"count\":1},{\"name\":\"phone\",\"slot\":23,\"count\":1},{\"name\":\"phone\",\"slot\":24,\"count\":1},{\"name\":\"phone\",\"slot\":25,\"count\":1},{\"name\":\"phone\",\"slot\":26,\"count\":1},{\"name\":\"phone\",\"slot\":27,\"count\":1},{\"name\":\"phone\",\"slot\":28,\"count\":1},{\"name\":\"phone\",\"slot\":29,\"count\":1},{\"name\":\"phone\",\"slot\":30,\"count\":1},{\"name\":\"phone\",\"slot\":31,\"count\":1},{\"name\":\"phone\",\"slot\":32,\"count\":1},{\"name\":\"phone\",\"slot\":33,\"count\":1},{\"name\":\"phone\",\"slot\":34,\"count\":1},{\"name\":\"ammo-9\",\"slot\":51,\"count\":23}]', '[{\"name\":\"weed\",\"slot\":1,\"count\":14},{\"name\":\"money\",\"slot\":2,\"count\":230000},{\"metadata\":{\"components\":[],\"durability\":100},\"name\":\"WEAPON_CROWBAR\",\"slot\":3,\"count\":1},{\"name\":\"rolling_paper\",\"slot\":4,\"count\":1},{\"name\":\"tools\",\"slot\":5,\"count\":5},{\"name\":\"bandage\",\"slot\":6,\"count\":90},{\"name\":\"clothe\",\"slot\":7,\"count\":46},{\"name\":\"fixkit\",\"slot\":9,\"count\":1},{\"name\":\"towing_rope\",\"slot\":10,\"count\":1},{\"name\":\"lockpick\",\"slot\":11,\"count\":58}]', 0, 0),
('char1:a8cfd975ad8e17a808e69fea1873127e0e8dd9e9', '91SZD285', 1, 0, 0, '8037', NULL, 'car', '', '{\"modSpoilers\":-1,\"modWheelVariat\":false,\"modShifterLeavers\":-1,\"bodyHealth\":1000.0,\"dshcolor\":0,\"wheels\":6,\"color4\":[0,0,0],\"modTurbo\":false,\"modAirFilter\":-1,\"modSideSkirt\":-1,\"modAerials\":-1,\"xenonColor\":255,\"modDoorSpeaker\":-1,\"modDashboard\":-1,\"neonEnabled\":[false,false,false,false],\"modRightFender\":-1,\"modSpeakers\":-1,\"tyreBurst\":{\"0\":false,\"4\":false},\"modXenon\":false,\"fuelLevel\":0.0,\"color1\":2,\"modArmor\":-1,\"plateIndex\":4,\"dirtLevel\":8.0,\"doorsBroken\":{\"1\":false,\"0\":false},\"modHorns\":-1,\"modVanityPlate\":-1,\"modBackWheels\":-1,\"modEngine\":-1,\"color2\":111,\"windowTint\":-1,\"windowsBroken\":{\"5\":true,\"6\":true,\"3\":true,\"4\":true,\"1\":true,\"2\":true,\"7\":true,\"0\":true},\"engineHealth\":1000.0,\"wheelColor\":156,\"neonColor\":[255,0,255],\"drift\":false,\"modHood\":-1,\"modFrontWheels\":-1,\"modLivery\":-1,\"tyreSmokeColor\":[255,255,255],\"modAPlate\":-1,\"modTransmission\":-1,\"modTyresBurst\":1,\"model\":1131912276,\"modGrille\":-1,\"paintType\":[0,0],\"modRearBumper\":-1,\"modDial\":-1,\"modTrunk\":-1,\"customPrimaryColor\":[0,0,0],\"modLightbar\":-1,\"modWindows\":-1,\"modSteeringWheel\":-1,\"modTrimB\":-1,\"customSecondaryColor\":[0,0,0],\"extras\":[],\"modFrontBumper\":-1,\"ColorType\":[0,0],\"pearlescentColor\":5,\"modTank\":-1,\"modDoorR\":-1,\"modStruts\":-1,\"intcolor\":0,\"color3\":[0,0,0],\"modSmokeEnabled\":false,\"modHydrolic\":-1,\"modFrame\":-1,\"modPlateHolder\":-1,\"modEngineBlock\":-1,\"modTrimA\":-1,\"modSuspension\":-1,\"modFender\":-1,\"tankHealth\":1000.0,\"plate\":\"91SZD285\",\"modArchCover\":-1,\"modSeats\":-1,\"modRoof\":-1,\"modBrakes\":-1,\"modExhaust\":-1,\"modOrnaments\":-1}', '{\"plate\":\"nil\",\"mileage\":0.0,\"maxhealth\":1000.0}', '', NULL, NULL, 0, 0);
INSERT INTO `owned_vehicles` (`owner`, `plate`, `in_garage`, `impound`, `property`, `garage_id`, `image`, `garage_type`, `job_personalowned`, `vehicle`, `adv_stats`, `impound_data`, `trunk`, `glovebox`, `code`, `stolen`) VALUES
('lostmc', '93OIR714', 1, 0, 0, '8037', NULL, 'car', '', '{\"modStruts\":-1,\"modAirFilter\":-1,\"wheels\":1,\"modPlateHolder\":-1,\"modWheelVariat\":false,\"modHydrolic\":-1,\"modBrakes\":2,\"modShifterLeavers\":-1,\"color4\":[10,10,10],\"pearlescentColor\":0,\"modTransmission\":2,\"tankHealth\":1000.0,\"modDoorR\":-1,\"engineHealth\":1000.0,\"fuelLevel\":54.1,\"intcolor\":156,\"windowsBroken\":{\"0\":false,\"1\":true,\"2\":false,\"3\":true,\"4\":true,\"5\":true,\"6\":false,\"7\":false},\"modHood\":-1,\"model\":1026149675,\"modSpeakers\":-1,\"modTrunk\":-1,\"modFrontBumper\":-1,\"modRoof\":-1,\"bodyHealth\":1000.0,\"color3\":[10,10,10],\"modBackWheels\":-1,\"modEngine\":3,\"plate\":\"93OIR714\",\"neonEnabled\":[false,false,false,false],\"customSecondaryColor\":[10,10,10],\"modGrille\":-1,\"modVanityPlate\":-1,\"customPrimaryColor\":[10,10,10],\"doors\":[false,false,false,false,false,false],\"modAerials\":-1,\"modRearBumper\":-1,\"ColorType\":[-1,-1],\"modWindows\":-1,\"modAPlate\":-1,\"drift\":false,\"modSuspension\":-1,\"modEngineBlock\":-1,\"modExhaust\":-1,\"tyreBurst\":{\"0\":false,\"5\":false,\"1\":false,\"4\":false},\"paintType\":[7,7],\"doorsBroken\":{\"0\":false,\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":false},\"modTrimA\":-1,\"modArchCover\":-1,\"color2\":0,\"modFender\":-1,\"modDial\":-1,\"plateIndex\":1,\"windowTint\":1,\"tyreSmokeColor\":[255,255,255],\"modSteeringWheel\":-1,\"modTyresBurst\":1,\"modRightFender\":-1,\"extras\":[],\"windows\":[false,true,false,true,false,true],\"modDoorSpeaker\":-1,\"wheelColor\":112,\"neonColor\":[255,0,255],\"modDashboard\":-1,\"modHorns\":-1,\"modOrnaments\":-1,\"modTank\":-1,\"modArmor\":-1,\"modSpoilers\":0,\"modSeats\":-1,\"modTrimB\":-1,\"modXenon\":false,\"modLightbar\":-1,\"modTurbo\":false,\"modLivery\":-1,\"dirtLevel\":0.0,\"xenonColor\":255,\"modFrame\":0,\"tyres\":[false,false,false,false,false,false,false],\"modSmokeEnabled\":1,\"dshcolor\":0,\"modFrontWheels\":-1,\"modSideSkirt\":-1,\"color1\":0}', '{\"maxhealth\":1000.0,\"mileage\":1302.79,\"plate\":\"93OIR714\"}', '', '[{\"count\":10,\"name\":\"weed_seed\",\"slot\":1},{\"count\":14,\"name\":\"kvetinac\",\"slot\":2},{\"count\":5,\"name\":\"fertilizer\",\"slot\":4},{\"count\":2,\"name\":\"bandage\",\"slot\":56},{\"count\":6,\"name\":\"weed\",\"slot\":15},{\"count\":5,\"name\":\"lopatka\",\"slot\":11},{\"count\":5,\"name\":\"zahradnicky_kos\",\"slot\":12},{\"count\":213,\"name\":\"rolling_paper\",\"slot\":20},{\"count\":5,\"name\":\"lockpick\",\"slot\":61}]', '[{\"slot\":2,\"name\":\"fertilizer\",\"count\":5},{\"slot\":11,\"name\":\"oxycutter\",\"count\":4}]', 0, 0),
('police', '94GPS987', 1, 0, 0, '8037', NULL, 'car', '', '{\"plateIndex\":4,\"wheelColor\":156,\"modDoorR\":-1,\"modWheelVariat\":false,\"engineHealth\":898.4,\"modArchCover\":-1,\"drift\":false,\"tankHealth\":1000.0,\"modFrontBumper\":-1,\"modAPlate\":-1,\"modTrimA\":-1,\"color2\":0,\"modShifterLeavers\":-1,\"modTrunk\":-1,\"neonEnabled\":[false,false,false,false],\"customSecondaryColor\":[8,8,8],\"dirtLevel\":1.5,\"paintType\":[0,0],\"modPlateHolder\":-1,\"modFrame\":-1,\"windowsBroken\":{\"6\":false,\"5\":false,\"0\":true,\"7\":false,\"2\":false,\"1\":true,\"4\":false,\"3\":false},\"customPrimaryColor\":[240,240,240],\"ColorType\":[0,0],\"modStruts\":-1,\"modLivery\":-1,\"modDashboard\":-1,\"modAerials\":-1,\"modLightbar\":-1,\"modSpeakers\":-1,\"modSideSkirt\":-1,\"windowTint\":-1,\"modXenon\":false,\"modExhaust\":-1,\"doors\":[false,false,false,false,false,false],\"color1\":0,\"modDoorSpeaker\":-1,\"modTurbo\":false,\"modGrille\":-1,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"intcolor\":0,\"modSmokeEnabled\":false,\"modTyresBurst\":1,\"modRightFender\":-1,\"doorsBroken\":{\"6\":false,\"5\":false,\"0\":false,\"2\":false,\"1\":false,\"4\":false,\"3\":false},\"modSpoilers\":-1,\"modSuspension\":-1,\"modTrimB\":-1,\"xenonColor\":255,\"color4\":[8,8,8],\"modAirFilter\":-1,\"fuelLevel\":43.0,\"extras\":{\"10\":1,\"7\":1},\"modArmor\":-1,\"modTank\":-1,\"model\":-815291495,\"modHydrolic\":-1,\"tyreSmokeColor\":[255,255,255],\"modEngineBlock\":-1,\"neonColor\":[255,0,255],\"pearlescentColor\":1,\"modDial\":-1,\"modSeats\":-1,\"plate\":\"94GPS987\",\"windows\":[true,true,false,false,true,true],\"modHood\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modBrakes\":-1,\"dshcolor\":0,\"modFender\":-1,\"modOrnaments\":-1,\"modWindows\":-1,\"tyreBurst\":{\"4\":false,\"5\":false,\"0\":false,\"1\":false},\"modEngine\":-1,\"modHorns\":-1,\"modBackWheels\":-1,\"modTransmission\":-1,\"wheels\":0,\"color3\":[240,240,240],\"modFrontWheels\":-1,\"bodyHealth\":976.6,\"modRoof\":-1,\"modSteeringWheel\":-1}', '{\"maxhealth\":1000.0,\"plate\":\"94GPS987\",\"mileage\":86.22}', '', NULL, NULL, 0, 0),
('char1:9f92532a07891e00ad46526c68b955a2935c3c24', '94HMK394', 1, 1, 0, '8037', NULL, 'car', '', '{\"bodyHealth\":1000.0,\"modAPlate\":-1,\"modAirFilter\":-1,\"color2\":68,\"pearlescentColor\":4,\"xenonColor\":255,\"neonColor\":[255,0,255],\"ColorType\":[0,0],\"color4\":[0,0,0],\"wheelColor\":112,\"modDoorSpeaker\":-1,\"modBackWheels\":-1,\"modFrontBumper\":-1,\"modDoorR\":-1,\"engineHealth\":1000.0,\"modTyresBurst\":1,\"modShifterLeavers\":-1,\"modSmokeEnabled\":false,\"tankHealth\":1000.0,\"neonEnabled\":[false,false,false,false],\"plate\":\"94HMK394\",\"modSeats\":-1,\"model\":1026149675,\"modSuspension\":-1,\"wheels\":1,\"dirtLevel\":5.0,\"modDashboard\":-1,\"modFender\":-1,\"dshcolor\":0,\"plateIndex\":0,\"modTank\":-1,\"modSpoilers\":-1,\"modEngine\":-1,\"modRearBumper\":-1,\"tyreBurst\":{\"5\":false,\"0\":false,\"4\":false,\"1\":false},\"modRoof\":-1,\"modRightFender\":-1,\"modFrame\":-1,\"modDial\":-1,\"color3\":[0,0,0],\"modTrimA\":-1,\"modArchCover\":-1,\"modAerials\":-1,\"modFrontWheels\":-1,\"modBrakes\":-1,\"drift\":false,\"modArmor\":-1,\"modWindows\":-1,\"modTrunk\":-1,\"windowTint\":-1,\"paintType\":[0,0],\"windowsBroken\":{\"2\":false,\"3\":true,\"0\":false,\"1\":true,\"6\":false,\"7\":false,\"4\":true,\"5\":true},\"customSecondaryColor\":[0,0,0],\"modTrimB\":-1,\"modHood\":-1,\"modHorns\":-1,\"modHydrolic\":-1,\"tyreSmokeColor\":[255,255,255],\"modTurbo\":false,\"fuelLevel\":65.0,\"modExhaust\":-1,\"modVanityPlate\":-1,\"extras\":[],\"intcolor\":156,\"modLivery\":-1,\"modTransmission\":-1,\"modXenon\":false,\"modPlateHolder\":-1,\"doorsBroken\":{\"2\":false,\"3\":false,\"0\":false,\"1\":false,\"6\":false,\"4\":false,\"5\":false},\"modGrille\":-1,\"modSideSkirt\":-1,\"modSpeakers\":-1,\"modWheelVariat\":false,\"customPrimaryColor\":[0,0,0],\"modOrnaments\":-1,\"modLightbar\":-1,\"modStruts\":-1,\"modSteeringWheel\":-1,\"modEngineBlock\":-1,\"color1\":107}', '{\"plate\":\"nil\",\"mileage\":0.0,\"maxhealth\":1000.0}', '{\"description\":\"\",\"charname\":\"Mike Smith\",\"canretrive\":false,\"label\":\"Youga Classic\",\"time\":0,\"impound_label\":\"Odtahové parkoviště - Downtown\",\"price\":1000,\"charjob\":\"fire\"}', NULL, NULL, 0, 0),
('lostmc', '94RCS335', 1, 0, 0, '8037', NULL, 'car', '', '{\"extras\":[],\"modDashboard\":-1,\"color1\":0,\"pearlescentColor\":10,\"modGrille\":-1,\"modEngineBlock\":-1,\"modAirFilter\":-1,\"modSeats\":-1,\"dirtLevel\":0.0,\"plate\":\"94RCS335\",\"modEngine\":1,\"customSecondaryColor\":[0,0,0],\"plateIndex\":0,\"modSpoilers\":-1,\"modOrnaments\":-1,\"modLivery\":-1,\"neonEnabled\":[false,false,false,false],\"fuelLevel\":80.7,\"modExhaust\":-1,\"modStruts\":-1,\"windowsBroken\":{\"2\":true,\"1\":false,\"0\":false,\"7\":false,\"6\":false,\"5\":true,\"4\":true,\"3\":false},\"modArmor\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"windowTint\":-1,\"customPrimaryColor\":[0,0,0],\"tyres\":[false,false,false,false,false,false,false],\"tyreBurst\":{\"5\":false,\"1\":false,\"4\":false,\"0\":false},\"modTransmission\":-1,\"modFender\":-1,\"color4\":[0,0,0],\"modSideSkirt\":-1,\"modVanityPlate\":-1,\"modSpeakers\":-1,\"modDoorR\":-1,\"modXenon\":false,\"modPlateHolder\":-1,\"modBrakes\":-1,\"modBackWheels\":-1,\"color2\":12,\"xenonColor\":255,\"modWindows\":-1,\"modSmokeEnabled\":1,\"modTrimB\":-1,\"modDoorSpeaker\":-1,\"modRoof\":-1,\"modFrontWheels\":-1,\"doorsBroken\":{\"2\":false,\"1\":false,\"0\":false,\"4\":false,\"3\":false},\"modRearBumper\":-1,\"modDial\":-1,\"drift\":false,\"modSuspension\":-1,\"dshcolor\":156,\"wheels\":1,\"modRightFender\":-1,\"modHorns\":-1,\"wheelColor\":0,\"tankHealth\":997.0,\"tyreSmokeColor\":[255,255,255],\"ColorType\":[-1,0],\"modHood\":-1,\"model\":1429622905,\"modTrunk\":-1,\"modAerials\":-1,\"modTrimA\":-1,\"bodyHealth\":972.0,\"modHydrolic\":-1,\"modAPlate\":-1,\"windows\":[false,false,true,false,false,true],\"color3\":[0,0,0],\"modFrontBumper\":-1,\"modFrame\":-1,\"engineHealth\":923.0,\"modTurbo\":false,\"modArchCover\":-1,\"doors\":[false,false,false,false,false,false],\"paintType\":[7,7],\"modTank\":-1,\"modWheelVariat\":false,\"neonColor\":[255,255,255],\"modTyresBurst\":1,\"modLightbar\":-1,\"intcolor\":3}', '{\"plate\":\"94RCS335\",\"maxhealth\":1000.0,\"mileage\":143.34}', '', '[]', '[]', 0, 0),
('sanandreas', '94RSK392', 1, 0, 0, '8037', NULL, 'car', '', '{\"doorsBroken\":{\"3\":false,\"4\":false,\"5\":false,\"6\":false,\"0\":false,\"1\":false,\"2\":false},\"modArmor\":-1,\"modFender\":-1,\"neonEnabled\":[false,false,false,false],\"ColorType\":[0,0],\"modTrimB\":-1,\"modEngineBlock\":-1,\"windows\":[false,false,false,false,false,true],\"paintType\":[0,0],\"modRoof\":-1,\"modLivery\":-1,\"modSideSkirt\":-1,\"modSuspension\":-1,\"modSpoilers\":-1,\"modDashboard\":-1,\"extras\":[],\"engineHealth\":985.2,\"modSteeringWheel\":-1,\"modEngine\":-1,\"modXenon\":1,\"color3\":[0,0,0],\"modBrakes\":-1,\"pearlescentColor\":0,\"modTrimA\":-1,\"customPrimaryColor\":[0,0,0],\"modRearBumper\":-1,\"plate\":\"94RSK392\",\"doors\":[false,false,false,false,false,false],\"modFrontBumper\":-1,\"tyres\":[false,false,false,false,false,false,false],\"tankHealth\":999.7,\"modWheelVariat\":false,\"modBackWheels\":-1,\"wheelColor\":156,\"tyreSmokeColor\":[0,0,1],\"modTransmission\":-1,\"modWindows\":-1,\"fuelLevel\":63.7,\"modFrame\":-1,\"modTank\":-1,\"color4\":[0,0,0],\"modHydrolic\":-1,\"modAerials\":-1,\"modGrille\":-1,\"color2\":0,\"windowTint\":-1,\"xenonColor\":255,\"modShifterLeavers\":-1,\"modDoorR\":-1,\"modExhaust\":-1,\"modVanityPlate\":-1,\"color1\":0,\"modTrunk\":-1,\"plateIndex\":1,\"dshcolor\":0,\"windowsBroken\":{\"3\":false,\"4\":true,\"5\":true,\"6\":false,\"7\":false,\"0\":false,\"1\":false,\"2\":false},\"modAirFilter\":-1,\"modDoorSpeaker\":-1,\"intcolor\":0,\"modTyresBurst\":false,\"neonColor\":[255,0,255],\"dirtLevel\":0.2,\"customSecondaryColor\":[0,0,0],\"modLightbar\":-1,\"model\":-1381301498,\"modPlateHolder\":-1,\"modDial\":-1,\"modTurbo\":1,\"modSmokeEnabled\":1,\"tyreBurst\":{\"4\":false,\"0\":false,\"5\":false,\"1\":false},\"modStruts\":-1,\"wheels\":3,\"modHood\":-1,\"drift\":false,\"bodyHealth\":996.6,\"modSpeakers\":-1,\"modSeats\":-1,\"modFrontWheels\":-1,\"modArchCover\":-1,\"modOrnaments\":-1,\"modAPlate\":-1,\"modHorns\":-1,\"modRightFender\":-1}', '{\"mileage\":0.0,\"plate\":\"94RSK392\",\"maxhealth\":1000.0}', '', NULL, NULL, 0, 0),
('sanandreas', '96ZKX077', 1, 0, 0, '8037', NULL, 'car', '', '{\"modAerials\":-1,\"modEngine\":-1,\"modBrakes\":-1,\"modExhaust\":-1,\"color3\":[0,0,0],\"modSeats\":-1,\"model\":1238953944,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"modHydrolic\":-1,\"modDoorR\":-1,\"modTrunk\":-1,\"modSideSkirt\":-1,\"modVanityPlate\":-1,\"modStruts\":-1,\"modFrontWheels\":-1,\"windowsBroken\":{\"2\":false,\"1\":false,\"4\":true,\"3\":false,\"6\":false,\"5\":true,\"0\":false,\"7\":false},\"modHood\":-1,\"color1\":0,\"plateIndex\":1,\"customPrimaryColor\":[0,0,0],\"modDashboard\":-1,\"modFrontBumper\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modTank\":-1,\"modSpeakers\":-1,\"modEngineBlock\":-1,\"tyreBurst\":{\"0\":false,\"1\":false,\"4\":false,\"5\":false},\"neonColor\":[255,0,255],\"modTransmission\":-1,\"modAirFilter\":-1,\"modArchCover\":-1,\"doorsBroken\":{\"2\":false,\"1\":false,\"4\":false,\"3\":false,\"6\":false,\"5\":false,\"0\":false},\"modRightFender\":-1,\"wheels\":3,\"modSpoilers\":-1,\"windowTint\":-1,\"modOrnaments\":-1,\"tankHealth\":999.7,\"modSmokeEnabled\":1,\"modFrame\":-1,\"modGrille\":-1,\"modRearBumper\":-1,\"xenonColor\":255,\"wheelColor\":156,\"modSuspension\":-1,\"extras\":[],\"modDoorSpeaker\":-1,\"color2\":0,\"modXenon\":1,\"dirtLevel\":0.4,\"bodyHealth\":997.5,\"modTyresBurst\":false,\"intcolor\":0,\"modLightbar\":-1,\"customSecondaryColor\":[0,0,0],\"tyreSmokeColor\":[0,0,1],\"ColorType\":[0,0],\"modAPlate\":-1,\"doors\":[false,false,false,false,false,false],\"modTurbo\":1,\"tyres\":[false,false,false,false,false,false,false],\"color4\":[0,0,0],\"modTrimA\":-1,\"modWindows\":-1,\"pearlescentColor\":0,\"modArmor\":-1,\"drift\":false,\"modRoof\":-1,\"neonEnabled\":[false,false,false,false],\"paintType\":[0,0],\"plate\":\"96ZKX077\",\"windows\":[false,false,false,false,false,true],\"dshcolor\":0,\"fuelLevel\":95.9,\"engineHealth\":989.2,\"modBackWheels\":-1,\"modHorns\":-1,\"modTrimB\":-1,\"modFender\":-1,\"modWheelVariat\":false,\"modLivery\":-1}', '{\"plate\":\"96ZKX077\",\"maxhealth\":1000.0,\"mileage\":0.03}', '', NULL, NULL, 0, 0),
('ambulance', '97QBE627', 1, 0, 0, '8037', NULL, 'car', '', '{\"modHydrolic\":-1,\"modRightFender\":-1,\"paintType\":[0,0],\"modSuspension\":-1,\"modTrimA\":-1,\"modAerials\":-1,\"xenonColor\":255,\"modLivery\":-1,\"ColorType\":[0,0],\"modDoorSpeaker\":-1,\"modFrontWheels\":-1,\"plate\":\"97QBE627\",\"tankHealth\":1000.0,\"modWheelVariat\":false,\"modTransmission\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modExhaust\":-1,\"modFender\":-1,\"tyreBurst\":{\"4\":false,\"0\":false,\"5\":false,\"1\":false},\"neonColor\":[255,0,255],\"customPrimaryColor\":[255,255,255],\"modHorns\":-1,\"extras\":{\"3\":false,\"2\":1,\"1\":false},\"customSecondaryColor\":[255,255,255],\"modAPlate\":-1,\"modGrille\":-1,\"plateIndex\":4,\"model\":-1351786721,\"modArmor\":-1,\"modRoof\":-1,\"modSeats\":-1,\"modTank\":-1,\"modArchCover\":-1,\"tyreSmokeColor\":[255,255,255],\"modVanityPlate\":-1,\"modSpoilers\":-1,\"neonEnabled\":[false,false,false,false],\"windowsBroken\":{\"4\":true,\"3\":false,\"2\":false,\"1\":false,\"0\":false,\"7\":false,\"6\":false,\"5\":true},\"dshcolor\":0,\"engineHealth\":1000.0,\"modSteeringWheel\":-1,\"modHood\":-1,\"modLightbar\":-1,\"modFrame\":-1,\"modEngineBlock\":-1,\"modTrunk\":-1,\"modSpeakers\":-1,\"modDial\":-1,\"pearlescentColor\":134,\"modSmokeEnabled\":false,\"drift\":false,\"modWindows\":-1,\"fuelLevel\":40.0,\"wheelColor\":0,\"bodyHealth\":1000.0,\"modTyresBurst\":1,\"modAirFilter\":-1,\"modPlateHolder\":-1,\"modDashboard\":-1,\"color2\":0,\"modBrakes\":-1,\"windowTint\":-1,\"modRearBumper\":-1,\"wheels\":4,\"modShifterLeavers\":-1,\"intcolor\":0,\"color1\":0,\"dirtLevel\":6.0,\"modEngine\":-1,\"modDoorR\":-1,\"doors\":[false,false,false,false,false,false],\"modTrimB\":-1,\"modTurbo\":false,\"modFrontBumper\":-1,\"modStruts\":-1,\"modXenon\":false,\"modSideSkirt\":-1,\"doorsBroken\":{\"4\":false,\"3\":false,\"2\":false,\"1\":false,\"0\":false,\"6\":false,\"5\":false},\"color3\":[255,255,255],\"modOrnaments\":-1,\"color4\":[255,255,255],\"windows\":[false,false,false,false,false,true],\"modBackWheels\":-1}', '{\"mileage\":0.0,\"maxhealth\":1000.0,\"plate\":\"97QBE627\"}', '', NULL, NULL, 0, 0),
('char1:b1dc43c6fb4ef390d0248afa02f04484c4f34a36', '98KJI102', 1, 0, 0, '6085 private', NULL, 'car', '', '{\"modRoof\":1,\"modBackWheels\":-1,\"drift\":false,\"ColorType\":[0,0],\"modLightbar\":-1,\"modFrontWheels\":-1,\"modAPlate\":-1,\"dirtLevel\":0.0,\"wheelColor\":0,\"modXenon\":1,\"intcolor\":0,\"modFrame\":-1,\"modSideSkirt\":1,\"modTrimB\":1,\"modSpeakers\":-1,\"modPlateHolder\":-1,\"modOrnaments\":-1,\"plate\":\"98KJI102\",\"tyres\":[false,false,false,false,false,false,false],\"modWheelVariat\":false,\"modFender\":2,\"tankHealth\":1000.0,\"modDoorSpeaker\":-1,\"windowsBroken\":{\"7\":false,\"0\":false,\"1\":false,\"2\":false,\"3\":false,\"4\":true,\"5\":true,\"6\":false},\"color3\":[255,255,255],\"doors\":[false,false,false,false,false,false],\"color2\":0,\"neonEnabled\":[1,1,1,1],\"modAerials\":1,\"modHood\":10,\"bodyHealth\":1000.0,\"modTransmission\":2,\"wheels\":3,\"customPrimaryColor\":[255,255,255],\"modBrakes\":2,\"pearlescentColor\":0,\"fuelLevel\":64.9,\"tyreSmokeColor\":[0,0,1],\"modRightFender\":0,\"windowTint\":1,\"modWindows\":-1,\"neonColor\":[255,255,255],\"xenonColor\":255,\"modRearBumper\":8,\"modTurbo\":1,\"modHydrolic\":-1,\"modExhaust\":3,\"modDial\":-1,\"modArmor\":-1,\"modSmokeEnabled\":1,\"customSecondaryColor\":[255,0,13],\"modSteeringWheel\":-1,\"modStruts\":-1,\"modAirFilter\":-1,\"paintType\":[1,1],\"model\":1728985388,\"modTrimA\":-1,\"color4\":[255,0,13],\"modEngine\":3,\"modEngineBlock\":-1,\"extras\":{\"1\":1,\"2\":1},\"plateIndex\":1,\"modShifterLeavers\":-1,\"modFrontBumper\":12,\"doorsBroken\":{\"0\":false,\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":false},\"modTrunk\":4,\"modArchCover\":-1,\"modSpoilers\":4,\"modVanityPlate\":-1,\"modSeats\":-1,\"modGrille\":4,\"dshcolor\":131,\"engineHealth\":1000.0,\"modTyresBurst\":1,\"modDoorR\":-1,\"modSuspension\":5,\"windows\":[false,false,false,false,false,true],\"modTank\":2,\"color1\":0,\"tyreBurst\":{\"1\":false,\"0\":false,\"5\":false,\"4\":false},\"modHorns\":0,\"modLivery\":-1,\"modDashboard\":-1}', '{\"plate\":\"98KJI102\",\"maxhealth\":1000.0,\"mileage\":0.0}', '', NULL, NULL, 0, 0),
('char1:7fc9429fbfdead8589b808ce4c9ca1033be3f258', '99AJB078', 1, 0, 0, '7299 private', NULL, 'car', '', '{\"modExhaust\":-1,\"extras\":[],\"modRightFender\":-1,\"bodyHealth\":635.8,\"wheels\":6,\"doors\":[false,false,false,false,false,false],\"modWindows\":-1,\"modFrontBumper\":-1,\"modGrille\":-1,\"doorsBroken\":{\"1\":false,\"0\":false},\"windowsBroken\":{\"3\":true,\"4\":true,\"1\":true,\"2\":true,\"7\":true,\"0\":true,\"5\":true,\"6\":true},\"color3\":[35,35,45],\"paintType\":[0,0],\"modBrakes\":-1,\"modLightbar\":-1,\"modArchCover\":-1,\"modTurbo\":false,\"modTrimB\":-1,\"model\":-2115793025,\"modWheelVariat\":false,\"customSecondaryColor\":[35,35,45],\"dirtLevel\":15.0,\"modSideSkirt\":-1,\"engineHealth\":613.2,\"dshcolor\":111,\"modAirFilter\":-1,\"modFrontWheels\":-1,\"color4\":[35,35,45],\"color1\":0,\"modSpeakers\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modBackWheels\":-1,\"modOrnaments\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"customPrimaryColor\":[35,35,45],\"modStruts\":-1,\"modRoof\":-1,\"modDashboard\":-1,\"modSmokeEnabled\":false,\"modHydrolic\":-1,\"fuelLevel\":69.1,\"modEngineBlock\":-1,\"modLivery\":-1,\"plate\":\"99AJB078\",\"modHorns\":-1,\"modFrame\":-1,\"modTrunk\":-1,\"windowTint\":-1,\"plateIndex\":0,\"modVanityPlate\":-1,\"modSuspension\":-1,\"tankHealth\":955.2,\"modTrimA\":-1,\"modArmor\":-1,\"xenonColor\":255,\"modDoorR\":-1,\"windows\":[true,true,true,true,true,true],\"color2\":0,\"modAPlate\":-1,\"modSpoilers\":-1,\"modEngine\":-1,\"modHood\":-1,\"modDoorSpeaker\":-1,\"modDial\":-1,\"modSeats\":-1,\"wheelColor\":111,\"modTyresBurst\":1,\"neonColor\":[255,0,255],\"ColorType\":[0,0],\"modPlateHolder\":-1,\"modAerials\":-1,\"intcolor\":111,\"pearlescentColor\":68,\"tyreSmokeColor\":[255,255,255],\"modTank\":-1,\"tyreBurst\":{\"0\":false,\"4\":false},\"modRearBumper\":-1,\"modXenon\":false,\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"drift\":false,\"modFender\":-1}', '{\"maxhealth\":1000.0,\"mileage\":99.44,\"plate\":\"99AJB078\"}', '', NULL, NULL, 0, 0),
('fire', '99WYW901', 1, 0, 0, '8037', NULL, 'car', '', '{\"model\":-149920278,\"tyres\":[false,false,false,false,false,false,false],\"modAirFilter\":-1,\"drift\":false,\"modShifterLeavers\":-1,\"neonColor\":[255,0,255],\"modBackWheels\":-1,\"modWheelVariat\":false,\"dirtLevel\":4.5,\"tyreSmokeColor\":[255,255,255],\"paintType\":[0,0],\"modSuspension\":-1,\"modSideSkirt\":-1,\"color1\":0,\"modRightFender\":-1,\"modLightbar\":-1,\"windowsBroken\":{\"7\":false,\"0\":false,\"1\":false,\"2\":false,\"3\":false,\"4\":true,\"5\":true,\"6\":false},\"modVanityPlate\":-1,\"modTank\":-1,\"engineHealth\":922.1,\"windows\":[false,false,false,false,false,true],\"modSteeringWheel\":-1,\"modTransmission\":-1,\"modTrimB\":-1,\"customPrimaryColor\":[240,240,240],\"ColorType\":[0,0],\"modHood\":-1,\"modHydrolic\":-1,\"modAPlate\":-1,\"modArmor\":-1,\"modPlateHolder\":-1,\"windowTint\":-1,\"modFrame\":-1,\"modBrakes\":-1,\"dshcolor\":0,\"modSpeakers\":-1,\"intcolor\":0,\"modFrontBumper\":-1,\"pearlescentColor\":0,\"tyreBurst\":{\"5\":false,\"0\":false,\"1\":false,\"4\":false},\"modDashboard\":-1,\"modTyresBurst\":1,\"wheels\":3,\"extras\":{\"11\":1},\"modSpoilers\":-1,\"modDoorR\":-1,\"doorsBroken\":{\"0\":false,\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":false},\"color2\":0,\"modArchCover\":-1,\"modSeats\":-1,\"xenonColor\":255,\"modExhaust\":-1,\"plateIndex\":4,\"modFrontWheels\":-1,\"neonEnabled\":[false,false,false,false],\"modTrunk\":-1,\"modEngine\":-1,\"bodyHealth\":982.0,\"modDial\":-1,\"modXenon\":false,\"doors\":[false,false,false,false,false,false],\"plate\":\"99WYW901\",\"modGrille\":-1,\"modFender\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"modTurbo\":false,\"modRoof\":-1,\"modWindows\":-1,\"modLivery\":-1,\"modOrnaments\":-1,\"modRearBumper\":-1,\"modDoorSpeaker\":-1,\"modTrimA\":-1,\"tankHealth\":1000.0,\"fuelLevel\":96.6,\"color3\":[240,240,240],\"modHorns\":-1,\"color4\":[240,240,240],\"customSecondaryColor\":[240,240,240],\"modEngineBlock\":-1,\"wheelColor\":156,\"modAerials\":-1}', '{\"maxhealth\":1000.0,\"mileage\":9.97,\"plate\":\"99WYW901\"}', '', '[{\"count\":1,\"metadata\":{\"durability\":100,\"ammo\":100,\"components\":[]},\"name\":\"WEAPON_FIREEXTINGUISHER\",\"slot\":1}]', NULL, 0, 0),
('sanandreas', 'GOV00001', 1, 0, 0, '8037', NULL, 'car', '', '{\"modEngineBlock\":-1,\"windowTint\":-1,\"tyreSmokeColor\":[0,0,1],\"plateIndex\":1,\"drift\":false,\"modShifterLeavers\":-1,\"wheelColor\":156,\"doors\":[false,false,false,false,false,false],\"plate\":\"GOV00001\",\"modPlateHolder\":-1,\"xenonColor\":255,\"modArmor\":4,\"modSpoilers\":-1,\"modFrontWheels\":-1,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modAerials\":-1,\"modBackWheels\":-1,\"modTyresBurst\":1,\"modStruts\":-1,\"modTransmission\":2,\"doorsBroken\":{\"5\":false,\"6\":false,\"3\":false,\"4\":false,\"1\":false,\"2\":false,\"0\":false},\"windows\":[false,false,false,false,false,true],\"tyres\":[false,false,false,false,false,false,false],\"modDial\":-1,\"color3\":[8,8,8],\"dirtLevel\":0.4,\"modSuspension\":3,\"neonEnabled\":[false,false,false,false],\"modFrame\":-1,\"color4\":[8,8,8],\"modSteeringWheel\":-1,\"modFrontBumper\":-1,\"modTurbo\":1,\"ColorType\":[0,0],\"modSpeakers\":-1,\"customSecondaryColor\":[8,8,8],\"modRearBumper\":-1,\"modWheelVariat\":false,\"modDoorSpeaker\":-1,\"modAirFilter\":-1,\"bodyHealth\":1000.0,\"fuelLevel\":57.2,\"modDoorR\":-1,\"intcolor\":0,\"modRoof\":-1,\"color1\":0,\"modHood\":-1,\"modXenon\":1,\"modRightFender\":-1,\"modTrimB\":-1,\"modHydrolic\":-1,\"modVanityPlate\":-1,\"modTank\":-1,\"windowsBroken\":{\"5\":true,\"6\":false,\"3\":false,\"4\":true,\"1\":false,\"2\":false,\"7\":false,\"0\":false},\"wheels\":3,\"modLightbar\":-1,\"color2\":0,\"paintType\":[0,0],\"dshcolor\":0,\"modTrimA\":-1,\"modWindows\":-1,\"pearlescentColor\":3,\"tyreBurst\":{\"5\":false,\"1\":false,\"4\":false,\"0\":false},\"customPrimaryColor\":[8,8,8],\"modBrakes\":2,\"modEngine\":3,\"modSideSkirt\":-1,\"extras\":[],\"modDashboard\":-1,\"modHorns\":-1,\"modExhaust\":-1,\"tankHealth\":1000.0,\"modGrille\":-1,\"modTrunk\":-1,\"modFender\":-1,\"modSeats\":-1,\"modSmokeEnabled\":1,\"modOrnaments\":-1,\"model\":113895761,\"modLivery\":-1,\"modArchCover\":-1,\"engineHealth\":1000.0}', '{\"mileage\":29.33,\"plate\":\"GOV00001\",\"maxhealth\":1000.0}', '', NULL, NULL, 0, 0),
('sanandreas', 'GOV00002', 1, 0, 0, '8037', NULL, 'car', '', '{\"modRoof\":-1,\"modBackWheels\":-1,\"drift\":false,\"modSteeringWheel\":-1,\"modLightbar\":-1,\"modFrontWheels\":-1,\"modStruts\":-1,\"modTank\":-1,\"wheelColor\":156,\"modXenon\":1,\"windowTint\":-1,\"modFrame\":-1,\"modSideSkirt\":-1,\"modTrimB\":-1,\"modSpeakers\":-1,\"modPlateHolder\":-1,\"modOrnaments\":-1,\"plate\":\"GOV00002\",\"modSpoilers\":-1,\"modWheelVariat\":false,\"modFender\":-1,\"tankHealth\":1000.0,\"modDoorSpeaker\":-1,\"windowsBroken\":{\"7\":false,\"0\":false,\"1\":false,\"2\":false,\"3\":false,\"4\":true,\"5\":true,\"6\":false},\"color3\":[8,8,8],\"doors\":[false,false,false,false,false,false],\"color2\":0,\"neonEnabled\":[false,false,false,false],\"modAerials\":-1,\"modHood\":-1,\"bodyHealth\":1000.0,\"modTransmission\":2,\"wheels\":3,\"customPrimaryColor\":[8,8,8],\"modBrakes\":2,\"pearlescentColor\":3,\"fuelLevel\":59.6,\"tyreSmokeColor\":[0,0,1],\"modRearBumper\":-1,\"ColorType\":[0,0],\"modWindows\":-1,\"modAirFilter\":-1,\"xenonColor\":255,\"intcolor\":0,\"modShifterLeavers\":-1,\"modHydrolic\":-1,\"modExhaust\":-1,\"modDial\":-1,\"modArmor\":4,\"modSmokeEnabled\":1,\"customSecondaryColor\":[8,8,8],\"modEngineBlock\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modSuspension\":3,\"modRightFender\":-1,\"modHorns\":-1,\"modTrimA\":-1,\"modEngine\":3,\"modTurbo\":1,\"color4\":[8,8,8],\"extras\":[],\"plateIndex\":1,\"dshcolor\":0,\"windows\":[false,false,false,false,false,true],\"doorsBroken\":{\"0\":false,\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":false},\"modTrunk\":-1,\"modArchCover\":-1,\"neonColor\":[255,0,255],\"modVanityPlate\":-1,\"modSeats\":-1,\"modGrille\":-1,\"modFrontBumper\":-1,\"engineHealth\":1000.0,\"modTyresBurst\":1,\"modDoorR\":-1,\"paintType\":[0,0],\"dirtLevel\":0.3,\"model\":113895761,\"color1\":0,\"tyreBurst\":{\"0\":false,\"4\":false,\"1\":false,\"5\":false},\"modAPlate\":-1,\"modDashboard\":-1,\"modLivery\":-1}', '{\"plate\":\"GOV00002\",\"maxhealth\":1000.0,\"mileage\":22.5}', '', NULL, NULL, 0, 0),
('sanandreas', 'GOV00003', 1, 0, 0, '8037', NULL, 'car', '', '{\"plateIndex\":1,\"wheelColor\":156,\"modHorns\":-1,\"modWheelVariat\":false,\"engineHealth\":1000.0,\"modArchCover\":-1,\"drift\":false,\"tankHealth\":1000.0,\"modFrontBumper\":-1,\"model\":113895761,\"modTrimA\":-1,\"color2\":0,\"modShifterLeavers\":-1,\"modEngine\":3,\"neonEnabled\":[false,false,false,false],\"customSecondaryColor\":[8,8,8],\"dirtLevel\":0.0,\"paintType\":[0,0],\"modPlateHolder\":-1,\"modFrame\":-1,\"windowsBroken\":{\"6\":false,\"5\":true,\"0\":false,\"7\":false,\"2\":false,\"1\":false,\"4\":true,\"3\":false},\"customPrimaryColor\":[8,8,8],\"ColorType\":[0,0],\"modStruts\":-1,\"modLivery\":-1,\"modDashboard\":-1,\"modAerials\":-1,\"modLightbar\":-1,\"modSpeakers\":-1,\"modSideSkirt\":-1,\"windowTint\":-1,\"modXenon\":1,\"modExhaust\":-1,\"doors\":[false,false,false,false,false,false],\"color1\":0,\"modDoorSpeaker\":-1,\"modTurbo\":1,\"modGrille\":-1,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"intcolor\":0,\"modSmokeEnabled\":1,\"modFrontWheels\":-1,\"dshcolor\":0,\"doorsBroken\":{\"6\":false,\"5\":false,\"0\":false,\"2\":false,\"1\":false,\"4\":false,\"3\":false},\"color4\":[8,8,8],\"modSuspension\":3,\"modTrimB\":-1,\"modDoorR\":-1,\"modEngineBlock\":-1,\"modAirFilter\":-1,\"tyreSmokeColor\":[0,0,1],\"modTank\":-1,\"modArmor\":4,\"modSpoilers\":-1,\"modHydrolic\":-1,\"windows\":[false,false,false,false,false,true],\"modTyresBurst\":1,\"modOrnaments\":-1,\"neonColor\":[255,0,255],\"pearlescentColor\":3,\"modDial\":-1,\"modSeats\":-1,\"extras\":[],\"modAPlate\":-1,\"modHood\":-1,\"tyres\":[false,false,false,false,false,false,false],\"plate\":\"GOV00003\",\"fuelLevel\":64.6,\"modBrakes\":2,\"tyreBurst\":{\"5\":false,\"1\":false,\"4\":false,\"0\":false},\"modBackWheels\":-1,\"modTrunk\":-1,\"modTransmission\":2,\"modFender\":-1,\"modWindows\":-1,\"modRightFender\":-1,\"wheels\":3,\"xenonColor\":255,\"color3\":[8,8,8],\"bodyHealth\":1000.0,\"modRoof\":-1,\"modSteeringWheel\":-1}', '{\"maxhealth\":1000.0,\"plate\":\"GOV00003\",\"mileage\":18.1}', '', NULL, NULL, 0, 0),
('sanandreas', 'GOV1', 1, 0, 0, '8037', NULL, 'car', '', '{\"plateIndex\":1,\"wheelColor\":156,\"modHorns\":-1,\"modWheelVariat\":false,\"engineHealth\":873.8,\"modArchCover\":-1,\"drift\":false,\"tankHealth\":1000.0,\"modFrontBumper\":-1,\"model\":-1231625858,\"modTrimA\":-1,\"color2\":0,\"modShifterLeavers\":-1,\"modEngine\":3,\"neonEnabled\":[false,false,false,false],\"customSecondaryColor\":[8,8,8],\"dirtLevel\":0.3,\"paintType\":[0,0],\"modPlateHolder\":-1,\"modFrame\":-1,\"windowsBroken\":{\"6\":true,\"5\":false,\"0\":true,\"7\":false,\"2\":true,\"1\":false,\"4\":false,\"3\":false},\"customPrimaryColor\":[8,8,8],\"ColorType\":[0,0],\"modStruts\":-1,\"modLivery\":-1,\"modDashboard\":-1,\"modAerials\":-1,\"modLightbar\":-1,\"modSpeakers\":-1,\"modSideSkirt\":-1,\"windowTint\":1,\"modXenon\":1,\"modExhaust\":-1,\"doors\":[false,false,false,false,false,false],\"color1\":0,\"modDoorSpeaker\":-1,\"modTurbo\":1,\"modGrille\":-1,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"intcolor\":0,\"modSmokeEnabled\":1,\"modFrontWheels\":-1,\"dshcolor\":0,\"doorsBroken\":{\"6\":false,\"5\":false,\"0\":false,\"2\":false,\"1\":false,\"4\":false,\"3\":false},\"color4\":[8,8,8],\"modSuspension\":3,\"modTrimB\":-1,\"modDoorR\":-1,\"modEngineBlock\":-1,\"modAirFilter\":-1,\"tyreSmokeColor\":[0,0,1],\"modTank\":-1,\"modArmor\":4,\"modSpoilers\":-1,\"modHydrolic\":-1,\"windows\":[true,false,true,false,true,true],\"modTyresBurst\":false,\"modOrnaments\":-1,\"neonColor\":[255,0,255],\"pearlescentColor\":0,\"modDial\":-1,\"modSeats\":-1,\"extras\":{\"1\":1,\"12\":1},\"modAPlate\":-1,\"modHood\":-1,\"tyres\":[false,false,false,false,false,false,false],\"plate\":\"GOV1\",\"fuelLevel\":82.0,\"modBrakes\":2,\"tyreBurst\":{\"5\":false,\"1\":false,\"4\":false,\"0\":false},\"modBackWheels\":-1,\"modTrunk\":-1,\"modTransmission\":2,\"modFender\":-1,\"modWindows\":-1,\"modRightFender\":-1,\"wheels\":3,\"xenonColor\":255,\"color3\":[8,8,8],\"bodyHealth\":970.9,\"modRoof\":-1,\"modSteeringWheel\":-1}', '{\"maxhealth\":1000.0,\"plate\":\"GOV1\",\"mileage\":20.03}', '', NULL, NULL, 0, 0),
('sanandreas', 'GOV2', 1, 0, 0, '8037', NULL, 'car', '', '{\"modRoof\":-1,\"modBackWheels\":-1,\"drift\":false,\"modSteeringWheel\":-1,\"modLightbar\":-1,\"modFrontWheels\":-1,\"modStruts\":-1,\"modTank\":-1,\"wheelColor\":156,\"modXenon\":1,\"windowTint\":1,\"modFrame\":-1,\"modSideSkirt\":-1,\"modTrimB\":-1,\"modSpeakers\":-1,\"modPlateHolder\":-1,\"modOrnaments\":-1,\"plate\":\"GOV2\",\"modSpoilers\":-1,\"modWheelVariat\":false,\"modFender\":-1,\"tankHealth\":1000.0,\"modDoorSpeaker\":-1,\"windowsBroken\":{\"7\":false,\"0\":false,\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":false},\"color3\":[8,8,8],\"doors\":[false,false,false,false,false,false],\"color2\":0,\"neonEnabled\":[false,false,false,false],\"modAerials\":-1,\"modHood\":-1,\"bodyHealth\":1000.0,\"modTransmission\":2,\"wheels\":3,\"customPrimaryColor\":[8,8,8],\"modBrakes\":2,\"pearlescentColor\":0,\"fuelLevel\":84.0,\"tyreSmokeColor\":[0,0,1],\"modRearBumper\":-1,\"ColorType\":[0,0],\"modWindows\":-1,\"modAirFilter\":-1,\"xenonColor\":255,\"intcolor\":0,\"modShifterLeavers\":-1,\"modHydrolic\":-1,\"modExhaust\":-1,\"modDial\":-1,\"modArmor\":4,\"modSmokeEnabled\":1,\"customSecondaryColor\":[8,8,8],\"modEngineBlock\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modSuspension\":3,\"modRightFender\":-1,\"modHorns\":-1,\"modTrimA\":-1,\"modEngine\":3,\"modTurbo\":1,\"color4\":[8,8,8],\"extras\":{\"1\":1,\"12\":false},\"plateIndex\":1,\"dshcolor\":0,\"windows\":[false,false,false,false,false,true],\"doorsBroken\":{\"0\":false,\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":false},\"modTrunk\":-1,\"modArchCover\":-1,\"neonColor\":[255,0,255],\"modVanityPlate\":-1,\"modSeats\":-1,\"modGrille\":-1,\"modFrontBumper\":-1,\"engineHealth\":1000.0,\"modTyresBurst\":false,\"modDoorR\":-1,\"paintType\":[0,0],\"dirtLevel\":0.1,\"model\":-1231625858,\"color1\":0,\"tyreBurst\":{\"0\":false,\"4\":false,\"1\":false,\"5\":false},\"modAPlate\":-1,\"modDashboard\":-1,\"modLivery\":-1}', '{\"plate\":\"GOV2\",\"maxhealth\":1000.0,\"mileage\":17.72}', '', NULL, NULL, 0, 0),
('taxi', 'TAXI001', 1, 0, 0, '8037', NULL, 'car', '', '{\"modDashboard\":-1,\"customSecondaryColor\":[4,32,141],\"modWindows\":-1,\"model\":-956048545,\"engineHealth\":935.6,\"modHorns\":-1,\"extras\":{\"7\":false,\"9\":1,\"8\":1,\"11\":1,\"10\":1,\"5\":false,\"6\":false},\"color4\":[4,32,141],\"modRightFender\":-1,\"modFrame\":-1,\"modSeats\":-1,\"color3\":[255,208,0],\"modDoorR\":-1,\"ColorType\":[-1,0],\"modRearBumper\":-1,\"modSuspension\":-1,\"modArchCover\":-1,\"modArmor\":-1,\"modExhaust\":-1,\"color1\":88,\"neonColor\":[255,0,255],\"tyreSmokeColor\":[255,255,255],\"color2\":77,\"modSmokeEnabled\":1,\"drift\":false,\"modHydrolic\":-1,\"pearlescentColor\":5,\"modPlateHolder\":-1,\"modXenon\":false,\"xenonColor\":255,\"modEngine\":-1,\"fuelLevel\":64.6,\"modOrnaments\":-1,\"modVanityPlate\":-1,\"modTrunk\":-1,\"modTransmission\":-1,\"tyres\":[false,false,false,false,false,false,false],\"wheelColor\":156,\"modAerials\":-1,\"modAPlate\":-1,\"intcolor\":0,\"tyreBurst\":{\"0\":false,\"1\":false,\"5\":false,\"4\":false},\"doors\":[false,false,false,false,false,false],\"modFrontBumper\":-1,\"plateIndex\":0,\"modDial\":-1,\"modStruts\":-1,\"modTurbo\":false,\"modTyresBurst\":1,\"modFender\":-1,\"wheels\":0,\"modBrakes\":-1,\"modRoof\":-1,\"windowsBroken\":{\"3\":false,\"2\":false,\"1\":false,\"0\":false,\"7\":false,\"6\":false,\"5\":true,\"4\":true},\"modBackWheels\":-1,\"paintType\":[7,7],\"bodyHealth\":983.2,\"modTrimA\":-1,\"modLivery\":-1,\"tankHealth\":998.3,\"modSpeakers\":-1,\"modFrontWheels\":-1,\"modWheelVariat\":false,\"dshcolor\":0,\"modGrille\":-1,\"modHood\":-1,\"modAirFilter\":-1,\"modSteeringWheel\":-1,\"plate\":\"TAXI001\",\"modTank\":-1,\"modSideSkirt\":-1,\"neonEnabled\":[false,false,false,false],\"modLightbar\":-1,\"customPrimaryColor\":[255,208,0],\"modTrimB\":-1,\"windowTint\":-1,\"modSpoilers\":-1,\"dirtLevel\":5.2,\"doorsBroken\":{\"3\":false,\"2\":false,\"1\":false,\"0\":false,\"6\":false,\"5\":false,\"4\":false},\"modDoorSpeaker\":-1,\"modEngineBlock\":-1,\"modShifterLeavers\":-1,\"windows\":[false,false,false,false,false,true]}', '{\"maxhealth\":1000.0,\"plate\":\"03COF878\",\"mileage\":0.32}', '', NULL, NULL, 0, 0),
('taxi', 'TAXI002', 1, 0, 0, '8037', NULL, 'car', '', '{\"modDial\":-1,\"bodyHealth\":1000.0,\"modTank\":-1,\"modHood\":-1,\"modRoof\":-1,\"modSuspension\":-1,\"fuelLevel\":65.0,\"modTyresBurst\":1,\"modDoorR\":-1,\"modVanityPlate\":-1,\"windowTint\":-1,\"modEngineBlock\":-1,\"modWindows\":-1,\"modFrame\":-1,\"modDashboard\":-1,\"modAPlate\":-1,\"paintType\":[7,7],\"modSeats\":-1,\"modFender\":-1,\"modGrille\":-1,\"modStruts\":-1,\"modArmor\":-1,\"modXenon\":false,\"color1\":88,\"intcolor\":0,\"modFrontBumper\":-1,\"modExhaust\":-1,\"customPrimaryColor\":[201,188,0],\"modShifterLeavers\":-1,\"plateIndex\":0,\"modTrimA\":-1,\"doorsBroken\":{\"0\":false,\"1\":false,\"6\":false,\"4\":false,\"5\":false,\"2\":false,\"3\":false},\"dirtLevel\":0.0,\"xenonColor\":255,\"tyreSmokeColor\":[255,255,255],\"pearlescentColor\":5,\"modSteeringWheel\":-1,\"tankHealth\":1000.0,\"engineHealth\":1000.0,\"modFrontWheels\":-1,\"wheelColor\":156,\"modBrakes\":-1,\"modLightbar\":-1,\"windowsBroken\":{\"0\":false,\"1\":false,\"6\":false,\"7\":false,\"4\":true,\"5\":true,\"2\":false,\"3\":false},\"modTransmission\":-1,\"modRearBumper\":-1,\"modTrimB\":-1,\"modRightFender\":-1,\"modAerials\":-1,\"model\":-956048545,\"modAirFilter\":-1,\"ColorType\":[-1,-1],\"color4\":[4,32,141],\"modArchCover\":-1,\"drift\":false,\"modDoorSpeaker\":-1,\"modLivery\":-1,\"customSecondaryColor\":[4,32,141],\"modTrunk\":-1,\"modSmokeEnabled\":false,\"modHorns\":-1,\"wheels\":0,\"modPlateHolder\":-1,\"plate\":\"TAXI002\",\"modEngine\":-1,\"neonEnabled\":[false,false,false,false],\"modBackWheels\":-1,\"tyreBurst\":{\"0\":false,\"5\":false,\"1\":false,\"4\":false},\"neonColor\":[255,0,255],\"modWheelVariat\":false,\"modSpeakers\":-1,\"color3\":[201,188,0],\"modHydrolic\":-1,\"modSideSkirt\":-1,\"modTurbo\":false,\"modSpoilers\":-1,\"modOrnaments\":-1,\"color2\":77,\"dshcolor\":0,\"extras\":{\"8\":false,\"9\":false,\"10\":false,\"7\":false,\"5\":false,\"11\":false,\"6\":1}}', '{\"plate\":\"nil\",\"mileage\":0.0,\"maxhealth\":1000.0}', '', NULL, NULL, 0, 0),
('taxi', 'TAXI003', 1, 0, 0, '8037', NULL, 'car', '', '{\"modDial\":-1,\"bodyHealth\":1000.0,\"modTank\":-1,\"modHood\":-1,\"modRoof\":-1,\"modSuspension\":-1,\"fuelLevel\":65.0,\"modTyresBurst\":1,\"modDoorR\":-1,\"modVanityPlate\":-1,\"windowTint\":-1,\"modEngineBlock\":-1,\"modWindows\":-1,\"modFrame\":-1,\"modDashboard\":-1,\"modAPlate\":-1,\"paintType\":[7,7],\"modSeats\":-1,\"modFender\":-1,\"modGrille\":-1,\"modStruts\":-1,\"modArmor\":-1,\"modXenon\":false,\"color1\":88,\"intcolor\":0,\"modFrontBumper\":-1,\"modExhaust\":-1,\"customPrimaryColor\":[158,148,0],\"modShifterLeavers\":-1,\"plateIndex\":0,\"modTrimA\":-1,\"doorsBroken\":{\"0\":false,\"1\":false,\"6\":false,\"4\":false,\"5\":false,\"2\":false,\"3\":false},\"dirtLevel\":0.0,\"xenonColor\":255,\"tyreSmokeColor\":[255,255,255],\"pearlescentColor\":5,\"modSteeringWheel\":-1,\"tankHealth\":1000.0,\"engineHealth\":1000.0,\"modFrontWheels\":-1,\"wheelColor\":156,\"modBrakes\":-1,\"modLightbar\":-1,\"windowsBroken\":{\"0\":false,\"1\":false,\"6\":false,\"7\":false,\"4\":true,\"5\":true,\"2\":false,\"3\":false},\"modTransmission\":-1,\"modRearBumper\":-1,\"modTrimB\":-1,\"modRightFender\":-1,\"modAerials\":-1,\"model\":-956048545,\"modAirFilter\":-1,\"ColorType\":[-1,-1],\"color4\":[4,32,141],\"modArchCover\":-1,\"drift\":false,\"modDoorSpeaker\":-1,\"modLivery\":-1,\"customSecondaryColor\":[4,32,141],\"modTrunk\":-1,\"modSmokeEnabled\":false,\"modHorns\":-1,\"wheels\":0,\"modPlateHolder\":-1,\"plate\":\"TAXI003\",\"modEngine\":-1,\"neonEnabled\":[false,false,false,false],\"modBackWheels\":-1,\"tyreBurst\":{\"0\":false,\"5\":false,\"1\":false,\"4\":false},\"neonColor\":[255,0,255],\"modWheelVariat\":false,\"modSpeakers\":-1,\"color3\":[158,148,0],\"modHydrolic\":-1,\"modSideSkirt\":-1,\"modTurbo\":false,\"modSpoilers\":-1,\"modOrnaments\":-1,\"color2\":77,\"dshcolor\":0,\"extras\":{\"8\":false,\"9\":false,\"10\":false,\"7\":1,\"5\":1,\"11\":false,\"6\":1}}', '{\"plate\":\"nil\",\"mileage\":0.0,\"maxhealth\":1000.0}', '', NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabulky `ox_doorlock`
--

CREATE TABLE `ox_doorlock` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `ox_doorlock`
--

INSERT INTO `ox_doorlock` (`id`, `name`, `data`) VALUES
(1, 'lspd5', '{\"state\":1,\"items\":[{\"name\":\"klice_lspd\"}],\"coords\":{\"x\":457.0474548339844,\"y\":-972.2542724609375,\"z\":30.81529998779297},\"lockSound\":\"metal-locker\",\"doors\":[{\"coords\":{\"x\":458.2087097167969,\"y\":-972.2542724609375,\"z\":30.81529998779297},\"model\":-1547307588,\"heading\":180},{\"coords\":{\"x\":455.8861999511719,\"y\":-972.2542724609375,\"z\":30.81529998779297},\"model\":-1547307588,\"heading\":0}],\"maxDistance\":2,\"unlockSound\":\"metallic-creak\"}'),
(2, 'lspd6', '{\"maxDistance\":2,\"doors\":[{\"coords\":{\"x\":440.73919677734377,\"y\":-998.7462158203125,\"z\":30.81529998779297},\"heading\":0,\"model\":-1547307588},{\"coords\":{\"x\":443.0617980957031,\"y\":-998.7462158203125,\"z\":30.81529998779297},\"heading\":180,\"model\":-1547307588}],\"coords\":{\"x\":441.9005126953125,\"y\":-998.7462158203125,\"z\":30.81529998779297},\"items\":[{\"name\":\"klice_lspd\"}],\"state\":1}'),
(3, 'lspd2', '{\"state\":1,\"heading\":0,\"coords\":{\"x\":441.1240539550781,\"y\":-977.60107421875,\"z\":30.82319068908691},\"model\":-1406685646,\"maxDistance\":2,\"items\":[{\"name\":\"klice_lspd\"}]}'),
(4, 'lspd12', '{\"coords\":{\"x\":441.12408447265627,\"y\":-986.2335205078125,\"z\":30.82319068908691},\"model\":-96679321,\"items\":[{\"name\":\"klice_lspd\"}],\"state\":1,\"lockpick\":true,\"maxDistance\":2,\"heading\":180}'),
(5, 'lspd10', '{\"heading\":270,\"maxDistance\":2,\"items\":[{\"name\":\"klice_lspd\"}],\"model\":1830360419,\"coords\":{\"x\":464.1568603515625,\"y\":-975.2672119140625,\"z\":26.37070083618164},\"state\":1}'),
(6, 'lspd13', '{\"heading\":90,\"maxDistance\":2,\"items\":[{\"name\":\"klice_lspd\"}],\"model\":1830360419,\"coords\":{\"x\":464.1579284667969,\"y\":-996.90771484375,\"z\":26.37070083618164},\"state\":1}'),
(7, 'lspd3', '{\"unlockSound\":\"metallic-creak\",\"model\":2130672747,\"auto\":true,\"items\":[{\"name\":\"klice_lspd\"}],\"heading\":0,\"coords\":{\"x\":431.4118957519531,\"y\":-1000.771728515625,\"z\":26.69660949707031},\"lockSound\":\"metal-locker\",\"maxDistance\":6,\"state\":1}'),
(8, 'lspd29', '{\"model\":2130672747,\"auto\":true,\"items\":[{\"name\":\"klice_lspd\"}],\"heading\":0,\"coords\":{\"x\":452.3005065917969,\"y\":-1000.771728515625,\"z\":26.69660949707031},\"maxDistance\":6,\"state\":1}'),
(9, 'lspd7', '{\"coords\":{\"x\":475.349853515625,\"y\":-1010.8193359375,\"z\":26.40638923645019},\"model\":-1406685646,\"items\":[{\"name\":\"klice_lspd\"}],\"state\":1,\"maxDistance\":2,\"heading\":180}'),
(10, 'lspd4', '{\"state\":1,\"heading\":270,\"coords\":{\"x\":476.64471435546877,\"y\":-1008.2840576171875,\"z\":26.48004913330078},\"lockSound\":\"metal-locker\",\"model\":-53345114,\"unlockSound\":\"metallic-creak\",\"maxDistance\":2,\"items\":[{\"name\":\"klice_lspd\"}]}'),
(11, 'lspd21', '{\"heading\":180,\"maxDistance\":2,\"items\":[{\"name\":\"klice_lspd\"}],\"model\":-53345114,\"coords\":{\"x\":481.5995788574219,\"y\":-1004.1484375,\"z\":26.48004913330078},\"unlockSound\":\"metallic-creak\",\"lockSound\":\"metal-locker\",\"state\":1}'),
(12, 'lspd11', '{\"coords\":{\"x\":480.32159423828127,\"y\":-1012.158203125,\"z\":26.48004913330078},\"model\":-53345114,\"items\":[{\"name\":\"klice_lspd\"}],\"state\":1,\"maxDistance\":2,\"unlockSound\":\"metallic-creak\",\"lockSound\":\"metal-locker\",\"heading\":0}'),
(13, 'lspd8', '{\"state\":1,\"heading\":0,\"coords\":{\"x\":483.32147216796877,\"y\":-1012.158203125,\"z\":26.48004913330078},\"model\":-53345114,\"maxDistance\":2,\"items\":[{\"name\":\"klice_lspd\"}]}'),
(14, 'lspd20', '{\"heading\":0,\"maxDistance\":2,\"items\":[{\"name\":\"klice_lspd\"}],\"model\":-53345114,\"coords\":{\"x\":486.3218688964844,\"y\":-1012.158203125,\"z\":26.48004913330078},\"unlockSound\":\"metallic-creak\",\"lockSound\":\"metal-locker\",\"state\":1}'),
(15, 'lspd19', '{\"heading\":180,\"maxDistance\":2,\"items\":[{\"name\":\"klice_lspd\"}],\"model\":-53345114,\"coords\":{\"x\":484.7677001953125,\"y\":-1007.764892578125,\"z\":26.48004913330078},\"unlockSound\":\"metallic-creak\",\"lockSound\":\"metal-locker\",\"state\":1}'),
(16, 'lspd24', '{\"heading\":90,\"maxDistance\":2,\"items\":[{\"name\":\"klice_lspd\"}],\"model\":-288803980,\"coords\":{\"x\":479.05999755859377,\"y\":-1002.5689086914063,\"z\":26.4064998626709},\"state\":1}'),
(17, 'lspd25', '{\"heading\":270,\"maxDistance\":2,\"items\":[{\"name\":\"klice_lspd\"}],\"model\":-1406685646,\"coords\":{\"x\":482.66943359375,\"y\":-984.5908203125,\"z\":26.40547943115234},\"state\":1}'),
(18, 'lspd14', '{\"coords\":{\"x\":482.6701354980469,\"y\":-988.1831665039063,\"z\":26.40547943115234},\"model\":-1406685646,\"items\":[{\"name\":\"klice_lspd\"}],\"state\":1,\"maxDistance\":2,\"heading\":270}'),
(19, 'lspd23', '{\"heading\":270,\"maxDistance\":2,\"items\":[{\"name\":\"klice_lspd\"}],\"model\":-1406685646,\"coords\":{\"x\":482.669921875,\"y\":-992.9031982421875,\"z\":26.40547943115234},\"state\":1}'),
(20, 'lspd22', '{\"heading\":270,\"maxDistance\":2,\"items\":[{\"name\":\"klice_lspd\"}],\"model\":-1406685646,\"coords\":{\"x\":482.67022705078127,\"y\":-996.33251953125,\"z\":26.40547943115234},\"state\":1}'),
(21, 'lspd26', '{\"heading\":135,\"maxDistance\":2,\"items\":[{\"name\":\"klice_lspd\"}],\"model\":-692649124,\"coords\":{\"x\":475.4071960449219,\"y\":-990.0584106445313,\"z\":26.40547943115234},\"state\":1}'),
(22, 'lspd15', '{\"heading\":90,\"maxDistance\":2,\"items\":[{\"name\":\"klice_lspd\"}],\"model\":-692649124,\"coords\":{\"x\":479.750732421875,\"y\":-999.0274047851563,\"z\":30.78927040100097},\"unlockSound\":\"metallic-creak\",\"lockSound\":\"metal-locker\",\"state\":1}'),
(23, 'lspd16', '{\"heading\":181,\"maxDistance\":2,\"items\":[{\"name\":\"klice_lspd\"}],\"model\":-692649124,\"coords\":{\"x\":486.83642578125,\"y\":-1000.2027587890625,\"z\":30.7869701385498},\"unlockSound\":\"metallic-creak\",\"lockSound\":\"metal-locker\",\"state\":1}'),
(24, 'lspd9', '{\"heading\":90,\"maxDistance\":2,\"items\":[{\"name\":\"klice_lspd\"}],\"model\":-692649124,\"coords\":{\"x\":464.30859375,\"y\":-983.9268188476563,\"z\":43.771240234375},\"state\":1}'),
(25, 'ammu1', '{\"coords\":{\"x\":17.34993553161621,\"y\":-1115.05029296875,\"z\":29.94693756103515},\"items\":[{\"name\":\"klice_lsgc\"}],\"state\":1,\"lockpick\":true,\"doors\":[{\"coords\":{\"x\":16.12786865234375,\"y\":-1114.6055908203126,\"z\":29.94693756103515},\"model\":97297972,\"heading\":160},{\"coords\":{\"x\":18.57200241088867,\"y\":-1115.4951171875,\"z\":29.94693756103515},\"model\":-8873588,\"heading\":340}],\"maxDistance\":2}'),
(26, 'ammu2', '{\"heading\":160,\"maxDistance\":2,\"items\":[{\"name\":\"klice_lsgc\"}],\"model\":452874391,\"unlockSound\":\"metal-locker\",\"coords\":{\"x\":6.81789016723632,\"y\":-1098.20947265625,\"z\":29.94685363769531},\"lockpick\":true,\"lockSound\":\"metal-locker\",\"state\":1}'),
(27, 'ammu3', '{\"heading\":340,\"maxDistance\":2,\"items\":[{\"name\":\"klice_lsgc\"}],\"model\":-952356348,\"coords\":{\"x\":14.42116737365722,\"y\":-1106.952392578125,\"z\":29.9461441040039},\"lockpick\":true,\"state\":1}'),
(28, 'ems1', '{\"heading\":160,\"maxDistance\":2,\"items\":[{\"name\":\"klice_ems\"}],\"model\":854291622,\"coords\":{\"x\":309.13372802734377,\"y\":-597.75146484375,\"z\":43.43391036987305},\"lockpick\":true,\"state\":1}'),
(29, 'ems2', '{\"heading\":250,\"maxDistance\":2,\"items\":[{\"name\":\"klice_ems\"}],\"model\":854291622,\"coords\":{\"x\":313.257080078125,\"y\":-596.0704345703125,\"z\":43.43391036987305},\"lockpick\":true,\"state\":1}'),
(30, 'ems3', '{\"maxDistance\":2,\"doors\":[{\"coords\":{\"x\":327.2560119628906,\"y\":-595.1950073242188,\"z\":43.43391036987305},\"heading\":250,\"model\":-1700911976},{\"coords\":{\"x\":328.1364440917969,\"y\":-592.7760620117188,\"z\":43.43391036987305},\"heading\":250,\"model\":-434783486}],\"coords\":{\"x\":327.69622802734377,\"y\":-593.9855346679688,\"z\":43.43391036987305},\"items\":[{\"name\":\"klice_ems\"}],\"lockpick\":true,\"state\":0}'),
(31, 'ems5', '{\"maxDistance\":2,\"doors\":[{\"coords\":{\"x\":305.22186279296877,\"y\":-582.3056030273438,\"z\":43.43391036987305},\"heading\":340,\"model\":-1700911976},{\"coords\":{\"x\":302.8030700683594,\"y\":-581.424560546875,\"z\":43.43391036987305},\"heading\":340,\"model\":-434783486}],\"unlockSound\":\"door-bolt-4\",\"items\":[{\"name\":\"klice_ems\"}],\"coords\":{\"x\":304.012451171875,\"y\":-581.8651123046875,\"z\":43.43391036987305},\"lockpick\":true,\"lockSound\":\"door-bolt-4\",\"state\":0}'),
(32, 'ems4', '{\"maxDistance\":2,\"doors\":[{\"coords\":{\"x\":326.6549987792969,\"y\":-590.1066284179688,\"z\":43.43391036987305},\"heading\":340,\"model\":-1700911976},{\"coords\":{\"x\":324.23602294921877,\"y\":-589.2261962890625,\"z\":43.43391036987305},\"heading\":340,\"model\":-434783486}],\"coords\":{\"x\":325.44549560546877,\"y\":-589.6663818359375,\"z\":43.43391036987305},\"items\":[{\"name\":\"klice_ems\"}],\"lockpick\":true,\"state\":0}'),
(33, 'ems6', '{\"heading\":70,\"maxDistance\":2,\"items\":[{\"name\":\"klice_ems\"}],\"model\":854291622,\"coords\":{\"x\":303.9596252441406,\"y\":-572.5579223632813,\"z\":43.43391036987305},\"lockpick\":true,\"state\":1}'),
(34, 'ems7', '{\"heading\":340,\"maxDistance\":2,\"items\":[{\"name\":\"klice_ems\"}],\"model\":854291622,\"coords\":{\"x\":307.7303466796875,\"y\":-569.791748046875,\"z\":43.43391036987305},\"lockpick\":true,\"state\":1}'),
(35, 'ems8', '{\"maxDistance\":2,\"doors\":[{\"coords\":{\"x\":312.005126953125,\"y\":-571.3411865234375,\"z\":43.43391036987305},\"heading\":340,\"model\":-434783486},{\"coords\":{\"x\":314.4241027832031,\"y\":-572.2215576171875,\"z\":43.43391036987305},\"heading\":340,\"model\":-1700911976}],\"coords\":{\"x\":313.214599609375,\"y\":-571.7813720703125,\"z\":43.43391036987305},\"items\":[{\"name\":\"klice_ems\"}],\"lockpick\":true,\"state\":0}'),
(36, 'ems9', '{\"maxDistance\":2,\"doors\":[{\"coords\":{\"x\":320.26153564453127,\"y\":-574.3463134765625,\"z\":43.43391036987305},\"heading\":340,\"model\":-1700911976},{\"coords\":{\"x\":317.8425598144531,\"y\":-573.4658813476563,\"z\":43.43391036987305},\"heading\":340,\"model\":-434783486}],\"coords\":{\"x\":319.05206298828127,\"y\":-573.9061279296875,\"z\":43.43391036987305},\"items\":[{\"name\":\"klice_ems\"}],\"lockpick\":true,\"state\":0}'),
(37, 'ems10', '{\"maxDistance\":2,\"doors\":[{\"coords\":{\"x\":325.6565246582031,\"y\":-576.3099365234375,\"z\":43.43391036987305},\"heading\":340,\"model\":-1700911976},{\"coords\":{\"x\":323.237548828125,\"y\":-575.429443359375,\"z\":43.43391036987305},\"heading\":340,\"model\":-434783486}],\"coords\":{\"x\":324.447021484375,\"y\":-575.8696899414063,\"z\":43.43391036987305},\"items\":[{\"name\":\"klice_ems\"}],\"lockpick\":true,\"state\":0}'),
(38, 'ems11', '{\"maxDistance\":2,\"doors\":[{\"coords\":{\"x\":316.0657043457031,\"y\":-578.3477172851563,\"z\":43.43391036987305},\"heading\":160,\"model\":-1700911976},{\"coords\":{\"x\":318.48468017578127,\"y\":-579.2281494140625,\"z\":43.43391036987305},\"heading\":160,\"model\":-434783486}],\"coords\":{\"x\":317.27520751953127,\"y\":-578.7879638671875,\"z\":43.43391036987305},\"items\":[{\"name\":\"klice_ems\"}],\"lockpick\":true,\"state\":0}'),
(39, 'ems12', '{\"maxDistance\":2,\"doors\":[{\"coords\":{\"x\":325.6694641113281,\"y\":-580.4595947265625,\"z\":43.43391036987305},\"heading\":250,\"model\":-1700911976},{\"coords\":{\"x\":326.5498962402344,\"y\":-578.0406494140625,\"z\":43.43391036987305},\"heading\":250,\"model\":-434783486}],\"coords\":{\"x\":326.10968017578127,\"y\":-579.2501220703125,\"z\":43.43391036987305},\"items\":[{\"name\":\"klice_ems\"}],\"lockpick\":true,\"state\":0}'),
(40, 'ems13', '{\"heading\":340,\"maxDistance\":2,\"items\":[{\"name\":\"klice_ems\"}],\"model\":854291622,\"coords\":{\"x\":336.162841796875,\"y\":-580.1403198242188,\"z\":43.43391036987305},\"lockpick\":true,\"state\":1}'),
(41, 'ems19', '{\"coords\":{\"x\":341.3940124511719,\"y\":-582.0443115234375,\"z\":43.43391036987305},\"model\":854291622,\"items\":[{\"name\":\"klice_ems\"}],\"state\":1,\"lockpick\":true,\"maxDistance\":2,\"heading\":340}'),
(42, 'ems14', '{\"heading\":340,\"maxDistance\":2,\"items\":[{\"name\":\"klice_ems\"}],\"model\":854291622,\"coords\":{\"x\":346.77392578125,\"y\":-584.00244140625,\"z\":43.43391036987305},\"lockpick\":true,\"state\":1}'),
(43, 'ems15', '{\"heading\":340,\"items\":[{\"name\":\"klice_ems\"}],\"coords\":{\"x\":339.6171569824219,\"y\":-586.9262084960938,\"z\":43.43391036987305},\"state\":0,\"lockpick\":true,\"maxDistance\":2,\"model\":854291622}'),
(44, 'ems16', '{\"heading\":340,\"maxDistance\":2,\"items\":[{\"name\":\"klice_ems\"}],\"model\":854291622,\"coords\":{\"x\":336.8664855957031,\"y\":-592.5787963867188,\"z\":43.43391036987305},\"lockpick\":true,\"state\":1}'),
(45, 'ems17', '{\"heading\":340,\"maxDistance\":2,\"items\":[{\"name\":\"klice_ems\"}],\"model\":854291622,\"coords\":{\"x\":358.7265319824219,\"y\":-593.8814086914063,\"z\":43.43391036987305},\"lockpick\":true,\"state\":1}'),
(46, 'ems18', '{\"heading\":70,\"maxDistance\":2,\"items\":[{\"name\":\"klice_ems\"}],\"model\":854291622,\"coords\":{\"x\":346.885498046875,\"y\":-593.5999755859375,\"z\":43.43391036987305},\"lockpick\":true,\"state\":1}'),
(47, 'lspd1', '{\"state\":0,\"maxDistance\":2,\"doors\":[{\"model\":-1547307588,\"heading\":90,\"coords\":{\"x\":434.74444580078127,\"y\":-983.078125,\"z\":30.81530380249023}},{\"model\":-1547307588,\"heading\":270,\"coords\":{\"x\":434.74444580078127,\"y\":-980.7555541992188,\"z\":30.81530380249023}}],\"items\":[{\"name\":\"klice_lspd\"}],\"coords\":{\"x\":434.74444580078127,\"y\":-981.9168701171875,\"z\":30.81530380249023}}'),
(48, 'lspd17', '{\"coords\":{\"x\":477.32135009765627,\"y\":-1012.158203125,\"z\":26.48005485534668},\"model\":-53345114,\"items\":[{\"name\":\"klice_lspd\"}],\"state\":1,\"maxDistance\":2,\"unlockSound\":\"metallic-creak\",\"lockSound\":\"metal-locker\",\"heading\":0}'),
(49, 'lspd18', '{\"coords\":{\"x\":486.8158874511719,\"y\":-1002.9019775390625,\"z\":30.78697204589843},\"items\":[{\"name\":\"klice_lspd\"}],\"state\":1,\"maxDistance\":2,\"doors\":[{\"coords\":{\"x\":485.61334228515627,\"y\":-1002.9019775390625,\"z\":30.78697204589843},\"model\":-692649124,\"heading\":0},{\"coords\":{\"x\":488.0184326171875,\"y\":-1002.9019775390625,\"z\":30.78697204589843},\"model\":-692649124,\"heading\":180}],\"unlockSound\":\"metal-locker\",\"lockSound\":\"metal-locker\"}'),
(51, 'court1', '{\"doors\":[{\"heading\":0,\"coords\":{\"x\":242.21929931640626,\"y\":-1074.64306640625,\"z\":29.55340766906738},\"model\":1276029049},{\"heading\":180,\"coords\":{\"x\":244.6177978515625,\"y\":-1074.64306640625,\"z\":29.55340766906738},\"model\":1276029049}],\"lockpick\":true,\"coords\":{\"x\":243.41854858398438,\"y\":-1074.64306640625,\"z\":29.55340766906738},\"items\":[{\"name\":\"klice_lspd\"},{\"name\":\"klice_sanandreas\"}],\"state\":1,\"maxDistance\":2}'),
(52, 'court2', '{\"state\":1,\"doors\":[{\"heading\":0,\"coords\":{\"x\":249.30589294433595,\"y\":-1093.260009765625,\"z\":29.42788696289062},\"model\":-739665083},{\"heading\":180,\"coords\":{\"x\":251.90789794921876,\"y\":-1093.2659912109376,\"z\":29.42788696289062},\"model\":-739665083}],\"items\":[{\"name\":\"klice_lspd\"},{\"name\":\"klice_sanandreas\"}],\"maxDistance\":2,\"coords\":{\"x\":250.60690307617188,\"y\":-1093.262939453125,\"z\":29.42788696289062},\"lockpick\":true}'),
(53, 'court3', '{\"state\":1,\"doors\":[{\"heading\":270,\"coords\":{\"x\":244.0078887939453,\"y\":-1098.6510009765626,\"z\":29.42781829833984},\"model\":-739665083},{\"heading\":90,\"coords\":{\"x\":244.0012969970703,\"y\":-1101.2530517578126,\"z\":29.42781829833984},\"model\":-739665083}],\"items\":[{\"name\":\"klice_lspd\"},{\"name\":\"klice_sanandreas\"}],\"maxDistance\":2,\"coords\":{\"x\":244.0045928955078,\"y\":-1099.9520263671876,\"z\":29.42781829833984},\"lockpick\":true}'),
(54, 'court5', '{\"state\":1,\"doors\":[{\"heading\":0,\"coords\":{\"x\":234.98858642578126,\"y\":-1093.260009765625,\"z\":29.427827835083},\"model\":-739665083},{\"heading\":180,\"coords\":{\"x\":237.58448791503907,\"y\":-1093.2659912109376,\"z\":29.427827835083},\"model\":-739665083}],\"items\":[{\"name\":\"klice_sanandreas\"}],\"maxDistance\":2,\"coords\":{\"x\":236.28652954101563,\"y\":-1093.262939453125,\"z\":29.427827835083},\"lockpick\":true}'),
(55, 'court7', '{\"state\":1,\"doors\":[{\"heading\":0,\"coords\":{\"x\":234.98858642578126,\"y\":-1093.260009765625,\"z\":36.26731491088867},\"model\":-739665083},{\"heading\":180,\"coords\":{\"x\":237.58448791503907,\"y\":-1093.2659912109376,\"z\":36.26731491088867},\"model\":-739665083}],\"items\":[{\"name\":\"klice_sanandreas\"}],\"maxDistance\":2,\"coords\":{\"x\":236.28652954101563,\"y\":-1093.262939453125,\"z\":36.26731491088867},\"lockpick\":true}'),
(56, 'court6', '{\"state\":1,\"doors\":[{\"heading\":180,\"coords\":{\"x\":251.90789794921876,\"y\":-1093.2659912109376,\"z\":36.26668930053711},\"model\":-739665083},{\"heading\":0,\"coords\":{\"x\":249.30589294433595,\"y\":-1093.260009765625,\"z\":36.26668930053711},\"model\":-739665083}],\"items\":[{\"name\":\"klice_sanandreas\"}],\"maxDistance\":2,\"coords\":{\"x\":250.60690307617188,\"y\":-1093.262939453125,\"z\":36.26668930053711},\"lockpick\":true}'),
(57, 'ems_spodek_1', '{\"heading\":160,\"coords\":{\"x\":337.2776794433594,\"y\":-564.4320068359375,\"z\":29.77529144287109},\"state\":1,\"model\":-820650556,\"autolock\":6,\"items\":[{\"name\":\"klice_ems\"}],\"unlockSound\":\"metal-locker\",\"lockSound\":\"metal-locker\",\"maxDistance\":7}'),
(58, 'ems_spodek2', '{\"heading\":160,\"coords\":{\"x\":330.1349182128906,\"y\":-561.8331298828125,\"z\":29.77529144287109},\"state\":1,\"model\":-820650556,\"autolock\":6,\"items\":[{\"name\":\"klice_ems\"}],\"maxDistance\":7}'),
(59, 'ems_spodek3', '{\"items\":[{\"name\":\"klice_ems\"}],\"state\":1,\"lockpick\":true,\"maxDistance\":2,\"coords\":{\"x\":319.8402099609375,\"y\":-560.460693359375,\"z\":28.94723892211914},\"doors\":[{\"model\":1248599813,\"coords\":{\"x\":318.6656188964844,\"y\":-561.0086059570313,\"z\":28.94723892211914},\"heading\":205},{\"model\":-1421582160,\"coords\":{\"x\":321.01483154296877,\"y\":-559.9127197265625,\"z\":28.94723892211914},\"heading\":25}]}'),
(60, 'ems_spodek4', '{\"autolock\":2,\"state\":1,\"lockpick\":true,\"maxDistance\":2,\"items\":[{\"name\":\"klice_ems\"}],\"coords\":{\"x\":338.8866271972656,\"y\":-588.84375,\"z\":28.94709205627441},\"doors\":[{\"model\":-1700911976,\"coords\":{\"x\":339.32659912109377,\"y\":-587.634521484375,\"z\":28.94709205627441},\"heading\":70},{\"model\":-434783486,\"coords\":{\"x\":338.4466552734375,\"y\":-590.052978515625,\"z\":28.94709205627441},\"heading\":70}]}'),
(61, 'ems_spodek5', '{\"heading\":250,\"model\":854291622,\"state\":1,\"lockpick\":true,\"maxDistance\":2,\"coords\":{\"x\":348.54669189453127,\"y\":-585.158447265625,\"z\":28.94709205627441},\"items\":[{\"name\":\"klice_ems\"}]}'),
(92, 'yellowjack_vchod', '{\"doors\":false,\"maxDistance\":2,\"items\":[{\"remove\":false,\"name\":\"klice_yellowjack\"}],\"state\":1,\"heading\":148,\"coords\":{\"x\":1991.10595703125,\"y\":3053.10546875,\"z\":47.36528778076172},\"model\":-287662406}'),
(93, 'yellowjack_byt', '{\"doors\":false,\"maxDistance\":2,\"items\":[{\"remove\":false,\"name\":\"klice_yellowjack\"}],\"state\":1,\"heading\":328,\"coords\":{\"x\":1980.103271484375,\"y\":3050.530517578125,\"z\":50.63905334472656},\"model\":-547305886}'),
(94, 'yellowjack_garage', '{\"doors\":false,\"maxDistance\":2,\"items\":[{\"remove\":false,\"name\":\"klice_yellowjack\"}],\"state\":1,\"heading\":328,\"coords\":{\"x\":1998.36279296875,\"y\":3039.101318359375,\"z\":48.41230773925781},\"model\":1287245314}'),
(95, 'lsfd_vchod', '{\"doors\":[{\"heading\":140,\"coords\":{\"x\":198.59280395507813,\"y\":-1634.904296875,\"z\":29.95208168029785},\"model\":1303389440},{\"heading\":320,\"coords\":{\"x\":200.58436584472657,\"y\":-1636.575439453125,\"z\":29.95208168029785},\"model\":1303389440}],\"items\":[{\"name\":\"klice_fire\"}],\"maxDistance\":2,\"coords\":{\"x\":199.58859252929688,\"y\":-1635.7398681640626,\"z\":29.95208168029785},\"state\":1}'),
(96, 'lsfd_garage', '{\"doors\":false,\"model\":-334270409,\"items\":[{\"name\":\"klice_fire\"}],\"maxDistance\":2,\"coords\":{\"x\":212.12551879882813,\"y\":-1643.68408203125,\"z\":30.5342903137207},\"heading\":140,\"state\":1}'),
(97, 'lsfd_garage', '{\"doors\":false,\"model\":-334270409,\"items\":[{\"name\":\"klice_fire\"}],\"maxDistance\":2,\"coords\":{\"x\":208.998291015625,\"y\":-1641.06005859375,\"z\":30.5342903137207},\"heading\":140,\"state\":1}'),
(98, 'lsfd_garage', '{\"doors\":false,\"model\":-334270409,\"items\":[{\"name\":\"klice_fire\"}],\"maxDistance\":2,\"coords\":{\"x\":215.24710083007813,\"y\":-1646.30810546875,\"z\":30.5342903137207},\"heading\":140,\"state\":1}'),
(99, 'lsfd_zadnigarage', '{\"doors\":false,\"model\":-334270409,\"items\":[{\"name\":\"klice_fire\"}],\"maxDistance\":2,\"coords\":{\"x\":201.53004455566407,\"y\":-1662.6427001953126,\"z\":30.5342903137207},\"heading\":320,\"state\":1}'),
(100, 'lsfd_zadnigarage', '{\"doors\":false,\"model\":-334270409,\"items\":[{\"name\":\"klice_fire\"}],\"maxDistance\":2,\"coords\":{\"x\":198.40957641601563,\"y\":-1660.028564453125,\"z\":30.52128219604492},\"heading\":320,\"state\":1}'),
(101, 'lsfd_zadnigarage', '{\"doors\":false,\"model\":-334270409,\"items\":[{\"name\":\"klice_fire\"}],\"maxDistance\":2,\"coords\":{\"x\":195.30117797851563,\"y\":-1657.3935546875,\"z\":30.52652168273925},\"heading\":320,\"state\":1}'),
(102, 'lsfd_tiskovka', '{\"doors\":false,\"model\":1947637712,\"items\":[{\"name\":\"klice_fire\"}],\"maxDistance\":2,\"coords\":{\"x\":187.36334228515626,\"y\":-1654.9913330078126,\"z\":30.06973266601562},\"heading\":141,\"state\":1}'),
(103, 'lsfd_in', '{\"doors\":false,\"model\":1289778077,\"items\":[{\"name\":\"klice_fire\"}],\"maxDistance\":2,\"coords\":{\"x\":195.2115020751953,\"y\":-1652.292236328125,\"z\":30.03704071044922},\"heading\":49,\"state\":1}'),
(104, 'lsfd_recepce', '{\"heading\":50,\"coords\":{\"x\":203.35693359375,\"y\":-1642.6029052734376,\"z\":29.94523239135742},\"maxDistance\":2,\"doors\":false,\"model\":1289778077,\"state\":1,\"items\":[{\"name\":\"klice_fire\"}]}'),
(106, 'emsSandy', '{\"maxDistance\":2,\"model\":-1726331785,\"items\":[{\"name\":\"klice_ems\"}],\"coords\":{\"x\":1830.96826171875,\"y\":3690.396484375,\"z\":34.43083953857422},\"doors\":false,\"heading\":120,\"state\":1}'),
(107, 'emsSandy2', '{\"maxDistance\":2,\"items\":[{\"name\":\"klice_ems\"}],\"coords\":{\"x\":1828.3397216796876,\"y\":3691.006591796875,\"z\":34.69358825683594},\"doors\":[{\"coords\":{\"x\":1827.0426025390626,\"y\":3690.258544921875,\"z\":34.69300079345703},\"model\":393888353,\"heading\":210},{\"coords\":{\"x\":1829.6368408203126,\"y\":3691.754638671875,\"z\":34.69417190551758},\"model\":393888353,\"heading\":30}],\"state\":1}'),
(108, 'vanilla_vstup', '{\"heading\":30,\"coords\":{\"x\":127.95523071289063,\"y\":-1298.50341796875,\"z\":29.41962242126465},\"state\":1,\"maxDistance\":2,\"model\":-1116041313,\"items\":[{\"name\":\"klice_unicorn\"}],\"doors\":false}'),
(109, 'vanilla_kancelar', '{\"heading\":300,\"coords\":{\"x\":113.98224639892578,\"y\":-1297.430419921875,\"z\":29.4186782836914},\"state\":1,\"maxDistance\":2,\"model\":-495720969,\"items\":[{\"name\":\"klice_unicorn\"}],\"doors\":false}'),
(110, 'vanilla_kanclzastripem', '{\"heading\":30,\"coords\":{\"x\":99.08320617675781,\"y\":-1293.7005615234376,\"z\":29.41868209838867},\"state\":1,\"maxDistance\":2,\"model\":-626684119,\"items\":[{\"name\":\"klice_unicorn\"}],\"doors\":false}'),
(111, 'vanilla_back', '{\"heading\":210,\"coords\":{\"x\":96.09197235107422,\"y\":-1284.853759765625,\"z\":29.43878364562988},\"state\":1,\"maxDistance\":2,\"model\":668467214,\"items\":[{\"name\":\"klice_unicorn\"}],\"doors\":false}'),
(112, 'jail_dvur', '{\"heading\":360,\"coords\":{\"x\":1770.3465576171876,\"y\":2566.61962890625,\"z\":45.87600326538086},\"state\":1,\"maxDistance\":2,\"model\":-1033001619,\"items\":[{\"name\":\"klice_lspd\"}],\"doors\":false}'),
(113, 'jail_ven', '{\"heading\":360,\"coords\":{\"x\":1780.2266845703126,\"y\":2588.5439453125,\"z\":44.78176879882812},\"state\":1,\"maxDistance\":2,\"model\":-1612152164,\"items\":[{\"name\":\"klice_lspd\"}],\"doors\":false}'),
(114, 'jail_ven2', '{\"heading\":270,\"coords\":{\"x\":1782.5916748046876,\"y\":2590.896484375,\"z\":44.77683639526367},\"state\":1,\"maxDistance\":2,\"model\":-1612152164,\"items\":[{\"name\":\"klice_lspd\"}],\"doors\":false}'),
(115, 'lspd_sandy', '{\"items\":[{\"name\":\"klice_lspd\"}],\"coords\":{\"x\":1850.11474609375,\"y\":3685.6279296875,\"z\":34.38746643066406},\"model\":-1297471157,\"maxDistance\":2,\"state\":1,\"heading\":210,\"doors\":false}'),
(116, 'lspd_sandy2', '{\"items\":[{\"name\":\"klice_lspd\"}],\"coords\":{\"x\":1849.521728515625,\"y\":3682.91943359375,\"z\":34.38288497924805},\"model\":-712085785,\"maxDistance\":2,\"state\":1,\"heading\":300,\"doors\":false}'),
(117, 'lspd_sandy3', '{\"items\":[{\"name\":\"klice_lspd\"}],\"coords\":{\"x\":1857.4239501953126,\"y\":3689.847900390625,\"z\":34.38715362548828},\"model\":-2063446532,\"maxDistance\":2,\"state\":1,\"heading\":210,\"doors\":false}'),
(118, 'lspd_sandy_cela1', '{\"items\":[{\"name\":\"klice_lspd\"}],\"coords\":{\"x\":1849.9619140625,\"y\":3693.903076171875,\"z\":34.36824035644531},\"model\":-1491332605,\"maxDistance\":2,\"state\":1,\"heading\":30,\"doors\":false}'),
(119, 'lspd_sandy_cela2', '{\"items\":[{\"name\":\"klice_lspd\"}],\"coords\":{\"x\":1852.89111328125,\"y\":3695.593994140625,\"z\":34.36824035644531},\"model\":-1491332605,\"maxDistance\":2,\"state\":1,\"heading\":30,\"doors\":false}'),
(120, 'lspd_sandy_cela3', '{\"items\":[{\"name\":\"klice_lspd\"}],\"coords\":{\"x\":1856.9417724609376,\"y\":3695.5986328125,\"z\":34.36867904663086},\"model\":-1491332605,\"maxDistance\":2,\"state\":1,\"heading\":300,\"doors\":false}'),
(121, 'lspd_sandy_back', '{\"items\":[{\"name\":\"klice_lspd\"}],\"coords\":{\"x\":1852.81689453125,\"y\":3699.37939453125,\"z\":34.4227066040039},\"model\":-2002725619,\"maxDistance\":2,\"state\":1,\"heading\":30,\"doors\":false}'),
(122, 'lspd_sandy_armoury', '{\"items\":[{\"name\":\"klice_lspd\"}],\"coords\":{\"x\":1858.4754638671876,\"y\":3690.455078125,\"z\":34.38746643066406},\"model\":-1297471157,\"maxDistance\":2,\"state\":1,\"heading\":30,\"doors\":false}'),
(123, 'lspd_paleto_vyslech', '{\"items\":[{\"name\":\"klice_lspd\"}],\"coords\":{\"x\":-449.79461669921877,\"y\":6015.4482421875,\"z\":31.86632919311523},\"model\":-2023754432,\"maxDistance\":2,\"state\":1,\"heading\":135,\"doors\":false}'),
(124, 'lspd_paleto_personnel', '{\"items\":[{\"name\":\"klice_lspd\"}],\"coords\":{\"x\":-441.9010925292969,\"y\":6011.85107421875,\"z\":31.86632919311523},\"maxDistance\":2,\"state\":1,\"doors\":[{\"coords\":{\"x\":-440.9806823730469,\"y\":6012.771484375,\"z\":31.86632919311523},\"model\":964838196,\"heading\":45},{\"coords\":{\"x\":-442.8215026855469,\"y\":6010.9306640625,\"z\":31.86632919311523},\"model\":964838196,\"heading\":225}]}'),
(125, 'lspd_paleto_personnel2', '{\"items\":[{\"name\":\"klice_lspd\"}],\"coords\":{\"x\":-448.62957763671877,\"y\":6007.63720703125,\"z\":31.80887222290039},\"maxDistance\":2,\"state\":1,\"doors\":[{\"coords\":{\"x\":-449.5500183105469,\"y\":6008.5576171875,\"z\":31.80887222290039},\"model\":-681066206,\"heading\":135},{\"coords\":{\"x\":-447.70916748046877,\"y\":6006.716796875,\"z\":31.80887222290039},\"model\":245182344,\"heading\":315}]}'),
(126, 'lspd_paleto_back', '{\"items\":[{\"name\":\"klice_lspd\"}],\"coords\":{\"x\":-450.9787292480469,\"y\":6006.07470703125,\"z\":31.99416542053222},\"model\":452874391,\"maxDistance\":2,\"state\":1,\"heading\":315,\"doors\":false}'),
(127, 'lspd_paleto_back2', '{\"items\":[{\"name\":\"klice_lspd\"}],\"coords\":{\"x\":-447.2262878417969,\"y\":6002.32861328125,\"z\":31.83942604064941},\"model\":452874391,\"maxDistance\":2,\"state\":1,\"heading\":135,\"doors\":false}'),
(128, 'lspd_paleto_armoury', '{\"items\":[{\"name\":\"klice_lspd\"}],\"coords\":{\"x\":-437.61444091796877,\"y\":5992.8193359375,\"z\":31.93605613708496},\"model\":-1011692606,\"maxDistance\":2,\"state\":1,\"heading\":315,\"doors\":false}'),
(129, 'lspd_paleto_cela1', '{\"items\":[{\"name\":\"klice_lspd\"}],\"coords\":{\"x\":-431.19207763671877,\"y\":5999.74169921875,\"z\":31.87312316894531},\"model\":631614199,\"maxDistance\":2,\"state\":1,\"heading\":316,\"doors\":false}'),
(130, 'lspd_paleto_cela2', '{\"items\":[{\"name\":\"klice_lspd\"}],\"coords\":{\"x\":-428.06463623046877,\"y\":5996.671875,\"z\":31.87312316894531},\"model\":631614199,\"maxDistance\":2,\"state\":1,\"heading\":316,\"doors\":false}'),
(131, 'lspd_paleto_cela_vstup', '{\"items\":[{\"name\":\"klice_lspd\"}],\"coords\":{\"x\":-432.1754455566406,\"y\":5992.12158203125,\"z\":31.87311935424804},\"model\":631614199,\"maxDistance\":2,\"state\":1,\"heading\":316,\"doors\":false}'),
(132, 'bennys_vjezd', '{\"heading\":0,\"items\":[{\"name\":\"klice_bennys\"}],\"doors\":false,\"maxDistance\":5,\"model\":-427498890,\"coords\":{\"x\":-205.68280029296876,\"y\":-1310.6712646484376,\"z\":30.29571533203125},\"state\":1}'),
(133, 'bennys_kancl', '{\"doors\":false,\"model\":-2051651622,\"items\":[{\"name\":\"klice_bennys\"}],\"maxDistance\":2,\"coords\":{\"x\":-202.8780059814453,\"y\":-1334.7265625,\"z\":35.06844711303711},\"heading\":90,\"state\":1}'),
(134, 'royal_vjezd', '{\"coords\":{\"x\":-356.0378723144531,\"y\":-134.7915496826172,\"z\":40.01295471191406},\"doors\":false,\"model\":-550347177,\"heading\":250,\"maxDistance\":5,\"items\":[{\"name\":\"klice_royal\"}],\"state\":1}'),
(135, 'lsfd_iupper', '{\"model\":-2115095681,\"doors\":false,\"items\":[{\"name\":\"klice_fire\"}],\"coords\":{\"x\":192.77639770507813,\"y\":-1655.4915771484376,\"z\":35.15882873535156},\"heading\":230,\"state\":1,\"maxDistance\":2}'),
(136, 'lsfd_upper2', '{\"model\":-2115095681,\"doors\":false,\"items\":[{\"name\":\"klice_fire\"}],\"coords\":{\"x\":192.65966796875,\"y\":-1648.886474609375,\"z\":33.5279541015625},\"heading\":140,\"state\":1,\"maxDistance\":2}'),
(137, 'lspd_sandy_garage_prave', '{\"doors\":false,\"coords\":{\"x\":1874.78955078125,\"y\":3693.63818359375,\"z\":32.54848098754883},\"items\":[{\"name\":\"klice_lspd\"}],\"heading\":300,\"maxDistance\":5,\"auto\":true,\"state\":1,\"model\":1900796983}'),
(138, 'lspd_sandy_garage_lave', '{\"doors\":false,\"coords\":{\"x\":1871.9500732421876,\"y\":3698.4619140625,\"z\":32.54848098754883},\"items\":[{\"name\":\"klice_lspd\"}],\"heading\":300,\"maxDistance\":5,\"auto\":true,\"state\":1,\"model\":1900796983}'),
(139, 'lspd_sandy_garage_vstup', '{\"doors\":false,\"coords\":{\"x\":1886.632080078125,\"y\":3690.62744140625,\"z\":33.64096069335937},\"items\":[{\"name\":\"klice_lspd\"}],\"heading\":300,\"maxDistance\":2,\"state\":1,\"model\":2599026}'),
(141, 'emsSandy3', '{\"doors\":[{\"coords\":{\"x\":1821.0350341796876,\"y\":3675.922119140625,\"z\":34.4221305847168},\"heading\":210,\"model\":580361003},{\"coords\":{\"x\":1823.2608642578126,\"y\":3677.2109375,\"z\":34.4221305847168},\"heading\":210,\"model\":1415151278}],\"coords\":{\"x\":1822.14794921875,\"y\":3676.56640625,\"z\":34.4221305847168},\"items\":[{\"name\":\"klice_ems\"}],\"maxDistance\":2,\"state\":0}'),
(142, 'emsSandy4', '{\"doors\":[{\"coords\":{\"x\":1825.335693359375,\"y\":3682.419921875,\"z\":34.42226028442383},\"heading\":120,\"model\":580361003},{\"coords\":{\"x\":1826.6263427734376,\"y\":3680.19287109375,\"z\":34.42226028442383},\"heading\":120,\"model\":1415151278}],\"coords\":{\"x\":1825.98095703125,\"y\":3681.306396484375,\"z\":34.42226028442383},\"items\":[{\"name\":\"klice_ems\"}],\"maxDistance\":2,\"state\":0}'),
(143, 'emsSandy5', '{\"doors\":[{\"coords\":{\"x\":1837.2786865234376,\"y\":3673.3701171875,\"z\":34.69900894165039},\"heading\":210,\"model\":393888353},{\"coords\":{\"x\":1839.8717041015626,\"y\":3674.867919921875,\"z\":34.69619750976562},\"heading\":30,\"model\":393888353}],\"coords\":{\"x\":1838.5751953125,\"y\":3674.119140625,\"z\":34.69760131835937},\"items\":[{\"name\":\"klice_ems\"}],\"maxDistance\":2,\"state\":0}'),
(144, 'lspd_sandy_hlavnyvstup', '{\"doors\":false,\"coords\":{\"x\":1855.6861572265626,\"y\":3683.9287109375,\"z\":34.59624862670898},\"items\":[{\"name\":\"klice_lspd\"}],\"heading\":30,\"maxDistance\":2,\"state\":0,\"model\":-1765048490}'),
(145, 'lspd_paleto_hlavnyvstup', '{\"doors\":[{\"coords\":{\"x\":-442.6600646972656,\"y\":6015.2216796875,\"z\":31.86632919311523},\"heading\":315,\"model\":-1501157055},{\"coords\":{\"x\":-444.4985046386719,\"y\":6017.06005859375,\"z\":31.86632919311523},\"heading\":135,\"model\":-1501157055}],\"coords\":{\"x\":-443.57928466796877,\"y\":6016.140625,\"z\":31.86632919311523},\"items\":[{\"name\":\"klice_lspd\"}],\"maxDistance\":2,\"state\":0}'),
(146, 'lspd_zadnivjezd', '{\"heading\":90,\"autolock\":15,\"doors\":false,\"model\":-1603817716,\"maxDistance\":6,\"coords\":{\"x\":488.916015625,\"y\":-1019.9553833007813,\"z\":27.14934921264648},\"state\":1,\"items\":[{\"name\":\"klice_lspd\"}]}'),
(147, 'galaxy_vchod', '{\"coords\":{\"x\":355.6922912597656,\"y\":301.0185852050781,\"z\":104.20220184326172},\"doors\":false,\"model\":-1989765534,\"heading\":166,\"maxDistance\":4,\"items\":[{\"name\":\"klice_galaxy\"}],\"state\":1}'),
(148, 'galaxy_bar', '{\"coords\":{\"x\":354.45001220703127,\"y\":273.7086486816406,\"z\":94.35608673095703},\"doors\":false,\"model\":1695461688,\"heading\":75,\"maxDistance\":2,\"items\":[{\"name\":\"klice_galaxy\"}],\"state\":1}'),
(149, 'galaxy_kancl', '{\"coords\":{\"x\":377.7810363769531,\"y\":267.7672119140625,\"z\":95.13993072509766},\"doors\":false,\"model\":-1555108147,\"heading\":75,\"maxDistance\":3,\"items\":[{\"name\":\"klice_galaxy\"}],\"state\":1}'),
(150, 'galaxy_sklad', '{\"coords\":{\"x\":380.1553955078125,\"y\":266.6349792480469,\"z\":91.3551254272461},\"doors\":false,\"model\":1695461688,\"heading\":345,\"maxDistance\":2,\"items\":[{\"name\":\"klice_galaxy\"}],\"state\":1}'),
(151, '6085_vchod', '{\"coords\":{\"x\":7.51835823059082,\"y\":539.52685546875,\"z\":176.17764282226563},\"doors\":false,\"model\":308207762,\"heading\":150,\"maxDistance\":2,\"items\":[{\"name\":\"klice_9\"}],\"state\":1}'),
(152, 'lostmc_vjezd', '{\"doors\":false,\"coords\":{\"x\":982.387451171875,\"y\":-125.37104797363281,\"z\":74.99313354492188},\"model\":-197537718,\"items\":[{\"name\":\"klice_lostmc\"}],\"state\":1,\"heading\":239,\"maxDistance\":4}'),
(153, 'lostmc1', '{\"doors\":false,\"coords\":{\"x\":994.5238647460938,\"y\":-119.90499877929688,\"z\":74.21125030517578},\"model\":-710818483,\"items\":[{\"name\":\"klice_lostmc\"}],\"state\":1,\"heading\":149,\"maxDistance\":2}'),
(154, 'lostmc2', '{\"doors\":false,\"coords\":{\"x\":990.8673095703125,\"y\":-132.8908233642578,\"z\":74.21125030517578},\"model\":-710818483,\"items\":[{\"name\":\"klice_lostmc\"}],\"state\":1,\"heading\":149,\"maxDistance\":2}'),
(155, 'lostmc_bar', '{\"model\":190770132,\"coords\":{\"x\":981.1505126953125,\"y\":-103.2552490234375,\"z\":74.99357604980469},\"maxDistance\":4,\"state\":1,\"doors\":false,\"heading\":43,\"items\":[{\"name\":\"klice_lostmc\"}]}'),
(156, 'lostmc_garazeubaru', '{\"model\":-822900180,\"coords\":{\"x\":963.1593017578125,\"y\":-117.3218765258789,\"z\":75.24942016601563},\"maxDistance\":4,\"state\":1,\"doors\":false,\"heading\":43,\"items\":[{\"name\":\"klice_lostmc\"}]}'),
(157, 'lostmc_garazeubaru2', '{\"model\":-822900180,\"coords\":{\"x\":968.7536010742188,\"y\":-112.10218811035156,\"z\":75.24942016601563},\"maxDistance\":2,\"state\":1,\"doors\":false,\"heading\":43,\"items\":[{\"name\":\"klice_lostmc\"}]}'),
(158, 'lostmc_vrata', '{\"model\":-930593859,\"coords\":{\"x\":956.4541015625,\"y\":-137.84088134765626,\"z\":73.57489013671875},\"maxDistance\":2,\"state\":1,\"doors\":false,\"heading\":148,\"items\":[{\"name\":\"klice_lostmc\"}]}'),
(159, 'lostmc_bocnivchod', '{\"items\":[{\"name\":\"klice_lostmc\"}],\"maxDistance\":2,\"state\":1,\"doors\":false,\"coords\":{\"x\":959.38232421875,\"y\":-120.45116424560547,\"z\":75.16157531738281},\"model\":1335311341,\"heading\":43}'),
(160, 'exotic_nevímkolikuž', '{\"coords\":{\"x\":540.9420166015625,\"y\":-195.96514892578126,\"z\":54.88402557373047},\"heading\":270,\"doors\":false,\"state\":1,\"items\":[{\"name\":\"klice_exotic\"}],\"maxDistance\":2,\"model\":-1309543596}'),
(161, 'exotic_vjezd1', '{\"coords\":{\"x\":537.1795654296875,\"y\":-171.45993041992188,\"z\":55.50362777709961},\"heading\":360,\"doors\":false,\"state\":1,\"items\":[{\"name\":\"klice_exotic\"}],\"maxDistance\":2,\"model\":-1218332211}'),
(162, 'exotic_vjezd2', '{\"coords\":{\"x\":541.3350830078125,\"y\":-179.24107360839845,\"z\":55.50627517700195},\"heading\":270,\"doors\":false,\"state\":1,\"items\":[{\"name\":\"klice_exotic\"}],\"maxDistance\":2,\"model\":-1458889440}'),
(163, 'exotic_vjezd3', '{\"coords\":{\"x\":541.3296508789063,\"y\":-189.3748016357422,\"z\":55.51440048217773},\"heading\":270,\"doors\":false,\"state\":1,\"items\":[{\"name\":\"klice_exotic\"}],\"maxDistance\":2,\"model\":-1218332211}'),
(164, 'exotic_vjezd4', '{\"coords\":{\"x\":548.4612426757813,\"y\":-201.96029663085938,\"z\":55.49274826049805},\"heading\":0,\"doors\":false,\"state\":1,\"items\":[{\"name\":\"klice_exotic\"}],\"maxDistance\":2,\"model\":-1458889440}'),
(165, 'exotic1', '{\"coords\":{\"x\":534.4030151367188,\"y\":-166.29489135742188,\"z\":54.77276611328125},\"heading\":270,\"doors\":false,\"state\":1,\"items\":[{\"name\":\"klice_exotic\"}],\"maxDistance\":2,\"model\":141631573}'),
(166, 'exotic2', '{\"coords\":{\"x\":545.216552734375,\"y\":-194.2509765625,\"z\":54.64054870605469},\"heading\":315,\"doors\":false,\"state\":1,\"items\":[{\"name\":\"klice_exotic\"}],\"maxDistance\":2,\"model\":1497823487}'),
(167, 'exotic3', '{\"coords\":{\"x\":552.0873413085938,\"y\":-193.46018981933595,\"z\":54.8862075805664},\"heading\":90,\"doors\":false,\"state\":1,\"items\":[{\"name\":\"klice_exotic\"}],\"maxDistance\":2,\"model\":-1309543596}'),
(168, 'exotic69', '{\"coords\":{\"x\":551.4139404296875,\"y\":-179.6190185546875,\"z\":54.64392852783203},\"heading\":180,\"doors\":false,\"state\":1,\"items\":[{\"name\":\"klice_exotic\"}],\"maxDistance\":2,\"model\":-733661186}'),
(169, '5014_brana', '{\"items\":[{\"name\":\"klice_4\"}],\"heading\":91,\"auto\":true,\"state\":1,\"coords\":{\"x\":-2652.43994140625,\"y\":1307.365966796875,\"z\":147.6790008544922},\"maxDistance\":5,\"doors\":false,\"model\":-1573772550}'),
(170, '5014_branka', '{\"items\":[{\"name\":\"klice_4\"}],\"heading\":91,\"model\":-1249591818,\"state\":1,\"coords\":{\"x\":-2652.751953125,\"y\":1327.77294921875,\"z\":147.60589599609376},\"maxDistance\":2,\"doors\":false}'),
(171, '5014_loznice', '{\"items\":[{\"name\":\"klice_4\"}],\"state\":1,\"coords\":{\"x\":-2678.951416015625,\"y\":1318.220947265625,\"z\":152.23609924316407},\"maxDistance\":2,\"doors\":[{\"model\":1596276849,\"heading\":181,\"coords\":{\"x\":-2680.367919921875,\"y\":1318.2030029296876,\"z\":152.23519897460938}},{\"model\":1523529669,\"heading\":181,\"coords\":{\"x\":-2677.534912109375,\"y\":1318.239013671875,\"z\":152.23699951171876}}]}'),
(172, '5014_vchod', '{\"items\":[{\"name\":\"klice_4\"}],\"heading\":89,\"model\":1901183774,\"state\":1,\"coords\":{\"x\":-2667.60205078125,\"y\":1326.9599609375,\"z\":147.59339904785157},\"maxDistance\":2,\"doors\":false}'),
(173, '5014_vchodsklep', '{\"items\":[{\"name\":\"klice_5\"}],\"heading\":180,\"model\":-147325430,\"state\":1,\"coords\":{\"x\":-2666.39599609375,\"y\":1330.0980224609376,\"z\":147.5850067138672},\"maxDistance\":2,\"doors\":false}');

-- --------------------------------------------------------

--
-- Struktura tabulky `ox_inventory`
--

CREATE TABLE `ox_inventory` (
  `owner` varchar(46) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `data` longtext DEFAULT NULL,
  `lastupdated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `ox_inventory`
--

INSERT INTO `ox_inventory` (`owner`, `name`, `data`, `lastupdated`) VALUES
('', 'fire_ulozisko', '[{\"slot\":1,\"name\":\"medikit\",\"count\":3},{\"slot\":2,\"name\":\"bandage\",\"count\":2},{\"slot\":15,\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: 43ETZ091\\n\\nSuma: 137$\\n\\nPodpis: Mike Smith\\n\\nDatum vydání: 2023-01-01 o 21:33:54\"},\"name\":\"blocek\",\"count\":1},{\"slot\":16,\"name\":\"phone\",\"count\":1},{\"slot\":3,\"name\":\"phone\",\"count\":1},{\"slot\":19,\"metadata\":{\"description\":\"ŠPZ: 74MBY751\\n\\nSuma: 189$\"},\"name\":\"blocek\",\"count\":1},{\"slot\":20,\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: 85VFM927\\n\\nSuma: 136$\\n\\nPodpis: Mike Smith\\n\\nDatum vydání: 2023-01-01 o 20:46:37\"},\"name\":\"blocek\",\"count\":1},{\"slot\":6,\"name\":\"redwcig\",\"count\":16},{\"slot\":7,\"name\":\"lighter\",\"count\":1},{\"slot\":24,\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: 09LXU994\\n\\nSuma: 122$\\n\\nPodpis: Mike Smith\\n\\nDatum vydání: 2023-01-01 o 20:43:49\"},\"name\":\"blocek\",\"count\":1},{\"slot\":25,\"metadata\":{\"description\":\"ŠPZ: 99WYW901\\n\\nSuma: 107$\"},\"name\":\"blocek\",\"count\":1},{\"slot\":11,\"name\":\"phone\",\"count\":1},{\"slot\":13,\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: 85VFM927\\n\\nSuma: 161$\\n\\nPodpis: Mike Smith\\n\\nDatum vydání: 2023-01-03 o 20:04:03\"},\"name\":\"blocek\",\"count\":1},{\"slot\":14,\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: 09LXU994\\n\\nSuma: 49$\\n\\nPodpis: Mike Smith\\n\\nDatum vydání: 2023-01-06 o 20:23:19\"},\"name\":\"blocek\",\"count\":1},{\"slot\":21,\"name\":\"lahev\",\"count\":4}]', '2023-01-10 22:35:46'),
('', 'fire_kuchyne', '[{\"name\":\"sandwich\",\"slot\":1,\"count\":292},{\"name\":\"icetea\",\"slot\":6,\"count\":392}]', '2023-01-06 19:21:24'),
('', 'ems_kuchyne2', '[{\"count\":1,\"name\":\"phone\",\"slot\":1},{\"count\":2,\"name\":\"a4sheets\",\"slot\":3}]', '2023-01-11 23:01:32'),
('', 'bennys_uloziste', '[{\"count\":1,\"name\":\"phone\",\"slot\":1},{\"count\":1,\"name\":\"phone\",\"slot\":2},{\"count\":1,\"name\":\"phone\",\"slot\":3},{\"count\":1,\"name\":\"phone\",\"slot\":4},{\"count\":1,\"name\":\"phone\",\"slot\":5}]', '2023-01-11 23:21:33'),
('', 'lspd_skladcomponent', '[{\"count\":160,\"name\":\"ammo-rifle\",\"slot\":1},{\"count\":1600,\"name\":\"ammo-shotgun\",\"slot\":2},{\"count\":100,\"name\":\"ammo-9\",\"slot\":3},{\"count\":1,\"name\":\"phone\",\"slot\":4},{\"count\":1,\"name\":\"phone\",\"slot\":5},{\"count\":3,\"name\":\"medikit\",\"slot\":6},{\"count\":25,\"name\":\"armour\",\"slot\":7},{\"count\":7,\"name\":\"radio\",\"slot\":8},{\"count\":1,\"name\":\"phone\",\"slot\":9},{\"count\":13,\"name\":\"at_scope_medium\",\"slot\":10},{\"count\":63,\"name\":\"pouta\",\"slot\":11},{\"count\":11,\"name\":\"at_grip\",\"slot\":12},{\"count\":15,\"name\":\"at_scope_advanced\",\"slot\":13},{\"count\":13,\"name\":\"at_scope_medium\",\"slot\":14},{\"count\":1,\"name\":\"joint\",\"slot\":15},{\"count\":1,\"name\":\"phone\",\"slot\":16},{\"metadata\":{\"size\":[30,15000],\"container\":\"KIR1671571641\"},\"count\":1,\"name\":\"evidencebag\",\"slot\":17},{\"count\":1,\"name\":\"phone\",\"slot\":18},{\"metadata\":{\"size\":[30,15000],\"container\":\"GUQ1671571650\"},\"count\":1,\"name\":\"evidencebag\",\"slot\":19},{\"metadata\":{\"size\":[30,15000],\"container\":\"WZN1671571651\"},\"count\":1,\"name\":\"evidencebag\",\"slot\":20},{\"metadata\":{\"size\":[30,15000],\"container\":\"ZVV1671571652\"},\"count\":1,\"name\":\"evidencebag\",\"slot\":21},{\"metadata\":{\"size\":[30,15000],\"container\":\"FNV1671986740\"},\"count\":1,\"name\":\"evidencebag\",\"slot\":22},{\"metadata\":{\"size\":[30,15000],\"container\":\"DCX1671986747\"},\"count\":1,\"name\":\"evidencebag\",\"slot\":23},{\"metadata\":{\"size\":[30,15000],\"container\":\"UGS1671986750\"},\"count\":1,\"name\":\"evidencebag\",\"slot\":24},{\"metadata\":{\"size\":[30,15000],\"container\":\"BCW1671986741\"},\"count\":1,\"name\":\"evidencebag\",\"slot\":25},{\"metadata\":{\"size\":[30,15000],\"container\":\"JYL1671986738\"},\"count\":1,\"name\":\"evidencebag\",\"slot\":26},{\"metadata\":{\"size\":[30,15000],\"container\":\"GZD1671986739\"},\"count\":1,\"name\":\"evidencebag\",\"slot\":27},{\"metadata\":{\"size\":[30,15000],\"container\":\"MEQ1671986742\"},\"count\":1,\"name\":\"evidencebag\",\"slot\":28},{\"metadata\":{\"size\":[30,15000],\"container\":\"VYU1671986745\"},\"count\":1,\"name\":\"evidencebag\",\"slot\":29},{\"metadata\":{\"size\":[30,15000],\"container\":\"HXI1671986748\"},\"count\":1,\"name\":\"evidencebag\",\"slot\":30},{\"metadata\":{\"size\":[30,15000],\"container\":\"YFH1671986744\"},\"count\":1,\"name\":\"evidencebag\",\"slot\":31},{\"metadata\":{\"size\":[30,15000],\"container\":\"DBE1671986746\"},\"count\":1,\"name\":\"evidencebag\",\"slot\":32},{\"metadata\":{\"size\":[30,15000],\"container\":\"QUL1671986751\"},\"count\":1,\"name\":\"evidencebag\",\"slot\":33},{\"metadata\":{\"size\":[30,15000],\"container\":\"LHS1671986734\"},\"count\":1,\"name\":\"evidencebag\",\"slot\":34},{\"metadata\":{\"size\":[30,15000],\"container\":\"GUV1671986753\"},\"count\":1,\"name\":\"evidencebag\",\"slot\":35},{\"metadata\":{\"size\":[30,15000],\"container\":\"FAF1671986749\"},\"count\":1,\"name\":\"evidencebag\",\"slot\":36},{\"count\":1,\"name\":\"phone\",\"slot\":37},{\"count\":1,\"name\":\"phone\",\"slot\":38},{\"count\":1,\"name\":\"phone\",\"slot\":39},{\"count\":1,\"name\":\"phone\",\"slot\":40},{\"count\":1000,\"name\":\"money\",\"slot\":41}]', '2023-02-01 19:12:59'),
('', 'lspd_skladzbrani', '[{\"count\":1,\"metadata\":{\"registered\":\"William David Larson\",\"serial\":\"LSPD\",\"components\":[],\"ammo\":30,\"durability\":100},\"slot\":1,\"name\":\"WEAPON_CARBINERIFLE\"},{\"count\":1,\"slot\":2,\"name\":\"phone\"},{\"count\":1,\"slot\":3,\"name\":\"phone\"},{\"count\":1,\"slot\":4,\"name\":\"phone\"},{\"count\":1,\"slot\":5,\"name\":\"phone\"},{\"count\":1,\"metadata\":{\"registered\":\"Richard Moore\",\"serial\":\"LSPD\",\"components\":[],\"ammo\":0,\"durability\":100},\"slot\":6,\"name\":\"WEAPON_CARBINERIFLE_MK2\"},{\"count\":1,\"slot\":7,\"name\":\"phone\"},{\"count\":1,\"slot\":8,\"name\":\"phone\"},{\"count\":1,\"slot\":9,\"name\":\"phone\"},{\"count\":1,\"slot\":10,\"name\":\"phone\"},{\"count\":1,\"metadata\":{\"registered\":\"William David Larson\",\"serial\":\"LSPD\",\"components\":[],\"ammo\":0,\"durability\":100},\"slot\":11,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"count\":1,\"metadata\":{\"registered\":\"William David Larson\",\"serial\":\"LSPD\",\"components\":[],\"ammo\":0,\"durability\":100},\"slot\":12,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"count\":1,\"metadata\":{\"registered\":\"William David Larson\",\"serial\":\"LSPD\",\"components\":[],\"ammo\":0,\"durability\":100},\"slot\":13,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"count\":1,\"slot\":14,\"name\":\"phone\"},{\"count\":1,\"metadata\":{\"registered\":\"Adam Smith\",\"serial\":\"346813JRR440066\",\"components\":[],\"ammo\":12,\"durability\":92.8},\"slot\":16,\"name\":\"WEAPON_COMBATPISTOL\"},{\"count\":1,\"metadata\":{\"registered\":\"William David Larson\",\"serial\":\"LSPD\",\"components\":[],\"ammo\":0,\"durability\":100},\"slot\":17,\"name\":\"WEAPON_COMBATPISTOL\"},{\"count\":1,\"metadata\":{\"registered\":\"William David Larson\",\"serial\":\"LSPD\",\"components\":[],\"ammo\":0,\"durability\":100},\"slot\":18,\"name\":\"WEAPON_COMBATPISTOL\"},{\"count\":7,\"slot\":21,\"name\":\"radio\"},{\"count\":1,\"metadata\":{\"components\":[],\"registered\":\"William David Larson\",\"durability\":100},\"slot\":26,\"name\":\"WEAPON_STUNGUN\"},{\"count\":1,\"metadata\":{\"components\":[],\"registered\":\"William David Larson\",\"durability\":100},\"slot\":27,\"name\":\"WEAPON_STUNGUN\"},{\"count\":1,\"metadata\":{\"components\":[],\"registered\":\"William David Larson\",\"durability\":100},\"slot\":28,\"name\":\"WEAPON_STUNGUN\"},{\"count\":1,\"metadata\":{\"durability\":100,\"components\":[]},\"slot\":31,\"name\":\"WEAPON_FLASHLIGHT\"},{\"count\":1,\"metadata\":{\"durability\":100,\"components\":[]},\"slot\":32,\"name\":\"WEAPON_FLASHLIGHT\"},{\"count\":1,\"metadata\":{\"durability\":100,\"components\":[]},\"slot\":45,\"name\":\"WEAPON_NIGHTSTICK\"},{\"count\":1,\"metadata\":{\"durability\":100,\"components\":[]},\"slot\":33,\"name\":\"WEAPON_FLASHLIGHT\"},{\"count\":1,\"metadata\":{\"durability\":100,\"components\":[]},\"slot\":34,\"name\":\"WEAPON_FLASHLIGHT\"},{\"count\":1,\"metadata\":{\"durability\":100,\"components\":[]},\"slot\":35,\"name\":\"WEAPON_FLASHLIGHT\"},{\"count\":1,\"metadata\":{\"durability\":100,\"components\":[]},\"slot\":36,\"name\":\"WEAPON_FLASHLIGHT\"},{\"count\":1,\"metadata\":{\"durability\":100,\"components\":[]},\"slot\":41,\"name\":\"WEAPON_NIGHTSTICK\"},{\"count\":1,\"metadata\":{\"durability\":100,\"components\":[]},\"slot\":42,\"name\":\"WEAPON_NIGHTSTICK\"},{\"count\":1,\"metadata\":{\"durability\":100,\"components\":[]},\"slot\":43,\"name\":\"WEAPON_NIGHTSTICK\"},{\"count\":1,\"metadata\":{\"durability\":100,\"components\":[]},\"slot\":44,\"name\":\"WEAPON_NIGHTSTICK\"}]', '2023-02-17 12:31:24'),
('', 'lspd_kuchyne', '[{\"slot\":1,\"count\":12,\"name\":\"sandwich\"},{\"slot\":2,\"count\":18,\"name\":\"burger\"},{\"slot\":3,\"count\":14,\"name\":\"water\"},{\"slot\":4,\"count\":17,\"name\":\"icetea\"},{\"slot\":5,\"count\":1,\"name\":\"phone\"},{\"slot\":25,\"count\":1,\"name\":\"pet\"}]', '2023-02-14 18:19:03'),
('', 'taxi_uloziste', '[{\"name\":\"phone\",\"metadata\":{\"lbPhoneNumber\":\"5555917\"},\"slot\":2,\"count\":1},{\"name\":\"phone\",\"slot\":3,\"count\":1},{\"name\":\"phone\",\"slot\":4,\"count\":1},{\"name\":\"phone\",\"metadata\":{\"lbPhoneNumber\":\"9075705\"},\"slot\":5,\"count\":1},{\"name\":\"phone\",\"slot\":6,\"count\":1},{\"name\":\"phone\",\"slot\":7,\"count\":1},{\"name\":\"phone\",\"slot\":8,\"count\":1},{\"name\":\"phone\",\"metadata\":{\"lbPhoneNumber\":\"2769237\"},\"slot\":10,\"count\":1}]', '2023-01-31 13:51:16'),
('', 'AXY1671497052', '[{\"count\":1,\"name\":\"id\",\"metadata\":{\"description\":\"Jméno a příjmení: Michael Espinoza\\n\\nDatum narození: 1992-05-11\\n\\nPohlaví: muž\\n\\nVýška: 189cm\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 19/12/2022 o 22:01:54\"},\"slot\":1},{\"count\":1,\"name\":\"dl\",\"metadata\":{\"description\":\"Jméno a příjmení: Michael Espinoza\\n\\nDatum narození: 11/05/1992\\n\\nPohlaví: muž\\n\\nVýška: 189cm\\n\\nSkupiny: B \\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 19/12/2022 o 20:03:41\"},\"slot\":2},{\"count\":699,\"name\":\"money\",\"slot\":3}]', '2022-12-27 19:13:23'),
('1', 'lspd_osobneulozisko', '[{\"count\":1,\"slot\":1,\"name\":\"phone\"},{\"count\":1,\"slot\":2,\"name\":\"phone\"},{\"count\":1,\"slot\":3,\"name\":\"phone\"},{\"count\":1,\"slot\":4,\"name\":\"phone\"},{\"count\":1,\"slot\":5,\"name\":\"phone\"},{\"count\":1,\"slot\":6,\"name\":\"phone\"},{\"count\":1,\"slot\":7,\"name\":\"phone\"},{\"count\":1,\"slot\":8,\"name\":\"phone\"},{\"count\":1,\"slot\":9,\"name\":\"phone\"},{\"count\":1,\"slot\":10,\"name\":\"phone\"},{\"count\":1,\"slot\":11,\"name\":\"phone\"},{\"count\":1,\"slot\":12,\"name\":\"phone\"},{\"count\":1,\"slot\":13,\"name\":\"phone\"},{\"count\":1,\"slot\":14,\"name\":\"phone\"},{\"count\":1,\"slot\":15,\"name\":\"phone\"},{\"count\":1,\"slot\":16,\"name\":\"phone\"},{\"count\":1,\"slot\":17,\"name\":\"phone\"},{\"count\":1,\"slot\":18,\"name\":\"phone\"},{\"count\":1,\"slot\":19,\"name\":\"phone\"},{\"count\":1,\"slot\":20,\"name\":\"phone\"},{\"count\":1,\"slot\":21,\"name\":\"phone\"},{\"count\":1,\"slot\":22,\"name\":\"phone\"}]', '2023-02-17 11:41:24'),
('', 'lspd_trezor', '[{\"count\":1,\"slot\":1,\"name\":\"phone\"},{\"count\":1,\"slot\":2,\"name\":\"phone\"},{\"count\":1,\"slot\":3,\"name\":\"phone\"},{\"count\":1,\"slot\":4,\"name\":\"phone\"},{\"count\":1,\"slot\":5,\"name\":\"phone\"},{\"count\":1,\"slot\":6,\"name\":\"phone\"},{\"count\":1,\"slot\":7,\"name\":\"phone\"},{\"count\":1,\"slot\":8,\"name\":\"phone\"},{\"count\":1,\"slot\":9,\"name\":\"phone\"},{\"count\":1,\"slot\":10,\"name\":\"phone\"},{\"count\":1,\"slot\":11,\"name\":\"phone\"},{\"count\":1,\"slot\":12,\"name\":\"phone\"},{\"count\":1,\"slot\":13,\"name\":\"phone\"},{\"count\":1,\"slot\":14,\"name\":\"phone\"}]', '2023-02-17 13:21:24'),
('', 'lostmc_uloziste', '[{\"name\":\"fixkit\",\"slot\":1,\"count\":16},{\"name\":\"chip\",\"slot\":91,\"count\":8},{\"name\":\"plastic\",\"slot\":92,\"count\":5},{\"name\":\"clothe\",\"slot\":93,\"count\":274},{\"name\":\"kyblik\",\"slot\":5,\"count\":26},{\"name\":\"lockpick\",\"slot\":96,\"count\":50},{\"name\":\"spray\",\"slot\":97,\"count\":2},{\"name\":\"spray_remover\",\"slot\":98,\"count\":5},{\"name\":\"ziptie\",\"slot\":99,\"count\":10},{\"name\":\"headbag\",\"slot\":100,\"count\":5},{\"name\":\"towing_rope\",\"slot\":11,\"count\":3},{\"name\":\"puerta\",\"slot\":23,\"count\":4},{\"name\":\"bandage\",\"slot\":13,\"count\":55},{\"name\":\"capo\",\"slot\":22,\"count\":1},{\"name\":\"llanta\",\"slot\":21,\"count\":1}]', '2023-01-12 16:41:10'),
('', 'JYC1671568244', '[{\"metadata\":{\"description\":\"Jméno a příjmení: Martin Smith\\n\\nDatum narození: 1995-05-21\\n\\nPohlaví: muž\\n\\nVýška: 189cm\\n\\nSkupiny: A B C \\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 25/12/2022 o 19:58:08\"},\"slot\":1,\"count\":1,\"name\":\"dl\"},{\"metadata\":{\"description\":\"Jméno a příjmení: Martin Smith\\n\\nDatum narození: 21/05/1995\\n\\nPohlaví: muž\\n\\nVýška: 189cm\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 20/12/2022 o 21:36:57\"},\"slot\":2,\"count\":1,\"name\":\"id\"}]', '2023-01-03 19:50:37'),
('1', 'fire_osobneulozisko', '[{\"slot\":1,\"count\":1,\"name\":\"phone\"}]', '2022-12-23 21:37:03'),
('char1:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', 'emslocker', '[{\"name\":\"weed\",\"slot\":1,\"count\":4},{\"name\":\"WEAPON_COMBATPISTOL\",\"metadata\":{\"components\":[],\"durability\":97.6,\"registered\":\"Nikolai Gustenavoj\",\"serial\":\"183846URK581624\",\"ammo\":12},\"slot\":2,\"count\":1},{\"name\":\"ammo-9\",\"metadata\":{\"type\":1},\"slot\":3,\"count\":18},{\"name\":\"money\",\"slot\":4,\"count\":1481},{\"name\":\"redwcig\",\"slot\":6,\"count\":19},{\"name\":\"blocek\",\"metadata\":{\"description\":\"ŠPZ: 06SWO293\\n\\nSuma: 120$\"},\"slot\":21,\"count\":1},{\"name\":\"blocek\",\"metadata\":{\"description\":\"ŠPZ: 06SWO293\\n\\nSuma: 277$\"},\"slot\":22,\"count\":1},{\"name\":\"gym_membership\",\"slot\":23,\"count\":1},{\"name\":\"lighter\",\"slot\":11,\"count\":1},{\"name\":\"psychotest\",\"metadata\":{\"description\":\"Jméno a příjmení: Jonathan Price\\n\\nDatum narození: 1974-03-10\\n\\nVydal: William David Larson\\n\\nDatum vydání: 26/12/2022 o 13:21:50\"},\"slot\":12,\"count\":1}]', '2022-12-28 12:00:41'),
('', 'ems_kuchyne', '[{\"name\":\"phone\",\"slot\":1,\"count\":1}]', '2022-12-25 16:49:31'),
('', 'QYF1671993122', '[{\"name\":\"money\",\"slot\":1,\"count\":4135},{\"name\":\"id\",\"metadata\":{\"description\":\"Jméno a příjmení: Lucas Mark\\n\\nDatum narození: 1998-10-20\\n\\nPohlaví: muž\\n\\nVýška: 187cm\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 25/12/2022 o 19:36:57\"},\"slot\":2,\"count\":1},{\"name\":\"dl\",\"metadata\":{\"description\":\"Jméno a příjmení: Lucas Mark\\n\\nDatum narození: 1998-10-20\\n\\nPohlaví: muž\\n\\nVýška: 187cm\\n\\nSkupiny: A B C \\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 25/12/2022 o 19:39:53\"},\"slot\":3,\"count\":1}]', '2022-12-25 18:49:31'),
('char1:fd77610e8f35fbcb85957438e3647d5b4b26c29c', 'fire_osobneulozisko', '[{\"name\":\"pet\",\"slot\":1,\"count\":3},{\"name\":\"llanta\",\"slot\":2,\"count\":1},{\"name\":\"lahev\",\"slot\":3,\"count\":1}]', '2022-12-25 19:59:31'),
('', 'lsgc_uloziste', '[{\"metadata\":{\"components\":[],\"durability\":97.9},\"name\":\"WEAPON_FLASHLIGHT\",\"count\":1,\"slot\":1},{\"metadata\":{\"serial\":\"588906URK148007\",\"durability\":100,\"components\":[],\"registered\":\"Nikolai Gustenavoj\",\"ammo\":0},\"name\":\"WEAPON_REVOLVER\",\"count\":1,\"slot\":7},{\"metadata\":{\"serial\":\"P6937720085\",\"durability\":100,\"components\":[],\"registered\":\"Nikolai Gustenavoj\",\"ammo\":0},\"name\":\"WEAPON_COMBATPISTOL\",\"count\":1,\"slot\":8},{\"metadata\":{\"serial\":\"P4312145891\",\"durability\":100,\"components\":[],\"registered\":\"Nikolai Gustenavoj\",\"ammo\":0},\"name\":\"WEAPON_COMBATPISTOL\",\"count\":1,\"slot\":9},{\"metadata\":{\"serial\":\"P6862352606\",\"durability\":100,\"components\":[],\"registered\":\"Nikolai Gustenavoj\",\"ammo\":0},\"name\":\"WEAPON_COMBATPISTOL\",\"count\":1,\"slot\":10},{\"metadata\":{\"serial\":\"P2304262248\",\"durability\":100,\"components\":[],\"registered\":\"Nikolai Gustenavoj\",\"ammo\":0},\"name\":\"WEAPON_COMBATPISTOL\",\"count\":1,\"slot\":11},{\"metadata\":{\"serial\":\"P5361999383\",\"durability\":100,\"components\":[],\"registered\":\"Nikolai Gustenavoj\",\"ammo\":0},\"name\":\"WEAPON_COMBATPISTOL\",\"count\":1,\"slot\":12},{\"metadata\":{\"serial\":\"P9398076853\",\"durability\":100,\"components\":[],\"registered\":\"Nikolai Gustenavoj\",\"ammo\":0},\"name\":\"WEAPON_COMBATPISTOL\",\"count\":1,\"slot\":13},{\"metadata\":{\"serial\":\"P4831516792\",\"durability\":100,\"components\":[],\"registered\":\"Nikolai Gustenavoj\",\"ammo\":0},\"name\":\"WEAPON_COMBATPISTOL\",\"count\":1,\"slot\":14},{\"metadata\":{\"serial\":\"P4364511065\",\"durability\":100,\"components\":[],\"registered\":\"Nikolai Gustenavoj\",\"ammo\":0},\"name\":\"WEAPON_COMBATPISTOL\",\"count\":1,\"slot\":15},{\"metadata\":{\"serial\":\"875257ISK340062\",\"durability\":100,\"components\":[],\"registered\":\"Nikolai Gustenavoj\",\"ammo\":0},\"name\":\"WEAPON_SNSPISTOL\",\"count\":1,\"slot\":16},{\"metadata\":{\"serial\":\"117359IGY226195\",\"durability\":100,\"components\":[],\"registered\":\"Nikolai Gustenavoj\",\"ammo\":0},\"name\":\"WEAPON_HEAVYPISTOL\",\"count\":1,\"slot\":17},{\"metadata\":{\"serial\":\"427697NWY627932\",\"durability\":100,\"components\":[],\"registered\":\"Nikolai Gustenavoj\",\"ammo\":0},\"name\":\"WEAPON_VINTAGEPISTOL\",\"count\":1,\"slot\":18},{\"metadata\":{\"serial\":\"175743BUY266368\",\"durability\":100,\"components\":[],\"registered\":\"Nikolai Gustenavoj\",\"ammo\":0},\"name\":\"WEAPON_DBSHOTGUN\",\"count\":1,\"slot\":19},{\"metadata\":{\"serial\":\"180500YDB404132\",\"durability\":100,\"components\":[],\"registered\":\"Nikolai Gustenavoj\",\"ammo\":0},\"name\":\"WEAPON_PUMPSHOTGUN\",\"count\":1,\"slot\":20},{\"metadata\":{\"serial\":\"204630KMJ685682\",\"durability\":100,\"components\":[],\"registered\":\"Nikolai Gustenavoj\",\"ammo\":0},\"name\":\"WEAPON_PISTOL50\",\"count\":1,\"slot\":21},{\"name\":\"ammo-musket\",\"count\":200,\"slot\":22},{\"name\":\"ammo-shotgun\",\"count\":500,\"slot\":23},{\"name\":\"ammo-9\",\"count\":1634,\"slot\":24},{\"name\":\"ammo-50\",\"count\":200,\"slot\":25},{\"metadata\":{\"size\":[1,10000],\"container\":\"URO1672055656\"},\"name\":\"kufriknavelkuzbran\",\"count\":1,\"slot\":26}]', '2023-01-31 16:29:09'),
('', 'HCS1672060910', '[{\"name\":\"id\",\"metadata\":{\"description\":\"Jméno a příjmení: Robert Storm\\n\\nDatum narození: 1993-03-13\\n\\nPohlaví: muž\\n\\nVýška: 203cm\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 23/12/2022 o 18:12:08\"},\"slot\":1,\"count\":1},{\"name\":\"money\",\"slot\":2,\"count\":624}]', '2023-01-02 21:10:56'),
('1', 'emslocker', '[{\"slot\":1,\"count\":1,\"name\":\"phone\"},{\"slot\":2,\"count\":1,\"name\":\"phone\"}]', '2022-12-29 17:56:06'),
('', 'galaxy_lednice', '[{\"count\":1,\"name\":\"phone\",\"slot\":1},{\"count\":1,\"name\":\"phone\",\"slot\":2}]', '2023-01-01 18:48:47'),
('', 'VKX1672264736', '[{\"slot\":1,\"count\":4972,\"name\":\"money\"}]', '2022-12-28 22:36:21'),
('', 'PIP1672334200', '[{\"metadata\":{\"description\":\"Jméno a příjmení: David Jones\\n\\nDatum narození: 10/10/1970\\n\\nPohlaví: muž\\n\\nVýška: 187cm\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2022-12-28 o 23:21:48\"},\"slot\":1,\"count\":1,\"name\":\"id\"},{\"metadata\":{\"description\":\"Jméno a příjmení: David Jones\\n\\nDatum narození: 1970-10-10\\n\\nPohlaví: muž\\n\\nVýška: 187cm\\n\\nSkupiny: B C \\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2022-12-29 o 18:20:03\"},\"slot\":2,\"count\":1,\"name\":\"dl\"}]', '2022-12-29 17:26:06'),
('', 'PMK1672341641', '[{\"metadata\":{\"description\":\"Jméno a příjmení: Jay Williams\\n\\nDatum narození: 1998-02-20\\n\\nPohlaví: muž\\n\\nVýška: 190cm\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2022-12-28 o 13:21:35\"},\"slot\":1,\"count\":1,\"name\":\"id\"}]', '2022-12-29 19:26:07'),
('', 'lostmc_lednice', '[{\"slot\":1,\"name\":\"sandwich\",\"count\":41},{\"slot\":2,\"name\":\"water\",\"count\":22}]', '2023-01-15 11:10:44'),
('', 'tequila_uloziste', '[{\"slot\":1,\"count\":1,\"name\":\"phone\"}]', '2022-12-30 01:34:39'),
('', 'tequila_lednice', '[{\"slot\":1,\"name\":\"phone\",\"count\":1},{\"slot\":2,\"name\":\"phone\",\"count\":1}]', '2023-01-04 22:51:09'),
('char2:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', 'lssd_sandy_osobneulozisko', '[{\"count\":1,\"metadata\":{\"durability\":100,\"serial\":\"LSPD\",\"components\":[\"at_grip\",\"at_scope_medium\",\"at_flashlight\"],\"ammo\":30,\"registered\":\"William David Larson\"},\"name\":\"WEAPON_CARBINERIFLE\",\"slot\":1},{\"count\":90,\"name\":\"ammo-rifle\",\"slot\":2},{\"count\":1,\"metadata\":{\"size\":[4,16],\"weight\":10,\"container\":\"PIP1672334200\"},\"name\":\"wallet\",\"slot\":3}]', '2022-12-31 14:07:44'),
('', 'YHL1672583318', '[{\"slot\":1,\"metadata\":{\"description\":\"Jméno a příjmení: Martin Rogers\\n\\nDatum narození: 1989-11-21\\n\\nPohlaví: muž\\n\\nVýška: 175cm\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 20/12/2022 o 11:41:51\"},\"name\":\"id\",\"count\":1},{\"slot\":2,\"metadata\":{\"description\":\"Jméno a příjmení: Martin Rogers\\n\\nDatum narození: 1989-11-21\\n\\nPohlaví: muž\\n\\nVýška: 175cm\\n\\nSkupiny: A B C D\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 20/12/2022 o 11:50:31\"},\"name\":\"dl\",\"count\":1}]', '2023-01-10 21:55:46'),
('', 'lssd_paleto_skladzbrani', '[{\"slot\":1,\"name\":\"phone\",\"count\":1},{\"slot\":2,\"name\":\"phone\",\"count\":1}]', '2023-01-04 16:11:08'),
('', 'sanandreas_uloziste', '[{\"count\":1,\"name\":\"phone\",\"slot\":1}]', '2023-01-01 17:38:46'),
('', '7063_uloziste', '[{\"count\":1,\"name\":\"phone\",\"slot\":1}]', '2023-01-01 19:58:47'),
('char2:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', 'lspd_osobneulozisko', '[{\"slot\":7,\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: 43CKY358\\n\\nSuma: 80$\\n\\nPodpis: David Jones\\n\\nDatum vydání: 2023-01-01 o 16:52:00\"},\"count\":1,\"name\":\"blocek\"},{\"slot\":8,\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: 43CKY358\\n\\nSuma: 144$\\n\\nPodpis: David Jones\\n\\nDatum vydání: 2023-01-01 o 16:21:22\"},\"count\":1,\"name\":\"blocek\"},{\"slot\":9,\"count\":2500,\"name\":\"money\"},{\"slot\":19,\"count\":1,\"name\":\"lahev\"}]', '2023-01-03 12:28:58'),
('', 'royal_uloziste', '[{\"name\":\"phone\",\"slot\":1,\"count\":1}]', '2023-01-02 20:20:55'),
('char1:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 'lspd_osobneulozisko', '[{\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: 69RRM369\\n\\nSuma: 232$\\n\\nPodpis: Richard Moore\\n\\nDatum vydání: 2023-01-01 o 21:55:35\"},\"slot\":1,\"count\":1,\"name\":\"blocek\"},{\"metadata\":{\"description\":\"ŠPZ: 23LTV826\\n\\nSuma: 135$\"},\"slot\":2,\"count\":1,\"name\":\"blocek\"},{\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: 69RRM369\\n\\nSuma: 141$\\n\\nPodpis: Richard Moore\\n\\nDatum vydání: 2023-01-01 o 16:52:19\"},\"slot\":3,\"count\":1,\"name\":\"blocek\"},{\"metadata\":{\"description\":\"ŠPZ: 23LTV826\\n\\nSuma: 104$\"},\"slot\":4,\"count\":1,\"name\":\"blocek\"},{\"metadata\":{\"url\":\"https://cdn.discordapp.com/attachments/1057778983950880864/1059579233871069326/Untitled-1.png\",\"width\":400,\"height\":600,\"showAllDescriptions\":true,\"name\":\"Woods\"},\"slot\":6,\"count\":2,\"name\":\"printerdocument\"}]', '2023-01-03 20:10:38'),
('', 'evidence-8', '[{\"slot\":1,\"count\":18,\"name\":\"joint\"}]', '2023-01-03 22:10:38'),
('', 'unicorn_uloziste', '[{\"slot\":1,\"name\":\"phone\",\"count\":1}]', '2023-01-04 22:51:09'),
('', 'lostmc_uloziste2', '[{\"count\":1,\"name\":\"phone\",\"slot\":62},{\"count\":1,\"name\":\"phone\",\"slot\":63},{\"count\":1,\"name\":\"phone\",\"slot\":64},{\"count\":1,\"name\":\"phone\",\"slot\":65},{\"slot\":66,\"count\":1,\"name\":\"phone\",\"metadata\":{\"lbPhoneNumber\":\"5557030\"}},{\"count\":1,\"name\":\"phone\",\"slot\":67},{\"count\":1,\"name\":\"phone\",\"slot\":68},{\"count\":1,\"name\":\"phone\",\"slot\":69},{\"slot\":70,\"count\":1,\"name\":\"phone\",\"metadata\":{\"lbPhoneNumber\":\"2563499\"}},{\"count\":9,\"name\":\"bandage\",\"slot\":9},{\"count\":13,\"name\":\"water\",\"slot\":10},{\"count\":1,\"name\":\"phone\",\"slot\":56},{\"count\":1,\"name\":\"phone\",\"slot\":57},{\"count\":1,\"name\":\"phone\",\"slot\":58},{\"count\":1,\"name\":\"phone\",\"slot\":59},{\"count\":1,\"name\":\"phone\",\"slot\":60},{\"count\":1,\"name\":\"phone\",\"slot\":61},{\"count\":42,\"name\":\"ammo-9\",\"slot\":5}]', '2023-01-11 23:01:32'),
('', 'IYS1673034950', '[{\"slot\":1,\"name\":\"id\",\"metadata\":{\"description\":\"Jméno a příjmení: Soryu Shinji\\n\\nDatum narození: 10/03/1973\\n\\nPohlaví: muž\\n\\nVýška: 178cm\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2023-01-06 o 20:49:29\"},\"count\":1},{\"slot\":2,\"name\":\"dl\",\"metadata\":{\"description\":\"Jméno a příjmení: Soryu Shinji\\n\\nDatum narození: 10/03/1973\\n\\nPohlaví: muž\\n\\nVýška: 178cm\\n\\nSkupiny: B C \\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2023-01-06 o 21:06:35\"},\"count\":1}]', '2023-01-06 20:11:24'),
('', 'MZT1673034956', '[{\"slot\":1,\"count\":1,\"metadata\":{\"description\":\"Jméno a příjmení: Ryuu Shinji\\n\\nDatum narození: 12/10/1978\\n\\nPohlaví: muž\\n\\nVýška: 178cm\\n\\nSkupiny: B C \\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2023-01-06 o 21:06:35\"},\"name\":\"dl\"},{\"slot\":2,\"count\":1,\"metadata\":{\"description\":\"Jméno a příjmení: Ryuu Shinji\\n\\nDatum narození: 12/10/1978\\n\\nPohlaví: muž\\n\\nVýška: 178cm\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2023-01-06 o 21:06:53\"},\"name\":\"id\"},{\"slot\":3,\"count\":2523,\"name\":\"money\"}]', '2023-01-14 18:31:25'),
('', 'BHH1673202552', '[{\"slot\":1,\"name\":\"money\",\"count\":330},{\"slot\":2,\"name\":\"ziptie\",\"count\":1},{\"slot\":3,\"metadata\":{\"description\":\"Jméno a příjmení: John White\\n\\nDatum narození: 01/05/1998\\n\\nPohlaví: muž\\n\\nVýška: 183cm\\n\\nSkupiny: A B C \\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2023-01-08 o 19:37:12\"},\"name\":\"dl\",\"count\":1},{\"slot\":4,\"metadata\":{\"description\":\"Jméno a příjmení: John White\\n\\nDatum narození: 01/05/1998\\n\\nPohlaví: muž\\n\\nVýška: 183cm\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2023-01-08 o 19:32:31\"},\"name\":\"id\",\"count\":1}]', '2023-01-08 18:40:39'),
('', 'lssd_sandy_kuchyne', '[{\"slot\":1,\"name\":\"phone\",\"count\":1}]', '2023-01-09 02:10:40'),
('', 'exotic_boss', '[{\"slot\":2,\"count\":5,\"name\":\"lockpick\"},{\"slot\":3,\"count\":6,\"name\":\"ziptie\"},{\"slot\":6,\"count\":1,\"metadata\":{\"type\":1},\"name\":\"klice_exotic\"}]', '2023-01-14 17:51:24'),
('char1:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', 'exotic_osobni', '[{\"slot\":2,\"count\":1,\"metadata\":{\"durability\":100,\"components\":[]},\"name\":\"WEAPON_KNIFE\"},{\"slot\":5,\"count\":3,\"name\":\"headbag\"},{\"slot\":6,\"count\":21,\"name\":\"clothe\"},{\"slot\":8,\"count\":8,\"name\":\"lockpick\"},{\"slot\":18,\"count\":9,\"name\":\"rolling_paper\"},{\"slot\":26,\"count\":1,\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: 32ZDA306\\n\\nSuma: 223$\\n\\nPodpis: Soryu Shinji\\n\\nDatum vydání: 2023-01-10 o 17:54:26\"},\"name\":\"blocek\"},{\"slot\":27,\"count\":1,\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: 32ZDA306\\n\\nSuma: 175$\\n\\nPodpis: Soryu Shinji\\n\\nDatum vydání: 2023-01-09 o 14:53:53\"},\"name\":\"blocek\"}]', '2023-01-14 18:41:25'),
('1', 'lssd_sandy_osobneulozisko', '[{\"name\":\"phone\",\"count\":1,\"slot\":1}]', '2023-01-09 20:41:19'),
('char1:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', '5014_uloziste', '[{\"slot\":6,\"count\":1,\"metadata\":{\"type\":1},\"name\":\"klice_4\"},{\"slot\":10,\"count\":1,\"metadata\":{\"type\":1},\"name\":\"klice_5\"},{\"slot\":3,\"count\":2,\"name\":\"weed\"}]', '2023-01-14 18:11:25'),
('', 'GIO1673379396', '[{\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: 91HFG877\\n\\nSuma: 175$\\n\\nPodpis: Mike Mamutovic\\n\\nDatum vydání: 2023-01-11 o 13:23:24\"},\"name\":\"blocek\",\"slot\":1,\"count\":1},{\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: 91HFG877\\n\\nSuma: 129$\\n\\nPodpis: Mike Mamutovic\\n\\nDatum vydání: 2023-01-12 o 20:06:08\"},\"name\":\"blocek\",\"slot\":2,\"count\":1}]', '2023-01-12 19:11:10'),
('', 'MPZ1675187914', '[{\"count\":2,\"name\":\"bandage\",\"slot\":1}]', '2023-01-31 19:36:41'),
('', 'lssd_sandy_skladzbrani', '[{\"slot\":1,\"count\":1,\"name\":\"phone\"}]', '2023-02-14 21:29:03');

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_backups`
--

CREATE TABLE `phone_backups` (
  `identifier` varchar(46) NOT NULL,
  `phone_number` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `phone_backups`
--

INSERT INTO `phone_backups` (`identifier`, `phone_number`) VALUES
('char1:096ef042a53693ea143c5a94ab61957ab76df1ab', '9071678'),
('char1:16a0801acc1703cc72dadc5fe391cb530e97d6d9', '2566885'),
('char1:18e8f68df95ad04b411957eeb7a5cc3a21db38e2', '2054510'),
('char1:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', '2569241'),
('char1:30dc648396c5827e37d17745ba9cb7f852018b93', '2053347'),
('char1:6c8c6ae8c062d2f8c67c6f72bfedd76aea374840', '3202921'),
('char1:8c221a18a724b6faa4e886c177e9870fe85c9680', '2059421'),
('char1:a8cfd975ad8e17a808e69fea1873127e0e8dd9e9', '7778107'),
('char1:bd2b2a60cf8b8a34db2a7f2ec41424e7d168b516', '3200807'),
('char1:c46d5b8613e5dac25f1c39bfc3a57ba0c2cf76f5', '9072407'),
('char1:d0752e87d373f99d52872390de8b4e9f6c680bea', '1206447'),
('char1:fd77610e8f35fbcb85957438e3647d5b4b26c29c', '3205368'),
('char2:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', '6024625');

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_clock_alarms`
--

CREATE TABLE `phone_clock_alarms` (
  `id` varchar(50) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `hours` int(2) NOT NULL DEFAULT 0,
  `minutes` int(2) NOT NULL DEFAULT 0,
  `label` varchar(50) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_darkchat_accounts`
--

CREATE TABLE `phone_darkchat_accounts` (
  `phone_number` varchar(15) NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `phone_darkchat_accounts`
--

INSERT INTO `phone_darkchat_accounts` (`phone_number`, `username`) VALUES
('6665822', 'Čierny Muž'),
('7772112', 'RAPTOR'),
('3556218', 'Red Dragon'),
('6662600', 'RIP');

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_darkchat_channels`
--

CREATE TABLE `phone_darkchat_channels` (
  `name` varchar(50) NOT NULL,
  `last_message` varchar(50) NOT NULL DEFAULT '',
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_darkchat_members`
--

CREATE TABLE `phone_darkchat_members` (
  `channel_name` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_darkchat_messages`
--

CREATE TABLE `phone_darkchat_messages` (
  `id` int(11) NOT NULL,
  `channel` varchar(50) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_instagram_accounts`
--

CREATE TABLE `phone_instagram_accounts` (
  `display_name` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `profile_image` varchar(200) DEFAULT NULL,
  `bio` varchar(100) DEFAULT NULL,
  `phone_number` varchar(15) NOT NULL,
  `verified` tinyint(1) DEFAULT 0,
  `date_joined` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `phone_instagram_accounts`
--

INSERT INTO `phone_instagram_accounts` (`display_name`, `username`, `password`, `profile_image`, `bio`, `phone_number`, `verified`, `date_joined`) VALUES
('Drak', 'ahoj', '$2a$11$g4ik0EoK2F1XTry3UQ/q0.PgqCpfLSsEO1igenCqDouddWh6uXU7G', NULL, 'Chrlim oheň', '4801223', 0, '2023-01-14 19:15:23'),
('AutoExotic', 'autoexotic', '$2a$11$6ogiDZzrmO5DW4zHH9k/PuPgKNBfB4RbfBPj4DqupsJmx21egUW6a', 'https://cdn.discordapp.com/attachments/1040997086130356285/1062045580530024488/upload.png', 'Děláme tuning skoro večkerým značkám automobilů!\nNajdete nás na PC 7282.', '3556218', 0, '2023-01-09 16:24:10'),
('Adam', 'ejdamec', '$2a$11$bmqHb.4YjcaSlmbXOdErGeQ9654Ay94T.2gOaTDQvZDJZ24zn17Cy', NULL, NULL, '2562896', 1, '2022-12-14 09:59:06'),
('Michael Espinoza', 'espinoza', '$2a$11$E.LFJkQ3qqot.ms76vJEi.Ii4pURdR6c3mBsmIOTuDlICzu9BAgq.', 'https://cdn.discordapp.com/attachments/1040997086130356285/1054487623680401579/upload.png', 'Commander - Los Santos Police Department', '3202921', 0, '2022-12-19 19:59:13'),
('Frank Pill', 'frankpill', '$2a$11$0bL55CVyC28HdFfo0pUvB.khrSYvgWwkLfDiXhtNaQEaYyq4XhfKu', NULL, NULL, '7772112', 0, '2023-01-02 19:55:37'),
('James', 'james.belucky5', '$2a$11$gvskssRBk1BP2M0EzrjViOXI0Nh4WEbGeiCmKQ3fd/de4b79Ej79K', NULL, NULL, '5551314', 0, '2023-01-04 23:21:34'),
('Jonathan Price', 'johny_price', '$2a$11$3wmltQdzTXmt/L9Y5JrIxu664JeNpZIx1LqsQwi3GOrB3UQzKb6c6', 'https://cdn.discordapp.com/attachments/1040997086130356285/1054508935664648292/upload.png', 'Ředitel EMS', '3552719', 0, '2022-12-19 21:19:33'),
('karlovo tajemství', 'karelvoprcálek', '$2a$11$NteQaWJ3TjL2KboAVCHNmuAxxYlWGOd4BaTs9x5uJKiHjXIFL/zDu', 'https://cdn.discordapp.com/attachments/1040997086130356285/1072075153753784350/upload.png', NULL, '2053347', 0, '2023-02-06 08:43:03'),
('LSSD County', 'lssdcounty', '$2a$11$4Jo6D44OeJd1WnPjF.aCuesY71eOnBj8lnxfYtyUOeg0..kfzvwqO', NULL, NULL, '2767031', 0, '2022-12-29 12:20:26'),
('Rogers', 'rogers.tlmc', '$2a$11$twvAINqaba4Abtc0YlW9e.9gyW30aLtKM4Bp9CBYH.FogYfzErSce', NULL, NULL, '6662600', 0, '2023-01-02 15:34:32');

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_instagram_comments`
--

CREATE TABLE `phone_instagram_comments` (
  `id` varchar(50) NOT NULL,
  `post_id` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `comment` varchar(500) NOT NULL DEFAULT '',
  `like_count` int(11) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_instagram_follows`
--

CREATE TABLE `phone_instagram_follows` (
  `followed` varchar(20) NOT NULL,
  `follower` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `phone_instagram_follows`
--

INSERT INTO `phone_instagram_follows` (`followed`, `follower`) VALUES
('autoexotic', 'ahoj'),
('autoexotic', 'karelvoprcálek'),
('espinoza', 'james.belucky5'),
('espinoza', 'karelvoprcálek'),
('james.belucky5', 'karelvoprcálek');

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_instagram_likes`
--

CREATE TABLE `phone_instagram_likes` (
  `id` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `is_comment` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `phone_instagram_likes`
--

INSERT INTO `phone_instagram_likes` (`id`, `username`, `is_comment`) VALUES
('E4b7E3nB8QkEY5484l884C1bs2X4M25125RX7a93794Q7Tj4ep', 'espinoza', 0),
('E4b7E3nB8QkEY5484l884C1bs2X4M25125RX7a93794Q7Tj4ep', 'james.belucky5', 0);

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_instagram_loggedin`
--

CREATE TABLE `phone_instagram_loggedin` (
  `phone_number` varchar(15) NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `phone_instagram_loggedin`
--

INSERT INTO `phone_instagram_loggedin` (`phone_number`, `username`) VALUES
('2053347', 'karelvoprcálek'),
('2055264', 'autoexotic'),
('2562896', 'ejdamec'),
('2767031', 'lssdcounty'),
('3202921', 'espinoza'),
('3552719', 'johny_price'),
('3556218', 'autoexotic'),
('4801223', 'ahoj'),
('4807611', 'espinoza'),
('5551314', 'james.belucky5'),
('6662600', 'rogers.tlmc'),
('7772112', 'frankpill');

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_instagram_messages`
--

CREATE TABLE `phone_instagram_messages` (
  `id` varchar(50) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `recipient` varchar(20) NOT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_instagram_notifications`
--

CREATE TABLE `phone_instagram_notifications` (
  `id` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `from` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `post_id` varchar(50) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `phone_instagram_notifications`
--

INSERT INTO `phone_instagram_notifications` (`id`, `username`, `from`, `type`, `post_id`, `timestamp`) VALUES
('71qp4245O3326j18vW8goCB121E4C6jK18yB56c73q393ShHu7', 'autoexotic', 'ahoj', 'follow', NULL, '2023-01-14 19:17:16'),
('AB732134yG156K5d615fe1m1C4CTG37WHv13a65963fG4R682I', 'espinoza', 'karelvoprcálek', 'follow', NULL, '2023-02-06 18:19:09'),
('fzG4r7mr27x1u1W97Lk3xB4Farc4442qzm25KmmX4m263HkU9H', 'james.belucky5', 'karelvoprcálek', 'follow', NULL, '2023-02-06 08:44:52'),
('K7O7O1y8E2xaw51196o4253496y3zZ666tWQ8K99me31Hg8f2S', 'espinoza', 'james.belucky5', 'like_photo', 'E4b7E3nB8QkEY5484l884C1bs2X4M25125RX7a93794Q7Tj4ep', '2023-01-04 23:24:39'),
('M3vULaYv32xM74661843518eu679n52yxs8I4DngBN87xD23tn', 'autoexotic', 'karelvoprcálek', 'follow', NULL, '2023-02-06 08:44:59'),
('Y5MLuVAvaDep6T52nJ7D737K4J6ZfKc6fn8f9336R8j26r13Bf', 'espinoza', 'james.belucky5', 'follow', NULL, '2023-01-04 23:24:35');

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_instagram_posts`
--

CREATE TABLE `phone_instagram_posts` (
  `id` varchar(50) NOT NULL,
  `media` text DEFAULT NULL,
  `caption` varchar(500) NOT NULL DEFAULT '',
  `like_count` int(11) NOT NULL DEFAULT 0,
  `comment_count` int(11) NOT NULL DEFAULT 0,
  `username` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `phone_instagram_posts`
--

INSERT INTO `phone_instagram_posts` (`id`, `media`, `caption`, `like_count`, `comment_count`, `username`, `timestamp`) VALUES
('5rj6m2y3577O6LI9417Mm14b492s77442N3n2bc8AD47IeOs31', '[\"https://cdn.discordapp.com/attachments/1040997086130356285/1072219566769455124/upload.png\"]', 'KDo tomuhle sekuriťákovi dal práci když tu v pracovní době spí', 0, 0, 'karelvoprcálek', '2023-02-06 18:18:48'),
('763l7j57777qcg4p8j574qu869o275391241572324P1B17PIW', '[\"https://cdn.discordapp.com/attachments/1040997086130356285/1060341361641005177/upload.png\",\"https://cdn.discordapp.com/attachments/1040997086130356285/1060341323753861180/upload.png\"]', 'řidičak hotov :D ', 0, 0, 'james.belucky5', '2023-01-04 23:38:27'),
('7vxb1b75n3S6j53tzY65541BfDOJ71753z12L9668YF4kWkQFz', '[\"https://cdn.discordapp.com/attachments/1040997086130356285/1072075180274360331/upload.png\"]', 'driving', 0, 0, 'karelvoprcálek', '2023-02-06 08:44:44'),
('834FW9scDOnRq5z18w1k3Oc5H163h8n7J4491SdJmh3u336o41', '[\"https://cdn.discordapp.com/attachments/1040997086130356285/1060336620903071884/upload.png\"]', 'První západ slunce v LS <3', 0, 0, 'james.belucky5', '2023-01-04 23:22:02'),
('E4b7E3nB8QkEY5484l884C1bs2X4M25125RX7a93794Q7Tj4ep', '[\"https://cdn.discordapp.com/attachments/1040997086130356285/1054488402214527077/upload.png\"]', 'Dnes v službe aj s pánom Chiefom of Police.', 2, 0, 'espinoza', '2022-12-19 21:14:53'),
('nT1rKkhs6t7zPSHgh14946kry427iA64Hw249A87125FC4p437', '[\"https://cdn.discordapp.com/attachments/1040997086130356285/1062048935855783978/upload.png\"]', 'Máte utopený vůz? Vaše škoda, naše radost. Vykoupíme od Vás vůz za nejlepší cenu na trhu!', 0, 0, 'autoexotic', '2023-01-09 16:44:46');

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_instagram_stories`
--

CREATE TABLE `phone_instagram_stories` (
  `id` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `image` varchar(200) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_instagram_stories_views`
--

CREATE TABLE `phone_instagram_stories_views` (
  `story_id` varchar(50) NOT NULL,
  `viewer` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_last_phone`
--

CREATE TABLE `phone_last_phone` (
  `identifier` varchar(46) NOT NULL,
  `phone_number` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `phone_last_phone`
--

INSERT INTO `phone_last_phone` (`identifier`, `phone_number`) VALUES
('char1:08b92adb13c370a0ee3f6d9c6da9b21eeab5f160', '9073711'),
('char1:096a1174e562cec8470b3f647f45b3f0d5cf93e1', '3550358'),
('char1:0c9812bdcd6831fb225152cf2e84e8b7595baa00', '6662440'),
('char1:0f28049c7aa4aa48bd211a8555a26c730f6e5a35', '5551314'),
('char1:15dca8e7dadde08708d93f78369189282a69b94f', '6025112'),
('char1:252400a9738eef79b93a74c5937b0548e469c253', '7772112'),
('char1:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', '2569241'),
('char1:2d7ec2c3711e1357b20a2d5ddb56eb5377e6243d', '6508426'),
('char1:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', '3556218'),
('char1:6ad4ba339bdda59da6fc7cbcd637cd1a2aa31d46', '6028653'),
('char1:6c8c6ae8c062d2f8c67c6f72bfedd76aea374840', '4807611'),
('char1:6d33049611fce73e866daa98f13513c53a3b36b1', '9076180'),
('char1:6da4d857b509dd6583ba6782a8301d467bf36380', '6662600'),
('char1:71f6216001838f0b67bf404d0e401d8a20127fe0', '5208780'),
('char1:739f45face4a989b414f43753a220053ece07406', '6660970'),
('char1:7d36c723f19b962b1da9aa2d249374ab07ed59f8', '9074543'),
('char1:7fc9429fbfdead8589b808ce4c9ca1033be3f258', '4808615'),
('char1:825bafdeb0879ee3488dcc11ee78b11b484d73a6', '6665822'),
('char1:83f8d788299c4cf1928bbd97d37da3db69da3b3a', '7778655'),
('char1:8b738557b51059dd1243c514317c74a3fa11d556', '1202572'),
('char1:9dd7913bbd62f2a73d45d26b229765a1828ece15', '6024492'),
('char1:9dda4c73ff2a6ad2da4f50e592fd7ee2efbe6340', '2769218'),
('char1:9f92532a07891e00ad46526c68b955a2935c3c24', '2568625'),
('char1:a0f7631205cb6e82660d688375a78c4dfd78a7b1', '2054851'),
('char1:a46aad5d50e8754e3611f8cd512abaf136512ba8', '2057643'),
('char1:aa067204a8e40dfc2807f01efeb9d2dbc066bdfd', '2767031'),
('char1:b1dc43c6fb4ef390d0248afa02f04484c4f34a36', '5209270'),
('char1:b26012bbcfa5b8f4f373ccb07f42b17ad0a089f7', '2563688'),
('char1:c46d5b8613e5dac25f1c39bfc3a57ba0c2cf76f5', '9072407'),
('char1:c9134d4df5b10443686b0370214af498ed464fad', '6508484'),
('char1:d3da62f33fe647236cdb1840121f6c72fbec6284', '6669374'),
('char1:eb32c560584bc0b41ff66831d9cb42cfb0358dea', '6024644'),
('char1:f3e71e94ead0e0b54c28491a2b012f196ab8d472', '3555338'),
('char1:fd77610e8f35fbcb85957438e3647d5b4b26c29c', '3205368'),
('char2:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', '6026642'),
('char2:58c130ffb0b6b2ae3b2cbc189ddbf643c65aa6d4', '2768399'),
('char2:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', '4802681'),
('char2:6c8c6ae8c062d2f8c67c6f72bfedd76aea374840', '3553845'),
('char2:83f8d788299c4cf1928bbd97d37da3db69da3b3a', '5559588'),
('char2:9dda4c73ff2a6ad2da4f50e592fd7ee2efbe6340', '3209550'),
('char2:b1dc43c6fb4ef390d0248afa02f04484c4f34a36', '6020162'),
('char2:d3da62f33fe647236cdb1840121f6c72fbec6284', '2058736'),
('char2:fd77610e8f35fbcb85957438e3647d5b4b26c29c', '4803417'),
('char3:6c8c6ae8c062d2f8c67c6f72bfedd76aea374840', '2769268'),
('char3:b1dc43c6fb4ef390d0248afa02f04484c4f34a36', '3552150');

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_mail_accounts`
--

CREATE TABLE `phone_mail_accounts` (
  `address` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `phone_mail_accounts`
--

INSERT INTO `phone_mail_accounts` (`address`, `password`) VALUES
('autoexotic@pixel.com', '$2a$11$pojmtMtV5EnYLqv9qlvDBu2KwG9pbtwgzT47357Psfun4klnujubO'),
('bubucernoch4321@pixel.com', '$2a$11$EgubJypTb8FDgsvf22kA.eoi.ZvjL7kU0ZyGc87XzevtcDSw0Mi/a'),
('dmorgen@pixel.com', '$2a$11$k.AuqV5/l2OH9AV0DHqSXOq2TI2C4C9U66apRaxVktwRuNrurryI2'),
('espinoza@pixel.com', '$2a$11$9t0uWd6gEkgraTR/gwApe.5snZzdaHbc9rF16FBX2Pew8D/q2jl1K'),
('frank@pixel.com', '$2a$11$m/5dKJ91Usf3AoPEBEUKpexgYsCzjFQ2KE5SAaqzmr3BOWvrMIsgy'),
('Lucasbennys@pixel.com', '$2a$11$gEMmsrU7Eyi/jH6w9v3ZHexxU1fotBnBveXRbgc2U7jxlRFhp9rWW'),
('Martinsmth@pixel.com', '$2a$11$pSEeOygT8VqRqrjfkAzDWepVztKOuZ8c.CJlhzSlodbfa8a8Pw3ZW'),
('mike@pixel.com', '$2a$11$Tm4A2roAFc476dYaC0ZwfeVJu53YLIxbxQFGwyz2Oudu/L4/VOjIK'),
('williams@pixel.com', '$2a$11$TDdpbKESoPaM4juKHpFKS.Qp.Mz1N6zEp686iPI731D4qeqp.FPja'),
('woods@pixel.com', '$2a$11$ikfrncFlHZa5lBBCbevEyOX5uRMjbgTBLKSbAUD5GLA7mjGoBnHZq');

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_mail_loggedin`
--

CREATE TABLE `phone_mail_loggedin` (
  `address` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `phone_mail_loggedin`
--

INSERT INTO `phone_mail_loggedin` (`address`, `phone_number`) VALUES
('autoexotic@pixel.com', '3556218'),
('bubucernoch4321@pixel.com', '9074543'),
('dmorgen@pixel.com', '6508426'),
('espinoza@pixel.com', '3202921'),
('frank@pixel.com', '7772112'),
('Lucasbennys@pixel.com', '4803417'),
('Martinsmth@pixel.com', '3205368'),
('mike@pixel.com', '2568625'),
('williams@pixel.com', '6026642'),
('woods@pixel.com', '6508484');

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_mail_messages`
--

CREATE TABLE `phone_mail_messages` (
  `id` varchar(50) NOT NULL,
  `recipient` varchar(100) NOT NULL,
  `sender` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `attachments` longtext DEFAULT NULL,
  `actions` longtext DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_maps_locations`
--

CREATE TABLE `phone_maps_locations` (
  `id` varchar(50) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `x_pos` float NOT NULL,
  `y_pos` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_marketplace_posts`
--

CREATE TABLE `phone_marketplace_posts` (
  `id` varchar(50) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `attachments` text DEFAULT NULL,
  `price` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `phone_marketplace_posts`
--

INSERT INTO `phone_marketplace_posts` (`id`, `phone_number`, `title`, `description`, `attachments`, `price`, `timestamp`) VALUES
('c6IeK415eLG67711r7122Ta8e8PJ81Q3w1Bfx39d2d6s3Iq3mc', '2761535', 'Mobil', 'Použitý mobil, funkční', '[]', 400, '2022-12-26 13:18:19'),
('f6383Z5Lt17CUWqbgPJ56V698O65H3O93L2a3QJ1ZymP167xJ7', '2761535', 'Použitý mobil', 'plně funkční', '[]', 400, '2022-12-26 13:18:40'),
('f6MV665f8a8C2aIkeBX474Od3h4X39LNy47S1vW64577F4i273', '2761535', 'Šperhák', 'Kvalitka', '[]', 250, '2022-12-26 14:10:13');

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_message_channels`
--

CREATE TABLE `phone_message_channels` (
  `channel_id` varchar(50) NOT NULL,
  `is_group` tinyint(1) NOT NULL DEFAULT 0,
  `last_message` varchar(50) NOT NULL DEFAULT '',
  `last_message_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `phone_message_channels`
--

INSERT INTO `phone_message_channels` (`channel_id`, `is_group`, `last_message`, `last_message_timestamp`, `name`) VALUES
('114F4I8es7fu1moOlZmyS8tz2m2F51Ne93J378Gn4Rx4i24Lf1', 0, '<!SENT-LOCATION-X=991.23Y=-135.66!>', '2023-01-02 19:42:01', NULL),
('1M5MMR941r9Di8yS4476bj4h6o4b997Z7Q5P648r5Vc9G8BO13', 0, '<!AUDIO-MESSAGE-IMAGE=\"https://cdn.discordapp.com/', '2022-12-19 21:19:17', NULL),
('422v2DfF3EFVAxM239s931q53iGv38688E4SbHCbWu32881jRW', 0, '', '2022-12-28 11:31:52', NULL),
('434Y9U3kK1qNWW41E1ve5GDPEJ23cw319f222OdCvE23fs9O3h', 0, 'cus', '2023-01-02 10:22:09', NULL),
('5D3nxp9X6K479116lnmA4tY85oYAg4t147v6GJK7DtNITt1Na3', 0, '', '2022-12-25 19:50:57', NULL),
('5UVT6bjVr3845wFH7DAY52k56I9rt5hN94u27dV74plzC2rz7w', 0, 'Budeme tedy počítat s původní domluvou. Díky ', '2023-01-02 11:21:35', NULL),
('7g2Ue89Et3295L449Utnux5YnOb6m2BY7b7hc5j71nZo61X7q7', 0, '', '2022-12-26 21:36:12', NULL),
('8gY4G83X7tO6b252OT8f37417IHr55844nV9tC8XJt4g9O1t59', 0, '', '2023-02-17 13:50:15', NULL),
('9azI4xa3K8689ml969841a954828s7psp1U2z4f6j52969bF22', 0, '', '2022-12-19 20:05:35', NULL),
('9Q85P5G8a89k48s94A9sT36YR722Gm5712Q8hUZB33w3l6H9QR', 0, '<!AUDIO-MESSAGE-IMAGE=\"https://cdn.discordapp.com/', '2023-01-04 19:02:08', NULL),
('Kj35T26W746pr64L8O3hioh1ty2v2N772613o9q945L4567SF9', 0, 'Ty popeláři platí zlatem. Za 1 minut jsem si vy', '2023-01-14 19:34:44', NULL),
('MBc7P73L6851Oaw5d8ptwCJ1n4878F4u8325959Sy67G8Uy4bh', 0, '...', '2023-01-04 23:27:46', NULL),
('mfJ776aqBa88SW7qO175qYcW6G8H8l2n9o4bT999158DkiSwsE', 0, 'cus', '2023-01-03 19:53:01', NULL),
('mY365G95pvL565P6iw43mu51l5ie15o5dIx8e7AvsS8615Ok34', 0, '', '2023-01-03 20:11:19', NULL),
('OPn2oQ9mS3id8F213KdnVj4e4a2q9Z1A1AQy6G54u19j98IBF7', 0, 'Attachment', '2022-12-28 12:24:03', NULL),
('pMh64LrpPA6254h831ab5g2h6Jf83118HdUNaJqXd45upCC67u', 0, 'Copak jste potřeboval?', '2022-12-30 12:29:30', NULL),
('s25I35ld4491477M2lDfe34hA4wi2YDU8u26JR3qp8Zk5A81f1', 0, 'Dobře.', '2023-01-03 17:42:14', NULL),
('TFc44j5Talt9f9Uv59129434l9tl4545TLp7772J74jVX67282', 0, '', '2023-02-17 13:51:20', NULL),
('v9uqZ549wX3535Ipd87de7X9FAz56K2v9rUSKFWe3g7y82pfO4', 0, '', '2022-12-28 11:30:15', NULL),
('Z5YW3635u8yM554Xf35eAm1ZE5j1255jQTC62R14n19C5i5ZEx', 0, 'jedu', '2023-01-02 21:16:40', NULL);

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_message_members`
--

CREATE TABLE `phone_message_members` (
  `channel_id` varchar(50) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `is_owner` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `phone_message_members`
--

INSERT INTO `phone_message_members` (`channel_id`, `phone_number`, `is_owner`) VALUES
('114F4I8es7fu1moOlZmyS8tz2m2F51Ne93J378Gn4Rx4i24Lf1', '2057643', 0),
('114F4I8es7fu1moOlZmyS8tz2m2F51Ne93J378Gn4Rx4i24Lf1', '7772112', 0),
('1M5MMR941r9Di8yS4476bj4h6o4b997Z7Q5P648r5Vc9G8BO13', '3202921', 0),
('1M5MMR941r9Di8yS4476bj4h6o4b997Z7Q5P648r5Vc9G8BO13', '6508484', 0),
('422v2DfF3EFVAxM239s931q53iGv38688E4SbHCbWu32881jRW', '2768399', 0),
('422v2DfF3EFVAxM239s931q53iGv38688E4SbHCbWu32881jRW', '5', 0),
('434Y9U3kK1qNWW41E1ve5GDPEJ23cw319f222OdCvE23fs9O3h', '2563499', 0),
('434Y9U3kK1qNWW41E1ve5GDPEJ23cw319f222OdCvE23fs9O3h', '7772112', 0),
('5D3nxp9X6K479116lnmA4tY85oYAg4t147v6GJK7DtNITt1Na3', '2568625', 0),
('5D3nxp9X6K479116lnmA4tY85oYAg4t147v6GJK7DtNITt1Na3', '911', 0),
('5UVT6bjVr3845wFH7DAY52k56I9rt5hN94u27dV74plzC2rz7w', '6662600', 0),
('5UVT6bjVr3845wFH7DAY52k56I9rt5hN94u27dV74plzC2rz7w', '7778655', 0),
('7g2Ue89Et3295L449Utnux5YnOb6m2BY7b7hc5j71nZo61X7q7', '3552719', 0),
('7g2Ue89Et3295L449Utnux5YnOb6m2BY7b7hc5j71nZo61X7q7', '5550161', 0),
('8gY4G83X7tO6b252OT8f37417IHr55844nV9tC8XJt4g9O1t59', '2059421', 0),
('8gY4G83X7tO6b252OT8f37417IHr55844nV9tC8XJt4g9O1t59', '911', 0),
('9azI4xa3K8689ml969841a954828s7psp1U2z4f6j52969bF22', '3202921', 0),
('9Q85P5G8a89k48s94A9sT36YR722Gm5712Q8hUZB33w3l6H9QR', '2569241', 0),
('9Q85P5G8a89k48s94A9sT36YR722Gm5712Q8hUZB33w3l6H9QR', '6508484', 0),
('Kj35T26W746pr64L8O3hioh1ty2v2N772613o9q945L4567SF9', '2055264', 0),
('Kj35T26W746pr64L8O3hioh1ty2v2N772613o9q945L4567SF9', '4801223', 0),
('MBc7P73L6851Oaw5d8ptwCJ1n4878F4u8325959Sy67G8Uy4bh', '6024492', 0),
('MBc7P73L6851Oaw5d8ptwCJ1n4878F4u8325959Sy67G8Uy4bh', '650', 0),
('mfJ776aqBa88SW7qO175qYcW6G8H8l2n9o4bT999158DkiSwsE', '6508426', 0),
('mfJ776aqBa88SW7qO175qYcW6G8H8l2n9o4bT999158DkiSwsE', '7772112', 0),
('mY365G95pvL565P6iw43mu51l5ie15o5dIx8e7AvsS8615Ok34', '4803417', 0),
('mY365G95pvL565P6iw43mu51l5ie15o5dIx8e7AvsS8615Ok34', '666', 0),
('OPn2oQ9mS3id8F213KdnVj4e4a2q9Z1A1AQy6G54u19j98IBF7', '2768399', 0),
('OPn2oQ9mS3id8F213KdnVj4e4a2q9Z1A1AQy6G54u19j98IBF7', '5208780', 0),
('pMh64LrpPA6254h831ab5g2h6Jf83118HdUNaJqXd45upCC67u', '2058736', 0),
('pMh64LrpPA6254h831ab5g2h6Jf83118HdUNaJqXd45upCC67u', '3552719', 0),
('s25I35ld4491477M2lDfe34hA4wi2YDU8u26JR3qp8Zk5A81f1', '2568625', 0),
('s25I35ld4491477M2lDfe34hA4wi2YDU8u26JR3qp8Zk5A81f1', '7772112', 0),
('TFc44j5Talt9f9Uv59129434l9tl4545TLp7772J74jVX67282', '111111111999', 0),
('TFc44j5Talt9f9Uv59129434l9tl4545TLp7772J74jVX67282', '2059421', 0),
('v9uqZ549wX3535Ipd87de7X9FAz56K2v9rUSKFWe3g7y82pfO4', '2768399', 0),
('v9uqZ549wX3535Ipd87de7X9FAz56K2v9rUSKFWe3g7y82pfO4', '520', 0),
('Z5YW3635u8yM554Xf35eAm1ZE5j1255jQTC62R14n19C5i5ZEx', '6662600', 0),
('Z5YW3635u8yM554Xf35eAm1ZE5j1255jQTC62R14n19C5i5ZEx', '7772112', 0);

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_message_messages`
--

CREATE TABLE `phone_message_messages` (
  `id` varchar(50) NOT NULL,
  `channel_id` varchar(50) NOT NULL,
  `sender` varchar(15) NOT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `phone_message_messages`
--

INSERT INTO `phone_message_messages` (`id`, `channel_id`, `sender`, `content`, `attachments`, `timestamp`) VALUES
('14S4kbU6I563jy31L59wtJOvcKRux4588PwX2k122nPq6x25V6', 'OPn2oQ9mS3id8F213KdnVj4e4a2q9Z1A1AQy6G54u19j98IBF7', '5208780', 'ahoj', NULL, '2022-12-28 12:23:55'),
('1Cz813gVp5H24uWcb6hBak837HY258s5D5WBs682ljEVU245L5', 'pMh64LrpPA6254h831ab5g2h6Jf83118HdUNaJqXd45upCC67u', '3552719', '<!CALL-NO-ANSWER!>', NULL, '2022-12-28 19:36:24'),
('1Fo8Hef25JD3vV3l13v573E6w1e6aKq52Ns3DpF734193432p5', 'v9uqZ549wX3535Ipd87de7X9FAz56K2v9rUSKFWe3g7y82pfO4', '2768399', '<!CALL-NO-ANSWER!>', NULL, '2022-12-28 11:30:17'),
('25I8i2me2k5cx6x6kUxkU3iU52k6FqoFEZcV81557T3575SRX3', '7g2Ue89Et3295L449Utnux5YnOb6m2BY7b7hc5j71nZo61X7q7', '3552719', '<!CALL-NO-ANSWER!>', NULL, '2022-12-26 21:36:12'),
('2e7r3pJOT5K4q6j32Nnw399831w86x5H67eyv4mJOv724GLD28', '8gY4G83X7tO6b252OT8f37417IHr55844nV9tC8XJt4g9O1t59', '2059421', '<!CALL-NO-ANSWER!>', NULL, '2023-02-17 13:50:50'),
('2f9332L5Qf5899k36c14C5OIk6LLRwM2993bMJYX2yFc464v1Q', '434Y9U3kK1qNWW41E1ve5GDPEJ23cw319f222OdCvE23fs9O3h', '7772112', 'Zdar', NULL, '2023-01-01 14:54:21'),
('2Hj47877K96cxJaql4aO3MK4I8l8Xz798UQh77v2N4ZmN857M2', '8gY4G83X7tO6b252OT8f37417IHr55844nV9tC8XJt4g9O1t59', '2059421', '<!CALL-NO-ANSWER!>', NULL, '2023-02-17 13:50:51'),
('33yZ7633U97BZYs6H5GODrl92X52Mu9Sj28D16hHIo6Ds66lAn', 'MBc7P73L6851Oaw5d8ptwCJ1n4878F4u8325959Sy67G8Uy4bh', '6024492', '...', NULL, '2023-01-04 23:27:46'),
('3M3293Fnp4OX52o673un3Q3x1fQphV3hLp8r116F68277Y761x', '114F4I8es7fu1moOlZmyS8tz2m2F51Ne93J378Gn4Rx4i24Lf1', '7772112', 'Zdary tak je dupají králíci?', NULL, '2023-01-02 17:15:51'),
('3NS9wj2Lcn98U111j3j24b8uxT4EA9d28k1V4ipS1jlV8vg42C', '114F4I8es7fu1moOlZmyS8tz2m2F51Ne93J378Gn4Rx4i24Lf1', '2057643', '<!CALL-NO-ANSWER!>', NULL, '2023-01-01 14:56:32'),
('3o7n31L7WH6lvD7WF7i4917Ybq781yGaV16573aC7uNk27K9g7', '434Y9U3kK1qNWW41E1ve5GDPEJ23cw319f222OdCvE23fs9O3h', '7772112', '<!CALL-NO-ANSWER!>', NULL, '2023-01-02 10:21:59'),
('3Sl8QL73oA991kC48miW894J7ddn6l93x388uCO65161S834o3', 'v9uqZ549wX3535Ipd87de7X9FAz56K2v9rUSKFWe3g7y82pfO4', '2768399', '<!CALL-NO-ANSWER!>', NULL, '2022-12-28 11:30:19'),
('3UQ741V464qUGf7h6499Kn4lP5223j9T1L6w43Qc54SzY27AxP', '434Y9U3kK1qNWW41E1ve5GDPEJ23cw319f222OdCvE23fs9O3h', '7772112', '<!CALL-NO-ANSWER!>', NULL, '2023-01-02 10:22:02'),
('4Ha4X9AYvz83t7Tv87A74EFP1Qnm64PJ4LC596276HzCoG11h3', '9Q85P5G8a89k48s94A9sT36YR722Gm5712Q8hUZB33w3l6H9QR', '2569241', '<!AUDIO-MESSAGE-IMAGE=\"https://cdn.discordapp.com/attachments/1040997086130356285/1060272110813061150/upload.png\"-AUDIO=\"https://cdn.discordapp.com/attachments/1040997086130356285/1060272112717287534/upload.ogg\"-DURATION=\"1\"!>', NULL, '2023-01-04 19:02:49'),
('4Z8y7riFv869qW444SYNAR94ZOM42435H3x6M218XBz732Cu5a', '5UVT6bjVr3845wFH7DAY52k56I9rt5hN94u27dV74plzC2rz7w', '6662600', 'Dobrý den, díky za zprávu. Pokud je to možné, tak si jí převezmu klidně hned.', NULL, '2023-01-02 11:19:01'),
('5u7Rmw482E36Cip58T5w8Q62c924Nv3v2P3ec411J319B9d2uf', '5D3nxp9X6K479116lnmA4tY85oYAg4t147v6GJK7DtNITt1Na3', '2568625', '<!CALL-NO-ANSWER!>', NULL, '2022-12-25 19:50:57'),
('5v2mv3h3ZYV76v678yxi6S1ZP41zs64CE5N2621g26qV87n3w6', '1M5MMR941r9Di8yS4476bj4h6o4b997Z7Q5P648r5Vc9G8BO13', '3202921', '<!AUDIO-MESSAGE-IMAGE=\"https://cdn.discordapp.com/attachments/1040997086130356285/1054508292296146955/upload.png\"-AUDIO=\"https://cdn.discordapp.com/attachments/1040997086130356285/1054508294212944033/upload.ogg\"-DURATION=\"2\"!>', NULL, '2022-12-19 21:19:17'),
('66H52uiIK88v159D4zM6DycYfErxF94TjG249o4t4q2N4tA28H', '8gY4G83X7tO6b252OT8f37417IHr55844nV9tC8XJt4g9O1t59', '2059421', '<!CALL-NO-ANSWER!>', NULL, '2023-02-17 13:50:52'),
('6kssGK73u892f245ahy787Ub8JGqi3E2s81H81949myKWkT1gt', '8gY4G83X7tO6b252OT8f37417IHr55844nV9tC8XJt4g9O1t59', '2059421', '<!CALL-NO-ANSWER!>', NULL, '2023-02-17 13:50:23'),
('717lxThEv5641157wK7Q55F551u25iDtQl4476zdE3322oLe2B', 'TFc44j5Talt9f9Uv59129434l9tl4545TLp7772J74jVX67282', '2059421', '<!CALL-NO-ANSWER!>', NULL, '2023-02-17 13:51:20'),
('77FpdU1Vf395ocg1ww4h7kvc59o671T3Bd2xMo14L6B447F3zM', '114F4I8es7fu1moOlZmyS8tz2m2F51Ne93J378Gn4Rx4i24Lf1', '2057643', '🤣', NULL, '2023-01-01 14:55:00'),
('78mVv3FVqQ6cp7C86o791S1852Zp2182tZEi2YbzN6pu82IXq8', '1M5MMR941r9Di8yS4476bj4h6o4b997Z7Q5P648r5Vc9G8BO13', '3202921', 'Espinoza', NULL, '2022-12-19 21:18:07'),
('7dN86Y742z9Sz4N9DN8ryp829YD727U2vl34x2917X7A2Op51f', 's25I35ld4491477M2lDfe34hA4wi2YDU8u26JR3qp8Zk5A81f1', '7772112', 'Dobrý den, zítra bych měl dorazit okolo 17h. Tak mi pak dejte vědět. ', NULL, '2023-01-02 21:07:04'),
('7Ot4W27zG7EzSRD2854C3a7369359Q748631O462q2z5E3P7y1', 'v9uqZ549wX3535Ipd87de7X9FAz56K2v9rUSKFWe3g7y82pfO4', '2768399', '<!CALL-NO-ANSWER!>', NULL, '2022-12-28 11:31:21'),
('7ZdB69CZ8355oaP379Y3Nc372nN96I925Tg1Q12fC3L6855K3c', 'Z5YW3635u8yM554Xf35eAm1ZE5j1255jQTC62R14n19C5i5ZEx', '6662600', 'fakt? stavíš se pak v dílně? zatím zajedu něco vyřešit', NULL, '2023-01-02 21:05:57'),
('88JF72V9OM6t6M62392Y5z8d95749ZZ6875v41aWjNjY8Uq539', '8gY4G83X7tO6b252OT8f37417IHr55844nV9tC8XJt4g9O1t59', '2059421', '<!CALL-NO-ANSWER!>', NULL, '2023-02-17 13:50:21'),
('8gNq978vKOMZ4lzJ45N9m1S47il1kL44kt8k3387z6Px4u7354', 'Z5YW3635u8yM554Xf35eAm1ZE5j1255jQTC62R14n19C5i5ZEx', '6662600', 'jedu', NULL, '2023-01-02 21:16:40'),
('94519a7F2qPCri9Q39W6538i2Bi22v7omLFu97X46KBgkcCSrO', 'pMh64LrpPA6254h831ab5g2h6Jf83118HdUNaJqXd45upCC67u', '2058736', '<!CALL-NO-ANSWER!>', NULL, '2022-12-27 19:05:22'),
('97IX6S8O999t4778d227f7Z8Zzh77f6pHsE5D483F83ev433zR', 'OPn2oQ9mS3id8F213KdnVj4e4a2q9Z1A1AQy6G54u19j98IBF7', '5208780', '<!CALL-NO-ANSWER!>', NULL, '2022-12-29 09:40:33'),
('9C8B31hU1sr51G118vF3gfQGPp3EAI34599NHl6rp5LD95wo82', '114F4I8es7fu1moOlZmyS8tz2m2F51Ne93J378Gn4Rx4i24Lf1', '2057643', '<!SENT-LOCATION-X=991.23Y=-135.66!>', NULL, '2023-01-02 19:42:01'),
('9L5L1W7u98f542151A2484177652436S1UV1R4mAQ54463257M', '422v2DfF3EFVAxM239s931q53iGv38688E4SbHCbWu32881jRW', '2768399', '<!CALL-NO-ANSWER!>', NULL, '2022-12-28 11:31:52'),
('9q285579Q177pF24t89431k9a5thbm2r14c7txQbILC6njNj3w', '434Y9U3kK1qNWW41E1ve5GDPEJ23cw319f222OdCvE23fs9O3h', '7772112', '<!CALL-NO-ANSWER!>', NULL, '2023-01-02 10:21:52'),
('a5D22ZX3P7X6T4p5kGT9Eh35N41784EY48H86946KFt2O1CS13', '114F4I8es7fu1moOlZmyS8tz2m2F51Ne93J378Gn4Rx4i24Lf1', '2057643', '<!SENT-PAYMENT-1!>', NULL, '2023-01-01 14:55:43'),
('aaN4nNIA9Uq5Cp4611Hao2z228t3q24M8N2dC154NgWf5d12H8', '9Q85P5G8a89k48s94A9sT36YR722Gm5712Q8hUZB33w3l6H9QR', '6508484', '.', NULL, '2023-01-02 20:20:44'),
('b59Rx8b7NF3MfQl2Wz747S9F1k1Z17qGtRK7qF4134m784ofcI', 'Z5YW3635u8yM554Xf35eAm1ZE5j1255jQTC62R14n19C5i5ZEx', '7772112', 'zitr budeme mit zakaznika', NULL, '2023-01-02 21:05:34'),
('d85NQu43u48mg21K1797w9ufFOR5l6gip9b55kcFjp2187XD2d', '114F4I8es7fu1moOlZmyS8tz2m2F51Ne93J378Gn4Rx4i24Lf1', '7772112', 'Ahoj', NULL, '2023-01-01 14:54:48'),
('dL75786o1H6b58163S27B3nMYhN41BbQF78mO721wdY9r88RsM', 'pMh64LrpPA6254h831ab5g2h6Jf83118HdUNaJqXd45upCC67u', '2058736', 'Copak jste potřeboval?', NULL, '2022-12-30 12:29:30'),
('e4NnZN2xGDHn7948mxHc4W226q5T413Aq83z3841UL494V17X9', 'v9uqZ549wX3535Ipd87de7X9FAz56K2v9rUSKFWe3g7y82pfO4', '2768399', '<!CALL-NO-ANSWER!>', NULL, '2022-12-28 11:30:15'),
('e6E2p87298zYM84A3KmRqVZG7moHnqoG8D5J7xKj8h3ozpj3Ri', 'Z5YW3635u8yM554Xf35eAm1ZE5j1255jQTC62R14n19C5i5ZEx', '6662600', 'vše ok?', NULL, '2023-01-02 21:05:04'),
('e78ju7Q4s4F2614js68s1muOK137u6Mk8wo521PpMBPuO7tS73', 'Z5YW3635u8yM554Xf35eAm1ZE5j1255jQTC62R14n19C5i5ZEx', '7772112', 'jj', NULL, '2023-01-02 21:05:25'),
('f5ik2Bm1M133352923774g1Cw4Dm97dcr9W95Eic379273yU93', 's25I35ld4491477M2lDfe34hA4wi2YDU8u26JR3qp8Zk5A81f1', '7772112', 'Dobrý den, jsem v dílně. Až budet mít čas pište nebo volejte. Frank Pill, Lost MC', NULL, '2023-01-03 15:55:40'),
('F6Z62N5cXTme483m55226616z42r46995qi77k6B2u6a86h26i', '1M5MMR941r9Di8yS4476bj4h6o4b997Z7Q5P648r5Vc9G8BO13', '3202921', '<!SENT-PAYMENT-1!>', NULL, '2022-12-19 21:18:40'),
('g573kmH2rft739p45pm51o48JGX833rVa5t32CtUp9W2hO3789', 'Z5YW3635u8yM554Xf35eAm1ZE5j1255jQTC62R14n19C5i5ZEx', '7772112', 'stavim, dovezu zakazku a jedu tam', NULL, '2023-01-02 21:06:15'),
('h73r1Q46144b9bvm2m34K64N91K921L8hzkz84q5812gtlZ8wL', '8gY4G83X7tO6b252OT8f37417IHr55844nV9tC8XJt4g9O1t59', '2059421', '<!CALL-NO-ANSWER!>', NULL, '2023-02-17 13:50:15'),
('H95J99n84h486H118912H4nJ2v9vps4j5qO6zrmlc3X9Rw6x1c', '1M5MMR941r9Di8yS4476bj4h6o4b997Z7Q5P648r5Vc9G8BO13', '3202921', '', '[\"https://cdn.discordapp.com/attachments/1040997086130356285/1054507560784384051/upload.png\",\"https://cdn.discordapp.com/attachments/1040997086130356285/1054488402214527077/upload.png\"]', '2022-12-19 21:18:15'),
('i4W84r38N4GVz92973p9a3wzsxi2117u9827X134Ry2274935J', 's25I35ld4491477M2lDfe34hA4wi2YDU8u26JR3qp8Zk5A81f1', '2568625', 'Zdravím, bohužial nemožem sa dostaviť k vám do diele lebo mám vela práce takže ak budem mať čas sa vám ozvem dakujem.', NULL, '2023-01-03 17:41:48'),
('i62K2YwBc1NXn86eh6Q5ma92gSD1o7863fGxVc3t6jH3269z39', '434Y9U3kK1qNWW41E1ve5GDPEJ23cw319f222OdCvE23fs9O3h', '7772112', 'cus', NULL, '2023-01-02 10:22:09'),
('j23p9137E463k8o55uQ5nQ6n8z4269b789235852musp9L4E4F', '5UVT6bjVr3845wFH7DAY52k56I9rt5hN94u27dV74plzC2rz7w', '7778655', 'Bohužel, právě mi začíná polední pauza. Pokud bych se vrátil dříve, ozvu se na telefonu.', NULL, '2023-01-02 11:21:13'),
('k47i2r189qD838372se9sHzozoX8Auk1c7foI7A71k46g9Zb58', '5UVT6bjVr3845wFH7DAY52k56I9rt5hN94u27dV74plzC2rz7w', '7778655', 'Dobrý den, Vaše objednávka byla právě dovezena na sklad. Bude se doručovat na Vámi vybranou adresu mezi 16:00 a 19:00. Bude Vám zaslána SMS ještě před doručením. Za MegWillies, Bob.', NULL, '2023-01-02 11:10:26'),
('L7Y9hT9y33282TZ762TvP9z4K57S139y3IUM3FREOhf57G8K9t', 'Z5YW3635u8yM554Xf35eAm1ZE5j1255jQTC62R14n19C5i5ZEx', '7772112', 'ok', NULL, '2023-01-02 21:05:28'),
('m43v7fa27MN7G8ZX9578Fc525182x6l41T81J29TWMz3I3FjJ5', '9Q85P5G8a89k48s94A9sT36YR722Gm5712Q8hUZB33w3l6H9QR', '6508484', '', '[\"https://cdn.discordapp.com/attachments/1040997086130356285/1059566195868704899/upload.png\"]', '2023-01-02 20:20:53'),
('n3blX8j8x14s6t199x3531V19f7ASWj73PVd5d5T935tX81784', '1M5MMR941r9Di8yS4476bj4h6o4b997Z7Q5P648r5Vc9G8BO13', '3202921', '<!SENT-LOCATION-X=456.61Y=-990.15!>', NULL, '2022-12-19 21:18:57'),
('oTD1Z94cF34Ky6l6t4m6po5687u9245Yfl7528r1I234A5XPc5', '9azI4xa3K8689ml969841a954828s7psp1U2z4f6j52969bF22', '3202921', '<!CALL-NO-ANSWER!>', NULL, '2022-12-19 20:05:35'),
('q71Ro6x6p82429T87T365t6v8awl6BQ92PEEU8J85B6as6zS84', '5UVT6bjVr3845wFH7DAY52k56I9rt5hN94u27dV74plzC2rz7w', '7778655', 'Za nákup budete platit 24000. Lze platit v hotovosti i přes fakturu.', NULL, '2023-01-02 11:17:38'),
('qg11rWg8HfQ3S4K84b19296eX3k2Jg1KIIuW964R731xg4mLRk', '5UVT6bjVr3845wFH7DAY52k56I9rt5hN94u27dV74plzC2rz7w', '6662600', 'Budeme tedy počítat s původní domluvou. Díky ', NULL, '2023-01-02 11:21:35'),
('R2HV887rNmn6266NMDyivb7pY8T4py73Xfz8J7yXYD3Z3w7955', 'mfJ776aqBa88SW7qO175qYcW6G8H8l2n9o4bT999158DkiSwsE', '7772112', 'cus', NULL, '2023-01-03 19:53:01'),
('R6D8i6ss5F9w7Bs6224NIo4679JH6VvGtBsZ45992k5iu4Lfp7', 'Z5YW3635u8yM554Xf35eAm1ZE5j1255jQTC62R14n19C5i5ZEx', '7772112', 'zdar', NULL, '2023-01-02 10:24:20'),
('T554G224wT48851tpk97Cqq8PL315MbW9JA1299m1Fb76g3Q87', 's25I35ld4491477M2lDfe34hA4wi2YDU8u26JR3qp8Zk5A81f1', '7772112', 'Dobře.', NULL, '2023-01-03 17:42:14'),
('U69e5in3Ux1TZV49z8m5S6o55CTN38Xj31R8gqvOL42V187ki8', 'Z5YW3635u8yM554Xf35eAm1ZE5j1255jQTC62R14n19C5i5ZEx', '7772112', 'jsem v dílně', NULL, '2023-01-02 21:16:22'),
('Vk4Oc5G85549zT7ch59ZO6Uxor92m5Of13Y85HH52HE677666E', 'OPn2oQ9mS3id8F213KdnVj4e4a2q9Z1A1AQy6G54u19j98IBF7', '5208780', '', '[\"https://cdn.discordapp.com/attachments/1040997086130356285/1057621687698464778/upload.png\"]', '2022-12-28 12:24:03'),
('vTsAN6j232O654Gx6rA21a75bv4686iCI2j1IvV33Y93n9k2IL', 'mY365G95pvL565P6iw43mu51l5ie15o5dIx8e7AvsS8615Ok34', '4803417', '<!CALL-NO-ANSWER!>', NULL, '2023-01-03 20:11:20'),
('w34K99fOj2xm2b6EI67PoL9123uIt62r3L4Orv1bV56KitkO81', 'Z5YW3635u8yM554Xf35eAm1ZE5j1255jQTC62R14n19C5i5ZEx', '6662600', 'nemůžu mluvit', NULL, '2023-01-02 21:05:25'),
('w63CzE73Nhq7g3zPv2N2dM99B25519otN3ZX2811pwodb259f3', 'Kj35T26W746pr64L8O3hioh1ty2v2N772613o9q945L4567SF9', '2055264', 'Ty popeláři platí zlatem. Za 1 minut jsem si vydělal 1000.', NULL, '2023-01-14 19:34:44');

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_message_unread`
--

CREATE TABLE `phone_message_unread` (
  `channel_id` varchar(50) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `unread` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `phone_message_unread`
--

INSERT INTO `phone_message_unread` (`channel_id`, `phone_number`, `unread`) VALUES
('114F4I8es7fu1moOlZmyS8tz2m2F51Ne93J378Gn4Rx4i24Lf1', '2057643', 1),
('114F4I8es7fu1moOlZmyS8tz2m2F51Ne93J378Gn4Rx4i24Lf1', '7772112', 0),
('1M5MMR941r9Di8yS4476bj4h6o4b997Z7Q5P648r5Vc9G8BO13', '6508484', 0),
('422v2DfF3EFVAxM239s931q53iGv38688E4SbHCbWu32881jRW', '5', 1),
('434Y9U3kK1qNWW41E1ve5GDPEJ23cw319f222OdCvE23fs9O3h', '2563499', 4),
('5D3nxp9X6K479116lnmA4tY85oYAg4t147v6GJK7DtNITt1Na3', '911', 1),
('5UVT6bjVr3845wFH7DAY52k56I9rt5hN94u27dV74plzC2rz7w', '6662600', 0),
('5UVT6bjVr3845wFH7DAY52k56I9rt5hN94u27dV74plzC2rz7w', '7778655', 0),
('7g2Ue89Et3295L449Utnux5YnOb6m2BY7b7hc5j71nZo61X7q7', '5550161', 1),
('8gY4G83X7tO6b252OT8f37417IHr55844nV9tC8XJt4g9O1t59', '911', 6),
('9azI4xa3K8689ml969841a954828s7psp1U2z4f6j52969bF22', '666', 1),
('9Q85P5G8a89k48s94A9sT36YR722Gm5712Q8hUZB33w3l6H9QR', '2569241', 0),
('9Q85P5G8a89k48s94A9sT36YR722Gm5712Q8hUZB33w3l6H9QR', '6508484', 2),
('Kj35T26W746pr64L8O3hioh1ty2v2N772613o9q945L4567SF9', '4801223', 1),
('MBc7P73L6851Oaw5d8ptwCJ1n4878F4u8325959Sy67G8Uy4bh', '650', 1),
('mfJ776aqBa88SW7qO175qYcW6G8H8l2n9o4bT999158DkiSwsE', '6508426', 0),
('mY365G95pvL565P6iw43mu51l5ie15o5dIx8e7AvsS8615Ok34', '666', 1),
('OPn2oQ9mS3id8F213KdnVj4e4a2q9Z1A1AQy6G54u19j98IBF7', '2768399', 3),
('pMh64LrpPA6254h831ab5g2h6Jf83118HdUNaJqXd45upCC67u', '2058736', 1),
('pMh64LrpPA6254h831ab5g2h6Jf83118HdUNaJqXd45upCC67u', '3552719', 2),
('s25I35ld4491477M2lDfe34hA4wi2YDU8u26JR3qp8Zk5A81f1', '2568625', 1),
('s25I35ld4491477M2lDfe34hA4wi2YDU8u26JR3qp8Zk5A81f1', '7772112', 0),
('TFc44j5Talt9f9Uv59129434l9tl4545TLp7772J74jVX67282', '111111111999', 1),
('v9uqZ549wX3535Ipd87de7X9FAz56K2v9rUSKFWe3g7y82pfO4', '520', 4),
('Z5YW3635u8yM554Xf35eAm1ZE5j1255jQTC62R14n19C5i5ZEx', '6662600', 2),
('Z5YW3635u8yM554Xf35eAm1ZE5j1255jQTC62R14n19C5i5ZEx', '7772112', 0);

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_music_playlists`
--

CREATE TABLE `phone_music_playlists` (
  `id` varchar(50) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cover` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `phone_music_playlists`
--

INSERT INTO `phone_music_playlists` (`id`, `phone_number`, `name`, `cover`) VALUES
('43181P6658orsUn4Pg44Kj51kMj54j1Db6UlEn9TvjvnSvM73S', '3200807', 'Random', NULL),
('457ZiVn5fS6N4tm14tg3sz3jM5vsJ87597412195G44ZR6CjcC', '4801223', 'ok', NULL),
('m67786O84WGN15W2A2df65W4Z39661W38wc41f75529256JGef', '2569241', 'ddd', NULL),
('Y332q1792C4cCpu15vj61Z5Td164Kd2Tg2ohZ886Un29PFWfkO', '7772112', 'o', NULL);

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_music_saved_playlists`
--

CREATE TABLE `phone_music_saved_playlists` (
  `playlist_id` varchar(50) NOT NULL,
  `phone_number` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `phone_music_saved_playlists`
--

INSERT INTO `phone_music_saved_playlists` (`playlist_id`, `phone_number`) VALUES
('43181P6658orsUn4Pg44Kj51kMj54j1Db6UlEn9TvjvnSvM73S', '3200807'),
('457ZiVn5fS6N4tm14tg3sz3jM5vsJ87597412195G44ZR6CjcC', '4801223'),
('m67786O84WGN15W2A2df65W4Z39661W38wc41f75529256JGef', '2569241'),
('Y332q1792C4cCpu15vj61Z5Td164Kd2Tg2ohZ886Un29PFWfkO', '7772112');

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_music_songs`
--

CREATE TABLE `phone_music_songs` (
  `song_id` varchar(100) NOT NULL,
  `playlist_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_notes`
--

CREATE TABLE `phone_notes` (
  `id` varchar(50) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` longtext DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_notifications`
--

CREATE TABLE `phone_notifications` (
  `id` varchar(50) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `app` varchar(50) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `thumbnail` varchar(250) DEFAULT NULL,
  `avatar` varchar(250) DEFAULT NULL,
  `show_avatar` tinyint(1) DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `phone_notifications`
--

INSERT INTO `phone_notifications` (`id`, `phone_number`, `app`, `title`, `content`, `thumbnail`, `avatar`, `show_avatar`, `timestamp`) VALUES
('185Y5pCd9Rw7R8rqSu21s27Mg69P1PMG91e6yE267Q4OC831FG', '666', 'Phone', '3202921', 'Zmeškaný hovor', NULL, NULL, 1, '2022-12-19 20:05:35'),
('1d31WC297YT5vzf48ap2myI53Rn7647ENnT53RbEx24p2749c6', '3552719', 'Messages', 'Nikolai LSGC', 'Copak jste potřeboval?', NULL, NULL, 1, '2022-12-30 12:29:30'),
('1e78k8t33c2w5AE6fLrMc1aw353V5Ig3i6a1Z951cV321T873L', '911', 'Phone', '2059421', 'Zmeškaný hovor', NULL, NULL, 1, '2023-02-17 13:50:50'),
('1eOnz5p6218NpNR4hX725iH49K53Z58a2N9928216SIP6UO5vx', '2055264', 'Instagram', 'Instagram', 'karelvoprcálek started following you', NULL, NULL, NULL, '2023-02-06 08:45:00'),
('1h5Hl8n1dCh1866m54VAGNQD4383x6Rz8nv6Vy4757216gZ9gC', '6662600', 'Messages', 'Frank Pill', 'zitr budeme mit zakaznika', NULL, NULL, 1, '2023-01-02 21:05:35'),
('1JW21822VP7ua8AtSQ13662W4L3Uv65F72I5a4V3TsQ4xJRva1', '911', 'Phone', '2059421', 'Zmeškaný hovor', NULL, NULL, 1, '2023-02-17 13:50:52'),
('225Zk6589Of17GMwy4Z519PWwOS75uSoGN3i72238A6Y228VgF', '911', 'Phone', '2059421', 'Zmeškaný hovor', NULL, NULL, 1, '2023-02-17 13:50:51'),
('2482pov4n8B8s2zrvKGS2ru9T3727C6358G1aMt5enyaz73moP', '2569241', 'Messages', '6508484', 'Attachment', 'https://cdn.discordapp.com/attachments/1040997086130356285/1059566195868704899/upload.png', NULL, 1, '2023-01-02 20:20:53'),
('2a18ZVFwW427421if287YZ2N79ZGq26ik85u745jNSg9n9Pq9O', '520', 'Phone', '2768399', 'Zmeškaný hovor', NULL, NULL, 1, '2022-12-28 11:31:21'),
('2h38B341wX74DMKE867145112sfUHHu647AD8818Q3iq681E8B', '6026526', 'Services', 'New Message', 'co?', NULL, NULL, NULL, '2023-02-17 13:03:47'),
('2laY1ldNgP6Y9q44T98e7q98YYv1O64215tI547n5349ib2611', '6662600', 'Messages', '7772112', 'zdar', NULL, NULL, 1, '2023-01-02 10:24:20'),
('2V2283m7516Ey9LgH97R2E56372h45e44c33UCmFe78D218sY9', '2768399', 'Phone', '5208780', 'Zmeškaný hovor', NULL, NULL, 1, '2022-12-29 09:40:33'),
('33pf5NmG5W9ut832q3AHfnsx8Mi7595Q1FGt69p2p9S12X817C', '3202921', 'Instagram', 'Instagram', 'karelvoprcálek started following you', NULL, NULL, NULL, '2023-02-06 18:19:09'),
('36vC67Q3579B861Uta957CuBgiyQTRp9SL4m2z53x87tl1mr14', '2568625', 'Messages', 'MC servis', 'Dobře.', NULL, NULL, 1, '2023-01-03 17:42:14'),
('3A939tY9X28j45KOv65w1DH7R4UZh6777Qh12hC52g69h3AD7C', '6026526', 'Services', 'New Message', 'co?', NULL, NULL, NULL, '2023-02-17 13:03:47'),
('3ge76Y1LA6k6567V5bh936XhYJ34z2wL6x6vh3Y95823HA8ZDj', '2058736', 'Phone', 'EMSko ', 'Zmeškaný hovor', NULL, NULL, 1, '2022-12-28 19:36:24'),
('434d6ek95o6Hh8M84z39gc9qZT3745ImLIP7sMb6q8189n7954', '650', 'Messages', '6024492', '...', NULL, NULL, 1, '2023-01-04 23:27:46'),
('448pCMT4qoY1MS89wX73iC2q175td239z73v99Yf11ZX568o9T', '6508426', 'Messages', '7772112', 'cus', NULL, NULL, 1, '2023-01-03 19:53:01'),
('46663wRP8u66n6PtD9B6394w61O82vfY3194lLTLNe8Ib17881', '6662600', 'Messages', 'Frank Pill', 'stavim, dovezu zakazku a jedu tam', NULL, NULL, 1, '2023-01-02 21:06:15'),
('46awSQ21yDB8g4T3K2fU2C4D1hIvkwH1V619i1pKB277513mcg', '5551314', 'Instagram', 'Instagram', 'karelvoprcálek started following you', NULL, NULL, NULL, '2023-02-06 08:44:52'),
('47YF7z3M725H5v6bqCwd8EHbxZ876u63NJuo8B12VPH2qi26n5', '666', 'Phone', '4803417', 'Zmeškaný hovor', NULL, NULL, 1, '2023-01-03 20:11:19'),
('48A7C6WWoJSXN26lXF6644p51i76T9vpp49Q1X8Od4eLP5r8I2', '6025397', 'Services', 'New Message', 'Zdravím mamte open?', NULL, NULL, NULL, '2023-01-22 15:17:43'),
('48SOZ8Qnr6xUfMOve5c4gTN4q9q39v51Tb8iyE9KxFu8rAMs6m', '520', 'Phone', '2768399', 'Zmeškaný hovor', NULL, NULL, 1, '2022-12-28 11:30:15'),
('4d155n3eK3GweG1jmTzj74q7Z66g9ZC1pe15RzN33wGb942IDP', '6662600', 'Messages', '7778655', 'Dobrý den, Vaše objednávka byla právě dovezena na sklad. Bude se doručovat na Vámi vybranou adresu mezi 16:00 a 19:00. Bude Vám zaslána SMS ještě před doručením. Za MegWillies, Bob.', NULL, NULL, 1, '2023-01-02 11:10:26'),
('4y62417hqY1Dfi2T9e858v7eKf1j72iGS8lE1lXs78Ku65Uk98', '7778655', 'Messages', 'Martin Rogers', 'Dobrý den, díky za zprávu. Pokud je to možné, tak si jí převezmu klidně hned.', NULL, NULL, 1, '2023-01-02 11:19:01'),
('53832W9P1TSMTplCYU1G24G5g6CDo3v7Oy2995F3c379hmmW8V', '6508484', 'Messages', 'R. Moore', '<!AUDIO-MESSAGE-IMAGE=\"https://cdn.discordapp.com/attachments/1040997086130356285/1060272110813061150/upload.png\"-AUDIO=\"https://cdn.discordapp.com/attachments/1040997086130356285/1060272112717287534/upload.ogg\"-DURATION=\"1\"!>', NULL, NULL, 1, '2023-01-04 19:02:49'),
('5IfC34U456upL363758bI553R6M1C9auv4nzD9bs54Jdh79lN6', '4807611', 'Instagram', 'Instagram', 'james.belucky5 started following you', NULL, NULL, NULL, '2023-01-04 23:24:35'),
('5Q7Xf8I722fota831a1CL34K4z6Vcq8i8Nv3H87REI9GLRn6z1', '6508426', 'Services', 'Máte novou zprávu', '..', NULL, NULL, NULL, '2023-01-03 15:54:33'),
('6FD3vSB5D1aE2559PY98X6YXo8dc78z71q9bAXYj265Z63Jh52', '3552150', 'Services', 'BACKEND.SERVICES.NEW_MESSAGE', 'čtvrtý test', NULL, NULL, NULL, '2022-12-25 16:38:07'),
('6K226XT22mQWr482XYhVY68XOq9Lc8aSe7dE6vF4L3i487a4QT', '6026526', 'Services', 'New Message', 'co?', NULL, NULL, NULL, '2023-02-17 13:03:47'),
('6pV68A69Hd43bu74691OJ49MLeO5a5D4p585N42O87Vov5LQ35', '2563499', 'Phone', 'Frank Pill ', 'Zmeškaný hovor', NULL, NULL, 1, '2023-01-02 10:21:59'),
('7147O3596OG999K2dAF5318gtqmne4R4112MX43f72U7t7H88X', '2768399', 'Messages', '5208780', 'Attachment', 'https://cdn.discordapp.com/attachments/1040997086130356285/1057621687698464778/upload.png', NULL, 1, '2022-12-28 12:24:03'),
('7838K18y668bedT1CW1789Z325SfdHQU54jq8vQKR45y1u8L42', '6662600', 'Services', 'Máte novou zprávu', '..', NULL, NULL, NULL, '2023-01-03 15:54:33'),
('78Z9b36Nj6rlC392qR1ypc2F336B4PFrGJ5z986c783qu4Ep12', '2569241', 'Messages', '6508484', '.', NULL, NULL, 1, '2023-01-02 20:20:44'),
('7WDS26742vd78l18m9797395m85m17549KThR3733YRDE146bf', '7772112', 'Messages', '2568625', 'Zdravím, bohužial nemožem sa dostaviť k vám do diele lebo mám vela práce takže ak budem mať čas sa vám ozvem dakujem.', NULL, NULL, 1, '2023-01-03 17:41:48'),
('81i4KMV5nNHUMQPaT1513Jmtk6D7X4L2879vcY9j3u6X9X1G8n', '3552150', 'Services', 'BACKEND.SERVICES.NEW_MESSAGE', 'čtvrtý test', NULL, NULL, NULL, '2022-12-25 16:38:07'),
('85r7JF662J2y78465d9U89pyk6L3c85hH2qSq5YK988GHp632M', '6508484', 'Messages', 'R. Moore', '<!AUDIO-MESSAGE-IMAGE=\"https://cdn.discordapp.com/attachments/1040997086130356285/1060271938829811762/upload.png\"-AUDIO=\"https://cdn.discordapp.com/attachments/1040997086130356285/1060271941061193849/upload.ogg\"-DURATION=\"2\"!>', NULL, NULL, 1, '2023-01-04 19:02:08'),
('86i882MR32JG898apEk2SpHm4A3V3j7LdqMQeKTWwvuouVO7G1', '911', 'Phone', '2568625', 'Zmeškaný hovor', NULL, NULL, 1, '2022-12-25 19:50:57'),
('8v63AC7pcrLT951k162761724ofWy386Bg2KP32QWszb97kk2r', '2563499', 'Phone', 'Frank Pill ', 'Zmeškaný hovor', NULL, NULL, 1, '2023-01-02 10:21:52'),
('9j49Q1ld11m18j4T3aRR7l6xFdMYjs68DS4nX8Mn248S4k7d98', '911', 'Phone', '2059421', 'Zmeškaný hovor', NULL, NULL, 1, '2023-02-17 13:50:15'),
('9PHYMOrG41Jp1VZ93pY51lIRU9mN37n6884l3s3315MGPf337a', '3552719', 'Garage', 'Valet', 'Vozidlo nenalezeno.', NULL, NULL, NULL, '2022-12-23 21:56:56'),
('9sYb7u7Z95W5I8685i5a2w6r99J42624C78b314jyZ9S2A985C', '6662600', 'Messages', 'Frank Pill', 'ok', NULL, NULL, 1, '2023-01-02 21:05:28'),
('a74zSb384YmNt7L95eusc9O1KIAr1xJBkAss8JVJ55O1V5I9O2', '3556218', 'Instagram', 'Instagram', 'karelvoprcálek started following you', NULL, NULL, NULL, '2023-02-06 08:44:59'),
('aN8Yg376s6nZw11C5O8A4tPr391uuBu72KWF8411483OM1Tv82', '520', 'Phone', '2768399', 'Zmeškaný hovor', NULL, NULL, 1, '2022-12-28 11:30:19'),
('B16JSGP683m4Tm923c71U257888u194pOmKN78krVVB492yy5i', '6662600', 'Services', 'Máte novou zprávu', '..', NULL, NULL, NULL, '2023-01-03 15:54:33'),
('b63LH4428P5jZmbD6U48O4f8SPq71P7W4D8zd37w9E5b9JN4N1', '520', 'Phone', '2768399', 'Zmeškaný hovor', NULL, NULL, 1, '2022-12-28 11:30:17'),
('bu61ujGZ89qil2ovQ84DV5h28TIV9c4sM37hBGI6417Mp1d88c', '111111111999', 'Phone', '2059421', 'Zmeškaný hovor', NULL, NULL, 1, '2023-02-17 13:51:20'),
('BySF7yKtc37F9HxAMoZ9CnzgxAu37FvsF2f89EQc3I5751ZF8o', '6026526', 'Services', 'New Message', 'co?', NULL, NULL, NULL, '2023-02-17 13:03:47'),
('C7a6P99P88Kz3E4ckRqfd11P6tR8lNp71X828E1l776yrXk36k', '2563499', 'Phone', 'Frank Pill ', 'Zmeškaný hovor', NULL, NULL, 1, '2023-01-02 10:22:02'),
('CeT9uE1495E98NwMh8F41v9Lt22S931P73t7C254q4781774aT', '9073711', 'Services', 'Máte novou zprávu', 'dobrý den nepočuli sme sa o čo ide?', NULL, NULL, NULL, '2023-01-03 19:36:39'),
('cLBltTK6367z7471736DB1uW1E57LCRq8Z8239LJz2O5D4i28t', '2568625', 'Messages', 'MC servis', 'Dobrý den, jsem v dílně. Až budet mít čas pište nebo volejte. Frank Pill, Lost MC', NULL, NULL, 1, '2023-01-03 15:55:40'),
('dMm175hgTB64QKF7E61r9222En61jI16Mqw7d5rl33CB13S22M', '2568625', 'Messages', 'MC servis', 'Dobrý den, zítra bych měl dorazit okolo 17h. Tak mi pak dejte vědět. ', NULL, NULL, 1, '2023-01-02 21:07:04'),
('DW5e77Z59P8f49vH14796633L5D927gy17Jk3a1aFPh115N3n1', '3202921', 'Instagram', 'Instagram', 'james.belucky5 started following you', NULL, NULL, NULL, '2023-01-04 23:24:35'),
('F6B3f26C9C2U5iR854F9L855PlAk6I1n4aL82aTsiP4hxz1DO7', '2563499', 'Messages', 'Frank Pill ', 'Zdar', NULL, NULL, 1, '2023-01-01 14:54:21'),
('g426217nPM96Mp38P5gw239k98Wu33287I28g2554VZf8Wz1u4', '911', 'Phone', '2059421', 'Zmeškaný hovor', NULL, NULL, 1, '2023-02-17 13:50:21'),
('H86EA436G725HO7Tu7RYf1811KC71782J21x551693AJt8foE2', '6662600', 'Messages', '7778655', 'Bohužel, právě mi začíná polední pauza. Pokud bych se vrátil dříve, ozvu se na telefonu.', NULL, NULL, 1, '2023-01-02 11:21:13'),
('hM7TnF86qd643T86476y22MQ7583a3A5O9vw1936ly6l7F8z99', '3202921', 'Instagram', 'Instagram', 'james.belucky5 liked your photo', NULL, NULL, NULL, '2023-01-04 23:24:39'),
('iWqy9vfz93uA16O8Qp9XTbkU1yd2LVb5oTL1E1RJ7941c8I498', '9073711', 'Services', 'Máte novou zprávu', 'dobrý den nepočuli sme sa o čo ide?', NULL, NULL, NULL, '2023-01-03 19:36:39'),
('j6lIyJA228698i7aM13iE85855566z9847fa1nKq97bg243zY8', '6025397', 'Services', 'New Message', 'Zdravím mamte open?', NULL, NULL, NULL, '2023-01-22 15:17:43'),
('k2834jAT4jl64G9c7f77669gUG58o5V5ZxaBadDCx8YuWfYJ2b', '6508426', 'Services', 'Máte novou zprávu', '..', NULL, NULL, NULL, '2023-01-03 15:54:33'),
('l1VNi561ZA7e2D26SSEn8T7c5VeX621f14O2ET7155vjdzdD43', '4807611', 'Instagram', 'Instagram', 'karelvoprcálek started following you', NULL, NULL, NULL, '2023-02-06 18:19:09'),
('nTA455q13uhVK7kE3B7fSQl5d3J89X1ihzh1s7k76iW3JSo5ev', '911', 'Phone', '2059421', 'Zmeškaný hovor', NULL, NULL, 1, '2023-02-17 13:50:23'),
('Oc8xL54cv3889nLo25Vw5FE6R9v277t8G7uS1468q8u4RfY43o', '3552719', 'Phone', 'Nikolai LSGC', 'Zmeškaný hovor', NULL, NULL, 1, '2022-12-27 19:05:22'),
('oPBg55d7W3H4s31Y79NI23Th59741t77jolOk6159FjfOC9CD2', '7778655', 'Messages', 'Martin Rogers', 'Budeme tedy počítat s původní domluvou. Díky ', NULL, NULL, 1, '2023-01-02 11:21:35'),
('os648y3HuIF32862DQ85Xu7u6NF7Zn42dW484899SnXo5t9h47', '5550161', 'Phone', '3552719', 'Zmeškaný hovor', NULL, NULL, 1, '2022-12-26 21:36:12'),
('p92118p4g3cI616891634wx95Z4N272Y5ouM2K386LBX9715p2', '6662600', 'Messages', 'Frank Pill', 'jj', NULL, NULL, 1, '2023-01-02 21:05:25'),
('R1Un4154639m2R591911bEND7Ta255k2Hsv91a13V465OR3Dp7', '4801223', 'Messages', 'Braček ', 'Ty popeláři platí zlatem. Za 1 minut jsem si vydělal 1000.', NULL, NULL, 1, '2023-01-14 19:34:44'),
('T6182R53OrhtktG94FAdC18O858k2N9XEy35gT1v69YRo6t33b', '3556218', 'Instagram', 'Instagram', 'ahoj started following you', NULL, NULL, NULL, '2023-01-14 19:17:16'),
('u265o1aPmG7g415T48y9qJM8t81d55u94m6T538251C151x6vA', '5', 'Phone', '2768399', 'Zmeškaný hovor', NULL, NULL, 1, '2022-12-28 11:31:52'),
('U964n87n6f111n1GP61Iy7P818oUVMZ4415MMYf585E2ZhtYS4', '6662600', 'Messages', 'Frank Pill', 'jsem v dílně', NULL, NULL, 1, '2023-01-02 21:16:22'),
('un8bn3E1iL5u7vX33i6DT2382972fl5v8h1347g67697l26uQy', '4807611', 'Instagram', 'Instagram', 'james.belucky5 liked your photo', NULL, NULL, NULL, '2023-01-04 23:24:39'),
('W1IIH692Mm53oc19DM7LRyVCJ3wxpR6Nz1Ky4177485152FI1H', '2563499', 'Messages', 'Frank Pill ', 'cus', NULL, NULL, 1, '2023-01-02 10:22:09'),
('Y7789H3ZB73u692sgF725697tJc2G576K86yx9L5m8799cbaE6', '2768399', 'Messages', '5208780', 'ahoj', NULL, NULL, 1, '2022-12-28 12:23:55'),
('zc69nMbMc872T41662A8Te36Q8IZE9qyRq57529Dyf26H5K834', '6662600', 'Messages', '7778655', 'Za nákup budete platit 24000. Lze platit v hotovosti i přes fakturu.', NULL, NULL, 1, '2023-01-02 11:17:38');

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_phones`
--

CREATE TABLE `phone_phones` (
  `id` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `pin` varchar(4) DEFAULT NULL,
  `face_id` varchar(100) DEFAULT NULL,
  `settings` longtext DEFAULT NULL,
  `is_setup` tinyint(1) DEFAULT 0,
  `assigned` tinyint(1) DEFAULT 0,
  `battery` int(11) NOT NULL DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `phone_phones`
--

INSERT INTO `phone_phones` (`id`, `phone_number`, `name`, `pin`, `face_id`, `settings`, `is_setup`, `assigned`, `battery`) VALUES
('14eN8g71c56Q6T1rU29AXu8I479B969i197e517z6mR5mS79aS', '5559588', 'Alex\'s Phone', '1122', NULL, '{\"airplaneMode\":false,\"security\":{\"faceId\":false,\"pinCode\":true},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"streamerMode\":false,\"name\":\"Alex\'s Phone\",\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"locale\":\"cs\",\"storage\":{\"total\":128000000,\"used\":8576331},\"display\":{\"theme\":\"dark\",\"brightness\":1,\"size\":0.7},\"phone\":{\"showCallerId\":true},\"weather\":{\"celcius\":false},\"wallpaper\":{\"background\":\"BubbleB\"},\"notifications\":[],\"time\":{\"twelveHourClock\":false}}', 1, 1, 100),
('1sY4yujCg8998L6Zl8p5IqT3r541832DWvlI28Z9R64698Mwgt', '5208780', 'Jacob\'s Phone', '1234', 'char1:71f6216001838f0b67bf404d0e401d8a20127fe0', '{\"airplaneMode\":false,\"display\":{\"size\":0.7,\"theme\":\"dark\",\"brightness\":1},\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"locale\":\"cs\",\"name\":\"Jacob\'s Phone\",\"notifications\":[],\"weather\":{\"celcius\":false},\"streamerMode\":false,\"time\":{\"twelveHourClock\":false},\"security\":{\"faceId\":true,\"pinCode\":true},\"storage\":{\"used\":8576761.17,\"total\":128000000},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\",\"Instagram\",\"2048\",\"YellowPages\",\"Tinder\"]],\"phone\":{\"showCallerId\":true},\"wallpaper\":{\"background\":\"BubbleB\"}}', 1, 1, 100),
('25lX229T3sPl52v371Ko8X3m388g2B96vq9BJ47U5U3Q737E9y', '6024644', 'Jonathan Lloyd\'s Phone', '0909', 'char1:eb32c560584bc0b41ff66831d9cb42cfb0358dea', '{\"streamerMode\":false,\"notifications\":[],\"display\":{\"size\":0.7,\"theme\":\"light\",\"brightness\":1},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"wallpaper\":{\"background\":\"BubbleB\"},\"security\":{\"pinCode\":false,\"faceId\":false},\"time\":{\"twelveHourClock\":false},\"storage\":{\"used\":8576331,\"total\":128000000},\"name\":\"Jonathan Lloyd\'s Phone\",\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"phone\":{\"showCallerId\":true},\"weather\":{\"celcius\":false},\"airplaneMode\":false}', 1, 1, 100),
('28oys49fR43vHVYK24wPfPnE696A8NFt1b7qu77w1jY4C24p54', '7778655', 'Robert\'s Phone', NULL, NULL, '{\"wallpaper\":{\"background\":\"BubbleB\"},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\",\"Twitter\",\"MarketPlace\"]],\"display\":{\"theme\":\"light\",\"brightness\":1,\"size\":0.7},\"storage\":{\"used\":8576331,\"total\":128000000},\"notifications\":[],\"streamerMode\":false,\"weather\":{\"celcius\":false},\"time\":{\"twelveHourClock\":false},\"airplaneMode\":false,\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"name\":\"Robert\'s Phone\",\"phone\":{\"showCallerId\":true},\"security\":{\"pinCode\":false,\"faceId\":false}}', 1, 1, 100),
('2GO8386U8l2l2GE1V41363496l9X236b55q8m861352p6322oJ', '3208241', NULL, NULL, NULL, '{\"notifications\":[],\"storage\":{\"used\":8576331,\"total\":128000000},\"name\":\"Not set\",\"streamerMode\":false,\"phone\":{\"showCallerId\":true},\"weather\":{\"celcius\":false},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"security\":{\"faceId\":false,\"pinCode\":false},\"time\":{\"twelveHourClock\":false},\"display\":{\"theme\":\"light\",\"brightness\":1,\"size\":0.7},\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"airplaneMode\":false,\"wallpaper\":{\"background\":\"BubbleB\"}}', 0, 1, 100),
('2S21Oq39k24xiM9co2Ro99a44u271U878PpI16k8Kc82j6895e', '2057643', 'Thomas Johnson', NULL, NULL, '{\"locale\":\"cs\",\"weather\":{\"celcius\":false},\"notifications\":[],\"time\":{\"twelveHourClock\":false},\"security\":{\"faceId\":false,\"pinCode\":false},\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"airplaneMode\":false,\"name\":\"Thomas Johnson\",\"display\":{\"size\":0.7,\"brightness\":1,\"theme\":\"light\"},\"storage\":{\"used\":8576331,\"total\":128000000},\"wallpaper\":{\"background\":\"BubbleB\"},\"phone\":{\"showCallerId\":true},\"streamerMode\":false}', 1, 1, 100),
('2v9Xs43h13vOB9T62sva8292evXix867vYoH926wjPdl8n16Xj', '6665822', 'Jay\'s Phone', '2005', 'char1:825bafdeb0879ee3488dcc11ee78b11b484d73a6', '{\"name\":\"Jay\'s Phone\",\"security\":{\"pinCode\":true,\"faceId\":true},\"time\":{\"twelveHourClock\":false},\"streamerMode\":false,\"phone\":{\"showCallerId\":true},\"storage\":{\"total\":128000000,\"used\":8576331},\"wallpaper\":{\"background\":\"BubbleB\"},\"display\":{\"brightness\":1,\"size\":0.7,\"theme\":\"dark\"},\"locale\":\"cs\",\"weather\":{\"celcius\":false},\"notifications\":[],\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"airplaneMode\":false,\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\",\"Instagram\",\"MarketPlace\",\"YellowPages\",\"Twitter\",\"DarkChat\"]]}', 1, 1, 100),
('3eF3V9Vaf8aAg9pf25lb8ar366fY77uM78X1443CY88JGNxYK1', '4803417', 'Lucas\'s Phone', NULL, NULL, '{\"name\":\"Lucas\'s Phone\",\"phone\":{\"showCallerId\":true},\"time\":{\"twelveHourClock\":false},\"airplaneMode\":false,\"wallpaper\":{\"background\":\"BubbleB\"},\"storage\":{\"total\":128000000,\"used\":8660731},\"weather\":{\"celcius\":false},\"streamerMode\":false,\"locale\":\"en\",\"security\":{\"pinCode\":false,\"faceId\":false},\"display\":{\"brightness\":1,\"size\":0.7,\"theme\":\"dark\"},\"notifications\":[],\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\",\"MarketPlace\",\"YellowPages\",\"Twitter\"]]}', 1, 1, 100),
('3T212tOJmW2339p9Kw72qJ64l2546Zzk4853t939iL477W83Im', '2769237', 'Dendo\'s Phone', '1138', 'char1:7fc9429fbfdead8589b808ce4c9ca1033be3f258', '{\"airplaneMode\":false,\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"phone\":{\"showCallerId\":true},\"name\":\"Dendo\'s Phone\",\"streamerMode\":false,\"display\":{\"theme\":\"light\",\"size\":0.7,\"brightness\":1},\"security\":{\"pinCode\":false,\"faceId\":false},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"time\":{\"twelveHourClock\":false},\"wallpaper\":{\"background\":\"BubbleB\"},\"weather\":{\"celcius\":false},\"storage\":{\"total\":128000000,\"used\":8576331},\"notifications\":[]}', 1, 1, 100),
('3x39Q2bcxiF7HiD19X7M3319998G6HOW6311y7g926e4941BqG', '6020162', NULL, NULL, NULL, '{\"airplaneMode\":false,\"security\":{\"faceId\":false,\"pinCode\":false},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"weather\":{\"celcius\":false},\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"streamerMode\":false,\"storage\":{\"total\":128000000,\"used\":8576331},\"display\":{\"brightness\":1,\"theme\":\"light\",\"size\":0.7},\"name\":\"Not set\",\"phone\":{\"showCallerId\":true},\"wallpaper\":{\"background\":\"BubbleB\"},\"notifications\":[],\"time\":{\"twelveHourClock\":false}}', 0, 1, 100),
('3ynfjSMW858j241725rfF2n978bXA9A682N828N63c7h8dZ4jG', '5209270', NULL, NULL, NULL, '{\"name\":\"Not set\",\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"display\":{\"theme\":\"light\",\"brightness\":1,\"size\":0.7},\"storage\":{\"used\":8576331,\"total\":128000000},\"notifications\":[],\"phone\":{\"showCallerId\":true},\"weather\":{\"celcius\":false},\"wallpaper\":{\"background\":\"BubbleB\"},\"streamerMode\":false,\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"time\":{\"twelveHourClock\":false},\"airplaneMode\":false,\"security\":{\"pinCode\":false,\"faceId\":false}}', 0, 1, 100),
('466m7L3612SjXI1tPwz97D1Jf9ynY2YP98RKkZEX1MYHv651y6', '2768399', 'Jack\'s Phone', '2010', 'char2:58c130ffb0b6b2ae3b2cbc189ddbf643c65aa6d4', '{\"airplaneMode\":false,\"display\":{\"size\":0.7,\"theme\":\"dark\",\"brightness\":1},\"locale\":\"cs\",\"security\":{\"pinCode\":true,\"faceId\":true},\"storage\":{\"used\":8576331,\"total\":128000000},\"notifications\":[],\"weather\":{\"celcius\":false},\"name\":\"Jack\'s Phone\",\"time\":{\"twelveHourClock\":false},\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"phone\":{\"showCallerId\":true},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"streamerMode\":false,\"wallpaper\":{\"background\":\"BubbleB\"}}', 1, 1, 100),
('4BQl3nl9h4mag5268F549G52E3xm349Fo6P94baz66a5v98R8Z', '2568625', 'Mike\'s Phone', NULL, NULL, '{\"airplaneMode\":false,\"phone\":{\"showCallerId\":true},\"weather\":{\"celcius\":false},\"storage\":{\"used\":8833950.36,\"total\":128000000},\"time\":{\"twelveHourClock\":false},\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"streamerMode\":false,\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\",\"Twitter\"]],\"notifications\":[],\"display\":{\"theme\":\"light\",\"brightness\":1,\"size\":0.7},\"security\":{\"pinCode\":false,\"faceId\":false},\"wallpaper\":{\"background\":\"BubbleB\"},\"name\":\"Mike\'s Phone\"}', 1, 1, 100),
('4cQ12v7oTP311LdFUSkYEV1GV48D3xq1Lxqv16K98V156BhC31', '3555338', NULL, NULL, NULL, '{\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"streamerMode\":false,\"weather\":{\"celcius\":false},\"storage\":{\"used\":8576331,\"total\":128000000},\"display\":{\"size\":0.7,\"theme\":\"light\",\"brightness\":1},\"name\":\"Not set\",\"security\":{\"pinCode\":false,\"faceId\":false},\"notifications\":[],\"airplaneMode\":false,\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"phone\":{\"showCallerId\":true},\"wallpaper\":{\"background\":\"BubbleB\"},\"time\":{\"twelveHourClock\":false}}', 0, 1, 100),
('4J12qVF62243A9474186Ve4Hkx6lR4K3I914r96N2hx846fZKc', '5557030', NULL, NULL, NULL, '{\"airplaneMode\":false,\"security\":{\"pinCode\":false,\"faceId\":false},\"weather\":{\"celcius\":false},\"phone\":{\"showCallerId\":true},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"storage\":{\"total\":128000000,\"used\":8576331},\"display\":{\"theme\":\"light\",\"brightness\":1,\"size\":0.7},\"name\":\"Not set\",\"streamerMode\":false,\"wallpaper\":{\"background\":\"BubbleB\"},\"notifications\":[],\"time\":{\"twelveHourClock\":false}}', 0, 1, 100),
('4LUz4A3Yk223C4UnD86IHf3357qsq45C7F1D8s57546f3652rG', '7771868', NULL, NULL, NULL, '{\"storage\":{\"total\":128000000,\"used\":8576331},\"phone\":{\"showCallerId\":true},\"streamerMode\":false,\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"name\":\"Not set\",\"display\":{\"theme\":\"light\",\"size\":0.7,\"brightness\":1},\"airplaneMode\":false,\"time\":{\"twelveHourClock\":false},\"wallpaper\":{\"background\":\"BubbleB\"},\"notifications\":[],\"security\":{\"faceId\":false,\"pinCode\":false},\"weather\":{\"celcius\":false}}', 0, 1, 100),
('51r4lxR764582u6B7249a64CG9Q3M322EQx218L99W8OQsV1h6', '6669374', 'William David\'s Phone', NULL, NULL, '{\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\",\"Twitter\",\"Instagram\"]],\"streamerMode\":false,\"weather\":{\"celcius\":false},\"storage\":{\"used\":8577982.17,\"total\":128000000},\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"display\":{\"size\":0.7,\"brightness\":1,\"theme\":\"light\"},\"time\":{\"twelveHourClock\":false},\"security\":{\"faceId\":false,\"pinCode\":false},\"locale\":\"cs\",\"airplaneMode\":false,\"name\":\"William David\'s Phone\",\"phone\":{\"showCallerId\":true},\"notifications\":[],\"wallpaper\":{\"background\":\"BubbleB\"}}', 1, 1, 100),
('61l22MNr2IN9Zo1jW44LPa439KuRkw55E9D8Ny3H45l68kK2F7', '2769218', NULL, '4747', 'char1:9dda4c73ff2a6ad2da4f50e592fd7ee2efbe6340', '{\"name\":\"Not set\",\"phone\":{\"showCallerId\":true},\"storage\":{\"used\":8576331,\"total\":128000000},\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"weather\":{\"celcius\":false},\"security\":{\"faceId\":false,\"pinCode\":false},\"notifications\":[],\"streamerMode\":false,\"airplaneMode\":false,\"time\":{\"twelveHourClock\":false},\"wallpaper\":{\"background\":\"BubbleB\"},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"display\":{\"brightness\":1,\"theme\":\"light\",\"size\":0.7}}', 0, 1, 100),
('68uWC452ur9652N85OzQ61BHvjc5492V8k3N21DC23bBji39ms', '2568137', NULL, NULL, NULL, '{\"airplaneMode\":false,\"security\":{\"pinCode\":false,\"faceId\":false},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"streamerMode\":false,\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"weather\":{\"celcius\":false},\"storage\":{\"total\":128000000,\"used\":8576331},\"display\":{\"brightness\":1,\"theme\":\"light\",\"size\":0.7},\"phone\":{\"showCallerId\":true},\"name\":\"Not set\",\"wallpaper\":{\"background\":\"BubbleB\"},\"notifications\":[],\"time\":{\"twelveHourClock\":false}}', 0, 1, 100),
('6a3ycU2Fr5585652mw5Je8V7131k9H3Qz7DyRH481LY614413c', '3202278', NULL, NULL, NULL, '{\"airplaneMode\":false,\"security\":{\"faceId\":false,\"pinCode\":false},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"weather\":{\"celcius\":false},\"phone\":{\"showCallerId\":true},\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"storage\":{\"total\":128000000,\"used\":8576331},\"display\":{\"brightness\":1,\"theme\":\"light\",\"size\":0.7},\"name\":\"Not set\",\"streamerMode\":false,\"wallpaper\":{\"background\":\"BubbleB\"},\"notifications\":[],\"time\":{\"twelveHourClock\":false}}', 0, 1, 100),
('6w77h91262Sd7DIu9a6gJ34x6Ni58cal915939467oB116b152', '2767031', 'Carl\'s Phone', '3131', NULL, '{\"streamerMode\":false,\"locale\":\"cs\",\"display\":{\"brightness\":1,\"theme\":\"light\",\"size\":0.7},\"storage\":{\"used\":8835545.53,\"total\":128000000},\"airplaneMode\":false,\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"security\":{\"faceId\":false,\"pinCode\":true},\"wallpaper\":{\"background\":\"BubbleB\"},\"time\":{\"twelveHourClock\":false},\"weather\":{\"celcius\":true},\"phone\":{\"showCallerId\":true},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\",\"Instagram\",\"Twitter\"]],\"name\":\"Carl\'s Phone\",\"notifications\":[]}', 1, 1, 100),
('7629O33pr43s1Xw35F63264F1NNc63993ps3ojQH76V8T1f9xm', '3550358', 'Ryuu\'s Phone', '7890', 'char1:096a1174e562cec8470b3f647f45b3f0d5cf93e1', '{\"locale\":\"cs\",\"time\":{\"twelveHourClock\":false},\"wallpaper\":{\"background\":\"BubbleB\"},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\",\"Instagram\"]],\"storage\":{\"used\":8802195.290000001,\"total\":128000000},\"phone\":{\"showCallerId\":true},\"notifications\":[],\"weather\":{\"celcius\":false},\"streamerMode\":true,\"airplaneMode\":false,\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"security\":{\"pinCode\":true,\"faceId\":true},\"name\":\"Ryuu\'s Phone\",\"display\":{\"brightness\":1,\"theme\":\"dark\",\"size\":\"0.8\"}}', 1, 1, 100),
('785p194WUmT1fx2BaASYKAR78379oI8b49K2X49htF6I8eEx68', '9073711', 'Joe\'s Phone', '1862', 'char1:08b92adb13c370a0ee3f6d9c6da9b21eeab5f160', '{\"notifications\":[],\"locale\":\"cs\",\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"display\":{\"theme\":\"dark\",\"size\":0.7,\"brightness\":1},\"storage\":{\"used\":8576331,\"total\":128000000},\"streamerMode\":false,\"name\":\"Joe\'s Phone\",\"weather\":{\"celcius\":false},\"phone\":{\"showCallerId\":true},\"wallpaper\":{\"background\":\"BubbleB\"},\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"time\":{\"twelveHourClock\":false},\"airplaneMode\":false,\"security\":{\"faceId\":true,\"pinCode\":true}}', 1, 1, 100),
('7877425v5KF9a3292y5643KQt7Va2269p96yG3D71j7Z2zsT85', '6508426', 'Dexter\'s Phone', NULL, NULL, '{\"phone\":{\"showCallerId\":true},\"time\":{\"twelveHourClock\":false},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\",\"Tinder\",\"Twitter\"]],\"storage\":{\"used\":8581487.16,\"total\":128000000},\"notifications\":[],\"wallpaper\":{\"background\":\"BubbleB\"},\"weather\":{\"celcius\":false},\"streamerMode\":false,\"airplaneMode\":false,\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"name\":\"Dexter\'s Phone\",\"security\":{\"pinCode\":false,\"faceId\":false},\"display\":{\"size\":0.7,\"theme\":\"light\",\"brightness\":1}}', 1, 1, 100),
('7LBWht13445Ek9I46j4H1wH4216c7X118W9gGT9n87T253F278', '6024492', 'Dino\'s Phone', '2563', 'char1:9dd7913bbd62f2a73d45d26b229765a1828ece15', '{\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\",\"Twitter\"]],\"display\":{\"size\":0.7,\"theme\":\"light\",\"brightness\":1},\"weather\":{\"celcius\":false},\"notifications\":[],\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"airplaneMode\":false,\"time\":{\"twelveHourClock\":false},\"security\":{\"pinCode\":false,\"faceId\":false},\"locale\":\"cs\",\"storage\":{\"used\":8576331,\"total\":128000000},\"name\":\"Dino\'s Phone\",\"phone\":{\"showCallerId\":true},\"wallpaper\":{\"background\":\"GlobeNight\"},\"streamerMode\":false}', 1, 1, 100),
('8Ev6U94f3m629KjUCnoRrF74839Ma6Rg87Y3442N3H8Z291nZ3', '2761535', 'Robert\'s Phone', '1122', NULL, '{\"airplaneMode\":false,\"security\":{\"pinCode\":true,\"faceId\":false},\"weather\":{\"celcius\":false},\"phone\":{\"showCallerId\":true},\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"streamerMode\":false,\"locale\":\"cs\",\"storage\":{\"total\":128000000,\"used\":8660957.96},\"display\":{\"brightness\":1,\"theme\":\"dark\",\"size\":0.7},\"name\":\"Robert\'s Phone\",\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\",\"MarketPlace\",\"Twitter\",\"Tinder\",\"Instagram\"]],\"wallpaper\":{\"background\":\"BubbleB\"},\"notifications\":[],\"time\":{\"twelveHourClock\":false}}', 1, 1, 100),
('8m54M3H73J54Zb538N123w89J74r4Lkk3l3HqtaR656JGK72Z8', '3205368', 'Martin\'s Phone', '1478', 'char1:fd77610e8f35fbcb85957438e3647d5b4b26c29c', '{\"wallpaper\":{\"background\":\"BubbleB\"},\"locale\":\"en\",\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"display\":{\"theme\":\"dark\",\"size\":0.7,\"brightness\":1},\"storage\":{\"used\":8576331,\"total\":128000000},\"streamerMode\":false,\"name\":\"Martin\'s Phone\",\"weather\":{\"celcius\":false},\"notifications\":[],\"phone\":{\"showCallerId\":true},\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"time\":{\"twelveHourClock\":false},\"airplaneMode\":false,\"security\":{\"pinCode\":true,\"faceId\":true}}', 1, 1, 100),
('91s9IGnYQ7H3F3vvVZ3114ZYc8JgFKV2h39rL9217UqrZFuR89', '6028653', NULL, NULL, NULL, '{\"time\":{\"twelveHourClock\":false},\"security\":{\"pinCode\":false,\"faceId\":false},\"phone\":{\"showCallerId\":true},\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"streamerMode\":false,\"notifications\":[],\"name\":\"Not set\",\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"storage\":{\"used\":8576331,\"total\":128000000},\"display\":{\"size\":0.7,\"theme\":\"light\",\"brightness\":1},\"airplaneMode\":false,\"weather\":{\"celcius\":false},\"wallpaper\":{\"background\":\"BubbleB\"}}', 0, 1, 100),
('91Y76l29k5W86o6146BZ8S4779BB3J15p1er4pOy9181EU5L12', '4808615', 'Dendo\'s Phone', NULL, NULL, '{\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"display\":{\"size\":0.7,\"theme\":\"light\",\"brightness\":1},\"weather\":{\"celcius\":false},\"storage\":{\"used\":8576331,\"total\":128000000},\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"name\":\"Dendo\'s Phone\",\"security\":{\"pinCode\":false,\"faceId\":false},\"airplaneMode\":false,\"streamerMode\":false,\"time\":{\"twelveHourClock\":false},\"phone\":{\"showCallerId\":true},\"notifications\":[],\"wallpaper\":{\"background\":\"BubbleB\"}}', 1, 1, 100),
('94k93s7N75826Ps183156dy122aKB17P55LkO5w34B31aE938z', '2762420', 'Wilda\'s Phone', NULL, NULL, '{\"display\":{\"theme\":\"light\",\"size\":0.7,\"brightness\":1},\"wallpaper\":{\"background\":\"BubbleB\"},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"locale\":\"cs\",\"name\":\"Wilda\'s Phone\",\"notifications\":[],\"storage\":{\"total\":128000000,\"used\":8576331},\"security\":{\"pinCode\":false,\"faceId\":false},\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"phone\":{\"showCallerId\":true},\"airplaneMode\":false,\"weather\":{\"celcius\":false},\"time\":{\"twelveHourClock\":false},\"streamerMode\":false}', 1, 1, 100),
('94p46Q991l5617E8T68286k8h2W6MP4M9m8vi77WVehRszVa27', '6660970', 'Jake\'s Phone', '0000', 'char1:739f45face4a989b414f43753a220053ece07406', '{\"time\":{\"twelveHourClock\":false},\"locale\":\"cs\",\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\",\"YellowPages\",\"MarketPlace\",\"Tinder\"]],\"display\":{\"theme\":\"dark\",\"brightness\":1,\"size\":0.7},\"storage\":{\"used\":8577503.67,\"total\":128000000},\"name\":\"Jake\'s Phone\",\"streamerMode\":false,\"weather\":{\"celcius\":false},\"phone\":{\"showCallerId\":true},\"notifications\":[],\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"wallpaper\":{\"background\":\"OrbsPurple\"},\"airplaneMode\":false,\"security\":{\"faceId\":true,\"pinCode\":true}}', 1, 1, 100),
('9Ln5Q93i52v45585P35S6v2i274PO4d319e7775i7T4r4o1989', '2563499', 'Rogers', NULL, NULL, '{\"weather\":{\"celcius\":false},\"airplaneMode\":false,\"storage\":{\"total\":128000000,\"used\":8576331},\"display\":{\"theme\":\"light\",\"size\":\"0.65\",\"brightness\":1},\"wallpaper\":{\"background\":\"BubbleB\"},\"streamerMode\":false,\"security\":{\"faceId\":false,\"pinCode\":false},\"time\":{\"twelveHourClock\":false},\"name\":\"Rogers\",\"locale\":\"cs\",\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"phone\":{\"showCallerId\":true},\"notifications\":[],\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\",\"YellowPages\",\"DarkChat\",\"Instagram\",\"Twitter\",\"MarketPlace\"]]}', 1, 1, 100),
('9R8m35h78iMznL27HuP2D98v1qYk3577s8qCtLnb4nDZ5XIHW2', '3556218', 'Soryu\'s Phone', '2001', 'char1:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', '{\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"storage\":{\"used\":9060033.45,\"total\":128000000},\"time\":{\"twelveHourClock\":false},\"notifications\":{\"AppStore\":{\"sound\":true,\"enabled\":true}},\"streamerMode\":false,\"phone\":{\"showCallerId\":true},\"weather\":{\"celcius\":false},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\",\"Twitter\",\"MarketPlace\",\"Instagram\",\"DarkChat\",\"YellowPages\"]],\"security\":{\"faceId\":true,\"pinCode\":true},\"name\":\"Soryu\'s Phone\",\"display\":{\"theme\":\"dark\",\"brightness\":1,\"size\":0.7},\"locale\":\"cs\",\"airplaneMode\":false,\"wallpaper\":{\"background\":\"BubbleB\"}}', 1, 1, 100),
('A43K82r1L8318nnC7Q7g91F219488bm19Va25h7lojV2z5EG3O', '3209550', 'Joe\'s Phone', '6947', 'char2:9dda4c73ff2a6ad2da4f50e592fd7ee2efbe6340', '{\"display\":{\"size\":0.7,\"brightness\":1,\"theme\":\"dark\"},\"streamerMode\":false,\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"locale\":\"cs\",\"name\":\"Joe\'s Phone\",\"notifications\":[],\"wallpaper\":{\"background\":\"BubbleB\"},\"storage\":{\"total\":128000000,\"used\":8576331},\"security\":{\"pinCode\":true,\"faceId\":true},\"airplaneMode\":false,\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"phone\":{\"showCallerId\":true},\"time\":{\"twelveHourClock\":false},\"weather\":{\"celcius\":false}}', 1, 1, 100),
('bUD767AgH8517TL3dE7q71824867p98qXQDT39nJ1M683IJ16C', '6026526', 'Jake\'s Phone', '0000', 'char1:739f45face4a989b414f43753a220053ece07406', '{\"time\":{\"twelveHourClock\":false},\"locale\":\"cs\",\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"display\":{\"theme\":\"light\",\"brightness\":1,\"size\":0.7},\"storage\":{\"used\":8576331,\"total\":128000000},\"name\":\"Jake\'s Phone\",\"streamerMode\":false,\"weather\":{\"celcius\":false},\"phone\":{\"showCallerId\":true},\"notifications\":[],\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"wallpaper\":{\"background\":\"BubbleB\"},\"airplaneMode\":false,\"security\":{\"faceId\":true,\"pinCode\":true}}', 1, 1, 100),
('char1:096a1174e562cec8470b3f647f45b3f0d5cf93e1', '4801223', 'Ryuu\'s Phone', NULL, NULL, '{\"streamerMode\":false,\"airplaneMode\":false,\"weather\":{\"celcius\":false},\"wallpaper\":{\"background\":\"IOS16_2\"},\"name\":\"Ryuu\'s Phone\",\"storage\":{\"total\":128000000,\"used\":8800597.08},\"security\":{\"faceId\":false,\"pinCode\":false},\"notifications\":[],\"time\":{\"twelveHourClock\":false},\"locale\":\"cs\",\"sound\":{\"volume\":\"0.45\",\"ringtone\":\"default\"},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\",\"Instagram\"]],\"phone\":{\"showCallerId\":true},\"display\":{\"brightness\":1,\"theme\":\"dark\",\"size\":0.7}}', 1, 0, 100),
('char1:096ef042a53693ea143c5a94ab61957ab76df1ab', '9071678', 'John\'s Phone', '1111', 'char1:096ef042a53693ea143c5a94ab61957ab76df1ab', '{\"phone\":{\"showCallerId\":true},\"wallpaper\":{\"background\":\"IOS16_2\"},\"name\":\"John\'s Phone\",\"display\":{\"theme\":\"dark\",\"brightness\":1,\"size\":0.7},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"weather\":{\"celcius\":false},\"time\":{\"twelveHourClock\":false},\"storage\":{\"used\":8576331,\"total\":128000000},\"streamerMode\":false,\"notifications\":[],\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"airplaneMode\":false,\"locale\":\"en\",\"security\":{\"pinCode\":true,\"faceId\":true}}', 1, 0, 100),
('char1:09bd2ceb267e8769174dea3bcfbcccf87517aa7a', '9073373', 'Frank\'s Phone', '6666', NULL, '{\"time\":{\"twelveHourClock\":false},\"airplaneMode\":false,\"locale\":\"cs\",\"wallpaper\":{\"background\":\"IOS16_2\"},\"phone\":{\"showCallerId\":true},\"security\":{\"pinCode\":true,\"faceId\":false},\"streamerMode\":false,\"storage\":{\"used\":8576331,\"total\":128000000},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"weather\":{\"celcius\":false},\"notifications\":[],\"name\":\"Frank\'s Phone\",\"display\":{\"brightness\":1,\"size\":0.7,\"theme\":\"dark\"},\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"}}', 1, 0, 100),
('char1:15dca8e7dadde08708d93f78369189282a69b94f', '7773221', 'Goku\'s Phone', '2208', NULL, '{\"locale\":\"cs\",\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"weather\":{\"celcius\":false},\"airplaneMode\":false,\"name\":\"Not set\",\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"display\":{\"size\":0.7,\"theme\":\"light\",\"brightness\":1},\"storage\":{\"used\":8576331,\"total\":128000000},\"time\":{\"twelveHourClock\":false},\"phone\":{\"showCallerId\":true},\"wallpaper\":{\"background\":\"IOS16_2\"},\"streamerMode\":false,\"notifications\":[],\"security\":{\"pinCode\":true,\"faceId\":false}}', 1, 0, 100),
('char1:16a0801acc1703cc72dadc5fe391cb530e97d6d9', '2566885', 'Matis\'s Phone', '5288', 'char1:16a0801acc1703cc72dadc5fe391cb530e97d6d9', '{\"security\":{\"pinCode\":true,\"faceId\":true},\"airplaneMode\":false,\"wallpaper\":{\"background\":\"IOS16_2\"},\"phone\":{\"showCallerId\":true},\"locale\":\"cs\",\"streamerMode\":false,\"time\":{\"twelveHourClock\":false},\"notifications\":[],\"storage\":{\"total\":128000000,\"used\":8576331},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"name\":\"Matis\'s Phone\",\"display\":{\"brightness\":1,\"theme\":\"dark\",\"size\":0.7},\"weather\":{\"celcius\":false},\"sound\":{\"ringtone\":\"default\",\"volume\":0.5}}', 1, 0, 100),
('char1:18e8f68df95ad04b411957eeb7a5cc3a21db38e2', '2054510', 'John\'s Phone', NULL, NULL, '{\"locale\":\"cs\",\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"weather\":{\"celcius\":false},\"notifications\":[],\"storage\":{\"total\":128000000,\"used\":8576331},\"display\":{\"brightness\":1,\"size\":0.7,\"theme\":\"dark\"},\"time\":{\"twelveHourClock\":false},\"streamerMode\":false,\"phone\":{\"showCallerId\":true},\"security\":{\"faceId\":false,\"pinCode\":false},\"wallpaper\":{\"background\":\"IOS16_2\"},\"airplaneMode\":false,\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\",\"Instagram\",\"Twitter\"]],\"name\":\"John\'s Phone\"}', 1, 0, 100),
('char1:247f744443a01af0a36c7f4a45272e162aaf611d', '3208294', 'Mack\'s Phone', '1234', 'char1:247f744443a01af0a36c7f4a45272e162aaf611d', '{\"locale\":\"en\",\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\",\"Twitter\"]],\"weather\":{\"celcius\":false},\"airplaneMode\":false,\"name\":\"Mack\'s Phone\",\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"display\":{\"size\":0.7,\"brightness\":1,\"theme\":\"light\"},\"storage\":{\"total\":128000000,\"used\":8576331},\"time\":{\"twelveHourClock\":false},\"phone\":{\"showCallerId\":true},\"security\":{\"faceId\":true,\"pinCode\":true},\"streamerMode\":false,\"notifications\":[],\"wallpaper\":{\"background\":\"IOS16_2\"}}', 1, 0, 100),
('char1:252400a9738eef79b93a74c5937b0548e469c253', '5559053', 'Frank\'s Phone', NULL, NULL, '{\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"name\":\"Frank\'s Phone\",\"airplaneMode\":false,\"display\":{\"brightness\":1,\"size\":0.7,\"theme\":\"dark\"},\"locale\":\"cs\",\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"notifications\":[],\"weather\":{\"celcius\":false},\"security\":{\"pinCode\":false,\"faceId\":false},\"phone\":{\"showCallerId\":true},\"wallpaper\":{\"background\":\"IOS16_2\"},\"streamerMode\":false,\"storage\":{\"total\":128000000,\"used\":8576331},\"time\":{\"twelveHourClock\":false}}', 1, 0, 100),
('char1:30dc648396c5827e37d17745ba9cb7f852018b93', '2053347', 'Karel\'s Phone', '5698', 'char1:30dc648396c5827e37d17745ba9cb7f852018b93', '{\"locale\":\"cs\",\"notifications\":[],\"airplaneMode\":false,\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\",\"Twitter\",\"Instagram\"]],\"phone\":{\"showCallerId\":true},\"wallpaper\":{\"background\":\"IOS16_2\"},\"security\":{\"faceId\":true,\"pinCode\":true},\"time\":{\"twelveHourClock\":false},\"name\":\"Karel\'s Phone\",\"streamerMode\":false,\"display\":{\"size\":0.7,\"brightness\":1,\"theme\":\"dark\"},\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"weather\":{\"celcius\":false},\"storage\":{\"total\":128000000,\"used\":8835400.000000002}}', 1, 0, 100),
('char1:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', '2055264', 'Soryu\'s Phone', '2001', 'char1:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', '{\"security\":{\"pinCode\":true,\"faceId\":true},\"airplaneMode\":false,\"weather\":{\"celcius\":true},\"wallpaper\":{\"background\":\"IOS16_2\"},\"name\":\"Soryu\'s Phone\",\"storage\":{\"used\":8576331,\"total\":128000000},\"locale\":\"cs\",\"notifications\":[],\"time\":{\"twelveHourClock\":false},\"display\":{\"brightness\":1,\"theme\":\"dark\",\"size\":0.7},\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\",\"MarketPlace\",\"Twitter\",\"DarkChat\",\"YellowPages\",\"Instagram\"]],\"phone\":{\"showCallerId\":true},\"streamerMode\":false}', 1, 0, 100),
('char1:6da4d857b509dd6583ba6782a8301d467bf36380', '3209699', 'Martin\'s Phone', NULL, NULL, '{\"storage\":{\"used\":8576331,\"total\":128000000},\"wallpaper\":{\"background\":\"IOS16_2\"},\"phone\":{\"showCallerId\":true},\"name\":\"Martin\'s Phone\",\"notifications\":[],\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\",\"Twitter\"]],\"time\":{\"twelveHourClock\":false},\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"display\":{\"brightness\":1,\"size\":0.7,\"theme\":\"light\"},\"locale\":\"cs\",\"airplaneMode\":false,\"weather\":{\"celcius\":false},\"streamerMode\":false,\"security\":{\"pinCode\":false,\"faceId\":false}}', 1, 0, 100),
('char1:7fc9429fbfdead8589b808ce4c9ca1033be3f258', '6668306', NULL, NULL, NULL, '{\"time\":{\"twelveHourClock\":false},\"airplaneMode\":false,\"wallpaper\":{\"background\":\"IOS16_2\"},\"phone\":{\"showCallerId\":true},\"security\":{\"pinCode\":false,\"faceId\":false},\"name\":\"Not set\",\"storage\":{\"used\":8576331,\"total\":128000000},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"weather\":{\"celcius\":false},\"notifications\":[],\"streamerMode\":false,\"display\":{\"brightness\":1,\"size\":0.7,\"theme\":\"light\"},\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"}}', 0, 0, 100),
('char1:8c221a18a724b6faa4e886c177e9870fe85c9680', '2059421', 'john\'s Phone', NULL, NULL, '{\"time\":{\"twelveHourClock\":false},\"storage\":{\"used\":8580913.770000002,\"total\":128000000},\"security\":{\"pinCode\":false,\"faceId\":false},\"name\":\"john\'s Phone\",\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"streamerMode\":false,\"notifications\":[],\"locale\":\"en\",\"display\":{\"size\":0.7,\"brightness\":1,\"theme\":\"dark\"},\"wallpaper\":{\"background\":\"IOS16_2\"},\"phone\":{\"showCallerId\":true},\"airplaneMode\":false,\"weather\":{\"celcius\":false},\"sound\":{\"ringtone\":\"default\",\"volume\":0.5}}', 1, 0, 100),
('char1:9dd7913bbd62f2a73d45d26b229765a1828ece15', '1206683', NULL, NULL, NULL, '{\"airplaneMode\":false,\"weather\":{\"celcius\":false},\"wallpaper\":{\"background\":\"IOS16_2\"},\"name\":\"Not set\",\"storage\":{\"used\":8576331,\"total\":128000000},\"security\":{\"pinCode\":false,\"faceId\":false},\"display\":{\"brightness\":1,\"theme\":\"light\",\"size\":0.7},\"streamerMode\":false,\"time\":{\"twelveHourClock\":false},\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"phone\":{\"showCallerId\":true},\"notifications\":[]}', 0, 0, 100),
('char1:9f92532a07891e00ad46526c68b955a2935c3c24', '6025397', 'Mike\'s Phone', NULL, NULL, '{\"name\":\"Mike\'s Phone\",\"streamerMode\":false,\"security\":{\"pinCode\":false,\"faceId\":false},\"time\":{\"twelveHourClock\":false},\"locale\":\"cs\",\"wallpaper\":{\"background\":\"IOS16_2\"},\"airplaneMode\":false,\"display\":{\"size\":0.7,\"brightness\":1,\"theme\":\"light\"},\"storage\":{\"used\":8576331,\"total\":128000000},\"notifications\":[],\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\",\"Twitter\"]],\"phone\":{\"showCallerId\":true},\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"weather\":{\"celcius\":false}}', 1, 0, 100),
('char1:9fc348017f6379702a0881a5f2b41c8efdd1422a', '2764774', 'Ray\'s Phone', '2203', 'char1:9fc348017f6379702a0881a5f2b41c8efdd1422a', '{\"display\":{\"brightness\":1,\"theme\":\"dark\",\"size\":0.7},\"airplaneMode\":false,\"weather\":{\"celcius\":false},\"wallpaper\":{\"background\":\"IOS16_2\"},\"name\":\"Ray\'s Phone\",\"storage\":{\"used\":8576331,\"total\":128000000},\"security\":{\"pinCode\":true,\"faceId\":true},\"notifications\":[],\"streamerMode\":false,\"locale\":\"cs\",\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"phone\":{\"showCallerId\":true},\"time\":{\"twelveHourClock\":false}}', 1, 0, 100),
('char1:a0d0df65040210c65c5c097b25c5011637af60b6', '4807320', 'Karel\'s Phone', '3464', 'char1:a0d0df65040210c65c5c097b25c5011637af60b6', '{\"storage\":{\"used\":8799331,\"total\":128000000},\"locale\":\"en\",\"phone\":{\"showCallerId\":true},\"name\":\"Karel\'s Phone\",\"notifications\":[],\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\",\"Instagram\",\"YellowPages\",\"MarketPlace\"]],\"time\":{\"twelveHourClock\":false},\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"display\":{\"brightness\":1,\"size\":0.7,\"theme\":\"light\"},\"security\":{\"pinCode\":true,\"faceId\":true},\"airplaneMode\":false,\"weather\":{\"celcius\":false},\"streamerMode\":false,\"wallpaper\":{\"background\":\"IOS16_2\"}}', 1, 0, 100),
('char1:a7ee375deb6e8137f3d6287fca222196489eff9a', '7774077', NULL, NULL, NULL, '{\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"weather\":{\"celcius\":false},\"airplaneMode\":false,\"name\":\"Not set\",\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"display\":{\"size\":0.7,\"brightness\":1,\"theme\":\"light\"},\"security\":{\"pinCode\":false,\"faceId\":false},\"time\":{\"twelveHourClock\":false},\"phone\":{\"showCallerId\":true},\"wallpaper\":{\"background\":\"IOS16_2\"},\"streamerMode\":false,\"notifications\":[],\"storage\":{\"total\":128000000,\"used\":8576331}}', 0, 0, 100),
('char1:a8cfd975ad8e17a808e69fea1873127e0e8dd9e9', '7778107', 'jay\'s Phone', NULL, NULL, '{\"weather\":{\"celcius\":false},\"wallpaper\":{\"background\":\"IOS16_2\"},\"notifications\":[],\"time\":{\"twelveHourClock\":false},\"streamerMode\":false,\"phone\":{\"showCallerId\":true},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\",\"Twitter\"]],\"airplaneMode\":false,\"name\":\"jay\'s Phone\",\"display\":{\"theme\":\"dark\",\"brightness\":1,\"size\":0.7},\"storage\":{\"total\":128000000,\"used\":8576331},\"security\":{\"pinCode\":false,\"faceId\":false},\"locale\":\"cs\",\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"}}', 1, 0, 100),
('char1:bd2b2a60cf8b8a34db2a7f2ec41424e7d168b516', '3200807', 'Adam\'s Phone', NULL, NULL, '{\"time\":{\"twelveHourClock\":false},\"storage\":{\"used\":8576331,\"total\":128000000},\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"name\":\"Adam\'s Phone\",\"phone\":{\"showCallerId\":true},\"streamerMode\":false,\"security\":{\"pinCode\":false,\"faceId\":false},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\",\"Twitter\"]],\"weather\":{\"celcius\":false},\"locale\":\"en\",\"wallpaper\":{\"background\":\"IOS16_2\"},\"notifications\":[],\"airplaneMode\":false,\"display\":{\"theme\":\"dark\",\"brightness\":1,\"size\":0.7}}', 1, 0, 100),
('char1:d0752e87d373f99d52872390de8b4e9f6c680bea', '1206447', 'john\'s Phone', '1234', 'char1:d0752e87d373f99d52872390de8b4e9f6c680bea', '{\"weather\":{\"celcius\":false},\"streamerMode\":false,\"name\":\"john\'s Phone\",\"storage\":{\"used\":8763831,\"total\":128000000},\"security\":{\"faceId\":true,\"pinCode\":true},\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"airplaneMode\":false,\"notifications\":[],\"time\":{\"twelveHourClock\":false},\"phone\":{\"showCallerId\":true},\"locale\":\"en\",\"wallpaper\":{\"background\":\"IOS16_2\"},\"display\":{\"theme\":\"light\",\"brightness\":1,\"size\":0.7},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\",\"Tinder\",\"Twitter\"]]}', 1, 0, 100),
('char1:d3da62f33fe647236cdb1840121f6c72fbec6284', '4804952', NULL, NULL, NULL, '{\"name\":\"Not set\",\"display\":{\"brightness\":1,\"theme\":\"light\",\"size\":0.7},\"phone\":{\"showCallerId\":true},\"time\":{\"twelveHourClock\":false},\"notifications\":[],\"weather\":{\"celcius\":false},\"storage\":{\"used\":8576331,\"total\":128000000},\"wallpaper\":{\"background\":\"IOS16_2\"},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"airplaneMode\":false,\"streamerMode\":false,\"security\":{\"faceId\":false,\"pinCode\":false}}', 0, 0, 100),
('char1:f3e71e94ead0e0b54c28491a2b012f196ab8d472', '6665401', 'Mike\'s Phone', '0000', 'char1:f3e71e94ead0e0b54c28491a2b012f196ab8d472', '{\"storage\":{\"used\":8576331,\"total\":128000000},\"wallpaper\":{\"background\":\"IOS16_2\"},\"phone\":{\"showCallerId\":true},\"name\":\"Mike\'s Phone\",\"notifications\":[],\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"time\":{\"twelveHourClock\":false},\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"security\":{\"pinCode\":true,\"faceId\":true},\"locale\":\"cs\",\"airplaneMode\":false,\"weather\":{\"celcius\":false},\"streamerMode\":false,\"display\":{\"brightness\":1,\"size\":0.7,\"theme\":\"dark\"}}', 1, 0, 100),
('char2:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', '6024625', 'David\'s Phone', '2001', 'char2:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', '{\"phone\":{\"showCallerId\":true},\"time\":{\"twelveHourClock\":false},\"display\":{\"theme\":\"dark\",\"size\":0.7,\"brightness\":1},\"notifications\":[],\"wallpaper\":{\"background\":\"IOS16_2\"},\"storage\":{\"total\":128000000,\"used\":8576331},\"name\":\"David\'s Phone\",\"security\":{\"pinCode\":true,\"faceId\":true},\"airplaneMode\":false,\"streamerMode\":false,\"locale\":\"cs\",\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\",\"Instagram\",\"Twitter\"]],\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"weather\":{\"celcius\":false}}', 1, 0, 100),
('char2:d3da62f33fe647236cdb1840121f6c72fbec6284', '2561093', 'Nikolai\'s Phone', NULL, NULL, '{\"phone\":{\"showCallerId\":true},\"wallpaper\":{\"background\":\"IOS16_2\"},\"security\":{\"faceId\":false,\"pinCode\":false},\"display\":{\"theme\":\"light\",\"brightness\":1,\"size\":0.7},\"locale\":\"en\",\"time\":{\"twelveHourClock\":false},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"weather\":{\"celcius\":false},\"storage\":{\"used\":8582821.43,\"total\":128000000},\"streamerMode\":false,\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"airplaneMode\":false,\"name\":\"Nikolai\'s Phone\",\"notifications\":[]}', 1, 0, 100),
('cOE15K6q5BJ36W5Z5Pidlhh5gy39hK1esvER484823F48XsD91', '6508484', 'Anthony\'s Phone', '4562', 'char1:c9134d4df5b10443686b0370214af498ed464fad', '{\"weather\":{\"celcius\":false},\"security\":{\"pinCode\":false,\"faceId\":false},\"time\":{\"twelveHourClock\":false},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"streamerMode\":false,\"phone\":{\"showCallerId\":true},\"wallpaper\":{\"background\":\"BubbleB\"},\"display\":{\"theme\":\"light\",\"brightness\":1,\"size\":0.7},\"airplaneMode\":false,\"notifications\":[],\"storage\":{\"total\":128000000,\"used\":8584099.989999999},\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"name\":\"Anthony\'s Phone\"}', 1, 1, 100);
INSERT INTO `phone_phones` (`id`, `phone_number`, `name`, `pin`, `face_id`, `settings`, `is_setup`, `assigned`, `battery`) VALUES
('f4MHek7O8QTm33dBCf7UG36S8499DeI44D16O5621G151Uly57', '9075592', NULL, '1138', 'char1:7fc9429fbfdead8589b808ce4c9ca1033be3f258', '{\"airplaneMode\":false,\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"phone\":{\"showCallerId\":true},\"name\":\"Not set\",\"streamerMode\":false,\"display\":{\"theme\":\"light\",\"size\":0.7,\"brightness\":1},\"security\":{\"pinCode\":false,\"faceId\":false},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"time\":{\"twelveHourClock\":false},\"wallpaper\":{\"background\":\"BubbleB\"},\"weather\":{\"celcius\":false},\"storage\":{\"total\":128000000,\"used\":8576331},\"notifications\":[]}', 0, 1, 100),
('f7PkvN244938Vtc52QqU2vu7azPfiu1t71z13t5FgX611M2964', '9074543', 'Vlastík\'s Phone', '2592', 'char1:7d36c723f19b962b1da9aa2d249374ab07ed59f8', '{\"storage\":{\"total\":128000000,\"used\":8576331},\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"time\":{\"twelveHourClock\":false},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"security\":{\"pinCode\":true,\"faceId\":true},\"streamerMode\":false,\"airplaneMode\":false,\"locale\":\"cs\",\"display\":{\"brightness\":1,\"size\":0.7,\"theme\":\"dark\"},\"name\":\"Not set\",\"phone\":{\"showCallerId\":true},\"weather\":{\"celcius\":false},\"wallpaper\":{\"background\":\"BubbleB\"},\"notifications\":[]}', 1, 1, 100),
('fXH3xBM22Cd3v2Nr73gr3sep8h54H7h241W13WL2R5358wh8iG', '7772112', 'Frank Pill', NULL, NULL, '{\"phone\":{\"showCallerId\":true},\"time\":{\"twelveHourClock\":false},\"name\":\"Frank Pill\",\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\",\"YellowPages\",\"DarkChat\",\"MarketPlace\",\"Twitter\",\"Instagram\"]],\"storage\":{\"used\":8833984.97,\"total\":128000000},\"notifications\":[],\"wallpaper\":{\"background\":\"https://cdn.discordapp.com/attachments/1040997086130356285/1059531747852812368/upload.png\"},\"weather\":{\"celcius\":false},\"streamerMode\":false,\"airplaneMode\":false,\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"locale\":\"cs\",\"security\":{\"pinCode\":false,\"faceId\":false},\"display\":{\"size\":0.7,\"theme\":\"dark\",\"brightness\":1}}', 1, 1, 100),
('g31be3HfV5I283En7e72U42513WF35fcr6zYZ596g57UMlUW42', '4807611', 'Michael\'s Phone', NULL, NULL, '{\"name\":\"Michael\'s Phone\",\"phone\":{\"showCallerId\":true},\"wallpaper\":{\"background\":\"BubbleB\"},\"airplaneMode\":false,\"display\":{\"brightness\":1,\"size\":0.7,\"theme\":\"dark\"},\"weather\":{\"celcius\":false},\"notifications\":[],\"streamerMode\":false,\"locale\":\"cs\",\"time\":{\"twelveHourClock\":false},\"security\":{\"pinCode\":false,\"faceId\":false},\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"storage\":{\"total\":128000000,\"used\":8836573.68},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\",\"Instagram\",\"YellowPages\",\"Twitter\",\"Health\",\"MarketPlace\"]]}', 1, 1, 100),
('h35722mue78yg7t83oR64PsL181r191W77br688xvw7E8347F4', '2760583', 'Robert\'s Phone', '1122', NULL, '{\"airplaneMode\":false,\"security\":{\"pinCode\":true,\"faceId\":false},\"weather\":{\"celcius\":false},\"phone\":{\"showCallerId\":true},\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"streamerMode\":false,\"locale\":\"cs\",\"storage\":{\"total\":128000000,\"used\":8576331},\"display\":{\"brightness\":1,\"theme\":\"dark\",\"size\":0.7},\"name\":\"Robert\'s Phone\",\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\",\"Twitter\",\"MarketPlace\"]],\"wallpaper\":{\"background\":\"BubbleB\"},\"notifications\":[],\"time\":{\"twelveHourClock\":false}}', 1, 1, 100),
('J7Q87Eg8tUya5yt63yY58Qz496MeZ81AWa4zb57w32tKI891Gl', '2568482', 'Wilda\'s Phone', NULL, NULL, '{\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"storage\":{\"used\":8576331,\"total\":128000000},\"name\":\"Not set\",\"airplaneMode\":false,\"streamerMode\":false,\"notifications\":[],\"wallpaper\":{\"background\":\"BubbleB\"},\"display\":{\"brightness\":1,\"theme\":\"light\",\"size\":0.7},\"locale\":\"cs\",\"weather\":{\"celcius\":false},\"time\":{\"twelveHourClock\":false},\"phone\":{\"showCallerId\":true},\"security\":{\"pinCode\":false,\"faceId\":false}}', 1, 1, 100),
('jVLnE5z4w3Si39L75yR78Anb29I86766hga9s5s8vcm43Us8Y1', '5551314', 'James\'s Phone', '0503', 'char1:0f28049c7aa4aa48bd211a8555a26c730f6e5a35', '{\"locale\":\"cs\",\"time\":{\"twelveHourClock\":false},\"notifications\":[],\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\",\"Instagram\",\"Tinder\",\"Twitter\"]],\"storage\":{\"total\":128000000,\"used\":8769293.400000003},\"phone\":{\"showCallerId\":true},\"wallpaper\":{\"background\":\"BubbleB\"},\"weather\":{\"celcius\":false},\"streamerMode\":false,\"airplaneMode\":false,\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"name\":\"James\'s Phone\",\"security\":{\"pinCode\":true,\"faceId\":true},\"display\":{\"brightness\":1,\"theme\":\"light\",\"size\":0.7}}', 1, 1, 100),
('Kq27SM9Sut2HfHP7676y3682vfGU2hr7MBFr858EiQb7S5WvR6', '6026642', 'Peter\'s Phone', '1234', 'char2:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', '{\"weather\":{\"celcius\":false},\"security\":{\"pinCode\":true,\"faceId\":true},\"time\":{\"twelveHourClock\":false},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"streamerMode\":false,\"storage\":{\"total\":128000000,\"used\":8576331},\"airplaneMode\":false,\"phone\":{\"showCallerId\":true},\"wallpaper\":{\"background\":\"BubbleB\"},\"locale\":\"en\",\"notifications\":[],\"display\":{\"theme\":\"dark\",\"size\":0.7,\"brightness\":1},\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"name\":\"Peter\'s Phone\"}', 1, 1, 100),
('LE91wh8gOAS36M876L45tq8q4E5S2I11B3q234yKW7N918FUF4', '6025112', 'Goku\'s Phone', '2233', 'char1:15dca8e7dadde08708d93f78369189282a69b94f', '{\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"streamerMode\":false,\"weather\":{\"celcius\":false},\"display\":{\"size\":0.7,\"theme\":\"light\",\"brightness\":1},\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"airplaneMode\":false,\"name\":\"Goku\'s Phone\",\"security\":{\"pinCode\":true,\"faceId\":true},\"locale\":\"cs\",\"time\":{\"twelveHourClock\":false},\"storage\":{\"used\":8577192.1,\"total\":128000000},\"phone\":{\"showCallerId\":true},\"notifications\":[],\"wallpaper\":{\"background\":\"BubbleB\"}}', 1, 1, 100),
('M7R3t3ii9M223Em9pfrs317Cu1PN4DCn416zo998IN3ZrK61X1', '3552719', 'Jonathan\'s Phone', '2001', 'char1:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', '{\"airplaneMode\":false,\"locale\":\"cs\",\"time\":{\"twelveHourClock\":false},\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"security\":{\"faceId\":true,\"pinCode\":true},\"phone\":{\"showCallerId\":true},\"weather\":{\"celcius\":false},\"notifications\":[],\"wallpaper\":{\"background\":\"BubbleB\"},\"streamerMode\":false,\"name\":\"Jonathan\'s Phone\",\"storage\":{\"total\":128000000,\"used\":8833822.55},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\",\"Twitter\",\"Instagram\"]],\"display\":{\"size\":0.7,\"theme\":\"dark\",\"brightness\":1}}', 1, 1, 100),
('mba82xS68SI7b7336N373e5611D498272S461fp2s6Q3k6Qd25', '2054851', 'John\'s Phone', '1111', 'char1:a0f7631205cb6e82660d688375a78c4dfd78a7b1', '{\"airplaneMode\":false,\"name\":\"John\'s Phone\",\"weather\":{\"celcius\":false},\"storage\":{\"used\":8799331,\"total\":128000000},\"time\":{\"twelveHourClock\":false},\"security\":{\"pinCode\":true,\"faceId\":true},\"streamerMode\":false,\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\",\"Instagram\",\"YellowPages\",\"DarkChat\"]],\"notifications\":[],\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"locale\":\"cs\",\"phone\":{\"showCallerId\":true},\"wallpaper\":{\"background\":\"BubbleB\"},\"display\":{\"theme\":\"dark\",\"brightness\":1,\"size\":0.7}}', 1, 1, 100),
('n2cUkpQo98L9WUsVh66cUkY5xGAT57BO2Ym5Z3Um6a2j2BbGu9', '2053997', NULL, NULL, NULL, '{\"phone\":{\"showCallerId\":true},\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"name\":\"Not set\",\"airplaneMode\":false,\"streamerMode\":false,\"wallpaper\":{\"background\":\"BubbleB\"},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"display\":{\"brightness\":1,\"theme\":\"light\",\"size\":0.7},\"storage\":{\"used\":8576331,\"total\":128000000},\"weather\":{\"celcius\":false},\"time\":{\"twelveHourClock\":false},\"notifications\":[],\"security\":{\"pinCode\":false,\"faceId\":false}}', 0, 1, 100),
('n2dQLI5YY5459zqV33se7cS5qii35DzLu818191G5543k4ST24', '2562896', 'Jonatan\'s Phone', '1234', 'char1:6c8c6ae8c062d2f8c67c6f72bfedd76aea374840', '{\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"time\":{\"twelveHourClock\":false},\"phone\":{\"showCallerId\":true},\"storage\":{\"used\":8799331,\"total\":128000000},\"notifications\":[],\"locale\":\"en\",\"security\":{\"faceId\":true,\"pinCode\":true},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\",\"Instagram\",\"Twitter\"]],\"airplaneMode\":false,\"display\":{\"size\":0.7,\"brightness\":1,\"theme\":\"dark\"},\"weather\":{\"celcius\":false},\"streamerMode\":false,\"name\":\"Jonatan\'s Phone\",\"wallpaper\":{\"background\":\"BubbleB\"}}', 1, 1, 100),
('N889A8D3H13194bl13x6Y4N7BK1e869K54d83Quw88W4AMY3Y7', '2058736', 'Nikolai\'s Phone', NULL, NULL, '{\"phone\":{\"showCallerId\":true},\"security\":{\"faceId\":false,\"pinCode\":false},\"time\":{\"twelveHourClock\":false},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\",\"Twitter\"]],\"streamerMode\":false,\"locale\":\"cs\",\"wallpaper\":{\"background\":\"BubbleB\"},\"display\":{\"theme\":\"light\",\"brightness\":1,\"size\":0.7},\"weather\":{\"celcius\":false},\"airplaneMode\":false,\"notifications\":[],\"storage\":{\"total\":128000000,\"used\":8576331},\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"name\":\"Nikolai\'s Phone\"}', 1, 1, 100),
('O242Da362Z3J1247G8F2972g58x11ZY5g8P9543fH9jhMA4u15', '3202921', 'Michael\'s Phone', '4213', 'char1:6c8c6ae8c062d2f8c67c6f72bfedd76aea374840', '{\"storage\":{\"used\":8836573.68,\"total\":128000000},\"locale\":\"cs\",\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\",\"Instagram\",\"YellowPages\",\"Twitter\",\"Health\",\"MarketPlace\"]],\"name\":\"Michael\'s Phone\",\"streamerMode\":false,\"airplaneMode\":false,\"security\":{\"pinCode\":true,\"faceId\":true},\"phone\":{\"showCallerId\":true},\"display\":{\"size\":0.7,\"theme\":\"dark\",\"brightness\":1},\"time\":{\"twelveHourClock\":false},\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"notifications\":[],\"wallpaper\":{\"background\":\"BubbleB\"},\"weather\":{\"celcius\":false}}', 1, 1, 100),
('O38m2Q51wk625S6j6zxIt91zzaSO3XJR29v48TW69MW584QkXU', '6662600', 'Rogers', NULL, NULL, '{\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\",\"DarkChat\",\"MarketPlace\",\"Instagram\",\"YellowPages\",\"Twitter\"]],\"display\":{\"size\":0.7,\"theme\":\"dark\",\"brightness\":1},\"weather\":{\"celcius\":false},\"wallpaper\":{\"background\":\"BubbleB\"},\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"storage\":{\"used\":8576331,\"total\":128000000},\"time\":{\"twelveHourClock\":false},\"security\":{\"faceId\":false,\"pinCode\":false},\"locale\":\"cs\",\"airplaneMode\":false,\"streamerMode\":false,\"phone\":{\"showCallerId\":true},\"notifications\":[],\"name\":\"Rogers\"}', 1, 1, 100),
('ozI772e4BE95Yg7F73p1VCA9rf8huq2a18154d88519fR952h4', '9072407', 'Wilson\'s Phone', NULL, NULL, '{\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"security\":{\"pinCode\":false,\"faceId\":false},\"notifications\":[],\"time\":{\"twelveHourClock\":false},\"weather\":{\"celcius\":false},\"wallpaper\":{\"background\":\"BubbleB\"},\"phone\":{\"showCallerId\":true},\"name\":\"Wilson\'s Phone\",\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"streamerMode\":false,\"display\":{\"brightness\":1,\"theme\":\"light\",\"size\":0.7},\"storage\":{\"total\":128000000,\"used\":8576331},\"airplaneMode\":false}', 1, 1, 100),
('P3x9d3imxpJ4u7hCjSThlG4Y3nuM5Ck314JP185pr92285QhKV', '9075705', NULL, NULL, NULL, '{\"notifications\":[],\"storage\":{\"used\":8576331,\"total\":128000000},\"name\":\"Not set\",\"streamerMode\":false,\"phone\":{\"showCallerId\":true},\"weather\":{\"celcius\":false},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"security\":{\"faceId\":false,\"pinCode\":false},\"time\":{\"twelveHourClock\":false},\"display\":{\"theme\":\"light\",\"brightness\":1,\"size\":0.7},\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"airplaneMode\":false,\"wallpaper\":{\"background\":\"BubbleB\"}}', 0, 1, 100),
('P4zqE455j7yk4148b83ZbvyEu78Mc5CDvRAW9b32122R16KPA7', '3202626', NULL, NULL, NULL, '{\"airplaneMode\":false,\"security\":{\"faceId\":false,\"pinCode\":false},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"weather\":{\"celcius\":false},\"phone\":{\"showCallerId\":true},\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"storage\":{\"total\":128000000,\"used\":8576331},\"display\":{\"brightness\":1,\"theme\":\"light\",\"size\":0.7},\"name\":\"Not set\",\"streamerMode\":false,\"wallpaper\":{\"background\":\"BubbleB\"},\"notifications\":[],\"time\":{\"twelveHourClock\":false}}', 0, 1, 100),
('Qa9576UBEP71FX33gbF2o1Iq7vXh7s7WeDs666TS5rBp1622O9', '2760484', NULL, NULL, NULL, '{\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"storage\":{\"total\":128000000,\"used\":8576331},\"time\":{\"twelveHourClock\":false},\"airplaneMode\":false,\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"phone\":{\"showCallerId\":true},\"wallpaper\":{\"background\":\"BubbleB\"},\"streamerMode\":false,\"display\":{\"size\":0.7,\"brightness\":1,\"theme\":\"light\"},\"weather\":{\"celcius\":false},\"notifications\":[],\"security\":{\"pinCode\":false,\"faceId\":false},\"name\":\"Not set\"}', 0, 1, 100),
('rLh6Iv8TY1cd5347DuM7h3811tZ76nlH8ZqK6u68fmza81xTh4', '9076180', NULL, NULL, NULL, '{\"name\":\"Not set\",\"phone\":{\"showCallerId\":true},\"wallpaper\":{\"background\":\"BubbleB\"},\"airplaneMode\":false,\"weather\":{\"celcius\":false},\"storage\":{\"total\":128000000,\"used\":8576331},\"time\":{\"twelveHourClock\":false},\"streamerMode\":false,\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"display\":{\"brightness\":1,\"size\":0.7,\"theme\":\"light\"},\"notifications\":[],\"security\":{\"pinCode\":false,\"faceId\":false},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]]}', 0, 1, 100),
('smOgl224746348ol7rC7NQc4a366MqwOd56iEWThPvc9D8J6wU', '5555917', NULL, NULL, NULL, NULL, 0, 1, 100),
('sn9hV6a65m9IS47t22A281h8kY3YiuP99d729X112x87t46Vrd', '1202572', 'Peter\'s Phone', '7355', 'char1:8b738557b51059dd1243c514317c74a3fa11d556', '{\"weather\":{\"celcius\":false},\"notifications\":[],\"name\":\"Peter\'s Phone\",\"time\":{\"twelveHourClock\":false},\"storage\":{\"used\":8576331,\"total\":128000000},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"airplaneMode\":false,\"streamerMode\":false,\"display\":{\"size\":0.7,\"brightness\":1,\"theme\":\"light\"},\"security\":{\"pinCode\":false,\"faceId\":false},\"wallpaper\":{\"background\":\"BubbleB\"},\"phone\":{\"showCallerId\":true},\"sound\":{\"ringtone\":\"default\",\"volume\":0.5}}', 1, 1, 100),
('TGB3O18S223U3C71At44VwCeN2q2ma1It9V2UH7177Fy9c8w62', '6662440', 'Patrick\'s Phone', NULL, NULL, '{\"streamerMode\":false,\"weather\":{\"celcius\":false},\"wallpaper\":{\"background\":\"BubbleB\"},\"airplaneMode\":false,\"storage\":{\"total\":128000000,\"used\":8576331},\"name\":\"Patrick\'s Phone\",\"security\":{\"faceId\":false,\"pinCode\":false},\"locale\":\"cs\",\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"phone\":{\"showCallerId\":true},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"notifications\":[],\"time\":{\"twelveHourClock\":false},\"display\":{\"size\":0.7,\"theme\":\"light\",\"brightness\":1}}', 1, 1, 100),
('V1DZ59cx8z4gZ4yHAQr852oY4Knb64764R96v2x2Ox899952D3', '2569241', 'Richard\'s Phone', '1111', 'char1:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', '{\"wallpaper\":{\"background\":\"https://cdn.discordapp.com/attachments/1040997086130356285/1059566195868704899/upload.png\"},\"security\":{\"faceId\":true,\"pinCode\":true},\"time\":{\"twelveHourClock\":false},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\",\"YellowPages\",\"Instagram\",\"MarketPlace\",\"DarkChat\",\"Twitter\",\"Tinder\"]],\"streamerMode\":false,\"airplaneMode\":false,\"weather\":{\"celcius\":false},\"display\":{\"theme\":\"dark\",\"brightness\":1,\"size\":0.7},\"phone\":{\"showCallerId\":true},\"locale\":\"en\",\"notifications\":[],\"storage\":{\"total\":128000000,\"used\":8585597.67},\"sound\":{\"ringtone\":\"default\",\"volume\":\"1\"},\"name\":\"Richard\'s Phone\"}', 1, 1, 100),
('V528c1LoosnrjWE1649pa55s7y9f3Vb26EqTOf42Mg9j2g137t', '1201552', NULL, NULL, NULL, '{\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"airplaneMode\":false,\"display\":{\"brightness\":1,\"size\":0.7,\"theme\":\"light\"},\"name\":\"Not set\",\"streamerMode\":false,\"security\":{\"faceId\":false,\"pinCode\":false},\"storage\":{\"used\":8576331,\"total\":128000000},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"time\":{\"twelveHourClock\":false},\"phone\":{\"showCallerId\":true},\"weather\":{\"celcius\":false},\"notifications\":[],\"wallpaper\":{\"background\":\"BubbleB\"}}', 0, 1, 100),
('wzL8kq89bcRZSIE6EIBDDR5g1696X78bXw95G654q793f392AC', '3553845', NULL, NULL, NULL, '{\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"time\":{\"twelveHourClock\":false},\"display\":{\"brightness\":1,\"theme\":\"light\",\"size\":0.7},\"security\":{\"faceId\":false,\"pinCode\":false},\"streamerMode\":false,\"airplaneMode\":false,\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"storage\":{\"used\":8576331,\"total\":128000000},\"phone\":{\"showCallerId\":true},\"name\":\"Not set\",\"weather\":{\"celcius\":false},\"wallpaper\":{\"background\":\"BubbleB\"},\"notifications\":[]}', 0, 1, 100),
('y4z7ft61V7cH6CYgr169Mu771ve8SZ9TSe3VHSM837cs19fXK8', '2563688', NULL, NULL, NULL, '{\"notifications\":[],\"time\":{\"twelveHourClock\":false},\"weather\":{\"celcius\":false},\"security\":{\"faceId\":false,\"pinCode\":false},\"phone\":{\"showCallerId\":true},\"airplaneMode\":false,\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"wallpaper\":{\"background\":\"BubbleB\"},\"streamerMode\":false,\"name\":\"Not set\",\"storage\":{\"used\":8576331,\"total\":128000000},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"display\":{\"size\":0.7,\"theme\":\"light\",\"brightness\":1}}', 0, 1, 100),
('Z6948ciu9i669BLR1kVdQ97e4Ca49694UT5681PFCA1jfjM5eJ', '2769268', 'William\'s Phone', NULL, NULL, '{\"time\":{\"twelveHourClock\":false},\"locale\":\"cs\",\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\",\"Twitter\"]],\"display\":{\"theme\":\"dark\",\"size\":0.7,\"brightness\":1},\"storage\":{\"used\":8576331,\"total\":128000000},\"airplaneMode\":false,\"notifications\":[],\"weather\":{\"celcius\":false},\"name\":\"William\'s Phone\",\"wallpaper\":{\"background\":\"BubbleB\"},\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"streamerMode\":false,\"phone\":{\"showCallerId\":true},\"security\":{\"faceId\":false,\"pinCode\":false}}', 1, 1, 100),
('Zg88VT47kh6t25233I54PH8ynWop9I777657G658S25755AV7S', '3552150', 'Mike\'s Phone', NULL, NULL, '{\"storage\":{\"used\":8576331,\"total\":128000000},\"time\":{\"twelveHourClock\":false},\"name\":\"Mike\'s Phone\",\"security\":{\"pinCode\":false,\"faceId\":false},\"streamerMode\":false,\"airplaneMode\":false,\"sound\":{\"ringtone\":\"default\",\"volume\":0.5},\"display\":{\"brightness\":1,\"theme\":\"light\",\"size\":0.7},\"weather\":{\"celcius\":false},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"phone\":{\"showCallerId\":true},\"wallpaper\":{\"background\":\"BubbleB\"},\"notifications\":[]}', 1, 1, 100),
('zU9t74l351NK14Ap77bW4k98Y8xX43K1nIy8E2e521gG4ozbIi', '4802681', 'David\'s Phone', '2001', 'char2:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', '{\"wallpaper\":{\"background\":\"BubbleB\"},\"airplaneMode\":false,\"storage\":{\"total\":128000000,\"used\":8578274.57},\"notifications\":[],\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Garage\",\"Notes\",\"Calculator\",\"Weather\",\"Maps\",\"Wallet\",\"Home\",\"Music\",\"Mail\",\"Services\"]],\"display\":{\"size\":0.7,\"theme\":\"dark\",\"brightness\":1},\"sound\":{\"volume\":0.5,\"ringtone\":\"default\"},\"security\":{\"pinCode\":true,\"faceId\":true},\"name\":\"David\'s Phone\",\"time\":{\"twelveHourClock\":false},\"streamerMode\":false,\"locale\":\"cs\",\"weather\":{\"celcius\":false},\"phone\":{\"showCallerId\":true}}', 1, 1, 100);

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_phone_blocked_numbers`
--

CREATE TABLE `phone_phone_blocked_numbers` (
  `phone_number` varchar(15) NOT NULL,
  `blocked_number` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_phone_calls`
--

CREATE TABLE `phone_phone_calls` (
  `id` varchar(50) NOT NULL,
  `caller` varchar(15) NOT NULL,
  `callee` varchar(15) NOT NULL,
  `duration` int(11) NOT NULL DEFAULT 0,
  `answered` tinyint(1) DEFAULT 0,
  `hide_caller_id` tinyint(1) DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `phone_phone_calls`
--

INSERT INTO `phone_phone_calls` (`id`, `caller`, `callee`, `duration`, `answered`, `hide_caller_id`, `timestamp`) VALUES
('1S6UF4w111leV5k1519z5AJ7R9tvOu1on8944Uj6MUvdVWzd2Q', '7772112', '2563499', 0, 0, 0, '2023-01-02 10:21:59'),
('1uP8N6f6IAisxI9RW1gLSHs764xd4T9k8Oa1b455m3J9dG6WN8', '2768399', '520', 0, 0, 0, '2022-12-28 11:31:21'),
('21e485pf57TXQL865F2V5p45U4181942MY13S52y7c72C78C52', '5208780', '2768399', 0, 0, 0, '2022-12-28 12:23:36'),
('27443b4S3R974h11Eu9L83BA9362g648HY95Aa97I5O2KF74E8', '2057643', '7772112', 3, 0, 0, '2023-01-01 14:55:06'),
('2Nr45228zr5j8IX4Mt6I8f8J5tx53nJqqX5HDFsYkLksW7eMfL', '4803417', '666', 0, 0, 0, '2023-01-03 20:11:19'),
('34Z5858eN8XJu2U195CCTi8VWV44yQ94956v4sgdu6Y38I7358', '5208780', '2768399', 2, 0, 0, '2022-12-28 12:24:10'),
('38D3569E4z2KoHiu9839ZHvc1p8x2P49466f5iE73BCvV499Vo', '6024492', '6508426', 6, 1, 0, '2023-01-04 23:29:55'),
('3R3W6zBUr13L51H6phHi269gO5Q2C988QJ6G1xpDZAtm94g6GI', '4803417', '6660970', 6, 0, 0, '2023-01-03 20:11:53'),
('3Y84hwz614Ci461FdhZmIbzP798A8847F9Y9v6c6l7Z6589593', '3200807', '2059421', 52, 1, 0, '2023-02-17 15:25:04'),
('4B522P7uwIURb2y1438h6Cw8o4V99fYz56De5HI54yC6179b85', '2059421', '111111111999', 0, 0, 0, '2023-02-17 13:51:20'),
('4M63eAo4MYVq941rg3Uhq498YlF71Q8OtG4gOU5z974Q6t1K21', '2057643', '7772112', 8, 0, 0, '2023-01-02 18:45:49'),
('5Cj954ncsDt88K25eOs135H39473Z9e119Q617pWL7C57S157x', '2059421', '911', 0, 0, 0, '2023-02-17 13:50:21'),
('5S726QeaEj71x3936e7D5JnJUC5u693hS6MK51395f7Ha3682S', '3552719', '2058736', 0, 0, 0, '2022-12-28 19:36:24'),
('5v3mrPZE1kBeuM5q24h5731G9h9Y66847Yb6O4mJw4548K71F4', '2059421', '911', 0, 0, 0, '2023-02-17 13:50:23'),
('61s7TM8334625213maq2TJ3ii9KSQGuF8717oWU5X6hWt37FzA', '2768399', '5208780', 23, 1, 0, '2022-12-28 11:36:26'),
('6264pA1Z5ji77Ze24cS546451S953FJ5d4348ZaB7g17b3aw92', '5208780', '2768399', 1, 0, 0, '2022-12-28 12:23:35'),
('6339734eryKYVD2V499YtHk6A3oa6o7zabY2Qt2adSZ165Kn65', '4801223', '2055264', 2, 0, 0, '2023-01-14 18:21:06'),
('67g5g1q657iCLbBxKcBbLl78224zUKf5646K647Z346U3o576y', '2768399', '520', 0, 0, 0, '2022-12-28 11:30:19'),
('6Gs35qp52F8sYdg2w8dM6qg237HmADZpYS8k2eS8wtar3cK9d4', '2568625', '911', 0, 0, 0, '2022-12-25 19:50:56'),
('71s3tt54l8NoU12984f3Kv3ai12G2bN63TDfN1I1w45S7o472k', '3202921', '6669374', 17, 1, 0, '2022-12-19 20:06:59'),
('757Fv2YzQ3j8pl8in72Jk2ofKiuiwq69867BVpx7619y6rH19j', '5208780', '2768399', 1, 0, 0, '2022-12-28 12:23:43'),
('764KNYE67H12W1g674wnW2P329O99TZS413Kye4989v8Wo1P8d', '5208780', '2768399', 2, 0, 0, '2022-12-28 12:23:40'),
('77Jv26mx91a5K6dy53HFB42GTl9V67I9MYGd366X98382orrBw', '5208780', '2768399', 3, 0, 0, '2022-12-28 12:23:50'),
('7Ai1E446919T9pcC53996387C1epy869t3rSN17C9ZH5CYvSs1', '2768399', '520', 0, 0, 0, '2022-12-28 11:30:17'),
('7bugaM44Z4E8M7W1Ty747CK334We6Sl5F5lw9Q23c2N96Duv5k', '2768399', '5', 0, 0, 0, '2022-12-28 11:31:52'),
('7HuMq4SqF97R8c36uU8Jr6j8w5931k9qr2WaI8rG1dsliDU692', '2057643', '7772112', 1, 0, 0, '2023-01-01 14:56:32'),
('825lVUEg943d3JoOYAZWD6J8z83zLT8gYGfj6CpGm9w1dl847D', '4807611', '6508484', 153, 1, 0, '2023-01-03 17:52:38'),
('97ancld4Y9Ajbn4wE6X93Sc8p5942Q8Ix9J256L3f5E6rulP3D', '3550358', '3556218', 3, 1, 0, '2023-01-06 19:46:16'),
('9WCzo4g3N23A8yu55uR1O76694Xe1O1KG7G6j8I51n1OpF52E3', '5208780', '2768399', 6, 0, 0, '2022-12-29 09:40:33'),
('a73461EfUoyuJB1nWvVS72rg4N6cbfL84WA1e2jkCT67xRbq6S', '2058736', '3552719', 0, 0, 0, '2022-12-27 19:05:21'),
('d3Q1CiZB8B9cGKtMSgA7XXC93qh4I4489676G18I6FaK198sX7', '2059421', '911', 0, 0, 0, '2023-02-17 13:50:51'),
('dl77berS7Uj3Uq4p8ySJXnQ7F5EB2347klaKMY5Z1j5PRFi5pr', '7772112', '2057643', 19, 1, 0, '2023-01-01 17:23:29'),
('Ewb8M7P3Yl6j8d93CT3m5ZF482nZ7f12LB4Lbqg5U8iu16AU29', '2059421', '911', 0, 0, 0, '2023-02-17 13:50:15'),
('f46Qe46c4U1717G42s258314X3R4N34971K6saC185Cczt23qO', '2568625', '7772112', 76, 1, 0, '2023-01-02 21:00:50'),
('G65oe2vKj5a48XhA63LS17A559YUv32xl25a8y84iaoGYdxE44', '2059421', '911', 0, 0, 0, '2023-02-17 13:50:49'),
('h53eL77QtX6Mf69985nz187d732552kbC392cnH421937tV98f', '7772112', '2563499', 34, 1, 0, '2023-01-01 18:30:47'),
('k4872965q51yEQ867t7T738SaRK4f859m121DD6QkrNR9teWHf', '7772112', '2057643', 39, 1, 0, '2023-01-02 19:07:49'),
('L2wYD7z2UOd9Wk268p4KrfE737p4Lv66H87fW4N7R5E5361ET9', '7772112', '6662600', 60, 1, 0, '2023-01-02 10:59:04'),
('Lp8SMI6Fi13w47oB48s8ekg32A79B1D957iZ3R3K13734sY8sL', '7772112', '2563499', 0, 0, 0, '2023-01-02 10:22:02'),
('OLioSA8O3c93Oo6KU9JMrH5N138pJjD5lxJ18WGL9929YZk6gn', '2059421', '911', 0, 0, 0, '2023-02-17 13:50:52'),
('p9T2Z184F6nb6I97tqgIsK74E1Z273982o587C4Ybk1Y1Thn42', '2768399', '520', 0, 0, 0, '2022-12-28 11:30:15'),
('rb8iysn746n662K1N7165pU4v9NT4X2QC5XF4hF3vqE8YGhZYa', '7772112', '6662600', 41, 1, 0, '2023-01-04 14:47:49'),
('rOwrz7C1Ie884LcM1bW8k63v364lqKFpd7BqZtz5c5uyYy8ebR', '7772112', '2057643', 39, 1, 0, '2023-01-02 20:12:07'),
('SdEjfZW23iKHn19l5B4b2891mJG4foqVw8E1y2q64F3b1s53X9', '7772112', '6662600', 7, 0, 0, '2023-01-02 21:05:19'),
('uq2gI6W5V4DjZ5U1C289bztVj1F66ZgW4952NeKU8dt83I9bJr', '3552719', '5550161', 0, 0, 0, '2022-12-26 21:36:12'),
('w485P1WN7jG4M6ah2B3Cf6upnu1S4tLGHDRe9v99t6mg5QY211', '6024492', '6508426', 5, 1, 0, '2023-01-04 23:30:02'),
('WUy69JB5735hW3R38GL3p1E41o4iqvGuZ2l27x3XB5s4I87221', '5208780', '2768399', 14, 1, 0, '2022-12-28 11:35:40'),
('X3A25k527A66P8TE7n1hS15ofzOo1jbOj86e82RWgj55wL58Me', '7772112', '2563499', 0, 0, 0, '2023-01-02 10:21:52'),
('y1F997Sp7ABji3kv1X443zh5OC483VcAc4yYyvC5j3d67d5ahl', '3552719', '2058736', 3, 0, 0, '2022-12-26 20:45:20'),
('Z21I418B8355d2Z7B74h9IHD62872e1i9pPW8458y5j4wI9f59', '5208780', '2768399', 2, 0, 0, '2022-12-28 12:23:46'),
('z8J2E963Yr24MxsB584398Zz2m6Q6T32BXPJ57O48Y2GxIfvxX', '7772112', '2057643', 8, 1, 0, '2023-01-02 20:11:25'),
('zx4z7JS24BEH46Ud46nn67j2R8y32la7328XlN9zEzqDvLM768', '2057643', '7772112', 38, 1, 0, '2023-01-02 18:46:28');

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_phone_contacts`
--

CREATE TABLE `phone_phone_contacts` (
  `contact_phone_number` varchar(15) NOT NULL,
  `firstname` varchar(50) NOT NULL DEFAULT '',
  `lastname` varchar(50) NOT NULL DEFAULT '',
  `profile_image` varchar(200) DEFAULT NULL,
  `favourite` tinyint(1) DEFAULT 0,
  `phone_number` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `phone_phone_contacts`
--

INSERT INTO `phone_phone_contacts` (`contact_phone_number`, `firstname`, `lastname`, `profile_image`, `favourite`, `phone_number`) VALUES
('2055264', 'Braček', '', NULL, 0, '4801223'),
('2057643', 'Thomas', 'Johnson', NULL, 0, '2563499'),
('2057643', 'Thomas\'s Phone', '', NULL, 0, '7772112'),
('2058736', 'Nikolai', 'LSGC', NULL, 0, '3552719'),
('2563499', 'Rogers', '', NULL, 0, '2057643'),
('2569241', 'R.', 'Moore', NULL, 0, '6508484'),
('2768399', 'Homie', 'Ur Mom', NULL, 0, '5208780'),
('3202921', 'M.', 'Espinoza', NULL, 0, '6508484'),
('3550358', 'Ryuu', 'Shinji', NULL, 0, '3556218'),
('3552719', 'EMSko', '', NULL, 0, '2058736'),
('3556218', 'Braček', '', NULL, 0, '3550358'),
('4801223', 'Brácha', '', NULL, 0, '2055264'),
('4803417', 'benny´s', 'auto', NULL, 0, '6660970'),
('5', 'Jackob', '', NULL, 0, '2768399'),
('6024492', 'Diego', '', NULL, 0, '6508426'),
('6508426', 'Dexrter', '', NULL, 0, '6024492'),
('6508426', 'Dexter', '', NULL, 0, '7772112'),
('6508484', 'Anthony', 'Woods', NULL, 0, '2569241'),
('6508484', 'Anthony', 'Woods', 'https://cdn.discordapp.com/attachments/1040997086130356285/1054507560784384051/upload.png', 0, '3202921'),
('6508484', 'Anthony', 'Woods', 'https://cdn.discordapp.com/attachments/1040997086130356285/1054507560784384051/upload.png', 0, '4807611'),
('6660970', 'Jake ', 'Smith práce', NULL, 0, '4803417'),
('6662600', 'Rogers', '', NULL, 0, '7772112'),
('6662600', 'Martin', 'Rogers', NULL, 0, '7778655'),
('6669374', 'William', 'David Larson', 'https://cdn.discordapp.com/attachments/1040997086130356285/1054488760366157854/upload.png', 0, '3202921'),
('6669374', 'William', 'David Larson', 'https://cdn.discordapp.com/attachments/1040997086130356285/1054488760366157854/upload.png', 0, '4807611'),
('7772112', 'Frank Pill', '', NULL, 0, '2057643'),
('7772112', 'Frank Pill', '', NULL, 0, '2563499'),
('7772112', 'MC', 'servis', NULL, 0, '2568625'),
('7772112', 'Frank', '', NULL, 0, '6508426'),
('7772112', 'Frank', 'Pill', NULL, 0, '6662600'),
('7778655', 'MegWillies - Bob', '', NULL, 0, '6662600');

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_photos`
--

CREATE TABLE `phone_photos` (
  `phone_number` varchar(15) NOT NULL,
  `link` varchar(200) NOT NULL,
  `is_video` tinyint(1) DEFAULT 0,
  `size` float NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `phone_photos`
--

INSERT INTO `phone_photos` (`phone_number`, `link`, `is_video`, `size`, `timestamp`) VALUES
('2053347', 'https://cdn.discordapp.com/attachments/1040997086130356285/1072075153753784350/upload.png', 0, 658.89, '2023-02-06 08:43:44'),
('2053347', 'https://cdn.discordapp.com/attachments/1040997086130356285/1072075180274360331/upload.png', 0, 743.23, '2023-02-06 08:43:50'),
('2053347', 'https://cdn.discordapp.com/attachments/1040997086130356285/1072219566769455124/upload.png', 0, 966.88, '2023-02-06 18:17:34'),
('2059421', 'https://cdn.discordapp.com/attachments/1040997086130356285/1076138853221552228/upload.png', 0, 1258.55, '2023-02-17 13:51:33'),
('2059421', 'https://cdn.discordapp.com/attachments/1040997086130356285/1076138882573279373/upload.png', 0, 3324.22, '2023-02-17 13:51:40'),
('2561093', 'https://cdn.discordapp.com/attachments/1040997086130356285/1067895765608960071/upload.webm', 1, 2569.62, '2023-01-25 19:56:25'),
('2561093', 'https://cdn.discordapp.com/attachments/1040997086130356285/1067896073240182924/upload.webm', 1, 3920.81, '2023-01-25 19:57:38'),
('2568625', 'https://cdn.discordapp.com/attachments/1040997086130356285/1054494744941707334/upload.png', 0, 919.36, '2022-12-19 20:25:27'),
('2569241', 'https://cdn.discordapp.com/attachments/1040997086130356285/1059566195868704899/upload.png', 0, 2655.12, '2023-01-04 19:02:29'),
('2569241', 'https://cdn.discordapp.com/attachments/1040997086130356285/1060272746988314645/upload.png', 0, 541.31, '2023-01-04 19:05:20'),
('2569241', 'https://cdn.discordapp.com/attachments/1040997086130356285/1060272868874788996/upload.webm', 1, 1812.13, '2023-01-04 19:05:49'),
('2569241', 'https://cdn.discordapp.com/attachments/1040997086130356285/1060273078128607343/upload.webm', 1, 4258.11, '2023-01-04 19:06:39'),
('2761535', 'https://cdn.discordapp.com/attachments/1040997086130356285/1056914724727558144/upload.png', 0, 226.96, '2022-12-26 12:41:46'),
('2767031', 'https://cdn.discordapp.com/attachments/1040997086130356285/1057997615964360755/upload.png', 0, 2514.53, '2022-12-29 12:24:48'),
('3202921', 'https://cdn.discordapp.com/attachments/1040997086130356285/1054487623680401579/upload.png', 0, 990.84, '2022-12-19 19:57:09'),
('3202921', 'https://cdn.discordapp.com/attachments/1040997086130356285/1054488402214527077/upload.png', 0, 817.27, '2022-12-19 20:00:15'),
('3202921', 'https://cdn.discordapp.com/attachments/1040997086130356285/1054488760366157854/upload.png', 0, 796.67, '2022-12-19 20:01:40'),
('3202921', 'https://cdn.discordapp.com/attachments/1040997086130356285/1054507560784384051/upload.png', 0, 937.9, '2022-12-19 21:16:23'),
('3550358', 'https://cdn.discordapp.com/attachments/1040997086130356285/1061011656081145866/upload.webm', 1, 2130.39, '2023-01-06 20:01:29'),
('3550358', 'https://cdn.discordapp.com/attachments/1040997086130356285/1061013666641756220/upload.png', 0, 733.9, '2023-01-06 20:09:28'),
('3552719', 'https://cdn.discordapp.com/attachments/1040997086130356285/1054508935664648292/upload.png', 0, 791.55, '2022-12-19 21:21:50'),
('3556218', 'https://cdn.discordapp.com/attachments/1040997086130356285/1062044839614615664/upload.png', 0, 918.7, '2023-01-09 16:26:58'),
('3556218', 'https://cdn.discordapp.com/attachments/1040997086130356285/1062045580530024488/upload.png', 0, 1922.55, '2023-01-09 16:29:54'),
('3556218', 'https://cdn.discordapp.com/attachments/1040997086130356285/1062048935855783978/upload.png', 0, 1161.2, '2023-01-09 16:43:14'),
('4801223', 'https://cdn.discordapp.com/attachments/1040997086130356285/1063886389302800394/upload.webm', 1, 1266.08, '2023-01-14 18:24:40'),
('4802681', 'https://cdn.discordapp.com/attachments/1040997086130356285/1058093445585059902/upload.png', 0, 989.21, '2022-12-29 18:45:35'),
('4802681', 'https://cdn.discordapp.com/attachments/1040997086130356285/1058093530515509356/upload.png', 0, 954.36, '2022-12-29 18:45:56'),
('4807611', 'https://cdn.discordapp.com/attachments/1040997086130356285/1054487623680401579/upload.png', 0, 990.84, '2022-12-19 19:57:09'),
('4807611', 'https://cdn.discordapp.com/attachments/1040997086130356285/1054488402214527077/upload.png', 0, 817.27, '2022-12-19 20:00:15'),
('4807611', 'https://cdn.discordapp.com/attachments/1040997086130356285/1054488760366157854/upload.png', 0, 796.67, '2022-12-19 20:01:40'),
('4807611', 'https://cdn.discordapp.com/attachments/1040997086130356285/1054507560784384051/upload.png', 0, 937.9, '2022-12-19 21:16:23'),
('5208780', 'https://cdn.discordapp.com/attachments/1040997086130356285/1057621687698464778/upload.png', 0, 430.17, '2022-12-28 11:31:00'),
('5551314', 'https://cdn.discordapp.com/attachments/1040997086130356285/1060336532176781312/upload.png', 0, 1066.71, '2023-01-04 23:18:47'),
('5551314', 'https://cdn.discordapp.com/attachments/1040997086130356285/1060336620903071884/upload.png', 0, 975.61, '2023-01-04 23:19:08'),
('5551314', 'https://cdn.discordapp.com/attachments/1040997086130356285/1060336809860661318/upload.png', 0, 900.65, '2023-01-04 23:19:54'),
('5551314', 'https://cdn.discordapp.com/attachments/1040997086130356285/1060336851774341161/upload.png', 0, 974.71, '2023-01-04 23:20:04'),
('5551314', 'https://cdn.discordapp.com/attachments/1040997086130356285/1060341323753861180/upload.png', 0, 849.16, '2023-01-04 23:37:50'),
('5551314', 'https://cdn.discordapp.com/attachments/1040997086130356285/1060341361641005177/upload.png', 0, 695.56, '2023-01-04 23:37:59'),
('6025112', 'https://cdn.discordapp.com/attachments/1040997086130356285/1062468346525790369/upload.png', 0, 861.1, '2023-01-10 20:29:50'),
('6508426', 'https://cdn.discordapp.com/attachments/1040997086130356285/1059859232024952842/upload.png', 0, 1185, '2023-01-03 15:42:11'),
('6508426', 'https://cdn.discordapp.com/attachments/1040997086130356285/1059954185182924820/upload.png', 0, 1138.68, '2023-01-03 21:59:29'),
('6508426', 'https://cdn.discordapp.com/attachments/1040997086130356285/1060291974822895646/upload.png', 0, 1406.49, '2023-01-04 20:21:44'),
('6508426', 'https://cdn.discordapp.com/attachments/1040997086130356285/1060292026190528672/upload.png', 0, 1425.99, '2023-01-04 20:21:57'),
('6508484', 'https://cdn.discordapp.com/attachments/1040997086130356285/1059566148846354613/upload.png', 0, 2461.17, '2023-01-02 20:17:35'),
('6508484', 'https://cdn.discordapp.com/attachments/1040997086130356285/1059566180169437184/upload.png', 0, 2652.7, '2023-01-02 20:17:42'),
('6508484', 'https://cdn.discordapp.com/attachments/1040997086130356285/1059566195868704899/upload.png', 0, 2655.12, '2023-01-02 20:17:46'),
('6660970', 'https://cdn.discordapp.com/attachments/1040997086130356285/1059918748791869460/upload.png', 0, 1172.67, '2023-01-03 19:38:41'),
('6669374', 'https://cdn.discordapp.com/attachments/1040997086130356285/1054488905002520717/upload.png', 0, 881.89, '2022-12-19 20:02:15'),
('6669374', 'https://cdn.discordapp.com/attachments/1040997086130356285/1062474587545272431/upload.png', 0, 769.28, '2023-01-10 20:54:37'),
('7772112', 'https://cdn.discordapp.com/attachments/1040997086130356285/1059531747852812368/upload.png', 0, 953.97, '2023-01-02 18:00:53');

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_services_channels`
--

CREATE TABLE `phone_services_channels` (
  `id` varchar(50) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `company` varchar(50) NOT NULL,
  `last_message` varchar(100) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `phone_services_channels`
--

INSERT INTO `phone_services_channels` (`id`, `phone_number`, `company`, `last_message`, `timestamp`) VALUES
('29sI6yL8KnB1Cz5PrRK5OW51Pb8wj67H94b47718oG1H472V88', '3552150', 'bennys', NULL, '2022-12-25 16:38:15'),
('29V76eu59h782C48vh5Zl35C67hC38V814U67Ts52MA5k1gE45', '6026526', 'taxi', 'co?', '2023-02-17 13:03:47'),
('2d824z3Z9z593r13c7n5255qO2ft26jP51xcKpG1A6p91Y77N4', '6508426', 'lostmc', '..', '2023-01-03 15:54:32'),
('2YfAnH3J81eX1273t83ofWkW1B2MK5x7Q65jf8B23b19241AK5', '3552150', 'bennys', NULL, '2022-12-25 16:38:15'),
('3G84c4sNDMlb4En84keK4c7k8M19E452j82Vz9w7V9A214Lj2y', '4807611', 'lsgc', 'Ahoj, potrebujem zbran', '2022-12-27 16:45:16'),
('4gq7d7I64HA4R9N3wFL15b884FJ8yG751a579S3GPl76aPw48U', '6026526', 'taxi', NULL, '2023-01-03 19:36:03'),
('6124vl4TI544yBx4W14Mw6ON9656N23vK6DSF7T838863UR8lT', '9073711', 'taxi', NULL, '2023-01-03 19:24:12'),
('6dx43Ia6uc24kZKiJ23Hl1G72w58RA488775ak8y2931al6292', '6025397', 'lsgc', NULL, '2023-01-22 15:17:37'),
('893231kA2X3TtB93f35Q8o47912KZR7Pby91Q3c7w64vUk18l9', '2058736', 'bennys', 'čtvrtý test', '2022-12-25 16:38:07'),
('918Hg4W6RnLQpA9761Lse8WIu1QzlD43vN92MB91augX9SK649', '4807611', 'lsgc', NULL, '2022-12-27 16:45:09'),
('9D3pedsqa7eZD323Z4f81255nQcA1VfO4OOxf8i6XqK63Q9uo1', '9073711', 'taxi', NULL, '2023-01-03 19:24:12'),
('kwBcv12RryOFQ552daJ7z474RV54ck3964IJGj7Z9Di6KX9NJ8', '6025397', 'lsgc', 'Zdravím mamte open?', '2023-01-22 15:17:42'),
('L8Vtc2BK8mO15qOZ2Z149855a9546U4y9689A4V8b85nb49e31', '7772112', 'lostmc', NULL, '2023-01-02 20:18:21'),
('P99x6Dl274JfG7t4D86KlaJ44ZqLv4axW5a613tW52Z93OrXmq', '7772112', 'lostmc', NULL, '2023-01-02 20:18:21'),
('uzC3do7Bdv5478wwjH8K27H2s8GS513Uywl6o85Tr6X652E3e7', '6508426', 'lostmc', NULL, '2023-01-03 15:54:29'),
('Z8q2zOf393378593lJ1r43Eg4r23S17Pd256489Hv71t3cM182', '2058736', 'bennys', NULL, '2022-12-25 16:36:41');

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_services_messages`
--

CREATE TABLE `phone_services_messages` (
  `id` varchar(50) NOT NULL,
  `channel_id` varchar(50) NOT NULL,
  `sender` varchar(15) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `x_pos` int(11) DEFAULT NULL,
  `y_pos` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `phone_services_messages`
--

INSERT INTO `phone_services_messages` (`id`, `channel_id`, `sender`, `message`, `x_pos`, `y_pos`, `timestamp`) VALUES
('28Pz3IXz39J9Omz99k31495HmTg2666I6w298r9C76s5qqiED5', '893231kA2X3TtB93f35Q8o47912KZR7Pby91Q3c7w64vUk18l9', '2058736', 'druhej test', 249, -1155, '2022-12-25 16:37:13'),
('28w4N9IT3a1kvz97Sp61b8XM7629tZ28aGE35347oyPM52rMZz', '29V76eu59h782C48vh5Zl35C67hC38V814U67Ts52MA5k1gE45', '3200807', 'co?', NULL, NULL, '2023-02-17 13:03:47'),
('2MSs2A2oMCcAsMb2639Q6t9at265RQ7A8zD1U112977919BAsO', '893231kA2X3TtB93f35Q8o47912KZR7Pby91Q3c7w64vUk18l9', '2058736', 'třetí test', 249, -1155, '2022-12-25 16:37:29'),
('41Z5A69YP2J9651jDHpN823w33lroWNLg6IG6V979fJsp94r98', '893231kA2X3TtB93f35Q8o47912KZR7Pby91Q3c7w64vUk18l9', '2058736', 'čtvrtý test', 249, -1155, '2022-12-25 16:38:07'),
('778f5u5k388rs81R3y4mro3k2J8ZB984oN98nh69C24s11k4Qf', 'kwBcv12RryOFQ552daJ7z474RV54ck3964IJGj7Z9Di6KX9NJ8', '6025397', 'Zdravím mamte open?', 22, -1105, '2023-01-22 15:17:42'),
('7K369m7AeT89792z1sxW3Vm61Qv34lC4YOkm24XzUm45cySEbx', '893231kA2X3TtB93f35Q8o47912KZR7Pby91Q3c7w64vUk18l9', '2058736', 'test', -1299, -877, '2022-12-25 16:36:43'),
('858a77373QSu7274QUC9CF956H64s8iX889V9j1cbdd35ya3g9', '893231kA2X3TtB93f35Q8o47912KZR7Pby91Q3c7w64vUk18l9', '2058736', 'čtvrtý test', 249, -1155, '2022-12-25 16:38:07'),
('964Je1X3e8ttyQ21G7fuS9RQ46yz9H3WZMZ4Ujx5921LH116wI', '893231kA2X3TtB93f35Q8o47912KZR7Pby91Q3c7w64vUk18l9', '2058736', 'druhej test', 249, -1155, '2022-12-25 16:37:13'),
('9QwGUi5h4t7MZ8GG2V5YKQdav841U1R2Y314H5c8G75xVo71F3', '29V76eu59h782C48vh5Zl35C67hC38V814U67Ts52MA5k1gE45', '3200807', 'co?', NULL, NULL, '2023-02-17 13:03:47'),
('a41NWDGs68H7YK6u74579T119TyLd1T626f89l1ig69vs6218d', '29V76eu59h782C48vh5Zl35C67hC38V814U67Ts52MA5k1gE45', '6026526', 'dobrý den nepočuli sme sa o čo ide?', 890, -163, '2023-01-03 19:36:39'),
('A7872p4mW2491cr2JsM3a7P96n6mb955m1H59twe2K8494rQK1', '2d824z3Z9z593r13c7n5255qO2ft26jP51xcKpG1A6p91Y77N4', '6508426', '..', 990, -127, '2023-01-03 15:54:33'),
('i97A56Z34ILiM68n4YM486Yrils6s5944r61724xQu7p77Pd83', '3G84c4sNDMlb4En84keK4c7k8M19E452j82Vz9w7V9A214Lj2y', '4807611', 'Ahoj, potrebujem zbran', 456, -991, '2022-12-27 16:45:16'),
('Oo9pY2t221I4xs157Mbe9U178J54Yf9ts6t1P68w92eD35Xo4p', '893231kA2X3TtB93f35Q8o47912KZR7Pby91Q3c7w64vUk18l9', '2058736', 'třetí test', 249, -1155, '2022-12-25 16:37:29'),
('oU31p2KzK48921B33C8z889Pj231tc9V2wM7r7B4W1561JD6sc', '29V76eu59h782C48vh5Zl35C67hC38V814U67Ts52MA5k1gE45', '6026526', 'dobrý den nepočuli sme sa o čo ide?', 890, -163, '2023-01-03 19:36:39'),
('P94fhIU1M87s4Ob3RDQJc4477k3ccqCP993js1MX51Zi6v3j9L', '29V76eu59h782C48vh5Zl35C67hC38V814U67Ts52MA5k1gE45', '3200807', 'co?', NULL, NULL, '2023-02-17 13:03:47'),
('PFJ6H4eu8Mxc2Mzy7czoW91U2X4kTaoEa754445oD41ARB5n5T', 'kwBcv12RryOFQ552daJ7z474RV54ck3964IJGj7Z9Di6KX9NJ8', '6025397', 'Zdravím mamte open?', 22, -1105, '2023-01-22 15:17:42'),
('s93c2nLB52q3181163R3d349g5ZQJ1wf9f2i294Ml791Ub5tmY', '3G84c4sNDMlb4En84keK4c7k8M19E452j82Vz9w7V9A214Lj2y', '4807611', 'Ahoj, potrebujem zbran', 456, -991, '2022-12-27 16:45:16'),
('W93Lb8L76s2168p42UVs2cq8Pl9QTyv9181WOlGS283A7e8R2f', '2d824z3Z9z593r13c7n5255qO2ft26jP51xcKpG1A6p91Y77N4', '6508426', '..', 990, -127, '2023-01-03 15:54:33'),
('xLU7496fR5y9iN6d9IEh7a1APG75V87B781A65T4BK767ygR22', '893231kA2X3TtB93f35Q8o47912KZR7Pby91Q3c7w64vUk18l9', '2058736', 'test', -1299, -877, '2022-12-25 16:36:43'),
('yKRS978SK3752z8uS9Bk2841i19241m47O8g7o718lx1Y8lcw6', '29V76eu59h782C48vh5Zl35C67hC38V814U67Ts52MA5k1gE45', '3200807', 'co?', NULL, NULL, '2023-02-17 13:03:47');

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_tinder_accounts`
--

CREATE TABLE `phone_tinder_accounts` (
  `name` varchar(50) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `photos` text DEFAULT NULL,
  `bio` varchar(500) DEFAULT NULL,
  `dob` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_male` tinyint(1) NOT NULL,
  `interested_men` tinyint(1) NOT NULL,
  `interested_women` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `phone_tinder_accounts`
--

INSERT INTO `phone_tinder_accounts` (`name`, `phone_number`, `photos`, `bio`, `dob`, `is_male`, `interested_men`, `interested_women`) VALUES
('James', '5551314', '[\"https://cdn.discordapp.com/attachments/1040997086130356285/1060336620903071884/upload.png\",\"https://cdn.discordapp.com/attachments/1040997086130356285/1060341323753861180/upload.png\"]', 'Jsem nový v LS pomůžeš mi abych se neztratil ? ?D ', '2000-12-21 23:00:00', 1, 0, 1),
('aezakmi', '6508426', '[\"https://cdn.discordapp.com/attachments/1040997086130356285/1059954185182924820/upload.png\"]', 'som to ja a len ja\n', '1999-12-31 23:00:00', 1, 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_tinder_matches`
--

CREATE TABLE `phone_tinder_matches` (
  `phone_number_1` varchar(15) NOT NULL,
  `phone_number_2` varchar(15) NOT NULL,
  `latest_message` varchar(1000) DEFAULT NULL,
  `latest_message_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_tinder_messages`
--

CREATE TABLE `phone_tinder_messages` (
  `id` varchar(50) NOT NULL,
  `sender` varchar(15) NOT NULL,
  `recipient` varchar(15) NOT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_tinder_swipes`
--

CREATE TABLE `phone_tinder_swipes` (
  `swiper` varchar(15) NOT NULL,
  `swipee` varchar(15) NOT NULL,
  `liked` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_twitter_accounts`
--

CREATE TABLE `phone_twitter_accounts` (
  `display_name` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `bio` varchar(100) DEFAULT NULL,
  `profile_image` varchar(200) DEFAULT NULL,
  `profile_header` varchar(200) DEFAULT NULL,
  `verified` tinyint(1) DEFAULT 0,
  `follower_count` int(11) NOT NULL DEFAULT 0,
  `following_count` int(11) NOT NULL DEFAULT 0,
  `date_joined` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `phone_twitter_accounts`
--

INSERT INTO `phone_twitter_accounts` (`display_name`, `username`, `password`, `phone_number`, `bio`, `profile_image`, `profile_header`, `verified`, `follower_count`, `following_count`, `date_joined`) VALUES
('AutoExotic', 'autoexotic', '$2a$11$PbOz49hFkR.Fa0RoJGtN..S9dH0FSpomjkySXPUHv8.uWXkFFmbHC', '3556218', 'Děláme tuning skoro večkerým značkám automobilů!\nNajdete nás na PC 7282.', 'https://cdn.discordapp.com/attachments/1040997086130356285/1062044839614615664/upload.png', 'https://cdn.discordapp.com/attachments/1040997086130356285/1062045580530024488/upload.png', 0, 0, 0, '2023-01-09 16:23:04'),
('BOB', 'bob', '$2a$11$QDXwMzrwevfENTysLA9La.Ho4D6WKdVAnjR8yI3H3/r2T6D6djWde', '7778655', NULL, NULL, NULL, 0, 0, 0, '2023-01-01 20:10:04'),
('Department of Justice', 'doj', '$2a$11$3dIUk060yrhYvIeWQolFfuzUeH.e/6siRGwKHDMnPdV0Ipdis9Ime', '2769268', NULL, NULL, NULL, 0, 0, 0, '2023-01-03 20:49:15'),
('Michael Espinoza', 'espinoza', '$2a$11$ag7qFDGeDdpCjZ6SvWfG/uOqFff/ONfPTMtfiRn693ACMknshN3Cy', '3202921', 'Los Santos Sheriff Department', 'https://cdn.discordapp.com/attachments/1040997086130356285/1054487623680401579/upload.png', NULL, 0, 0, 0, '2022-12-19 19:56:21'),
('Frank Pill ', 'frankpill', '$2a$11$oj2DsNyNmYtEH3xNO28DPO9zFwTn4jYZYwTQKWMH9G8KHWpSMoml6', '7772112', NULL, NULL, NULL, 0, 0, 0, '2023-01-02 17:58:12'),
('IcyB', 'icyb', '$2a$11$nevJidBZD4ViUuo6wwAFXOVap9znqgFKETIjia4ZFdWLstD6UBd7.', '6665822', NULL, NULL, NULL, 0, 0, 0, '2022-12-28 12:30:06'),
('dJay', 'jay', '$2a$11$eBJCJ8RBAWq.2wFrRJEXQ.4swPkaaQymYGlwE6d/ARljMqr6J9YWS', '7778107', NULL, NULL, NULL, 0, 0, 0, '2023-01-31 14:48:58'),
('Jonathan Price', 'johny_price', '$2a$11$gadDADgA1FLJO0awUlWcq.FgeSrNf7WN4RpZYh/uyMhaYGrV5emZu', '3552719', 'Ředitel EMS', 'https://cdn.discordapp.com/attachments/1040997086130356285/1054508935664648292/upload.png', NULL, 0, 0, 0, '2022-12-19 21:18:38'),
('Los Santos Gun Club', 'lsgc', '$2a$11$ytVJSXDxzOkjoJuOPtVNbOGhTZ/WgmfTVCtZ3iUk02t7ZOYkBQ9nm', '2058736', NULL, NULL, NULL, 0, 0, 0, '2023-01-01 17:41:21'),
('Mike', 'lsgc_official', '$2a$11$E78vjYMVBPo7o9KgFIuz/uEsmykRelqbwrYOfwSFWI0hKmfiOvMfe', '6025397', NULL, NULL, NULL, 0, 0, 0, '2023-01-21 17:03:20'),
('LSSD County', 'lssdcounty', '$2a$11$TARC//qvy5DDA7hcy96QY.MeSNUIrvA1/nH4kPd7sXT1Ldp7YqL3m', '2767031', NULL, 'https://cdn.discordapp.com/attachments/1040997086130356285/1057997615964360755/upload.png', NULL, 0, 0, 0, '2022-12-29 12:21:10'),
('Lucas Mark', 'lucasbennys', '$2a$11$lIRZ4agW/gBX2A2QZFSZwO9rU8L1HV8TOSPJ0khKRKKKljWIodTy6', '4803417', NULL, NULL, NULL, 0, 0, 0, '2022-12-25 18:34:19'),
('MegWillies', 'megwillies', '$2a$11$VxglMg9EhKGaASSLnMVCEe.EJeb4Gf2/OGD7kxWwfXYtSld8HclVi', '2761535', 'https://forms.gle/wp9W1mBTNKRyFbLNA', 'https://cdn.discordapp.com/attachments/1040997086130356285/1056914724727558144/upload.png', NULL, 0, 0, 0, '2022-12-26 12:39:47'),
('Mike', 'mikoš', '$2a$11$0YdHGw3ViDzHx4YEugJBPeBDxZ5mEeNYapE.8ZQiBPY5GYHzA28OG', '2568625', NULL, NULL, NULL, 0, 0, 0, '2022-12-19 20:23:56'),
('Dexter', 'morgenos', '$2a$11$PE4s0x1wgfKgSKU7hi.5G.lq7vk.MNdYQpdTqq0itz89c3Bp44mVS', '6508426', NULL, NULL, NULL, 0, 0, 0, '2023-01-03 19:50:46'),
('Rogers', 'rogers_tlmc', '$2a$11$z6ysZcOLSeMMnzB031Xz7.N.bgIClo3K74OONPmCMsPZARDeDaz4e', '6662600', NULL, NULL, NULL, 0, 0, 0, '2023-01-03 10:18:35'),
('Karel', 'voprcálek', '$2a$11$6sN8HkkSEt5gxBMfm3/uuuNoJVqFEYaxvEvxTUmeWV/QcTv5HXb.S', '2053347', NULL, NULL, NULL, 0, 0, 0, '2023-02-06 08:40:56'),
('Tamten chief', 'wdl_pd', '$2a$11$YudUoxcONSJcgTJzgJHFQuXtPSu9pZqhMUcDPpMFDx048jkjYEtxa', '6669374', NULL, 'https://cdn.discordapp.com/attachments/1040997086130356285/1054488905002520717/upload.png', NULL, 0, 0, 0, '2022-12-19 19:59:43');

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_twitter_follows`
--

CREATE TABLE `phone_twitter_follows` (
  `followed` varchar(20) NOT NULL,
  `follower` varchar(20) NOT NULL,
  `notifications` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_twitter_hashtags`
--

CREATE TABLE `phone_twitter_hashtags` (
  `hashtag` varchar(50) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `last_used` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_twitter_likes`
--

CREATE TABLE `phone_twitter_likes` (
  `tweet_id` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `phone_twitter_likes`
--

INSERT INTO `phone_twitter_likes` (`tweet_id`, `username`, `timestamp`) VALUES
('53IAWBxfFUB83Hz5BNeN8xHW5q864Zu4H2MYRXo387f4fm2zCg', 'mikoš', '2023-01-06 19:36:42'),
('71RrNV557wPKik5YH1tTaLCg78159j292m9Q25N8s4l9D4388P', 'rogers_tlmc', '2023-01-03 10:19:00'),
('8249OGKPf6Q615VU1Pe7m5yH7cBd63hqH251NXMpsvBT67bHtO', 'megwillies', '2022-12-26 13:21:08'),
('8249OGKPf6Q615VU1Pe7m5yH7cBd63hqH251NXMpsvBT67bHtO', 'wdl_pd', '2022-12-28 11:33:35'),
('B345w7U9B3G6D8Uy8r73BYK2857xhfnT44jS528uvJp78f78wO', 'frankpill', '2023-01-03 19:55:24'),
('DgeO37MAs3f1s4W3g81455KseVuI5y3IwrH177E52gO3w8m6s4', 'mikoš', '2023-01-01 20:20:22');

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_twitter_loggedin`
--

CREATE TABLE `phone_twitter_loggedin` (
  `phone_number` varchar(15) NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `phone_twitter_loggedin`
--

INSERT INTO `phone_twitter_loggedin` (`phone_number`, `username`) VALUES
('2053347', 'voprcálek'),
('2055264', 'autoexotic'),
('2058736', 'lsgc'),
('2568625', 'mikoš'),
('2761535', 'megwillies'),
('2767031', 'lssdcounty'),
('2769268', 'doj'),
('3202921', 'espinoza'),
('3209699', 'rogers_tlmc'),
('3552719', 'johny_price'),
('3556218', 'autoexotic'),
('4803417', 'lucasbennys'),
('4807611', 'espinoza'),
('6025397', 'lsgc_official'),
('6508426', 'morgenos'),
('6662600', 'rogers_tlmc'),
('6665822', 'icyb'),
('6669374', 'wdl_pd'),
('7772112', 'frankpill'),
('7778107', 'jay'),
('7778655', 'megwillies');

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_twitter_messages`
--

CREATE TABLE `phone_twitter_messages` (
  `id` varchar(50) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `recipient` varchar(20) NOT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_twitter_notifications`
--

CREATE TABLE `phone_twitter_notifications` (
  `id` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `from` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `tweet_id` varchar(50) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `phone_twitter_notifications`
--

INSERT INTO `phone_twitter_notifications` (`id`, `username`, `from`, `type`, `tweet_id`, `timestamp`) VALUES
('4Khr147clis1CH59u7H23rYB6LtTuTVSr5DA5822AB1b8t2U8K', 'mikoš', 'bob', 'reply', '91446R4K1io4g6o5zU3T1GpWZm7hUF9t4wiW138f15D44h6gnz', '2023-01-01 20:23:32'),
('55Q1tW392pPsAST68N5k91gf698N9u7O3OV7R883MB3V8ii35R', 'bob', 'mikoš', 'reply', 'K73hQZWo326Y28V6E64875QK86j8a1a4cX5L47PW735dM4mC2B', '2023-01-01 20:21:51'),
('5eA4yf42V8F74467267SqgC732OgRCfEo524U6539Q8M397k95', 'bob', 'mikoš', 'reply', '7k4jk8N18GgF8Ar2py464Q5n8HB6fQ4hW39m2l458R91tB42vz', '2023-01-01 20:19:59'),
('8Gp8s1HWx3K2k7s7578b9Tn61154f67BH7B2PJab57K7fm264k', 'mikoš', 'bob', 'reply', 'u9ZrS4498giKY1xIWwo1n98OKts28Ty5afD37221l3J2K3oo7X', '2023-01-01 20:20:55'),
('8JW4AXJ4S8twR6sM2E3j658i31pTAT3eMB12Q2ig57ZpXaF6Di', 'morgenos', 'frankpill', 'like', 'B345w7U9B3G6D8Uy8r73BYK2857xhfnT44jS528uvJp78f78wO', '2023-01-03 19:55:24'),
('A6irj6c8z4JLAt3BHV2V8X2D7763h823118g4T188I34k7VDs9', 'rogers_tlmc', 'mikoš', 'like', '53IAWBxfFUB83Hz5BNeN8xHW5q864Zu4H2MYRXo387f4fm2zCg', '2023-01-06 19:36:42'),
('cz378266jfHha35ZAT9818lm9psT3624y1n332K53548263969', 'megwillies', 'wdl_pd', 'like', '8249OGKPf6Q615VU1Pe7m5yH7cBd63hqH251NXMpsvBT67bHtO', '2022-12-28 11:33:35'),
('gcWn579725U655xbo8jio6tF5kFR65t7IrkK2U65Zw51528467', 'lsgc_official', 'jay', 'reply', '6O2lop79at3q534997JJu3L5c7H9h97MHu3446lG5tNk4OC833', '2023-01-31 16:02:56'),
('R6d66Zct5FC14156h8LjAzdcq7F13Pu375n5p59F4H6x5G559Z', 'lsgc_official', 'jay', 'retweet', 'rNj73A4843Xa6222U81T475249v1999F52f7c8RIp791y5632I', '2023-01-31 16:02:41'),
('TG5WHscL9iEb6qMUj327927X7JEnt967g2mCUD7R9Tc4d6CfI3', 'frankpill', 'rogers_tlmc', 'like', '71RrNV557wPKik5YH1tTaLCg78159j292m9Q25N8s4l9D4388P', '2023-01-03 10:19:00'),
('X861x76pp6xqH2owr7zl72W38Z87Tw83286LCcU9CVdC6JTx97', 'bob', 'mikoš', 'like', 'DgeO37MAs3f1s4W3g81455KseVuI5y3IwrH177E52gO3w8m6s4', '2023-01-01 20:20:22');

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_twitter_promoted`
--

CREATE TABLE `phone_twitter_promoted` (
  `tweet_id` varchar(50) NOT NULL,
  `promotions` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_twitter_retweets`
--

CREATE TABLE `phone_twitter_retweets` (
  `tweet_id` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `phone_twitter_retweets`
--

INSERT INTO `phone_twitter_retweets` (`tweet_id`, `username`, `timestamp`) VALUES
('B345w7U9B3G6D8Uy8r73BYK2857xhfnT44jS528uvJp78f78wO', 'morgenos', '2023-01-04 15:26:46'),
('rNj73A4843Xa6222U81T475249v1999F52f7c8RIp791y5632I', 'jay', '2023-01-31 16:02:41');

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_twitter_tweets`
--

CREATE TABLE `phone_twitter_tweets` (
  `id` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `content` varchar(280) DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `reply_to` varchar(50) DEFAULT NULL,
  `like_count` int(11) DEFAULT 0,
  `reply_count` int(11) DEFAULT 0,
  `retweet_count` int(11) DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `phone_twitter_tweets`
--

INSERT INTO `phone_twitter_tweets` (`id`, `username`, `content`, `attachments`, `reply_to`, `like_count`, `reply_count`, `retweet_count`, `timestamp`) VALUES
('144xs5go5G83K1H5kQ3E9WL9qI5B5ePw6n79HIY2PnlP8BLSf9', 'jay', 'nijaka dielna open ktora nabera mechanikov?\n', NULL, NULL, 0, 0, 0, '2023-01-31 16:28:37'),
('53IAWBxfFUB83Hz5BNeN8xHW5q864Zu4H2MYRXo387f4fm2zCg', 'rogers_tlmc', 'Dobrý den, pobočka The Lost MC se právě otevírá. Pokud máte rozbité auto nebo motorku, jsme tu pro Vás. Postal 7299 nebo nás kontaktujte telefonicky. Těšíme se na návštěvu.', NULL, NULL, 1, 0, 0, '2023-01-04 23:26:49'),
('617z9eYmhBs49N16ywS9Uw4ZOR5F4ll1K3ei31n5n3873N4214', 'lsgc', 'Pobočka na Legion Square je Vám k dispozici!', NULL, NULL, 0, 0, 0, '2023-01-01 17:44:05'),
('653ogzRrj51I62J99b22I36529S1y47111v4uf6oz811U7L115', 'mikoš', 'Servus!', NULL, NULL, 0, 0, 0, '2022-12-19 20:24:26'),
('6O2lop79at3q534997JJu3L5c7H9h97MHu3446lG5tNk4OC833', 'jay', 'hned som tam \n', NULL, 'rNj73A4843Xa6222U81T475249v1999F52f7c8RIp791y5632I', 0, 0, 0, '2023-01-31 16:02:56'),
('71OGj27ip72748Sym5c39y2oX7Hf6uO2P94s2K9143yY911qdQ', 'lsgc_official', 'LSGC OPEN!\nhttps://cdn.discordapp.com/attachments/1021420118628106290/1066402438942306497/ammu_open.png\n', NULL, NULL, 0, 0, 0, '2023-01-21 17:03:50'),
('71RrNV557wPKik5YH1tTaLCg78159j292m9Q25N8s4l9D4388P', 'frankpill', 'Pobočka Lost MC se dnes otevírá.\nPokud máte rozbité auto/motorku napište nebo zavolejte na tel. č.: 777-2112. ', NULL, NULL, 1, 0, 0, '2023-01-02 19:42:53'),
('73x36383i1IusZ7lYOD3155v62tHb2O1S8rqn33OwFDod6wmLk', 'megwillies', 'Dochází vám zboží a potřebujete další? Jste závislí na nějakých věcech a potřebujete se dovybavit? Objednejte si cokoliv co potřebujete prostřednictvím našeho formuláře a my vám to dovezeme! ', NULL, NULL, 0, 0, 0, '2023-01-03 19:57:57'),
('7k4jk8N18GgF8Ar2py464Q5n8HB6fQ4hW39m2l458R91tB42vz', 'mikoš', 'skúste zastaváru tam to možno kúpia rýchlejšie', NULL, 'DgeO37MAs3f1s4W3g81455KseVuI5y3IwrH177E52gO3w8m6s4', 0, 1, 0, '2023-01-01 20:19:59'),
('7m1sMxZE5SM49zr56P9U7ILq42264lT4Thb36NW4A9a1292687', 'rogers_tlmc', 'Dobrý den, pobočka The Lost MC se právě otevírá. Pokud máte rozbité auto či motorku, jsme tu pro Vás. Postal 7299 nebo na čísle: 777-2112.', NULL, NULL, 0, 0, 0, '2023-01-03 15:37:23'),
('7p5yQ66C95682L29E6M92742N4h3X4b5876L9N57o35T4va8F9', 'espinoza', 'Sme tu, konečne.', NULL, NULL, 0, 0, 0, '2022-12-19 19:58:34'),
('8249OGKPf6Q615VU1Pe7m5yH7cBd63hqH251NXMpsvBT67bHtO', 'megwillies', 'Potřebujete zboží? Potřebujete někomu něco doručit? Dochází vám zásoby? Kontaktujte nás! ', NULL, NULL, 2, 0, 0, '2022-12-26 12:43:15'),
('91446R4K1io4g6o5zU3T1GpWZm7hUF9t4wiW138f15D44h6gnz', 'bob', 'Nemůžu ho vygooglit. Možná nemam aktualizovaný mapy.', NULL, 'K73hQZWo326Y28V6E64875QK86j8a1a4cX5L47PW735dM4mC2B', 0, 0, 0, '2023-01-01 20:23:32'),
('B345w7U9B3G6D8Uy8r73BYK2857xhfnT44jS528uvJp78f78wO', 'morgenos', 'Dobrý deň, pobočka The Lost MC má práve otvorené. Pokiaľ máte rozbité auto/motorku, tak sme tu pre Vás. Postal Code 7299 alebo volajte na  650-8426', NULL, NULL, 1, 0, 1, '2023-01-03 19:53:52'),
('d7oT726re6B746t347868238htt2PkQAz9j4OPu2d2544RdSe1', 'voprcálek', 'Sháním auto do k podmínka musí k tomu být papíry a klíče zájemci pište na 2053347\n', NULL, NULL, 0, 0, 0, '2023-02-06 08:50:34'),
('DgeO37MAs3f1s4W3g81455KseVuI5y3IwrH177E52gO3w8m6s4', 'bob', 'Prodám mobily, šperháky a další zboží. ', NULL, NULL, 1, 1, 0, '2023-01-01 20:10:56'),
('dJ144z589WuzX5j6W443O9LF4c8S2r398I61Y7496J2CPF28g5', 'wdl_pd', 'Čus pic', NULL, NULL, 0, 0, 0, '2022-12-19 21:00:22'),
('E44V55T6SJKO3b6MjMqw7U66KPI27NhJwUz8e69nXSs6939kl2', 'frankpill', 'Dobrý den, pobočka The Lost MC se právě otevírá. Pokud máte rozbité auto nebo motorku, jsme tu pro Vás. Postal 7299 nebo nás kontaktujte telefonicky. Těšíme se na návštěvu. ', NULL, NULL, 0, 0, 0, '2023-01-04 16:33:17'),
('HAo5z53w67su1E47F9L93S42g96Y2wIg756962kTdE6857dY7q', 'rogers_tlmc', 'Dílna The Lost MC má votevřeno. Jsme drahý, nepříjemný a nemáme rádi lidi. Nejezděte.', NULL, NULL, 0, 0, 0, '2023-01-11 15:52:50'),
('k394q4ww4GpH73g3hVT1Gq192xK323m19463cE1Fp91W9Z3393', 'wdl_pd', 'I\'m on top of the world!', '[\"https://cdn.discordapp.com/attachments/1040997086130356285/1062474587545272431/upload.png\"]', NULL, 0, 0, 0, '2023-01-10 20:55:48'),
('K73hQZWo326Y28V6E64875QK86j8a1a4cX5L47PW735dM4mC2B', 'mikoš', 'skúste pawnshop', NULL, 'u9ZrS4498giKY1xIWwo1n98OKts28Ty5afD37221l3J2K3oo7X', 0, 1, 0, '2023-01-01 20:21:51'),
('Q2896TvIV54HC11zOMXgT8715U2U9M9gXkh6386i36oS2U26zI', 'lsgc_official', 'LSGC OPEN! \nnájdete nás pri PDM', NULL, NULL, 0, 0, 0, '2023-01-22 14:49:30'),
('rNj73A4843Xa6222U81T475249v1999F52f7c8RIp791y5632I', 'lsgc_official', 'Ammu pri PDM OPEN!', NULL, NULL, 0, 1, 1, '2023-01-31 15:59:59'),
('s37751Fa8h8AgZ15l79hE2D9h13K68T2X54EL916h45u9W9f65', 'jay', 'nabira nijka dielna nove lidi?\n', NULL, NULL, 0, 0, 0, '2023-01-31 14:49:13'),
('u9ZrS4498giKY1xIWwo1n98OKts28Ty5afD37221l3J2K3oo7X', 'bob', 'Kde je zástavárna? ', NULL, '7k4jk8N18GgF8Ar2py464Q5n8HB6fQ4hW39m2l458R91tB42vz', 0, 1, 0, '2023-01-01 20:20:55'),
('y7G92cF62NpY7cx4jij3WV93183hY129Ube6cq5QNP4yh96q7W', 'lsgc_official', 'Ammu OPEN! DO 21:30', NULL, NULL, 0, 0, 0, '2023-01-22 19:57:50'),
('Z6E55r358bOf376iU236a41f6VZC1aaL3964MQ851ueZc4cWmP', 'autoexotic', 'Máte utopený vůz? Vaše škoda, naše radost. Vykoupíme od Vás vůz za nejlepší cenu na trhu!', '[\"https://cdn.discordapp.com/attachments/1040997086130356285/1062048935855783978/upload.png\"]', NULL, 0, 0, 0, '2023-01-10 16:41:46');

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_wallet_transactions`
--

CREATE TABLE `phone_wallet_transactions` (
  `id` int(11) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `amount` int(11) NOT NULL,
  `company` varchar(50) NOT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `phone_wallet_transactions`
--

INSERT INTO `phone_wallet_transactions` (`id`, `phone_number`, `amount`, `company`, `logo`, `timestamp`) VALUES
(1, '3202921', -1, 'Anthony Woods', 'https://cdn.discordapp.com/attachments/1040997086130356285/1054507560784384051/upload.png', '2022-12-19 21:18:40'),
(2, '6508484', 1, '3202921', NULL, '2022-12-19 21:18:40'),
(3, '2057643', -1, '7772112', NULL, '2023-01-01 14:55:43'),
(4, '7772112', 1, 'Thomas\'s Phone ', NULL, '2023-01-01 14:55:43');

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_yellow_pages_posts`
--

CREATE TABLE `phone_yellow_pages_posts` (
  `id` varchar(50) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `attachment` varchar(500) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `radiocar_music`
--

CREATE TABLE `radiocar_music` (
  `id` int(11) NOT NULL,
  `label` varchar(64) NOT NULL,
  `url` varchar(256) NOT NULL,
  `plate` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `radiocar_music`
--

INSERT INTO `radiocar_music` (`id`, `label`, `url`, `plate`) VALUES
(1, 'Yakuza song', 'https://www.youtube.com/watch?v=3aBhs9PDvBY', '32ZDA306'),
(2, 'Left&Right', 'https://www.youtube.com/watch?v=gnltybm3QuA', '32ZDA306');

-- --------------------------------------------------------

--
-- Struktura tabulky `radiocar_owned`
--

CREATE TABLE `radiocar_owned` (
  `id` int(11) NOT NULL,
  `spz` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `sprays`
--

CREATE TABLE `sprays` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `x` float(8,4) NOT NULL,
  `y` float(8,4) NOT NULL,
  `z` float(8,4) NOT NULL,
  `origX` float(8,4) NOT NULL,
  `origY` float(8,4) NOT NULL,
  `origZ` float(8,4) NOT NULL,
  `rx` float(8,4) NOT NULL,
  `ry` float(8,4) NOT NULL,
  `rz` float(8,4) NOT NULL,
  `scale` float(8,4) NOT NULL,
  `text` varchar(32) DEFAULT NULL,
  `image` varchar(64) DEFAULT NULL,
  `imageDict` varchar(64) DEFAULT NULL,
  `font` varchar(32) DEFAULT NULL,
  `color` varchar(32) DEFAULT NULL,
  `interior` int(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `sqz_drugs_planted`
--

CREATE TABLE `sqz_drugs_planted` (
  `EntityCoords` varchar(500) DEFAULT NULL,
  `Fertilizer` varchar(50) DEFAULT NULL,
  `Water` varchar(50) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `Quality` varchar(50) DEFAULT NULL,
  `EntityLocationId` varchar(50) DEFAULT NULL,
  `Owner` varchar(46) DEFAULT NULL,
  `EntityProp` varchar(50) DEFAULT NULL,
  `PlantedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `sqz_drugs_planted`
--

INSERT INTO `sqz_drugs_planted` (`EntityCoords`, `Fertilizer`, `Water`, `Status`, `Quality`, `EntityLocationId`, `Owner`, `EntityProp`, `PlantedAt`) VALUES
('{\"x\":1879.6888427734376,\"y\":3690.77490234375,\"z\":32.54201507568359}', '20', '0', '100', '14', '1', 'char2:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', 'bkr_prop_weed_lrg_01b', '2022-12-29 18:20:58'),
('{\"x\":957.3875732421875,\"y\":-108.92772674560547,\"z\":73.40967559814453}', '5', '0', '100', '5', '1', 'char1:6da4d857b509dd6583ba6782a8301d467bf36380', 'bkr_prop_weed_lrg_01b', '2023-01-10 22:52:07'),
('{\"x\":954.6588745117188,\"y\":-111.35979461669922,\"z\":73.41033172607422}', '5', '0', '100', '5', '1', 'char1:6da4d857b509dd6583ba6782a8301d467bf36380', 'bkr_prop_weed_lrg_01b', '2023-01-10 22:52:21'),
('{\"x\":955.7650756835938,\"y\":-112.44430541992188,\"z\":73.41031646728516}', '5', '0', '100', '5', '1', 'char1:6da4d857b509dd6583ba6782a8301d467bf36380', 'bkr_prop_weed_lrg_01b', '2023-01-10 22:52:36'),
('{\"x\":956.5651245117188,\"y\":-113.36746978759766,\"z\":73.41032409667969}', '5', '0', '100', '5', '1', 'char1:6da4d857b509dd6583ba6782a8301d467bf36380', 'bkr_prop_weed_lrg_01b', '2023-01-10 22:52:47'),
('{\"x\":957.4910888671875,\"y\":-114.30667114257813,\"z\":73.41031646728516}', '5', '0', '100', '5', '1', 'char1:6da4d857b509dd6583ba6782a8301d467bf36380', 'bkr_prop_weed_lrg_01b', '2023-01-10 22:53:00'),
('{\"x\":958.3357543945313,\"y\":-115.25406646728516,\"z\":73.41032409667969}', '5', '0', '100', '5', '1', 'char1:6da4d857b509dd6583ba6782a8301d467bf36380', 'bkr_prop_weed_lrg_01b', '2023-01-10 22:53:10'),
('{\"x\":958.3245239257813,\"y\":-109.864013671875,\"z\":73.40966796875}', '5', '0', '100', '5', '1', 'char1:6da4d857b509dd6583ba6782a8301d467bf36380', 'bkr_prop_weed_lrg_01b', '2023-01-10 22:53:24'),
('{\"x\":959.188232421875,\"y\":-110.76695251464844,\"z\":73.40966033935547}', '5', '0', '100', '5', '1', 'char1:6da4d857b509dd6583ba6782a8301d467bf36380', 'bkr_prop_weed_lrg_01b', '2023-01-10 22:53:34'),
('{\"x\":960.0962524414063,\"y\":-111.69818878173828,\"z\":73.40966033935547}', '5', '0', '100', '5', '1', 'char1:6da4d857b509dd6583ba6782a8301d467bf36380', 'bkr_prop_weed_lrg_01b', '2023-01-10 22:53:43'),
('{\"x\":961.1538696289063,\"y\":-112.77503967285156,\"z\":73.40965270996094}', '5', '0', '100', '5', '1', 'char1:6da4d857b509dd6583ba6782a8301d467bf36380', 'bkr_prop_weed_lrg_01b', '2023-01-10 22:53:53'),
('{\"x\":956.2042236328125,\"y\":-110.33049774169922,\"z\":73.41000366210938}', '5', '0', '100', '5', '1', 'char1:6da4d857b509dd6583ba6782a8301d467bf36380', 'bkr_prop_weed_lrg_01b', '2023-01-10 22:54:08'),
('{\"x\":957.232177734375,\"y\":-111.32958984375,\"z\":73.40998840332031}', '5', '0', '100', '5', '1', 'char1:6da4d857b509dd6583ba6782a8301d467bf36380', 'bkr_prop_weed_lrg_01b', '2023-01-10 22:54:18'),
('{\"x\":958.1629638671875,\"y\":-112.25194549560547,\"z\":73.40998077392578}', '5', '0', '100', '5', '1', 'char1:6da4d857b509dd6583ba6782a8301d467bf36380', 'bkr_prop_weed_lrg_01b', '2023-01-10 22:54:28'),
('{\"x\":959.0904541015625,\"y\":-113.20682525634766,\"z\":73.40997314453125}', '5', '0', '100', '5', '1', 'char1:6da4d857b509dd6583ba6782a8301d467bf36380', 'bkr_prop_weed_lrg_01b', '2023-01-10 22:54:38'),
('{\"x\":959.9176635742188,\"y\":-114.073486328125,\"z\":73.40997314453125}', '5', '0', '100', '5', '1', 'char1:6da4d857b509dd6583ba6782a8301d467bf36380', 'bkr_prop_weed_lrg_01b', '2023-01-10 22:54:49');

-- --------------------------------------------------------

--
-- Struktura tabulky `users`
--

CREATE TABLE `users` (
  `identifier` varchar(46) NOT NULL,
  `id` int(11) NOT NULL,
  `group` varchar(50) DEFAULT 'user',
  `skin` longtext DEFAULT NULL,
  `job` varchar(20) DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `accounts` longtext DEFAULT NULL,
  `inventory` longtext DEFAULT NULL,
  `loadout` longtext DEFAULT NULL,
  `position` varchar(100) DEFAULT '{"x":-245.89,"y":-924.75,"z":32.31,"heading":336.98}',
  `firstname` varchar(50) DEFAULT '',
  `lastname` varchar(50) DEFAULT '',
  `dateofbirth` varchar(25) DEFAULT NULL,
  `sex` varchar(10) DEFAULT '',
  `height` varchar(5) DEFAULT '',
  `status` longtext DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT 0,
  `phone_number` varchar(10) DEFAULT NULL,
  `tattoos` varchar(255) DEFAULT '{}',
  `jail` int(11) NOT NULL DEFAULT 0,
  `skills` longtext DEFAULT NULL,
  `secondjob` varchar(32) NOT NULL DEFAULT 'unemployed',
  `secondjob_grade` varchar(32) NOT NULL DEFAULT '0',
  `last_property` varchar(255) DEFAULT NULL,
  `hotbar` longtext DEFAULT NULL,
  `garage_limit` int(10) DEFAULT 7,
  `disabled` tinyint(1) DEFAULT 0,
  `callsign` longtext DEFAULT NULL,
  `profilepic` varchar(500) DEFAULT NULL,
  `duty` int(11) DEFAULT 0,
  `lore` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Vypisuji data pro tabulku `users`
--

INSERT INTO `users` (`identifier`, `id`, `group`, `skin`, `job`, `job_grade`, `accounts`, `inventory`, `loadout`, `position`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `status`, `is_dead`, `phone_number`, `tattoos`, `jail`, `skills`, `secondjob`, `secondjob_grade`, `last_property`, `hotbar`, `garage_limit`, `disabled`, `callsign`, `profilepic`, `duty`, `lore`) VALUES
('char1:04022f9b1b575b1061e1a192e10c241fe87707fd', 0, 'user', NULL, 'unemployed', 0, '{\"bank\":8075,\"black_money\":0,\"money\":1650}', '[{\"slot\":1,\"name\":\"money\",\"count\":1650},{\"slot\":2,\"name\":\"lockpick\",\"count\":1}]', '[]', '{\"y\":-979.8,\"z\":29.4,\"heading\":0.0,\"x\":267.9}', 'marco', 'markeb', '2000-04-20', 'm', '184', '[{\"val\":952400,\"name\":\"hunger\",\"percent\":95.24000000000001},{\"val\":938800,\"name\":\"thirst\",\"percent\":93.88},{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 1, NULL, '{}', 0, '{\"Síla\":{\"Current\":5.3,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STRENGTH\"},\"Zámky\":{\"Current\":0,\"RemoveAmount\":-0.02,\"Stat\":\"\"},\"Řízení\":{\"Current\":0.66999999999999,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_DRIVING_ABILITY\"},\"Střelba\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_SHOOTING_ABILITY\"},\"Výdrž\":{\"Current\":4.85,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STAMINA\"},\"Kapacita plic\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_LUNG_CAPACITY\"}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, 'som lovaty ako fedo'),
('char1:0726a36685b5b4406e5a41643bb2bed27c8275e7', 0, 'user', NULL, 'unemployed', 0, '{\"money\":139,\"bank\":9075,\"black_money\":0}', '[{\"name\":\"money\",\"slot\":1,\"count\":139},{\"name\":\"id\",\"slot\":2,\"metadata\":{\"description\":\"Jméno a příjmení: Mia Santy\\n\\nDatum narození: 07/09/2002\\n\\nPohlaví: žena\\n\\nVýška: 168cm\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2022-12-28 o 01:11:00\"},\"count\":1},{\"name\":\"redwcig\",\"slot\":3,\"count\":20},{\"name\":\"blocek\",\"slot\":4,\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: 2GANM088\\n\\nSuma: 86$\\n\\nPodpis: Mia Santy\\n\\nDatum vydání: 2022-12-28 o 01:18:40\"},\"count\":1}]', '[]', '{\"heading\":0.0,\"z\":74.1,\"y\":-151.6,\"x\":905.0}', 'Mia', 'Santy', '2002-09-07', 'f', '168', '[{\"val\":948550,\"percent\":94.855,\"name\":\"hunger\"},{\"val\":933850,\"percent\":93.38499999999999,\"name\":\"thirst\"},{\"val\":0,\"percent\":0.0,\"name\":\"drunk\"}]', 0, NULL, '{}', 0, '{\"Řízení\":{\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01,\"Current\":1.47},\"Výdrž\":{\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05,\"Current\":6.2},\"Zámky\":{\"Stat\":\"\",\"RemoveAmount\":-0.02,\"Current\":0},\"Střelba\":{\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01,\"Current\":0},\"Kapacita plic\":{\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01,\"Current\":0},\"Síla\":{\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05,\"Current\":5.3}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:08b92adb13c370a0ee3f6d9c6da9b21eeab5f160', 0, 'user', NULL, 'taxi', 0, '{\"bank\":7350,\"black_money\":0,\"money\":250}', '[{\"name\":\"money\",\"count\":250,\"slot\":1},{\"name\":\"phone\",\"metadata\":{\"lbPhoneNumber\":\"9073711\"},\"count\":1,\"slot\":2},{\"name\":\"id\",\"metadata\":{\"description\":\"Jméno a příjmení: Joe Wington\\n\\nDatum narození: 24/02/2000\\n\\nPohlaví: muž\\n\\nVýška: 190cm\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2023-01-03 o 20:36:06\"},\"count\":1,\"slot\":3},{\"name\":\"dl\",\"metadata\":{\"description\":\"Jméno a příjmení: Joe Wington\\n\\nDatum narození: 24/02/2000\\n\\nPohlaví: muž\\n\\nVýška: 190cm\\n\\nSkupiny: A B \\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2023-01-03 o 20:43:11\"},\"count\":1,\"slot\":4},{\"name\":\"lockpick\",\"count\":1,\"slot\":5},{\"name\":\"lahev\",\"count\":1,\"slot\":6}]', '[]', '{\"heading\":0.0,\"x\":896.1,\"y\":-92.1,\"z\":78.8}', 'Joe', 'Wington', '2000-02-24', 'm', '190', '[{\"percent\":88.69500000000001,\"name\":\"hunger\",\"val\":886950},{\"percent\":85.465,\"name\":\"thirst\",\"val\":854650},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, NULL, '{}', 0, '{\"Výdrž\":{\"Stat\":\"MP0_STAMINA\",\"Current\":13.69999999999998,\"RemoveAmount\":-0.05},\"Řízení\":{\"Stat\":\"MP0_DRIVING_ABILITY\",\"Current\":0.2,\"RemoveAmount\":-0.01},\"Kapacita plic\":{\"Stat\":\"MP0_LUNG_CAPACITY\",\"Current\":0,\"RemoveAmount\":-0.01},\"Síla\":{\"Stat\":\"MP0_STRENGTH\",\"Current\":4.5,\"RemoveAmount\":-0.05},\"Zámky\":{\"Stat\":\"\",\"Current\":0,\"RemoveAmount\":-0.02},\"Střelba\":{\"Stat\":\"MP0_SHOOTING_ABILITY\",\"Current\":0,\"RemoveAmount\":-0.01}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:096a1174e562cec8470b3f647f45b3f0d5cf93e1', 0, 'user', NULL, 'exotic', 3, '{\"money\":0,\"bank\":6925,\"black_money\":0}', '[{\"slot\":1,\"count\":1,\"name\":\"lockpick\"},{\"count\":1,\"slot\":21,\"metadata\":{\"type\":1},\"name\":\"klice_5\"},{\"count\":1,\"slot\":22,\"metadata\":{\"type\":1},\"name\":\"klice_4\"},{\"count\":1,\"slot\":23,\"metadata\":{\"type\":1},\"name\":\"klice_exotic\"},{\"count\":1,\"slot\":24,\"metadata\":{\"size\":[4,16],\"weight\":10,\"container\":\"MZT1673034956\"},\"name\":\"wallet\"},{\"count\":1,\"slot\":25,\"metadata\":{\"lbPhoneNumber\":\"3550358\"},\"name\":\"phone\"},{\"slot\":19,\"count\":5,\"name\":\"taco\"},{\"slot\":20,\"count\":4,\"name\":\"water\"},{\"count\":1,\"slot\":4,\"metadata\":{\"components\":[],\"durability\":99.00000000000002},\"name\":\"WEAPON_SWITCHBLADE\"}]', '[]', '{\"z\":54.5,\"y\":-175.8,\"x\":528.3,\"heading\":0.0}', 'Ryuu', 'Shinji', '1978-10-12', 'm', '178', '[{\"val\":554100,\"percent\":55.41,\"name\":\"hunger\"},{\"val\":426700,\"percent\":42.67,\"name\":\"thirst\"},{\"val\":0,\"percent\":0.0,\"name\":\"drunk\"}]', 0, NULL, '{}', 0, '{\"Výdrž\":{\"Current\":8.09999999999998,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STAMINA\"},\"Síla\":{\"Current\":3.95,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STRENGTH\"},\"Řízení\":{\"Current\":5.08,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_DRIVING_ABILITY\"},\"Zámky\":{\"Current\":0,\"RemoveAmount\":-0.02,\"Stat\":\"\"},\"Kapacita plic\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_LUNG_CAPACITY\"},\"Střelba\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_SHOOTING_ABILITY\"}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, 'Lore postavy v lore frakcii'),
('char1:096ef042a53693ea143c5a94ab61957ab76df1ab', 0, 'user', NULL, 'garbage', 0, '{\"black_money\":0,\"bank\":8100,\"money\":435}', '[{\"name\":\"money\",\"slot\":1,\"count\":435},{\"name\":\"weed\",\"slot\":2,\"count\":1},{\"name\":\"joint\",\"slot\":3,\"count\":6},{\"name\":\"zahradnicky_kos\",\"slot\":4,\"count\":1},{\"name\":\"lopatka\",\"slot\":5,\"count\":1},{\"name\":\"phone\",\"slot\":6,\"count\":1},{\"name\":\"lockpick\",\"slot\":7,\"count\":2},{\"name\":\"id\",\"count\":1,\"slot\":8,\"metadata\":{\"description\":\"Jméno a příjmení: John Smith\\n\\nDatum narození: 01/01/1999\\n\\nPohlaví: muž\\n\\nVýška: 175cm\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2023-02-09 o 12:39:35\"}},{\"name\":\"krhle\",\"slot\":9,\"count\":1},{\"name\":\"clothe\",\"slot\":10,\"count\":33},{\"name\":\"pet\",\"slot\":12,\"count\":2},{\"name\":\"lahev\",\"slot\":13,\"count\":1},{\"name\":\"rolling_paper\",\"slot\":14,\"count\":5}]', '[]', '{\"x\":342.1,\"heading\":0.0,\"z\":104.3,\"y\":308.1}', 'John', 'Smith', '1999-01-01', 'm', '175', '[{\"val\":969900,\"name\":\"hunger\",\"percent\":96.99},{\"val\":961300,\"name\":\"thirst\",\"percent\":96.13000000000001},{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, NULL, '{}', 0, '{\"Řízení\":{\"Current\":13.03999999999997,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_DRIVING_ABILITY\"},\"Střelba\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_SHOOTING_ABILITY\"},\"Síla\":{\"Current\":4.6,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STRENGTH\"},\"Výdrž\":{\"Current\":18.89999999999993,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STAMINA\"},\"Zámky\":{\"Current\":0,\"RemoveAmount\":-0.02,\"Stat\":\"\"},\"Kapacita plic\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_LUNG_CAPACITY\"}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:09bd2ceb267e8769174dea3bcfbcccf87517aa7a', 0, 'user', NULL, 'taxi', 0, '{\"black_money\":0,\"money\":557,\"bank\":363571}', '[{\"slot\":1,\"name\":\"phone\",\"count\":1},{\"slot\":2,\"name\":\"WEAPON_STUNGUN\",\"metadata\":{\"durability\":100,\"components\":[],\"registered\":\"Frank Lucas\"},\"count\":1},{\"slot\":4,\"name\":\"WEAPON_KNIFE\",\"metadata\":{\"durability\":100,\"components\":[]},\"count\":1},{\"slot\":5,\"name\":\"WEAPON_COMBATPISTOL\",\"metadata\":{\"durability\":100,\"serial\":\"ITO1245643773\",\"ammo\":0,\"components\":[],\"registered\":\"Frank Lucas\"},\"count\":1},{\"slot\":6,\"name\":\"water\",\"count\":5},{\"slot\":7,\"name\":\"bandage\",\"count\":21},{\"slot\":8,\"name\":\"cola\",\"count\":4},{\"slot\":9,\"name\":\"clothe\",\"count\":37},{\"slot\":10,\"name\":\"burger\",\"count\":1},{\"slot\":11,\"name\":\"money\",\"count\":557},{\"slot\":12,\"name\":\"lockpick\",\"count\":14},{\"slot\":13,\"name\":\"weed\",\"count\":10},{\"slot\":16,\"name\":\"WEAPON_COMBATPISTOL\",\"metadata\":{\"durability\":100,\"serial\":\"BOU5529687894\",\"ammo\":0,\"components\":[],\"registered\":\"Frank Lucas\"},\"count\":1},{\"slot\":17,\"name\":\"WEAPON_COMBATPISTOL\",\"metadata\":{\"durability\":100,\"serial\":\"AHH7705333851\",\"ammo\":0,\"components\":[],\"registered\":\"Frank Lucas\"},\"count\":1},{\"slot\":18,\"name\":\"phone\",\"count\":1},{\"slot\":19,\"name\":\"phone\",\"count\":1},{\"slot\":20,\"name\":\"phone\",\"count\":1},{\"slot\":21,\"name\":\"phone\",\"count\":1},{\"slot\":22,\"name\":\"phone\",\"count\":1},{\"slot\":23,\"name\":\"phone\",\"count\":1},{\"slot\":24,\"name\":\"phone\",\"count\":1},{\"slot\":25,\"name\":\"phone\",\"count\":1}]', '[]', '{\"x\":2424.1,\"heading\":0.0,\"z\":51.0,\"y\":3118.9}', 'Frank', 'Lucas', '1988-01-26', 'm', '199', '[{\"val\":939350,\"percent\":93.935,\"name\":\"hunger\"},{\"val\":860500,\"percent\":86.05000000000001,\"name\":\"thirst\"},{\"val\":0,\"percent\":0.0,\"name\":\"drunk\"}]', 0, NULL, '{}', 0, '{\"Řízení\":{\"Stat\":\"MP0_DRIVING_ABILITY\",\"Current\":44.85000000000024,\"RemoveAmount\":-0.01},\"Výdrž\":{\"Stat\":\"MP0_STAMINA\",\"Current\":29.6999999999998,\"RemoveAmount\":-0.05},\"Střelba\":{\"Stat\":\"MP0_SHOOTING_ABILITY\",\"Current\":0,\"RemoveAmount\":-0.01},\"Zámky\":{\"Stat\":\"\",\"Current\":0,\"RemoveAmount\":-0.02},\"Kapacita plic\":{\"Stat\":\"MP0_LUNG_CAPACITY\",\"Current\":0,\"RemoveAmount\":-0.01},\"Síla\":{\"Stat\":\"MP0_STRENGTH\",\"Current\":0.74999999999995,\"RemoveAmount\":-0.05}}', 'lostmc', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:0f28049c7aa4aa48bd211a8555a26c730f6e5a35', 0, 'user', NULL, 'taxi', 0, '{\"bank\":6975,\"black_money\":0,\"money\":3221}', '[{\"name\":\"money\",\"slot\":1,\"count\":3221},{\"name\":\"lighter\",\"slot\":2,\"count\":1},{\"name\":\"id\",\"metadata\":{\"description\":\"Jméno a příjmení: James Lucky\\n\\nDatum narození: 2000-12-22\\n\\nPohlaví: muž\\n\\nVýška: 190cm\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2023-01-05 o 00:30:28\"},\"slot\":3,\"count\":1},{\"name\":\"phone\",\"metadata\":{\"lbPhoneNumber\":\"5551314\"},\"slot\":7,\"count\":1},{\"name\":\"dl\",\"metadata\":{\"description\":\"Jméno a příjmení: James Lucky\\n\\nDatum narození: 2000-12-22\\n\\nPohlaví: muž\\n\\nVýška: 190cm\\n\\nSkupiny: B \\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2023-01-05 o 00:36:22\"},\"slot\":8,\"count\":1}]', '[]', '{\"x\":-189.5,\"heading\":0.0,\"z\":31.3,\"y\":-1303.9}', 'James', 'Lucky', '2000-12-22', 'm', '190', '[{\"percent\":74.1,\"name\":\"hunger\",\"val\":741000},{\"percent\":66.925,\"name\":\"thirst\",\"val\":669250},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, NULL, '{}', 0, '{\"Kapacita plic\":{\"RemoveAmount\":-0.01,\"Stat\":\"MP0_LUNG_CAPACITY\",\"Current\":0},\"Zámky\":{\"RemoveAmount\":-0.02,\"Stat\":\"\",\"Current\":0},\"Výdrž\":{\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STAMINA\",\"Current\":13.79999999999993},\"Střelba\":{\"RemoveAmount\":-0.01,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"Current\":0},\"Řízení\":{\"RemoveAmount\":-0.01,\"Stat\":\"MP0_DRIVING_ABILITY\",\"Current\":9.54999999999997},\"Síla\":{\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STRENGTH\",\"Current\":2.85}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, 'Do Ls odcestoval abych našel nový smysl života. Po dokončení školy jsem pracoval ve svém rodném městě v jisté tovarně, která mě už odpočatku nebavila. Po rozchodu s mou přitelkyni mě už nic v mém rodném městě nedrží. A tak jsem rozhodl přestěhovat se do LS a čekat co mi osud nadělí '),
('char1:1252cf8da5469a0a35e7bd91cabfce2743a1a38c', 0, 'user', NULL, 'unemployed', 0, '{\"black_money\":0,\"bank\":9000,\"money\":1000}', '[{\"slot\":1,\"count\":1000,\"name\":\"money\"}]', '[]', '{\"z\":21.4,\"heading\":0.0,\"x\":-1045.9,\"y\":-2749.5}', 'John', 'Smith', '2000-01-01', 'm', '200', '[{\"percent\":98.53,\"val\":985300,\"name\":\"hunger\"},{\"percent\":98.11,\"val\":981100,\"name\":\"thirst\"},{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"}]', 0, NULL, '{}', 0, '{\"Zámky\":{\"Stat\":\"\",\"Current\":0,\"RemoveAmount\":-0.02},\"Výdrž\":{\"Stat\":\"MP0_STAMINA\",\"Current\":4.95,\"RemoveAmount\":-0.05},\"Řízení\":{\"Stat\":\"MP0_DRIVING_ABILITY\",\"Current\":0,\"RemoveAmount\":-0.01},\"Střelba\":{\"Stat\":\"MP0_SHOOTING_ABILITY\",\"Current\":0,\"RemoveAmount\":-0.01},\"Síla\":{\"Stat\":\"MP0_STRENGTH\",\"Current\":5,\"RemoveAmount\":-0.05},\"Kapacita plic\":{\"Stat\":\"MP0_LUNG_CAPACITY\",\"Current\":0,\"RemoveAmount\":-0.01}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:15dca8e7dadde08708d93f78369189282a69b94f', 0, 'user', NULL, 'taxi', 0, '{\"bank\":6575,\"black_money\":0,\"money\":472}', '[{\"name\":\"money\",\"slot\":1,\"count\":472},{\"metadata\":{\"lbPhoneNumber\":\"6025112\"},\"name\":\"phone\",\"slot\":2,\"count\":1}]', '[]', '{\"x\":-57.4,\"y\":-1096.5,\"z\":26.4,\"heading\":0.0}', 'Goku', 'Machida', '1999-08-22', 'm', '180', '[{\"percent\":85.055,\"name\":\"hunger\",\"val\":850550},{\"percent\":80.785,\"name\":\"thirst\",\"val\":807850},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, NULL, '{}', 0, '{\"Zámky\":{\"Current\":0,\"Stat\":\"\",\"RemoveAmount\":-0.02},\"Výdrž\":{\"Current\":8.94999999999998,\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05},\"Síla\":{\"Current\":5.9,\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05},\"Řízení\":{\"Current\":1.20999999999999,\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01},\"Střelba\":{\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01},\"Kapacita plic\":{\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:16a0801acc1703cc72dadc5fe391cb530e97d6d9', 0, 'user', NULL, 'taxi', 0, '{\"black_money\":0,\"money\":1719,\"bank\":9150}', '[{\"name\":\"money\",\"count\":1719,\"slot\":1},{\"name\":\"phone\",\"metadata\":{\"lbPhoneNumber\":\"3208241\"},\"count\":1,\"slot\":2},{\"name\":\"lockpick\",\"count\":1,\"slot\":3},{\"name\":\"water\",\"count\":1,\"slot\":4},{\"name\":\"lahev\",\"count\":1,\"slot\":5}]', '[]', '{\"z\":74.2,\"y\":-153.1,\"x\":907.5,\"heading\":0.0}', 'Matis', 'Johns', '1988-02-05', 'm', '185', '[{\"name\":\"hunger\",\"percent\":88.485,\"val\":884850},{\"name\":\"thirst\",\"percent\":97.66,\"val\":976600},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', 0, NULL, '{}', 0, '{\"Výdrž\":{\"Current\":6.45,\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05},\"Kapacita plic\":{\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01},\"Síla\":{\"Current\":4.5,\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05},\"Zámky\":{\"Current\":0,\"Stat\":\"\",\"RemoveAmount\":-0.02},\"Řízení\":{\"Current\":2.45,\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01},\"Střelba\":{\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:17293efb639d556f89c41586733c5404b0cdca03', 0, 'user', NULL, 'unemployed', 0, '{\"money\":215,\"bank\":9300,\"black_money\":0}', '[{\"name\":\"money\",\"count\":215,\"slot\":1},{\"name\":\"phone\",\"count\":1,\"slot\":6},{\"name\":\"icetea\",\"count\":1,\"slot\":11}]', '[]', '{\"x\":-57.2,\"heading\":0.0,\"z\":26.5,\"y\":-1096.7}', 'Thomas', 'Clark', '2000-01-20', 'm', '180', '[{\"percent\":88.66000000000001,\"val\":886600,\"name\":\"hunger\"},{\"percent\":85.42,\"val\":854200,\"name\":\"thirst\"},{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"}]', 0, NULL, '{}', 0, '{\"Řízení\":{\"RemoveAmount\":-0.01,\"Current\":0.59999999999999,\"Stat\":\"MP0_DRIVING_ABILITY\"},\"Síla\":{\"RemoveAmount\":-0.05,\"Current\":4.5,\"Stat\":\"MP0_STRENGTH\"},\"Výdrž\":{\"RemoveAmount\":-0.05,\"Current\":4.75,\"Stat\":\"MP0_STAMINA\"},\"Kapacita plic\":{\"RemoveAmount\":-0.01,\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\"},\"Střelba\":{\"RemoveAmount\":-0.01,\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\"},\"Zámky\":{\"RemoveAmount\":-0.02,\"Current\":0,\"Stat\":\"\"}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:18e8f68df95ad04b411957eeb7a5cc3a21db38e2', 0, 'user', NULL, 'taxi', 0, '{\"black_money\":0,\"bank\":10575,\"money\":33}', '[{\"count\":33,\"name\":\"money\",\"slot\":1},{\"count\":1,\"name\":\"phone\",\"slot\":2}]', '[]', '{\"heading\":0.0,\"z\":28.5,\"y\":-1127.0,\"x\":10.5}', 'John', 'Smith', '2000-02-09', 'm', '175', '[{\"val\":871900,\"percent\":87.19,\"name\":\"hunger\"},{\"val\":835300,\"percent\":83.53,\"name\":\"thirst\"},{\"val\":0,\"percent\":0.0,\"name\":\"drunk\"}]', 0, NULL, '{}', 0, '{\"Kapacita plic\":{\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01},\"Výdrž\":{\"Current\":5.7,\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05},\"Zámky\":{\"Current\":0,\"Stat\":\"\",\"RemoveAmount\":-0.02},\"Řízení\":{\"Current\":3.7,\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01},\"Síla\":{\"Current\":4.5,\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05},\"Střelba\":{\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:232bfaa0928263934996922f2bc9a0ab3131f66a', 0, 'user', NULL, 'unemployed', 0, '{\"bank\":8592,\"black_money\":0,\"money\":0}', '[{\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: GV97N177\\n\\nSuma: 58$\\n\\nPodpis: David West\\n\\nDatum vydání: 2023-01-22 o 21:18:14\"},\"name\":\"blocek\",\"slot\":1,\"count\":1},{\"metadata\":{\"description\":\"Jméno a příjmení: David West\\n\\nDatum narození: 13/11/1999\\n\\nPohlaví: muž\\n\\nVýška: 175cm\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2023-01-22 o 21:01:49\"},\"name\":\"id\",\"slot\":2,\"count\":1}]', '[]', '{\"x\":324.6,\"y\":-611.2,\"z\":30.9,\"heading\":0.0}', 'David', 'West', '1999-11-13', 'm', '175', '[{\"percent\":92.475,\"name\":\"hunger\",\"val\":924750},{\"percent\":90.325,\"name\":\"thirst\",\"val\":903250},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 1, NULL, '{}', 0, '{\"Výdrž\":{\"Current\":6.25,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STAMINA\"},\"Zámky\":{\"Current\":0,\"RemoveAmount\":-0.02,\"Stat\":\"\"},\"Kapacita plic\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_LUNG_CAPACITY\"},\"Síla\":{\"Current\":4.7,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STRENGTH\"},\"Střelba\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_SHOOTING_ABILITY\"},\"Řízení\":{\"Current\":2.94,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_DRIVING_ABILITY\"}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:23f8c202c0ab4358cbccc8d15c574274bfdef213', 0, 'user', NULL, 'unemployed', 0, '{\"bank\":9450,\"black_money\":0,\"money\":16}', '[{\"name\":\"lahev\",\"count\":2,\"slot\":1},{\"name\":\"pet\",\"count\":4,\"slot\":2},{\"name\":\"soda\",\"count\":1,\"slot\":43},{\"name\":\"sandwich\",\"count\":10,\"slot\":44},{\"name\":\"water\",\"count\":1,\"slot\":45},{\"name\":\"money\",\"count\":16,\"slot\":46},{\"name\":\"lockpick\",\"count\":5,\"slot\":47},{\"name\":\"ziptie\",\"count\":1,\"slot\":48}]', '[]', '{\"heading\":0.0,\"x\":938.9,\"y\":-2164.2,\"z\":30.5}', 'Thomas', 'Carter', '1983-09-06', 'm', '186', '[{\"percent\":83.025,\"name\":\"hunger\",\"val\":830250},{\"percent\":78.175,\"name\":\"thirst\",\"val\":781750},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, NULL, '{}', 0, '{\"Síla\":{\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05,\"Current\":4.2},\"Kapacita plic\":{\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01,\"Current\":0},\"Výdrž\":{\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05,\"Current\":16.79999999999997},\"Zámky\":{\"Stat\":\"\",\"RemoveAmount\":-0.02,\"Current\":0},\"Střelba\":{\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01,\"Current\":0},\"Řízení\":{\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01,\"Current\":0}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:247f744443a01af0a36c7f4a45272e162aaf611d', 0, 'user', NULL, 'lsgc', 2, '{\"bank\":9500,\"black_money\":0,\"money\":1000}', '[{\"metadata\":{\"durability\":100,\"registered\":\"Nikolai Gustenavoj\",\"components\":[]},\"name\":\"WEAPON_STUNGUN\",\"slot\":1,\"count\":1},{\"metadata\":{\"ammo\":7,\"registered\":\"Nikolai Gustenavoj\",\"components\":[],\"durability\":99.5,\"serial\":\"429822OAJ374508\"},\"name\":\"WEAPON_PISTOL\",\"slot\":2,\"count\":1},{\"name\":\"ammo-9\",\"slot\":3,\"count\":13},{\"name\":\"phone\",\"slot\":6,\"count\":1},{\"name\":\"money\",\"slot\":11,\"count\":1000}]', '[]', '{\"x\":-2.5,\"y\":-1112.2,\"z\":28.7,\"heading\":0.0}', 'Mack', 'Murphy', '1995-05-05', 'm', '205', '[{\"percent\":94.22500000000001,\"val\":942250,\"name\":\"hunger\"},{\"percent\":92.575,\"val\":925750,\"name\":\"thirst\"},{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"}]', 0, NULL, '{}', 0, '{\"Kapacita plic\":{\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01},\"Výdrž\":{\"Current\":5.35,\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05},\"Řízení\":{\"Current\":5.25,\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01},\"Zámky\":{\"Current\":0,\"Stat\":\"\",\"RemoveAmount\":-0.02},\"Síla\":{\"Current\":4.75,\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05},\"Střelba\":{\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:252400a9738eef79b93a74c5937b0548e469c253', 0, 'user', NULL, 'lostmc', 0, '{\"money\":2000,\"bank\":74999,\"black_money\":0}', '[{\"name\":\"WEAPON_SWITCHBLADE\",\"count\":1,\"metadata\":{\"durability\":100,\"components\":[]},\"slot\":1},{\"name\":\"phone\",\"count\":1,\"metadata\":{\"lbPhoneNumber\":\"7772112\"},\"slot\":2},{\"name\":\"lockpick\",\"count\":12,\"slot\":3},{\"name\":\"money\",\"count\":2000,\"slot\":4},{\"name\":\"klice_lostmc\",\"count\":1,\"slot\":5},{\"name\":\"id\",\"count\":1,\"metadata\":{\"description\":\"Jméno a příjmení: Frank Pill\\n\\nDatum narození: 27/12/1995\\n\\nPohlaví: muž\\n\\nVýška: 180cm\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2023-01-01 o 15:18:46\"},\"slot\":6},{\"name\":\"dl\",\"count\":1,\"metadata\":{\"description\":\"Jméno a příjmení: Frank Pill\\n\\nDatum narození: 27/12/1995\\n\\nPohlaví: muž\\n\\nVýška: 180cm\\n\\nSkupiny: A B C \\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2023-01-01 o 15:26:59\"},\"slot\":7},{\"name\":\"radio\",\"count\":1,\"slot\":8},{\"name\":\"redwcig\",\"count\":18,\"slot\":9},{\"name\":\"lighter\",\"count\":1,\"slot\":10},{\"name\":\"estancigar\",\"count\":6,\"slot\":11},{\"name\":\"pet\",\"count\":2,\"slot\":12}]', '[]', '{\"x\":989.1,\"heading\":0.0,\"z\":74.0,\"y\":-129.8}', 'Frank', 'Pill', '1995-12-27', 'm', '180', '[{\"percent\":90.97,\"val\":909700,\"name\":\"hunger\"},{\"percent\":72.84,\"val\":728400,\"name\":\"thirst\"},{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"}]', 0, NULL, '{}', 0, '{\"Střelba\":{\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01},\"Výdrž\":{\"Current\":41.50000000000002,\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05},\"Kapacita plic\":{\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01},\"Zámky\":{\"Current\":0,\"Stat\":\"\",\"RemoveAmount\":-0.02},\"Síla\":{\"Current\":0,\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05},\"Řízení\":{\"Current\":82.88999999999942,\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01}}', 'taxi', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 0, 'admin', NULL, 'police', 11, '{\"money\":1383,\"black_money\":0,\"bank\":119527}', '[{\"name\":\"WEAPON_CARBINERIFLE_MK2\",\"metadata\":{\"registered\":\"Richard Moore\",\"durability\":92.19999999999992,\"serial\":\"LSPD\",\"ammo\":30,\"components\":[\"at_flashlight\",\"at_scope_medium\",\"at_grip\"]},\"slot\":1,\"count\":1},{\"name\":\"WEAPON_COMBATPISTOL\",\"metadata\":{\"registered\":\"William David Larson\",\"durability\":62.79999999999975,\"serial\":\"LSPD\",\"ammo\":12,\"components\":[\"at_flashlight\"]},\"slot\":2,\"count\":1},{\"name\":\"WEAPON_STUNGUN\",\"metadata\":{\"registered\":\"William David Larson\",\"durability\":98.60000000000002,\"components\":[]},\"slot\":3,\"count\":1},{\"name\":\"klicky\",\"slot\":4,\"count\":1},{\"name\":\"WEAPON_COMBATPISTOL\",\"metadata\":{\"registered\":\"Martin Rogers\",\"durability\":100,\"serial\":\"207612HBX72928331956691036190650499\",\"ammo\":7,\"components\":[]},\"slot\":6,\"count\":1},{\"name\":\"phone\",\"metadata\":{\"lbPhoneNumber\":\"2569241\"},\"slot\":7,\"count\":1},{\"name\":\"radio\",\"slot\":8,\"count\":1},{\"name\":\"id\",\"metadata\":{\"description\":\"Jméno a příjmení: Richard Moore\\n\\nDatum narození: 02/02/1987\\n\\nPohlaví: muž\\n\\nVýška: 198cm\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 19/12/2022 o 20:02:40\"},\"slot\":11,\"count\":1},{\"name\":\"dl\",\"metadata\":{\"description\":\"Jméno a příjmení: Richard Moore\\n\\nDatum narození: 1987-02-02\\n\\nPohlaví: muž\\n\\nVýška: 198cm\\n\\nSkupiny: A B \\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 19/12/2022 o 20:08:57\"},\"slot\":12,\"count\":1},{\"name\":\"money\",\"slot\":13,\"count\":1383},{\"name\":\"klice_lspd\",\"slot\":16,\"count\":1},{\"name\":\"ammo-9\",\"slot\":21,\"count\":178},{\"name\":\"ammo-rifle\",\"slot\":22,\"count\":120},{\"name\":\"spikestrip\",\"slot\":17,\"count\":1}]', '[]', '{\"heading\":0.0,\"z\":30.7,\"y\":-996.4,\"x\":463.3}', 'Richard', 'Moore', '1987-02-02', 'm', '198', '[{\"percent\":70.67,\"name\":\"hunger\",\"val\":706700},{\"percent\":62.29,\"name\":\"thirst\",\"val\":622900},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, NULL, '{}', 0, '{\"Zámky\":{\"Stat\":\"\",\"Current\":0,\"RemoveAmount\":-0.02},\"Síla\":{\"Stat\":\"MP0_STRENGTH\",\"Current\":0,\"RemoveAmount\":-0.05},\"Řízení\":{\"Stat\":\"MP0_DRIVING_ABILITY\",\"Current\":66.04000000000042,\"RemoveAmount\":-0.01},\"Střelba\":{\"Stat\":\"MP0_SHOOTING_ABILITY\",\"Current\":0,\"RemoveAmount\":-0.01},\"Výdrž\":{\"Stat\":\"MP0_STAMINA\",\"Current\":21.14999999999957,\"RemoveAmount\":-0.05},\"Kapacita plic\":{\"Stat\":\"MP0_LUNG_CAPACITY\",\"Current\":0,\"RemoveAmount\":-0.01}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:29e8af7c2585e2bb2a4ac07fbdd1c10288097470', 0, 'user', NULL, 'unemployed', 0, '{\"bank\":9000,\"black_money\":0,\"money\":1000}', '[{\"slot\":1,\"count\":1000,\"name\":\"money\"}]', '[]', '{\"heading\":0.0,\"x\":-850.2,\"y\":-2044.5,\"z\":9.2}', 'Michaelo', 'Alberte', '1997-05-25', 'm', '183', '[{\"name\":\"hunger\",\"percent\":98.6,\"val\":986000},{\"name\":\"thirst\",\"percent\":98.2,\"val\":982000},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', 1, NULL, '{}', 0, '{\"Síla\":{\"Stat\":\"MP0_STRENGTH\",\"Current\":4.95,\"RemoveAmount\":-0.05},\"Kapacita plic\":{\"Stat\":\"MP0_LUNG_CAPACITY\",\"Current\":0,\"RemoveAmount\":-0.01},\"Výdrž\":{\"Stat\":\"MP0_STAMINA\",\"Current\":4.95,\"RemoveAmount\":-0.05},\"Střelba\":{\"Stat\":\"MP0_SHOOTING_ABILITY\",\"Current\":0,\"RemoveAmount\":-0.01},\"Řízení\":{\"Stat\":\"MP0_DRIVING_ABILITY\",\"Current\":0.4,\"RemoveAmount\":-0.01},\"Zámky\":{\"Stat\":\"\",\"Current\":0,\"RemoveAmount\":-0.02}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:2c15ad1014b05141fccab3d9e4ee0a9b55771af1', 0, 'user', NULL, 'unemployed', 0, '{\"money\":600,\"bank\":9000,\"black_money\":0}', '[{\"name\":\"money\",\"slot\":1,\"count\":600}]', '[]', '{\"heading\":0.0,\"x\":-819.7,\"y\":-2241.1,\"z\":17.3}', 'Michael', 'Guarden', '2000-02-02', 'm', '165', '[{\"percent\":99.58,\"val\":995800,\"name\":\"hunger\"},{\"percent\":99.46000000000001,\"val\":994600,\"name\":\"thirst\"},{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"}]', 0, NULL, '{}', 0, '{\"Střelba\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_SHOOTING_ABILITY\"},\"Síla\":{\"Current\":5,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STRENGTH\"},\"Zámky\":{\"Current\":0,\"RemoveAmount\":-0.02,\"Stat\":\"\"},\"Výdrž\":{\"Current\":5.6,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STAMINA\"},\"Řízení\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_DRIVING_ABILITY\"},\"Kapacita plic\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_LUNG_CAPACITY\"}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, '...............................................................................................................,\n'),
('char1:2d7ec2c3711e1357b20a2d5ddb56eb5377e6243d', 0, 'user', NULL, 'lostmc', 3, '{\"bank\":54547,\"black_money\":0,\"money\":77}', '[{\"name\":\"WEAPON_SWITCHBLADE\",\"metadata\":{\"durability\":84.50000000000006,\"components\":[]},\"slot\":2,\"count\":1},{\"name\":\"redwcig\",\"slot\":4,\"count\":11},{\"name\":\"estancigar\",\"slot\":5,\"count\":8},{\"name\":\"lighter\",\"slot\":6,\"count\":1},{\"name\":\"money\",\"slot\":7,\"count\":77},{\"name\":\"bandage\",\"slot\":8,\"count\":1},{\"name\":\"dl\",\"metadata\":{\"description\":\"Jméno a příjmení: Dexter Morgen\\n\\nDatum narození: 17/03/1990\\n\\nPohlaví: muž\\n\\nVýška: 189cm\\n\\nSkupiny: A B \\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2023-01-03 o 16:25:33\"},\"slot\":49,\"count\":1},{\"name\":\"id\",\"metadata\":{\"description\":\"Jméno a příjmení: Dexter Morgen\\n\\nDatum narození: 17/03/1990\\n\\nPohlaví: muž\\n\\nVýška: 189cm\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2023-01-03 o 16:22:11\"},\"slot\":50,\"count\":1},{\"name\":\"radio\",\"slot\":9,\"count\":1},{\"name\":\"phone\",\"metadata\":{\"lbPhoneNumber\":\"6508426\"},\"slot\":10,\"count\":1},{\"name\":\"klice_lostmc\",\"slot\":48,\"count\":1}]', '[]', '{\"x\":966.7,\"heading\":0.0,\"z\":74.4,\"y\":-129.8}', 'Dexter', 'Morgen', '1990-03-17', 'm', '189', '[{\"percent\":93.105,\"name\":\"hunger\",\"val\":931050},{\"percent\":70.09,\"name\":\"thirst\",\"val\":700900},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, NULL, '{}', 0, '{\"Řízení\":{\"Current\":34.9700000000001,\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01},\"Výdrž\":{\"Current\":12.44999999999989,\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05},\"Zámky\":{\"Current\":0,\"Stat\":\"\",\"RemoveAmount\":-0.02},\"Síla\":{\"Current\":3.4,\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05},\"Kapacita plic\":{\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01},\"Střelba\":{\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01}}', 'lostmc', '2', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:30dc648396c5827e37d17745ba9cb7f852018b93', 0, 'user', NULL, 'unemployed', 0, '{\"black_money\":0,\"bank\":6350,\"money\":302}', '[{\"count\":302,\"name\":\"money\",\"slot\":1},{\"count\":1,\"name\":\"phone\",\"slot\":3},{\"count\":1,\"name\":\"wallet\",\"slot\":10,\"metadata\":{\"size\":[4,16],\"container\":\"POB1675669012\",\"weight\":0}}]', '[]', '{\"y\":-727.6,\"x\":338.4,\"heading\":0.0,\"z\":28.6}', 'Karel', 'Voprcálek', '1999-09-01', 'm', '175', '[{\"percent\":97.76,\"name\":\"hunger\",\"val\":977600},{\"percent\":97.11999999999999,\"name\":\"thirst\",\"val\":971200},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 1, NULL, '{}', 0, '{\"Střelba\":{\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01},\"Kapacita plic\":{\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01},\"Zámky\":{\"Current\":0,\"Stat\":\"\",\"RemoveAmount\":-0.02},\"Síla\":{\"Current\":14.99999999999999,\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05},\"Výdrž\":{\"Current\":7.7,\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05},\"Řízení\":{\"Current\":13.00999999999997,\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:35a545786af59fc9e6b5ea598781f0ccb2eee734', 0, 'user', NULL, 'unemployed', 0, '{\"money\":1000,\"black_money\":0,\"bank\":9075}', '[{\"slot\":1,\"count\":1000,\"name\":\"money\"},{\"slot\":2,\"count\":1,\"name\":\"lahev\"}]', '[]', '{\"heading\":0.0,\"z\":29.8,\"y\":-1115.6,\"x\":17.6}', 'Merge', 'Lamp', '1996-02-05', 'm', '197', '[{\"name\":\"hunger\",\"percent\":97.515,\"val\":975150},{\"name\":\"thirst\",\"percent\":96.80499999999999,\"val\":968050},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', 0, NULL, '{}', 0, '{\"Řízení\":{\"Current\":0.59,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_DRIVING_ABILITY\"},\"Střelba\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_SHOOTING_ABILITY\"},\"Kapacita plic\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_LUNG_CAPACITY\"},\"Síla\":{\"Current\":5.4,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STRENGTH\"},\"Zámky\":{\"Current\":0,\"RemoveAmount\":-0.02,\"Stat\":\"\"},\"Výdrž\":{\"Current\":5.1,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STAMINA\"}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:37cfd0af93bfeb6cd39d37fed75696d61e4e824b', 0, 'user', NULL, 'unemployed', 0, '{\"bank\":9150,\"black_money\":0,\"money\":1800}', '[{\"count\":1800,\"slot\":1,\"name\":\"money\"},{\"count\":1,\"slot\":2,\"name\":\"pet\"},{\"count\":1,\"slot\":3,\"name\":\"lockpick\"}]', '[]', '{\"heading\":0.0,\"z\":26.5,\"y\":-1093.8,\"x\":-65.2}', 'Levi', 'Kane', '1995-09-26', 'm', '180', '[{\"val\":941200,\"percent\":94.12,\"name\":\"hunger\"},{\"val\":924400,\"percent\":92.44,\"name\":\"thirst\"},{\"val\":0,\"percent\":0.0,\"name\":\"drunk\"}]', 0, NULL, '{}', 0, '{\"Síla\":{\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STRENGTH\",\"Current\":4.75},\"Střelba\":{\"RemoveAmount\":-0.01,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"Current\":0},\"Řízení\":{\"RemoveAmount\":-0.01,\"Stat\":\"MP0_DRIVING_ABILITY\",\"Current\":2.66},\"Zámky\":{\"RemoveAmount\":-0.02,\"Stat\":\"\",\"Current\":0},\"Výdrž\":{\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STAMINA\",\"Current\":4.95},\"Kapacita plic\":{\"RemoveAmount\":-0.01,\"Stat\":\"MP0_LUNG_CAPACITY\",\"Current\":0}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:3b7f86eb8ce13339274a5930d2ec53a43fb516d0', 0, 'user', NULL, 'unemployed', 0, '{\"money\":150,\"bank\":7150,\"black_money\":0}', '[{\"name\":\"money\",\"slot\":1,\"count\":150},{\"name\":\"alkohol\",\"slot\":2,\"count\":1},{\"name\":\"clothe\",\"slot\":3,\"count\":1}]', '[]', '{\"heading\":0.0,\"x\":286.1,\"y\":-550.5,\"z\":42.7}', 'Mojmír', 'Dojebal', '2000-04-01', 'm', '175', '[{\"val\":996850,\"percent\":99.685,\"name\":\"hunger\"},{\"val\":995950,\"percent\":99.595,\"name\":\"thirst\"},{\"val\":0,\"percent\":0.0,\"name\":\"drunk\"}]', 0, NULL, '{}', 0, '{\"Zámky\":{\"Current\":0,\"Stat\":\"\",\"RemoveAmount\":-0.02},\"Kapacita plic\":{\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01},\"Síla\":{\"Current\":6.3,\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05},\"Výdrž\":{\"Current\":5.2,\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05},\"Řízení\":{\"Current\":1.56,\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01},\"Střelba\":{\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:403cf4beedbb72c856ac74279958e765a0b61dd5', 0, 'user', NULL, 'unemployed', 0, '{\"bank\":9104,\"black_money\":0,\"money\":300}', '[{\"slot\":1,\"name\":\"money\",\"count\":300},{\"slot\":2,\"metadata\":{\"container\":\"ODX1672919028\",\"size\":[4,16]},\"name\":\"wallet\",\"count\":1},{\"slot\":3,\"name\":\"phone\",\"count\":1},{\"slot\":4,\"name\":\"headbag\",\"count\":1},{\"slot\":5,\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: 87IQK277\\n\\nSuma: 46$\\n\\nPodpis: Abraham Markeb\\n\\nDatum vydání: 2023-01-05 o 12:46:44\"},\"name\":\"blocek\",\"count\":1}]', '[]', '{\"y\":-627.2,\"z\":44.2,\"heading\":0.0,\"x\":114.7}', 'Abraham', 'Markeb', '2001-12-27', 'm', '182', '[{\"val\":947500,\"name\":\"hunger\",\"percent\":94.75},{\"val\":932500,\"name\":\"thirst\",\"percent\":93.25},{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, NULL, '{}', 0, '{\"Výdrž\":{\"Stat\":\"MP0_STAMINA\",\"Current\":5.75,\"RemoveAmount\":-0.05},\"Zámky\":{\"Stat\":\"\",\"Current\":0,\"RemoveAmount\":-0.02},\"Síla\":{\"Stat\":\"MP0_STRENGTH\",\"Current\":5.25,\"RemoveAmount\":-0.05},\"Střelba\":{\"Stat\":\"MP0_SHOOTING_ABILITY\",\"Current\":0,\"RemoveAmount\":-0.01},\"Řízení\":{\"Stat\":\"MP0_DRIVING_ABILITY\",\"Current\":1.45,\"RemoveAmount\":-0.01},\"Kapacita plic\":{\"Stat\":\"MP0_LUNG_CAPACITY\",\"Current\":0,\"RemoveAmount\":-0.01}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:479d51b6b598b32293701d6a1ba9e8044cf24323', 0, 'user', NULL, 'garbage', 0, '{\"bank\":9375,\"black_money\":0,\"money\":2600}', '[{\"count\":2600,\"name\":\"money\",\"slot\":1},{\"count\":7,\"name\":\"lahev\",\"slot\":2},{\"count\":6,\"name\":\"pet\",\"slot\":3},{\"count\":4,\"name\":\"lockpick\",\"slot\":4}]', '[]', '{\"x\":283.8,\"heading\":0.0,\"z\":43.1,\"y\":-607.5}', 'Marco', 'Polo', '1990-04-13', 'm', '220', '[{\"percent\":99.3,\"name\":\"hunger\",\"val\":993000},{\"percent\":99.1,\"name\":\"thirst\",\"val\":991000},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, NULL, '{}', 0, '{\"Síla\":{\"Current\":4.55,\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05},\"Výdrž\":{\"Current\":6.0,\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05},\"Střelba\":{\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01},\"Zámky\":{\"Current\":0,\"Stat\":\"\",\"RemoveAmount\":-0.02},\"Řízení\":{\"Current\":2.63,\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01},\"Kapacita plic\":{\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:4ac64ad2b2e935e5e11cff44de94ca4df087cd7b', 0, 'user', NULL, 'unemployed', 0, '{\"money\":1000,\"bank\":9075,\"black_money\":0}', '[{\"name\":\"money\",\"slot\":1,\"count\":1000}]', '[]', '{\"heading\":0.0,\"x\":275.9,\"y\":-1566.7,\"z\":29.8}', 'Diego', 'Salvarez', '1990-02-19', 'm', '175', '[{\"percent\":97.27,\"val\":972700,\"name\":\"hunger\"},{\"percent\":96.49,\"val\":964900,\"name\":\"thirst\"},{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"}]', 0, NULL, '{}', 0, '{\"Síla\":{\"Stat\":\"MP0_STRENGTH\",\"Current\":4.9,\"RemoveAmount\":-0.05},\"Kapacita plic\":{\"Stat\":\"MP0_LUNG_CAPACITY\",\"Current\":0,\"RemoveAmount\":-0.01},\"Střelba\":{\"Stat\":\"MP0_SHOOTING_ABILITY\",\"Current\":0,\"RemoveAmount\":-0.01},\"Zámky\":{\"Stat\":\"\",\"Current\":0,\"RemoveAmount\":-0.02},\"Výdrž\":{\"Stat\":\"MP0_STAMINA\",\"Current\":5.3,\"RemoveAmount\":-0.05},\"Řízení\":{\"Stat\":\"MP0_DRIVING_ABILITY\",\"Current\":0.19,\"RemoveAmount\":-0.01}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:5745f485e4c04141339dc702033d725b160a4250', 0, 'user', NULL, 'unemployed', 0, '{\"bank\":9000,\"money\":1000,\"black_money\":0}', '[{\"name\":\"money\",\"count\":1000,\"slot\":1}]', '[]', '{\"y\":-2321.4,\"z\":8.0,\"heading\":0.0,\"x\":-650.3}', 'David', 'Baracuda', '2000-10-22', 'm', '175', '[{\"val\":992650,\"name\":\"hunger\",\"percent\":99.265},{\"val\":990550,\"name\":\"thirst\",\"percent\":99.055},{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, NULL, '{}', 0, '{\"Střelba\":{\"Stat\":\"MP0_SHOOTING_ABILITY\",\"Current\":0,\"RemoveAmount\":-0.01},\"Řízení\":{\"Stat\":\"MP0_DRIVING_ABILITY\",\"Current\":0.1,\"RemoveAmount\":-0.01},\"Výdrž\":{\"Stat\":\"MP0_STAMINA\",\"Current\":5.2,\"RemoveAmount\":-0.05},\"Kapacita plic\":{\"Stat\":\"MP0_LUNG_CAPACITY\",\"Current\":0,\"RemoveAmount\":-0.01},\"Zámky\":{\"Stat\":\"\",\"Current\":0,\"RemoveAmount\":-0.02},\"Síla\":{\"Stat\":\"MP0_STRENGTH\",\"Current\":6.0,\"RemoveAmount\":-0.05}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, 'bol miliona a  skoncil na ulici lebo hodil na automati'),
('char1:58c130ffb0b6b2ae3b2cbc189ddbf643c65aa6d4', 0, 'user', NULL, 'unemployed', 0, '{\"bank\":22375.0,\"black_money\":0,\"money\":0}', '[]', '[]', '{\"y\":2567.1,\"z\":45.7,\"heading\":0.0,\"x\":1771.1}', 'Jack', 'Brown', '1998-07-18', 'm', '193', '[{\"val\":884500,\"percent\":88.44999999999999,\"name\":\"hunger\"},{\"val\":851500,\"percent\":85.15,\"name\":\"thirst\"},{\"val\":0,\"percent\":0.0,\"name\":\"drunk\"}]', 0, NULL, '{}', 28, '{\"Řízení\":{\"Current\":2.01,\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01},\"Zámky\":{\"Current\":0,\"Stat\":\"\",\"RemoveAmount\":-0.02},\"Výdrž\":{\"Current\":6.2,\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05},\"Síla\":{\"Current\":4.45,\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05},\"Kapacita plic\":{\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01},\"Střelba\":{\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', 0, 'user', NULL, 'exotic', 4, '{\"money\":8576,\"bank\":4791,\"black_money\":0}', '[{\"count\":1,\"slot\":1,\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: 32ZDA306\\n\\nSuma: 161$\\n\\nPodpis: Soryu Shinji\\n\\nDatum vydání: 2023-01-14 o 19:51:51\"},\"name\":\"blocek\"},{\"slot\":2,\"count\":3,\"name\":\"estancigar\"},{\"count\":1,\"slot\":4,\"metadata\":{\"components\":[],\"durability\":86.00000000000003},\"name\":\"WEAPON_SWITCHBLADE\"},{\"count\":1,\"slot\":6,\"metadata\":{\"lbPhoneNumber\":\"3556218\"},\"name\":\"phone\"},{\"slot\":7,\"count\":8576,\"name\":\"money\"},{\"count\":1,\"slot\":8,\"metadata\":{\"size\":[4,16],\"weight\":10,\"container\":\"IYS1673034950\"},\"name\":\"wallet\"},{\"slot\":9,\"count\":4,\"name\":\"sandwich\"},{\"slot\":10,\"count\":3,\"name\":\"jusfruit\"},{\"slot\":11,\"count\":1,\"name\":\"lighter\"},{\"slot\":12,\"count\":2,\"name\":\"estan\"},{\"slot\":13,\"count\":6,\"name\":\"lahev\"},{\"slot\":15,\"count\":5,\"name\":\"bandage\"},{\"slot\":16,\"count\":1,\"name\":\"pet\"},{\"count\":1,\"slot\":18,\"metadata\":{\"type\":1},\"name\":\"klice_exotic\"},{\"count\":1,\"slot\":19,\"metadata\":{\"type\":1},\"name\":\"klice_5\"},{\"count\":1,\"slot\":20,\"metadata\":{\"type\":1},\"name\":\"klice_4\"}]', '[]', '{\"z\":54.5,\"y\":-198.8,\"x\":543.5,\"heading\":0.0}', 'Soryu', 'Shinji', '1973-03-10', 'm', '178', '[{\"percent\":56.84,\"val\":568400,\"name\":\"hunger\"},{\"percent\":57.62500000000001,\"val\":576250,\"name\":\"thirst\"},{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"}]', 0, NULL, '{}', 0, '{\"Zámky\":{\"Current\":0,\"RemoveAmount\":-0.02,\"Stat\":\"\"},\"Řízení\":{\"Current\":35.93000000000003,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_DRIVING_ABILITY\"},\"Síla\":{\"Current\":1.34999999999999,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STRENGTH\"},\"Výdrž\":{\"Current\":10.79999999999992,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STAMINA\"},\"Střelba\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_SHOOTING_ABILITY\"},\"Kapacita plic\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_LUNG_CAPACITY\"}}', 'garbage', '0', NULL, NULL, 7, 0, NULL, NULL, 0, 'Lore v loru frakce.'),
('char1:615a380e5dfa7c342984d5f1f019dabfdce719ce', 0, 'user', NULL, 'unemployed', 0, '{\"bank\":9000,\"black_money\":0,\"money\":1050}', '[{\"slot\":1,\"count\":1050,\"name\":\"money\"},{\"slot\":2,\"count\":1,\"name\":\"lahev\"},{\"slot\":3,\"count\":1,\"name\":\"pet\"},{\"slot\":4,\"count\":1,\"name\":\"lockpick\"}]', '[]', '{\"heading\":0.0,\"x\":438.5,\"y\":-985.4,\"z\":31.2}', 'Isaac', 'Newton', '1991-04-11', 'm', '220', '[{\"percent\":86.455,\"name\":\"hunger\",\"val\":864550},{\"percent\":82.585,\"name\":\"thirst\",\"val\":825850},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 1, NULL, '{}', 0, '{\"Zámky\":{\"Current\":0,\"Stat\":\"\",\"RemoveAmount\":-0.02},\"Kapacita plic\":{\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01},\"Síla\":{\"Current\":4.4,\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05},\"Řízení\":{\"Current\":5.4,\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01},\"Výdrž\":{\"Current\":6.45,\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05},\"Střelba\":{\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:649151ee0b112a4f88423f9eead698feb358e715', 0, 'user', NULL, 'taxi', 0, '{\"money\":3400,\"black_money\":0,\"bank\":2375}', '[{\"count\":3400,\"name\":\"money\",\"slot\":1},{\"count\":1,\"metadata\":{\"description\":\"Jméno a příjmení: Ron Hebert\\n\\nDatum narození: 17/04/1975\\n\\nPohlaví: muž\\n\\nVýška: 175cm\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2023-01-31 o 22:10:18\"},\"name\":\"id\",\"slot\":21},{\"count\":1,\"metadata\":{\"description\":\"Jméno a příjmení: Ron Hebert\\n\\nDatum narození: 17/04/1975\\n\\nPohlaví: muž\\n\\nVýška: 175cm\\n\\nSkupiny: A B C \\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2023-01-31 o 22:16:27\"},\"name\":\"dl\",\"slot\":22}]', '[]', '{\"y\":-161.9,\"x\":905.1,\"z\":74.2,\"heading\":0.0}', 'Ron', 'Hebert', '1975-04-17', 'm', '175', '[{\"val\":824300,\"name\":\"hunger\",\"percent\":82.43},{\"val\":774100,\"name\":\"thirst\",\"percent\":77.41},{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, NULL, '{}', 0, '{\"Střelba\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_SHOOTING_ABILITY\"},\"Kapacita plic\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_LUNG_CAPACITY\"},\"Zámky\":{\"Current\":0,\"RemoveAmount\":-0.02,\"Stat\":\"\"},\"Výdrž\":{\"Current\":5.0,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STAMINA\"},\"Řízení\":{\"Current\":3.6,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_DRIVING_ABILITY\"},\"Síla\":{\"Current\":4.7,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STRENGTH\"}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:670287d0917d905511c6dafe4ac5ba713c2811a6', 0, 'user', NULL, 'unemployed', 0, '{\"money\":0,\"bank\":10075,\"black_money\":0}', '[]', '[]', '{\"heading\":0.0,\"x\":-436.9,\"y\":-1448.6,\"z\":21.1}', 'smitlik', 'saolin', '1999-12-12', 'm', '183', '[{\"percent\":96.395,\"val\":963950,\"name\":\"hunger\"},{\"percent\":95.365,\"val\":953650,\"name\":\"thirst\"},{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"}]', 1, NULL, '{}', 0, '{\"Řízení\":{\"Current\":1.87,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_DRIVING_ABILITY\"},\"Síla\":{\"Current\":5.85,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STRENGTH\"},\"Zámky\":{\"Current\":0,\"RemoveAmount\":-0.02,\"Stat\":\"\"},\"Střelba\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_SHOOTING_ABILITY\"},\"Výdrž\":{\"Current\":5.25,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STAMINA\"},\"Kapacita plic\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_LUNG_CAPACITY\"}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:684609ef1b1122796c7b91166ce9d49a69e224ef', 0, 'user', NULL, 'unemployed', 0, '{\"bank\":9000,\"money\":1000,\"black_money\":0}', '[{\"slot\":1,\"count\":1000,\"name\":\"money\"}]', '[]', '{\"z\":14.1,\"y\":-2714.8,\"x\":-979.0,\"heading\":0.0}', 'Roses', 'vilim', '1990-12-13', 'm', '175', '[{\"val\":993350,\"percent\":99.335,\"name\":\"hunger\"},{\"val\":991450,\"percent\":99.14500000000001,\"name\":\"thirst\"},{\"val\":0,\"percent\":0.0,\"name\":\"drunk\"}]', 0, NULL, '{}', 0, NULL, 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:6ad4ba339bdda59da6fc7cbcd637cd1a2aa31d46', 0, 'user', NULL, 'taxi', 0, '{\"bank\":5050,\"money\":3486,\"black_money\":0}', '[{\"name\":\"phone\",\"metadata\":{\"lbPhoneNumber\":\"6028653\"},\"count\":1,\"slot\":1},{\"name\":\"id\",\"metadata\":{\"description\":\"Jméno a příjmení: Rafael Díaz\\n\\nDatum narození: 20/05/1998\\n\\nPohlaví: muž\\n\\nVýška: 185cm\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2023-01-10 o 12:28:24\"},\"count\":1,\"slot\":2},{\"name\":\"dl\",\"metadata\":{\"description\":\"Jméno a příjmení: Rafael Díaz\\n\\nDatum narození: 20/05/1998\\n\\nPohlaví: muž\\n\\nVýška: 185cm\\n\\nSkupiny: B \\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2023-01-10 o 12:31:23\"},\"count\":1,\"slot\":3},{\"name\":\"pet\",\"count\":3,\"slot\":4},{\"name\":\"lockpick\",\"count\":1,\"slot\":6},{\"name\":\"icetea\",\"count\":2,\"slot\":7},{\"name\":\"burger\",\"count\":2,\"slot\":8},{\"name\":\"taco\",\"count\":1,\"slot\":9},{\"name\":\"money\",\"count\":3486,\"slot\":12}]', '[]', '{\"z\":52.0,\"y\":-1632.6,\"x\":1237.3,\"heading\":0.0}', 'Rafael', 'Diaz', '1998-05-20', 'm', '185', '[{\"name\":\"hunger\",\"val\":782300,\"percent\":78.23},{\"name\":\"thirst\",\"val\":888400,\"percent\":88.84},{\"name\":\"drunk\",\"val\":0,\"percent\":0.0}]', 0, NULL, '{}', 0, '{\"Kapacita plic\":{\"RemoveAmount\":-0.01,\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\"},\"Síla\":{\"RemoveAmount\":-0.05,\"Current\":4.5,\"Stat\":\"MP0_STRENGTH\"},\"Výdrž\":{\"RemoveAmount\":-0.05,\"Current\":6.4,\"Stat\":\"MP0_STAMINA\"},\"Střelba\":{\"RemoveAmount\":-0.01,\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\"},\"Zámky\":{\"RemoveAmount\":-0.02,\"Current\":0,\"Stat\":\"\"},\"Řízení\":{\"RemoveAmount\":-0.01,\"Current\":8.22999999999999,\"Stat\":\"MP0_DRIVING_ABILITY\"}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, 'Normální člověk co přiletěl do města za lepším životem ');
INSERT INTO `users` (`identifier`, `id`, `group`, `skin`, `job`, `job_grade`, `accounts`, `inventory`, `loadout`, `position`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `status`, `is_dead`, `phone_number`, `tattoos`, `jail`, `skills`, `secondjob`, `secondjob_grade`, `last_property`, `hotbar`, `garage_limit`, `disabled`, `callsign`, `profilepic`, `duty`, `lore`) VALUES
('char1:6c8c6ae8c062d2f8c67c6f72bfedd76aea374840', 0, 'admin', NULL, 'ambulance', 2, '{\"bank\":26064,\"money\":0,\"black_money\":0}', '[{\"name\":\"WEAPON_COMBATPISTOL\",\"count\":1,\"metadata\":{\"components\":[],\"ammo\":12,\"registered\":\"William David Larson\",\"durability\":95.99999999999996,\"serial\":\"LSPD\"},\"slot\":1},{\"name\":\"WEAPON_STUNGUN\",\"count\":1,\"metadata\":{\"registered\":\"William David Larson\",\"durability\":100,\"components\":[]},\"slot\":2},{\"name\":\"WEAPON_NIGHTSTICK\",\"count\":1,\"metadata\":{\"components\":[],\"durability\":100},\"slot\":3},{\"name\":\"WEAPON_CARBINERIFLE\",\"count\":1,\"metadata\":{\"components\":[],\"ammo\":27,\"registered\":\"William David Larson\",\"durability\":99.01,\"serial\":\"LSPD\"},\"slot\":4},{\"name\":\"radio\",\"count\":1,\"slot\":5},{\"name\":\"ammo-9\",\"count\":112,\"slot\":6},{\"name\":\"weed\",\"count\":1,\"slot\":7},{\"name\":\"joint\",\"count\":1,\"slot\":8},{\"name\":\"ammo-rifle\",\"count\":300,\"slot\":9},{\"name\":\"lahev\",\"count\":1,\"slot\":16},{\"name\":\"phone\",\"count\":1,\"metadata\":{\"lbPhoneNumber\":\"4807611\"},\"slot\":21},{\"name\":\"wallet\",\"count\":1,\"metadata\":{\"size\":[3,15],\"container\":\"AXY1671497052\",\"weight\":10},\"slot\":22},{\"name\":\"pouta\",\"count\":1,\"slot\":23},{\"name\":\"armour\",\"count\":1,\"slot\":24},{\"name\":\"klice_lspd\",\"count\":1,\"slot\":25},{\"name\":\"blocek\",\"count\":1,\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: 69RRM369\\n\\nSuma: 150$\\n\\nPodpis: Michael Espinoza\\n\\nDatum vydání: 2023-01-03 o 20:22:03\"},\"slot\":26},{\"name\":\"blocek\",\"count\":1,\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: 69RRM369\\n\\nSuma: 119$\\n\\nPodpis: Michael Espinoza\\n\\nDatum vydání: 2023-01-03 o 20:25:19\"},\"slot\":27},{\"name\":\"sling\",\"count\":1,\"slot\":29},{\"name\":\"kufriknamaluzbran\",\"count\":1,\"metadata\":{\"container\":\"ULB1672055655\",\"size\":[1,1000]},\"slot\":30}]', '[]', '{\"heading\":0.0,\"x\":291.5,\"y\":189.6,\"z\":104.3}', 'Michael', 'Espinoza', '1992-05-11', 'm', '189', '[{\"percent\":93.21000000000001,\"val\":932100,\"name\":\"hunger\"},{\"percent\":91.27,\"val\":912700,\"name\":\"thirst\"},{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"}]', 0, NULL, '{}', 0, '{\"Střelba\":{\"Stat\":\"MP0_SHOOTING_ABILITY\",\"Current\":0,\"RemoveAmount\":-0.01},\"Výdrž\":{\"Stat\":\"MP0_STAMINA\",\"Current\":5.90000000000001,\"RemoveAmount\":-0.05},\"Síla\":{\"Stat\":\"MP0_STRENGTH\",\"Current\":0,\"RemoveAmount\":-0.05},\"Kapacita plic\":{\"Stat\":\"MP0_LUNG_CAPACITY\",\"Current\":0,\"RemoveAmount\":-0.01},\"Zámky\":{\"Stat\":\"\",\"Current\":0,\"RemoveAmount\":-0.02},\"Řízení\":{\"Stat\":\"MP0_DRIVING_ABILITY\",\"Current\":28.41999999999998,\"RemoveAmount\":-0.01}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:6d33049611fce73e866daa98f13513c53a3b36b1', 0, 'user', NULL, 'lostmc', 0, '{\"bank\":9226,\"money\":1000,\"black_money\":0}', '[{\"name\":\"money\",\"count\":1000,\"slot\":1},{\"name\":\"klice_lostmc\",\"count\":1,\"slot\":2},{\"name\":\"phone\",\"count\":1,\"metadata\":{\"lbPhoneNumber\":\"9076180\"},\"slot\":3}]', '[]', '{\"heading\":0.0,\"x\":990.6,\"y\":-125.8,\"z\":74.0}', 'Michael', 'Will', '2003-04-07', 'm', '185', '[{\"val\":848800,\"percent\":84.88,\"name\":\"hunger\"},{\"val\":805600,\"percent\":80.56,\"name\":\"thirst\"},{\"val\":0,\"percent\":0.0,\"name\":\"drunk\"}]', 0, NULL, '{}', 0, '{\"Kapacita plic\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_LUNG_CAPACITY\"},\"Zámky\":{\"Current\":0,\"RemoveAmount\":-0.02,\"Stat\":\"\"},\"Střelba\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_SHOOTING_ABILITY\"},\"Síla\":{\"Current\":4.35,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STRENGTH\"},\"Řízení\":{\"Current\":0.61999999999999,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_DRIVING_ABILITY\"},\"Výdrž\":{\"Current\":4.35,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STAMINA\"}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:6da4d857b509dd6583ba6782a8301d467bf36380', 0, 'user', NULL, 'lostmc', 3, '{\"money\":2242,\"black_money\":0,\"bank\":122849}', '[{\"metadata\":{\"durability\":95.2,\"components\":[]},\"name\":\"WEAPON_SWITCHBLADE\",\"slot\":1,\"count\":1},{\"metadata\":{\"components\":[],\"registered\":\"Martin Rogers\",\"durability\":100},\"name\":\"WEAPON_STUNGUN\",\"slot\":2,\"count\":1},{\"metadata\":{\"weight\":10,\"size\":[4,16],\"container\":\"YHL1672583318\"},\"name\":\"wallet\",\"slot\":3,\"count\":1},{\"name\":\"redwcig\",\"slot\":4,\"count\":3},{\"name\":\"estancigar\",\"slot\":5,\"count\":93},{\"name\":\"klice_lostmc\",\"slot\":6,\"count\":2},{\"name\":\"radio\",\"slot\":7,\"count\":1},{\"metadata\":{\"lbPhoneNumber\":\"6662600\"},\"name\":\"phone\",\"slot\":8,\"count\":1},{\"name\":\"pet\",\"slot\":9,\"count\":1},{\"name\":\"water\",\"slot\":10,\"count\":3},{\"name\":\"lighter\",\"slot\":11,\"count\":1},{\"name\":\"weed\",\"slot\":15,\"count\":12},{\"name\":\"money\",\"slot\":16,\"count\":2242},{\"name\":\"rolling_paper\",\"slot\":20,\"count\":5}]', '[]', '{\"heading\":0.0,\"x\":989.8,\"y\":-135.5,\"z\":74.1}', 'Martin', 'Rogers', '1989-11-21', 'm', '175', '[{\"name\":\"hunger\",\"percent\":97.02499999999999,\"val\":970250},{\"name\":\"thirst\",\"percent\":96.175,\"val\":961750},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', 0, NULL, '{}', 0, '{\"Výdrž\":{\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STAMINA\",\"Current\":48.05000000000149},\"Řízení\":{\"RemoveAmount\":-0.01,\"Stat\":\"MP0_DRIVING_ABILITY\",\"Current\":99.94999999999998},\"Zámky\":{\"RemoveAmount\":-0.02,\"Stat\":\"\",\"Current\":0},\"Střelba\":{\"RemoveAmount\":-0.01,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"Current\":0},\"Kapacita plic\":{\"RemoveAmount\":-0.01,\"Stat\":\"MP0_LUNG_CAPACITY\",\"Current\":0},\"Síla\":{\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STRENGTH\",\"Current\":0}}', 'taxi', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:6f03494e054f7622c0be5f612ff1a4cd6e4fb90d', 0, 'user', NULL, 'unemployed', 0, '{\"bank\":9000,\"money\":1000,\"black_money\":0}', '[{\"count\":1000,\"name\":\"money\",\"slot\":1}]', '[]', '{\"y\":-2559.7,\"z\":13.8,\"heading\":0.0,\"x\":-821.2}', 'DWD', 'DWD', '2000-02-22', 'm', '175', '[{\"name\":\"hunger\",\"val\":998600,\"percent\":99.86},{\"name\":\"thirst\",\"val\":998200,\"percent\":99.82},{\"name\":\"drunk\",\"val\":0,\"percent\":0.0}]', 0, NULL, '{}', 0, NULL, 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:71e338fa00f8a110eba0c11a4abaaee20b382bcd', 0, 'user', NULL, 'unemployed', 0, '{\"bank\":8875,\"black_money\":0,\"money\":0}', '[{\"slot\":1,\"count\":1,\"name\":\"lahev\"},{\"slot\":2,\"count\":3,\"name\":\"pet\"},{\"slot\":3,\"metadata\":{\"description\":\"Jméno a příjmení: Isaac Garcia\\n\\nDatum narození: 1999-07-01\\n\\nPohlaví: muž\\n\\nVýška: 180cm\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 19/12/2022 o 21:37:59\"},\"count\":1,\"name\":\"id\"}]', '[]', '{\"heading\":0.0,\"x\":437.4,\"y\":-985.2,\"z\":30.7}', 'Isaac', 'Garcia', '1999-07-01', 'm', '180', '[{\"percent\":85.86,\"name\":\"hunger\",\"val\":858600},{\"percent\":81.82000000000001,\"name\":\"thirst\",\"val\":818200},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, NULL, '{}', 0, '{\"Síla\":{\"Current\":5.35,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STRENGTH\"},\"Zámky\":{\"Current\":0,\"RemoveAmount\":-0.02,\"Stat\":\"\"},\"Řízení\":{\"Current\":6.61,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_DRIVING_ABILITY\"},\"Střelba\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_SHOOTING_ABILITY\"},\"Kapacita plic\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_LUNG_CAPACITY\"},\"Výdrž\":{\"Current\":6.2,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STAMINA\"}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:71f6216001838f0b67bf404d0e401d8a20127fe0', 0, 'user', NULL, 'unemployed', 0, '{\"bank\":0,\"money\":4390,\"black_money\":0}', '[{\"name\":\"lahev\",\"count\":4,\"slot\":1},{\"name\":\"redwcig\",\"count\":14,\"slot\":2},{\"name\":\"money\",\"count\":4390,\"slot\":3},{\"name\":\"phone\",\"metadata\":{\"lbPhoneNumber\":\"5208780\"},\"count\":1,\"slot\":4},{\"name\":\"ziptie\",\"count\":1,\"slot\":5},{\"name\":\"pet\",\"count\":1,\"slot\":7},{\"name\":\"tools\",\"count\":1,\"slot\":8},{\"name\":\"lockpick\",\"count\":1,\"slot\":9},{\"name\":\"estancigar\",\"count\":8,\"slot\":10}]', '[]', '{\"heading\":0.0,\"x\":3.2,\"y\":-1127.4,\"z\":27.7}', 'Jacob', 'Brown', '2000-12-15', 'm', '196', '[{\"percent\":99.09,\"val\":990900,\"name\":\"hunger\"},{\"percent\":98.83,\"val\":988300,\"name\":\"thirst\"},{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"}]', 0, NULL, '{}', 0, '{\"Zámky\":{\"RemoveAmount\":-0.02,\"Current\":0,\"Stat\":\"\"},\"Výdrž\":{\"RemoveAmount\":-0.05,\"Current\":10.84999999999996,\"Stat\":\"MP0_STAMINA\"},\"Řízení\":{\"RemoveAmount\":-0.01,\"Current\":28.86000000000003,\"Stat\":\"MP0_DRIVING_ABILITY\"},\"Kapacita plic\":{\"RemoveAmount\":-0.01,\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\"},\"Síla\":{\"RemoveAmount\":-0.05,\"Current\":9.69999999999999,\"Stat\":\"MP0_STRENGTH\"},\"Střelba\":{\"RemoveAmount\":-0.01,\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\"}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:739f45face4a989b414f43753a220053ece07406', 0, 'user', NULL, 'unemployed', 0, '{\"money\":33,\"bank\":6150.0,\"black_money\":0}', '[{\"name\":\"id\",\"metadata\":{\"description\":\"Jméno a příjmení: Jake Smith\\n\\nDatum narození: 1992-11-25\\n\\nPohlaví: muž\\n\\nVýška: 179cm\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2023-01-01 o 20:55:00\"},\"count\":1,\"slot\":1},{\"name\":\"phone\",\"metadata\":{\"lbPhoneNumber\":\"6660970\"},\"count\":1,\"slot\":2},{\"name\":\"money\",\"count\":33,\"slot\":3},{\"name\":\"dl\",\"metadata\":{\"description\":\"Jméno a příjmení: Jake Smith\\n\\nDatum narození: 1992-11-25\\n\\nPohlaví: muž\\n\\nVýška: 179cm\\n\\nSkupiny: A B C D\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2023-01-01 o 21:01:08\"},\"count\":1,\"slot\":4},{\"name\":\"wallet\",\"metadata\":{\"container\":\"JDP1672603448\",\"size\":[4,16]},\"count\":1,\"slot\":5},{\"name\":\"redwcig\",\"count\":17,\"slot\":6},{\"name\":\"lahev\",\"count\":1,\"slot\":7},{\"name\":\"lighter\",\"count\":1,\"slot\":8},{\"name\":\"pet\",\"count\":3,\"slot\":11},{\"name\":\"phone\",\"metadata\":{\"lbPhoneNumber\":\"6026526\"},\"count\":1,\"slot\":12}]', '[]', '{\"heading\":0.0,\"x\":-238.3,\"y\":-976.5,\"z\":29.3}', 'Jake', 'Smith', '1992-11-25', 'm', '179', '[{\"percent\":99.16,\"name\":\"hunger\",\"val\":991600},{\"percent\":55.765,\"name\":\"thirst\",\"val\":557650},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, NULL, '{}', 0, '{\"Síla\":{\"RemoveAmount\":-0.05,\"Current\":4.69999999999997,\"Stat\":\"MP0_STRENGTH\"},\"Střelba\":{\"RemoveAmount\":-0.01,\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\"},\"Zámky\":{\"RemoveAmount\":-0.02,\"Current\":0,\"Stat\":\"\"},\"Výdrž\":{\"RemoveAmount\":-0.05,\"Current\":62.8000000000005,\"Stat\":\"MP0_STAMINA\"},\"Řízení\":{\"RemoveAmount\":-0.01,\"Current\":17.11999999999995,\"Stat\":\"MP0_DRIVING_ABILITY\"},\"Kapacita plic\":{\"RemoveAmount\":-0.01,\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\"}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:7b158661c2160f333f1d1d79c30264525b1c7885', 0, 'user', NULL, 'unemployed', 0, '{\"money\":9325,\"bank\":75,\"black_money\":0}', '[{\"name\":\"money\",\"slot\":1,\"count\":9325},{\"name\":\"alkohol\",\"slot\":2,\"count\":1}]', '[]', '{\"heading\":0.0,\"x\":289.3,\"y\":-559.2,\"z\":43.2}', 'Vladimir', 'Cafourek', '2002-12-12', 'm', '175', '[{\"percent\":95.30999999999999,\"val\":953100,\"name\":\"hunger\"},{\"percent\":93.97,\"val\":939700,\"name\":\"thirst\"},{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"}]', 0, NULL, '{}', 0, '{\"Střelba\":{\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01},\"Kapacita plic\":{\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01},\"Řízení\":{\"Current\":1.05999999999999,\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01},\"Výdrž\":{\"Current\":5.35,\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05},\"Síla\":{\"Current\":7.25,\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05},\"Zámky\":{\"Current\":0,\"Stat\":\"\",\"RemoveAmount\":-0.02}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:7d36c723f19b962b1da9aa2d249374ab07ed59f8', 0, 'user', NULL, 'unemployed', 0, '{\"bank\":8225,\"black_money\":0,\"money\":815}', '[{\"name\":\"redwcig\",\"count\":59,\"slot\":15},{\"name\":\"water\",\"count\":4,\"slot\":4},{\"name\":\"sandwich\",\"count\":5,\"slot\":5},{\"name\":\"lighter\",\"count\":3,\"slot\":9},{\"name\":\"redw\",\"count\":1,\"slot\":10},{\"name\":\"lighter\",\"count\":1,\"slot\":20},{\"name\":\"pet\",\"count\":1,\"slot\":25},{\"name\":\"money\",\"count\":815,\"slot\":14},{\"name\":\"phone\",\"count\":1,\"metadata\":{\"lbPhoneNumber\":\"9074543\"},\"slot\":19}]', '[]', '{\"heading\":0.0,\"x\":-797.9,\"y\":-1333.3,\"z\":4.7}', 'Vlastík', 'Plamínek', '1999-03-28', 'm', '186', '[{\"name\":\"hunger\",\"percent\":84.25,\"val\":842500},{\"name\":\"thirst\",\"percent\":93.925,\"val\":939250},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', 0, NULL, '{}', 0, '{\"Síla\":{\"Stat\":\"MP0_STRENGTH\",\"Current\":4.75,\"RemoveAmount\":-0.05},\"Střelba\":{\"Stat\":\"MP0_SHOOTING_ABILITY\",\"Current\":0,\"RemoveAmount\":-0.01},\"Výdrž\":{\"Stat\":\"MP0_STAMINA\",\"Current\":6.45,\"RemoveAmount\":-0.05},\"Řízení\":{\"Stat\":\"MP0_DRIVING_ABILITY\",\"Current\":2.3,\"RemoveAmount\":-0.01},\"Zámky\":{\"Stat\":\"\",\"Current\":0,\"RemoveAmount\":-0.02},\"Kapacita plic\":{\"Stat\":\"MP0_LUNG_CAPACITY\",\"Current\":0,\"RemoveAmount\":-0.01}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:7fc9429fbfdead8589b808ce4c9ca1033be3f258', 0, 'user', NULL, 'taxi', 0, '{\"black_money\":0,\"money\":12916,\"bank\":252309}', '[{\"slot\":1,\"name\":\"money\",\"count\":12916},{\"slot\":2,\"name\":\"bandage\",\"count\":8},{\"slot\":3,\"name\":\"bandage\",\"count\":13},{\"slot\":4,\"name\":\"phone\",\"count\":1},{\"slot\":5,\"name\":\"cola\",\"count\":20},{\"slot\":6,\"name\":\"redw\",\"count\":4},{\"slot\":7,\"name\":\"radio\",\"count\":1},{\"slot\":8,\"name\":\"burger\",\"count\":2},{\"slot\":9,\"name\":\"klice_lostmc\",\"count\":1},{\"slot\":10,\"name\":\"wallet\",\"metadata\":{\"container\":\"OOO1672872408\",\"size\":[4,16]},\"count\":1},{\"slot\":11,\"name\":\"redwcig\",\"count\":16},{\"slot\":12,\"name\":\"lighter\",\"count\":5},{\"slot\":13,\"name\":\"water\",\"count\":6},{\"slot\":14,\"name\":\"clothe\",\"count\":43},{\"slot\":15,\"name\":\"lockpick\",\"count\":13},{\"slot\":16,\"name\":\"phone\",\"count\":1},{\"slot\":17,\"name\":\"WEAPON_COMBATPISTOL\",\"metadata\":{\"durability\":96.4,\"serial\":\"QOK9370467095\",\"ammo\":0,\"components\":[],\"registered\":\"Dendo Mercuri\"},\"count\":1},{\"slot\":18,\"name\":\"phone\",\"count\":1},{\"slot\":19,\"name\":\"water\",\"count\":1},{\"slot\":20,\"name\":\"weed\",\"count\":5},{\"slot\":22,\"name\":\"ammo-9\",\"count\":27},{\"slot\":25,\"name\":\"rolling_paper\",\"count\":5},{\"slot\":26,\"name\":\"phone\",\"count\":1},{\"slot\":27,\"name\":\"phone\",\"count\":1}]', '[]', '{\"x\":2404.3,\"heading\":0.0,\"z\":48.2,\"y\":3128.3}', 'Dendo', 'Mercuri', '1990-08-06', 'm', '175', '[{\"val\":997900,\"name\":\"hunger\",\"percent\":99.79},{\"val\":911800,\"name\":\"thirst\",\"percent\":91.18},{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, NULL, '{}', 0, '{\"Zámky\":{\"Stat\":\"\",\"Current\":0,\"RemoveAmount\":-0.02},\"Síla\":{\"Stat\":\"MP0_STRENGTH\",\"Current\":0,\"RemoveAmount\":-0.05},\"Střelba\":{\"Stat\":\"MP0_SHOOTING_ABILITY\",\"Current\":0,\"RemoveAmount\":-0.01},\"Kapacita plic\":{\"Stat\":\"MP0_LUNG_CAPACITY\",\"Current\":0,\"RemoveAmount\":-0.01},\"Výdrž\":{\"Stat\":\"MP0_STAMINA\",\"Current\":30.64999999999977,\"RemoveAmount\":-0.05},\"Řízení\":{\"Stat\":\"MP0_DRIVING_ABILITY\",\"Current\":44.02000000000015,\"RemoveAmount\":-0.01}}', 'lostmc', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:803f713c6b48b081ffa545e9ef71dc44dfefef5b', 0, 'user', NULL, 'unemployed', 0, '{\"bank\":9075,\"money\":3179830,\"black_money\":0}', '[{\"slot\":1,\"count\":3179830,\"name\":\"money\"}]', '[]', '{\"x\":-57.8,\"heading\":0.0,\"z\":26.4,\"y\":-1097.6}', 'John', 'Smith', '1985-05-05', 'm', '190', '[{\"percent\":94.82000000000001,\"name\":\"hunger\",\"val\":948200},{\"percent\":93.34,\"name\":\"thirst\",\"val\":933400},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, NULL, '{}', 0, '{\"Řízení\":{\"Current\":0.58,\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01},\"Síla\":{\"Current\":15.34999999999998,\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05},\"Zámky\":{\"Current\":0,\"Stat\":\"\",\"RemoveAmount\":-0.02},\"Výdrž\":{\"Current\":5.05,\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05},\"Střelba\":{\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01},\"Kapacita plic\":{\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:825bafdeb0879ee3488dcc11ee78b11b484d73a6', 0, 'user', NULL, 'taxi', 0, '{\"bank\":2182,\"money\":0,\"black_money\":0}', '[{\"name\":\"WEAPON_SWITCHBLADE\",\"count\":1,\"metadata\":{\"components\":[],\"durability\":99.9},\"slot\":1},{\"name\":\"phone\",\"count\":1,\"metadata\":{\"lbPhoneNumber\":\"6665822\"},\"slot\":2},{\"name\":\"water\",\"count\":6,\"slot\":3},{\"name\":\"burger\",\"count\":5,\"slot\":4},{\"name\":\"wallet\",\"count\":1,\"metadata\":{\"size\":[4,16],\"container\":\"PMK1672341641\",\"weight\":5},\"slot\":5},{\"name\":\"lahev\",\"count\":2,\"slot\":6},{\"name\":\"pet\",\"count\":1,\"slot\":7},{\"name\":\"cola\",\"count\":1,\"slot\":8},{\"name\":\"lockpick\",\"count\":1,\"slot\":9},{\"name\":\"bandage\",\"count\":1,\"slot\":10}]', '[]', '{\"heading\":0.0,\"x\":222.3,\"y\":-795.8,\"z\":30.7}', 'Jay', 'Williams', '1998-02-20', 'm', '190', '[{\"percent\":68.11500000000001,\"name\":\"hunger\",\"val\":681150},{\"percent\":59.00499999999999,\"name\":\"thirst\",\"val\":590050},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, NULL, '{}', 0, '{\"Kapacita plic\":{\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01,\"Current\":0},\"Výdrž\":{\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05,\"Current\":7.3},\"Síla\":{\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05,\"Current\":5.3},\"Zámky\":{\"Stat\":\"\",\"RemoveAmount\":-0.02,\"Current\":0},\"Řízení\":{\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01,\"Current\":5.56999999999997},\"Střelba\":{\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01,\"Current\":0}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:83f8d788299c4cf1928bbd97d37da3db69da3b3a', 0, 'admin', NULL, 'megwillies', 4, '{\"bank\":8145,\"black_money\":0,\"money\":70}', '[{\"name\":\"wallet\",\"metadata\":{\"weight\":5,\"container\":\"HCS1672060910\",\"size\":[4,16]},\"count\":1,\"slot\":6},{\"name\":\"phone\",\"metadata\":{\"lbPhoneNumber\":\"7778655\"},\"count\":1,\"slot\":7},{\"name\":\"water\",\"count\":8,\"slot\":8},{\"name\":\"weed\",\"count\":5,\"slot\":9},{\"name\":\"cola\",\"count\":4,\"slot\":10},{\"name\":\"blocek\",\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: 38RIQ051\\n\\nSuma: 138$\\n\\nPodpis: Robert Storm\\n\\nDatum vydání: 2023-01-01 o 21:00:16\"},\"count\":1,\"slot\":11},{\"name\":\"blocek\",\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: 38RIQ051\\n\\nSuma: 67$\\n\\nPodpis: Robert Storm\\n\\nDatum vydání: 2023-01-01 o 21:15:17\"},\"count\":1,\"slot\":12},{\"name\":\"lockpick\",\"count\":10,\"slot\":13},{\"name\":\"bandage\",\"count\":11,\"slot\":14},{\"name\":\"clothe\",\"count\":16,\"slot\":15},{\"name\":\"pet\",\"count\":13,\"slot\":16},{\"name\":\"money\",\"count\":70,\"slot\":18},{\"name\":\"burger\",\"count\":2,\"slot\":19},{\"name\":\"lahev\",\"count\":15,\"slot\":17}]', '[]', '{\"heading\":0.0,\"x\":-187.5,\"y\":1557.3,\"z\":323.1}', 'Robert', 'Storm', '1993-03-13', 'm', '203', '[{\"percent\":73.05,\"name\":\"hunger\",\"val\":730500},{\"percent\":75.75,\"name\":\"thirst\",\"val\":757500},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, NULL, '{}', 0, '{\"Zámky\":{\"Current\":0,\"RemoveAmount\":-0.02,\"Stat\":\"\"},\"Výdrž\":{\"Current\":21.04999999999973,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STAMINA\"},\"Střelba\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_SHOOTING_ABILITY\"},\"Řízení\":{\"Current\":61.97000000000059,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_DRIVING_ABILITY\"},\"Síla\":{\"Current\":4.0,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STRENGTH\"},\"Kapacita plic\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_LUNG_CAPACITY\"}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, 'Bob se narodil na vesnici, kde prožil celé jeho dětství. Vzhledem k jeho omezené slovné zásobě byl často terčem posměšků, což jej poznamenalo na celý život.'),
('char1:8b738557b51059dd1243c514317c74a3fa11d556', 0, 'user', NULL, 'police', 5, '{\"black_money\":0,\"bank\":13275,\"money\":990}', '[{\"slot\":1,\"count\":1,\"metadata\":{\"components\":[],\"serial\":\"LSPD\",\"durability\":95.19999999999995,\"registered\":\"William David Larson\",\"ammo\":12},\"name\":\"WEAPON_COMBATPISTOL\"},{\"slot\":2,\"count\":1,\"metadata\":{\"durability\":100,\"registered\":\"William David Larson\",\"components\":[]},\"name\":\"WEAPON_STUNGUN\"},{\"slot\":3,\"count\":1,\"metadata\":{\"components\":[],\"durability\":100},\"name\":\"WEAPON_NIGHTSTICK\"},{\"slot\":4,\"count\":1,\"metadata\":{\"components\":[],\"durability\":100},\"name\":\"WEAPON_FLASHLIGHT\"},{\"slot\":5,\"count\":1,\"metadata\":{\"components\":[\"at_grip\",\"at_scope_medium\"],\"serial\":\"LSPD\",\"durability\":97.63,\"registered\":\"William David Larson\",\"ammo\":30},\"name\":\"WEAPON_CARBINERIFLE\"},{\"slot\":6,\"count\":990,\"name\":\"money\"},{\"slot\":7,\"count\":1,\"name\":\"klice_lspd\"},{\"slot\":8,\"count\":1,\"metadata\":{\"lbPhoneNumber\":\"1202572\"},\"name\":\"phone\"},{\"slot\":9,\"count\":3,\"name\":\"armour\"},{\"slot\":10,\"count\":1,\"name\":\"radio\"},{\"slot\":11,\"count\":3,\"name\":\"pouta\"},{\"slot\":14,\"count\":164,\"name\":\"ammo-9\"},{\"slot\":15,\"count\":121,\"name\":\"ammo-rifle\"}]', '[]', '{\"z\":30.7,\"heading\":0.0,\"x\":459.9,\"y\":-996.5}', 'Peter', 'Clark', '1990-05-16', 'm', '190', '[{\"percent\":73.11999999999999,\"val\":731200,\"name\":\"hunger\"},{\"percent\":65.44,\"val\":654400,\"name\":\"thirst\"},{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"}]', 0, NULL, '{}', 0, '{\"Síla\":{\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STRENGTH\",\"Current\":4.25},\"Zámky\":{\"RemoveAmount\":-0.02,\"Stat\":\"\",\"Current\":0},\"Řízení\":{\"RemoveAmount\":-0.01,\"Stat\":\"MP0_DRIVING_ABILITY\",\"Current\":15.03999999999997},\"Kapacita plic\":{\"RemoveAmount\":-0.01,\"Stat\":\"MP0_LUNG_CAPACITY\",\"Current\":0},\"Výdrž\":{\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STAMINA\",\"Current\":5.4},\"Střelba\":{\"RemoveAmount\":-0.01,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"Current\":0}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:8c221a18a724b6faa4e886c177e9870fe85c9680', 0, 'user', NULL, 'unemployed', 0, '{\"bank\":3675,\"black_money\":0,\"money\":0}', '[{\"count\":1,\"name\":\"phone\",\"slot\":2}]', '[]', '{\"x\":1828.0,\"heading\":0.0,\"z\":34.8,\"y\":3685.1}', 'john', 'cramer', '2000-12-11', 'm', '220', '[{\"percent\":96.00999999999999,\"name\":\"hunger\",\"val\":960100},{\"percent\":94.87,\"name\":\"thirst\",\"val\":948700},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, NULL, '{}', 0, '{\"Výdrž\":{\"Current\":6.3,\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05},\"Síla\":{\"Current\":6.7,\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05},\"Zámky\":{\"Current\":0,\"Stat\":\"\",\"RemoveAmount\":-0.02},\"Kapacita plic\":{\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01},\"Řízení\":{\"Current\":7.23999999999999,\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01},\"Střelba\":{\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:8cabe768701b34848c4bf3f7da2d21a2c91dcc71', 0, 'user', NULL, 'unemployed', 0, '{\"money\":1000,\"black_money\":0,\"bank\":9075}', '[{\"slot\":1,\"count\":1000,\"name\":\"money\"}]', '[]', '{\"heading\":0.0,\"z\":42.7,\"y\":-67.9,\"x\":-425.0}', 'Gery', 'Balo', '1999-10-10', 'm', '187', '[{\"name\":\"hunger\",\"percent\":94.575,\"val\":945750},{\"name\":\"thirst\",\"percent\":93.025,\"val\":930250},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', 0, NULL, '{}', 0, '{\"Výdrž\":{\"Current\":5.4,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STAMINA\"},\"Střelba\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_SHOOTING_ABILITY\"},\"Kapacita plic\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_LUNG_CAPACITY\"},\"Zámky\":{\"Current\":0,\"RemoveAmount\":-0.02,\"Stat\":\"\"},\"Síla\":{\"Current\":4.8,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STRENGTH\"},\"Řízení\":{\"Current\":0.55999999999999,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_DRIVING_ABILITY\"}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:8e41eee669eb8d0e5d6eae278beaf463328a999d', 0, 'user', NULL, 'unemployed', 0, '{\"bank\":9000,\"black_money\":0,\"money\":1000}', '[{\"name\":\"money\",\"count\":1000,\"slot\":1}]', '[]', '{\"heading\":0.0,\"x\":-79.5,\"y\":-941.7,\"z\":28.8}', 'Albert', 'Moudrý', '1990-07-11', 'm', '180', '[{\"name\":\"hunger\",\"percent\":99.09,\"val\":990900},{\"name\":\"thirst\",\"percent\":98.83,\"val\":988300},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', 0, NULL, '{}', 0, '{\"Síla\":{\"Current\":5.5,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STRENGTH\"},\"Výdrž\":{\"Current\":5.2,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STAMINA\"},\"Zámky\":{\"Current\":0,\"RemoveAmount\":-0.02,\"Stat\":\"\"},\"Řízení\":{\"Current\":0.5,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_DRIVING_ABILITY\"},\"Střelba\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_SHOOTING_ABILITY\"},\"Kapacita plic\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_LUNG_CAPACITY\"}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:9dd7913bbd62f2a73d45d26b229765a1828ece15', 0, 'user', NULL, 'taxi', 0, '{\"money\":391,\"bank\":85765,\"black_money\":0}', '[{\"slot\":1,\"count\":14,\"name\":\"redwcig\"},{\"count\":1,\"slot\":2,\"metadata\":{\"components\":[],\"durability\":100,\"registered\":\"Dino Lopez\"},\"name\":\"WEAPON_STUNGUN\"},{\"count\":1,\"slot\":3,\"metadata\":{\"serial\":\"CET4060521220\",\"components\":[],\"durability\":99.0,\"registered\":\"Dino Lopez\",\"ammo\":0},\"name\":\"WEAPON_COMBATPISTOL\"},{\"count\":1,\"slot\":4,\"metadata\":{\"components\":[],\"durability\":96.90000000000004},\"name\":\"WEAPON_SWITCHBLADE\"},{\"count\":1,\"slot\":5,\"metadata\":{\"components\":[],\"durability\":91.30000000000006},\"name\":\"WEAPON_CROWBAR\"},{\"slot\":6,\"count\":1,\"name\":\"boombox\"},{\"slot\":7,\"count\":6,\"name\":\"lockpick\"},{\"slot\":8,\"count\":8,\"name\":\"weed\"},{\"slot\":9,\"count\":4,\"name\":\"rolling_paper\"},{\"slot\":10,\"count\":1,\"name\":\"radio\"},{\"slot\":11,\"count\":2,\"name\":\"pet\"},{\"count\":1,\"slot\":12,\"metadata\":{\"lbPhoneNumber\":\"6024492\"},\"name\":\"phone\"},{\"count\":1,\"slot\":13,\"metadata\":{\"size\":[4,16],\"weight\":0,\"container\":\"OXD1672840692\"},\"name\":\"wallet\"},{\"slot\":14,\"count\":391,\"name\":\"money\"},{\"slot\":15,\"count\":2,\"name\":\"bandage\"},{\"count\":1,\"slot\":16,\"metadata\":{\"name\":\"test\",\"url\":\"https://cdn.discordapp.com/attachments/1059763505663852585/1059806428140949524/44JZH701.PNG\",\"showAllDescriptions\":true,\"width\":1920,\"height\":1080},\"name\":\"printerdocument\"},{\"count\":1,\"slot\":17,\"metadata\":{\"name\":\"test\",\"url\":\"https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.liverpoolecho.co.uk%2Fnews%2Fliverpool-news%2Ftext-emma-hospital-scam-leave-17095439&psig=AOvVaw3INqBEtqfc0iV6ZUTBMLva&ust=1672960397026000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCND0u6OFr_wCFQAAAAAdAAAAABAE\",\"showAllDescriptions\":true,\"width\":1920,\"height\":1080},\"name\":\"printerdocument\"},{\"slot\":18,\"count\":14,\"name\":\"clothe\"},{\"slot\":19,\"count\":119,\"name\":\"joint\"},{\"slot\":20,\"count\":3,\"name\":\"taco\"},{\"slot\":21,\"count\":1,\"name\":\"lighter\"},{\"slot\":22,\"count\":2,\"name\":\"lahev\"},{\"slot\":23,\"count\":1,\"name\":\"cola\"},{\"slot\":24,\"count\":5,\"name\":\"a4sheets\"},{\"slot\":25,\"count\":3,\"name\":\"icetea\"},{\"slot\":26,\"count\":1,\"name\":\"phone\"},{\"slot\":27,\"count\":1,\"name\":\"rubber\"},{\"count\":1,\"slot\":29,\"metadata\":{\"components\":[],\"durability\":100,\"registered\":\"Dino Lopez\"},\"name\":\"WEAPON_STUNGUN\"},{\"slot\":50,\"count\":1,\"name\":\"klice_lostmc\"}]', '[]', '{\"z\":30.7,\"y\":-981.6,\"x\":431.7,\"heading\":0.0}', 'Dino', 'Lopez', '1989-07-18', 'm', '179', '[{\"val\":850550,\"percent\":85.055,\"name\":\"hunger\"},{\"val\":807850,\"percent\":80.785,\"name\":\"thirst\"},{\"val\":0,\"percent\":0.0,\"name\":\"drunk\"}]', 0, NULL, '{}', 0, '{\"Výdrž\":{\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05,\"Current\":23.3999999999998},\"Řízení\":{\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01,\"Current\":53.46000000000051},\"Síla\":{\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05,\"Current\":4.15},\"Kapacita plic\":{\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01,\"Current\":0},\"Zámky\":{\"Stat\":\"\",\"RemoveAmount\":-0.02,\"Current\":0},\"Střelba\":{\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01,\"Current\":0}}', 'lostmc', '1', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:9dda4c73ff2a6ad2da4f50e592fd7ee2efbe6340', 0, 'user', NULL, 'police', 3, '{\"bank\":12350,\"black_money\":0,\"money\":395}', '[{\"metadata\":{\"durability\":90.39999999999995,\"components\":[\"at_flashlight\"],\"ammo\":12,\"serial\":\"LSPD\",\"registered\":\"William David Larson\"},\"count\":1,\"slot\":1,\"name\":\"WEAPON_COMBATPISTOL\"},{\"metadata\":{\"components\":[],\"durability\":100,\"registered\":\"William David Larson\"},\"count\":1,\"slot\":2,\"name\":\"WEAPON_STUNGUN\"},{\"count\":1,\"slot\":3,\"name\":\"radio\"},{\"metadata\":{\"components\":[],\"durability\":100},\"count\":1,\"slot\":4,\"name\":\"WEAPON_FLASHLIGHT\"},{\"metadata\":{\"components\":[],\"durability\":100},\"count\":1,\"slot\":5,\"name\":\"WEAPON_NIGHTSTICK\"},{\"count\":1,\"slot\":6,\"name\":\"klice_lspd\"},{\"count\":130,\"slot\":7,\"name\":\"ammo-9\"},{\"count\":1,\"slot\":8,\"name\":\"pouta\"},{\"count\":395,\"slot\":9,\"name\":\"money\"},{\"metadata\":{\"lbPhoneNumber\":\"2769218\"},\"count\":1,\"slot\":10,\"name\":\"phone\"},{\"metadata\":{\"description\":\"ŠPZ: 43CKY358\\n\\nSuma: 105$\"},\"count\":1,\"slot\":11,\"name\":\"blocek\"},{\"count\":10,\"slot\":14,\"name\":\"at_flashlight\"}]', '[]', '{\"y\":-977.9,\"x\":450.7,\"heading\":0.0,\"z\":25.7}', 'Petr', 'Saltyn', '1989-02-01', 'm', '181', '[{\"name\":\"hunger\",\"val\":708450,\"percent\":70.845},{\"name\":\"thirst\",\"val\":625150,\"percent\":62.515},{\"name\":\"drunk\",\"val\":0,\"percent\":0.0}]', 0, NULL, '{}', 0, '{\"Řízení\":{\"RemoveAmount\":-0.01,\"Current\":4.33999999999998,\"Stat\":\"MP0_DRIVING_ABILITY\"},\"Kapacita plic\":{\"RemoveAmount\":-0.01,\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\"},\"Výdrž\":{\"RemoveAmount\":-0.05,\"Current\":7.7,\"Stat\":\"MP0_STAMINA\"},\"Síla\":{\"RemoveAmount\":-0.05,\"Current\":3.75,\"Stat\":\"MP0_STRENGTH\"},\"Střelba\":{\"RemoveAmount\":-0.01,\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\"},\"Zámky\":{\"RemoveAmount\":-0.02,\"Current\":0,\"Stat\":\"\"}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:9e2999093fa40fed1583891e65a9c22a1bcb6f09', 0, 'user', NULL, 'unemployed', 0, '{\"bank\":9000,\"money\":1000,\"black_money\":0}', '[{\"name\":\"money\",\"count\":1000,\"slot\":1}]', '[]', '{\"heading\":0.0,\"x\":390.9,\"y\":-999.0,\"z\":29.4}', 'Damian', 'Lewis', '1994-04-06', 'm', '187', '[{\"name\":\"hunger\",\"val\":980400,\"percent\":98.04},{\"name\":\"thirst\",\"val\":974800,\"percent\":97.48},{\"name\":\"drunk\",\"val\":0,\"percent\":0.0}]', 0, NULL, '{}', 0, '{\"Zámky\":{\"Stat\":\"\",\"RemoveAmount\":-0.02,\"Current\":0},\"Řízení\":{\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01,\"Current\":0.49},\"Kapacita plic\":{\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01,\"Current\":0},\"Síla\":{\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05,\"Current\":4.95},\"Střelba\":{\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01,\"Current\":0},\"Výdrž\":{\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05,\"Current\":5.35}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:9f92532a07891e00ad46526c68b955a2935c3c24', 0, 'user', NULL, 'lsgc', 3, '{\"bank\":20858,\"black_money\":0,\"money\":6}', '[{\"slot\":1,\"name\":\"WEAPON_COMBATPISTOL\",\"count\":1,\"metadata\":{\"registered\":\"Nikolai Gustenavoj\",\"serial\":\"P7904198061\",\"ammo\":10,\"components\":[],\"durability\":93.59999999999998}},{\"slot\":2,\"name\":\"WEAPON_STUNGUN\",\"count\":1,\"metadata\":{\"durability\":99.9,\"registered\":\"Mike Smith\",\"components\":[]}},{\"slot\":3,\"name\":\"WEAPON_NIGHTSTICK\",\"count\":1,\"metadata\":{\"components\":[],\"durability\":98.60000000000002}},{\"slot\":4,\"name\":\"phone\",\"count\":1,\"metadata\":{\"lbPhoneNumber\":\"2568625\"}},{\"name\":\"radio\",\"count\":1,\"slot\":5},{\"name\":\"klice_lsgc\",\"count\":1,\"slot\":9},{\"slot\":10,\"name\":\"psychotest\",\"count\":1,\"metadata\":{\"description\":\"Jméno a příjmení: Mike Smith\\n\\nDatum narození: 2000-08-24\\n\\nVydal: Jonathan Price\\n\\nDatum vydání: 20/12/2022 o 21:24:06\"}},{\"slot\":14,\"name\":\"id\",\"count\":1,\"metadata\":{\"description\":\"Jméno a příjmení: Mike Smith\\n\\nDatum narození: 2000-08-24\\n\\nPohlaví: muž\\n\\nVýška: 188cm\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 22/12/2022 o 21:12:01\"}},{\"slot\":15,\"name\":\"dl\",\"count\":1,\"metadata\":{\"description\":\"Jméno a příjmení: Mike Smith\\n\\nDatum narození: 2000-08-24\\n\\nPohlaví: muž\\n\\nVýška: 188cm\\n\\nSkupiny: A B C D\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2023-01-08 o 19:37:20\"}},{\"name\":\"money\",\"count\":6,\"slot\":23},{\"name\":\"cola\",\"count\":3,\"slot\":24},{\"name\":\"burger\",\"count\":3,\"slot\":25},{\"slot\":19,\"name\":\"wl\",\"count\":1,\"metadata\":{\"description\":\"Jméno a příjmení: Mike Smith\\n\\nDatum narození: 2000-08-24\\n\\nPohlaví: muž\\n\\nVýška: 188cm\\n\\nVydal: Los Santos Gun Club\\n\\nDatum vydání: 2023-01-22 o 15:30:44\"}},{\"name\":\"a4sheets\",\"count\":1,\"slot\":20},{\"slot\":18,\"name\":\"wl\",\"count\":1,\"metadata\":{\"description\":\"Jméno a příjmení: jay Jay\\n\\nDatum narození: 2000-01-01\\n\\nPohlaví: muž\\n\\nVýška: 193cm\\n\\nVydal: Los Santos Gun Club\\n\\nDatum vydání: 2023-01-31 o 17:09:35\"}}]', '[]', '{\"z\":29.8,\"y\":-1113.8,\"x\":18.2,\"heading\":0.0}', 'Mike', 'Smith', '2000-08-24', 'm', '188', '[{\"val\":763050,\"name\":\"hunger\",\"percent\":76.305},{\"val\":695200,\"name\":\"thirst\",\"percent\":69.52000000000001},{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, NULL, '{}', 0, '{\"Střelba\":{\"RemoveAmount\":-0.01,\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\"},\"Kapacita plic\":{\"RemoveAmount\":-0.01,\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\"},\"Výdrž\":{\"RemoveAmount\":-0.05,\"Current\":19.99999999999968,\"Stat\":\"MP0_STAMINA\"},\"Řízení\":{\"RemoveAmount\":-0.01,\"Current\":21.81999999999988,\"Stat\":\"MP0_DRIVING_ABILITY\"},\"Zámky\":{\"RemoveAmount\":-0.02,\"Current\":0,\"Stat\":\"\"},\"Síla\":{\"RemoveAmount\":-0.05,\"Current\":0,\"Stat\":\"MP0_STRENGTH\"}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:9fc348017f6379702a0881a5f2b41c8efdd1422a', 0, 'user', NULL, 'taxi', 0, '{\"money\":2835,\"bank\":8875,\"black_money\":0}', '[{\"slot\":1,\"count\":1,\"name\":\"phone\"},{\"slot\":2,\"count\":2835,\"name\":\"money\"},{\"slot\":3,\"count\":2,\"name\":\"burger\"},{\"slot\":4,\"count\":2,\"name\":\"icetea\"},{\"slot\":5,\"count\":2,\"name\":\"bandage\"},{\"slot\":6,\"count\":10,\"name\":\"lockpick\"},{\"slot\":7,\"count\":38,\"name\":\"clothe\"},{\"slot\":8,\"count\":4,\"name\":\"weed\"},{\"slot\":9,\"count\":1,\"name\":\"phone\"},{\"slot\":10,\"count\":1,\"name\":\"phone\"},{\"slot\":11,\"count\":1,\"name\":\"joint\"},{\"slot\":12,\"count\":1,\"name\":\"lahev\"},{\"slot\":13,\"count\":2,\"name\":\"pet\"},{\"slot\":14,\"count\":4,\"name\":\"rolling_paper\"},{\"slot\":16,\"count\":1,\"name\":\"lopatka\"},{\"slot\":17,\"count\":1,\"name\":\"zahradnicky_kos\"}]', '[]', '{\"z\":29.1,\"y\":-1442.5,\"x\":494.8,\"heading\":0.0}', 'Ray', 'Wind', '1990-03-22', 'm', '190', '[{\"percent\":82.28999999999999,\"val\":822900,\"name\":\"hunger\"},{\"percent\":77.23,\"val\":772300,\"name\":\"thirst\"},{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"}]', 0, NULL, '{}', 0, '{\"Střelba\":{\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01},\"Výdrž\":{\"Current\":6.25,\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05},\"Síla\":{\"Current\":5.75,\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05},\"Zámky\":{\"Current\":0,\"Stat\":\"\",\"RemoveAmount\":-0.02},\"Kapacita plic\":{\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01},\"Řízení\":{\"Current\":9.16999999999999,\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:a0d0df65040210c65c5c097b25c5011637af60b6', 0, 'user', NULL, 'garbage', 0, '{\"money\":4397,\"black_money\":0,\"bank\":0}', '[{\"name\":\"water\",\"slot\":7,\"count\":5},{\"name\":\"sandwich\",\"slot\":8,\"count\":4},{\"name\":\"money\",\"slot\":2,\"count\":4397},{\"name\":\"phone\",\"slot\":25,\"count\":1},{\"metadata\":{\"weight\":0,\"size\":[4,16],\"container\":\"YFJ1673478933\"},\"name\":\"wallet\",\"slot\":6,\"count\":1},{\"name\":\"lahev\",\"slot\":1,\"count\":1}]', '[]', '{\"heading\":0.0,\"x\":219.8,\"y\":-803.7,\"z\":30.7}', 'Karel', 'Uzdichcal', '1990-05-02', 'm', '175', '[{\"name\":\"hunger\",\"percent\":81.17,\"val\":811700},{\"name\":\"thirst\",\"percent\":69.76,\"val\":697600},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', 0, NULL, '{}', 0, '{\"Síla\":{\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05,\"Current\":5.45},\"Výdrž\":{\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05,\"Current\":7.35},\"Střelba\":{\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01,\"Current\":0},\"Řízení\":{\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01,\"Current\":5.81999999999999},\"Zámky\":{\"Stat\":\"\",\"RemoveAmount\":-0.02,\"Current\":0},\"Kapacita plic\":{\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01,\"Current\":0}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:a0f7631205cb6e82660d688375a78c4dfd78a7b1', 0, 'user', NULL, 'fire', 1, '{\"bank\":5175,\"money\":600,\"black_money\":0}', '[{\"slot\":1,\"name\":\"phone\",\"metadata\":{\"lbPhoneNumber\":\"2054851\"},\"count\":1},{\"slot\":2,\"name\":\"money\",\"count\":600},{\"slot\":3,\"name\":\"radio\",\"count\":1},{\"slot\":4,\"name\":\"redwcig\",\"count\":1},{\"slot\":5,\"name\":\"wallet\",\"metadata\":{\"size\":[4,16],\"container\":\"BHH1673202552\",\"weight\":11},\"count\":1}]', '[]', '{\"y\":-1641.1,\"z\":29.8,\"heading\":0.0,\"x\":199.0}', 'John', 'White', '1998-05-01', 'm', '183', '[{\"percent\":92.72,\"name\":\"hunger\",\"val\":927200},{\"percent\":90.64,\"name\":\"thirst\",\"val\":906400},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, NULL, '{}', 0, '{\"Řízení\":{\"Stat\":\"MP0_DRIVING_ABILITY\",\"Current\":1.04999999999999,\"RemoveAmount\":-0.01},\"Zámky\":{\"Stat\":\"\",\"Current\":0,\"RemoveAmount\":-0.02},\"Kapacita plic\":{\"Stat\":\"MP0_LUNG_CAPACITY\",\"Current\":0,\"RemoveAmount\":-0.01},\"Výdrž\":{\"Stat\":\"MP0_STAMINA\",\"Current\":6.1,\"RemoveAmount\":-0.05},\"Střelba\":{\"Stat\":\"MP0_SHOOTING_ABILITY\",\"Current\":0,\"RemoveAmount\":-0.01},\"Síla\":{\"Stat\":\"MP0_STRENGTH\",\"Current\":4.7,\"RemoveAmount\":-0.05}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:a46aad5d50e8754e3611f8cd512abaf136512ba8', 0, 'user', NULL, 'taxi', 0, '{\"black_money\":0,\"bank\":10,\"money\":7539}', '[{\"slot\":1,\"count\":1,\"metadata\":{\"description\":\"Jméno a příjmení: Thomas Johnson\\n\\nDatum narození: 03/02/1997\\n\\nPohlaví: muž\\n\\nVýška: 180cm\\n\\nSkupiny: A B C \\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2023-01-01 o 15:30:46\"},\"name\":\"dl\"},{\"slot\":2,\"count\":1,\"metadata\":{\"description\":\"Jméno a příjmení: Thomas Johnson\\n\\nDatum narození: 03/02/1997\\n\\nPohlaví: muž\\n\\nVýška: 180cm\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2023-01-01 o 15:25:06\"},\"name\":\"id\"},{\"slot\":3,\"count\":1,\"metadata\":{\"lbPhoneNumber\":\"2057643\"},\"name\":\"phone\"},{\"slot\":4,\"count\":1,\"name\":\"pet\"},{\"slot\":6,\"count\":4,\"name\":\"lahev\"},{\"slot\":8,\"count\":1,\"name\":\"joint\"},{\"slot\":9,\"count\":3,\"name\":\"lockpick\"},{\"slot\":11,\"count\":7539,\"name\":\"money\"}]', '[]', '{\"z\":29.3,\"heading\":0.0,\"x\":340.3,\"y\":-629.9}', 'Thomas', 'Johnson', '1997-02-03', 'm', '180', '[{\"percent\":99.825,\"val\":998250,\"name\":\"hunger\"},{\"percent\":99.775,\"val\":997750,\"name\":\"thirst\"},{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"}]', 0, NULL, '{}', 0, '{\"Střelba\":{\"Stat\":\"MP0_SHOOTING_ABILITY\",\"Current\":0,\"RemoveAmount\":-0.01},\"Výdrž\":{\"Stat\":\"MP0_STAMINA\",\"Current\":13.84999999999995,\"RemoveAmount\":-0.05},\"Zámky\":{\"Stat\":\"\",\"Current\":0,\"RemoveAmount\":-0.02},\"Kapacita plic\":{\"Stat\":\"MP0_LUNG_CAPACITY\",\"Current\":0,\"RemoveAmount\":-0.01},\"Řízení\":{\"Stat\":\"MP0_DRIVING_ABILITY\",\"Current\":10.40999999999998,\"RemoveAmount\":-0.01},\"Síla\":{\"Stat\":\"MP0_STRENGTH\",\"Current\":3.4,\"RemoveAmount\":-0.05}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:a7ee375deb6e8137f3d6287fca222196489eff9a', 0, 'user', NULL, 'taxi', 0, '{\"bank\":9150,\"black_money\":0,\"money\":1860}', '[{\"name\":\"money\",\"slot\":1,\"count\":1860},{\"metadata\":{\"description\":\"Jméno a příjmení: Kate Allen\\n\\nDatum narození: 21/01/2000\\n\\nPohlaví: žena\\n\\nVýška: 160cm\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2023-01-22 o 16:30:07\"},\"name\":\"id\",\"slot\":2,\"count\":1},{\"metadata\":{\"description\":\"Jméno a příjmení: Kate Allen\\n\\nDatum narození: 21/01/2000\\n\\nPohlaví: žena\\n\\nVýška: 160cm\\n\\nSkupiny: B \\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2023-01-22 o 16:35:40\"},\"name\":\"dl\",\"slot\":3,\"count\":1},{\"name\":\"phone\",\"slot\":5,\"count\":1}]', '[]', '{\"x\":-16.8,\"y\":-1457.1,\"z\":30.7,\"heading\":0.0}', 'Kate', 'Allen', '2000-01-21', 'f', '160', '[{\"percent\":82.395,\"name\":\"hunger\",\"val\":823950},{\"percent\":77.365,\"name\":\"thirst\",\"val\":773650},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, NULL, '{}', 0, '{\"Střelba\":{\"RemoveAmount\":-0.01,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"Current\":0},\"Kapacita plic\":{\"RemoveAmount\":-0.01,\"Stat\":\"MP0_LUNG_CAPACITY\",\"Current\":0},\"Výdrž\":{\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STAMINA\",\"Current\":6.2},\"Zámky\":{\"RemoveAmount\":-0.02,\"Stat\":\"\",\"Current\":0},\"Síla\":{\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STRENGTH\",\"Current\":4.2},\"Řízení\":{\"RemoveAmount\":-0.01,\"Stat\":\"MP0_DRIVING_ABILITY\",\"Current\":6.79999999999999}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:a8cfd975ad8e17a808e69fea1873127e0e8dd9e9', 0, 'user', NULL, 'taxi', 0, '{\"black_money\":0,\"bank\":150,\"money\":19154}', '[{\"count\":1,\"name\":\"krabice\",\"slot\":1,\"metadata\":{\"weight\":200,\"container\":\"MPZ1675187914\",\"size\":[50,50000]}},{\"count\":4,\"name\":\"cola\",\"slot\":2},{\"count\":2,\"name\":\"burger\",\"slot\":3},{\"count\":1,\"name\":\"WEAPON_COMBATPISTOL\",\"slot\":4,\"metadata\":{\"ammo\":10,\"registered\":\"Nikolai Gustenavoj\",\"durability\":98.6,\"serial\":\"P28233633545059156433\",\"components\":[]}},{\"count\":6,\"name\":\"puerta\",\"slot\":5},{\"count\":5,\"name\":\"llanta\",\"slot\":6},{\"count\":1,\"name\":\"autoradio\",\"slot\":7},{\"count\":19154,\"name\":\"money\",\"slot\":8},{\"count\":18,\"name\":\"ammo-9\",\"slot\":9},{\"count\":1,\"name\":\"phone\",\"slot\":10},{\"count\":2,\"name\":\"capo\",\"slot\":11},{\"count\":1,\"name\":\"krhle\",\"slot\":15},{\"count\":1,\"name\":\"lopatka\",\"slot\":16},{\"count\":1,\"name\":\"zahradnicky_kos\",\"slot\":17}]', '[]', '{\"z\":19.3,\"y\":-1711.9,\"x\":-528.1,\"heading\":0.0}', 'Jay', 'Jay', '2000-01-01', 'm', '193', '[{\"name\":\"hunger\",\"val\":827800,\"percent\":82.78},{\"name\":\"thirst\",\"val\":778150,\"percent\":77.815},{\"name\":\"drunk\",\"val\":0,\"percent\":0.0}]', 0, NULL, '{}', 0, '{\"Zámky\":{\"RemoveAmount\":-0.02,\"Current\":0,\"Stat\":\"\"},\"Výdrž\":{\"RemoveAmount\":-0.05,\"Current\":15.64999999999993,\"Stat\":\"MP0_STAMINA\"},\"Kapacita plic\":{\"RemoveAmount\":-0.01,\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\"},\"Řízení\":{\"RemoveAmount\":-0.01,\"Current\":26.89999999999995,\"Stat\":\"MP0_DRIVING_ABILITY\"},\"Síla\":{\"RemoveAmount\":-0.05,\"Current\":2.9,\"Stat\":\"MP0_STRENGTH\"},\"Střelba\":{\"RemoveAmount\":-0.01,\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\"}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:aa067204a8e40dfc2807f01efeb9d2dbc066bdfd', 0, 'user', NULL, 'unemployed', 0, '{\"black_money\":0,\"bank\":11535.0,\"money\":21816}', '[{\"metadata\":{\"registered\":\"Carl Cox\",\"serial\":\"GBX2076270003\",\"durability\":83.59999999999998,\"ammo\":12,\"components\":[]},\"count\":1,\"name\":\"WEAPON_COMBATPISTOL\",\"slot\":1},{\"metadata\":{\"durability\":100,\"components\":[]},\"count\":1,\"name\":\"WEAPON_FLASHLIGHT\",\"slot\":2},{\"count\":1,\"name\":\"pouta\",\"slot\":3},{\"count\":1,\"name\":\"radio\",\"slot\":4},{\"count\":1,\"name\":\"lopatka\",\"slot\":5},{\"metadata\":{\"description\":\"Jméno a příjmení: Carl Cox\\n\\nDatum narození: 05/08/1990\\n\\nPohlaví: muž\\n\\nVýška: 182cm\\n\\nSkupiny: A \\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2022-12-27 o 16:09:48\"},\"count\":1,\"name\":\"dl\",\"slot\":6},{\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: N4M6S270\\n\\nSuma: 14$\\n\\nPodpis: Carl Cox\\n\\nDatum vydání: 2022-12-27 o 16:12:03\"},\"count\":1,\"name\":\"blocek\",\"slot\":7},{\"count\":3,\"name\":\"pet\",\"slot\":8},{\"count\":1,\"name\":\"lahev\",\"slot\":9},{\"count\":1,\"name\":\"phone\",\"slot\":10},{\"count\":1,\"name\":\"lockpick\",\"slot\":11},{\"count\":3,\"name\":\"clothe\",\"slot\":12},{\"count\":36,\"name\":\"ammo-9\",\"slot\":13},{\"count\":21816,\"name\":\"money\",\"slot\":14},{\"count\":1,\"name\":\"boombox\",\"slot\":15},{\"count\":1,\"name\":\"klice_lspd\",\"slot\":16},{\"count\":4,\"name\":\"burger\",\"slot\":17},{\"count\":2,\"name\":\"hackerdevice\",\"slot\":18},{\"metadata\":{\"description\":\"Jméno a příjmení: Carl Cox\\n\\nDatum narození: 05/08/1990\\n\\nPohlaví: muž\\n\\nVýška: 182cm\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2022-12-27 o 16:01:25\"},\"count\":1,\"name\":\"id\",\"slot\":19},{\"metadata\":{\"lbPhoneNumber\":\"2767031\"},\"count\":1,\"name\":\"phone\",\"slot\":20},{\"count\":1,\"name\":\"klicky\",\"slot\":21},{\"count\":1,\"name\":\"fertilizer\",\"slot\":22}]', '[]', '{\"heading\":0.0,\"z\":34.2,\"y\":3684.9,\"x\":1854.1}', 'Carl', 'Cox', '1990-08-05', 'm', '182', '[{\"val\":778100,\"name\":\"hunger\",\"percent\":77.81},{\"val\":714700,\"name\":\"thirst\",\"percent\":71.47},{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, NULL, '{}', 0, '{\"Výdrž\":{\"Current\":9.34999999999995,\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05},\"Zámky\":{\"Current\":0,\"Stat\":\"\",\"RemoveAmount\":-0.02},\"Řízení\":{\"Current\":23.33999999999994,\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01},\"Kapacita plic\":{\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01},\"Střelba\":{\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01},\"Síla\":{\"Current\":2.1,\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, '');
INSERT INTO `users` (`identifier`, `id`, `group`, `skin`, `job`, `job_grade`, `accounts`, `inventory`, `loadout`, `position`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `status`, `is_dead`, `phone_number`, `tattoos`, `jail`, `skills`, `secondjob`, `secondjob_grade`, `last_property`, `hotbar`, `garage_limit`, `disabled`, `callsign`, `profilepic`, `duty`, `lore`) VALUES
('char1:ae2cb11c557cd7d1e73c64c0a55a5d065b05e476', 0, 'user', NULL, 'unemployed', 0, '{\"black_money\":0,\"bank\":9600,\"money\":100}', '[{\"slot\":1,\"name\":\"money\",\"count\":100},{\"slot\":2,\"metadata\":{\"description\":\"Jméno a příjmení: Cassandra Clark\\n\\nDatum narození: 01/08/1991\\n\\nPohlaví: žena\\n\\nVýška: 160cm\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2023-01-29 o 12:23:05\"},\"name\":\"id\",\"count\":1},{\"slot\":3,\"metadata\":{\"description\":\"Jméno a příjmení: Cassandra Clark\\n\\nDatum narození: 01/08/1991\\n\\nPohlaví: žena\\n\\nVýška: 160cm\\n\\nSkupiny: B \\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2023-01-29 o 12:30:42\"},\"name\":\"dl\",\"count\":1}]', '[]', '{\"z\":30.8,\"heading\":0.0,\"x\":247.7,\"y\":-761.5}', 'Cassandra', 'Clark', '1991-08-01', 'f', '160', '[{\"val\":742400,\"percent\":74.24,\"name\":\"hunger\"},{\"val\":668800,\"percent\":66.88,\"name\":\"thirst\"},{\"val\":0,\"percent\":0.0,\"name\":\"drunk\"}]', 0, NULL, '{}', 0, '{\"Zámky\":{\"Stat\":\"\",\"Current\":0,\"RemoveAmount\":-0.02},\"Řízení\":{\"Stat\":\"MP0_DRIVING_ABILITY\",\"Current\":6.87,\"RemoveAmount\":-0.01},\"Výdrž\":{\"Stat\":\"MP0_STAMINA\",\"Current\":4.8,\"RemoveAmount\":-0.05},\"Síla\":{\"Stat\":\"MP0_STRENGTH\",\"Current\":4.3,\"RemoveAmount\":-0.05},\"Kapacita plic\":{\"Stat\":\"MP0_LUNG_CAPACITY\",\"Current\":0,\"RemoveAmount\":-0.01},\"Střelba\":{\"Stat\":\"MP0_SHOOTING_ABILITY\",\"Current\":0,\"RemoveAmount\":-0.01}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:b1dc43c6fb4ef390d0248afa02f04484c4f34a36', 0, 'admin', NULL, 'galaxy', 4, '{\"bank\":98593075,\"black_money\":0,\"money\":4900}', '[{\"name\":\"dl\",\"metadata\":{\"description\":\"Jméno a příjmení: Johny English\\n\\nDatum narození: 1988-08-08\\n\\nPohlaví: muž\\n\\nVýška: 188cm\\n\\nSkupiny: A B C D\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 25/12/2022 o 13:08:48\"},\"count\":1,\"slot\":7},{\"name\":\"klice_galaxy\",\"count\":1,\"slot\":15},{\"name\":\"phone\",\"metadata\":{\"lbPhoneNumber\":\"5209270\"},\"count\":1,\"slot\":9},{\"name\":\"money\",\"count\":4900,\"slot\":10},{\"name\":\"klice_royal\",\"count\":1,\"slot\":14},{\"name\":\"klice_lspd\",\"count\":1,\"slot\":13},{\"name\":\"id\",\"metadata\":{\"description\":\"Jméno a příjmení: Johny English\\n\\nDatum narození: 1988-08-08\\n\\nPohlaví: muž\\n\\nVýška: 188cm\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 25/12/2022 o 13:03:32\"},\"count\":1,\"slot\":6}]', '[]', '{\"heading\":0.0,\"x\":7.4,\"y\":544.2,\"z\":175.5}', 'Johny', 'English', '1988-08-08', 'm', '188', '[{\"percent\":98.91499999999999,\"name\":\"hunger\",\"val\":989150},{\"percent\":98.605,\"name\":\"thirst\",\"val\":986050},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, NULL, '{}', 0, '{\"Zámky\":{\"Current\":0,\"RemoveAmount\":-0.02,\"Stat\":\"\"},\"Síla\":{\"Current\":4.8,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STRENGTH\"},\"Řízení\":{\"Current\":3.61999999999999,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_DRIVING_ABILITY\"},\"Střelba\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_SHOOTING_ABILITY\"},\"Kapacita plic\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_LUNG_CAPACITY\"},\"Výdrž\":{\"Current\":10.64999999999994,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STAMINA\"}}', 'royal', '5', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:b26012bbcfa5b8f4f373ccb07f42b17ad0a089f7', 0, 'user', NULL, 'unemployed', 0, '{\"bank\":375,\"money\":1,\"black_money\":0}', '[{\"name\":\"money\",\"slot\":4,\"count\":1}]', '[]', '{\"z\":25.4,\"y\":-1009.4,\"x\":487.5,\"heading\":0.0}', 'Jakub', 'Hanz', '2000-05-02', 'm', '176', '[{\"val\":991600,\"percent\":99.16,\"name\":\"hunger\"},{\"val\":989200,\"percent\":98.92,\"name\":\"thirst\"},{\"val\":0,\"percent\":0.0,\"name\":\"drunk\"}]', 1, NULL, '{}', 0, '{\"Výdrž\":{\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05,\"Current\":6.55},\"Kapacita plic\":{\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01,\"Current\":0},\"Zámky\":{\"Stat\":\"\",\"RemoveAmount\":-0.02,\"Current\":0},\"Síla\":{\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05,\"Current\":6.35},\"Řízení\":{\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01,\"Current\":4.57},\"Střelba\":{\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01,\"Current\":0}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, 'Jbohaty'),
('char1:b74830a74973eec67381240b5eca56f387b5f355', 0, 'user', NULL, 'unemployed', 0, '{\"bank\":9000,\"black_money\":0,\"money\":0}', '[]', '[]', '{\"heading\":0.0,\"x\":-1041.7,\"y\":-2745.8,\"z\":21.3}', 'Dolfi', 'Dtmb', '1999-11-11', 'm', '175', '[{\"percent\":99.72,\"name\":\"hunger\",\"val\":997200},{\"percent\":99.64,\"name\":\"thirst\",\"val\":996400},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 1, NULL, '{}', 0, NULL, 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, 'nemám fear'),
('char1:b8f5cff72638cf6f177cfae48f00f0b9ba1e81f1', 0, 'user', NULL, 'unemployed', 0, '{\"bank\":9075,\"black_money\":0,\"money\":0}', '[]', '[]', '{\"heading\":0.0,\"x\":-1035.4,\"y\":-2732.8,\"z\":20.2}', 'Ismael', 'Salazar', '1989-02-28', 'm', '187', '[{\"percent\":98.81,\"name\":\"hunger\",\"val\":988100},{\"percent\":98.47,\"name\":\"thirst\",\"val\":984700},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, NULL, '{}', 0, '{\"Kapacita plic\":{\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01},\"Zámky\":{\"Current\":0,\"Stat\":\"\",\"RemoveAmount\":-0.02},\"Síla\":{\"Current\":5,\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05},\"Řízení\":{\"Current\":0,\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01},\"Výdrž\":{\"Current\":5,\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05},\"Střelba\":{\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:b9d3bd028db5565a2c08befd51bd1ee78c670a1b', 0, 'user', NULL, 'unemployed', 0, '{\"money\":47,\"black_money\":0,\"bank\":6470}', '[{\"name\":\"sandwich\",\"slot\":1,\"count\":9},{\"name\":\"water\",\"slot\":2,\"count\":9},{\"name\":\"weed\",\"slot\":3,\"count\":44},{\"name\":\"joint\",\"slot\":4,\"count\":2},{\"name\":\"headbag\",\"slot\":5,\"count\":1},{\"name\":\"towing_rope\",\"slot\":6,\"count\":1},{\"name\":\"money\",\"slot\":7,\"count\":47},{\"name\":\"blocek\",\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: BEIQG071\\n\\nSuma: 130$\\n\\nPodpis: Tomas Marny\\n\\nDatum vydání: 2023-01-09 o 17:58:25\"},\"slot\":8,\"count\":1},{\"name\":\"zahradnicky_kos\",\"slot\":9,\"count\":1},{\"name\":\"pet\",\"slot\":10,\"count\":4},{\"name\":\"rolling_paper\",\"slot\":11,\"count\":3},{\"name\":\"lopatka\",\"slot\":12,\"count\":1},{\"name\":\"ziptie\",\"slot\":13,\"count\":1},{\"name\":\"lahev\",\"slot\":14,\"count\":2},{\"name\":\"lockpick\",\"slot\":15,\"count\":5},{\"name\":\"id\",\"metadata\":{\"description\":\"Jméno a příjmení: Tomas Marny\\n\\nDatum narození: 1989-12-18\\n\\nPohlaví: muž\\n\\nVýška: 180cm\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2023-01-09 o 19:48:10\"},\"slot\":16,\"count\":1},{\"name\":\"dl\",\"metadata\":{\"description\":\"Jméno a příjmení: Tomas Marny\\n\\nDatum narození: 1989-12-18\\n\\nPohlaví: muž\\n\\nVýška: 180cm\\n\\nSkupiny: B \\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2023-01-09 o 19:51:24\"},\"slot\":17,\"count\":1}]', '[]', '{\"heading\":0.0,\"z\":5.1,\"y\":-1335.8,\"x\":-817.5}', 'Tomas', 'Marny', '1989-12-18', 'm', '180', '[{\"val\":736450,\"name\":\"hunger\",\"percent\":73.64500000000001},{\"val\":915400,\"name\":\"thirst\",\"percent\":91.53999999999999},{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, NULL, '{}', 0, '{\"Síla\":{\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05,\"Current\":4.1},\"Řízení\":{\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01,\"Current\":8.42999999999998},\"Výdrž\":{\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05,\"Current\":7.8},\"Zámky\":{\"Stat\":\"\",\"RemoveAmount\":-0.02,\"Current\":0},\"Kapacita plic\":{\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01,\"Current\":0},\"Střelba\":{\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01,\"Current\":0}}', 'taxi', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:b9ec0e7eb7412b5276fe21fd57b31ebb74beef82', 0, 'user', NULL, 'garbage', 0, '{\"black_money\":0,\"money\":3100,\"bank\":7200}', '[{\"name\":\"money\",\"count\":3100,\"slot\":1}]', '[]', '{\"heading\":0.0,\"x\":-41.1,\"y\":-138.9,\"z\":57.3}', 'Antonio', 'Křepelka', '1950-09-15', 'm', '175', '[{\"val\":962900,\"name\":\"hunger\",\"percent\":96.28999999999999},{\"val\":952300,\"name\":\"thirst\",\"percent\":95.23},{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, NULL, '{}', 0, '{\"Kapacita plic\":{\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01},\"Výdrž\":{\"Current\":5.65,\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05},\"Zámky\":{\"Current\":0,\"Stat\":\"\",\"RemoveAmount\":-0.02},\"Síla\":{\"Current\":5.65,\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05},\"Řízení\":{\"Current\":0.92999999999999,\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01},\"Střelba\":{\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:bd2b2a60cf8b8a34db2a7f2ec41424e7d168b516', 0, 'user', NULL, 'taxi', 0, '{\"bank\":3908,\"black_money\":0,\"money\":1279}', '[{\"metadata\":{\"components\":[],\"durability\":93.60000000000004},\"count\":1,\"name\":\"WEAPON_KNIFE\",\"slot\":1},{\"metadata\":{\"description\":\"Jméno a příjmení: Adam Bageta\\n\\nDatum narození: 2000-01-20\\n\\nPohlaví: muž\\n\\nVýška: 178cm\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2023-02-17 o 15:18:59\"},\"count\":1,\"name\":\"id\",\"slot\":15},{\"count\":3,\"name\":\"lockpick\",\"slot\":16},{\"count\":3,\"name\":\"weed\",\"slot\":17},{\"count\":2,\"name\":\"headbag\",\"slot\":18},{\"count\":1,\"name\":\"ziptie\",\"slot\":19},{\"metadata\":{\"description\":\"Jméno a příjmení: Adam Bageta\\n\\nDatum narození: 2000-01-20\\n\\nPohlaví: muž\\n\\nVýška: 178cm\\n\\nSkupiny: A B C D\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2023-02-17 o 15:27:45\"},\"count\":1,\"name\":\"dl\",\"slot\":20},{\"count\":7,\"name\":\"clothe\",\"slot\":21},{\"count\":1,\"name\":\"water\",\"slot\":7},{\"count\":1,\"name\":\"cola\",\"slot\":8},{\"count\":1,\"name\":\"water\",\"slot\":9},{\"count\":12,\"name\":\"ammo-9\",\"slot\":23},{\"count\":1,\"name\":\"phone\",\"slot\":13},{\"count\":1279,\"name\":\"money\",\"slot\":14},{\"count\":1,\"name\":\"bandage\",\"slot\":22}]', '[]', '{\"x\":711.3,\"heading\":0.0,\"z\":38.4,\"y\":-440.7}', 'Adam', 'Bageta', '2000-01-20', 'm', '178', '[{\"percent\":75.955,\"name\":\"hunger\",\"val\":759550},{\"percent\":72.685,\"name\":\"thirst\",\"val\":726850},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, NULL, '{}', 0, '{\"Zámky\":{\"Current\":0,\"Stat\":\"\",\"RemoveAmount\":-0.02},\"Síla\":{\"Current\":5.15,\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05},\"Řízení\":{\"Current\":28.24000000000004,\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01},\"Střelba\":{\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01},\"Výdrž\":{\"Current\":8.64999999999998,\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05},\"Kapacita plic\":{\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01}}', 'taxi', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:bf0c5a9a45b42d37401e74c4dc96b7df7330895c', 0, 'user', NULL, 'unemployed', 0, '{\"money\":1000,\"bank\":9075,\"black_money\":0}', '[{\"count\":1000,\"name\":\"money\",\"slot\":1}]', '[]', '{\"x\":-61.8,\"heading\":0.0,\"z\":26.5,\"y\":-1093.3}', 'Jonny', 'Bones', '2000-09-09', 'm', '188', '[{\"percent\":96.745,\"name\":\"hunger\",\"val\":967450},{\"percent\":95.815,\"name\":\"thirst\",\"val\":958150},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, NULL, '{}', 0, '{\"Řízení\":{\"Current\":0.76999999999999,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_DRIVING_ABILITY\"},\"Síla\":{\"Current\":4.9,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STRENGTH\"},\"Zámky\":{\"Current\":0,\"RemoveAmount\":-0.02,\"Stat\":\"\"},\"Výdrž\":{\"Current\":5.3,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STAMINA\"},\"Kapacita plic\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_LUNG_CAPACITY\"},\"Střelba\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_SHOOTING_ABILITY\"}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:bf832bd139dae6e3cbae28a2642d2e0e8a6ac9bc', 0, 'user', NULL, 'unemployed', 0, '{\"bank\":9000,\"black_money\":0,\"money\":1000}', '[{\"count\":1000,\"name\":\"money\",\"slot\":1}]', '[]', '{\"heading\":0.0,\"x\":-1044.9,\"y\":-2749.9,\"z\":21.4}', 'John', 'Kent', '1988-10-29', 'm', '180', '[{\"name\":\"hunger\",\"val\":992650,\"percent\":99.265},{\"name\":\"thirst\",\"val\":990550,\"percent\":99.055},{\"name\":\"drunk\",\"val\":0,\"percent\":0.0}]', 0, NULL, '{}', 0, NULL, 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:c396a419ddc789db2e28620271a3f3a344decc99', 0, 'user', NULL, 'unemployed', 0, '{\"bank\":9075,\"black_money\":0,\"money\":1000}', '[{\"name\":\"money\",\"count\":1000,\"slot\":1}]', '[]', '{\"heading\":0.0,\"x\":-1037.6,\"y\":-2731.7,\"z\":20.2}', 'Bob', 'Zoniga', '1981-05-12', 'm', '175', '[{\"name\":\"hunger\",\"val\":992300,\"percent\":99.22999999999999},{\"name\":\"thirst\",\"val\":990100,\"percent\":99.00999999999999},{\"name\":\"drunk\",\"val\":0,\"percent\":0.0}]', 0, NULL, '{}', 0, NULL, 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:c399bbd3b165eb56da25b6c42d38ced0d108104a', 0, 'user', NULL, 'unemployed', 0, '{\"bank\":9075,\"black_money\":0,\"money\":1000}', '[{\"name\":\"money\",\"count\":1000,\"slot\":1}]', '[]', '{\"heading\":0.0,\"x\":-887.2,\"y\":-2416.4,\"z\":13.8}', 'Joseph', 'Curtis', '1977-04-04', 'm', '175', '[{\"name\":\"hunger\",\"val\":975500,\"percent\":97.55},{\"name\":\"thirst\",\"val\":968500,\"percent\":96.85000000000001},{\"name\":\"drunk\",\"val\":0,\"percent\":0.0}]', 0, NULL, '{}', 0, '{\"Výdrž\":{\"Current\":5.1,\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05},\"Řízení\":{\"Current\":0.19,\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01},\"Kapacita plic\":{\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01},\"Střelba\":{\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01},\"Síla\":{\"Current\":7.9,\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05},\"Zámky\":{\"Current\":0,\"Stat\":\"\",\"RemoveAmount\":-0.02}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:c46d5b8613e5dac25f1c39bfc3a57ba0c2cf76f5', 0, 'user', NULL, 'taxi', 0, '{\"black_money\":0,\"money\":500,\"bank\":9150}', '[{\"name\":\"money\",\"count\":500,\"slot\":1},{\"name\":\"phone\",\"slot\":2,\"count\":1,\"metadata\":{\"lbPhoneNumber\":\"9072407\"}}]', '[]', '{\"heading\":0.0,\"z\":29.2,\"y\":-1065.1,\"x\":127.8}', 'Wilson', 'Riley', '1992-01-19', 'm', '182', '[{\"name\":\"hunger\",\"percent\":94.645,\"val\":946450},{\"name\":\"thirst\",\"percent\":93.11500000000001,\"val\":931150},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', 0, NULL, '{}', 0, '{\"Výdrž\":{\"Current\":5.55,\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05},\"Zámky\":{\"Current\":0,\"Stat\":\"\",\"RemoveAmount\":-0.02},\"Řízení\":{\"Current\":1.97,\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01},\"Střelba\":{\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01},\"Kapacita plic\":{\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01},\"Síla\":{\"Current\":4.75,\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, 'Narodil se ve městě NY, kde chtěl být policistou, tak se nažil být policistou a stal se jím, po nějaké době se ale rozhodl že poletí pryč a zkusí někde jinde policii, navšíví město LS a uvidí co bude dál'),
('char1:c9134d4df5b10443686b0370214af498ed464fad', 0, 'admin', NULL, 'offpolice', 10, '{\"money\":3335,\"black_money\":0,\"bank\":61075}', '[{\"name\":\"WEAPON_COMBATPISTOL\",\"metadata\":{\"registered\":\"William David Larson\",\"durability\":92.8,\"serial\":\"LSPD\",\"ammo\":12,\"components\":[\"at_flashlight\"]},\"slot\":1,\"count\":1},{\"name\":\"WEAPON_STUNGUN\",\"metadata\":{\"registered\":\"William David Larson\",\"durability\":100,\"components\":[]},\"slot\":2,\"count\":1},{\"name\":\"WEAPON_NIGHTSTICK\",\"metadata\":{\"durability\":98.7,\"components\":[]},\"slot\":3,\"count\":1},{\"name\":\"WEAPON_FLASHLIGHT\",\"metadata\":{\"durability\":100,\"components\":[]},\"slot\":4,\"count\":1},{\"name\":\"WEAPON_CARBINERIFLE_MK2\",\"metadata\":{\"registered\":\"Richard Moore\",\"durability\":100,\"serial\":\"LSPD\",\"ammo\":0,\"components\":[\"at_grip\",\"at_flashlight\",\"at_scope_medium\"]},\"slot\":5,\"count\":1},{\"name\":\"hackerdevice\",\"slot\":6,\"count\":2},{\"name\":\"armour\",\"slot\":7,\"count\":2},{\"name\":\"blocek\",\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: 43CKY358\\n\\nSuma: 206$\\n\\nPodpis: Anthony Woods\\n\\nDatum vydání: 2023-01-03 o 20:02:16\"},\"slot\":8,\"count\":1},{\"name\":\"blocek\",\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: 43CKY358\\n\\nSuma: 151$\\n\\nPodpis: Anthony Woods\\n\\nDatum vydání: 2023-01-03 o 20:25:36\"},\"slot\":9,\"count\":1},{\"name\":\"pouta\",\"slot\":10,\"count\":10},{\"name\":\"spikestrip\",\"slot\":11,\"count\":1},{\"name\":\"radio\",\"slot\":12,\"count\":1},{\"name\":\"blocek\",\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: 43CKY358\\n\\nSuma: 148$\\n\\nPodpis: Anthony Woods\\n\\nDatum vydání: 2023-01-03 o 20:42:10\"},\"slot\":13,\"count\":1},{\"name\":\"blocek\",\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: 43CKY358\\n\\nSuma: 151$\\n\\nPodpis: Anthony Woods\\n\\nDatum vydání: 2023-01-03 o 21:54:41\"},\"slot\":14,\"count\":1},{\"name\":\"phone\",\"metadata\":{\"lbPhoneNumber\":\"6508484\"},\"slot\":15,\"count\":1},{\"name\":\"ammo-9\",\"slot\":16,\"count\":37},{\"name\":\"ammo-rifle\",\"slot\":17,\"count\":150},{\"name\":\"blocek\",\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: 43CKY358\\n\\nSuma: 51$\\n\\nPodpis: Michael Espinoza\\n\\nDatum vydání: 2022-12-27 o 19:48:40\"},\"slot\":18,\"count\":1},{\"name\":\"blocek\",\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: 69RRM369\\n\\nSuma: 203$\\n\\nPodpis: Michael Espinoza\\n\\nDatum vydání: 2023-01-03 o 18:44:23\"},\"slot\":19,\"count\":1},{\"name\":\"blocek\",\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: 43CKY358\\n\\nSuma: 108$\\n\\nPodpis: Michael Espinoza\\n\\nDatum vydání: 2022-12-27 o 19:41:05\"},\"slot\":20,\"count\":1},{\"name\":\"blocek\",\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: 43CKY358\\n\\nSuma: 148$\\n\\nPodpis: Anthony Woods\\n\\nDatum vydání: 2023-01-03 o 22:39:53\"},\"slot\":21,\"count\":1},{\"name\":\"blocek\",\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: 29CKR853\\n\\nSuma: 146$\\n\\nPodpis: Anthony Woods\\n\\nDatum vydání: 2023-01-04 o 21:59:03\"},\"slot\":22,\"count\":1},{\"name\":\"blocek\",\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: 43ORK744\\n\\nSuma: 123$\\n\\nPodpis: Anthony Woods\\n\\nDatum vydání: 2023-01-04 o 22:16:52\"},\"slot\":23,\"count\":1},{\"name\":\"blocek\",\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: 43CKY358\\n\\nSuma: 201$\\n\\nPodpis: Anthony Woods\\n\\nDatum vydání: 2023-01-04 o 22:36:27\"},\"slot\":24,\"count\":1},{\"name\":\"sling\",\"slot\":25,\"count\":1},{\"name\":\"dl\",\"metadata\":{\"description\":\"Jméno a příjmení: Anthony Woods\\n\\nDatum narození: 1985-04-01\\n\\nPohlaví: muž\\n\\nVýška: 179cm\\n\\nSkupiny: A B C D\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 19/12/2022 o 21:56:34\"},\"slot\":26,\"count\":1},{\"name\":\"id\",\"metadata\":{\"description\":\"Jméno a příjmení: Anthony Woods\\n\\nDatum narození: 1985-04-01\\n\\nPohlaví: muž\\n\\nVýška: 179cm\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 19/12/2022 o 21:56:32\"},\"slot\":27,\"count\":1},{\"name\":\"klice_lspd\",\"slot\":28,\"count\":1},{\"name\":\"money\",\"slot\":34,\"count\":3335},{\"name\":\"psychotest\",\"metadata\":{\"description\":\"Jméno a příjmení: Anthony Woods\\n\\nDatum narození: 1985-04-01\\n\\nVydal: Peter Williams\\n\\nDatum vydání: 2023-01-09 o 21:06:20\"},\"slot\":36,\"count\":1},{\"name\":\"hackerdevice\",\"slot\":47,\"count\":1},{\"name\":\"blocek\",\"metadata\":{\"description\":\"ŠPZ: 24BTU530\\n\\nSuma: 165$\"},\"slot\":48,\"count\":1},{\"name\":\"blocek\",\"metadata\":{\"description\":\"ŠPZ: 21CMK145\\n\\nSuma: 107$\"},\"slot\":50,\"count\":1}]', '[]', '{\"heading\":0.0,\"z\":242.1,\"y\":-731.9,\"x\":122.3}', 'Anthony', 'Woods', '1985-04-01', 'm', '179', '[{\"percent\":95.03,\"name\":\"hunger\",\"val\":950300},{\"percent\":93.61,\"name\":\"thirst\",\"val\":936100},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, NULL, '{}', 0, '{\"Kapacita plic\":{\"RemoveAmount\":-0.01,\"Stat\":\"MP0_LUNG_CAPACITY\",\"Current\":0},\"Síla\":{\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STRENGTH\",\"Current\":0},\"Zámky\":{\"RemoveAmount\":-0.02,\"Stat\":\"\",\"Current\":0},\"Výdrž\":{\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STAMINA\",\"Current\":15.84999999999973},\"Střelba\":{\"RemoveAmount\":-0.01,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"Current\":0},\"Řízení\":{\"RemoveAmount\":-0.01,\"Stat\":\"MP0_DRIVING_ABILITY\",\"Current\":42.81000000000014}}', 'taxi', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:c963c49c4cd2285fc9875fd055be7cde7c0a1ba7', 0, 'user', NULL, 'unemployed', 0, '{\"money\":1000,\"bank\":9075,\"black_money\":0}', '[{\"name\":\"money\",\"slot\":1,\"count\":1000}]', '[]', '{\"heading\":0.0,\"z\":36.7,\"y\":4009.2,\"x\":2461.5}', 'KKT', 'Jebek', '1950-10-10', 'm', '200', '[{\"val\":979350,\"name\":\"hunger\",\"percent\":97.935},{\"val\":973450,\"name\":\"thirst\",\"percent\":97.345},{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, NULL, '{}', 0, '{\"Výdrž\":{\"Current\":4.9,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STAMINA\"},\"Zámky\":{\"Current\":0,\"RemoveAmount\":-0.02,\"Stat\":\"\"},\"Střelba\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_SHOOTING_ABILITY\"},\"Kapacita plic\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_LUNG_CAPACITY\"},\"Řízení\":{\"Current\":2.58,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_DRIVING_ABILITY\"},\"Síla\":{\"Current\":4.9,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STRENGTH\"}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, 'Narodil sa ako kokot.'),
('char1:ce2690ad05b06c49c8ad9e403c655044ccc7caea', 0, 'user', NULL, 'unemployed', 0, '{\"bank\":9075,\"black_money\":0,\"money\":1000}', '[{\"count\":1000,\"name\":\"money\",\"slot\":1}]', '[]', '{\"x\":692.3,\"heading\":0.0,\"z\":25.1,\"y\":-1260.0}', 'Huawei', 'Steve', '2000-07-15', 'm', '175', '[{\"percent\":97.725,\"name\":\"hunger\",\"val\":977250},{\"percent\":97.075,\"name\":\"thirst\",\"val\":970750},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 1, NULL, '{}', 0, '{\"Zámky\":{\"RemoveAmount\":-0.02,\"Stat\":\"\",\"Current\":0},\"Výdrž\":{\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STAMINA\",\"Current\":5.1},\"Řízení\":{\"RemoveAmount\":-0.01,\"Stat\":\"MP0_DRIVING_ABILITY\",\"Current\":2.18},\"Síla\":{\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STRENGTH\",\"Current\":4.9},\"Střelba\":{\"RemoveAmount\":-0.01,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"Current\":0},\"Kapacita plic\":{\"RemoveAmount\":-0.01,\"Stat\":\"MP0_LUNG_CAPACITY\",\"Current\":0}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:cf9ed96a68ff9f7a734ff33c14454878a1234c25', 0, 'user', NULL, 'irish', 3, '{\"black_money\":0,\"bank\":9275,\"money\":1000}', '[{\"count\":1000,\"name\":\"money\",\"slot\":1},{\"count\":4,\"name\":\"puerta\",\"slot\":2},{\"count\":3,\"name\":\"llanta\",\"slot\":3},{\"count\":1,\"name\":\"capo\",\"slot\":4},{\"count\":1,\"name\":\"klice_irish\",\"slot\":25}]', '[]', '{\"z\":18.3,\"y\":-1707.4,\"x\":-380.9,\"heading\":0.0}', 'Brian', 'Black', '2000-04-11', 'm', '175', '[{\"name\":\"hunger\",\"val\":940850,\"percent\":94.085},{\"name\":\"thirst\",\"val\":923950,\"percent\":92.39500000000001},{\"name\":\"drunk\",\"val\":0,\"percent\":0.0}]', 1, NULL, '{}', 0, '{\"Řízení\":{\"Stat\":\"MP0_DRIVING_ABILITY\",\"Current\":1.56,\"RemoveAmount\":-0.01},\"Střelba\":{\"Stat\":\"MP0_SHOOTING_ABILITY\",\"Current\":0,\"RemoveAmount\":-0.01},\"Kapacita plic\":{\"Stat\":\"MP0_LUNG_CAPACITY\",\"Current\":0,\"RemoveAmount\":-0.01},\"Síla\":{\"Stat\":\"MP0_STRENGTH\",\"Current\":4.8,\"RemoveAmount\":-0.05},\"Zámky\":{\"Stat\":\"\",\"Current\":0,\"RemoveAmount\":-0.02},\"Výdrž\":{\"Stat\":\"MP0_STAMINA\",\"Current\":5.6,\"RemoveAmount\":-0.05}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:cfc223e5955007a454d0d3c087b5df3acec9b039', 0, 'user', NULL, 'unemployed', 0, '{\"black_money\":0,\"bank\":9000,\"money\":1000}', '[{\"name\":\"money\",\"slot\":1,\"count\":1000}]', '[]', '{\"y\":-2731.3,\"z\":20.2,\"heading\":0.0,\"x\":-1036.6}', 'jack', 'morrtis', '1991-09-24', 'm', '175', '[{\"name\":\"hunger\",\"val\":996850,\"percent\":99.685},{\"name\":\"thirst\",\"val\":995950,\"percent\":99.595},{\"name\":\"drunk\",\"val\":0,\"percent\":0.0}]', 0, NULL, '{}', 0, '{\"Řízení\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_DRIVING_ABILITY\"},\"Kapacita plic\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_LUNG_CAPACITY\"},\"Výdrž\":{\"Current\":5,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STAMINA\"},\"Zámky\":{\"Current\":0,\"RemoveAmount\":-0.02,\"Stat\":\"\"},\"Síla\":{\"Current\":5.5,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STRENGTH\"},\"Střelba\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_SHOOTING_ABILITY\"}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:d0752e87d373f99d52872390de8b4e9f6c680bea', 0, 'user', NULL, 'unemployed', 0, '{\"black_money\":0,\"bank\":0,\"money\":7823}', '[{\"count\":7823,\"slot\":1,\"name\":\"money\"},{\"metadata\":{\"registered\":\"john wilson\",\"serial\":\"N8056979117\",\"components\":[],\"durability\":100},\"count\":1,\"slot\":2,\"name\":\"WEAPON_STUNGUN\"},{\"metadata\":{\"components\":[],\"durability\":100},\"count\":1,\"slot\":3,\"name\":\"WEAPON_KNIFE\"},{\"count\":1,\"slot\":4,\"name\":\"water\"},{\"count\":1,\"slot\":5,\"name\":\"burger\"},{\"count\":1,\"slot\":9,\"name\":\"phone\"}]', '[]', '{\"z\":45.5,\"heading\":0.0,\"x\":1893.1,\"y\":3207.2}', 'John', 'Wilson', '1980-11-11', 'm', '180', '[{\"val\":956950,\"name\":\"hunger\",\"percent\":95.695},{\"val\":878500,\"name\":\"thirst\",\"percent\":87.85},{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, NULL, '{}', 0, '{\"Síla\":{\"Current\":4.55,\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05},\"Výdrž\":{\"Current\":5.75,\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05},\"Zámky\":{\"Current\":0,\"Stat\":\"\",\"RemoveAmount\":-0.02},\"Střelba\":{\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01},\"Kapacita plic\":{\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01},\"Řízení\":{\"Current\":4.11,\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:d3da62f33fe647236cdb1840121f6c72fbec6284', 0, 'admin', NULL, 'police', 9, '{\"money\":499999751873,\"bank\":23235,\"black_money\":0}', '[{\"metadata\":{\"serial\":\"LSPD\",\"registered\":\"William David Larson\",\"ammo\":10,\"components\":[],\"durability\":97.8},\"name\":\"WEAPON_COMBATPISTOL\",\"slot\":1,\"count\":1},{\"metadata\":{\"components\":[],\"registered\":\"William David Larson\",\"durability\":100},\"name\":\"WEAPON_STUNGUN\",\"slot\":2,\"count\":1},{\"metadata\":{\"serial\":\"LSPD\",\"registered\":\"William David Larson\",\"ammo\":14,\"components\":[],\"durability\":98.71},\"name\":\"WEAPON_CARBINERIFLE\",\"slot\":3,\"count\":1},{\"metadata\":{\"components\":[],\"durability\":100},\"name\":\"WEAPON_FLASHLIGHT\",\"slot\":4,\"count\":1},{\"metadata\":{\"components\":[],\"durability\":99.9},\"name\":\"WEAPON_NIGHTSTICK\",\"slot\":5,\"count\":1},{\"metadata\":{\"description\":\"ŠPZ: 61ZBR073\\n\\nSuma: 103$\"},\"name\":\"blocek\",\"slot\":6,\"count\":1},{\"metadata\":{\"description\":\"ŠPZ: 03POZ835\\n\\nSuma: 200$\"},\"name\":\"blocek\",\"slot\":7,\"count\":1},{\"name\":\"pouta\",\"slot\":8,\"count\":7},{\"name\":\"armour\",\"slot\":9,\"count\":1},{\"name\":\"radio\",\"slot\":10,\"count\":1},{\"name\":\"ammo-9\",\"slot\":11,\"count\":455},{\"name\":\"ammo-rifle\",\"slot\":12,\"count\":443},{\"name\":\"radio\",\"slot\":13,\"count\":1},{\"name\":\"klice_lspd\",\"slot\":14,\"count\":1},{\"metadata\":{\"components\":[],\"durability\":100},\"name\":\"WEAPON_NIGHTSTICK\",\"slot\":15,\"count\":1},{\"metadata\":{\"lbPhoneNumber\":\"6669374\"},\"name\":\"phone\",\"slot\":16,\"count\":1},{\"metadata\":{\"components\":[],\"durability\":100},\"name\":\"WEAPON_FLASHLIGHT\",\"slot\":17,\"count\":1},{\"name\":\"money\",\"slot\":18,\"count\":499999751873},{\"name\":\"sling\",\"slot\":19,\"count\":10},{\"metadata\":{\"description\":\"Jméno a příjmení: William David Larson\\n\\nDatum narození: 1995-07-13\\n\\nPohlaví: muž\\n\\nVýška: 175cm\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 19/12/2022 o 21:54:51\"},\"name\":\"id\",\"slot\":20,\"count\":1},{\"name\":\"lockpick\",\"slot\":21,\"count\":1},{\"metadata\":{\"description\":\"Jméno a příjmení: William David Larson\\n\\nDatum narození: 1995-07-13\\n\\nPohlaví: muž\\n\\nVýška: 175cm\\n\\nSkupiny: B \\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 19/12/2022 o 21:54:53\"},\"name\":\"dl\",\"slot\":22,\"count\":1},{\"name\":\"sandwich\",\"slot\":23,\"count\":3},{\"name\":\"water\",\"slot\":24,\"count\":3},{\"name\":\"pet\",\"slot\":25,\"count\":2},{\"name\":\"klice_fire\",\"slot\":26,\"count\":1},{\"name\":\"medikit\",\"slot\":27,\"count\":2},{\"name\":\"klicky\",\"slot\":28,\"count\":2},{\"name\":\"klice_bennys\",\"slot\":29,\"count\":1},{\"name\":\"klice_lostmc\",\"slot\":30,\"count\":1},{\"name\":\"puerta\",\"slot\":31,\"count\":2},{\"name\":\"llanta\",\"slot\":32,\"count\":2},{\"name\":\"capo\",\"slot\":33,\"count\":1}]', '[]', '{\"heading\":0.0,\"x\":451.8,\"y\":-981.1,\"z\":25.7}', 'William David', 'Larson', '1995-07-13', 'm', '175', '[{\"percent\":61.63999999999999,\"val\":616400,\"name\":\"hunger\"},{\"percent\":37.28,\"val\":372800,\"name\":\"thirst\"},{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"}]', 0, NULL, '{}', 0, '{\"Výdrž\":{\"RemoveAmount\":-0.05,\"Current\":11.49999999999983,\"Stat\":\"MP0_STAMINA\"},\"Síla\":{\"RemoveAmount\":-0.05,\"Current\":1.44999999999998,\"Stat\":\"MP0_STRENGTH\"},\"Řízení\":{\"RemoveAmount\":-0.01,\"Current\":29.48999999999988,\"Stat\":\"MP0_DRIVING_ABILITY\"},\"Zámky\":{\"RemoveAmount\":-0.02,\"Current\":0,\"Stat\":\"\"},\"Střelba\":{\"RemoveAmount\":-0.01,\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\"},\"Kapacita plic\":{\"RemoveAmount\":-0.01,\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\"}}', 'taxi', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:d6914dc2d3c646d2c4b0c051ff2dd87ee9d6d6e6', 0, 'user', NULL, 'unemployed', 0, '{\"money\":1800,\"black_money\":0,\"bank\":9150}', '[{\"slot\":1,\"name\":\"money\",\"count\":1800}]', '[]', '{\"z\":4.2,\"heading\":0.0,\"x\":-919.1,\"y\":-1200.2}', 'Jarry', 'Milson', '1998-02-22', 'm', '180', '[{\"name\":\"hunger\",\"val\":923000,\"percent\":92.30000000000001},{\"name\":\"thirst\",\"val\":901000,\"percent\":90.10000000000001},{\"name\":\"drunk\",\"val\":0,\"percent\":0.0}]', 1, NULL, '{}', 0, '{\"Zámky\":{\"Stat\":\"\",\"RemoveAmount\":-0.02,\"Current\":0},\"Řízení\":{\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01,\"Current\":2.76},\"Střelba\":{\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01,\"Current\":0},\"Výdrž\":{\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05,\"Current\":6.3},\"Síla\":{\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05,\"Current\":4.7},\"Kapacita plic\":{\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01,\"Current\":0}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:d8a03af5e7ba303c6c4dbe926000500753e7b2f9', 0, 'user', NULL, 'unemployed', 0, '{\"money\":1000,\"bank\":9075,\"black_money\":0}', '[{\"count\":1000,\"slot\":1,\"name\":\"money\"}]', '[]', '{\"z\":13.0,\"heading\":0.0,\"x\":-878.3,\"y\":-2597.4}', 'Adam', 'Brouzdal', '1995-11-11', 'm', '175', '[{\"val\":997200,\"name\":\"hunger\",\"percent\":99.72},{\"val\":996400,\"name\":\"thirst\",\"percent\":99.64},{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, NULL, '{}', 0, '{\"Síla\":{\"Current\":5,\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05},\"Zámky\":{\"Current\":0,\"Stat\":\"\",\"RemoveAmount\":-0.02},\"Střelba\":{\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01},\"Výdrž\":{\"Current\":5,\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05},\"Kapacita plic\":{\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01},\"Řízení\":{\"Current\":0.1,\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:e0483639489427af68689aa9912e18333144ae29', 0, 'user', NULL, 'unemployed', 0, '{\"money\":1000,\"bank\":9000,\"black_money\":0}', '[{\"name\":\"money\",\"count\":1000,\"slot\":1}]', '[]', '{\"y\":-2733.5,\"z\":20.2,\"heading\":0.0,\"x\":-1031.0}', 'Taylor', 'Smith', '1995-10-10', 'm', '179', '[{\"val\":990550,\"name\":\"hunger\",\"percent\":99.055},{\"val\":987850,\"name\":\"thirst\",\"percent\":98.785},{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, NULL, '{}', 0, NULL, 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:e4807a83e5380ba101b1a5d6a940f68a1f895908', 0, 'user', NULL, 'unemployed', 0, '{\"bank\":9000,\"black_money\":0,\"money\":1000}', '[{\"slot\":1,\"name\":\"money\",\"count\":1000}]', '[]', '{\"y\":-2733.7,\"z\":20.2,\"heading\":0.0,\"x\":-1036.0}', 'Ritchie', 'Switch', '1990-08-01', 'm', '183', '[{\"val\":991250,\"name\":\"hunger\",\"percent\":99.125},{\"val\":988750,\"name\":\"thirst\",\"percent\":98.875},{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, NULL, '{}', 0, NULL, 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:eb32c560584bc0b41ff66831d9cb42cfb0358dea', 0, 'user', NULL, 'unemployed', 0, '{\"money\":300,\"bank\":7500,\"black_money\":0}', '[{\"metadata\":{\"description\":\"Jméno a příjmení: Jonathan Lloyd O´Connor\\n\\nDatum narození: 15/03/1985\\n\\nPohlaví: muž\\n\\nVýška: 185cm\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 19/12/2022 o 22:06:54\"},\"count\":1,\"name\":\"id\",\"slot\":48},{\"metadata\":{\"description\":\"Jméno a příjmení: Jonathan Lloyd O´Connor\\n\\nDatum narození: 15/03/1985\\n\\nPohlaví: muž\\n\\nVýška: 185cm\\n\\nSkupiny: A B \\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 19/12/2022 o 22:18:41\"},\"count\":1,\"name\":\"dl\",\"slot\":47},{\"metadata\":{\"lbPhoneNumber\":\"6024644\"},\"count\":1,\"name\":\"phone\",\"slot\":50},{\"count\":300,\"name\":\"money\",\"slot\":41}]', '[]', '{\"z\":32.2,\"y\":-1042.0,\"x\":167.2,\"heading\":0.0}', 'Jonathan Lloyd', 'O´Connor', '1985-03-15', 'm', '185', '[{\"percent\":90.445,\"name\":\"hunger\",\"val\":904450},{\"percent\":87.715,\"name\":\"thirst\",\"val\":877150},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, NULL, '{}', 0, '{\"Síla\":{\"Current\":4.6,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STRENGTH\"},\"Střelba\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_SHOOTING_ABILITY\"},\"Zámky\":{\"Current\":0,\"RemoveAmount\":-0.02,\"Stat\":\"\"},\"Kapacita plic\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_LUNG_CAPACITY\"},\"Výdrž\":{\"Current\":9.59999999999999,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STAMINA\"},\"Řízení\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_DRIVING_ABILITY\"}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:f3e71e94ead0e0b54c28491a2b012f196ab8d472', 0, 'user', NULL, 'taxi', 0, '{\"money\":20458,\"black_money\":0,\"bank\":21080}', '[{\"name\":\"money\",\"slot\":1,\"count\":20458},{\"metadata\":{\"description\":\"Jméno a příjmení: Mike Mamutovic\\n\\nDatum narození: 1970-01-01\\n\\nPohlaví: muž\\n\\nVýška: 185cm\\n\\nSkupiny: A B C D\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2023-01-10 o 19:18:51\"},\"name\":\"dl\",\"slot\":2,\"count\":1},{\"metadata\":{\"description\":\"Jméno a příjmení: Mike Mamutovic\\n\\nDatum narození: 1970-01-01\\n\\nPohlaví: muž\\n\\nVýška: 185cm\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2023-01-10 o 19:18:47\"},\"name\":\"id\",\"slot\":3,\"count\":1},{\"metadata\":{\"durability\":100,\"components\":[]},\"name\":\"WEAPON_SWITCHBLADE\",\"slot\":4,\"count\":1},{\"name\":\"bandage\",\"slot\":5,\"count\":5},{\"metadata\":{\"weight\":6,\"size\":[4,16],\"container\":\"GIO1673379396\"},\"name\":\"wallet\",\"slot\":6,\"count\":1},{\"name\":\"phone\",\"slot\":7,\"count\":1},{\"name\":\"lahev\",\"slot\":8,\"count\":1},{\"name\":\"icetea\",\"slot\":9,\"count\":4},{\"name\":\"hotdog\",\"slot\":10,\"count\":3},{\"name\":\"water\",\"slot\":14,\"count\":2},{\"name\":\"radio\",\"slot\":46,\"count\":1},{\"name\":\"klice_lostmc\",\"slot\":47,\"count\":1}]', '[]', '{\"heading\":0.0,\"x\":953.0,\"y\":-108.6,\"z\":74.4}', 'Mike', 'Mamutovic', '1970-01-01', 'm', '185', '[{\"name\":\"hunger\",\"val\":580700,\"percent\":58.07},{\"name\":\"thirst\",\"val\":712900,\"percent\":71.28999999999999},{\"name\":\"drunk\",\"val\":0,\"percent\":0.0}]', 0, NULL, '{}', 0, '{\"Řízení\":{\"RemoveAmount\":-0.01,\"Stat\":\"MP0_DRIVING_ABILITY\",\"Current\":75.27000000000031},\"Střelba\":{\"RemoveAmount\":-0.01,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"Current\":0},\"Síla\":{\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STRENGTH\",\"Current\":0.74999999999999},\"Kapacita plic\":{\"RemoveAmount\":-0.01,\"Stat\":\"MP0_LUNG_CAPACITY\",\"Current\":0},\"Výdrž\":{\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STAMINA\",\"Current\":31.39999999999978},\"Zámky\":{\"RemoveAmount\":-0.02,\"Stat\":\"\",\"Current\":0}}', 'lostmc', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char1:f79cde692e14a1c7fe68aaf4bf6e2e2028b435c4', 0, 'user', NULL, 'unemployed', 0, '{\"bank\":9000,\"black_money\":0,\"money\":0}', '[]', '[]', '{\"z\":19.4,\"x\":-1036.0,\"y\":-2740.3,\"heading\":0.0}', 'Jack', 'Weed', '2000-11-11', 'm', '175', '[{\"percent\":97.34,\"name\":\"hunger\",\"val\":973400},{\"percent\":96.58,\"name\":\"thirst\",\"val\":965800},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 1, NULL, '{}', 0, '{\"Řízení\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_DRIVING_ABILITY\"},\"Síla\":{\"Current\":4.9,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STRENGTH\"},\"Střelba\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_SHOOTING_ABILITY\"},\"Zámky\":{\"Current\":0,\"RemoveAmount\":-0.02,\"Stat\":\"\"},\"Kapacita plic\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_LUNG_CAPACITY\"},\"Výdrž\":{\"Current\":5.15,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STAMINA\"}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, 'aaa'),
('char1:fd77610e8f35fbcb85957438e3647d5b4b26c29c', 0, 'user', NULL, 'offfire', 0, '{\"bank\":4000,\"black_money\":0,\"money\":456}', '[{\"name\":\"money\",\"count\":456,\"slot\":1},{\"name\":\"phone\",\"metadata\":{\"lbPhoneNumber\":\"3205368\"},\"count\":1,\"slot\":2},{\"name\":\"wallet\",\"metadata\":{\"weight\":10,\"container\":\"JYC1671568244\",\"size\":[4,16]},\"count\":1,\"slot\":3},{\"name\":\"redwcig\",\"count\":17,\"slot\":4},{\"name\":\"radio\",\"count\":1,\"slot\":5},{\"name\":\"lighter\",\"count\":1,\"slot\":6},{\"name\":\"burger\",\"count\":1,\"slot\":7},{\"name\":\"klice_fire\",\"count\":1,\"slot\":8},{\"name\":\"ziptie\",\"count\":1,\"slot\":9},{\"name\":\"bandage\",\"count\":3,\"slot\":10},{\"name\":\"lockpick\",\"count\":1,\"slot\":11},{\"name\":\"medikit\",\"count\":1,\"slot\":12}]', '[]', '{\"heading\":0.0,\"x\":191.9,\"y\":-1613.7,\"z\":29.3}', 'Martin', 'Smith', '1995-05-21', 'm', '189', '[{\"percent\":81.345,\"name\":\"hunger\",\"val\":813450},{\"percent\":91.855,\"name\":\"thirst\",\"val\":918550},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, NULL, '{}', 0, '{\"Síla\":{\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05,\"Current\":4.5},\"Výdrž\":{\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05,\"Current\":6.5},\"Řízení\":{\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01,\"Current\":3.91},\"Střelba\":{\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01,\"Current\":0},\"Kapacita plic\":{\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01,\"Current\":0},\"Zámky\":{\"Stat\":\"\",\"RemoveAmount\":-0.02,\"Current\":0}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char2:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 0, 'user', NULL, 'ambulance', 7, '{\"money\":0,\"black_money\":0,\"bank\":15495}', '[{\"name\":\"phone\",\"metadata\":{\"lbPhoneNumber\":\"6026642\"},\"slot\":1,\"count\":1},{\"name\":\"radio\",\"slot\":2,\"count\":1},{\"name\":\"klice_ems\",\"slot\":6,\"count\":1},{\"name\":\"id\",\"metadata\":{\"description\":\"Jméno a příjmení: Peter Williams\\n\\nDatum narození: 1996-04-04\\n\\nPohlaví: muž\\n\\nVýška: 189cm\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2023-01-07 o 18:33:19\"},\"slot\":11,\"count\":1},{\"name\":\"dl\",\"metadata\":{\"description\":\"Jméno a příjmení: Peter Williams\\n\\nDatum narození: 1996-04-04\\n\\nPohlaví: muž\\n\\nVýška: 189cm\\n\\nSkupiny: A B C \\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2023-01-07 o 18:43:11\"},\"slot\":12,\"count\":1}]', '[]', '{\"heading\":0.0,\"z\":43.3,\"y\":-591.1,\"x\":312.3}', 'Peter', 'Williams', '1996-04-04', 'm', '189', '[{\"percent\":76.75999999999999,\"name\":\"hunger\",\"val\":767600},{\"percent\":70.12,\"name\":\"thirst\",\"val\":701200},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, NULL, '{}', 0, '{\"Síla\":{\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05,\"Current\":3.1},\"Zámky\":{\"Stat\":\"\",\"RemoveAmount\":-0.02,\"Current\":0},\"Kapacita plic\":{\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01,\"Current\":0},\"Střelba\":{\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01,\"Current\":0},\"Výdrž\":{\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05,\"Current\":5.85},\"Řízení\":{\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01,\"Current\":9.76999999999996}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char2:58c130ffb0b6b2ae3b2cbc189ddbf643c65aa6d4', 0, 'user', NULL, 'unemployed', 0, '{\"bank\":8129,\"money\":450,\"black_money\":0}', '[{\"name\":\"money\",\"count\":450,\"slot\":1},{\"name\":\"pet\",\"count\":1,\"slot\":2},{\"name\":\"headbag\",\"count\":1,\"slot\":27},{\"name\":\"phone\",\"metadata\":{\"lbPhoneNumber\":\"2768399\"},\"count\":1,\"slot\":26},{\"name\":\"lighter\",\"count\":1,\"slot\":5}]', '[]', '{\"heading\":0.0,\"x\":552.1,\"y\":-1063.9,\"z\":12.3}', 'Jack', 'Firehad', '1999-07-18', 'm', '190', '[{\"percent\":92.755,\"val\":927550,\"name\":\"hunger\"},{\"percent\":90.685,\"val\":906850,\"name\":\"thirst\"},{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"}]', 0, NULL, '{}', 0, '{\"Výdrž\":{\"Current\":6.3,\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05},\"Síla\":{\"Current\":4.9,\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05},\"Zámky\":{\"Current\":0,\"Stat\":\"\",\"RemoveAmount\":-0.02},\"Střelba\":{\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01},\"Řízení\":{\"Current\":16.98999999999997,\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01},\"Kapacita plic\":{\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char2:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', 0, 'admin', NULL, 'police', 6, '{\"bank\":7947,\"black_money\":0,\"money\":1062}', '[{\"slot\":1,\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: 21CMK145\\n\\nSuma: 129$\\n\\nPodpis: David Jones\\n\\nDatum vydání: 2023-02-01 o 17:28:02\"},\"name\":\"blocek\",\"count\":1},{\"slot\":2,\"metadata\":{\"ammo\":12,\"registered\":\"William David Larson\",\"components\":[\"at_flashlight\"],\"serial\":\"LSPD\",\"durability\":98.2},\"name\":\"WEAPON_COMBATPISTOL\",\"count\":1},{\"slot\":3,\"metadata\":{\"durability\":100,\"registered\":\"David Jones\",\"components\":[]},\"name\":\"WEAPON_STUNGUN\",\"count\":1},{\"slot\":4,\"metadata\":{\"durability\":100,\"components\":[]},\"name\":\"WEAPON_FLASHLIGHT\",\"count\":1},{\"slot\":5,\"metadata\":{\"durability\":100,\"components\":[]},\"name\":\"WEAPON_NIGHTSTICK\",\"count\":1},{\"slot\":6,\"metadata\":{\"type\":1},\"name\":\"klice_lspd\",\"count\":1},{\"slot\":7,\"name\":\"money\",\"count\":1062},{\"slot\":8,\"metadata\":{\"lbPhoneNumber\":\"4802681\"},\"name\":\"phone\",\"count\":1},{\"slot\":9,\"name\":\"lighter\",\"count\":1},{\"slot\":10,\"name\":\"redwcig\",\"count\":18},{\"slot\":11,\"name\":\"radio\",\"count\":1},{\"slot\":12,\"name\":\"pouta\",\"count\":2},{\"slot\":13,\"name\":\"klicky\",\"count\":1},{\"slot\":14,\"metadata\":{\"container\":\"YRV1671986753\",\"size\":[30,15000]},\"name\":\"evidencebag\",\"count\":1},{\"slot\":15,\"name\":\"ammo-9\",\"count\":145},{\"slot\":16,\"name\":\"medikit\",\"count\":1}]', '[]', '{\"heading\":0.0,\"x\":447.1,\"y\":-980.3,\"z\":25.7}', 'David', 'Jones', '1970-10-10', 'm', '187', '[{\"percent\":82.81500000000001,\"val\":828150,\"name\":\"hunger\"},{\"percent\":77.905,\"val\":779050,\"name\":\"thirst\"},{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"}]', 0, NULL, '{}', 0, '{\"Výdrž\":{\"Current\":13.99999999999989,\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05},\"Kapacita plic\":{\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01},\"Řízení\":{\"Current\":19.13999999999996,\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01},\"Zámky\":{\"Current\":0,\"Stat\":\"\",\"RemoveAmount\":-0.02},\"Střelba\":{\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01},\"Síla\":{\"Current\":1.4,\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, 'Adminská postava / PD MaraŽaba'),
('char2:6c8c6ae8c062d2f8c67c6f72bfedd76aea374840', 0, 'user', NULL, 'sanandreas', 5, '{\"bank\":9000,\"black_money\":0,\"money\":100}', '[{\"name\":\"money\",\"count\":100,\"slot\":1},{\"name\":\"phone\",\"count\":1,\"metadata\":{\"lbPhoneNumber\":\"3553845\"},\"slot\":2},{\"name\":\"id\",\"count\":1,\"metadata\":{\"description\":\"Jméno a příjmení: John Martin Roberts\\n\\nDatum narození: 10/10/1965\\n\\nPohlaví: muž\\n\\nVýška: 179cm\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2022-12-30 o 02:33:58\"},\"slot\":3},{\"name\":\"dl\",\"count\":1,\"metadata\":{\"description\":\"Jméno a příjmení: John Martin Roberts\\n\\nDatum narození: 10/10/1965\\n\\nPohlaví: muž\\n\\nVýška: 179cm\\n\\nSkupiny: B \\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2022-12-30 o 02:34:00\"},\"slot\":4}]', '[]', '{\"heading\":0.0,\"x\":238.2,\"y\":-1098.5,\"z\":29.3}', 'John Martin', 'Roberts', '1965-10-10', 'm', '179', '[{\"name\":\"hunger\",\"val\":993350,\"percent\":99.335},{\"name\":\"thirst\",\"val\":991450,\"percent\":99.14500000000001},{\"name\":\"drunk\",\"val\":0,\"percent\":0.0}]', 0, NULL, '{}', 0, '{\"Střelba\":{\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01},\"Kapacita plic\":{\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01},\"Zámky\":{\"Current\":0,\"Stat\":\"\",\"RemoveAmount\":-0.02},\"Řízení\":{\"Current\":0,\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01},\"Výdrž\":{\"Current\":5.2,\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05},\"Síla\":{\"Current\":5,\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char2:83f8d788299c4cf1928bbd97d37da3db69da3b3a', 0, 'admin', NULL, 'police', 3, '{\"bank\":15908,\"black_money\":0,\"money\":0}', '[{\"slot\":1,\"metadata\":{\"components\":[],\"ammo\":12,\"durability\":94.99999999999996,\"serial\":\"LSPD\",\"registered\":\"William David Larson\"},\"count\":1,\"name\":\"WEAPON_COMBATPISTOL\"},{\"slot\":2,\"metadata\":{\"durability\":99.1,\"components\":[],\"registered\":\"William David Larson\"},\"count\":1,\"name\":\"WEAPON_STUNGUN\"},{\"slot\":3,\"metadata\":{\"components\":[],\"durability\":98.50000000000003},\"count\":1,\"name\":\"WEAPON_NIGHTSTICK\"},{\"slot\":4,\"count\":1,\"name\":\"pouta\"},{\"slot\":6,\"metadata\":{\"weight\":0,\"size\":[4,16],\"container\":\"VKX1672264736\"},\"count\":1,\"name\":\"wallet\"},{\"slot\":7,\"count\":38,\"name\":\"ammo-9\"},{\"slot\":8,\"count\":2,\"name\":\"bandage\"},{\"slot\":9,\"count\":17,\"name\":\"redwcig\"},{\"slot\":11,\"count\":1,\"name\":\"lighter\"},{\"slot\":12,\"count\":1,\"name\":\"radio\"},{\"slot\":13,\"metadata\":{\"lbPhoneNumber\":\"5559588\"},\"count\":1,\"name\":\"phone\"},{\"slot\":15,\"metadata\":{\"type\":1},\"count\":2,\"name\":\"klice_lspd\"}]', '[]', '{\"heading\":0.0,\"x\":-224.6,\"y\":-684.5,\"z\":20.7}', 'Alex', 'Shatterhand', '1982-04-15', 'm', '190', '[{\"name\":\"hunger\",\"percent\":69.27,\"val\":692700},{\"name\":\"thirst\",\"percent\":60.49,\"val\":604900},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', 0, NULL, '{}', 0, '{\"Výdrž\":{\"Stat\":\"MP0_STAMINA\",\"Current\":4.45,\"RemoveAmount\":-0.05},\"Síla\":{\"Stat\":\"MP0_STRENGTH\",\"Current\":4.65,\"RemoveAmount\":-0.05},\"Řízení\":{\"Stat\":\"MP0_DRIVING_ABILITY\",\"Current\":24.57999999999993,\"RemoveAmount\":-0.01},\"Střelba\":{\"Stat\":\"MP0_SHOOTING_ABILITY\",\"Current\":0,\"RemoveAmount\":-0.01},\"Zámky\":{\"Stat\":\"\",\"Current\":0,\"RemoveAmount\":-0.02},\"Kapacita plic\":{\"Stat\":\"MP0_LUNG_CAPACITY\",\"Current\":0,\"RemoveAmount\":-0.01}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, '');
INSERT INTO `users` (`identifier`, `id`, `group`, `skin`, `job`, `job_grade`, `accounts`, `inventory`, `loadout`, `position`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `status`, `is_dead`, `phone_number`, `tattoos`, `jail`, `skills`, `secondjob`, `secondjob_grade`, `last_property`, `hotbar`, `garage_limit`, `disabled`, `callsign`, `profilepic`, `duty`, `lore`) VALUES
('char2:9dda4c73ff2a6ad2da4f50e592fd7ee2efbe6340', 0, 'user', NULL, 'unemployed', 0, '{\"bank\":8050,\"money\":500,\"black_money\":0}', '[{\"name\":\"money\",\"count\":500,\"slot\":1},{\"name\":\"phone\",\"metadata\":{\"lbPhoneNumber\":\"3209550\"},\"count\":1,\"slot\":2}]', '[]', '{\"y\":-197.8,\"z\":38.5,\"heading\":0.0,\"x\":-303.2}', 'Joe', 'Lopéz', '1997-12-11', 'm', '181', '[{\"val\":937000,\"name\":\"hunger\",\"percent\":93.7},{\"val\":919000,\"name\":\"thirst\",\"percent\":91.9},{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, NULL, '{}', 0, '{\"Střelba\":{\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01},\"Výdrž\":{\"Current\":5.55,\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05},\"Zámky\":{\"Current\":0,\"Stat\":\"\",\"RemoveAmount\":-0.02},\"Řízení\":{\"Current\":2.46,\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01},\"Síla\":{\"Current\":4.75,\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05},\"Kapacita plic\":{\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char2:b1dc43c6fb4ef390d0248afa02f04484c4f34a36', 0, 'admin', NULL, 'police', 8, '{\"bank\":2012450,\"black_money\":0,\"money\":850}', '[{\"slot\":1,\"metadata\":{\"components\":[\"at_flashlight\"],\"ammo\":12,\"registered\":\"William David Larson\",\"serial\":\"LSPD\",\"durability\":100},\"count\":1,\"name\":\"WEAPON_COMBATPISTOL\"},{\"slot\":2,\"metadata\":{\"components\":[\"at_flashlight\",\"at_grip\",\"at_clip_extended_rifle\",\"at_scope_small\"],\"ammo\":60,\"registered\":\"Semir Gerkhan\",\"serial\":\"167505SMT118504\",\"durability\":100},\"count\":1,\"name\":\"WEAPON_CARBINERIFLE_MK2\"},{\"slot\":3,\"metadata\":{\"durability\":99.9,\"components\":[],\"registered\":\"William David Larson\"},\"count\":1,\"name\":\"WEAPON_STUNGUN\"},{\"slot\":4,\"metadata\":{\"components\":[],\"durability\":100},\"count\":1,\"name\":\"WEAPON_NIGHTSTICK\"},{\"slot\":5,\"metadata\":{\"components\":[],\"durability\":100},\"count\":1,\"name\":\"WEAPON_FLASHLIGHT\"},{\"slot\":6,\"count\":288,\"name\":\"ammo-9\"},{\"slot\":7,\"count\":410,\"name\":\"ammo-rifle\"},{\"slot\":8,\"count\":1,\"name\":\"medikit\"},{\"slot\":9,\"count\":1,\"name\":\"armour\"},{\"slot\":10,\"count\":1,\"name\":\"radio\"},{\"slot\":11,\"count\":1,\"name\":\"at_scope_medium\"},{\"slot\":12,\"metadata\":{\"description\":\"Jméno a příjmení: Nikolai Gustenavoj\\n\\nDatum narození: 1980-08-17\\n\\nPohlaví: muž\\n\\nVýška: 175cm\\n\\nVydal: Los Santos Gun Club\\n\\nDatum vydání: 25/12/2022 o 15:36:04\"},\"count\":1,\"name\":\"wl\"},{\"slot\":13,\"count\":1,\"name\":\"pouta\"},{\"slot\":14,\"metadata\":{\"lbPhoneNumber\":\"6020162\"},\"count\":1,\"name\":\"phone\"},{\"slot\":15,\"count\":850,\"name\":\"money\"},{\"slot\":19,\"metadata\":{\"components\":[\"at_grip\",\"at_flashlight\",\"at_scope_medium\"],\"ammo\":30,\"registered\":\"William David Larson\",\"serial\":\"LSPD\",\"durability\":100},\"count\":1,\"name\":\"WEAPON_CARBINERIFLE\"},{\"slot\":20,\"metadata\":{\"container\":\"NIJ1671571643\",\"size\":[30,15000]},\"count\":1,\"name\":\"evidencebag\"},{\"slot\":50,\"count\":1,\"name\":\"klice_lspd\"}]', '[]', '{\"heading\":0.0,\"x\":448.6,\"y\":-978.3,\"z\":26.0}', 'Semir', 'Gerkhan', '1980-03-08', 'm', '188', '[{\"name\":\"hunger\",\"percent\":84.81,\"val\":848100},{\"name\":\"thirst\",\"percent\":80.47,\"val\":804700},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', 0, NULL, '{}', 0, '{\"Střelba\":{\"RemoveAmount\":-0.01,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"Current\":0},\"Síla\":{\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STRENGTH\",\"Current\":4.85},\"Zámky\":{\"RemoveAmount\":-0.02,\"Stat\":\"\",\"Current\":0},\"Řízení\":{\"RemoveAmount\":-0.01,\"Stat\":\"MP0_DRIVING_ABILITY\",\"Current\":0.13999999999999},\"Kapacita plic\":{\"RemoveAmount\":-0.01,\"Stat\":\"MP0_LUNG_CAPACITY\",\"Current\":0},\"Výdrž\":{\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STAMINA\",\"Current\":6.45}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, 'Turek narozený v Německu v turecký čtvrti.'),
('char2:d3da62f33fe647236cdb1840121f6c72fbec6284', 0, 'admin', NULL, 'police', 4, '{\"black_money\":0,\"bank\":75620,\"money\":212418}', '[{\"name\":\"WEAPON_COMBATPISTOL\",\"count\":1,\"slot\":1,\"metadata\":{\"serial\":\"787565XPK345501\",\"components\":[],\"registered\":\"Nikolai Gustenavoj\",\"durability\":56.79999999999987,\"ammo\":7}},{\"name\":\"klice_lspd\",\"slot\":3,\"count\":1},{\"name\":\"wl\",\"count\":1,\"slot\":4,\"metadata\":{\"description\":\"Jméno a příjmení: Nikolai Gustenavoj\\n\\nDatum narození: 1980-08-17\\n\\nPohlaví: muž\\n\\nVýška: 175cm\\n\\nVydal: Los Santos Gun Club\\n\\nDatum vydání: 25/12/2022 o 15:56:00\"}},{\"name\":\"id\",\"count\":1,\"slot\":5,\"metadata\":{\"description\":\"Jméno a příjmení: Nikolai Gustenavoj\\n\\nDatum narození: 1980-08-17\\n\\nPohlaví: muž\\n\\nVýška: 175cm\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 25/12/2022 o 13:13:10\"}},{\"name\":\"blocek\",\"count\":1,\"slot\":6,\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: 87TUB729\\n\\nSuma: 288$\\n\\nPodpis: Nikolai Gustenavoj\\n\\nDatum vydání: 2022-12-27 o 19:26:37\"}},{\"name\":\"blocek\",\"count\":1,\"slot\":7,\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: 87TUB729\\n\\nSuma: 140$\\n\\nPodpis: Nikolai Gustenavoj\\n\\nDatum vydání: 2022-12-27 o 19:40:24\"}},{\"name\":\"klice_ems\",\"slot\":8,\"count\":1},{\"name\":\"ammo-9\",\"slot\":9,\"count\":77},{\"name\":\"klice_lsgc\",\"slot\":10,\"count\":1},{\"name\":\"money\",\"slot\":11,\"count\":212418},{\"name\":\"phone\",\"count\":1,\"slot\":12,\"metadata\":{\"lbPhoneNumber\":\"2058736\"}},{\"name\":\"chip\",\"slot\":13,\"count\":1},{\"name\":\"psychotest\",\"count\":1,\"slot\":14,\"metadata\":{\"description\":\"Jméno a příjmení: Nikolai Gustenavoj\\n\\nDatum narození: 1980-08-17\\n\\nVydal: Mike Banning\\n\\nDatum vydání: 25/12/2022 o 15:57:02\"}},{\"name\":\"joint\",\"slot\":16,\"count\":1},{\"name\":\"ammo-rifle\",\"slot\":18,\"count\":470},{\"name\":\"krabice\",\"count\":1,\"slot\":19,\"metadata\":{\"container\":\"XFS1672160820\",\"size\":[50,50000]}}]', '[]', '{\"x\":241.2,\"heading\":0.0,\"z\":105.5,\"y\":270.0}', 'Nikolai', 'Gustenavoj', '1980-08-17', 'm', '175', '[{\"name\":\"hunger\",\"percent\":39.835,\"val\":398350},{\"name\":\"thirst\",\"percent\":22.645,\"val\":226450},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', 0, NULL, '{}', 0, '{\"Střelba\":{\"RemoveAmount\":-0.01,\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\"},\"Kapacita plic\":{\"RemoveAmount\":-0.01,\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\"},\"Výdrž\":{\"RemoveAmount\":-0.05,\"Current\":0.04999999999987,\"Stat\":\"MP0_STAMINA\"},\"Síla\":{\"RemoveAmount\":-0.05,\"Current\":0,\"Stat\":\"MP0_STRENGTH\"},\"Řízení\":{\"RemoveAmount\":-0.01,\"Current\":13.85999999999991,\"Stat\":\"MP0_DRIVING_ABILITY\"},\"Zámky\":{\"RemoveAmount\":-0.02,\"Current\":0,\"Stat\":\"\"}}', 'lsgc', '2', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char2:fd77610e8f35fbcb85957438e3647d5b4b26c29c', 0, 'user', NULL, 'bennys', 4, '{\"bank\":9698,\"money\":0,\"black_money\":0}', '[{\"name\":\"wallet\",\"count\":1,\"metadata\":{\"size\":[4,16],\"container\":\"QYF1671993122\",\"weight\":10},\"slot\":1},{\"name\":\"redwcig\",\"count\":38,\"slot\":2},{\"name\":\"burger\",\"count\":5,\"slot\":3},{\"name\":\"water\",\"count\":1,\"slot\":4},{\"name\":\"klice_bennys\",\"count\":1,\"slot\":6},{\"name\":\"clothe\",\"count\":4,\"slot\":7},{\"name\":\"phone\",\"count\":1,\"metadata\":{\"lbPhoneNumber\":\"4803417\"},\"slot\":8},{\"name\":\"ziptie\",\"count\":12,\"slot\":9},{\"name\":\"towing_rope\",\"count\":1,\"slot\":10},{\"name\":\"soda\",\"count\":5,\"slot\":11},{\"name\":\"cola\",\"count\":1,\"slot\":12},{\"name\":\"estancigar\",\"count\":10,\"slot\":13},{\"name\":\"lighter\",\"count\":1,\"slot\":14},{\"name\":\"lockpick\",\"count\":1,\"slot\":15},{\"name\":\"bandage\",\"count\":2,\"slot\":16},{\"name\":\"rolling_paper\",\"count\":2,\"slot\":18},{\"name\":\"a4sheets\",\"count\":2,\"slot\":19}]', '[]', '{\"heading\":0.0,\"x\":954.8,\"y\":-145.3,\"z\":73.5}', 'Lucas', 'Mark', '1998-10-20', 'm', '187', '[{\"val\":802600,\"name\":\"hunger\",\"percent\":80.25999999999999},{\"val\":746200,\"name\":\"thirst\",\"percent\":74.62},{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 1, NULL, '{}', 0, '{\"Zámky\":{\"Current\":0,\"Stat\":\"\",\"RemoveAmount\":-0.02},\"Kapacita plic\":{\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01},\"Síla\":{\"Current\":5.15,\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05},\"Řízení\":{\"Current\":3.53999999999999,\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01},\"Střelba\":{\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01},\"Výdrž\":{\"Current\":7.6,\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char3:6c8c6ae8c062d2f8c67c6f72bfedd76aea374840', 0, 'user', NULL, 'sanandreas', 3, '{\"bank\":3957,\"black_money\":0,\"money\":100}', '[{\"name\":\"money\",\"count\":100,\"slot\":1},{\"name\":\"phone\",\"metadata\":{\"lbPhoneNumber\":\"2769268\"},\"count\":1,\"slot\":2},{\"name\":\"id\",\"metadata\":{\"description\":\"Jméno a příjmení: William Smith\\n\\nDatum narození: 01/09/1988\\n\\nPohlaví: muž\\n\\nVýška: 192cm\\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2022-12-30 o 02:39:29\"},\"count\":1,\"slot\":3},{\"name\":\"dl\",\"metadata\":{\"description\":\"Jméno a příjmení: William Smith\\n\\nDatum narození: 01/09/1988\\n\\nPohlaví: muž\\n\\nVýška: 192cm\\n\\nSkupiny: B \\n\\nVydal: Department of Motor Vehicles\\n\\nDatum vydání: 2022-12-30 o 02:39:30\"},\"count\":1,\"slot\":4},{\"name\":\"klice_sanandreas\",\"count\":1,\"slot\":5},{\"name\":\"blocek\",\"metadata\":{\"description\":\"Globe Oil\\n\\nŠPZ: 68VKZ611\\n\\nSuma: 115$\\n\\nPodpis: William Smith\\n\\nDatum vydání: 2023-01-03 o 21:27:28\"},\"count\":1,\"slot\":6}]', '[]', '{\"heading\":0.0,\"x\":246.2,\"y\":-1149.5,\"z\":29.2}', 'William', 'Smith', '1988-09-01', 'm', '192', '[{\"percent\":83.095,\"name\":\"hunger\",\"val\":830950},{\"percent\":78.265,\"name\":\"thirst\",\"val\":782650},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, NULL, '{}', 0, '{\"Síla\":{\"Current\":4.25,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STRENGTH\"},\"Kapacita plic\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_LUNG_CAPACITY\"},\"Řízení\":{\"Current\":0.97,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_DRIVING_ABILITY\"},\"Zámky\":{\"Current\":0,\"RemoveAmount\":-0.02,\"Stat\":\"\"},\"Střelba\":{\"Current\":0,\"RemoveAmount\":-0.01,\"Stat\":\"MP0_SHOOTING_ABILITY\"},\"Výdrž\":{\"Current\":5.1,\"RemoveAmount\":-0.05,\"Stat\":\"MP0_STAMINA\"}}', 'unemployed', '0', NULL, NULL, 7, 0, NULL, NULL, 0, ''),
('char3:b1dc43c6fb4ef390d0248afa02f04484c4f34a36', 0, 'admin', NULL, 'sanandreas', 7, '{\"bank\":2012393,\"black_money\":0,\"money\":1278803}', '[{\"name\":\"WEAPON_COMBATPISTOL\",\"count\":1,\"metadata\":{\"ammo\":12,\"durability\":99.6,\"registered\":\"Mike Banning\",\"serial\":\"TKQ7150258584\",\"components\":[]},\"slot\":1},{\"name\":\"WEAPON_CARBINERIFLE_MK2\",\"count\":1,\"metadata\":{\"ammo\":30,\"durability\":100,\"registered\":\"Mike Banning\",\"serial\":\"RMC2438523468\",\"components\":[]},\"slot\":2},{\"name\":\"WEAPON_STUNGUN\",\"count\":1,\"metadata\":{\"durability\":100,\"registered\":\"Mike Banning\",\"components\":[]},\"slot\":3},{\"name\":\"WEAPON_NIGHTSTICK\",\"count\":1,\"metadata\":{\"components\":[],\"durability\":100},\"slot\":4},{\"name\":\"WEAPON_FLASHLIGHT\",\"count\":1,\"metadata\":{\"components\":[],\"durability\":100},\"slot\":5},{\"name\":\"ammo-9\",\"count\":486,\"slot\":6},{\"name\":\"ammo-rifle\",\"count\":970,\"slot\":7},{\"name\":\"armor\",\"count\":3,\"slot\":8},{\"name\":\"pouta\",\"count\":5,\"slot\":9},{\"name\":\"radio\",\"count\":1,\"slot\":10},{\"name\":\"money\",\"count\":1278803,\"slot\":14},{\"name\":\"phone\",\"count\":1,\"metadata\":{\"lbPhoneNumber\":\"3552150\"},\"slot\":15},{\"name\":\"wl\",\"count\":1,\"metadata\":{\"description\":\"Jméno a příjmení: Mike Banning\\n\\nDatum narození: 08/08/1980\\n\\nPohlaví: muž\\n\\nVýška: 188cm\\n\\nVydal: Los Santos Gun Club\\n\\nDatum vydání: 25/12/2022 o 15:56:15\"},\"slot\":16},{\"name\":\"klice_royal\",\"count\":1,\"slot\":49},{\"name\":\"klice_sanandreas\",\"count\":1,\"slot\":50},{\"name\":\"psychotest\",\"count\":1,\"metadata\":{\"description\":\"Jméno a příjmení: Mike Banning\\n\\nDatum narození: 08/08/1980\\n\\nVydal: Nikolai Gustenavoj\\n\\nDatum vydání: 25/12/2022 o 15:56:44\"},\"slot\":17},{\"name\":\"klice_lspd\",\"count\":1,\"slot\":47},{\"name\":\"klice_bennys\",\"count\":1,\"slot\":48}]', '[]', '{\"heading\":0.0,\"x\":251.2,\"y\":-1150.6,\"z\":29.3}', 'Mike', 'Banning', '1980-08-08', 'm', '188', '[{\"name\":\"hunger\",\"val\":321700,\"percent\":32.17},{\"name\":\"thirst\",\"val\":127900,\"percent\":12.79},{\"name\":\"drunk\",\"val\":0,\"percent\":0.0}]', 0, NULL, '{}', 0, '{\"Střelba\":{\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.01},\"Zámky\":{\"Current\":0,\"Stat\":\"\",\"RemoveAmount\":-0.02},\"Výdrž\":{\"Current\":6.6,\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.05},\"Řízení\":{\"Current\":8.49999999999997,\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.01},\"Kapacita plic\":{\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.01},\"Síla\":{\"Current\":1.65,\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.05}}', 'police', '12', NULL, NULL, 7, 0, NULL, NULL, 0, '');

-- --------------------------------------------------------

--
-- Struktura tabulky `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) NOT NULL,
  `owner` varchar(46) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Vypisuji data pro tabulku `user_licenses`
--

INSERT INTO `user_licenses` (`id`, `type`, `owner`, `status`) VALUES
(1, 'dmv', 'char1:d3da62f33fe647236cdb1840121f6c72fbec6284', 0),
(2, 'drive', 'char1:d3da62f33fe647236cdb1840121f6c72fbec6284', 0),
(11, 'dmv', 'char1:9f92532a07891e00ad46526c68b955a2935c3c24', 0),
(12, 'drive', 'char1:9f92532a07891e00ad46526c68b955a2935c3c24', 0),
(13, 'drive_truck', 'char1:9f92532a07891e00ad46526c68b955a2935c3c24', 0),
(14, 'dmv', 'char1:c9134d4df5b10443686b0370214af498ed464fad', 0),
(15, 'drive', 'char1:c9134d4df5b10443686b0370214af498ed464fad', 0),
(16, 'drive_bike', 'char1:c9134d4df5b10443686b0370214af498ed464fad', 0),
(17, 'drive_truck', 'char1:c9134d4df5b10443686b0370214af498ed464fad', 0),
(18, 'drive_bus', 'char1:c9134d4df5b10443686b0370214af498ed464fad', 0),
(21, 'dmv', 'char1:6c8c6ae8c062d2f8c67c6f72bfedd76aea374840', 0),
(22, 'drive', 'char1:6c8c6ae8c062d2f8c67c6f72bfedd76aea374840', 0),
(23, 'dmv', 'char1:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 0),
(24, 'drive', 'char1:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 0),
(25, 'drive_bike', 'char1:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 0),
(26, 'dmv', 'char1:71e338fa00f8a110eba0c11a4abaaee20b382bcd', 0),
(31, 'dmv', 'char1:eb32c560584bc0b41ff66831d9cb42cfb0358dea', 0),
(32, 'drive', 'char1:eb32c560584bc0b41ff66831d9cb42cfb0358dea', 0),
(33, 'drive_bike', 'char1:eb32c560584bc0b41ff66831d9cb42cfb0358dea', 0),
(34, 'dmv', 'char1:6da4d857b509dd6583ba6782a8301d467bf36380', 0),
(35, 'drive', 'char1:6da4d857b509dd6583ba6782a8301d467bf36380', 0),
(36, 'drive_bike', 'char1:6da4d857b509dd6583ba6782a8301d467bf36380', 0),
(37, 'drive_truck', 'char1:6da4d857b509dd6583ba6782a8301d467bf36380', 0),
(38, 'drive_bus', 'char1:6da4d857b509dd6583ba6782a8301d467bf36380', 0),
(39, 'dmv', 'char1:fd77610e8f35fbcb85957438e3647d5b4b26c29c', 0),
(40, 'drive_bike', 'char1:fd77610e8f35fbcb85957438e3647d5b4b26c29c', 0),
(41, 'drive', 'char1:fd77610e8f35fbcb85957438e3647d5b4b26c29c', 0),
(42, 'drive_truck', 'char1:fd77610e8f35fbcb85957438e3647d5b4b26c29c', 0),
(43, 'dmv', 'char1:b1dc43c6fb4ef390d0248afa02f04484c4f34a36', 0),
(44, 'drive_bike', 'char1:b1dc43c6fb4ef390d0248afa02f04484c4f34a36', 0),
(45, 'drive', 'char1:b1dc43c6fb4ef390d0248afa02f04484c4f34a36', 0),
(46, 'drive_truck', 'char1:b1dc43c6fb4ef390d0248afa02f04484c4f34a36', 0),
(47, 'drive_bus', 'char1:b1dc43c6fb4ef390d0248afa02f04484c4f34a36', 0),
(50, 'weapon', 'char3:b1dc43c6fb4ef390d0248afa02f04484c4f34a36', 0),
(51, 'dmv', 'char2:fd77610e8f35fbcb85957438e3647d5b4b26c29c', 0),
(52, 'drive_bike', 'char2:fd77610e8f35fbcb85957438e3647d5b4b26c29c', 0),
(53, 'drive', 'char2:fd77610e8f35fbcb85957438e3647d5b4b26c29c', 0),
(54, 'drive_truck', 'char2:fd77610e8f35fbcb85957438e3647d5b4b26c29c', 0),
(56, 'dmv', 'char1:aa067204a8e40dfc2807f01efeb9d2dbc066bdfd', 0),
(57, 'drive_bike', 'char1:aa067204a8e40dfc2807f01efeb9d2dbc066bdfd', 0),
(58, 'dmv', 'char1:0726a36685b5b4406e5a41643bb2bed27c8275e7', 0),
(59, 'drive', 'char1:0726a36685b5b4406e5a41643bb2bed27c8275e7', 0),
(60, 'dmv', 'char1:825bafdeb0879ee3488dcc11ee78b11b484d73a6', 0),
(61, 'drive', 'char1:825bafdeb0879ee3488dcc11ee78b11b484d73a6', 0),
(62, 'drive_bus', 'char1:825bafdeb0879ee3488dcc11ee78b11b484d73a6', 0),
(63, 'drive_bike', 'char1:825bafdeb0879ee3488dcc11ee78b11b484d73a6', 0),
(64, 'drive_truck', 'char1:825bafdeb0879ee3488dcc11ee78b11b484d73a6', 0),
(65, 'dmv', 'char2:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', 0),
(66, 'weapon', 'char2:83f8d788299c4cf1928bbd97d37da3db69da3b3a', 0),
(67, 'weapon', 'char1:aa067204a8e40dfc2807f01efeb9d2dbc066bdfd', 0),
(68, 'drive', 'char2:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', 0),
(69, 'drive_truck', 'char2:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', 0),
(70, 'weapon', 'char2:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', 0),
(71, 'dmv', 'char1:7d36c723f19b962b1da9aa2d249374ab07ed59f8', 0),
(72, 'drive', 'char1:7d36c723f19b962b1da9aa2d249374ab07ed59f8', 0),
(73, 'dmv', 'char2:6c8c6ae8c062d2f8c67c6f72bfedd76aea374840', 0),
(74, 'drive', 'char2:6c8c6ae8c062d2f8c67c6f72bfedd76aea374840', 0),
(75, 'dmv', 'char3:6c8c6ae8c062d2f8c67c6f72bfedd76aea374840', 0),
(76, 'drive', 'char3:6c8c6ae8c062d2f8c67c6f72bfedd76aea374840', 0),
(77, 'dmv', 'char1:252400a9738eef79b93a74c5937b0548e469c253', 0),
(78, 'drive_bike', 'char1:252400a9738eef79b93a74c5937b0548e469c253', 0),
(79, 'drive', 'char1:252400a9738eef79b93a74c5937b0548e469c253', 0),
(80, 'drive_truck', 'char1:252400a9738eef79b93a74c5937b0548e469c253', 0),
(81, 'dmv', 'char1:a46aad5d50e8754e3611f8cd512abaf136512ba8', 0),
(82, 'drive_truck', 'char1:a46aad5d50e8754e3611f8cd512abaf136512ba8', 0),
(83, 'drive_bike', 'char1:a46aad5d50e8754e3611f8cd512abaf136512ba8', 0),
(84, 'drive', 'char1:a46aad5d50e8754e3611f8cd512abaf136512ba8', 0),
(85, 'dmv', 'char1:739f45face4a989b414f43753a220053ece07406', 0),
(86, 'drive', 'char1:739f45face4a989b414f43753a220053ece07406', 0),
(87, 'drive_bike', 'char1:739f45face4a989b414f43753a220053ece07406', 0),
(88, 'drive_truck', 'char1:739f45face4a989b414f43753a220053ece07406', 0),
(89, 'drive_bus', 'char1:739f45face4a989b414f43753a220053ece07406', 0),
(90, 'weapon', 'char1:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 0),
(91, 'dmv', 'char1:2d7ec2c3711e1357b20a2d5ddb56eb5377e6243d', 0),
(92, 'drive_bike', 'char1:2d7ec2c3711e1357b20a2d5ddb56eb5377e6243d', 0),
(93, 'drive', 'char1:2d7ec2c3711e1357b20a2d5ddb56eb5377e6243d', 0),
(94, 'dmv', 'char1:08b92adb13c370a0ee3f6d9c6da9b21eeab5f160', 0),
(95, 'drive', 'char1:08b92adb13c370a0ee3f6d9c6da9b21eeab5f160', 0),
(96, 'drive_bike', 'char1:08b92adb13c370a0ee3f6d9c6da9b21eeab5f160', 0),
(97, 'dmv', 'char1:9dd7913bbd62f2a73d45d26b229765a1828ece15', 0),
(98, 'drive_bike', 'char1:9dd7913bbd62f2a73d45d26b229765a1828ece15', 0),
(99, 'drive', 'char1:9dd7913bbd62f2a73d45d26b229765a1828ece15', 0),
(100, 'drive_truck', 'char1:9dd7913bbd62f2a73d45d26b229765a1828ece15', 0),
(101, 'drive_bus', 'char1:9dd7913bbd62f2a73d45d26b229765a1828ece15', 0),
(102, 'dmv', 'char1:7fc9429fbfdead8589b808ce4c9ca1033be3f258', 0),
(103, 'drive', 'char1:7fc9429fbfdead8589b808ce4c9ca1033be3f258', 0),
(104, 'dmv', 'char1:0f28049c7aa4aa48bd211a8555a26c730f6e5a35', 0),
(105, 'drive', 'char1:0f28049c7aa4aa48bd211a8555a26c730f6e5a35', 0),
(106, 'dmv', 'char1:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', 0),
(107, 'dmv', 'char1:096a1174e562cec8470b3f647f45b3f0d5cf93e1', 0),
(108, 'drive', 'char1:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', 0),
(109, 'drive', 'char1:096a1174e562cec8470b3f647f45b3f0d5cf93e1', 0),
(110, 'drive_truck', 'char1:5ef076a6f87a1fcd70e37e6c70fcfb7458f7628d', 0),
(111, 'drive_truck', 'char1:096a1174e562cec8470b3f647f45b3f0d5cf93e1', 0),
(112, 'dmv', 'char2:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 0),
(113, 'drive_bike', 'char2:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 0),
(114, 'drive', 'char2:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 0),
(115, 'drive_truck', 'char2:288245006d6be5a6cb61ff02c8ccb24bbcaf9d53', 0),
(116, 'dmv', 'char1:a0f7631205cb6e82660d688375a78c4dfd78a7b1', 0),
(117, 'drive_truck', 'char1:a0f7631205cb6e82660d688375a78c4dfd78a7b1', 0),
(118, 'drive_bus', 'char1:9f92532a07891e00ad46526c68b955a2935c3c24', 0),
(119, 'drive', 'char1:a0f7631205cb6e82660d688375a78c4dfd78a7b1', 0),
(120, 'drive_bike', 'char1:9f92532a07891e00ad46526c68b955a2935c3c24', 0),
(121, 'drive_bike', 'char1:a0f7631205cb6e82660d688375a78c4dfd78a7b1', 0),
(122, 'dmv', 'char1:b9d3bd028db5565a2c08befd51bd1ee78c670a1b', 0),
(123, 'drive', 'char1:b9d3bd028db5565a2c08befd51bd1ee78c670a1b', 0),
(124, 'dmv', 'char1:6ad4ba339bdda59da6fc7cbcd637cd1a2aa31d46', 0),
(125, 'drive', 'char1:6ad4ba339bdda59da6fc7cbcd637cd1a2aa31d46', 0),
(126, 'dmv', 'char1:f3e71e94ead0e0b54c28491a2b012f196ab8d472', 0),
(127, 'drive', 'char1:f3e71e94ead0e0b54c28491a2b012f196ab8d472', 0),
(128, 'drive_truck', 'char1:f3e71e94ead0e0b54c28491a2b012f196ab8d472', 0),
(129, 'drive_bus', 'char1:f3e71e94ead0e0b54c28491a2b012f196ab8d472', 0),
(130, 'drive_bike', 'char1:f3e71e94ead0e0b54c28491a2b012f196ab8d472', 0),
(131, 'dmv', 'char1:a0d0df65040210c65c5c097b25c5011637af60b6', 0),
(132, 'drive', 'char1:a0d0df65040210c65c5c097b25c5011637af60b6', 0),
(133, 'drive_bike', 'char1:a0d0df65040210c65c5c097b25c5011637af60b6', 0),
(134, 'drive_truck', 'char1:a0d0df65040210c65c5c097b25c5011637af60b6', 0),
(135, 'weapon', 'char1:247f744443a01af0a36c7f4a45272e162aaf611d', 0),
(136, 'weapon', 'char1:9f92532a07891e00ad46526c68b955a2935c3c24', 0),
(137, 'weapon', 'char1:9f92532a07891e00ad46526c68b955a2935c3c24', 0),
(138, 'dmv', 'char1:a7ee375deb6e8137f3d6287fca222196489eff9a', 0),
(139, 'drive', 'char1:a7ee375deb6e8137f3d6287fca222196489eff9a', 0),
(140, 'dmv', 'char1:232bfaa0928263934996922f2bc9a0ab3131f66a', 0),
(141, 'drive_bike', 'char1:232bfaa0928263934996922f2bc9a0ab3131f66a', 0),
(142, 'drive', 'char1:232bfaa0928263934996922f2bc9a0ab3131f66a', 0),
(143, 'dmv', 'char1:ae2cb11c557cd7d1e73c64c0a55a5d065b05e476', 0),
(144, 'drive', 'char1:ae2cb11c557cd7d1e73c64c0a55a5d065b05e476', 0),
(145, 'weapon', 'char1:a8cfd975ad8e17a808e69fea1873127e0e8dd9e9', 0),
(146, 'dmv', 'char1:649151ee0b112a4f88423f9eead698feb358e715', 0),
(147, 'drive_bike', 'char1:649151ee0b112a4f88423f9eead698feb358e715', 0),
(148, 'drive', 'char1:649151ee0b112a4f88423f9eead698feb358e715', 0),
(149, 'drive_truck', 'char1:649151ee0b112a4f88423f9eead698feb358e715', 0),
(150, 'dmv', 'char1:096ef042a53693ea143c5a94ab61957ab76df1ab', 0),
(151, 'drive_bike', 'char1:096ef042a53693ea143c5a94ab61957ab76df1ab', 0),
(152, 'dmv', 'char1:bd2b2a60cf8b8a34db2a7f2ec41424e7d168b516', 0),
(153, 'drive', 'char1:bd2b2a60cf8b8a34db2a7f2ec41424e7d168b516', 0),
(154, 'drive_bike', 'char1:bd2b2a60cf8b8a34db2a7f2ec41424e7d168b516', 0),
(155, 'drive_truck', 'char1:bd2b2a60cf8b8a34db2a7f2ec41424e7d168b516', 0),
(156, 'drive_bus', 'char1:bd2b2a60cf8b8a34db2a7f2ec41424e7d168b516', 0);

-- --------------------------------------------------------

--
-- Struktura tabulky `vehicles`
--

CREATE TABLE `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  `imglink` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Vypisuji data pro tabulku `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `imglink`) VALUES
('Ambulance Caracara', 'ambucara', 350000, 'ems', 'imgs/ems_ambucara.jpg'),
('Ambulance Vapid', 'ambulance2', 270000, 'ems', 'imgs/ems_ambulance2.jpg'),
('Police Dominator HSIU', 'barricade2', 1134000, 'police', 'imgs/police_barricade2.jpg'),
('Coroner Bobcat', 'bccoroner', 220000, 'ems', 'imgs/ems_bccoroner.jpg'),
('Secret Service - Undercover Counter Assault Team', 'cat', 250000, 'sanandreas', 'imgs/sanandreas_cat.jpg'),
('S.W.A.T. Bearcat', 'centurionlspd', 492000, 'police', 'imgs/police_centurionlspd.jpg'),
('Coroner Speedo', 'coroner', 220000, 'ems', 'imgs/ems_coroner.jpg'),
('Coroner Speedo', 'coroner2', 220000, 'ems', 'imgs/ems_coroner2.jpg'),
('Police Dominator UMK', 'dvdt3', 1134000, 'police', 'imgs/police_dvdt3.jpg'),
('Helicopter', 'eheli', 1400000, 'police', 'imgs/police_eheli.jpg'),
('Ambulance Speedo', 'emsnspeedo', 60000, 'ems', 'imgs/ems_emsnspeedo.jpg'),
('EMS Roamer', 'emsroamer', 324000, 'ems', 'imgs/ems_emsroamer.jpg'),
('EMS SUV', 'emssuv', 248000, 'ems', 'imgs/ems_emssuv.jpg'),
('Police Baller UMK', 'fibb', 209000, 'police', 'imgs/police_fibb.jpg'),
('Police Cara UMK', 'fibc', 223000, 'police', 'imgs/police_fibc.jpg'),
('Police Contender UMK', 'fibc3', 254000, 'police', 'imgs/police_fibc3.jpg'),
('Police Coquette UMK', 'fibc4', 600000, 'police', 'imgs/police_fibc4.jpg'),
('Police Drafter UMK', 'fibd2', 551000, 'police', 'imgs/police_fibd2.jpg'),
('Police Oracle UMK', 'fibo2', 387000, 'police', 'imgs/police_fibo2.jpg'),
('Police Rebla UMK', 'fibr2', 364000, 'police', 'imgs/police_fibr2.jpg'),
('Fire Hazmat', 'firehazmat', 60000, 'fire', 'imgs/fire_firehazmat.jpg'),
('Secret Service - Granger', 'halfback', 250000, 'sanandreas', 'imgs/sanandreas_halfback.jpg'),
('Secret Service - Alamo', 'halfback2', 250000, 'sanandreas', 'imgs/sanandreas_halfback2.jpg'),
('Secret Service - Hazardous Materials Unit', 'hazard2', 150000, 'sanandreas', 'imgs/sanandreas_hazard2.jpg'),
('Secret Service - Granger Secret Service', 'idcar', 250000, 'sanandreas', 'imgs/sanandreas_idcar.jpg'),
('Secret Service - Granger Counter Assault Team', 'inaugural', 250000, 'sanandreas', 'imgs/sanandreas_inaugural.jpg'),
('Secret Service - Alamo Counter Assault Team', 'inaugural2', 250000, 'sanandreas', 'imgs/sanandreas_inaugural2.jpg'),
('Fire Victoria', 'lsfd', 40000, 'fire', 'imgs/fire_lsfd.jpg'),
('Water Rescue', 'lsfd2', 192000, 'fire', 'imgs/fire_lsfd2.jpg'),
('Fire Paramedic', 'lsfd4', 310000, 'fire', 'imgs/fire_lsfd4.jpg'),
('Fire Pick-up', 'lsfd5', 284000, 'fire', 'imgs/fire_lsfd5.jpg'),
('Fire Commander', 'lsfdcmd', 190000, 'fire', 'imgs/fire_lsfdcmd.jpg'),
('Engine Class 1', 'lsfdtruck', 60000, 'fire', 'imgs/fire_lsfdtruck.jpg'),
('Police Cara UMK', 'lspdcara', 353000, 'police', 'imgs/police_lspdcara.jpg'),
('Police Raiden', 'lspdraiden', 821000, 'police', 'imgs/police_lspdraiden.jpg'),
('The Beast', 'onebeast', 250000, 'sanandreas', 'imgs/sanandreas_onebeast.jpg'),
('Police Everon', 'poleveron', 175000, 'police', 'imgs/police_poleveron.jpg'),
('Police Cruiser', 'police3a', 576000, 'police', 'imgs/police_police3a.jpg'),
('Police Cruiser Slick', 'police3slick', 576000, 'police', 'imgs/police_police3slick.jpg'),
('Police Roadbike', 'policeb1', 500000, 'police', 'imgs/police_policeb1.jpg'),
('Police Crossbike', 'policeb2', 300000, 'police', 'imgs/police_policeb2.jpg'),
('Police Speedo', 'polnspeedo', 402000, 'police', 'imgs/police_polnspeedo.jpg'),
('Police Sadler K9', 'polsadlerk9', 218000, 'police', 'imgs/police_polsadlerk9.jpg'),
('Police Park Ranger', 'pranger', 248000, 'police', 'imgs/police_pranger.jpg'),
('Granger - The Beast', 'pressuv', 250000, 'sanandreas', 'imgs/sanandreas_pressuv.jpg'),
('Police Scout', 'pscoutnew', 205000, 'police', 'imgs/police_pscoutnew.jpg'),
('Secret Service - Granger Intelligence Team', 'roadrunner', 250000, 'sanandreas', 'imgs/sanandreas_roadrunner.jpg'),
('Secret Service - Electronic Defence', 'roadrunner2', 230000, 'sanandreas', 'imgs/sanandreas_roadrunner2.jpg'),
('Secret Service - Alamo Intelligence Team', 'roadrunner3', 250000, 'sanandreas', 'imgs/sanandreas_roadrunner3.jpg'),
('Police Victoria Slick', 'sahp1a', 451000, 'police', 'imgs/police_sahp1a.jpg'),
('Police Bravado Slick', 'sahp2a', 454000, 'police', 'imgs/police_sahp2a.jpg'),
('Police Bravado', 'sahp2stx', 451000, 'police', 'imgs/police_sahp2stx.jpg'),
('Police Stalker UMK', 'swatstalker', 382000, 'police', 'imgs/police_swatstalker.jpg'),
('Police Alamo UMK', 'trualamo', 176000, 'police', 'imgs/police_trualamo.jpg'),
('Police Buffalo UMK', 'trubuffalo2', 450000, 'police', 'imgs/police_trubuffalo2.jpg'),
('Secret Service - Granger Aides & Doctor', 'ussssuv', 250000, 'sanandreas', 'imgs/sanandreas_ussssuv.jpg'),
('Secret Service - Alamo Secret Service', 'ussssuv2', 250000, 'sanandreas', 'imgs/sanandreas_ussssuv2.jpg'),
('Secret Service - PressVan', 'usssvan2', 250000, 'sanandreas', 'imgs/sanandreas_usssvan2.jpg'),
('Police Vapid Victoria', 'vvpi', 450000, 'police', 'imgs/police_vvpi.jpg'),
('Police Vapid Victoria UMK', 'vvpi2', 450000, 'police', 'imgs/police_vvpi2.jpg'),
('Secret Service - Granger Control & Support', 'watchtower', 250000, 'sanandreas', 'imgs/sanandreas_watchtower.jpg'),
('Secret Service - Alamo Control & Support', 'watchtower2', 250000, 'sanandreas', 'imgs/sanandreas_watchtower2.jpg');

-- --------------------------------------------------------

--
-- Struktura tabulky `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Vypisuji data pro tabulku `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
('ems', 'Emergency Medical Services'),
('fire', 'Los Santos Fire Department'),
('police', 'Los Santos Police Department'),
('sanandreas', 'San Andreas');

--
-- Indexy pro exportované tabulky
--

--
-- Indexy pro tabulku `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`);

--
-- Indexy pro tabulku `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  ADD KEY `index_addon_account_data_account_name` (`account_name`);

--
-- Indexy pro tabulku `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Indexy pro tabulku `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Indexy pro tabulku `mdt_char_profiles`
--
ALTER TABLE `mdt_char_profiles`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexy pro tabulku `mdt_criminal_record`
--
ALTER TABLE `mdt_criminal_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `char` (`identifier`);

--
-- Indexy pro tabulku `mdt_duty_tracker`
--
ALTER TABLE `mdt_duty_tracker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Indexy pro tabulku `mdt_fines`
--
ALTER TABLE `mdt_fines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Indexy pro tabulku `mdt_person_bolos`
--
ALTER TABLE `mdt_person_bolos`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `mdt_users`
--
ALTER TABLE `mdt_users`
  ADD PRIMARY KEY (`identifier`),
  ADD KEY `job` (`job`);

--
-- Indexy pro tabulku `mdt_veh_bolos`
--
ALTER TABLE `mdt_veh_bolos`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `mdt_veh_profiles`
--
ALTER TABLE `mdt_veh_profiles`
  ADD PRIMARY KEY (`plate`);

--
-- Indexy pro tabulku `mdt_warrants`
--
ALTER TABLE `mdt_warrants`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `multicharacter_slots`
--
ALTER TABLE `multicharacter_slots`
  ADD PRIMARY KEY (`identifier`) USING BTREE,
  ADD KEY `slots` (`slots`) USING BTREE;

--
-- Indexy pro tabulku `okokbilling`
--
ALTER TABLE `okokbilling`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indexy pro tabulku `ox_doorlock`
--
ALTER TABLE `ox_doorlock`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `ox_inventory`
--
ALTER TABLE `ox_inventory`
  ADD UNIQUE KEY `owner` (`owner`,`name`);

--
-- Indexy pro tabulku `phone_backups`
--
ALTER TABLE `phone_backups`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexy pro tabulku `phone_clock_alarms`
--
ALTER TABLE `phone_clock_alarms`
  ADD PRIMARY KEY (`id`,`phone_number`);

--
-- Indexy pro tabulku `phone_darkchat_accounts`
--
ALTER TABLE `phone_darkchat_accounts`
  ADD PRIMARY KEY (`username`);

--
-- Indexy pro tabulku `phone_darkchat_channels`
--
ALTER TABLE `phone_darkchat_channels`
  ADD PRIMARY KEY (`name`);

--
-- Indexy pro tabulku `phone_darkchat_members`
--
ALTER TABLE `phone_darkchat_members`
  ADD PRIMARY KEY (`channel_name`,`username`);

--
-- Indexy pro tabulku `phone_darkchat_messages`
--
ALTER TABLE `phone_darkchat_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `phone_instagram_accounts`
--
ALTER TABLE `phone_instagram_accounts`
  ADD PRIMARY KEY (`username`);

--
-- Indexy pro tabulku `phone_instagram_comments`
--
ALTER TABLE `phone_instagram_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `phone_instagram_follows`
--
ALTER TABLE `phone_instagram_follows`
  ADD PRIMARY KEY (`followed`,`follower`);

--
-- Indexy pro tabulku `phone_instagram_likes`
--
ALTER TABLE `phone_instagram_likes`
  ADD PRIMARY KEY (`id`,`username`);

--
-- Indexy pro tabulku `phone_instagram_loggedin`
--
ALTER TABLE `phone_instagram_loggedin`
  ADD PRIMARY KEY (`phone_number`);

--
-- Indexy pro tabulku `phone_instagram_messages`
--
ALTER TABLE `phone_instagram_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `phone_instagram_notifications`
--
ALTER TABLE `phone_instagram_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `phone_instagram_posts`
--
ALTER TABLE `phone_instagram_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `phone_instagram_stories`
--
ALTER TABLE `phone_instagram_stories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indexy pro tabulku `phone_instagram_stories_views`
--
ALTER TABLE `phone_instagram_stories_views`
  ADD PRIMARY KEY (`story_id`,`viewer`);

--
-- Indexy pro tabulku `phone_last_phone`
--
ALTER TABLE `phone_last_phone`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexy pro tabulku `phone_mail_accounts`
--
ALTER TABLE `phone_mail_accounts`
  ADD PRIMARY KEY (`address`);

--
-- Indexy pro tabulku `phone_mail_loggedin`
--
ALTER TABLE `phone_mail_loggedin`
  ADD PRIMARY KEY (`address`,`phone_number`);

--
-- Indexy pro tabulku `phone_mail_messages`
--
ALTER TABLE `phone_mail_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `phone_maps_locations`
--
ALTER TABLE `phone_maps_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `phone_marketplace_posts`
--
ALTER TABLE `phone_marketplace_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `phone_message_channels`
--
ALTER TABLE `phone_message_channels`
  ADD PRIMARY KEY (`channel_id`);

--
-- Indexy pro tabulku `phone_message_members`
--
ALTER TABLE `phone_message_members`
  ADD PRIMARY KEY (`channel_id`,`phone_number`);

--
-- Indexy pro tabulku `phone_message_messages`
--
ALTER TABLE `phone_message_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `phone_message_unread`
--
ALTER TABLE `phone_message_unread`
  ADD PRIMARY KEY (`channel_id`,`phone_number`);

--
-- Indexy pro tabulku `phone_music_playlists`
--
ALTER TABLE `phone_music_playlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `phone_music_saved_playlists`
--
ALTER TABLE `phone_music_saved_playlists`
  ADD PRIMARY KEY (`playlist_id`,`phone_number`);

--
-- Indexy pro tabulku `phone_music_songs`
--
ALTER TABLE `phone_music_songs`
  ADD PRIMARY KEY (`song_id`,`playlist_id`),
  ADD KEY `playlist_id` (`playlist_id`);

--
-- Indexy pro tabulku `phone_notes`
--
ALTER TABLE `phone_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `phone_notifications`
--
ALTER TABLE `phone_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `phone_phones`
--
ALTER TABLE `phone_phones`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `phone_phone_blocked_numbers`
--
ALTER TABLE `phone_phone_blocked_numbers`
  ADD PRIMARY KEY (`phone_number`,`blocked_number`);

--
-- Indexy pro tabulku `phone_phone_calls`
--
ALTER TABLE `phone_phone_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `phone_phone_contacts`
--
ALTER TABLE `phone_phone_contacts`
  ADD PRIMARY KEY (`contact_phone_number`,`phone_number`);

--
-- Indexy pro tabulku `phone_photos`
--
ALTER TABLE `phone_photos`
  ADD PRIMARY KEY (`phone_number`,`link`);

--
-- Indexy pro tabulku `phone_services_channels`
--
ALTER TABLE `phone_services_channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `phone_services_messages`
--
ALTER TABLE `phone_services_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `channel_id` (`channel_id`);

--
-- Indexy pro tabulku `phone_tinder_accounts`
--
ALTER TABLE `phone_tinder_accounts`
  ADD PRIMARY KEY (`phone_number`);

--
-- Indexy pro tabulku `phone_tinder_matches`
--
ALTER TABLE `phone_tinder_matches`
  ADD PRIMARY KEY (`phone_number_1`,`phone_number_2`);

--
-- Indexy pro tabulku `phone_tinder_messages`
--
ALTER TABLE `phone_tinder_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `phone_tinder_swipes`
--
ALTER TABLE `phone_tinder_swipes`
  ADD PRIMARY KEY (`swiper`,`swipee`);

--
-- Indexy pro tabulku `phone_twitter_accounts`
--
ALTER TABLE `phone_twitter_accounts`
  ADD PRIMARY KEY (`username`);

--
-- Indexy pro tabulku `phone_twitter_follows`
--
ALTER TABLE `phone_twitter_follows`
  ADD PRIMARY KEY (`followed`,`follower`);

--
-- Indexy pro tabulku `phone_twitter_hashtags`
--
ALTER TABLE `phone_twitter_hashtags`
  ADD PRIMARY KEY (`hashtag`);

--
-- Indexy pro tabulku `phone_twitter_likes`
--
ALTER TABLE `phone_twitter_likes`
  ADD PRIMARY KEY (`tweet_id`,`username`);

--
-- Indexy pro tabulku `phone_twitter_loggedin`
--
ALTER TABLE `phone_twitter_loggedin`
  ADD PRIMARY KEY (`phone_number`);

--
-- Indexy pro tabulku `phone_twitter_messages`
--
ALTER TABLE `phone_twitter_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `phone_twitter_notifications`
--
ALTER TABLE `phone_twitter_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `phone_twitter_promoted`
--
ALTER TABLE `phone_twitter_promoted`
  ADD PRIMARY KEY (`tweet_id`);

--
-- Indexy pro tabulku `phone_twitter_retweets`
--
ALTER TABLE `phone_twitter_retweets`
  ADD PRIMARY KEY (`tweet_id`,`username`);

--
-- Indexy pro tabulku `phone_twitter_tweets`
--
ALTER TABLE `phone_twitter_tweets`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `phone_wallet_transactions`
--
ALTER TABLE `phone_wallet_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `phone_yellow_pages_posts`
--
ALTER TABLE `phone_yellow_pages_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `radiocar_music`
--
ALTER TABLE `radiocar_music`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `radiocar_owned`
--
ALTER TABLE `radiocar_owned`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexy pro tabulku `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`model`) USING BTREE;

--
-- Indexy pro tabulku `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`name`) USING BTREE;

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=851;

--
-- AUTO_INCREMENT pro tabulku `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pro tabulku `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT pro tabulku `mdt_criminal_record`
--
ALTER TABLE `mdt_criminal_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pro tabulku `mdt_duty_tracker`
--
ALTER TABLE `mdt_duty_tracker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT pro tabulku `mdt_fines`
--
ALTER TABLE `mdt_fines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pro tabulku `mdt_person_bolos`
--
ALTER TABLE `mdt_person_bolos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pro tabulku `mdt_veh_bolos`
--
ALTER TABLE `mdt_veh_bolos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `mdt_warrants`
--
ALTER TABLE `mdt_warrants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pro tabulku `okokbilling`
--
ALTER TABLE `okokbilling`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pro tabulku `ox_doorlock`
--
ALTER TABLE `ox_doorlock`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT pro tabulku `phone_darkchat_messages`
--
ALTER TABLE `phone_darkchat_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `phone_wallet_transactions`
--
ALTER TABLE `phone_wallet_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pro tabulku `radiocar_music`
--
ALTER TABLE `radiocar_music`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pro tabulku `radiocar_owned`
--
ALTER TABLE `radiocar_owned`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `phone_instagram_stories`
--
ALTER TABLE `phone_instagram_stories`
  ADD CONSTRAINT `phone_instagram_stories_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE;

--
-- Omezení pro tabulku `phone_instagram_stories_views`
--
ALTER TABLE `phone_instagram_stories_views`
  ADD CONSTRAINT `phone_instagram_stories_views_ibfk_1` FOREIGN KEY (`story_id`) REFERENCES `phone_instagram_stories` (`id`) ON DELETE CASCADE;

--
-- Omezení pro tabulku `phone_mail_loggedin`
--
ALTER TABLE `phone_mail_loggedin`
  ADD CONSTRAINT `phone_mail_loggedin_ibfk_1` FOREIGN KEY (`address`) REFERENCES `phone_mail_accounts` (`address`) ON DELETE CASCADE;

--
-- Omezení pro tabulku `phone_music_saved_playlists`
--
ALTER TABLE `phone_music_saved_playlists`
  ADD CONSTRAINT `phone_music_saved_playlists_ibfk_1` FOREIGN KEY (`playlist_id`) REFERENCES `phone_music_playlists` (`id`) ON DELETE CASCADE;

--
-- Omezení pro tabulku `phone_music_songs`
--
ALTER TABLE `phone_music_songs`
  ADD CONSTRAINT `phone_music_songs_ibfk_1` FOREIGN KEY (`playlist_id`) REFERENCES `phone_music_playlists` (`id`) ON DELETE CASCADE;

--
-- Omezení pro tabulku `phone_services_messages`
--
ALTER TABLE `phone_services_messages`
  ADD CONSTRAINT `phone_services_messages_ibfk_1` FOREIGN KEY (`channel_id`) REFERENCES `phone_services_channels` (`id`) ON DELETE CASCADE;

--
-- Omezení pro tabulku `phone_twitter_promoted`
--
ALTER TABLE `phone_twitter_promoted`
  ADD CONSTRAINT `phone_twitter_promoted_ibfk_1` FOREIGN KEY (`tweet_id`) REFERENCES `phone_twitter_tweets` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

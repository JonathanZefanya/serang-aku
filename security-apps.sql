-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Nov 2025 pada 15.25
-- Versi server: 9.2.0
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `security-apps`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `psec_bad-words`
--

CREATE TABLE `psec_bad-words` (
  `id` int NOT NULL,
  `word` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `psec_bans`
--

CREATE TABLE `psec_bans` (
  `id` int NOT NULL,
  `ip` char(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` tinyint(1) NOT NULL DEFAULT '0',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `autoban` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `psec_bans-country`
--

CREATE TABLE `psec_bans-country` (
  `id` int NOT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` tinyint(1) NOT NULL DEFAULT '0',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `psec_bans-other`
--

CREATE TABLE `psec_bans-other` (
  `id` int NOT NULL,
  `type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `psec_bans-ranges`
--

CREATE TABLE `psec_bans-ranges` (
  `id` int NOT NULL,
  `ip_range` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `psec_dnsbl-databases`
--

CREATE TABLE `psec_dnsbl-databases` (
  `id` int NOT NULL,
  `database` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `psec_dnsbl-databases`
--

INSERT INTO `psec_dnsbl-databases` (`id`, `database`) VALUES
(1, 'bl.spamcop.net');

-- --------------------------------------------------------

--
-- Struktur dari tabel `psec_file-whitelist`
--

CREATE TABLE `psec_file-whitelist` (
  `id` int NOT NULL,
  `path` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `psec_ip-whitelist`
--

CREATE TABLE `psec_ip-whitelist` (
  `id` int NOT NULL,
  `ip` char(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `psec_live-traffic`
--

CREATE TABLE `psec_live-traffic` (
  `id` int NOT NULL,
  `ip` char(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `useragent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `os` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `os_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_type` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'XX',
  `request_uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `referer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bot` tinyint(1) NOT NULL DEFAULT '0',
  `date` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uniquev` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `psec_logins`
--

CREATE TABLE `psec_logins` (
  `id` int NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` char(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `successful` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `psec_logins`
--

INSERT INTO `psec_logins` (`id`, `username`, `ip`, `date`, `time`, `successful`) VALUES
(1, 'admin', '127.0.0.1', '30 November 2025', '14:12', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `psec_logs`
--

CREATE TABLE `psec_logs` (
  `id` int NOT NULL,
  `ip` char(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `page` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unknown',
  `browser_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `os` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unknown',
  `os_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unknown',
  `country_code` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'XX',
  `region` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unknown',
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unknown',
  `latitude` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `longitude` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `isp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unknown',
  `useragent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `referer_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `psec_pages-layolt`
--

CREATE TABLE `psec_pages-layolt` (
  `id` int NOT NULL,
  `page` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `psec_pages-layolt`
--

INSERT INTO `psec_pages-layolt` (`id`, `page`, `text`) VALUES
(1, 'Banned', 'You are banned and you cannot continue to the website'),
(2, 'Blocked', 'Malicious request was detected'),
(3, 'Proxy', 'Access to the website via Proxy, VPN, TOR is not allowed (Disable Browser Data Compression if you have it enabled)'),
(4, 'Spam', 'You are in the Blacklist of Spammers and you cannot continue to the website'),
(5, 'Banned_Country', 'Sorry, but your country is banned and you cannot continue to the website'),
(6, 'Blocked_Browser', 'Access to the website through your Browser is not allowed, please use another Internet Browser'),
(7, 'Blocked_OS', 'Access to the website through your Operating System is not allowed'),
(8, 'Blocked_ISP', 'Your Internet Service Provider is blacklisted and you cannot continue to the website'),
(9, 'Blocked_RFR', 'Your referrer url is blocked and you cannot continue to the website');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `psec_bad-words`
--
ALTER TABLE `psec_bad-words`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `psec_bans`
--
ALTER TABLE `psec_bans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `psec_bans-country`
--
ALTER TABLE `psec_bans-country`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `psec_bans-other`
--
ALTER TABLE `psec_bans-other`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `psec_bans-ranges`
--
ALTER TABLE `psec_bans-ranges`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `psec_dnsbl-databases`
--
ALTER TABLE `psec_dnsbl-databases`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `psec_file-whitelist`
--
ALTER TABLE `psec_file-whitelist`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `psec_ip-whitelist`
--
ALTER TABLE `psec_ip-whitelist`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `psec_live-traffic`
--
ALTER TABLE `psec_live-traffic`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `psec_logins`
--
ALTER TABLE `psec_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `psec_logs`
--
ALTER TABLE `psec_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `psec_pages-layolt`
--
ALTER TABLE `psec_pages-layolt`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `psec_bad-words`
--
ALTER TABLE `psec_bad-words`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `psec_bans`
--
ALTER TABLE `psec_bans`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `psec_bans-country`
--
ALTER TABLE `psec_bans-country`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `psec_bans-other`
--
ALTER TABLE `psec_bans-other`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `psec_bans-ranges`
--
ALTER TABLE `psec_bans-ranges`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `psec_dnsbl-databases`
--
ALTER TABLE `psec_dnsbl-databases`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `psec_file-whitelist`
--
ALTER TABLE `psec_file-whitelist`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `psec_ip-whitelist`
--
ALTER TABLE `psec_ip-whitelist`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `psec_live-traffic`
--
ALTER TABLE `psec_live-traffic`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `psec_logins`
--
ALTER TABLE `psec_logins`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `psec_logs`
--
ALTER TABLE `psec_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `psec_pages-layolt`
--
ALTER TABLE `psec_pages-layolt`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

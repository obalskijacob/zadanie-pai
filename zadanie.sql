-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Maj 2020, 11:20
-- Wersja serwera: 10.4.8-MariaDB
-- Wersja PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `zadanie`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `marka`
--

CREATE TABLE `marka` (
  `id_marki` int(11) NOT NULL,
  `nazwa_marki` varchar(30) COLLATE utf8_polish_ci DEFAULT NULL,
  `kraj_pochodzenia` varchar(11) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `marka`
--

INSERT INTO `marka` (`id_marki`, `nazwa_marki`, `kraj_pochodzenia`) VALUES
(1, 'Opel', 'Niemcy'),
(2, 'BMW', 'Niemcy'),
(3, 'Mercedes', 'Niemcy');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `model`
--

CREATE TABLE `model` (
  `id_marki` int(11) NOT NULL,
  `nazwa_modelu` varchar(15) COLLATE utf8_polish_ci DEFAULT NULL,
  `rocznik` varchar(4) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `model`
--

INSERT INTO `model` (`id_marki`, `nazwa_modelu`, `rocznik`) VALUES
(1, 'Astra', '2005'),
(1, 'Corsa', '2020'),
(3, 'GT63AMG', '2019'),
(2, 'Z4', '2019');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `marka`
--
ALTER TABLE `marka`
  ADD PRIMARY KEY (`id_marki`);

--
-- Indeksy dla tabeli `model`
--
ALTER TABLE `model`
  ADD KEY `id_marki` (`id_marki`);

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `model`
--
ALTER TABLE `model`
  ADD CONSTRAINT `model_ibfk_1` FOREIGN KEY (`id_marki`) REFERENCES `marka` (`id_marki`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

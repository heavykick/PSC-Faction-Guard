-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 11, 2017 at 01:26 PM
-- Server version: 5.6.35
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `faction_guard`
--
CREATE DATABASE IF NOT EXISTS `faction_guard` DEFAULT CHARACTER SET utf16 COLLATE utf16_unicode_ci;
USE `faction_guard`;

-- --------------------------------------------------------

--
-- Table structure for table `Commander`
--

CREATE TABLE `Commander` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Name` varchar(50) COLLATE utf16_unicode_ci NOT NULL,
  `Group_ID` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CommanderGroup`
--

CREATE TABLE `CommanderGroup` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Name` varchar(100) COLLATE utf16_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Username` varchar(50) COLLATE utf16_unicode_ci NOT NULL,
  `PasswordHash` varchar(100) COLLATE utf16_unicode_ci NOT NULL,
  `Commander_ID` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Commander`
--
ALTER TABLE `Commander`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_Commander_Name_Unique` (`Name`) USING BTREE;

--
-- Indexes for table `CommanderGroup`
--
ALTER TABLE `CommanderGroup`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_CommanderGroup_Name_Unique` (`Name`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_User_Username_Unique` (`Username`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Commander`
--
ALTER TABLE `Commander`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `CommanderGroup`
--
ALTER TABLE `CommanderGroup`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
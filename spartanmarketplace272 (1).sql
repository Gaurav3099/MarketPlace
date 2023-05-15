-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: custsql-ipg40.eigbox.net
-- Generation Time: May 02, 2023 at 12:13 AM
-- Server version: 5.6.51-91.0-log
-- PHP Version: 7.0.33-0ubuntu0.16.04.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spartanmarketplace272`
--

-- --------------------------------------------------------

--
-- Table structure for table `Products`
--

CREATE TABLE `Products` (
  `productId` int(11) NOT NULL,
  `productName` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `productCompany` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `productImgUrl` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `productPrice` decimal(7,2) NOT NULL,
  `productShortDesc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `productHits` int(11) NOT NULL,
  `productRating` int(11) NOT NULL,
  `productRatingCount` int(11) NOT NULL,
  `productAvgRating` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `productReviewCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Products`
--

INSERT INTO `Products` (`productId`, `productName`, `productCompany`, `productImgUrl`, `productPrice`, `productShortDesc`, `productHits`, `productRating`, `productRatingCount`, `productAvgRating`, `productReviewCount`) VALUES
(1, 'Disneyland', 'A', 'img/disneyland.jpeg', '2999.99', 'Travel to the first theme park opened by the Walt Disney Company at Anaheim, California in 1955', 115, 8, 3, '2.6666666666667', 7),
(2, 'Hawaii', 'A', 'img/hawaii.jpeg', '2999.99', 'Discover the beauty, culture and adventures waiting for you on the Hawaiian Islands.', 52, 2, 1, '2', 2),
(3, 'New Orleans', 'A', 'img/newOrleans.jpeg', '2499.99', 'Visit the world-renowned city for its distinctive music, Creole cuisine, unique dialects, and its annual celebrations and festivals, most notably Mardi Gras.', 36, 8, 2, '4', 2),
(4, 'Maui', 'A', 'img/maui.jpeg', '3999.99', 'The Islands of Maui Nui are more than sand and surf destinations. Myriad amenities including world-class resorts, award-winning cuisine, stunning natural beauty, and a plethora of activities.', 54, 5, 1, '5', 1),
(5, 'Las Vegas', 'A', 'img/lasVegas.jpeg', '1899.99', 'Travel to a city that was made for entertainment, carved out of the Mojave Desert with escape in mind. It has a lot to offer for visitors, including a vibrant downtown, events, beautiful parks and more.', 39, 0, 0, '0', 0),
(6, 'Caribbean', 'A', 'img/caribbean.jpeg', '3999.99', 'Cruise to unforgettable destinations with Royal Caribbean. Save with the best cruise deals and packages to the Caribbean and the Bahamas.', 56, 0, 0, '0', 0),
(7, 'Italy', 'A', 'img/italy.jpeg', '4499.99', 'Get ready to explore beautiful destinations, learn about ancient cultures and savour the most loved cuisine in the world.', 46, 0, 0, '0', 0),
(8, 'Paris', 'A', 'img/paris.jpeg', '4499.99', 'Discover France capital, a major European city and a global center for art, fashion, gastronomy and culture. Beyond such landmarks as the Eiffel Tower and the 12th-century, Gothic Notre-Dame cathedral, the city is known for its cafe culture.', 52, 0, 0, '0', 0),
(9, 'United Kingdom', 'A', 'img/london.jpeg', '3499.99', 'Visit some of the top attractions outside of London on this day trip to Stonehenge, Windsor Castle and the historic town of Bath.', 38, 0, 0, '0', 0),
(10, 'Tokyo', 'A', 'img/tokyo.jpeg', '6999.99', 'Tokyo officially the Tokyo Metropolis , is the capital and largest city of Japan. Formerly known as Edo, its metropolitan area is the most populous in the world.', 44, 0, 0, '0', 0),
(11, 'Bookings', 'B', 'img/Bookings.jpeg', '29.99', 'Save time when scheduling with Softsol Bookings. Customize appointment details, booking requirements, and specify service providers to streamline the booking experience for you and your customers. Bookings is integrated with your Softsol calendar to help', 56, 0, 0, '0', 0),
(12, 'Browser', 'B', 'img/Browser.jpeg', '39.99', 'Softsol Browser is the best browser for Windows. Sync your passwords, favorites, and settings across multiple devices and start using Softsol Browser today.', 65, 4, 1, '4', 1),
(13, 'Code Editor', 'B', 'img/CodeEditor.jpeg', '39.99', 'Configure and theme just like you would expect from any modern development tool. Whether you choose one of the default themes already installed or explore new themes from the Softsol Marketplace, you have the freedom to make your editor or IDE truly yours', 42, 0, 0, '0', 0),
(14, 'Sharing', 'B', 'img/FileSharing.jpeg', '19.99', 'Share and manage content, knowledge, and applications to empower teamwork, quickly find information, and seamlessly collaborate across the organization.', 32, 0, 0, '0', 0),
(15, 'Drive', 'B', 'img/Drive.jpeg', '29.99', 'Access and protect your business and school work with this intelligent files app. Share and collaborate from anywhere, on any device.', 44, 0, 0, '0', 0),
(16, 'Powerpoint', 'B', 'img/Powerpoint.jpeg', '39.99', 'Create well-designed, impactful slides with the help of Designer and Ideas in PowerPoint. Now you can easily insert 3D objects and embedded animations directly into PowerPoint decks from your own files or a library of content.', 44, 0, 0, '0', 0),
(17, 'Chat', 'B', 'img/Chat.jpeg', '49.99', 'Stay connected and access shared content any time to learn, plan, and innovate�together. Share your screen, change or blur your background, and use together mode to virtually be in the same space.', 41, 0, 0, '0', 0),
(18, 'Drawing', 'B', 'img/Drawing.jpeg', '39.99', 'Transform the way you use and visualize data so you can bring your best ideas to life. With dozens of ready-to-use templates and thousands of customizable shapes, Softsol Drawing makes it easy�and fun�to create powerful visuals.', 53, 0, 0, '0', 0),
(19, 'Video', 'B', 'img/Video.jpeg', '39.99', 'Show exactly what you mean with explainer videos by recording yourself and the screen. Plus, you can add text, drawings, and effects to personalize your videos.', 47, 0, 0, '0', 0),
(20, 'Mail', 'B', 'img/Mail.jpeg', '59.99', 'Softsol Mail is a free email service provided by Softsol. As of 2012, it had 1.5 billion active users worldwide. A user typically accesses Mail in a web browser or the official mobile app. Softsol also supports the use of email clients via the POP and IMA', 1, 0, 0, '0', 0),
(21, 'Rome', 'C', 'img/Rome1.jpg', '3000.00', 'Travellers favorite destination...MUST VISIT!!!', 59, 0, 0, '0', 0),
(22, 'Australia', 'C', 'img/Australia1.jpeg', '3000.00', 'Travellers favorite destination...MUST VISIT!!!', 68, 0, 0, '0', 0),
(23, 'Maldives', 'C', 'img/Maldives1.jpg', '3000.00', 'Travellers favorite destination...MUST VISIT!!!', 39, 0, 0, '0', 0),
(24, 'Los Angeles', 'C', 'img/LosAngeles1.jpeg', '3000.00', 'Travellers favorite destination...MUST VISIT!!!', 49, 0, 0, '0', 0),
(25, 'New York', 'C', 'img/NewYork1.jpeg', '3000.00', 'Travellers favorite destination...MUST VISIT!!!', 60, 0, 0, '0', 0),
(26, 'Dubai', 'C', 'img/Dubai1.jpeg', '3000.00', 'Travellers favorite destination...MUST VISIT!!!', 53, 0, 0, '0', 0),
(27, 'London', 'C', 'img/3_london.jpeg', '3000.00', 'Travellers favorite destination...MUST VISIT!!!', 53, 0, 0, '0', 0),
(28, 'New Zealand', 'C', 'img/New_Zealand1.jpeg', '3000.00', 'Travellers favorite destination...MUST VISIT!!!', 59, 0, 0, '0', 0),
(29, 'West Indies', 'C', 'img/1_caribbean.jpeg', '3000.00', 'Travellers favorite destination...MUST VISIT!!!', 46, 0, 0, '0', 0),
(30, 'Switzerland', 'C', 'img/Switzerland1.jpeg', '3000.00', 'Travellers favorite destination...MUST VISIT!!!', 54, 0, 0, '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Ratings`
--

CREATE TABLE `Ratings` (
  `idRatings` int(11) NOT NULL,
  `userName` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `productID` int(11) NOT NULL,
  `companyName` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `review` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ratings`
--

INSERT INTO `Ratings` (`idRatings`, `userName`, `productID`, `companyName`, `rating`, `review`) VALUES
(1, 'Teja', 1, 'A', 2, 'Very bad experience.'),
(2, 'harish', 4, 'A', 5, 'Must visit!!!'),
(3, 'harish', 12, 'B', 4, 'User friendly!');

-- --------------------------------------------------------

--
-- Table structure for table `UsersList`
--

CREATE TABLE `UsersList` (
  `idUsersList` int(11) NOT NULL,
  `firstName` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeAddress` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `homePhone` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cellPhone` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `userName` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `passwd` blob NOT NULL,
  `visited` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UsersList`
--

INSERT INTO `UsersList` (`idUsersList`, `firstName`, `lastName`, `email`, `homeAddress`, `homePhone`, `cellPhone`, `userName`, `passwd`, `visited`) VALUES
(1, 'Tirumala Saiteja', 'Goruganthu', 'saiteja.goruganthu117@gmail.com', '190 Ryland Street', '(669)687-6543', '(669)687-6543', 'Teja', 0x0005d6c3332e84034827173720f6ed9e, 'A1,A1,A1,A1'),
(2, 'HARISH', 'MAREPALLI', 'saiteja.goruganthu118@gmail.com', '190 Ryland', '(669)687-6543', '(669)687-6543', 'harish', 0x093c98e7ba5b226301462f3b8706bbdd, 'A4,A4,B12'),
(3, 'HARISH', 'MAREPALLI', 'marepalliharish@gmail.com', '190 Ryland St', '(669)649-8324', '(669)649-8324', 'HarishM', 0x502efb5fdd5004384ccd530e803bb966, ''),
(4, 'harishm', 'm', 'decn@gmail.com', '15539  oaks', '(669)548-8462', '(669)548-8462', 'harishuv', 0xd1d2cba9cd1a484c19c5f44873fa22b3, ''),
(5, 'shashank', 'sai', 'sahshak@gmail.com', 'kmck 1550', '(669)548-8462', '(669)548-8462', 'shashank', 0x6ee6b7ac82faa67a00de3d0c809e6499, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `Ratings`
--
ALTER TABLE `Ratings`
  ADD PRIMARY KEY (`idRatings`);

--
-- Indexes for table `UsersList`
--
ALTER TABLE `UsersList`
  ADD PRIMARY KEY (`idUsersList`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Ratings`
--
ALTER TABLE `Ratings`
  MODIFY `idRatings` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `UsersList`
--
ALTER TABLE `UsersList`
  MODIFY `idUsersList` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

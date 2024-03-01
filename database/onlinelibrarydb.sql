-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2024 at 02:19 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinelibrarydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `birth_year` year(4) DEFAULT NULL,
  `death_year` year(4) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `first_name`, `last_name`, `birth_year`, `death_year`, `bio`, `image`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 'Jane', 'Doe', '1975', '0000', 'Jane Doe is a prolific author known for her captivating novels.', 'jane_doe.jpg', '2024-03-01 01:15:08', 1, '2024-03-01 01:15:08', 1, NULL, NULL),
(2, 'John', 'Smith', '1980', '0000', 'John Smith is a bestselling author with a flair for mystery novels.', 'john_smith.jpg', '2024-03-01 01:15:08', 1, '2024-03-01 01:15:08', 1, NULL, NULL),
(3, 'Alice', 'Johnson', '1992', '0000', 'Alice Johnson is a rising star in the world of young adult fiction.', 'alice_johnson.jpg', '2024-03-01 01:15:08', 1, '2024-03-01 01:15:08', 1, NULL, NULL),
(4, 'J.K.', 'Rowling', '1965', NULL, 'British author, best known for the Harry Potter series', 'jk_rowling.jpg', '2024-03-01 01:15:08', 1, '2024-03-01 01:15:08', 1, NULL, NULL),
(5, 'George', 'Orwell', '1903', '1950', 'English novelist and essayist, known for works like \"1984\" and \"Animal Farm\"', 'george_orwell.jpg', '2024-03-01 01:15:08', 1, '2024-03-01 01:15:08', 1, NULL, NULL),
(6, 'Stephen', 'King', '1947', NULL, 'American author of horror, supernatural fiction, suspense, crime, science-fiction, and fantasy novels', 'stephen_king.jpg', '2024-03-01 01:15:08', 1, '2024-03-01 01:15:08', 1, NULL, NULL),
(7, 'Agatha', 'Christie', '0000', '1976', 'English writer known for her detective novels', 'agatha_christie.jpg', '2024-03-01 01:15:08', 1, '2024-03-01 01:15:08', 1, NULL, NULL),
(8, 'Tolkien', 'J.R.R.', '0000', '1973', 'English writer, poet, philologist, and university professor, best known as the author of the classic high fantasy works The Hobbit, The Lord of the Rings', 'tolkien.jpg', '2024-03-01 01:15:08', 1, '2024-03-01 01:15:08', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `balance`
--

CREATE TABLE `balance` (
  `user_id` int(11) NOT NULL,
  `money` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `balance`
--

INSERT INTO `balance` (`user_id`, `money`) VALUES
(1, 100.00),
(2, 75.50),
(3, 120.25);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `isbn` varchar(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `isbn`, `title`, `description`, `price`, `author_id`, `genre_id`, `image`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, '978-3-16-148410-0', 'The Mystery of the Old Mansion', 'A gripping tale of suspense and intrigue.', 12.99, 1, 2, 'mystery_mansion.jpg', '2024-03-01 01:15:08', 1, '2024-03-01 01:15:08', 1, NULL, NULL),
(2, '978-3-16-148411-0', 'Lost in Wonderland', 'Follow Alice on her adventures in a fantastical world.', 9.99, 3, 3, 'lost_wonderland.jpg', '2024-03-01 01:15:08', 1, '2024-03-01 01:15:08', 1, NULL, NULL),
(3, '978-3-16-148412-0', 'The Secret Garden', 'A timeless classic about the power of friendship and nature.', 8.99, 2, 1, 'secret_garden.jpg', '2024-03-01 01:15:08', 1, '2024-03-01 01:15:08', 1, NULL, NULL),
(4, '9780439554930', 'Harry Potter and the Philosopher\'s Stone', 'The first book in the Harry Potter series', 15.99, 1, 1, 'harry_potter.jpg', '2024-03-01 01:15:08', 1, '2024-03-01 01:15:08', 1, NULL, NULL),
(5, '9780451524935', '1984', 'A dystopian social science fiction novel', 12.99, 2, 2, '1984.jpg', '2024-03-01 01:15:08', 1, '2024-03-01 01:15:08', 1, NULL, NULL),
(6, '9780307743657', 'The Shining', 'A horror novel by Stephen King', 10.99, 3, 3, 'the_shining.jpg', '2024-03-01 01:15:08', 1, '2024-03-01 01:15:08', 1, NULL, NULL),
(7, '9780064404990', 'And Then There Were None', 'A mystery novel by Agatha Christie', 9.99, 4, 4, 'and_then_there_were_none.jpg', '2024-03-01 01:15:08', 1, '2024-03-01 01:15:08', 1, NULL, NULL),
(8, '9780618968636', 'The Hobbit', 'Fantasy novel by J.R.R. Tolkien', 11.99, 5, 1, 'the_hobbit.jpg', '2024-03-01 01:15:08', 1, '2024-03-01 01:15:08', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book_collections`
--

CREATE TABLE `book_collections` (
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_collections`
--

INSERT INTO `book_collections` (`book_id`, `user_id`) VALUES
(1, 1),
(1, 3),
(2, 2),
(3, 1),
(3, 3),
(4, 3),
(5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `message_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `replied` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`message_id`, `name`, `lastname`, `email`, `message`, `replied`, `created_at`) VALUES
(1, 'FilanFisteku1', 'FilanFisteku2', 'michael@example.com', 'Book enthusiast and avid reader.', 0, '2024-03-01 01:15:08'),
(2, 'Emily', 'Davis', 'emily@example.com', 'Lover of literature and aspiring writer.', 0, '2024-03-01 01:15:08'),
(3, 'Daniel', 'Wilson', 'daniel@example.com', 'Bookworm and collector of rare editions.', 0, '2024-03-01 01:15:08'),
(4, 'John', 'Doe', 'john@example.com', ' ... ', 0, '2024-03-01 01:15:08'),
(5, 'Albin', 'Abazi', 'albiniiabazi1@gmail.com', 'Pershendetje ! \r\n\r\nShpresoj qe te shkoj mir', 0, '2024-03-01 01:16:58');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(11) NOT NULL,
  `coupon_code` varchar(50) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `is_used` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `coupon_code`, `amount`, `is_used`, `created_at`, `deleted_at`, `deleted_by`) VALUES
(1, 'SAVE10', 10.00, 0, '2024-03-01 01:15:08', NULL, 1),
(2, 'SPRINGSALE', 5.00, 0, '2024-03-01 01:15:08', NULL, 1),
(3, 'FREESHIP', 0.00, 0, '2024-03-01 01:15:08', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genre_id` int(11) NOT NULL,
  `genre_name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genre_id`, `genre_name`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 'Fiction', '2024-03-01 01:15:08', 1, '2024-03-01 01:15:08', 1, NULL, NULL),
(2, 'Mystery', '2024-03-01 01:15:08', 1, '2024-03-01 01:15:08', 1, NULL, NULL),
(3, 'Young Adult', '2024-03-01 01:15:08', 1, '2024-03-01 01:15:08', 1, NULL, NULL),
(4, 'Fantasy', '2024-03-01 01:15:08', 1, '2024-03-01 01:15:08', 1, NULL, NULL),
(5, 'Dystopian', '2024-03-01 01:15:08', 1, '2024-03-01 01:15:08', 1, NULL, NULL),
(6, 'Horror', '2024-03-01 01:15:08', 1, '2024-03-01 01:15:08', 1, NULL, NULL),
(7, 'Mystery', '2024-03-01 01:15:08', 1, '2024-03-01 01:15:08', 1, NULL, NULL),
(8, 'Science Fiction', '2024-03-01 01:15:08', 1, '2024-03-01 01:15:08', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `news_content` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `title`, `news_content`, `image`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 'New Release: The Mystery of the Old Mansion', 'Check out the latest mystery novel by John Smith!', 'new_release_mystery.jpg', '2024-03-01 01:15:08', 1, '2024-03-01 01:15:08', 1, NULL, NULL),
(2, 'Author Spotlight: Alice Johnson', 'Learn more about the rising star in young adult fiction.', 'author_spotlight_alice.jpg', '2024-03-01 01:15:08', 1, '2024-03-01 01:15:08', 1, NULL, NULL),
(3, 'Exclusive Interview with Jane Doe', 'Discover the secrets behind Jane Doe\'s bestselling novels.', 'interview_jane.jpg', '2024-03-01 01:15:08', 1, '2024-03-01 01:15:08', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `money` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `user_id`, `book_id`, `date`, `money`) VALUES
(1, 1, 1, '2024-03-01 01:15:08', 12.99),
(2, 2, 2, '2024-03-01 01:15:08', 9.99),
(3, 3, 3, '2024-03-01 01:15:08', 8.99);

-- --------------------------------------------------------

--
-- Table structure for table `subscription_people`
--

CREATE TABLE `subscription_people` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscription_people`
--

INSERT INTO `subscription_people` (`id`, `email`, `created_at`, `deleted_at`, `deleted_by`) VALUES
(1, 'subscriber1@example.com', '2024-03-01 01:15:08', NULL, 1),
(2, 'subscriber2@example.com', '2024-03-01 01:15:08', NULL, 1),
(3, 'subscriber3@example.com', '2024-03-01 01:15:08', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `privilege` enum('admin','user') DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `lastname`, `bio`, `email`, `password`, `image`, `privilege`, `created_at`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 'Michael', 'Brown', 'Book enthusiast and avid reader.', 'michael@example.com', 'password123', 'michael_brown.jpg', 'user', '2024-03-01 01:15:08', '2024-03-01 01:15:08', 1, NULL, NULL),
(2, 'Emily', 'Davis', 'Lover of literature and aspiring writer.', 'emily@example.com', 'password456', 'emily_davis.jpg', 'user', '2024-03-01 01:15:08', '2024-03-01 01:15:08', 1, NULL, NULL),
(3, 'Daniel', 'Wilson', 'Bookworm and collector of rare editions.', 'daniel@example.com', 'password789', 'daniel_wilson.jpg', 'user', '2024-03-01 01:15:08', '2024-03-01 01:15:08', 1, NULL, NULL),
(4, 'John', 'Doe', NULL, 'john@example.com', 'password', 'john_doe.jpg', 'user', '2024-03-01 01:15:08', '2024-03-01 01:15:08', 1, NULL, NULL),
(5, 'Alice', 'Smith', NULL, 'alice@example.com', 'password', 'alice_smith.jpg', 'user', '2024-03-01 01:15:08', '2024-03-01 01:15:08', 1, NULL, NULL),
(6, 'Michael', 'Brown', NULL, 'michael2@example.com', 'password', 'michael_brown.jpg', 'user', '2024-03-01 01:15:08', '2024-03-01 01:15:08', 1, NULL, NULL),
(7, 'Emily', 'Johnson', NULL, 'emily2@example.com', 'password', 'emily_johnson.jpg', 'user', '2024-03-01 01:15:08', '2024-03-01 01:15:08', 1, NULL, NULL),
(8, 'David', 'Williams', NULL, 'david2@example.com', 'password', 'david_williams.jpg', 'user', '2024-03-01 01:15:08', '2024-03-01 01:15:08', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_coupons`
--

CREATE TABLE `user_coupons` (
  `user_coupon_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `is_used` tinyint(1) DEFAULT 0,
  `used_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_coupons`
--

INSERT INTO `user_coupons` (`user_coupon_id`, `user_id`, `coupon_id`, `is_used`, `used_at`) VALUES
(1, 1, 1, 0, '2024-03-01 01:15:08'),
(2, 2, 2, 0, '2024-03-01 01:15:08'),
(3, 3, 3, 0, '2024-03-01 01:15:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `deleted_by` (`deleted_by`);

--
-- Indexes for table `balance`
--
ALTER TABLE `balance`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `genre_id` (`genre_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `deleted_by` (`deleted_by`);

--
-- Indexes for table `book_collections`
--
ALTER TABLE `book_collections`
  ADD PRIMARY KEY (`book_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`),
  ADD UNIQUE KEY `coupon_code` (`coupon_code`),
  ADD KEY `deleted_by` (`deleted_by`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `deleted_by` (`deleted_by`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `deleted_by` (`deleted_by`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `subscription_people`
--
ALTER TABLE `subscription_people`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deleted_by` (`deleted_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `deleted_by` (`deleted_by`);

--
-- Indexes for table `user_coupons`
--
ALTER TABLE `user_coupons`
  ADD PRIMARY KEY (`user_coupon_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `coupon_id` (`coupon_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscription_people`
--
ALTER TABLE `subscription_people`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_coupons`
--
ALTER TABLE `user_coupons`
  MODIFY `user_coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `balance`
--
ALTER TABLE `balance`
  ADD CONSTRAINT `balance_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author` (`author_id`),
  ADD CONSTRAINT `book_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`);

--
-- Constraints for table `book_collections`
--
ALTER TABLE `book_collections`
  ADD CONSTRAINT `book_collections_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`),
  ADD CONSTRAINT `book_collections_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`);

--
-- Constraints for table `user_coupons`
--
ALTER TABLE `user_coupons`
  ADD CONSTRAINT `user_coupons_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `user_coupons_ibfk_2` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`coupon_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

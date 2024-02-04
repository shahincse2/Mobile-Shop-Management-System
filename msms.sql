-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2023 at 06:00 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `msms`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `C_id` int(11) NOT NULL,
  `C_fname` varchar(50) DEFAULT NULL,
  `C_lname` varchar(50) DEFAULT NULL,
  `C_gender` varchar(20) DEFAULT NULL,
  `C_dfb` varchar(20) DEFAULT NULL,
  `C_mobile` int(11) DEFAULT NULL,
  `C_email` varchar(20) DEFAULT NULL,
  `C_city` varchar(50) DEFAULT NULL,
  `C_address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`C_id`, `C_fname`, `C_lname`, `C_gender`, `C_dfb`, `C_mobile`, `C_email`, `C_city`, `C_address`) VALUES
(1, 'shahin', 'alam', 'male', '14/03/1999', 1517805606, 'shahinalam@gmail.com', 'meherpur', 'Ramnagar meherpur'),
(2, 'Jobaer', 'Hossain', 'male', '18/11/1999', 1517805786, 'jobaer@gmail.com', 'madaripur', 'madaripur'),
(3, 'arif', 'islam', 'male', '05/03/1999', 1777805606, 'arif@gmail.com', 'rajbari', 'rajbari'),
(4, 'shuvo', 'hasan', 'male', '28/12/1999', 1517804506, 'shuvo@gmail.com', 'bogura', 'bogura'),
(5, 'sazzad', 'hossain', 'male', '1/05/1999', 1516605606, 'sazzad@gmail.com', 'jashore', 'jashore');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `E_id` int(11) NOT NULL,
  `E_fname` varchar(50) DEFAULT NULL,
  `E_lname` varchar(50) DEFAULT NULL,
  `E_salary` int(100) DEFAULT NULL,
  `E_gender` varchar(20) DEFAULT NULL,
  `E_dfb` varchar(20) DEFAULT NULL,
  `E_mobile` int(11) DEFAULT NULL,
  `E_email` varchar(20) DEFAULT NULL,
  `E_designation` varchar(100) DEFAULT NULL,
  `E_city` varchar(50) DEFAULT NULL,
  `E_address` varchar(100) DEFAULT NULL,
  `E_joining_date` varchar(50) DEFAULT NULL,
  `E_leaving_date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`E_id`, `E_fname`, `E_lname`, `E_salary`, `E_gender`, `E_dfb`, `E_mobile`, `E_email`, `E_designation`, `E_city`, `E_address`, `E_joining_date`, `E_leaving_date`) VALUES
(1, 'kamal', 'mozumdar', 12000, 'male', '12/12/1999', 1571805666, 'kamal@gmail.com', 'Cashier', 'Mirpur', 'Mirpur-2', '12/5/2010', '01/05/2015'),
(2, 'jamal', 'mozumdar', 15000, 'male', '12/2/1998', 1571812366, 'jamal@gmail.com', 'Manager', 'Mirpur', 'Mirpur-2', '05/5/2009', '01/05/2018'),
(3, 'tamal', 'mozumdar', 18000, 'male', '02/02/1995', 1571801476, 'tamal@gmail.com', 'Area Manager', 'Mirpur', 'Mirpur-2', '12/5/2009', '01/05/2022');

-- --------------------------------------------------------

--
-- Table structure for table `mobiles`
--

CREATE TABLE `mobiles` (
  `M_id` int(11) NOT NULL,
  `M_model` varchar(50) DEFAULT NULL,
  `M_name` varchar(50) DEFAULT NULL,
  `M_price` int(100) DEFAULT NULL,
  `M_stock` varchar(20) DEFAULT NULL,
  `M_imei` int(30) DEFAULT NULL,
  `M_desc` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mobiles`
--

INSERT INTO `mobiles` (`M_id`, `M_model`, `M_name`, `M_price`, `M_stock`, `M_imei`, `M_desc`) VALUES
(1, 'A50', 'Samsung', 25000, 'Available', 25452, 'This phone is good for normal users.'),
(2, 'A51', 'Samsung', 28000, 'Available', 25452, 'This phone is good for normal users.'),
(3, 'A52', 'Samsung', 30000, 'Available', 25436, 'This phone is good for normal users.');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Transaction_id` int(11) NOT NULL,
  `C_id` int(11) NOT NULL,
  `P_date` varchar(50) DEFAULT NULL,
  `E_id` int(11) NOT NULL,
  `Account_no` int(50) DEFAULT NULL,
  `Payment_gateway` varchar(30) DEFAULT NULL,
  `P_amount` int(100) DEFAULT NULL,
  `P_desc` varchar(100) DEFAULT NULL,
  `M_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Transaction_id`, `C_id`, `P_date`, `E_id`, `Account_no`, `Payment_gateway`, `P_amount`, `P_desc`, `M_id`) VALUES
(1, 1, '12/05/2011', 1, 152, 'bkash', 25000, 'Online payment', 1),
(2, 2, '01/07/2012', 2, 160, 'bkash', 28000, 'Online payment', 3);

-- --------------------------------------------------------

--
-- Table structure for table `sell`
--

CREATE TABLE `sell` (
  `S_id` int(11) NOT NULL,
  `M_id` int(50) DEFAULT NULL,
  `M_model` varchar(50) DEFAULT NULL,
  `M_name` varchar(50) DEFAULT NULL,
  `S_date` varchar(100) DEFAULT NULL,
  `S_status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sell`
--

INSERT INTO `sell` (`S_id`, `M_id`, `M_model`, `M_name`, `S_date`, `S_status`) VALUES
(1, 3, 'A50', 'Samsung', '01/07/2012', 'Sold');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `Sup_id` int(11) NOT NULL,
  `Sup_name` varchar(50) DEFAULT NULL,
  `M_model` varchar(50) DEFAULT NULL,
  `M_imei` int(30) DEFAULT NULL,
  `Buy_date` varchar(50) DEFAULT NULL,
  `Buy_cost` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`Sup_id`, `Sup_name`, `M_model`, `M_imei`, `Buy_date`, `Buy_cost`) VALUES
(1, 'Mosharrof', 'A50', 52154, '25/06/2010', 24000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`C_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`E_id`);

--
-- Indexes for table `mobiles`
--
ALTER TABLE `mobiles`
  ADD PRIMARY KEY (`M_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Transaction_id`),
  ADD KEY `C_id` (`C_id`),
  ADD KEY `E_id` (`E_id`),
  ADD KEY `M_id` (`M_id`);

--
-- Indexes for table `sell`
--
ALTER TABLE `sell`
  ADD PRIMARY KEY (`S_id`),
  ADD KEY `M_id` (`M_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`Sup_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`C_id`) REFERENCES `customer` (`C_id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`E_id`) REFERENCES `employee` (`E_id`),
  ADD CONSTRAINT `payment_ibfk_3` FOREIGN KEY (`M_id`) REFERENCES `mobiles` (`M_id`);

--
-- Constraints for table `sell`
--
ALTER TABLE `sell`
  ADD CONSTRAINT `sell_ibfk_1` FOREIGN KEY (`M_id`) REFERENCES `mobiles` (`M_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

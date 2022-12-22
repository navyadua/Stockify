-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 08, 2022 at 06:49 PM
-- Server version: 8.0.28
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stockify`
--

-- --------------------------------------------------------

--
-- Table structure for table `balance_sheet`
--

CREATE TABLE `balance_sheet` (
  `Company` varchar(20) NOT NULL,
  `Year` int NOT NULL,
  `Share_Capital` float NOT NULL,
  `Stock_ID` int NOT NULL,
  `Total_Reserves` float NOT NULL,
  `Borrowings` float NOT NULL,
  `Other_Liabilities` float NOT NULL,
  `Current_Liabilities` float NOT NULL,
  `Total_Liabilities` float NOT NULL,
  `Loans` float NOT NULL,
  `Net_Block` float NOT NULL,
  `Capital_WIP` float NOT NULL,
  `Intangible_WIP` float NOT NULL,
  `Investments` float NOT NULL,
  `Other_Loans` float NOT NULL,
  `Other_nc_Asets` float NOT NULL,
  `Current_Assets` float NOT NULL,
  `Total_Assets` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `buy_transactions`
--

CREATE TABLE `buy_transactions` (
  `buytransaction_id` int NOT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `buy_amount_` float NOT NULL,
  `quantity` int NOT NULL,
  `stoploss` int NOT NULL,
  `limit_price` int NOT NULL,
  `target` int NOT NULL,
  `trailing_stoploss` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buy_transactions`
--

INSERT INTO `buy_transactions` (`buytransaction_id`, `user_id`, `name`, `date`, `buy_amount_`, `quantity`, `stoploss`, `limit_price`, `target`, `trailing_stoploss`) VALUES
(1, 'madaline_myers', 'HDFC Bank', '2010-06-02', 1374, 30, 0, 0, 0, 0),
(2, 'wilson_bailey', 'ICICI Bank', '2010-07-23', 758.8, 20, 0, 0, 0, 0),
(3, 'lucia_wright', 'SBI', '2010-12-15', 502.3, 10, 0, 0, 0, 0),
(4, 'marcus_hawkins', 'Bajaj Holdings', '2011-03-02', 5416.7, 85, 0, 0, 0, 0),
(5, 'hailey_ellis', 'Muthoot Finance', '2011-04-29', 1285, 20, 0, 0, 0, 0),
(6, 'richard_johnston', 'HDFC AMC', '2011-12-26', 2005.65, 11, 0, 0, 0, 0),
(7, 'aiden_barnes', 'Wipro', '2012-06-26', 533.3, 24, 0, 0, 0, 0),
(8, 'evelyn_clark', 'Tech Mahindra', '2012-06-28', 1267.95, 55, 0, 0, 0, 0),
(9, 'kevin_bailey', 'L&T Infotech', '2012-07-09', 4812.7, 35, 0, 0, 0, 0),
(11, 'aiden_barnes', 'Kotak Mahindra', '2012-11-28', 1742.9, 1, 0, 0, 0, 0),
(12, 'marcus_hawkins', 'Axis Bank', '2013-09-09', 792, 24, 0, 0, 0, 0),
(13, 'richard_johnston', 'Divis Labs', '2014-03-11', 4466.05, 31, 0, 0, 0, 0),
(14, 'wilson_bailey', 'Cipla', '2014-04-07', 969.35, 37, 0, 0, 0, 0),
(15, 'lucia_wright', 'Dr Reddys Labs', '2015-05-27', 4164.85, 43, 0, 0, 0, 0),
(16, 'hailey_ellis', 'Gland', '2015-09-28', 3215.1, 19, 0, 0, 0, 0),
(17, 'evelyn_clark', 'LIC Housing Fin', '2016-01-18', 380, 13, 0, 0, 0, 0),
(18, 'kevin_bailey', 'Nippon', '2017-10-30', 328.25, 6, 0, 0, 0, 0),
(19, 'richard_johnston', 'Bank of Baroda', '2019-06-06', 112.75, 34, 0, 0, 0, 0),
(20, 'madaline_myers', 'Bandhan Bank', '2019-09-23', 338.95, 4, 0, 0, 0, 0),
(21, 'marcus_hawkins', 'IDBI Bank', '2020-05-21', 45.9, 35, 0, 0, 0, 0),
(22, 'hailey_ellis', 'AU Small Financ', '2020-05-22', 1410.75, 33, 0, 0, 0, 0),
(23, 'evelyn_clark', 'Muthoot Finance', '2020-06-17', 1285, 36, 0, 0, 0, 0),
(24, 'kevin_bailey', 'HDFC AMC', '2020-11-04', 2005.65, 46, 0, 0, 0, 0),
(25, 'wilson_bailey', 'Mindtree', '2020-11-19', 3711.1, 30, 0, 0, 0, 0),
(26, 'lucia_wright', 'MphasiS', '2011-01-27', 2749.3, 39, 0, 0, 0, 0),
(27, 'aiden_barnes', 'Persistent', '2011-05-20', 4024.5, 15, 0, 0, 0, 0),
(28, 'madaline_myers', 'Oracle Fin Serv', '2012-02-08', 3528.7, 42, 0, 0, 0, 0),
(29, 'aiden_barnes', 'COFORGE LTD.', '2012-08-21', 4012, 5, 0, 0, 0, 0),
(30, 'hailey_ellis', 'Affle India', '2012-09-06', 1200.3, 14, 0, 0, 0, 0),
(31, 'evelyn_clark', 'Happiest Minds', '2013-03-20', 1017.5, 32, 0, 0, 0, 0),
(32, 'wilson_bailey', 'Federal Bank', '2013-07-09', 97, 45, 0, 0, 0, 0),
(33, 'lucia_wright', 'Indian Bank', '2013-08-22', 162.3, 9, 0, 0, 0, 0),
(34, 'marcus_hawkins', 'Bank of India', '2014-09-24', 49.25, 2, 0, 0, 0, 0),
(35, 'richard_johnston', 'Max Financial', '2015-03-12', 731.15, 17, 0, 0, 0, 0),
(36, 'kevin_bailey', 'LIC Housing Fin', '2015-03-24', 380, 23, 0, 0, 0, 0),
(37, 'hailey_ellis', 'Nippon', '2015-04-09', 328.25, 7, 0, 0, 0, 0),
(38, 'aiden_barnes', 'AAVAS Financier', '2015-05-05', 2316.6, 10, 0, 0, 0, 0),
(39, 'madaline_myers', 'HCL Tech', '2016-02-08', 1098.55, 18, 0, 0, 0, 0),
(40, 'lucia_wright', 'Wipro', '2016-03-25', 533.3, 8, 0, 0, 0, 0),
(41, 'richard_johnston', 'Tech Mahindra', '2016-05-11', 1267.95, 22, 0, 0, 0, 0),
(42, 'wilson_bailey', 'Sun Pharma', '2018-03-27', 918.45, 16, 0, 0, 0, 0),
(43, 'marcus_hawkins', 'Divis Labs', '2019-05-20', 4466.05, 27, 0, 0, 0, 0),
(44, 'kevin_bailey', 'Cipla', '2019-07-08', 969.35, 50, 0, 0, 0, 0),
(45, 'evelyn_clark', 'Dr Reddys Labs', '2020-01-22', 4164.85, 12, 0, 0, 0, 0),
(46, 'wilson_bailey', 'Gland', '2021-06-29', 3215.1, 3, 0, 0, 0, 0),
(47, 'lucia_wright', 'Indian Bank', '2021-07-07', 162.3, 41, 0, 0, 0, 0),
(48, 'richard_johnston', 'Bank of India', '2021-07-28', 49.25, 28, 0, 0, 0, 0),
(49, 'hailey_ellis', 'Central Bank', '2021-09-22', 19.25, 11, 0, 0, 0, 0),
(50, 'aiden_barnes', 'Bank of Mah', '2021-11-09', 18, 20, 0, 0, 0, 0),
(51, 'richard_johnston', 'Bajaj Finance', '2013-02-19', 7139.55, 44, 0, 0, 0, 0),
(52, 'marcus_hawkins', 'HDFC', '2014-05-13', 2228.95, 26, 0, 0, 0, 0),
(53, 'lucia_wright', 'Bajaj Finserv', '2015-08-13', 15494.9, 25, 0, 0, 0, 0),
(54, 'evelyn_clark', 'Bajaj Holdings', '2015-12-18', 5416.7, 47, 0, 0, 0, 0),
(55, 'hailey_ellis', 'Muthoot Finance', '2017-04-20', 1285, 49, 0, 0, 0, 0),
(56, 'wilson_bailey', 'Educomp Sol', '2017-11-17', 4.31, 29, 0, 0, 0, 0),
(57, 'kevin_bailey', 'Jetking Info', '2018-10-23', 50, 38, 0, 0, 0, 0),
(58, 'madaline_myers', 'Sun Pharma', '2020-04-01', 918.45, 48, 0, 0, 0, 0),
(59, 'aiden_barnes', 'Divis Labs', '2021-03-18', 4466.05, 21, 0, 0, 0, 0),
(60, 'kevin_bailey', 'Cipla', '2021-03-23', 969.35, 40, 0, 0, 0, 0),
(61, 'madaline_myers', 'HDFC Bank', '2022-05-08', 1374, 100, 20, 45, 410, 20),
(62, 'madaline_myers', 'Axis Bank', '2022-05-08', 792, 100, 200, 400, 300, 500),
(63, 'evelyn_clark', 'MphasiS', '2022-05-08', 2749.3, 23, 45, 120, 120, 14);

-- --------------------------------------------------------

--
-- Table structure for table `company_statistics`
--

CREATE TABLE `company_statistics` (
  `Stock_ID` int NOT NULL,
  `Company_Name` varchar(20) NOT NULL,
  `High_Low` float NOT NULL,
  `Current_Price` float NOT NULL,
  `Per_Change` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_details`
--

CREATE TABLE `course_details` (
  `Course_Name` varchar(20) NOT NULL,
  `Course_ID` int NOT NULL,
  `Duration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `name` varchar(20) DEFAULT NULL,
  `phone` int NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `messege` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `phone`, `email`, `subject`, `messege`) VALUES
('Navya Dua', 123567890, 'navyadua@gmail.com', 'Hello', ''),
('Navya Dua', 12356789, 'navyadua@gmail.com', 'Hello', ''),
('Navya Dua', 12356789, 'navyadua@gmail.com', 'Hello', ''),
('username', 1020304050, 'helloworld@gmail.com', 'Hello', ''),
('username123456', 1100220033, 'helloworld@gmail.com', 'Hello World Lorem Ipsum', 'Lorem Ipsum Hello World');

-- --------------------------------------------------------

--
-- Table structure for table `global_market`
--

CREATE TABLE `global_market` (
  `name` varchar(50) NOT NULL,
  `current_value` decimal(10,3) NOT NULL,
  `change` decimal(10,3) NOT NULL,
  `per_change` decimal(10,3) NOT NULL,
  `open` decimal(10,0) NOT NULL,
  `high` decimal(10,0) NOT NULL,
  `low` decimal(10,0) NOT NULL,
  `prev_close` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `global_market`
--

INSERT INTO `global_market` (`name`, `current_value`, `change`, `per_change`, `open`, `high`, `low`, `prev_close`) VALUES
('NASDAQ', '14261.500', '40.980', '0.290', '14270', '14307', '14132', '14221'),
('FTSE', '7550.680', '12.780', '0.170', '7538', '7574', '7538', '7538'),
('CAC', '6682.230', '-2.080', '-0.030', '6710', '6718', '6682', '6684'),
('DAX', '14405.920', '-40.560', '-0.280', '14504', '14516', '14406', '14446'),
('SGX NIFTY', '17958.000', '215.000', '1.210', '17737', '18120', '17652', '17743'),
('NIKKEI 225', '27736.470', '70.490', '0.250', '27686', '27754', '27579', '27666'),
('STRAITS TIMES', '3420.490', '1.380', '0.040', '3419', '3425', '3415', '3419'),
('HANG SENG', '22454.170', '414.620', '1.880', '22227', '22524', '22124', '22040'),
('TAIWAN WEIGHTED', '17625.590', '-67.880', '-0.380', '17658', '17658', '17466', '17693'),
('KOSPI', '2757.900', '18.050', '0.660', '2730', '2758', '2722', '2740'),
('SET COMPOSITE', '1703.100', '1.790', '0.110', '1705', '1707', '1700', '1701'),
('JAKARTA COMPOSITE', '7084.720', '5.960', '0.080', '7082', '7092', '7060', '7079'),
('SHANGHAI COMPOSITE', '3282.720', '30.520', '0.940', '3235', '3287', '3226', '3252');

-- --------------------------------------------------------

--
-- Table structure for table `holding`
--

CREATE TABLE `holding` (
  `User_Id` int NOT NULL,
  `Stock_ID` int NOT NULL,
  `Stock_Name` varchar(20) NOT NULL,
  `Quantity` int NOT NULL,
  `Avg_Buy_Price` float NOT NULL,
  `Total_Value` float NOT NULL,
  `Current_Price` float NOT NULL,
  `Current_Value` float NOT NULL,
  `_Change` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `indian_market`
--

CREATE TABLE `indian_market` (
  `Name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `LTP` double DEFAULT NULL,
  `Chg` double DEFAULT NULL,
  `%Chg` double DEFAULT NULL,
  `Open` double DEFAULT NULL,
  `High` double DEFAULT NULL,
  `Low` double DEFAULT NULL,
  `52 Week High` double DEFAULT NULL,
  `52 Week Low` double DEFAULT NULL,
  `Technical Rating` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `indian_market`
--

INSERT INTO `indian_market` (`Name`, `LTP`, `Chg`, `%Chg`, `Open`, `High`, `Low`, `52 Week High`, `52 Week Low`, `Technical Rating`) VALUES
('NIFTY50', 17971.35, 300.9, 1.7, 17809.1, 18114.65, 17791.4, 18604.45, 14151.4, 'VeryBullish'),
('NIFTYBANK', 38353.85, 1205.35, 3.24, 37824.95, 38765.85, 37665.55, 41829.6, 30405.65, 'VeryBullish'),
('NIFTYMidcap100', 30500.3, 365.75, 1.21, 30293.55, 30533.2, 30286.1, 33243.5, 22799.9, 'VeryBullish'),
('NIFTY50', 17971.35, 300.9, 1.7, 17809.1, 18114.65, 17791.4, 18604.45, 14151.4, 'VeryBullish'),
('NIFTYBANK', 38353.85, 1205.35, 3.24, 37824.95, 38765.85, 37665.55, 41829.6, 30405.65, 'VeryBullish'),
('NIFTYMidcap100', 30500.3, 365.75, 1.21, 30293.55, 30533.2, 30286.1, 33243.5, 22799.9, 'VeryBullish'),
('NIFTYNEXT50', 42151.35, 397.25, 0.95, 41912, 42169.1, 41902.95, 45290.8, 33513.6, 'VeryBullish'),
('NIFTY100', 18165.6, 286.1, 1.6, 18010.3, 18281.95, 17994.9, 18870.7, 14329.6, 'VeryBullish'),
('Nifty200', 9468.8, 144.45, 1.55, 9389.95, 9519.2, 9383.45, 9895.1, 7427, 'VeryBullish'),
('NIFTY500', 15314.15, 226.85, 1.5, 15192.8, 15384.9, 15184.7, 16004.45, 11923.2, 'VeryBullish'),
('NIFTYSmallcap100', 10738.4, 127.15, 1.2, 10693.35, 10758.65, 10689.6, 12047.45, 7950.45, 'Bullish'),
('NIFTYMIDCAP50', 8383.8, 75.1, 0.9, 8339.55, 8394.1, 8337.3, 9196.75, 6325.05, 'VeryBullish'),
('NIFTYSMLCAP50', 4950.45, 56.35, 1.15, 4931.15, 4965.2, 4925.5, 5889.45, 3947.8, 'Bullish'),
('IndiaVIX', 18.29, -0.15, -0.81, 18.43, 18.82, 17.59, 33.97, 9.02, 'Bearish'),
('NIFTYAUTO', 10770.85, 94, 0.88, 10688.75, 10792.1, 10641.8, 12139.75, 9226.95, 'Bullish'),
('NIFTYIT', 36355.4, 12, 0.03, 36347.55, 36463.1, 36130.35, 39446.7, 25293.3, 'VeryBullish'),
('NIFTYPSUBANK', 2859.15, 24.65, 0.87, 2844.95, 2868.75, 2838.55, 3133.5, 1910.65, 'VeryBullish'),
('NIFTYFINSERVICE', 18146.2, 679.05, 3.89, 17853, 18624.5, 17813.95, 19778.95, 14600.65, 'Bullish'),
('NIFTYPHARMA', 13730.2, 150.3, 1.11, 13630.45, 13734.15, 13571.45, 14938.25, 12129.25, 'VeryBullish'),
('NIFTYFMCG', 36990, 277.85, 0.76, 36767.7, 37073.75, 36613.85, 42021.45, 33407.55, 'Bullish'),
('NIFTYMETAL', 6599, 121.8, 1.88, 6491.65, 6609.2, 6481.7, 6617.85, 4008.75, 'VeryBullish'),
('NIFTYREALTY', 474.2, -0.35, -0.07, 476.2, 477.85, 472.55, 560.9, 298.35, 'Bullish'),
('NIFTYMEDIA', 2449.25, 28.65, 1.18, 2428.15, 2463.15, 2408.65, 2494.55, 1409.05, 'VeryBullish'),
('NIFTYENERGY', 26614, 159.5, 0.6, 26493.1, 26641.4, 26432.05, 26641.4, 17159.3, 'VeryBullish'),
('NiftyPvtBank', 19412.15, 581.1, 3.09, 19162.8, 19578.2, 19083.05, 21719.3, 16262.45, 'VeryBullish'),
('NIFTYINFRA', 5130.55, 34.8, 0.68, 5095.65, 5136.9, 5086.75, 5362.8, 3890.3, 'VeryBullish'),
('NIFTYCOMMODITIES', 6142.65, 67.85, 1.12, 6078.35, 6147.45, 6070.65, 6236.5, 4423.2, 'VeryBullish'),
('NIFTYCONSUMPTION', 6962.95, 53.2, 0.77, 6918.85, 6977.3, 6909.45, 7653.45, 5790.2, 'VeryBullish'),
('NIFTYPSE', 4257.4, 37.9, 0.9, 4224.8, 4264.75, 4215.95, 4504.35, 2939.15, 'VeryBullish'),
('NIFTYSERVSECTOR', 25156.55, 590.2, 2.4, 24880.2, 25526.2, 24838.8, 25822.85, 19628.3, 'VeryBullish'),
('NiftyFinSrv25/50', 17732.55, 567.05, 3.3, 17481.2, 18166.9, 17457.9, 18166.9, 0, 'VeryBullish'),
('NiftyConsrDurbl', 27407.1, 120.55, 0.44, 27458.3, 27614.6, 27389.75, 30892.4, 14089.55, 'Neutral'),
('NiftyHealthcare', 8556.85, 99.15, 1.17, 8497.15, 8560.85, 8451.75, 9275.15, 6482.8, 'VeryBullish'),
('NiftyOilGas', 8122.4, 74.55, 0.93, 8069.3, 8142.6, 8057.1, 8284.75, 4632.7, 'VeryBullish'),
('NIFTYINDIAMFG', 8107.55, 79.5, 0.99, 8052.4, 8110.65, 8039, 8110.65, 0, 'Bullish'),
('NIFTYMIDCAP150', 11401.9, 129.1, 1.15, 11332.6, 11414.6, 11330.25, 12338.5, 8647.5, 'VeryBullish'),
('NIFTYMIDSML400', 10801.5, 125.35, 1.17, 10739.1, 10809.7, 10737.4, 11554.15, 7975.6, 'VeryBullish'),
('NIFTYSMLCAP250', 9739.05, 118.9, 1.24, 9689, 9748.15, 9686.95, 10524.55, 6768, 'VeryBullish'),
('NIFTYMNC', 18464.4, 193.6, 1.06, 18297.6, 18472.75, 18294.3, 20129.85, 15739.95, 'Bullish'),
('NIFTYAlphaLowVol30', 16991.95, 81.05, 0.48, 16967.05, 17032.15, 16910.45, 17032.15, 0, 'Bullish'),
('Nifty200Momentum30', 20634.35, 183.25, 0.9, 20539.2, 20637.7, 20489.3, 20637.7, 0, 'VeryBullish'),
('NiftyLargeMid250', 9905.55, 72.4, 0.74, 9833.15, 9930.9, 9830.45, 10495.35, 5635.2, '-'),
('Nifty500Mul50:25:25', 9987.55, 137.3, 1.39, 9916.95, 10012.85, 9913.8, 10475.45, 5531.55, 'Bullish'),
('NIFTYCPSE', 2600.45, 20.1, 0.78, 2580.1, 2605, 2571.3, 2605, 1676.85, 'VeryBullish'),
('NIFTYMIDSELECT', 7457.4, 61.15, 0.83, 7423.8, 7470.8, 7421.15, 8124.45, 5520.25, 'Bullish'),
('NIFTYINDDIGITAL', 6546.95, 75.55, 1.17, 6493.2, 6553.05, 6490, 7365.45, 4755.25, 'Bullish'),
('NIFTYM150QLTY50', 16884.25, 150.45, 0.9, 16838.8, 16921.55, 16831.45, 16921.55, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `indices`
--

CREATE TABLE `indices` (
  `Exchange_Name` varchar(20) NOT NULL,
  `Current_Level` float NOT NULL,
  `Open_Level` float NOT NULL,
  `Per_Change` float NOT NULL,
  `Category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `learning`
--

CREATE TABLE `learning` (
  `VideoID` int NOT NULL,
  `Course_Name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Links` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `learning`
--

INSERT INTO `learning` (`VideoID`, `Course_Name`, `Links`) VALUES
(1, 'Stock Market', 'https://www.youtube.com/embed?v=3UF0ymVdYLA&list=PLFQ0hRWyH11RS4KUPadj6aoC2KtEHVIfN&index=1  '),
(2, 'Stock Market', 'https://www.youtube.com/embed?v=RieqxXMds64&list=PLFQ0hRWyH11RS4KUPadj6aoC2KtEHVIfN&index=2'),
(3, 'Stock Market', 'https://www.youtube.com/embed?v=K5k4kF_2j0M&list=PLFQ0hRWyH11RS4KUPadj6aoC2KtEHVIfN&index=3'),
(4, 'Stock Market', 'https://www.youtube.com/embed?v=OaHFyZtN0iM&list=PLFQ0hRWyH11RS4KUPadj6aoC2KtEHVIfN&index=4 '),
(5, 'Stock Market', 'https://www.youtube.com/embed?v=924-bji0I6Y&list=PLFQ0hRWyH11RS4KUPadj6aoC2KtEHVIfN&index=6'),
(6, 'Stock Market', 'https://www.youtube.com/embed?v=_lQsquuVKqM&list=PLFQ0hRWyH11RS4KUPadj6aoC2KtEHVIfN&index=7'),
(7, 'Stock Market', 'https://www.youtube.com/embed?v=I13xlJnrC38&list=PLFQ0hRWyH11RS4KUPadj6aoC2KtEHVIfN&index=8 '),
(8, 'Stock Market', 'https://www.youtube.com/embed?v=KcAakKmTknM&list=PLFQ0hRWyH11RS4KUPadj6aoC2KtEHVIfN&index=9 '),
(9, 'Stock Market', 'https://www.youtube.com/embed?v=Hcnf-IBcvRw&list=PLFQ0hRWyH11RS4KUPadj6aoC2KtEHVIfN&index=10 '),
(10, 'Stock Market', 'https://www.youtube.com/embed?v=2eZg2zHzOu0&list=PLFQ0hRWyH11RS4KUPadj6aoC2KtEHVIfN&index=11 '),
(11, 'Stock Market', 'https://www.youtube.com/embed?v=EVt1ej_GUrg&list=PLFQ0hRWyH11RS4KUPadj6aoC2KtEHVIfN&index=12 '),
(12, 'Stock Market', 'https://www.youtube.com/embed?v=dM36QV5APrU&list=PLFQ0hRWyH11RS4KUPadj6aoC2KtEHVIfN&index=13'),
(13, 'Stock Market', 'https://www.youtube.com/embed?v=vWtCOS-Q9Ho&list=PLFQ0hRWyH11RS4KUPadj6aoC2KtEHVIfN&index=14'),
(14, 'Stock Market', 'https://www.youtube.com/embed?v=Us03mJPU_lc&list=PLFQ0hRWyH11RS4KUPadj6aoC2KtEHVIfN&index=15'),
(15, 'Stock Market', 'https://www.youtube.com/embed?v=_TUTZ4ea42E&list=PLFQ0hRWyH11RS4KUPadj6aoC2KtEHVIfN&index=16'),
(16, 'Stock Market', 'https://www.youtube.com/embed?v=IEVWe45-fAw&list=PLFQ0hRWyH11RS4KUPadj6aoC2KtEHVIfN&index=17'),
(17, 'Stock Market', 'https://www.youtube.com/embed?v=C406ZRad9VQ&list=PLFQ0hRWyH11RS4KUPadj6aoC2KtEHVIfN&index=18'),
(18, 'Stock Market', 'https://www.youtube.com/embed?v=6CsMg3bf0EI&list=PLFQ0hRWyH11RS4KUPadj6aoC2KtEHVIfN&index=19'),
(19, 'Stock Market', 'https://www.youtube.com/embed?v=euTsgKQj0QU&list=PLFQ0hRWyH11RS4KUPadj6aoC2KtEHVIfN&index=20'),
(20, 'Stock Market', 'https://www.youtube.com/embed?v=82qltDI9T9M&list=PLFQ0hRWyH11RS4KUPadj6aoC2KtEHVIfN&index=22'),
(21, 'Stock Market', 'https://www.youtube.com/embed?v=82qltDI9T9M&list=PLFQ0hRWyH11RS4KUPadj6aoC2KtEHVIfN&index=22'),
(22, 'Stock Market', 'https://www.youtube.com/embed?v=6P_naNghHIQ&list=PLFQ0hRWyH11RS4KUPadj6aoC2KtEHVIfN&index=23'),
(23, 'Financial Planning', 'https://www.youtube.com/embed?v=LLdKcFpHgM8&list=PL8uhW8cclMiOSfw_Kzi6YpLx1PhL8GIS9&index=1'),
(24, 'Financial Planning', 'https://www.youtube.com/embed?v=7-2dKzOG1pM&list=PL8uhW8cclMiOSfw_Kzi6YpLx1PhL8GIS9&index=2'),
(25, 'Financial Planning', 'https://www.youtube.com/embed?v=0XYB7aiD20c&list=PL8uhW8cclMiOSfw_Kzi6YpLx1PhL8GIS9&index=3'),
(26, 'Financial Planning', 'https://www.youtube.com/embed?v=KTyU-Z94_bE&list=PL8uhW8cclMiOSfw_Kzi6YpLx1PhL8GIS9&index=4'),
(27, 'Financial Planning', 'https://www.youtube.com/embed?v=3hikDqf9GW4&list=PL8uhW8cclMiOSfw_Kzi6YpLx1PhL8GIS9&index=5'),
(28, 'Financial Planning', 'https://www.youtube.com/embed?v=SfXrTIoK_x8&list=PL8uhW8cclMiOSfw_Kzi6YpLx1PhL8GIS9&index=6'),
(29, 'Financial Planning', 'https://www.youtube.com/embed?v=R8ZWwkbS6Ww&list=PL8uhW8cclMiOSfw_Kzi6YpLx1PhL8GIS9&index=7'),
(30, 'Financial Planning', 'https://www.youtube.com/embed?v=Z1bU3dE7Rdc&list=PL8uhW8cclMiOSfw_Kzi6YpLx1PhL8GIS9&index=8'),
(31, 'Financial Planning', 'https://www.youtube.com/embed?v=hPTrtp098vg&list=PL8uhW8cclMiOSfw_Kzi6YpLx1PhL8GIS9&index=9'),
(32, 'Financial Planning', 'https://www.youtube.com/embed?v=SYNfUhfh_Dg&list=PL8uhW8cclMiOSfw_Kzi6YpLx1PhL8GIS9&index=10'),
(33, 'Financial Planning', 'https://www.youtube.com/embed?v=MeIaiaKX5D4&list=PL8uhW8cclMiOSfw_Kzi6YpLx1PhL8GIS9&index=11'),
(34, 'Financial Planning', 'https://www.youtube.com/embed?v=59z5yb5Dr4M&list=PL8uhW8cclMiOSfw_Kzi6YpLx1PhL8GIS9&index=12'),
(35, 'Financial Planning', 'https://www.youtube.com/embed?v=uPqNNshSA9I&list=PL8uhW8cclMiOSfw_Kzi6YpLx1PhL8GIS9&index=13'),
(36, 'Financial Planning', 'https://www.youtube.com/embed?v=T_NIXo3q09c&list=PL8uhW8cclMiOSfw_Kzi6YpLx1PhL8GIS9&index=14'),
(37, 'Financial Planning', 'https://www.youtube.com/embed?v=NRtFvuzPWyQ&list=PL8uhW8cclMiOSfw_Kzi6YpLx1PhL8GIS9&index=15'),
(38, 'Financial Planning', 'https://www.youtube.com/embed?v=EKVW0zWGMdk&list=PL8uhW8cclMiOSfw_Kzi6YpLx1PhL8GIS9&index=16'),
(39, 'Financial Planning', 'https://www.youtube.com/embed?v=rdX_fkFFBok&list=PL8uhW8cclMiOSfw_Kzi6YpLx1PhL8GIS9&index=17'),
(40, 'Financial Planning', 'https://www.youtube.com/embed?v=gpYjnR5ZMrc&list=PL8uhW8cclMiOSfw_Kzi6YpLx1PhL8GIS9&index=18'),
(41, 'Financial Planning', 'https://www.youtube.com/embed?v=FgXosDv1hUM&list=PL8uhW8cclMiOSfw_Kzi6YpLx1PhL8GIS9&index=19'),
(42, 'Financial Planning', 'https://www.youtube.com/embed?v=0FyMgZB7jmg&list=PL8uhW8cclMiOSfw_Kzi6YpLx1PhL8GIS9&index=20'),
(43, 'Financial Planning', 'https://www.youtube.com/embed?v=F7GxExGKXpU&list=PL8uhW8cclMiOSfw_Kzi6YpLx1PhL8GIS9&index=21'),
(44, 'Financial Planning', 'https://www.youtube.com/embed?v=WN9Mks1s4tM&list=PL8uhW8cclMiOSfw_Kzi6YpLx1PhL8GIS9&index=22'),
(45, 'Financial Planning', 'https://www.youtube.com/embed?v=7aExYsqPUV0&list=PL8uhW8cclMiOSfw_Kzi6YpLx1PhL8GIS9&index=31'),
(46, 'Financial Planning', 'https://www.youtube.com/embed?v=fUvgKUU0o2U&list=PL8uhW8cclMiOSfw_Kzi6YpLx1PhL8GIS9&index=33'),
(47, 'Financial Planning', 'https://www.youtube.com/embed?v=6BVdICTxjpE&list=PL8uhW8cclMiOSfw_Kzi6YpLx1PhL8GIS9&index=34'),
(48, 'Financial Planning', 'https://www.youtube.com/embed?v=7aExYsqPUV0&list=PL8uhW8cclMiOSfw_Kzi6YpLx1PhL8GIS9&index=31'),
(49, 'Trading', 'https://www.youtube.com/embed?v=ef_9kFyhi0k&list=PLhKwz7hYMTDVUXV-hkJ2wnwnQECzn-egm&index=1'),
(50, 'Trading', 'https://www.youtube.com/embed?v=AeAj6FQYUIg&list=PLhKwz7hYMTDVUXV-hkJ2wnwnQECzn-egm&index=2'),
(51, 'Trading', 'https://www.youtube.com/embed?v=PKA66mjQ79E&list=PLhKwz7hYMTDVUXV-hkJ2wnwnQECzn-egm&index=3'),
(52, 'Trading', 'https://www.youtube.com/embed?v=7ZDMv1Ox8cU&list=PLhKwz7hYMTDVUXV-hkJ2wnwnQECzn-egm&index=4'),
(53, 'Trading', 'https://www.youtube.com/embed?v=ZYaujgRX1V8&list=PLhKwz7hYMTDVUXV-hkJ2wnwnQECzn-egm&index=5'),
(54, 'Trading', 'https://www.youtube.com/embed?v=w0ZBpxx3bW8&list=PLhKwz7hYMTDVUXV-hkJ2wnwnQECzn-egm&index=6'),
(55, 'Trading', 'https://www.youtube.com/embed?v=uAs0qQWLrqw&list=PLhKwz7hYMTDVUXV-hkJ2wnwnQECzn-egm&index=7'),
(56, 'Trading', 'https://www.youtube.com/embed?v=SNEghjI6nDM&list=PLhKwz7hYMTDVUXV-hkJ2wnwnQECzn-egm&index=8'),
(57, 'Trading', 'https://www.youtube.com/embed?v=ezlG2DyiXM0&list=PLhKwz7hYMTDVUXV-hkJ2wnwnQECzn-egm&index=9'),
(58, 'Trading', 'https://www.youtube.com/embed?v=IQ3x1B4SrhE&list=PLhKwz7hYMTDVUXV-hkJ2wnwnQECzn-egm&index=10 ');

-- --------------------------------------------------------

--
-- Table structure for table `profit_and_loss`
--

CREATE TABLE `profit_and_loss` (
  `Year` int NOT NULL,
  `Company` int NOT NULL,
  `Operating_Income` int NOT NULL,
  `Other_Income` int NOT NULL,
  `Interest` int NOT NULL,
  `operating_Expenses` int NOT NULL,
  `Total_Provisions` int NOT NULL,
  `Stock_Id` int NOT NULL,
  `Exceptional_Items` int NOT NULL,
  `Profit_Before_Tax` int NOT NULL,
  `Profit_After_Tax` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `repository`
--

CREATE TABLE `repository` (
  `Sr_No` int NOT NULL,
  `Questions` varchar(20) NOT NULL,
  `Answers` varchar(20) NOT NULL,
  `Press_Media` varchar(20) NOT NULL,
  `Market_Top` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sell_transactions`
--

CREATE TABLE `sell_transactions` (
  `selltransaction_id` int NOT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `buy_amount_` float NOT NULL,
  `quantity` int NOT NULL,
  `stoploss` int NOT NULL,
  `limit_price` int NOT NULL,
  `target` int NOT NULL,
  `trailing_stoploss` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sell_transactions`
--

INSERT INTO `sell_transactions` (`selltransaction_id`, `user_id`, `name`, `date`, `buy_amount_`, `quantity`, `stoploss`, `limit_price`, `target`, `trailing_stoploss`) VALUES
(1, 'madaline_myers', 'Mindtree', '2022-05-08', 3711, 15, 123, 40, 10, 20),
(12, 'madaline_myers', 'Mindtree', '2022-05-08', 3711, 15, 10, 40, 20, 50);

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `CompanyID` varchar(9) DEFAULT NULL,
  `Company Name` varchar(15) DEFAULT NULL,
  `Last Price` varchar(10) DEFAULT NULL,
  `52 Week High` varchar(12) DEFAULT NULL,
  `52 Week Low` varchar(11) DEFAULT NULL,
  `Market Cap(in Cr)` varchar(17) DEFAULT NULL,
  `Category` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`CompanyID`, `Company Name`, `Last Price`, `52 Week High`, `52 Week Low`, `Market Cap(in Cr)`, `Category`) VALUES
('1', 'HDFC Bank', '1374.00', '1724.30', '1292.00', '762090.37', 'Banking'),
('2', 'ICICI Bank', '758.80', '859.70', '584.75', '527346.50', 'Banking'),
('3', 'SBI', '502.30', '549.05', '338.15', '448283.24', 'Banking'),
('4', 'Kotak Mahindra', '1742.90', '2252.45', '1627.25', '345906.70', 'Banking'),
('5', 'Axis Bank', '792.00', '866.60', '637.00', '243180.39', 'Banking'),
('6', 'IndusInd Bank', '975.85', '1241.85', '811.60', '75597.40', 'Banking'),
('7', 'Bank of Baroda', '112.75', '122.65', '63.20', '58307.11', 'Banking'),
('8', 'Bandhan Bank', '338.95', '354.10', '229.65', '54597.20', 'Banking'),
('9', 'IDBI Bank', '45.90', '65.25', '34.05', '49353.53', 'Banking'),
('10', 'AU Small Financ', '1410.75', '1465.80', '910.00', '44426.31', 'Banking'),
('11', 'Canara Bank', '232.55', '272.80', '131.80', '42187.60', 'Banking'),
('12', 'PNB', '35.30', '47.60', '31.80', '38868.88', 'Banking'),
('13', 'IOB', '18.40', '29.00', '14.70', '34780.44', 'Banking'),
('14', 'Union Bank', '40.35', '54.80', '32.65', '27578.21', 'Banking'),
('15', 'IDFC First Bank', '39.85', '62.00', '37.70', '24778.94', 'Banking'),
('16', 'Federal Bank', '97.00', '107.65', '72.75', '20397.84', 'Banking'),
('17', 'Indian Bank', '162.30', '194.80', '106.80', '20213.51', 'Banking'),
('18', 'Bank of India', '49.25', '86.95', '43.30', '20210.06', 'Banking'),
('19', 'Central Bank', '19.25', '29.65', '16.05', '16710.81', 'Banking'),
('20', 'Bank of Mah', '18.00', '31.95', '15.85', '12114.89', 'Banking'),
('21', 'Bajaj Finance', '7139.55', '8043.50', '4662.05', '432249.23', 'Finance'),
('22', 'HDFC', '2228.95', '3021.10', '2046.30', '404114.94', 'Finance'),
('23', 'Bajaj Finserv', '15494.9', '19319.95', '9900', '246581.88', 'Finance'),
('24', 'Bajaj Holdings', '5416.7', '6573.05', '3345', '60284.36', 'Finance'),
('25', 'Muthoot Finance', '1285', '1722.55', '1135.05', '51572.87', 'Finance'),
('26', 'HDFC AMC', '2005.65', '3363', '1988', '42776.21', 'Finance'),
('27', 'Shriram Trans', '1117.8', '1696.15', '1002.5', '30238.69', 'Finance'),
('28', 'AB Capital', '115.85', '139.1', '96.4', '27992.97', 'Finance'),
('29', 'Max Financial', '731.15', '1147.9', '700.1', '25233.07', 'Finance'),
('30', 'LIC Housing Fin', '380', '542.35', '321.2', '20902.39', 'Finance'),
('31', 'Nippon', '328.25', '476.5', '282', '20418.98', 'Finance'),
('32', 'AAVAS Financier', '2316.6', '3336.95', '2115', '18286.42', 'Finance'),
('33', 'APTUS VALUE', '336.8', '394.95', '283', '16736.2', 'Finance'),
('34', 'ABSL AMC', '537.7', '721', '483.4', '15485.76', 'Finance'),
('35', 'IWML', '1741.15', '1906.5', '1063.65', '15448.76', 'Finance'),
('36', 'IIFL Finance', '360.5', '387', '234.05', '13684.53', 'Finance'),
('37', 'Can Fin Homes', '642.4', '721.25', '492.05', '8553.82', 'Finance'),
('38', 'Indiabulls Hsg', '157.7', '313.5', '130.2', '7389.37', 'Finance'),
('39', 'Fino Payments', '306.3', '583.35', '246', '2548.85', 'Finance'),
('40', 'DELPHI WORLD', '554', '819', '420', '616.49', 'Finance'),
('41', 'TCS', '3570.35', '4045.5', '3004.8', '1306748.1', 'IT'),
('42', 'Infosys', '1581.65', '1953.7', '1311.8', '665358.82', 'IT'),
('43', 'HCL Tech', '1098.55', '1377', '891.25', '298109.68', 'IT'),
('44', 'Wipro', '533.3', '739.8', '477.15', '292364.38', 'IT'),
('45', 'Tech Mahindra', '1267.95', '1837.75', '936.85', '123232.51', 'IT'),
('46', 'L&T Infotech', '4812.7', '7595.25', '3525.95', '84369.7', 'IT'),
('47', 'Mindtree', '3711.1', '5059.15', '2019', '61173.32', 'IT'),
('48', 'MphasiS', '2749.3', '3659.75', '1699.15', '51705.18', 'IT'),
('49', 'Persistent', '4024.5', '4986.85', '1862.2', '30757.24', 'IT'),
('50', 'Oracle Fin Serv', '3528.7', '5144.6', '3252.1', '30451.51', 'IT'),
('51', 'COFORGE LTD.', '4012', '6133', '2786.95', '24438.36', 'IT'),
('52', 'Affle India', '1200.3', '1510.15', '768', '15994.12', 'IT'),
('53', 'Happiest Minds', '1017.5', '1580.8', '641.4', '14943.37', 'IT'),
('54', 'KPIT Tech', '530', '800', '193.5', '14529.62', 'IT'),
('55', 'Birlasoft', '415.5', '585.85', '238.45', '11613.06', 'IT'),
('56', 'Intellect Desig', '816.35', '986', '578.7', '10986.83', 'IT'),
('57', 'NIIT', '583.1', '658.55', '163.1', '7806.39', 'IT'),
('58', 'Aptech', '335.65', '447.95', '198.45', '1387.94', 'IT'),
('59', 'Educomp Sol', '4.31', '8.48', '2.4', '52.78', 'IT'),
('60', 'Jetking Info', '50', '80.6', '32', '29.54', 'IT'),
('61', 'Sun Pharma', '918.45', '947.90', '630.00', '220366.92', 'Medicine'),
('62', 'Divis Labs', '4466.05', '5425.00', '3770.40', '118559.60', 'Medicine'),
('63', 'Cipla', '969.35', '1083.15', '850.00', '78208.52', 'Medicine'),
('64', 'Dr Reddys Labs', '4164.85', '5613.65', '3655.00', '69313.87', 'Medicine'),
('65', 'Gland', '3215.10', '4324.65', '2575.00', '52824.97', 'Medicine'),
('66', 'Torrent Pharma', '2726.95', '3304.45', '2477.65', '46146.19', 'Medicine'),
('67', 'Alkem Lab', '3325.10', '4067.70', '2711.00', '39756.56', 'Medicine'),
('68', 'Aurobindo Pharm', '642.80', '1063.75', '584.20', '37664.13', 'Medicine'),
('69', 'Abbott India', '17607.25', '23902.30', '14865.00', '37414.18', 'Medicine'),
('70', 'Zydus Life', '343.30', '673.70', '331.00', '35145.08', 'Medicine'),
('71', 'Lupin', '748.65', '1267.50', '678.65', '34024.27', 'Medicine'),
('72', 'Laurus Labs', '599.90', '720.75', '433.20', '32236.19', 'Medicine'),
('73', 'GlaxoSmithKline', '1599.70', '1917.00', '1427.95', '27099.88', 'Medicine'),
('74', 'Ipca Labs', '1008.05', '1383.55', '917.00', '25574.65', 'Medicine'),
('75', 'Pfizer', '4269.10', '6164.80', '4077.80', '19530.16', 'Medicine'),
('76', 'Sanofi India', '7000.00', '9300.00', '6949.35', '16121.44', 'Medicine'),
('77', 'Alembic Pharma', '779.40', '1090.00', '672.00', '15320.13', 'Medicine'),
('78', 'Ajanta Pharma', '1745.00', '2420.00', '1632.10', '14905.05', 'Medicine'),
('79', 'Suven Pharma', '584.90', '631.15', '457.00', '14889.50', 'Medicine'),
('80', 'Natco Pharma', '776.00', '1188.95', '750.45', '14163.56', 'Medicine');

-- --------------------------------------------------------

--
-- Table structure for table `stock_details`
--

CREATE TABLE `stock_details` (
  `Company` varchar(20) NOT NULL,
  `PriceRs` float NOT NULL,
  `MCapCr` float NOT NULL,
  `P_B` float NOT NULL,
  `P_E` float NOT NULL,
  `EPS` float NOT NULL,
  `ROE` float NOT NULL,
  `ROCE` float NOT NULL,
  `P_S` float NOT NULL,
  `EV_EBI_TDA` float NOT NULL,
  `CATEGORY` int NOT NULL,
  `Stock_Id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `title`
--

CREATE TABLE `title` (
  `VideoID` int NOT NULL,
  `Course_Name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Links` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `title`
--

INSERT INTO `title` (`VideoID`, `Course_Name`, `Links`) VALUES
(1, 'Stock Market', 'https://www.youtube.com/watch?v=3UF0ymVdYLA'),
(2, 'Stock Market', 'https://www.youtube.com/watch?v=RieqxXMds64'),
(3, 'Stock Market', 'https://www.youtube.com/watch?v=K5k4kF_2j0M'),
(4, 'Stock Market', 'https://www.youtube.com/watch?v=OaHFyZtN0iM'),
(5, 'Stock Market', 'https://www.youtube.com/watch?v=924-bji0I6Y'),
(6, 'Stock Market', 'https://www.youtube.com/watch?v=_lQsquuVKqM'),
(7, 'Stock Market', 'https://www.youtube.com/watch?v=I13xlJnrC38'),
(8, 'Stock Market', 'https://www.youtube.com/watch?v=KcAakKmTknM'),
(9, 'Stock Market', 'https://www.youtube.com/watch?v=Hcnf-IBcvRw'),
(10, 'Stock Market', 'https://www.youtube.com/watch?v=2eZg2zHzOu0'),
(11, 'Stock Market', 'https://www.youtube.com/watch?v=EVt1ej_GUrg'),
(12, 'Stock Market', 'https://www.youtube.com/watch?v=dM36QV5APrU'),
(13, 'Stock Market', 'https://www.youtube.com/watch?v=vWtCOS-Q9Ho'),
(14, 'Stock Market', 'https://www.youtube.com/watch?v=Us03mJPU_lc'),
(15, 'Stock Market', 'https://www.youtube.com/watch?v=_TUTZ4ea42E'),
(16, 'Stock Market', 'https://www.youtube.com/watch?v=IEVWe45-fAw'),
(17, 'Stock Market', 'https://www.youtube.com/watch?v=C406ZRad9VQ'),
(18, 'Stock Market', 'https://www.youtube.com/watch?v=6CsMg3bf0EI'),
(19, 'Stock Market', 'https://www.youtube.com/watch?v=euTsgKQj0QU'),
(20, 'Stock Market', 'https://www.youtube.com/watch?v=82qltDI9T9M'),
(21, 'Stock Market', 'https://www.youtube.com/watch?v=82qltDI9T9M'),
(22, 'Stock Market', 'https://www.youtube.com/watch?v=6P_naNghHIQ'),
(23, 'Financial Planning', 'https://www.youtube.com/watch?v=LLdKcFpHgM8'),
(24, 'Financial Planning', 'https://www.youtube.com/watch?v=7-2dKzOG1pM'),
(25, 'Financial Planning', 'https://www.youtube.com/watch?v=0XYB7aiD20c'),
(26, 'Financial Planning', 'https://www.youtube.com/watch?v=KTyU-Z94_bE'),
(27, 'Financial Planning', 'https://www.youtube.com/watch?v=3hikDqf9GW4'),
(28, 'Financial Planning', 'https://www.youtube.com/watch?v=SfXrTIoK_x8'),
(29, 'Financial Planning', 'https://www.youtube.com/watch?v=R8ZWwkbS6Ww'),
(30, 'Financial Planning', 'https://www.youtube.com/watch?v=Z1bU3dE7Rdc'),
(31, 'Financial Planning', 'https://www.youtube.com/watch?v=hPTrtp098vg'),
(32, 'Financial Planning', 'https://www.youtube.com/watch?v=SYNfUhfh_Dg'),
(33, 'Financial Planning', 'https://www.youtube.com/watch?v=MeIaiaKX5D4'),
(34, 'Financial Planning', 'https://www.youtube.com/watch?v=59z5yb5Dr4M'),
(35, 'Financial Planning', 'https://www.youtube.com/watch?v=uPqNNshSA9I'),
(36, 'Financial Planning', 'https://www.youtube.com/watch?v=T_NIXo3q09c'),
(37, 'Financial Planning', 'https://www.youtube.com/watch?v=NRtFvuzPWyQ'),
(38, 'Financial Planning', 'https://www.youtube.com/watch?v=EKVW0zWGMdk'),
(39, 'Financial Planning', 'https://www.youtube.com/watch?v=rdX_fkFFBok'),
(40, 'Financial Planning', 'https://www.youtube.com/watch?v=gpYjnR5ZMrc'),
(41, 'Financial Planning', 'https://www.youtube.com/watch?v=FgXosDv1hUM'),
(42, 'Financial Planning', 'https://www.youtube.com/watch?v=0FyMgZB7jmg'),
(43, 'Financial Planning', 'https://www.youtube.com/watch?v=F7GxExGKXpU'),
(44, 'Financial Planning', 'https://www.youtube.com/watch?v=WN9Mks1s4tM'),
(45, 'Financial Planning', 'https://www.youtube.com/watch?v=7aExYsqPUV0'),
(46, 'Financial Planning', 'https://www.youtube.com/watch?v=fUvgKUU0o2U'),
(47, 'Financial Planning', 'https://www.youtube.com/watch?v=6BVdICTxjpE'),
(48, 'Financial Planning', 'https://www.youtube.com/watch?v=7aExYsqPUV0'),
(49, 'Trading', 'https://www.youtube.com/watch?v=ef_9kFyhi0k'),
(50, 'Trading', 'https://www.youtube.com/watch?v=AeAj6FQYUIg'),
(51, 'Trading', 'https://www.youtube.com/watch?v=PKA66mjQ79E'),
(52, 'Trading', 'https://www.youtube.com/watch?v=7ZDMv1Ox8cU'),
(53, 'Trading', 'https://www.youtube.com/watch?v=ZYaujgRX1V8'),
(54, 'Trading', 'https://www.youtube.com/watch?v=w0ZBpxx3bW8'),
(55, 'Trading', 'https://www.youtube.com/watch?v=uAs0qQWLrqw'),
(56, 'Trading', 'https://www.youtube.com/watch?v=SNEghjI6nDM'),
(57, 'Trading', 'https://www.youtube.com/watch?v=ezlG2DyiXM0'),
(58, 'Trading', 'https://www.youtube.com/watch?v=IQ3x1B4SrhE');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `user_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int NOT NULL,
  `mobile` int NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(15) DEFAULT NULL,
  `image` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `name`, `age`, `mobile`, `email`, `address`, `password`, `image`) VALUES
('adam_bennett', 'Adam Bennett', 29, 368961590, 'a.bennett@randatmail.com', '27 Church Walk, Great Billing', 'fnZehtqu', ''),
('aida_johnston', 'Aida Johnston', 22, 453828863, 'a.johnston@randatmail.com', 'Flat 5, Ocean House, Hazelwick Avenue, Crawley', 'AhadHYRz', ''),
('aiden_barnes', 'Aiden Barnes', 23, 36956658, 'a.barnes@randatmail.com', '173 Fulbeck Road, Middlesbrough', 'msyrTthY', ''),
('alan_kelly', 'Alan Kelly', 25, 739565030, 'a.kelly@randatmail.com', '7 Beatrice Mews, Greatstone', 'MUWBYxrc', ''),
('alberta_tucker', 'Alberta Tucker', 21, 941010397, 'a.tucker@randatmail.com', '16 Pamela Road, Immingham', 'ZNrxCXVJ', ''),
('alen_parker', 'Alen Parker', 29, 303485904, 'a.parker@randatmail.com', '38 Rowan Walk, Mildenhall', 'ZwYcNqtL', ''),
('annabella_craig', 'Annabella Craig', 23, 42154729, 'a.craig@randatmail.com', '3 Uttoxeter Road, Stoke-On-Trent', 'VXbUnEvj', ''),
('antony_crawford', 'Antony Crawford', 28, 60083109, 'a.crawford@randatmail.com', '149 Dale Lane, Heckmondwike', 'qrGWUZYj', ''),
('antony_johnson', 'Antony Johnson', 22, 245112150, 'a.johnson@randatmail.com', '18 Windsor Road, Birtley', 'rUmVdBZL', ''),
('arianna_scott', 'Arianna Scott', 29, 391108785, 'a.scott@randatmail.com', '5 James Street, Maryport', 'hCSvuznG', ''),
('belinda_murphy', 'Belinda Murphy', 28, 172498549, 'b.murphy@randatmail.com', '1 Lynmouth Drive, Wigston', 'HgtGKhdR', ''),
('blake_higgins', 'Blake Higgins', 29, 420272155, 'b.higgins@randatmail.com', '3 Oxmead, Mayfield', 'uHqDZsNT', ''),
('cadie_elliott', 'Cadie Elliott', 26, 845086976, 'c.elliott@randatmail.com', '24 Novers Road, Bristol', 'WGankQvZ', ''),
('camila_myers', 'Camila Myers', 27, 651328669, 'c.myers@randatmail.com', '3 Lockside Drive, Kinver', 'ycZYqTSx', ''),
('dainton_higgins', 'Dainton Higgins', 21, 292430645, 'd.higgins@randatmail.com', 'Dovecroft, Manchester Road, Knutsford', 'AnyUudMe', ''),
('daniel_williams', 'Daniel Williams', 25, 151501663, 'd.williams@randatmail.com', '79 Hall Lane, Harrogate', 'ePBgcXwy', ''),
('daryl_nelson', 'Daryl Nelson', 18, 216499257, 'd.nelson@randatmail.com', '5 Bramble Mews, Mickleover', 'fdPqzHUW', ''),
('david_owens', 'David Owens', 29, 890507637, 'd.owens@randatmail.com', '5 Elmbrook, Lansdowne Road, London', 'rLPeQzfH', ''),
('deanna_barrett', 'Deanna Barrett', 24, 510832810, 'd.barrett@randatmail.com', '3 Hollis Crescent, Portishead', 'vxgnurjZ', ''),
('edith_hunt', 'Edith Hunt', 19, 134960621, 'e.hunt@randatmail.com', '166 Stoughton Road, Guildford', 'VvLZgpUs', ''),
('eleanor_ross', 'Eleanor Ross', 20, 259362585, 'e.ross@randatmail.com', 'Villa Farm, Metfield', 'TRByGtMA', ''),
('evelyn_clark', 'Evelyn Clark', 26, 235684360, 'e.clark@randatmail.com', '89 Warwick Road, Clacton-On-Sea', 'suBXMDSt', ''),
('evelyn_morris', 'Evelyn Morris', 18, 323343097, 'e.morris@randatmail.com', '5 Wysteria Way, Snettisham', 'UuNLQbXA', ''),
('hailey_ellis', 'Hailey Ellis', 30, 387268868, 'h.ellis@randatmail.com', '16 Glovers Field, Shipham', 'ZWJYVDfG', ''),
('harold_wilson', 'Harold Wilson', 28, 277918384, 'h.wilson@randatmail.com', 'Clanricarde, Trenale Lane, Tintagel', 'gdXZyenG', ''),
('jacob_montgomery', 'Jacob Montgomery', 26, 418456667, 'j.montgomery@randatmail.com', '30 Wyvenhoe Road, Harrow', 'QpUmASCh', ''),
('james_kelley', 'James Kelley', 22, 372226424, 'j.kelley@randatmail.com', '14 Barley Rye, Chinnor', 'MvJpxZHr', ''),
('john_moore', 'John Moore', 23, 98368193, 'j.moore@randatmail.com', '14 Bryony House, Jocks Lane, Bracknell', 'YHnTEtdu', ''),
('kellan_davis', 'Kellan Davis', 22, 41390975, 'k.davis@randatmail.com', '11 Priestley Close, Halesowen', 'vJpcQqXz', ''),
('kevin_bailey', 'Kevin Bailey', 26, 246290394, 'k.bailey@randatmail.com', '5 Jubilee Terrace, Westbourne', 'bsmDgGzZ', ''),
('lenny_douglas', 'Lenny Douglas', 22, 797739675, 'l.douglas@randatmail.com', 'Stone Cottage, Sutton', 'jVwUYsnD', ''),
('lenny_murray', 'Lenny Murray', 22, 306156305, 'l.murray@randatmail.com', '3 Ashway, Northleach', 'zCMJDjNc', ''),
('lily_morris', 'Lily Morris', 20, 25125290, 'l.morris@randatmail.com', 'Keepers Cottage, Gwehelog', 'pxtajGHv', ''),
('lucas_smith', 'Lucas Smith', 30, 351842857, 'l.smith@randatmail.com', '1 Euesden Close, London', 'qfXwWDFk', ''),
('lucia_wright', 'Lucia Wright', 22, 103991756, 'l.wright@randatmail.com', '29 Ingleway, Thornton-Cleveleys', 'jhRYvuXF', ''),
('madaline_myers', 'Madaline Myers', 22, 796986025, 'm.myers@randatmail.com', '69 Alyth Road, Bournemouth', 'rqpBUXKj', ''),
('marcus_hawkins', 'Marcus Hawkins', 27, 826913838, 'm.hawkins@randatmail.com', '1 College Road, Harrogate', 'XsZwxpcv', ''),
('max_walker', 'Max Walker', 23, 257456209, 'm.walker@randatmail.com', '3 Polls Yard, Castor', 'UCwkYRbT', ''),
('melanie_bailey', 'Melanie Bailey', 20, 402262634, 'm.bailey@randatmail.com', '126 Central Avenue, Shipley', 'yFkgPpZH', ''),
('nicole_murphy', 'Nicole Murphy', 23, 850778755, 'n.murphy@randatmail.com', '24 Mill Road, Hythe', 'PxkYehUc', ''),
('nicole_rogers', 'Nicole Rogers', 21, 914810845, 'n.rogers@randatmail.com', '1 Polka Place, Wells-Next-The-Sea', 'BEQLCcnq', ''),
('richard_johnston', 'Richard Johnston', 23, 220682679, 'r.johnston@randatmail.com', '11 Hereward Place, Scunthorpe', 'dgjseayU', ''),
('rosie_smith', 'Rosie Smith', 23, 690617758, 'r.smith@randatmail.com', '135 Spencers Croft, Harlow', 'SzGBRwhV', ''),
('rubie_edwards', 'Rubie Edwards', 26, 144025298, 'r.edwards@randatmail.com', '30 Gloucester Road, Harlescott', 'FXfEjRkV', ''),
('ryan_bennett', 'Ryan Bennett', 23, 123393795, 'r.bennett@randatmail.com', '47 Harper Crescent, Longhoughton', 'utGjZsUW', ''),
('sofia_anderson', 'Sofia Anderson', 22, 385174666, 's.anderson@randatmail.com', '124 Malvern Road, North Shields', 'zvSWFsnM', ''),
('sydney_warren', 'Sydney Warren', 27, 434284415, 's.warren@randatmail.com', '2 Parks Drive, Plymouth', 'LXRkKEQs', ''),
('victor_russell', 'Victor Russell', 19, 859548957, 'v.russell@randatmail.com', '127 Marion Road, Prestatyn', 'AyzFxwmT', ''),
('victoria_cameron', 'Victoria Cameron', 29, 854269208, 'v.cameron@randatmail.com', '16 Yeardsley Close, Bramhall', 'UAVpMcXT', ''),
('wilson_bailey', 'Wilson Bailey', 23, 578194164, 'w.bailey@randatmail.com', '9 Albert Place, London', 'wScdgMNL', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_statistics`
--

CREATE TABLE `user_statistics` (
  `User_ID` int NOT NULL,
  `Course_ID` int NOT NULL,
  `Completion_Status` int NOT NULL,
  `Total_Duration_Watched` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `balance_sheet`
--
ALTER TABLE `balance_sheet`
  ADD PRIMARY KEY (`Stock_ID`);

--
-- Indexes for table `buy_transactions`
--
ALTER TABLE `buy_transactions`
  ADD PRIMARY KEY (`buytransaction_id`);

--
-- Indexes for table `company_statistics`
--
ALTER TABLE `company_statistics`
  ADD PRIMARY KEY (`Stock_ID`);

--
-- Indexes for table `course_details`
--
ALTER TABLE `course_details`
  ADD PRIMARY KEY (`Course_ID`);

--
-- Indexes for table `holding`
--
ALTER TABLE `holding`
  ADD PRIMARY KEY (`Stock_ID`);

--
-- Indexes for table `indices`
--
ALTER TABLE `indices`
  ADD PRIMARY KEY (`Exchange_Name`);

--
-- Indexes for table `learning`
--
ALTER TABLE `learning`
  ADD PRIMARY KEY (`VideoID`);

--
-- Indexes for table `profit_and_loss`
--
ALTER TABLE `profit_and_loss`
  ADD PRIMARY KEY (`Stock_Id`);

--
-- Indexes for table `repository`
--
ALTER TABLE `repository`
  ADD PRIMARY KEY (`Sr_No`);

--
-- Indexes for table `sell_transactions`
--
ALTER TABLE `sell_transactions`
  ADD PRIMARY KEY (`selltransaction_id`);

--
-- Indexes for table `stock_details`
--
ALTER TABLE `stock_details`
  ADD PRIMARY KEY (`Stock_Id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buy_transactions`
--
ALTER TABLE `buy_transactions`
  MODIFY `buytransaction_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `sell_transactions`
--
ALTER TABLE `sell_transactions`
  MODIFY `selltransaction_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

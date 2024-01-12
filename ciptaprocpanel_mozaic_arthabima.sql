-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 12 Jan 2024 pada 09.56
-- Versi server: 5.7.44
-- Versi PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ciptaprocpanel_mozaic_arthabima`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `acct_account`
--

CREATE TABLE `acct_account` (
  `account_id` int(10) NOT NULL,
  `company_id` int(10) DEFAULT NULL,
  `account_code` varchar(225) DEFAULT NULL,
  `account_name` varchar(225) DEFAULT NULL,
  `account_group` varchar(225) DEFAULT NULL,
  `account_suspended` int(1) DEFAULT '0',
  `account_default_status` int(1) DEFAULT '0',
  `account_remark` varchar(225) DEFAULT NULL,
  `account_status` int(1) DEFAULT '0',
  `account_token` varchar(225) DEFAULT NULL,
  `account_type_id` int(10) DEFAULT NULL,
  `data_state` int(1) DEFAULT '0',
  `created_id` int(10) DEFAULT NULL,
  `updated_id` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `acct_account`
--

INSERT INTO `acct_account` (`account_id`, `company_id`, `account_code`, `account_name`, `account_group`, `account_suspended`, `account_default_status`, `account_remark`, `account_status`, `account_token`, `account_type_id`, `data_state`, `created_id`, `updated_id`, `created_at`, `updated_at`) VALUES
(2, 2, '100.1', 'KAS', '100', 0, 0, NULL, 0, NULL, 1, 0, 55, 55, '2022-07-12 10:51:45', '2022-07-16 10:44:55'),
(3, 2, '101.1', 'RETUR PEMBELIAN', '101', 0, 1, NULL, 1, NULL, 1, 0, 55, 55, '2022-07-16 10:46:09', '2022-07-16 10:46:09'),
(6, 2, '200.1', 'PENJUALAN', '200', 0, 1, NULL, 1, NULL, 1, 0, 55, 55, '2022-07-16 10:47:20', '2022-07-16 10:47:20'),
(7, 2, '101.2', 'PEMBELIAN BAHAN BAKU', '101', 0, 0, NULL, 0, NULL, 1, 0, 55, 55, '2022-07-16 10:49:20', '2022-07-16 10:49:20'),
(9, 2, '101.3', 'PEMBELIAN BAHAN MINUMAN', '101', 0, 0, NULL, 0, NULL, 1, 0, 61, 61, '2023-03-02 14:19:58', '2023-03-02 14:19:58'),
(10, 2, '101.4', 'PEMBELIAN BAHAN PENUNJANG', '101', 0, 0, NULL, 0, NULL, 1, 0, 61, 61, '2023-03-02 14:20:16', '2023-03-02 14:20:16'),
(11, 2, '101.5', 'LISTRIK + PAM + WIFI', '101', 0, 0, NULL, 0, NULL, 1, 0, 61, 61, '2023-03-02 14:20:36', '2023-03-02 14:20:36'),
(12, 2, '101.6', 'GAS', '101', 0, 0, NULL, 0, NULL, 1, 0, 61, 61, '2023-03-02 14:20:48', '2023-03-02 14:20:48'),
(13, 2, '101.7', 'TENAGA KERJA', '101', 0, 0, NULL, 0, NULL, 1, 0, 61, 61, '2023-03-02 14:20:57', '2023-03-02 14:20:57'),
(14, 2, '101.8', 'MARKETING', '101', 0, 0, NULL, 0, NULL, 1, 0, 61, 61, '2023-03-02 14:21:06', '2023-03-02 14:21:06'),
(15, 2, '101.9', 'LAIN - LAIN', '101', 0, 0, NULL, 0, NULL, 1, 0, 61, 61, '2023-03-02 14:21:16', '2023-03-02 14:21:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `acct_account_balance`
--

CREATE TABLE `acct_account_balance` (
  `account_balance_id` int(10) NOT NULL,
  `company_id` int(10) DEFAULT NULL,
  `account_id` int(10) DEFAULT NULL,
  `last_balance` varchar(225) DEFAULT NULL,
  `created_id` int(10) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `acct_account_balance`
--

INSERT INTO `acct_account_balance` (`account_balance_id`, `company_id`, `account_id`, `last_balance`, `created_id`, `last_update`) VALUES
(31, 2, 2, '438500', 61, '2023-12-08 03:05:11'),
(32, 2, 3, '0', 61, '2023-12-06 04:20:10'),
(33, 2, 6, '438500', 61, '2023-12-08 03:05:11'),
(34, 2, 7, '0', 61, '2023-12-06 06:29:36'),
(35, 2, 9, '0', 61, '2023-12-06 04:20:10'),
(36, 2, 10, '0', 61, '2023-12-06 04:20:10'),
(37, 2, 11, '0', 61, '2023-12-06 04:20:10'),
(38, 2, 12, '0', 61, '2023-12-06 04:20:10'),
(39, 2, 13, '0', 61, '2023-12-06 04:20:10'),
(40, 2, 14, '0', 61, '2023-12-06 04:20:10'),
(41, 2, 15, '0', 61, '2023-12-06 04:20:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `acct_account_balance_detail`
--

CREATE TABLE `acct_account_balance_detail` (
  `account_balance_detail_id` int(10) NOT NULL,
  `company_id` int(10) DEFAULT NULL,
  `account_id` int(10) DEFAULT NULL,
  `transaction_id` int(10) DEFAULT NULL,
  `transaction_type` varchar(225) DEFAULT NULL,
  `transaction_code` varchar(225) DEFAULT NULL,
  `transaction_date` varchar(225) DEFAULT NULL,
  `opening_balance` varchar(225) DEFAULT NULL,
  `account_in` varchar(225) DEFAULT NULL,
  `account_out` varchar(225) DEFAULT NULL,
  `last_balance` varchar(225) DEFAULT NULL,
  `created_id` int(10) DEFAULT NULL,
  `data_state` int(1) DEFAULT '0',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `acct_account_balance_detail`
--

INSERT INTO `acct_account_balance_detail` (`account_balance_detail_id`, `company_id`, `account_id`, `transaction_id`, `transaction_type`, `transaction_code`, `transaction_date`, `opening_balance`, `account_in`, `account_out`, `last_balance`, `created_id`, `data_state`, `last_update`) VALUES
(5, 2, 2, 383, '4', 'PJL', '2023-12-06', '0', '116500', '0', '116500', 64, 0, '2023-12-06 07:45:34'),
(6, 2, 6, 383, '4', 'PJL', '2023-12-06', '0', '116500', '0', '116500', 64, 0, '2023-12-06 07:45:34'),
(7, 2, 2, 384, '4', 'PJL', '2023-12-06', '116500', '35000', '0', '151500', 64, 0, '2023-12-06 07:46:44'),
(8, 2, 6, 384, '4', 'PJL', '2023-12-06', '116500', '35000', '0', '151500', 64, 0, '2023-12-06 07:46:44'),
(9, 2, 2, 385, '4', 'PJL', '2023-12-06', '151500', '66000', '0', '217500', 64, 0, '2023-12-06 08:09:56'),
(10, 2, 6, 385, '4', 'PJL', '2023-12-06', '151500', '66000', '0', '217500', 64, 0, '2023-12-06 08:09:56'),
(11, 2, 2, 386, '4', 'PJL', '2023-12-08', '217500', '35000', '0', '252500', 64, 0, '2023-12-08 02:49:49'),
(12, 2, 6, 386, '4', 'PJL', '2023-12-08', '217500', '35000', '0', '252500', 64, 0, '2023-12-08 02:49:49'),
(13, 2, 2, 387, '4', 'PJL', '2023-12-08', '252500', '157000', '0', '409500', 64, 0, '2023-12-08 02:53:32'),
(14, 2, 6, 387, '4', 'PJL', '2023-12-08', '252500', '157000', '0', '409500', 64, 0, '2023-12-08 02:53:32'),
(15, 2, 2, 388, '4', 'PJL', '2023-12-08', '409500', '29000', '0', '438500', 64, 0, '2023-12-08 03:05:11'),
(16, 2, 6, 388, '4', 'PJL', '2023-12-08', '409500', '29000', '0', '438500', 64, 0, '2023-12-08 03:05:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `acct_account_setting`
--

CREATE TABLE `acct_account_setting` (
  `account_setting_id` int(10) NOT NULL,
  `company_id` int(10) DEFAULT NULL,
  `account_id` int(10) DEFAULT NULL,
  `account_setting_name` varchar(225) DEFAULT NULL,
  `account_setting_status` int(1) DEFAULT NULL,
  `account_default_status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `acct_account_setting`
--

INSERT INTO `acct_account_setting` (`account_setting_id`, `company_id`, `account_id`, `account_setting_name`, `account_setting_status`, `account_default_status`, `created_at`, `updated_at`) VALUES
(370, 2, 2, 'expenditure_cash_account', 1, 0, '2022-07-16 11:14:51', '2023-03-02 14:17:26'),
(371, 2, 15, 'expenditure_account', 0, 0, '2022-07-16 11:14:51', '2023-03-02 14:17:26'),
(372, 2, 2, 'purchase_cash_account', 0, 1, '2022-07-16 11:14:51', '2023-03-02 14:17:26'),
(373, 2, 7, 'purchase_account', 1, 1, '2022-07-16 11:14:51', '2023-03-02 14:17:26'),
(374, 2, 2, 'sales_cash_account', 0, 0, '2022-07-16 11:14:51', '2023-03-02 14:17:26'),
(375, 2, 6, 'sales_account', 1, 1, '2022-07-16 11:14:51', '2023-03-02 14:17:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `acct_journal_voucher`
--

CREATE TABLE `acct_journal_voucher` (
  `journal_voucher_id` int(10) NOT NULL,
  `company_id` int(10) DEFAULT NULL,
  `transaction_module_id` int(10) DEFAULT NULL,
  `journal_voucher_status` int(1) DEFAULT '0',
  `transaction_module_code` varchar(225) DEFAULT NULL,
  `journal_voucher_date` varchar(225) DEFAULT NULL,
  `journal_voucher_description` varchar(225) DEFAULT NULL,
  `journal_voucher_period` varchar(225) DEFAULT NULL,
  `journal_voucher_no` varchar(225) DEFAULT NULL,
  `journal_voucher_title` varchar(225) DEFAULT NULL,
  `data_state` int(10) DEFAULT '0',
  `created_id` int(10) DEFAULT NULL,
  `updated_id` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `acct_journal_voucher`
--

INSERT INTO `acct_journal_voucher` (`journal_voucher_id`, `company_id`, `transaction_module_id`, `journal_voucher_status`, `transaction_module_code`, `journal_voucher_date`, `journal_voucher_description`, `journal_voucher_period`, `journal_voucher_no`, `journal_voucher_title`, `data_state`, `created_id`, `updated_id`, `created_at`, `updated_at`) VALUES
(383, 2, 4, 1, 'PJL', '2023-12-06', 'Penjualan', '202312', '0001/JV/XII/2023', 'Penjualan', 0, 64, 64, '2023-12-06 14:45:34', '2023-12-06 14:45:34'),
(384, 2, 4, 1, 'PJL', '2023-12-06', 'Penjualan', '202312', '0002/JV/XII/2023', 'Penjualan', 0, 64, 64, '2023-12-06 14:46:44', '2023-12-06 14:46:44'),
(385, 2, 4, 1, 'PJL', '2023-12-06', 'Penjualan', '202312', '0003/JV/XII/2023', 'Penjualan', 0, 64, 64, '2023-12-06 15:09:56', '2023-12-06 15:09:56'),
(386, 2, 4, 1, 'PJL', '2023-12-08', 'Penjualan', '202312', '0004/JV/XII/2023', 'Penjualan', 0, 64, 64, '2023-12-08 09:49:49', '2023-12-08 09:49:49'),
(387, 2, 4, 1, 'PJL', '2023-12-08', 'Penjualan', '202312', '0005/JV/XII/2023', 'Penjualan', 0, 64, 64, '2023-12-08 09:53:32', '2023-12-08 09:53:32'),
(388, 2, 4, 1, 'PJL', '2023-12-08', 'Penjualan', '202312', '0006/JV/XII/2023', 'Penjualan', 0, 64, 64, '2023-12-08 10:05:11', '2023-12-08 10:05:11');

--
-- Trigger `acct_journal_voucher`
--
DELIMITER $$
CREATE TRIGGER `insert_acct_journal_voucher` BEFORE INSERT ON `acct_journal_voucher` FOR EACH ROW BEGIN
	DECLARE year_period 		VARCHAR(20);
	DECLARE month_period 		VARCHAR(20);
	DECLARE PERIOD 			VARCHAR(20);
	DECLARE tPeriod			INT;
	DECLARE nJournalVoucherNo	VARCHAR(20);
	DECLARE monthPeriod		VARCHAR(20);
	
	SET year_period = (YEAR(new.journal_voucher_date));
	
	SET month_period = (SELECT RIGHT(CONCAT('0', MONTH(new.journal_voucher_date)), 2));
	
	IF (month_period) = '01' THEN 
		SET monthPeriod = 'I';
	END IF;
	
	IF (month_period) = '02' THEN 
		SET monthPeriod = 'II';
	END IF;
	
	IF (month_period) = '03' THEN 
		SET monthPeriod = 'III';
	END IF;
	
	IF (month_period) = '04' THEN 
		SET monthPeriod = 'IV';
	END IF;	
	
	IF (month_period) = '05' THEN 
		SET monthPeriod = 'V';
	END IF;
	
	IF (month_period) = '06' THEN 
		SET monthPeriod = 'VI';
	END IF;
	
	IF (month_period) = '07' THEN 
		SET monthPeriod = 'VII';
	END IF;
	
	IF (month_period) = '08' THEN 
		SET monthPeriod = 'VIII';
	END IF;
	
	IF (month_period) = '09' THEN 
		SET monthPeriod = 'IX';
	END IF;
	
	IF (month_period) = '10' THEN 
		SET monthPeriod = 'X';
	END IF;
	
	IF (month_period) = '11' THEN 
		SET monthPeriod = 'XI';
	END IF;
	
	IF (month_period) = '12' THEN 
		SET monthPeriod = 'XII';
	END IF;
		
	SET PERIOD = (SELECT LEFT(TRIM(journal_voucher_no), 4) 
			FROM acct_journal_voucher
			WHERE RIGHT(TRIM(journal_voucher_no), 4) = year_period
			ORDER BY journal_voucher_id DESC 
			LIMIT 1);
		
	IF (PERIOD IS NULL ) THEN 
		SET PERIOD = "0000";
	END IF;
	
	SET tPeriod = CAST(PERIOD AS DECIMAL(10));
	
	SET tPeriod = tPeriod + 1;
	
	SET PERIOD = RIGHT(CONCAT('0000', TRIM(CAST(tPeriod AS CHAR(4)))), 4);
	
	SET nJournalVoucherNo = CONCAT(PERIOD, '/JV/', monthPeriod, '/', year_period);
		
	SET new.journal_voucher_no = nJournalVoucherNo;
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `acct_journal_voucher_item`
--

CREATE TABLE `acct_journal_voucher_item` (
  `journal_voucher_item_id` int(10) NOT NULL,
  `company_id` int(10) DEFAULT NULL,
  `journal_voucher_id` int(10) DEFAULT NULL,
  `account_id` int(10) DEFAULT NULL,
  `journal_voucher_amount` varchar(225) DEFAULT '0',
  `account_id_status` int(1) DEFAULT NULL,
  `account_id_default_status` int(1) DEFAULT NULL,
  `journal_voucher_debit_amount` varchar(225) DEFAULT '0',
  `journal_voucher_credit_amount` varchar(225) DEFAULT '0',
  `data_state` int(10) DEFAULT '0',
  `created_id` int(10) DEFAULT NULL,
  `updated_id` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `acct_journal_voucher_item`
--

INSERT INTO `acct_journal_voucher_item` (`journal_voucher_item_id`, `company_id`, `journal_voucher_id`, `account_id`, `journal_voucher_amount`, `account_id_status`, `account_id_default_status`, `journal_voucher_debit_amount`, `journal_voucher_credit_amount`, `data_state`, `created_id`, `updated_id`, `created_at`, `updated_at`) VALUES
(5, 2, 383, 2, '116500', 0, 0, '116500', '0', 0, 64, 64, '2023-12-06 14:45:34', '2023-12-06 14:45:34'),
(6, 2, 383, 6, '116500', 1, 1, '0', '116500', 0, 64, 64, '2023-12-06 14:45:34', '2023-12-06 14:45:34'),
(7, 2, 384, 2, '35000', 0, 0, '35000', '0', 0, 64, 64, '2023-12-06 14:46:44', '2023-12-06 14:46:44'),
(8, 2, 384, 6, '35000', 1, 1, '0', '35000', 0, 64, 64, '2023-12-06 14:46:44', '2023-12-06 14:46:44'),
(9, 2, 385, 2, '66000', 0, 0, '66000', '0', 0, 64, 64, '2023-12-06 15:09:56', '2023-12-06 15:09:56'),
(10, 2, 385, 6, '66000', 1, 1, '0', '66000', 0, 64, 64, '2023-12-06 15:09:56', '2023-12-06 15:09:56'),
(11, 2, 386, 2, '35000', 0, 0, '35000', '0', 0, 64, 64, '2023-12-08 09:49:49', '2023-12-08 09:49:49'),
(12, 2, 386, 6, '35000', 1, 1, '0', '35000', 0, 64, 64, '2023-12-08 09:49:49', '2023-12-08 09:49:49'),
(13, 2, 387, 2, '157000', 0, 0, '157000', '0', 0, 64, 64, '2023-12-08 09:53:32', '2023-12-08 09:53:32'),
(14, 2, 387, 6, '157000', 1, 1, '0', '157000', 0, 64, 64, '2023-12-08 09:53:32', '2023-12-08 09:53:32'),
(15, 2, 388, 2, '29000', 0, 0, '29000', '0', 0, 64, 64, '2023-12-08 10:05:11', '2023-12-08 10:05:11'),
(16, 2, 388, 6, '29000', 1, 1, '0', '29000', 0, 64, 64, '2023-12-08 10:05:11', '2023-12-08 10:05:11');

--
-- Trigger `acct_journal_voucher_item`
--
DELIMITER $$
CREATE TRIGGER `insert_acct_journal_voucher_item` BEFORE INSERT ON `acct_journal_voucher_item` FOR EACH ROW BEGIN
	DECLARE nAccountIDDefaultStatus		DECIMAL(1);
	
	DECLARE nAccountID		INT(10);
	DECLARE nBranchID		INT(10);
	DECLARE nOpeningBalance		DECIMAL(20);
	DECLARE nLastBalance		DECIMAL(20);
	DECLARE nTransactionType	DECIMAL(10);
	DECLARE nTransactionCode	VARCHAR(20);
	DECLARE nTransactionID		INT(10);
	DECLARE nTransactionDate	DATE;
	DECLARE nAccountIn		DECIMAL(20);
	DECLARE nAccountOut		DECIMAL(20);
	DECLARE nCreatedId		INT(10);
	
	
	set nCreatedId			= (SELECT created_id FROM acct_journal_voucher
						WHERE journal_voucher_id = new.journal_voucher_id);
	
	SET nBranchID 			= (SELECT company_id FROM acct_journal_voucher
						WHERE journal_voucher_id = new.journal_voucher_id);
						
	SET nOpeningBalance 		= (SELECT last_balance FROM acct_account_balance
						WHERE company_id = nBranchID
						AND account_id = new.account_id);
						
	IF ( nOpeningBalance IS NULL ) THEN
		SET nOpeningBalance = 0;
	END IF;
				
	SET nAccountIDDefaultStatus 	= (SELECT account_default_status FROM acct_account 
						WHERE account_id = new.account_id);
						
	IF (new.account_id_status = nAccountIDDefaultStatus) THEN
		SET nLastBalance 	= nOpeningBalance + new.journal_voucher_amount;
		SET nAccountIn 		= new.journal_voucher_amount;
		SET nAccountOut		= 0;
	ELSE
		SET nLastBalance 	= nOpeningBalance - new.journal_voucher_amount;
		SET nAccountIn 		= 0;
		SET nAccountOut		= new.journal_voucher_amount;
	END IF; 
	
	SET nAccountID 			= (SELECT account_id FROM acct_account_balance 
						WHERE company_id = nBranchID
						AND account_id = new.account_id);
	
	IF (nAccountID IS NULL) THEN
		INSERT INTO acct_account_balance (company_id, account_id, last_balance, created_id) VALUES (nBranchID, new.account_id, nLastBalance, nCreatedId);
	ELSE 
		UPDATE acct_account_balance SET last_balance = nLastBalance
			WHERE account_id = new.account_id
			AND company_id = nBranchID;
	END IF;
	
		
	SET nTransactionType 		= (SELECT transaction_module_id FROM acct_journal_voucher WHERE journal_voucher_id = new.journal_voucher_id);
		
	SET nTransactionCode 		= (SELECT transaction_module_code FROM acct_journal_voucher WHERE journal_voucher_id = new.journal_voucher_id);
	
	SET nTransactionID 		= new.journal_voucher_id;
		
	SET nTransactionDate 		= (SELECT journal_voucher_date FROM acct_journal_voucher WHERE journal_voucher_id = new.journal_voucher_id);
		
	INSERT INTO acct_account_balance_detail (company_id, transaction_type, transaction_code, transaction_id, transaction_date, 
		account_id, opening_balance, account_in, account_out, last_balance, created_id)
		VALUES (nBranchID, nTransactionType, nTransactionCode, nTransactionID, nTransactionDate, 
			new.account_id, nOpeningBalance, nAccountIn, nAccountOut, nLastBalance, nCreatedId);
    END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_acct_journal_voucher_item` BEFORE UPDATE ON `acct_journal_voucher_item` FOR EACH ROW BEGIN
	DECLARE nAccountIDDefaultStatus		DECIMAL(1);
	
	DECLARE nAccountID			INT(10);
	DECLARE nBranchID			INT(10);
	DECLARE nOpeningBalance			DECIMAL(20);
	DECLARE nLastBalance			DECIMAL(20);
	DECLARE nTransactionType		DECIMAL(10);
	DECLARE nTransactionCode		VARCHAR(20);
	DECLARE nTransactionID			INT(10);
	DECLARE nTransactionDate		DATE;
	DECLARE nAccountIn			DECIMAL(20);
	DECLARE nAccountOut			DECIMAL(20);
	
	IF (new.data_state = 2) THEN 
		SET nBranchID 			= (SELECT company_id FROM acct_journal_voucher
						WHERE journal_voucher_id = new.journal_voucher_id);
						
		SET nOpeningBalance 		= (SELECT last_balance FROM acct_account_balance
						WHERE company_id = nBranchID
						AND account_id = new.account_id);
							
		IF ( nOpeningBalance IS NULL ) THEN
			SET nOpeningBalance = 0;
		END IF;
					
		SET nAccountIDDefaultStatus 	= (SELECT account_default_status FROM acct_account 
							WHERE account_id = new.account_id);
							
		IF (new.account_id_status = nAccountIDDefaultStatus) THEN
			SET nLastBalance 	= nOpeningBalance - new.journal_voucher_amount;
			SET nAccountOut 	= new.journal_voucher_amount;
			SET nAccountIn		= 0;
		ELSE
			SET nLastBalance 	= nOpeningBalance + new.journal_voucher_amount;
			SET nAccountOut 	= 0;
			SET nAccountIn		= new.journal_voucher_amount;
		END IF; 
			
		SET nAccountID 			= (SELECT account_id FROM acct_account_balance 
						WHERE company_id = nBranchID
						AND account_id = new.account_id);
		
		IF (nAccountID IS NULL) THEN
			INSERT INTO acct_account_balance (company_id, account_id, last_balance) VALUES (nBranchID, new.account_id, nLastBalance);
		ELSE 
			UPDATE acct_account_balance SET last_balance = nLastBalance
				WHERE account_id = new.account_id
				AND branch_id = nBranchID;
		END IF;
		
			
		SET nTransactionType 		= (SELECT transaction_module_id FROM acct_journal_voucher WHERE journal_voucher_id = new.journal_voucher_id);
			
		SET nTransactionCode 		= (SELECT transaction_module_code FROM acct_journal_voucher WHERE journal_voucher_id = new.journal_voucher_id);
		
		SET nTransactionID 		= new.journal_voucher_id;
			
		SET nTransactionDate 		= (SELECT journal_voucher_date FROM acct_journal_voucher WHERE journal_voucher_id = new.journal_voucher_id);
			
		INSERT INTO acct_account_balance_detail (company_id, transaction_type, transaction_code, transaction_id, transaction_date, 
			account_id, opening_balance, account_in, account_out, last_balance)
			VALUES (nBranchID, nTransactionType, nTransactionCode, nTransactionID, nTransactionDate, 
				new.account_id, nOpeningBalance, nAccountIn, nAccountOut, nLastBalance);
	END IF;
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `acct_profit_loss_report`
--

CREATE TABLE `acct_profit_loss_report` (
  `profit_loss_report_id` int(10) NOT NULL,
  `company_id` int(10) DEFAULT NULL,
  `format_id` int(10) DEFAULT NULL,
  `report_no` int(10) DEFAULT NULL,
  `account_type_id` int(10) DEFAULT NULL,
  `account_id` int(10) DEFAULT NULL,
  `account_code` varchar(250) DEFAULT NULL,
  `account_name` varchar(250) DEFAULT NULL,
  `report_formula` varchar(250) DEFAULT NULL,
  `report_operator` varchar(250) DEFAULT NULL,
  `report_type` int(1) DEFAULT NULL,
  `report_tab` int(1) DEFAULT NULL,
  `report_bold` int(1) DEFAULT NULL,
  `data_state` int(1) DEFAULT NULL,
  `created_id` int(1) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `acct_profit_loss_report`
--

INSERT INTO `acct_profit_loss_report` (`profit_loss_report_id`, `company_id`, `format_id`, `report_no`, `account_type_id`, `account_id`, `account_code`, `account_name`, `report_formula`, `report_operator`, `report_type`, `report_tab`, `report_bold`, `data_state`, `created_id`, `created_on`, `last_update`) VALUES
(1, 2, 3, 1, 2, 0, '', 'RINCIAN PENDAPATAN', '', '', 1, 0, 1, 0, 55, NULL, '2023-03-11 04:24:31'),
(2, 2, 3, 2, 2, 17, '', 'PENDAPATAN OPERASIONAL', '', '', 1, 1, 1, 0, 55, NULL, '2023-03-11 04:24:30'),
(3, 2, 3, 3, 2, 6, '200.1', 'Penjualan', '', '', 3, 2, 0, 0, 55, NULL, '2023-03-11 04:42:55'),
(4, 2, 3, 4, 2, 0, '', 'TOTAL PENDAPATAN', '3#', '+#', 6, 0, 1, 0, 55, NULL, '2023-03-11 04:24:32'),
(5, 2, 3, 5, 0, 0, '', '', '', '', 0, 0, 0, 0, 55, NULL, '2023-03-11 04:24:33'),
(6, 2, 3, 6, 3, 0, '', 'RINCIAN BIAYA', '', '', 1, 0, 1, 0, 55, NULL, '2023-03-11 04:24:34'),
(7, 2, 3, 7, 3, 20, '', 'BEBAN OPERASIONAL', '', '', 1, 1, 1, 0, 55, NULL, '2023-03-11 04:24:34'),
(9, 2, 3, 9, 3, 3, '101.1', 'Retur Pembelian', '', '', 3, 2, 0, 0, 55, NULL, '2023-03-11 04:40:38'),
(10, 2, 3, 10, 3, 7, '101.2', 'Pembelian Bahan Baku', '', '', 3, 2, 0, 0, 55, NULL, '2023-03-11 04:40:39'),
(11, 2, 3, 11, 3, 9, '101.3', 'Pembelian Bahan Minuman', '', '', 3, 2, 0, 0, 55, NULL, '2023-03-11 04:40:40'),
(12, 2, 3, 12, 3, 10, '101.4', 'Pembelian Bahan Penunjang', '', '', 3, 2, 0, 0, 55, NULL, '2023-03-11 04:40:43'),
(13, 2, 3, 13, 3, 11, '101.5', 'Listrik + Pam + Wifi', '', '', 3, 2, 0, 0, 55, NULL, '2023-03-11 04:40:47'),
(14, 2, 3, 14, 3, 12, '101.6', 'Gas', '', '', 3, 2, 0, 0, 55, NULL, '2023-03-11 04:41:14'),
(15, 2, 3, 15, 3, 13, '101.7', 'Tenaga Kerja', '', '', 3, 2, 0, 0, 55, NULL, '2023-03-11 04:41:11'),
(16, 2, 3, 16, 3, 14, '101.8', 'Marketing', '', '', 3, 2, 0, 0, 55, NULL, '2023-03-11 04:41:10'),
(17, 2, 3, 17, 3, 15, '101.9', 'Lain - lain', '', '', 3, 2, 0, 0, 55, NULL, '2023-03-11 04:41:09'),
(18, 2, 3, 18, 3, 0, '', 'TOTAL BEBAN', '9#10#11#12#13#14#15#16#17', '+#+#+#+#+#+#+#+#+#+#+', 6, 0, 1, 0, 55, NULL, '2023-03-11 04:43:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `capital_money`
--

CREATE TABLE `capital_money` (
  `capital_money_id` int(10) NOT NULL,
  `company_id` int(10) DEFAULT NULL,
  `capital_money_date` date DEFAULT NULL,
  `capital_money_amount` int(10) DEFAULT NULL,
  `data_state` int(1) DEFAULT '0',
  `created_id` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `capital_money`
--

INSERT INTO `capital_money` (`capital_money_id`, `company_id`, `capital_money_date`, `capital_money_amount`, `data_state`, `created_id`, `created_at`, `updated_at`) VALUES
(8, 2, '2023-12-06', 0, 0, 61, '2023-04-29 10:58:19', '2023-12-06 05:01:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `core_section`
--

CREATE TABLE `core_section` (
  `section_id` int(10) NOT NULL,
  `section_name` varchar(225) DEFAULT NULL,
  `section_token` varchar(225) DEFAULT NULL,
  `data_state` int(1) DEFAULT '0',
  `company_id` int(10) DEFAULT NULL,
  `created_id` int(10) DEFAULT NULL,
  `updated_id` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `core_section`
--

INSERT INTO `core_section` (`section_id`, `section_name`, `section_token`, `data_state`, `company_id`, `created_id`, `updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Bagian Satu', 'd8c5bb6f76b6f508b42f431397f1731b', 0, 1, 55, 55, '2022-06-25 11:15:20', '2022-06-25 11:15:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `expenditure`
--

CREATE TABLE `expenditure` (
  `expenditure_id` int(10) NOT NULL,
  `account_id` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `expenditure_date` date DEFAULT NULL,
  `expenditure_remark` text,
  `expenditure_amount` int(10) DEFAULT NULL,
  `data_state` int(1) DEFAULT '0',
  `created_id` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `invt_item`
--

CREATE TABLE `invt_item` (
  `item_id` int(10) NOT NULL,
  `company_id` int(10) DEFAULT NULL,
  `item_category_id` int(10) DEFAULT NULL,
  `item_unit_id` int(10) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_code` varchar(50) DEFAULT NULL,
  `item_barcode` varchar(50) DEFAULT NULL,
  `item_status` int(1) DEFAULT '0',
  `item_default_quantity` varchar(100) DEFAULT NULL,
  `item_unit_price` varchar(100) DEFAULT NULL,
  `item_unit_cost` varchar(100) DEFAULT NULL,
  `item_remark` varchar(255) DEFAULT NULL,
  `data_state` int(1) DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_id` int(10) DEFAULT NULL,
  `created_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `invt_item`
--

INSERT INTO `invt_item` (`item_id`, `company_id`, `item_category_id`, `item_unit_id`, `item_name`, `item_code`, `item_barcode`, `item_status`, `item_default_quantity`, `item_unit_price`, `item_unit_cost`, `item_remark`, `data_state`, `updated_at`, `created_at`, `updated_id`, `created_id`) VALUES
(102, 2, 8, 24, 'Nasi', 'Nasi', NULL, 0, '1', '3000', '0', 'Nasi', 1, '2023-12-06 14:34:24', '2023-12-06 11:50:04', 57, 64),
(103, 2, 9, 29, 'Es Teh', 'Es Teh', NULL, 0, '1', '3000', '0', NULL, 1, '2023-12-06 14:34:27', '2023-12-06 11:50:28', 57, 64),
(104, 2, 24, 33, 'Beras SPHP 5Kg', 'SPHP`', NULL, 0, '1', '58000', '0', NULL, 0, '2023-12-06 14:37:19', '2023-12-06 14:37:19', 57, 57),
(105, 2, 24, 33, 'Beras C4 5Kg', 'C45K`', NULL, 0, '1', '70000', '0', NULL, 0, '2023-12-06 14:38:00', '2023-12-06 14:38:00', 57, 57),
(106, 2, 24, 33, 'Beras C4 2,5Kg', 'C42K`', NULL, 0, '1', '35000', '0', NULL, 0, '2023-12-06 14:38:44', '2023-12-06 14:38:44', 57, 57),
(107, 2, 24, 32, 'Telur 1Kg', 'TLR', NULL, 0, '1', '25500', '0', NULL, 0, '2023-12-06 14:39:16', '2023-12-06 14:39:16', 57, 57),
(108, 2, 24, 32, 'Gula Pasir 1kg', 'GLP', NULL, 0, '1', '16500', '0', NULL, 0, '2023-12-06 14:39:43', '2023-12-06 14:39:43', 57, 57),
(109, 2, 24, 30, 'Minyak 1Ltr', 'MIK', NULL, 0, '1', '14500', '0', NULL, 0, '2023-12-06 14:40:05', '2023-12-06 14:40:05', 57, 57),
(110, 2, 24, 35, 'Indomie Gr Paket', 'IGP', NULL, 0, '10', '30000', '0', NULL, 0, '2023-12-06 14:40:35', '2023-12-06 14:40:35', 57, 57);

-- --------------------------------------------------------

--
-- Struktur dari tabel `invt_item_category`
--

CREATE TABLE `invt_item_category` (
  `item_category_id` int(10) NOT NULL,
  `company_id` int(10) DEFAULT NULL,
  `item_category_code` varchar(50) DEFAULT NULL,
  `item_category_name` varchar(255) DEFAULT NULL,
  `item_category_remark` varchar(255) DEFAULT NULL,
  `data_state` int(1) DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_id` int(10) DEFAULT NULL,
  `created_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `invt_item_category`
--

INSERT INTO `invt_item_category` (`item_category_id`, `company_id`, `item_category_code`, `item_category_name`, `item_category_remark`, `data_state`, `updated_at`, `created_at`, `updated_id`, `created_id`) VALUES
(8, 2, 'Makanan', 'Makanan', 'Makanan', 1, '2023-12-06 14:35:02', '2023-02-28 14:58:00', 57, 61),
(9, 2, 'Minuman', 'Minuman', 'Minuman', 1, '2023-12-06 14:35:04', '2023-02-28 14:58:11', 57, 61),
(24, 2, 'Sembako', 'Sembako', 'Sembako', 0, '2023-12-06 14:35:15', '2023-12-06 14:35:15', 57, 57);

-- --------------------------------------------------------

--
-- Struktur dari tabel `invt_item_stock`
--

CREATE TABLE `invt_item_stock` (
  `item_stock_id` int(10) NOT NULL,
  `company_id` int(10) DEFAULT NULL,
  `warehouse_id` int(10) DEFAULT NULL,
  `item_id` int(10) DEFAULT NULL,
  `item_unit_id` int(10) DEFAULT NULL,
  `item_category_id` int(10) DEFAULT NULL,
  `last_balance` int(50) DEFAULT NULL,
  `last_update` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `data_state` int(1) DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_id` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `invt_item_stock`
--

INSERT INTO `invt_item_stock` (`item_stock_id`, `company_id`, `warehouse_id`, `item_id`, `item_unit_id`, `item_category_id`, `last_balance`, `last_update`, `data_state`, `updated_at`, `updated_id`, `created_at`, `created_id`) VALUES
(8, 2, 5, 102, 24, 8, 0, '2023-12-06 13:30:42', 0, '2023-12-06 12:02:09', NULL, '2023-12-06 11:50:04', 64),
(9, 2, 5, 103, 29, 9, 0, '2023-12-06 13:30:45', 0, '2023-12-06 12:02:09', NULL, '2023-12-06 11:50:28', 64),
(10, 2, 5, 108, 32, 24, -12, '2023-12-08 09:53:32', 0, '2023-12-08 09:53:32', NULL, '2023-12-06 14:45:34', 64),
(11, 2, 5, 104, 33, 24, -2, '2023-12-08 09:53:32', 0, '2023-12-08 09:53:32', NULL, '2023-12-06 14:45:34', 64),
(12, 2, 5, 107, 32, 24, -1, NULL, 0, '2023-12-06 14:45:34', NULL, '2023-12-06 14:45:34', 64),
(13, 2, 5, 106, 33, 24, -2, '2023-12-08 09:49:49', 0, '2023-12-08 09:49:49', NULL, '2023-12-06 14:46:44', 64),
(14, 2, 5, 109, 30, 24, -2, NULL, 0, '2023-12-08 10:05:11', NULL, '2023-12-08 10:05:11', 64);

-- --------------------------------------------------------

--
-- Struktur dari tabel `invt_item_unit`
--

CREATE TABLE `invt_item_unit` (
  `item_unit_id` int(10) NOT NULL,
  `company_id` int(10) DEFAULT NULL,
  `item_unit_code` varchar(50) DEFAULT NULL,
  `item_unit_name` varchar(255) DEFAULT NULL,
  `item_unit_remark` varchar(255) DEFAULT '',
  `data_state` int(1) DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_id` int(10) DEFAULT NULL,
  `created_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `invt_item_unit`
--

INSERT INTO `invt_item_unit` (`item_unit_id`, `company_id`, `item_unit_code`, `item_unit_name`, `item_unit_remark`, `data_state`, `updated_at`, `created_at`, `updated_id`, `created_id`) VALUES
(24, 2, 'Prs', 'Porsi', 'Porsi', 1, '2023-12-06 14:31:07', '2022-07-06 03:07:55', 57, 55),
(27, 2, 'Px', 'Pack', 'Pack', 1, '2023-12-06 14:31:10', '2023-03-12 08:41:41', 57, 61),
(29, 2, 'Gls', 'Gls/Cup', 'Gelas/Cup', 1, '2023-12-06 14:31:12', '2023-03-12 08:42:36', 57, 61),
(30, 2, 'Btl', 'Botol', 'Botol', 0, '2023-03-12 08:53:05', '2023-03-12 08:53:05', 61, 61),
(32, 2, 'Kg', 'Kilogram', 'Berat', 0, '2023-12-06 14:32:41', '2023-12-06 14:32:41', 57, 57),
(33, 2, 'Pax', 'Pack', 'Pack berat', 0, '2023-12-06 14:33:34', '2023-12-06 14:33:34', 57, 57),
(34, 2, 'Btl', 'Botol', 'Botol', 0, '2023-12-06 14:33:57', '2023-12-06 14:33:57', 57, 57),
(35, 2, 'Pkt', 'Paket', 'Botol', 0, '2023-12-06 14:34:10', '2023-12-06 14:34:10', 57, 57);

-- --------------------------------------------------------

--
-- Struktur dari tabel `invt_stock_adjustment`
--

CREATE TABLE `invt_stock_adjustment` (
  `stock_adjustment_id` int(10) NOT NULL,
  `company_id` int(10) DEFAULT NULL,
  `warehouse_id` int(10) DEFAULT NULL,
  `stock_adjustment_date` varchar(225) DEFAULT NULL,
  `data_state` int(1) DEFAULT '0',
  `created_id` int(10) DEFAULT NULL,
  `updated_id` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `invt_stock_adjustment_item`
--

CREATE TABLE `invt_stock_adjustment_item` (
  `stock_adjustment_item_id` int(10) NOT NULL,
  `company_id` int(10) DEFAULT NULL,
  `stock_adjustment_id` int(10) DEFAULT NULL,
  `item_id` int(10) DEFAULT NULL,
  `item_category_id` int(10) DEFAULT NULL,
  `item_unit_id` int(10) DEFAULT NULL,
  `last_balance_data` varchar(225) DEFAULT NULL,
  `last_balance_physical` varchar(225) DEFAULT NULL,
  `last_balance_adjustment` varchar(225) DEFAULT NULL,
  `stock_adjustment_item_remark` varchar(225) DEFAULT NULL,
  `data_state` int(1) DEFAULT '0',
  `created_id` int(10) DEFAULT NULL,
  `updated_id` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `invt_warehouse`
--

CREATE TABLE `invt_warehouse` (
  `warehouse_id` int(10) NOT NULL,
  `company_id` int(10) DEFAULT NULL,
  `warehouse_code` varchar(50) DEFAULT NULL,
  `warehouse_name` varchar(255) DEFAULT NULL,
  `warehouse_address` varchar(255) DEFAULT NULL,
  `warehouse_phone` varbinary(12) DEFAULT NULL,
  `data_state` int(1) DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_id` int(10) DEFAULT NULL,
  `created_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `invt_warehouse`
--

INSERT INTO `invt_warehouse` (`warehouse_id`, `company_id`, `warehouse_code`, `warehouse_name`, `warehouse_address`, `warehouse_phone`, `data_state`, `updated_at`, `created_at`, `updated_id`, `created_id`) VALUES
(4, 1, 'GUDANG', 'GUDANG', '-', 0x2d, 0, '2022-07-06 03:01:49', '2022-07-06 03:00:02', 55, 55),
(5, 2, 'G1', 'Gudang 1', 'Jl Ray', 0x303838, 0, '2023-04-27 15:08:18', '2023-04-27 15:08:18', 61, 61);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_18_024733_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(5, 'App\\Models\\User', 64, 'token-name', 'c61e7dbdcb2dbb2bcad432d9db8f568872a4a291fcb7df8d557e26eb45427a7f', '[\"*\"]', '2023-12-06 07:48:49', '2023-12-06 07:47:32', '2023-12-06 07:48:49'),
(6, 'App\\Models\\User', 64, 'token-name', '99006ea54e0dc6f009b2b26d3c989542d7c0ad606e6d06c4bf3ed171dead1d85', '[\"*\"]', '2023-12-08 09:42:54', '2023-12-06 08:05:56', '2023-12-08 09:42:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `preference_company`
--

CREATE TABLE `preference_company` (
  `company_id` int(10) NOT NULL,
  `company_name` varchar(225) DEFAULT NULL,
  `company_address` varchar(225) DEFAULT NULL,
  `company_phone_number` varchar(225) DEFAULT NULL,
  `company_mobile_number` varchar(225) DEFAULT NULL,
  `company_email` varchar(225) DEFAULT NULL,
  `company_website` varchar(225) DEFAULT NULL,
  `company_logo` varchar(225) DEFAULT NULL,
  `guest_state` int(1) DEFAULT '0',
  `printer_address` varchar(225) DEFAULT NULL,
  `printer_kitchen_address` varchar(225) DEFAULT NULL,
  `receipt_bottom_text` varchar(250) DEFAULT ':::::Terima Kasih:::::',
  `data_state` int(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `preference_company`
--

INSERT INTO `preference_company` (`company_id`, `company_name`, `company_address`, `company_phone_number`, `company_mobile_number`, `company_email`, `company_website`, `company_logo`, `guest_state`, `printer_address`, `printer_kitchen_address`, `receipt_bottom_text`, `data_state`, `created_at`, `updated_at`) VALUES
(1, 'Guest', '-', '-', '-', '-', '-', NULL, 0, '', '', ':::::Terima Kasih:::::', 0, '2022-07-04 16:39:34', '2022-07-19 11:12:24'),
(2, 'Koperasi Artha Bima Sentosa', '-', '-', '-', '-', '-', NULL, 0, 'RPP02', 'RPP01', ':::::Terima Kasih:::::', 0, '2022-07-05 09:09:27', '2023-12-06 11:59:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `preference_transaction_module`
--

CREATE TABLE `preference_transaction_module` (
  `transaction_module_id` int(10) NOT NULL,
  `transaction_module_name` varchar(225) DEFAULT NULL,
  `transaction_module_code` varchar(225) DEFAULT NULL,
  `transaction_controller` varchar(225) DEFAULT NULL,
  `transaction_table` varchar(225) DEFAULT NULL,
  `transaction_primary_key` varchar(225) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `data_state` int(1) DEFAULT '0',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `preference_transaction_module`
--

INSERT INTO `preference_transaction_module` (`transaction_module_id`, `transaction_module_name`, `transaction_module_code`, `transaction_controller`, `transaction_table`, `transaction_primary_key`, `status`, `data_state`, `last_update`) VALUES
(1, 'Jurnal Umum', 'JU', 'JournalVoucherController', 'acct_journal_voucher', 'journal_voucher_id', NULL, 0, '2022-07-11 02:44:29'),
(2, 'Pembelian', 'PBL', 'PurchaseInvoiceController', 'purchase_invoice', 'purchase_invoice_id', NULL, 0, '2022-07-13 05:08:23'),
(3, 'Retur Pembelian', 'RPBL', 'PurchaseReturnReportController', 'purchase_return', 'purchase_return_id', NULL, 0, '2022-07-13 05:09:17'),
(4, 'Penjualan', 'PJL', 'SalesInvoiceReportController', 'sales_invoice', 'sales_invoice_id', NULL, 0, '2022-07-13 05:11:37'),
(5, 'Pengeluaran', 'PGL', 'ExpenditureController', 'expenditure', 'expenditure_id', NULL, 0, '2022-07-18 09:00:46'),
(6, 'Hapus Pengeluaran', 'HPGL', 'ExpenditureController', 'expenditure', 'expenditure_id', NULL, 0, '2023-03-13 04:09:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchase_invoice`
--

CREATE TABLE `purchase_invoice` (
  `purchase_invoice_id` int(10) NOT NULL,
  `company_id` int(10) DEFAULT NULL,
  `purchase_invoice_no` varchar(225) DEFAULT NULL,
  `warehouse_id` int(10) DEFAULT NULL,
  `subtotal_item` varchar(225) DEFAULT NULL,
  `purchase_invoice_remark` varchar(225) DEFAULT NULL,
  `purchase_invoice_date` varchar(225) DEFAULT NULL,
  `purchase_invoice_supplier` varchar(225) DEFAULT NULL,
  `subtotal_amount_total` varchar(225) DEFAULT NULL,
  `discount_percentage_total` varchar(225) DEFAULT NULL,
  `discount_amount_total` varchar(225) DEFAULT NULL,
  `total_amount` varchar(255) DEFAULT NULL,
  `paid_amount` varchar(225) DEFAULT NULL,
  `owing_amount` varchar(225) DEFAULT NULL,
  `data_state` int(1) DEFAULT '0',
  `created_id` int(10) DEFAULT NULL,
  `updated_id` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Trigger `purchase_invoice`
--
DELIMITER $$
CREATE TRIGGER `insert_purchase_invoice` BEFORE INSERT ON `purchase_invoice` FOR EACH ROW BEGIN
	DECLARE year_period 		VARCHAR(20);
	DECLARE month_period 		VARCHAR(20);
	DECLARE PERIOD 			VARCHAR(20);
	DECLARE tPeriod			INT;
	DECLARE nPurchaseInvoiceNo	VARCHAR(20);
	DECLARE monthPeriod		VARCHAR(20);
	DECLARE lenPurchaseInvoiceNo	DECIMAL(10);
	
	SET year_period = (YEAR(new.purchase_invoice_date));
	
	SET month_period = (SELECT RIGHT(CONCAT('0', MONTH(new.purchase_invoice_date)), 2));
	
	IF (month_period) = '01' THEN 
		SET monthPeriod = 'I';
	END IF;
	
	IF (month_period) = '02' THEN 
		SET monthPeriod = 'II';
	END IF;
	
	IF (month_period) = '03' THEN 
		SET monthPeriod = 'III';
	END IF;
	
	IF (month_period) = '04' THEN 
		SET monthPeriod = 'IV';
	END IF;	
	
	IF (month_period) = '05' THEN 
		SET monthPeriod = 'V';
	END IF;
	
	IF (month_period) = '06' THEN 
		SET monthPeriod = 'VI';
	END IF;
	
	IF (month_period) = '07' THEN 
		SET monthPeriod = 'VII';
	END IF;
	
	IF (month_period) = '08' THEN 
		SET monthPeriod = 'VIII';
	END IF;
	
	IF (month_period) = '09' THEN 
		SET monthPeriod = 'IX';
	END IF;
	
	IF (month_period) = '10' THEN 
		SET monthPeriod = 'X';
	END IF;
	
	IF (month_period) = '11' THEN 
		SET monthPeriod = 'XI';
	END IF;
	
	IF (month_period) = '12' THEN 
		SET monthPeriod = 'XII';
	END IF;
		
	SET PERIOD = (SELECT LEFT(TRIM(purchase_invoice_no), 4) 
			FROM purchase_invoice
			WHERE RIGHT(TRIM(purchase_invoice_no), 4) = year_period
			ORDER BY purchase_invoice_id DESC 
			LIMIT 1);
		
	IF (PERIOD IS NULL ) THEN 
		SET PERIOD = "0000";
	END IF;
	
	SET tPeriod = CAST(PERIOD AS DECIMAL(10));
	
	SET tPeriod = tPeriod + 1;
	
	SET PERIOD = RIGHT(CONCAT('0000', TRIM(CAST(tPeriod AS CHAR(4)))), 4);
	
	SET nPurchaseInvoiceNo = CONCAT(PERIOD, '/PI/', monthPeriod, '/', year_period);
		
	SET new.purchase_invoice_no = nPurchaseInvoiceNo;
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchase_invoice_item`
--

CREATE TABLE `purchase_invoice_item` (
  `purchase_invoice_item_id` int(10) NOT NULL,
  `company_id` int(10) DEFAULT NULL,
  `purchase_invoice_id` int(10) DEFAULT NULL,
  `item_category_id` int(10) DEFAULT NULL,
  `item_unit_id` int(10) DEFAULT NULL,
  `item_id` int(10) DEFAULT NULL,
  `quantity` varchar(225) DEFAULT NULL,
  `item_unit_cost` varchar(225) DEFAULT NULL,
  `subtotal_amount` varchar(225) DEFAULT NULL,
  `item_expired_date` varchar(225) DEFAULT NULL,
  `data_state` int(1) DEFAULT '0',
  `created_id` int(10) DEFAULT NULL,
  `updated_id` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchase_return`
--

CREATE TABLE `purchase_return` (
  `purchase_return_id` int(10) NOT NULL,
  `company_id` int(10) DEFAULT NULL,
  `purchase_return_no` varchar(225) DEFAULT NULL,
  `warehouse_id` int(10) DEFAULT NULL,
  `purchase_return_date` varchar(225) DEFAULT NULL,
  `purchase_return_supplier` varchar(255) DEFAULT NULL,
  `purchase_return_quantity` varchar(255) DEFAULT NULL,
  `purchase_return_subtotal` varchar(255) DEFAULT NULL,
  `purchase_return_remark` varchar(255) DEFAULT NULL,
  `data_state` int(1) DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_id` int(10) DEFAULT NULL,
  `created_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Trigger `purchase_return`
--
DELIMITER $$
CREATE TRIGGER `insert_purchase_return` BEFORE INSERT ON `purchase_return` FOR EACH ROW BEGIN
	DECLARE year_period 		VARCHAR(20);
	DECLARE month_period 		VARCHAR(20);
	DECLARE PERIOD 			VARCHAR(20);
	DECLARE tPeriod			INT;
	DECLARE nSalesInvoiceNo		VARCHAR(20);
	DECLARE monthPeriod		VARCHAR(20);
	DECLARE lenSalesInvoiceNo	DECIMAL(10);
	
	SET year_period = (YEAR(new.purchase_return_date));
	
	SET month_period = (SELECT RIGHT(CONCAT('0', MONTH(new.purchase_return_date)), 2));
	
	IF (month_period) = '01' THEN 
		SET monthPeriod = 'I';
	END IF;
	
	IF (month_period) = '02' THEN 
		SET monthPeriod = 'II';
	END IF;
	
	IF (month_period) = '03' THEN 
		SET monthPeriod = 'III';
	END IF;
	
	IF (month_period) = '04' THEN 
		SET monthPeriod = 'IV';
	END IF;	
	
	IF (month_period) = '05' THEN 
		SET monthPeriod = 'V';
	END IF;
	
	IF (month_period) = '06' THEN 
		SET monthPeriod = 'VI';
	END IF;
	
	IF (month_period) = '07' THEN 
		SET monthPeriod = 'VII';
	END IF;
	
	IF (month_period) = '08' THEN 
		SET monthPeriod = 'VIII';
	END IF;
	
	IF (month_period) = '09' THEN 
		SET monthPeriod = 'IX';
	END IF;
	
	IF (month_period) = '10' THEN 
		SET monthPeriod = 'X';
	END IF;
	
	IF (month_period) = '11' THEN 
		SET monthPeriod = 'XI';
	END IF;
	
	IF (month_period) = '12' THEN 
		SET monthPeriod = 'XII';
	END IF;
		
	SET PERIOD = (SELECT LEFT(TRIM(purchase_return_no), 4) 
			FROM purchase_return
			WHERE RIGHT(TRIM(purchase_return_no), 4) = year_period
			ORDER BY purchase_return_id DESC 
			LIMIT 1);
		
	IF (PERIOD IS NULL ) THEN 
		SET PERIOD = "0000";
	END IF;
	
	SET tPeriod = CAST(PERIOD AS DECIMAL(10));
	
	SET tPeriod = tPeriod + 1;
	
	SET PERIOD = RIGHT(CONCAT('0000', TRIM(CAST(tPeriod AS CHAR(4)))), 4);
	
	SET nSalesInvoiceNo = CONCAT(PERIOD, '/PR/', monthPeriod, '/', year_period);
		
	SET new.purchase_return_no = nSalesInvoiceNo;
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchase_return_item`
--

CREATE TABLE `purchase_return_item` (
  `purchase_item_id` int(20) NOT NULL,
  `company_id` int(10) DEFAULT NULL,
  `purchase_return_id` int(20) DEFAULT NULL,
  `item_category_id` int(20) DEFAULT NULL,
  `item_id` int(20) DEFAULT NULL,
  `item_unit_id` int(20) DEFAULT NULL,
  `purchase_item_cost` varchar(255) DEFAULT NULL,
  `purchase_item_quantity` varchar(225) DEFAULT NULL,
  `purchase_item_subtotal` varchar(225) DEFAULT NULL,
  `data_state` int(1) DEFAULT '0',
  `created_id` int(10) DEFAULT NULL,
  `updated_id` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales_customer`
--

CREATE TABLE `sales_customer` (
  `customer_id` int(10) NOT NULL,
  `company_id` int(10) DEFAULT NULL,
  `customer_name` varchar(250) DEFAULT NULL,
  `customer_gender` int(1) DEFAULT NULL,
  `data_state` int(1) DEFAULT '0',
  `created_id` int(10) DEFAULT NULL,
  `updated_id` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales_invoice`
--

CREATE TABLE `sales_invoice` (
  `sales_invoice_id` int(10) NOT NULL,
  `company_id` int(10) DEFAULT NULL,
  `customer_id` int(10) DEFAULT NULL,
  `sales_invoice_no` varchar(225) DEFAULT NULL,
  `sales_invoice_date` varchar(225) DEFAULT NULL,
  `subtotal_item` varchar(225) DEFAULT NULL,
  `subtotal_amount` varchar(225) DEFAULT NULL,
  `discount_percentage_total` varchar(225) DEFAULT NULL,
  `discount_amount_total` varchar(225) DEFAULT NULL,
  `total_amount` varchar(225) DEFAULT NULL,
  `paid_amount` varchar(225) DEFAULT NULL,
  `change_amount` varchar(225) DEFAULT NULL,
  `table_no` varchar(250) DEFAULT NULL,
  `payment_method` int(10) DEFAULT NULL,
  `data_state` int(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_id` int(10) DEFAULT NULL,
  `updated_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sales_invoice`
--

INSERT INTO `sales_invoice` (`sales_invoice_id`, `company_id`, `customer_id`, `sales_invoice_no`, `sales_invoice_date`, `subtotal_item`, `subtotal_amount`, `discount_percentage_total`, `discount_amount_total`, `total_amount`, `paid_amount`, `change_amount`, `table_no`, `payment_method`, `data_state`, `created_at`, `updated_at`, `created_id`, `updated_id`) VALUES
(269, 2, NULL, '0001/SI/XII/2023', '2023-12-06', '4', '116500', '0', '0', '116500', '116500', '0', 'bintang mas', 0, 0, '2023-12-06 14:45:34', '2023-12-06 14:45:34', 64, NULL),
(270, 2, NULL, '0002/SI/XII/2023', '2023-12-06', '1', '35000', '0', '0', '35000', '35000', '0', NULL, 0, 0, '2023-12-06 14:46:44', '2023-12-06 14:46:44', 64, NULL),
(271, 2, NULL, '0003/SI/XII/2023', '2023-12-06', '4', '66000', '0', '0', '66000', '66000', '0', 'mas ian', 0, 0, '2023-12-06 15:09:56', '2023-12-06 15:09:56', 64, NULL),
(272, 2, NULL, '0004/SI/XII/2023', '2023-12-08', '1', '35000', '0', '0', '35000', '50000', '15000', NULL, 0, 0, '2023-12-08 09:49:49', '2023-12-08 09:49:49', 64, NULL),
(273, 2, NULL, '0005/SI/XII/2023', '2023-12-08', '7', '157000', '0', '0', '157000', '157000', '0', NULL, 0, 0, '2023-12-08 09:53:32', '2023-12-08 09:53:32', 64, NULL),
(274, 2, NULL, '0006/SI/XII/2023', '2023-12-08', '2', '29000', '0', '0', '29000', '50000', '21000', NULL, 0, 0, '2023-12-08 10:05:11', '2023-12-08 10:05:11', 64, NULL);

--
-- Trigger `sales_invoice`
--
DELIMITER $$
CREATE TRIGGER `insert_sales_invoice` BEFORE INSERT ON `sales_invoice` FOR EACH ROW BEGIN
	DECLARE year_period 		VARCHAR(20);
	DECLARE month_period 		VARCHAR(20);
	DECLARE PERIOD 			VARCHAR(20);
	DECLARE tPeriod			INT;
	DECLARE nSalesInvoiceNo		VARCHAR(20);
	DECLARE monthPeriod		VARCHAR(20);
	DECLARE lenSalesInvoiceNo	DECIMAL(10);
	
	SET year_period = (YEAR(new.sales_invoice_date));
	
	SET month_period = (SELECT RIGHT(CONCAT('0', MONTH(new.sales_invoice_date)), 2));
	
	IF (month_period) = '01' THEN 
		SET monthPeriod = 'I';
	END IF;
	
	IF (month_period) = '02' THEN 
		SET monthPeriod = 'II';
	END IF;
	
	IF (month_period) = '03' THEN 
		SET monthPeriod = 'III';
	END IF;
	
	IF (month_period) = '04' THEN 
		SET monthPeriod = 'IV';
	END IF;	
	
	IF (month_period) = '05' THEN 
		SET monthPeriod = 'V';
	END IF;
	
	IF (month_period) = '06' THEN 
		SET monthPeriod = 'VI';
	END IF;
	
	IF (month_period) = '07' THEN 
		SET monthPeriod = 'VII';
	END IF;
	
	IF (month_period) = '08' THEN 
		SET monthPeriod = 'VIII';
	END IF;
	
	IF (month_period) = '09' THEN 
		SET monthPeriod = 'IX';
	END IF;
	
	IF (month_period) = '10' THEN 
		SET monthPeriod = 'X';
	END IF;
	
	IF (month_period) = '11' THEN 
		SET monthPeriod = 'XI';
	END IF;
	
	IF (month_period) = '12' THEN 
		SET monthPeriod = 'XII';
	END IF;
		
	SET PERIOD = (SELECT LEFT(TRIM(sales_invoice_no), 4) 
			FROM sales_invoice
			WHERE RIGHT(TRIM(sales_invoice_no), 4) = year_period
			ORDER BY sales_invoice_id DESC 
			LIMIT 1);
		
	IF (PERIOD IS NULL ) THEN 
		SET PERIOD = "0000";
	END IF;
	
	SET tPeriod = CAST(PERIOD AS DECIMAL(10));
	
	SET tPeriod = tPeriod + 1;
	
	SET PERIOD = RIGHT(CONCAT('0000', TRIM(CAST(tPeriod AS CHAR(4)))), 4);
	
	SET nSalesInvoiceNo = CONCAT(PERIOD, '/SI/', monthPeriod, '/', year_period);
		
	SET new.sales_invoice_no = nSalesInvoiceNo;
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales_invoice_item`
--

CREATE TABLE `sales_invoice_item` (
  `sales_invoice_item_id` int(10) NOT NULL,
  `company_id` int(10) DEFAULT NULL,
  `sales_invoice_id` int(10) DEFAULT NULL,
  `item_category_id` int(10) DEFAULT NULL,
  `item_unit_id` int(10) DEFAULT NULL,
  `item_id` int(10) DEFAULT NULL,
  `quantity` varchar(225) DEFAULT NULL,
  `item_unit_price` varchar(225) DEFAULT NULL,
  `subtotal_amount` varchar(225) DEFAULT NULL,
  `discount_percentage` varchar(225) DEFAULT NULL,
  `discount_amount` varchar(225) DEFAULT NULL,
  `subtotal_amount_after_discount` varchar(225) DEFAULT NULL,
  `item_remark` varchar(250) DEFAULT NULL,
  `data_state` int(1) DEFAULT '0',
  `created_id` int(10) DEFAULT NULL,
  `updated_id` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sales_invoice_item`
--

INSERT INTO `sales_invoice_item` (`sales_invoice_item_id`, `company_id`, `sales_invoice_id`, `item_category_id`, `item_unit_id`, `item_id`, `quantity`, `item_unit_price`, `subtotal_amount`, `discount_percentage`, `discount_amount`, `subtotal_amount_after_discount`, `item_remark`, `data_state`, `created_id`, `updated_id`, `created_at`, `updated_at`) VALUES
(3, 2, 269, 24, 32, 108, '2', '16500', '33000', '0', '0', '33000', NULL, 0, 64, NULL, '2023-12-06 14:45:34', '2023-12-06 14:45:34'),
(4, 2, 269, 24, 33, 104, '1', '58000', '58000', '0', '0', '58000', NULL, 0, 64, NULL, '2023-12-06 14:45:34', '2023-12-06 14:45:34'),
(5, 2, 269, 24, 32, 107, '1', '25500', '25500', '0', '0', '25500', NULL, 0, 64, NULL, '2023-12-06 14:45:34', '2023-12-06 14:45:34'),
(6, 2, 270, 24, 33, 106, '1', '35000', '35000', '0', '0', '35000', NULL, 0, 64, NULL, '2023-12-06 14:46:44', '2023-12-06 14:46:44'),
(7, 2, 271, 24, 32, 108, '4', '16500', '66000', '0', '0', '66000', NULL, 0, 64, NULL, '2023-12-06 15:09:56', '2023-12-06 15:09:56'),
(8, 2, 272, 24, 33, 106, '1', '35000', '35000', '0', '0', '35000', NULL, 0, 64, NULL, '2023-12-08 09:49:49', '2023-12-08 09:49:49'),
(9, 2, 273, 24, 33, 104, '1', '58000', '58000', '0', '0', '58000', NULL, 0, 64, NULL, '2023-12-08 09:53:32', '2023-12-08 09:53:32'),
(10, 2, 273, 24, 32, 108, '6', '16500', '99000', '0', '0', '99000', NULL, 0, 64, NULL, '2023-12-08 09:53:32', '2023-12-08 09:53:32'),
(11, 2, 274, 24, 30, 109, '2', '14500', '29000', '0', '0', '29000', NULL, 0, 64, NULL, '2023-12-08 10:05:11', '2023-12-08 10:05:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `system_login_log`
--

CREATE TABLE `system_login_log` (
  `login_log_id` bigint(20) NOT NULL,
  `user_id` int(10) DEFAULT '0',
  `company_id` int(10) DEFAULT NULL,
  `log_time` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `system_login_log`
--

INSERT INTO `system_login_log` (`login_log_id`, `user_id`, `company_id`, `log_time`, `created_at`, `updated_at`) VALUES
(1, 64, 1, '2023-12-06 11:47:14', '2023-12-06 11:47:14', '2023-12-06 11:47:14'),
(2, 64, 2, '2023-12-06 11:49:24', '2023-12-06 11:49:24', '2023-12-06 11:49:24'),
(3, 64, 2, '2023-12-06 11:49:30', '2023-12-06 11:49:30', '2023-12-06 11:49:30'),
(4, 64, 2, '2023-12-06 11:57:48', '2023-12-06 11:57:48', '2023-12-06 11:57:48'),
(5, 64, 2, '2023-12-06 14:43:13', '2023-12-06 14:43:13', '2023-12-06 14:43:13'),
(6, 64, 2, '2023-12-06 14:47:22', '2023-12-06 14:47:22', '2023-12-06 14:47:22'),
(7, 64, 2, '2023-12-06 14:47:32', '2023-12-06 14:47:32', '2023-12-06 14:47:32'),
(8, 64, 2, '2023-12-06 15:05:56', '2023-12-06 15:05:56', '2023-12-06 15:05:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `system_log_user`
--

CREATE TABLE `system_log_user` (
  `user_log_id` bigint(20) NOT NULL,
  `user_id` int(10) DEFAULT '0',
  `username` varchar(50) DEFAULT '',
  `id_previllage` int(4) DEFAULT '0',
  `log_stat` enum('0','1') DEFAULT NULL,
  `class_name` varchar(250) DEFAULT '',
  `pk` varchar(20) DEFAULT '',
  `remark` varchar(50) DEFAULT NULL,
  `log_time` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `system_menu`
--

CREATE TABLE `system_menu` (
  `id_menu` varchar(10) NOT NULL,
  `id` varchar(100) DEFAULT NULL,
  `type` enum('folder','file','function') DEFAULT NULL,
  `indent_level` int(1) DEFAULT NULL,
  `text` varchar(50) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `system_menu`
--

INSERT INTO `system_menu` (`id_menu`, `id`, `type`, `indent_level`, `text`, `image`, `company_id`, `last_update`) VALUES
('', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-08 08:07:59'),
('0', 'home', 'file', 1, 'Beranda', NULL, NULL, '2022-06-14 03:01:03'),
('1', '#', 'folder', 1, 'Persediaan', NULL, NULL, '2022-06-14 03:07:14'),
('11', 'stock-adjustment', 'file', 2, 'Stok Penyesuaian', NULL, NULL, '2022-07-14 09:02:00'),
('13', 'stock-adjustment-report', 'file', 2, 'Laporan Stok Barang', NULL, NULL, '2022-07-14 09:03:00'),
('2', '#', 'folder', 1, 'Pembelian', NULL, NULL, '2022-06-14 03:47:13'),
('21', 'purchase-invoice', 'file', 2, 'Pembelian', NULL, NULL, '2022-07-14 09:03:20'),
('23', 'purchase-return', 'file', 2, 'Retur Pembelian', NULL, NULL, '2022-07-14 09:03:36'),
('24', '#', 'file', 2, 'Laporan Pembelian', NULL, NULL, '2022-06-14 04:00:04'),
('25', 'purchase-invoice-report', 'file', 3, 'Laporan Pembelian', NULL, NULL, '2022-06-27 06:33:10'),
('26', 'purchase-return-report', 'file', 3, 'Laporan Retur Pembelian', NULL, NULL, '2022-06-28 04:24:14'),
('27', 'purchase-invoice-by-item-report', 'file', 3, 'Laporan Pembelian by Produk', NULL, NULL, '2022-06-28 07:19:27'),
('3', '#', 'folder', 1, 'Penjualan', NULL, NULL, '2022-06-14 04:06:55'),
('31', 'sales-invoice', 'file', 2, 'Penjualan', NULL, NULL, '2022-07-14 09:03:53'),
('32', 'sales-customer', 'file', 2, 'Pelanggan', NULL, NULL, '2022-07-18 07:41:40'),
('33', '#', 'file', 2, 'Laporan Penjualan', NULL, NULL, '2022-07-18 07:40:18'),
('34', 'sales-invoice-report', 'file', 3, 'Laporan Penjualan', NULL, NULL, '2022-07-18 07:40:12'),
('35', 'sales-invoice-by-item-report', 'file', 3, 'Laporan Penjualan by Produk', NULL, NULL, '2022-07-18 07:40:09'),
('36', 'sales-invoice-by-item-report/not-sold', 'file', 3, 'Laporan Produk Tidak Terjual', NULL, NULL, '2022-07-18 07:40:06'),
('37', 'sales-invoice-by-user-report', 'file', 3, 'Laporan Penjualan by User', NULL, NULL, '2022-07-18 07:40:00'),
('38', 'sales-invoice-by-year-report', 'file', 3, 'Laporan Penjualan Tahunan', NULL, NULL, '2022-07-18 07:39:53'),
('4', '#', 'folder', 1, 'Keuangan', NULL, NULL, '2022-06-14 04:15:12'),
('40', '#', 'file', 2, 'Preferensi', NULL, NULL, '2022-06-14 04:16:15'),
('41', 'acct-account', 'file', 3, 'No. Perkiraan', NULL, NULL, '2022-07-05 06:09:24'),
('42', 'acct-account-setting', 'file', 3, 'Setting Jurnal', NULL, NULL, '2022-07-06 08:55:26'),
('46', '#', 'file', 2, 'Laporan', NULL, NULL, '2022-06-14 04:20:35'),
('48', 'cash-disbursement-report', 'file', 3, 'Laporan Pengeluaran', NULL, NULL, '2023-03-11 04:05:50'),
('49', 'profit-loss-report', 'file', 3, 'Laporan Keuangan', NULL, NULL, '2022-07-18 03:11:51'),
('490', 'profit-loss-year-report', 'file', 3, 'Laporan Keuangan Tahunan', NULL, NULL, '2023-03-11 04:06:01'),
('491', 'journal-voucher', 'file', 2, 'Jurnal Umum', NULL, NULL, '2022-07-11 06:52:38'),
('492', 'journal-memorial', 'file', 2, 'Jurnal Memorial', NULL, NULL, '2022-07-13 09:48:28'),
('493', 'ledger-report', 'file', 2, 'Buku Besar', NULL, NULL, '2022-07-13 09:48:36'),
('7', '#', 'folder', 1, 'Preferensi', NULL, NULL, '2022-07-08 08:06:39'),
('70', '#', 'file', 2, 'Preferensi Barang', NULL, NULL, '2022-07-08 08:06:42'),
('71', 'item-unit', 'file', 3, 'Preferensi Satuan Barang', NULL, NULL, '2022-07-08 08:06:49'),
('72', 'item-category', 'file', 3, 'Kategori Barang', NULL, NULL, '2022-07-08 08:06:52'),
('73', 'item', 'file', 3, 'Barang', NULL, NULL, '2022-07-08 08:06:56'),
('74', 'warehouse', 'file', 3, 'Gudang', NULL, NULL, '2022-07-08 08:06:59'),
('75', '#', 'file', 2, 'Set Up Data', NULL, NULL, '2022-07-08 08:07:02'),
('76', 'system-user-group', 'file', 3, 'User Group', NULL, NULL, '2022-07-08 08:07:05'),
('77', 'system-user', 'file', 3, 'User', NULL, NULL, '2022-07-08 08:07:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `system_menu_mapping`
--

CREATE TABLE `system_menu_mapping` (
  `menu_mapping_id` int(10) NOT NULL,
  `company_id` int(10) DEFAULT NULL,
  `user_group_level` int(3) DEFAULT NULL,
  `id_menu` varchar(10) DEFAULT NULL,
  `data_state` int(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `system_menu_mapping`
--

INSERT INTO `system_menu_mapping` (`menu_mapping_id`, `company_id`, `user_group_level`, `id_menu`, `data_state`, `created_at`, `updated_at`) VALUES
(161, 1, 1, '0', 0, '2022-08-01 15:49:49', '2023-02-28 09:17:41'),
(163, 1, 1, '1', 0, '2022-08-01 15:49:49', '2023-02-28 09:17:43'),
(164, 1, 1, '11', 0, '2022-08-01 15:49:49', '2023-02-28 09:17:43'),
(165, 1, 1, '13', 0, '2022-08-01 15:49:49', '2023-02-28 09:17:43'),
(166, 1, 1, '2', 0, '2022-08-01 15:49:49', '2023-02-28 09:17:43'),
(167, 1, 1, '21', 0, '2022-08-01 15:49:49', '2023-02-28 09:17:43'),
(168, 1, 1, '23', 0, '2022-08-01 15:49:49', '2023-02-28 09:17:43'),
(169, 1, 1, '24', 0, '2022-08-01 15:49:49', '2023-02-28 09:17:44'),
(170, 1, 1, '25', 0, '2022-08-01 15:49:49', '2023-02-28 09:17:44'),
(171, 1, 1, '26', 0, '2022-08-01 15:49:49', '2023-02-28 09:17:44'),
(172, 1, 1, '27', 0, '2022-08-01 15:49:49', '2023-02-28 09:17:44'),
(173, 1, 1, '3', 0, '2022-08-01 15:49:49', '2023-02-28 09:17:44'),
(174, 1, 1, '31', 0, '2022-08-01 15:49:49', '2023-02-28 09:17:45'),
(175, 1, 1, '32', 0, '2022-08-01 15:49:49', '2023-02-28 09:17:48'),
(176, 1, 1, '33', 0, '2022-08-01 15:49:49', '2023-02-28 09:18:00'),
(177, 1, 1, '34', 0, '2022-08-01 15:49:49', '2023-02-28 09:18:00'),
(178, 1, 1, '35', 0, '2022-08-01 15:49:49', '2023-02-28 09:18:00'),
(179, 1, 1, '36', 0, '2022-08-01 15:49:49', '2023-02-28 09:17:59'),
(180, 1, 1, '37', 0, '2022-08-01 15:49:49', '2023-02-28 09:17:59'),
(181, 1, 1, '38', 0, '2022-08-01 15:49:49', '2023-02-28 09:17:59'),
(182, 1, 1, '4', 0, '2022-08-01 15:49:49', '2023-02-28 09:17:59'),
(183, 1, 1, '40', 0, '2022-08-01 15:49:49', '2023-02-28 09:17:59'),
(184, 1, 1, '41', 0, '2022-08-01 15:49:49', '2023-02-28 09:17:58'),
(185, 1, 1, '42', 0, '2022-08-01 15:49:49', '2023-02-28 09:17:58'),
(186, 1, 1, '46', 0, '2022-08-01 15:49:49', '2023-02-28 09:17:58'),
(187, 1, 1, '48', 0, '2022-08-01 15:49:49', '2023-02-28 09:17:56'),
(188, 1, 1, '49', 0, '2022-08-01 15:49:49', '2023-02-28 09:17:56'),
(189, 1, 1, '490', 0, '2022-08-01 15:49:49', '2023-02-28 09:17:56'),
(190, 1, 1, '491', 0, '2022-08-01 15:49:49', '2023-02-28 09:17:57'),
(191, 1, 1, '492', 0, '2022-08-01 15:49:49', '2023-02-28 09:17:55'),
(192, 1, 1, '493', 0, '2022-08-01 15:49:49', '2023-02-28 09:17:55'),
(193, 1, 1, '7', 0, '2022-08-01 15:49:49', '2023-02-28 09:17:55'),
(194, 1, 1, '70', 0, '2022-08-01 15:49:49', '2023-02-28 09:17:55'),
(195, 1, 1, '71', 0, '2022-08-01 15:49:49', '2023-02-28 09:17:55'),
(196, 1, 1, '72', 0, '2022-08-01 15:49:49', '2023-02-28 09:17:55'),
(197, 1, 1, '73', 0, '2022-08-01 15:49:49', '2023-02-28 09:17:53'),
(198, 1, 1, '74', 0, '2022-08-01 15:49:49', '2023-02-28 09:17:52'),
(199, 1, 1, '75', 0, '2022-08-01 15:49:49', '2023-02-28 09:17:52'),
(200, 1, 1, '76', 0, '2022-08-01 15:49:49', '2023-02-28 09:17:54'),
(201, 1, 1, '77', 0, '2022-08-01 15:49:49', '2023-02-28 09:17:52'),
(203, 2, 1, '0', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:35'),
(204, 2, 1, '1', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:37'),
(205, 2, 1, '11', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:36'),
(206, 2, 1, '13', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:36'),
(207, 2, 1, '2', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:36'),
(208, 2, 1, '21', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:36'),
(209, 2, 1, '23', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:39'),
(210, 2, 1, '24', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:39'),
(211, 2, 1, '25', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:39'),
(212, 2, 1, '26', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:39'),
(213, 2, 1, '27', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:39'),
(214, 2, 1, '3', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:40'),
(215, 2, 1, '31', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:40'),
(216, 2, 1, '32', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:40'),
(217, 2, 1, '33', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:40'),
(218, 2, 1, '34', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:40'),
(219, 2, 1, '35', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:41'),
(220, 2, 1, '36', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:52'),
(221, 2, 1, '37', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:53'),
(222, 2, 1, '38', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:53'),
(223, 2, 1, '4', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:48'),
(224, 2, 1, '40', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:48'),
(225, 2, 1, '41', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:49'),
(226, 2, 1, '42', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:48'),
(227, 2, 1, '46', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:47'),
(228, 2, 1, '48', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:47'),
(229, 2, 1, '49', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:47'),
(230, 2, 1, '490', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:47'),
(231, 2, 1, '491', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:47'),
(232, 2, 1, '492', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:46'),
(233, 2, 1, '493', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:46'),
(234, 2, 1, '7', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:46'),
(235, 2, 1, '70', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:46'),
(236, 2, 1, '71', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:46'),
(237, 2, 1, '72', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:45'),
(238, 2, 1, '73', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:45'),
(239, 2, 1, '74', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:45'),
(240, 2, 1, '75', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:45'),
(241, 2, 1, '76', 0, '2023-02-28 16:05:34', '2023-02-28 09:06:45'),
(242, 2, 1, '77', 0, '2023-02-28 16:05:35', '2023-02-28 09:06:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `system_user`
--

CREATE TABLE `system_user` (
  `user_id` int(10) NOT NULL,
  `company_id` int(10) DEFAULT NULL,
  `user_group_id` int(3) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT '',
  `name` varchar(255) DEFAULT '',
  `phone_number` varchar(255) DEFAULT '',
  `branch_id` int(1) DEFAULT '0',
  `section_id` int(10) DEFAULT '0',
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `data_state` int(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `system_user`
--

INSERT INTO `system_user` (`user_id`, `company_id`, `user_group_id`, `full_name`, `name`, `phone_number`, `branch_id`, `section_id`, `email`, `email_verified_at`, `password`, `remember_token`, `data_state`, `created_at`, `updated_at`) VALUES
(55, 1, 1, 'Administrator', 'administrator', '081212124566', 0, 0, NULL, '2022-06-14 02:36:00', '$2y$10$9gd7/ooHSdUWjPaTqO5f1OTMJzVHmejSgsEzxqLwzcq4693ZPZSBS', NULL, 0, '2022-07-13 02:36:10', '2023-02-28 07:39:55'),
(57, 2, 4, 'Administrator', 'admin', '-', 0, 0, NULL, '2023-02-28 07:20:40', '$2y$10$NSgrlZwX0j7sjjyH/FHaauYLoI/OluGnJwrK2TgCzacyIbbcB6Di6', NULL, 0, '2022-07-13 02:36:20', '2022-07-13 02:36:22'),
(64, 2, 8, 'user', 'user', '088', 0, 1, NULL, NULL, '$2y$10$uZyMqCVTXrlyCEpvF1BzE.9gqC7Rv0TcbgqvWMUfc32uo0TqYCmWm', NULL, 0, '2023-12-06 03:19:08', '2023-12-06 03:19:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `system_user_group`
--

CREATE TABLE `system_user_group` (
  `user_group_id` int(3) NOT NULL,
  `company_id` int(10) DEFAULT NULL,
  `user_group_level` int(11) DEFAULT NULL,
  `user_group_name` varchar(50) DEFAULT NULL,
  `user_group_token` varchar(250) DEFAULT '',
  `data_state` int(1) DEFAULT '0',
  `created_id` int(10) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_id` int(10) DEFAULT '0',
  `updated_on` datetime DEFAULT NULL,
  `deleted_id` int(10) DEFAULT '0',
  `deleted_on` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `system_user_group`
--

INSERT INTO `system_user_group` (`user_group_id`, `company_id`, `user_group_level`, `user_group_name`, `user_group_token`, `data_state`, `created_id`, `created_at`, `updated_id`, `updated_on`, `deleted_id`, `deleted_on`, `updated_at`) VALUES
(1, 1, 1, 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 02:04:46'),
(2, 1, 99, 'Guest', '', 0, 0, '2022-08-01 15:49:49', 0, NULL, 0, NULL, '2022-08-01 08:50:05'),
(4, 2, 1, 'Administrator', '', 0, 0, NULL, 0, NULL, 0, NULL, '2022-07-05 03:54:40'),
(7, 1, 1, 'Guest', '', 1, 0, '2022-08-01 15:30:08', 0, NULL, 0, NULL, '2022-08-01 08:43:29'),
(8, 1, 1, 'Administrator', '', 0, 0, '2022-08-01 15:44:01', 0, NULL, 0, NULL, '2022-08-01 08:44:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `acct_account`
--
ALTER TABLE `acct_account`
  ADD PRIMARY KEY (`account_id`);

--
-- Indeks untuk tabel `acct_account_balance`
--
ALTER TABLE `acct_account_balance`
  ADD PRIMARY KEY (`account_balance_id`);

--
-- Indeks untuk tabel `acct_account_balance_detail`
--
ALTER TABLE `acct_account_balance_detail`
  ADD PRIMARY KEY (`account_balance_detail_id`);

--
-- Indeks untuk tabel `acct_account_setting`
--
ALTER TABLE `acct_account_setting`
  ADD PRIMARY KEY (`account_setting_id`),
  ADD KEY `FK_account_id` (`account_id`);

--
-- Indeks untuk tabel `acct_journal_voucher`
--
ALTER TABLE `acct_journal_voucher`
  ADD PRIMARY KEY (`journal_voucher_id`);

--
-- Indeks untuk tabel `acct_journal_voucher_item`
--
ALTER TABLE `acct_journal_voucher_item`
  ADD PRIMARY KEY (`journal_voucher_item_id`),
  ADD KEY `Fk_journal_voucher` (`journal_voucher_id`);

--
-- Indeks untuk tabel `acct_profit_loss_report`
--
ALTER TABLE `acct_profit_loss_report`
  ADD PRIMARY KEY (`profit_loss_report_id`);

--
-- Indeks untuk tabel `capital_money`
--
ALTER TABLE `capital_money`
  ADD PRIMARY KEY (`capital_money_id`);

--
-- Indeks untuk tabel `core_section`
--
ALTER TABLE `core_section`
  ADD PRIMARY KEY (`section_id`);

--
-- Indeks untuk tabel `expenditure`
--
ALTER TABLE `expenditure`
  ADD PRIMARY KEY (`expenditure_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `invt_item`
--
ALTER TABLE `invt_item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `FK_category_id` (`item_category_id`),
  ADD KEY `FK_item_unit_id` (`item_unit_id`);

--
-- Indeks untuk tabel `invt_item_category`
--
ALTER TABLE `invt_item_category`
  ADD PRIMARY KEY (`item_category_id`);

--
-- Indeks untuk tabel `invt_item_stock`
--
ALTER TABLE `invt_item_stock`
  ADD PRIMARY KEY (`item_stock_id`),
  ADD KEY `FK_item_id_stock` (`item_id`),
  ADD KEY `FK_item_category_stock` (`item_category_id`),
  ADD KEY `Fk_warehouse_id_stock` (`warehouse_id`),
  ADD KEY `FK_item_unit_id_stock` (`item_unit_id`);

--
-- Indeks untuk tabel `invt_item_unit`
--
ALTER TABLE `invt_item_unit`
  ADD PRIMARY KEY (`item_unit_id`);

--
-- Indeks untuk tabel `invt_stock_adjustment`
--
ALTER TABLE `invt_stock_adjustment`
  ADD PRIMARY KEY (`stock_adjustment_id`),
  ADD KEY `FK_warehouse_adjustment` (`warehouse_id`);

--
-- Indeks untuk tabel `invt_stock_adjustment_item`
--
ALTER TABLE `invt_stock_adjustment_item`
  ADD PRIMARY KEY (`stock_adjustment_item_id`),
  ADD KEY `FK_item_id_stock_item` (`item_id`),
  ADD KEY `FK_category_id_stock_item` (`item_category_id`),
  ADD KEY `FK_unit_id_stock_item` (`item_unit_id`),
  ADD KEY `FK_adjustment_id` (`stock_adjustment_id`);

--
-- Indeks untuk tabel `invt_warehouse`
--
ALTER TABLE `invt_warehouse`
  ADD PRIMARY KEY (`warehouse_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `preference_company`
--
ALTER TABLE `preference_company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indeks untuk tabel `preference_transaction_module`
--
ALTER TABLE `preference_transaction_module`
  ADD PRIMARY KEY (`transaction_module_id`);

--
-- Indeks untuk tabel `purchase_invoice`
--
ALTER TABLE `purchase_invoice`
  ADD PRIMARY KEY (`purchase_invoice_id`),
  ADD KEY `FK_warehouse_id_purchase_invoice` (`warehouse_id`);

--
-- Indeks untuk tabel `purchase_invoice_item`
--
ALTER TABLE `purchase_invoice_item`
  ADD PRIMARY KEY (`purchase_invoice_item_id`),
  ADD KEY `Fk_category_purchase_invoice` (`item_category_id`),
  ADD KEY `Fk_item_unit_purchase_invoice` (`item_unit_id`),
  ADD KEY `Fk_item_purchase_invoice` (`item_id`),
  ADD KEY `Fk_purchase_invoice_id` (`purchase_invoice_id`);

--
-- Indeks untuk tabel `purchase_return`
--
ALTER TABLE `purchase_return`
  ADD PRIMARY KEY (`purchase_return_id`),
  ADD KEY `Fk_warehouse_id` (`warehouse_id`);

--
-- Indeks untuk tabel `purchase_return_item`
--
ALTER TABLE `purchase_return_item`
  ADD PRIMARY KEY (`purchase_item_id`),
  ADD KEY `FK_Purchase_return_id` (`purchase_return_id`);

--
-- Indeks untuk tabel `sales_customer`
--
ALTER TABLE `sales_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indeks untuk tabel `sales_invoice`
--
ALTER TABLE `sales_invoice`
  ADD PRIMARY KEY (`sales_invoice_id`);

--
-- Indeks untuk tabel `sales_invoice_item`
--
ALTER TABLE `sales_invoice_item`
  ADD PRIMARY KEY (`sales_invoice_item_id`),
  ADD KEY `FK_sales_invoice_item` (`item_id`),
  ADD KEY `FK_sales_invoice_category` (`item_category_id`),
  ADD KEY `FK_sales_invoice_unit` (`item_unit_id`),
  ADD KEY `FK_sales_invoice_id` (`sales_invoice_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `system_login_log`
--
ALTER TABLE `system_login_log`
  ADD PRIMARY KEY (`login_log_id`);

--
-- Indeks untuk tabel `system_log_user`
--
ALTER TABLE `system_log_user`
  ADD PRIMARY KEY (`user_log_id`);

--
-- Indeks untuk tabel `system_menu`
--
ALTER TABLE `system_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `system_menu_mapping`
--
ALTER TABLE `system_menu_mapping`
  ADD PRIMARY KEY (`menu_mapping_id`),
  ADD KEY `FK_system_menu_mapping_id_menu` (`id_menu`);

--
-- Indeks untuk tabel `system_user`
--
ALTER TABLE `system_user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `fk_system_user_user_group_id` (`user_group_id`);

--
-- Indeks untuk tabel `system_user_group`
--
ALTER TABLE `system_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `acct_account`
--
ALTER TABLE `acct_account`
  MODIFY `account_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `acct_account_balance`
--
ALTER TABLE `acct_account_balance`
  MODIFY `account_balance_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `acct_account_balance_detail`
--
ALTER TABLE `acct_account_balance_detail`
  MODIFY `account_balance_detail_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `acct_account_setting`
--
ALTER TABLE `acct_account_setting`
  MODIFY `account_setting_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=376;

--
-- AUTO_INCREMENT untuk tabel `acct_journal_voucher`
--
ALTER TABLE `acct_journal_voucher`
  MODIFY `journal_voucher_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=389;

--
-- AUTO_INCREMENT untuk tabel `acct_journal_voucher_item`
--
ALTER TABLE `acct_journal_voucher_item`
  MODIFY `journal_voucher_item_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `acct_profit_loss_report`
--
ALTER TABLE `acct_profit_loss_report`
  MODIFY `profit_loss_report_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `capital_money`
--
ALTER TABLE `capital_money`
  MODIFY `capital_money_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `core_section`
--
ALTER TABLE `core_section`
  MODIFY `section_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `expenditure`
--
ALTER TABLE `expenditure`
  MODIFY `expenditure_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `invt_item`
--
ALTER TABLE `invt_item`
  MODIFY `item_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT untuk tabel `invt_item_category`
--
ALTER TABLE `invt_item_category`
  MODIFY `item_category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `invt_item_stock`
--
ALTER TABLE `invt_item_stock`
  MODIFY `item_stock_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `invt_item_unit`
--
ALTER TABLE `invt_item_unit`
  MODIFY `item_unit_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `invt_stock_adjustment`
--
ALTER TABLE `invt_stock_adjustment`
  MODIFY `stock_adjustment_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `invt_stock_adjustment_item`
--
ALTER TABLE `invt_stock_adjustment_item`
  MODIFY `stock_adjustment_item_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `invt_warehouse`
--
ALTER TABLE `invt_warehouse`
  MODIFY `warehouse_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `preference_company`
--
ALTER TABLE `preference_company`
  MODIFY `company_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `preference_transaction_module`
--
ALTER TABLE `preference_transaction_module`
  MODIFY `transaction_module_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `purchase_invoice`
--
ALTER TABLE `purchase_invoice`
  MODIFY `purchase_invoice_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `purchase_invoice_item`
--
ALTER TABLE `purchase_invoice_item`
  MODIFY `purchase_invoice_item_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `purchase_return`
--
ALTER TABLE `purchase_return`
  MODIFY `purchase_return_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `purchase_return_item`
--
ALTER TABLE `purchase_return_item`
  MODIFY `purchase_item_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sales_customer`
--
ALTER TABLE `sales_customer`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sales_invoice`
--
ALTER TABLE `sales_invoice`
  MODIFY `sales_invoice_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- AUTO_INCREMENT untuk tabel `sales_invoice_item`
--
ALTER TABLE `sales_invoice_item`
  MODIFY `sales_invoice_item_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `system_login_log`
--
ALTER TABLE `system_login_log`
  MODIFY `login_log_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `system_log_user`
--
ALTER TABLE `system_log_user`
  MODIFY `user_log_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `system_menu_mapping`
--
ALTER TABLE `system_menu_mapping`
  MODIFY `menu_mapping_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT untuk tabel `system_user`
--
ALTER TABLE `system_user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT untuk tabel `system_user_group`
--
ALTER TABLE `system_user_group`
  MODIFY `user_group_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `acct_account_setting`
--
ALTER TABLE `acct_account_setting`
  ADD CONSTRAINT `FK_account_id` FOREIGN KEY (`account_id`) REFERENCES `acct_account` (`account_id`);

--
-- Ketidakleluasaan untuk tabel `acct_journal_voucher_item`
--
ALTER TABLE `acct_journal_voucher_item`
  ADD CONSTRAINT `Fk_journal_voucher` FOREIGN KEY (`journal_voucher_id`) REFERENCES `acct_journal_voucher` (`journal_voucher_id`);

--
-- Ketidakleluasaan untuk tabel `invt_item`
--
ALTER TABLE `invt_item`
  ADD CONSTRAINT `FK_category_id` FOREIGN KEY (`item_category_id`) REFERENCES `invt_item_category` (`item_category_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_item_unit_id` FOREIGN KEY (`item_unit_id`) REFERENCES `invt_item_unit` (`item_unit_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `invt_item_stock`
--
ALTER TABLE `invt_item_stock`
  ADD CONSTRAINT `FK_item_category_stock` FOREIGN KEY (`item_category_id`) REFERENCES `invt_item_category` (`item_category_id`),
  ADD CONSTRAINT `FK_item_id_stock` FOREIGN KEY (`item_id`) REFERENCES `invt_item` (`item_id`),
  ADD CONSTRAINT `FK_item_unit_id_stock` FOREIGN KEY (`item_unit_id`) REFERENCES `invt_item_unit` (`item_unit_id`),
  ADD CONSTRAINT `Fk_warehouse_id_stock` FOREIGN KEY (`warehouse_id`) REFERENCES `invt_warehouse` (`warehouse_id`);

--
-- Ketidakleluasaan untuk tabel `invt_stock_adjustment`
--
ALTER TABLE `invt_stock_adjustment`
  ADD CONSTRAINT `FK_warehouse_adjustment` FOREIGN KEY (`warehouse_id`) REFERENCES `invt_warehouse` (`warehouse_id`);

--
-- Ketidakleluasaan untuk tabel `invt_stock_adjustment_item`
--
ALTER TABLE `invt_stock_adjustment_item`
  ADD CONSTRAINT `FK_adjustment_id` FOREIGN KEY (`stock_adjustment_id`) REFERENCES `invt_stock_adjustment` (`stock_adjustment_id`),
  ADD CONSTRAINT `FK_category_id_stock_item` FOREIGN KEY (`item_category_id`) REFERENCES `invt_item_category` (`item_category_id`),
  ADD CONSTRAINT `FK_item_id_stock_item` FOREIGN KEY (`item_id`) REFERENCES `invt_item` (`item_id`),
  ADD CONSTRAINT `FK_unit_id_stock_item` FOREIGN KEY (`item_unit_id`) REFERENCES `invt_item_unit` (`item_unit_id`);

--
-- Ketidakleluasaan untuk tabel `purchase_invoice`
--
ALTER TABLE `purchase_invoice`
  ADD CONSTRAINT `FK_warehouse_id_purchase_invoice` FOREIGN KEY (`warehouse_id`) REFERENCES `invt_warehouse` (`warehouse_id`);

--
-- Ketidakleluasaan untuk tabel `purchase_invoice_item`
--
ALTER TABLE `purchase_invoice_item`
  ADD CONSTRAINT `Fk_category_purchase_invoice` FOREIGN KEY (`item_category_id`) REFERENCES `invt_item_category` (`item_category_id`),
  ADD CONSTRAINT `Fk_item_purchase_invoice` FOREIGN KEY (`item_id`) REFERENCES `invt_item` (`item_id`),
  ADD CONSTRAINT `Fk_item_unit_purchase_invoice` FOREIGN KEY (`item_unit_id`) REFERENCES `invt_item_unit` (`item_unit_id`),
  ADD CONSTRAINT `Fk_purchase_invoice_id` FOREIGN KEY (`purchase_invoice_id`) REFERENCES `purchase_invoice` (`purchase_invoice_id`);

--
-- Ketidakleluasaan untuk tabel `purchase_return`
--
ALTER TABLE `purchase_return`
  ADD CONSTRAINT `Fk_warehouse_id` FOREIGN KEY (`warehouse_id`) REFERENCES `invt_warehouse` (`warehouse_id`);

--
-- Ketidakleluasaan untuk tabel `purchase_return_item`
--
ALTER TABLE `purchase_return_item`
  ADD CONSTRAINT `FK_Purchase_return_id` FOREIGN KEY (`purchase_return_id`) REFERENCES `purchase_return` (`purchase_return_id`);

--
-- Ketidakleluasaan untuk tabel `sales_invoice_item`
--
ALTER TABLE `sales_invoice_item`
  ADD CONSTRAINT `FK_sales_invoice_category` FOREIGN KEY (`item_category_id`) REFERENCES `invt_item_category` (`item_category_id`),
  ADD CONSTRAINT `FK_sales_invoice_id` FOREIGN KEY (`sales_invoice_id`) REFERENCES `sales_invoice` (`sales_invoice_id`),
  ADD CONSTRAINT `FK_sales_invoice_item` FOREIGN KEY (`item_id`) REFERENCES `invt_item` (`item_id`),
  ADD CONSTRAINT `FK_sales_invoice_unit` FOREIGN KEY (`item_unit_id`) REFERENCES `invt_item_unit` (`item_unit_id`);

--
-- Ketidakleluasaan untuk tabel `system_menu_mapping`
--
ALTER TABLE `system_menu_mapping`
  ADD CONSTRAINT `FK_system_menu_mapping_id_menu` FOREIGN KEY (`id_menu`) REFERENCES `system_menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `system_user`
--
ALTER TABLE `system_user`
  ADD CONSTRAINT `fk_system_user_user_group_id` FOREIGN KEY (`user_group_id`) REFERENCES `system_user_group` (`user_group_id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql_db.local
-- Generation Time: Aug 02, 2024 at 08:03 AM
-- Server version: 5.7.44
-- PHP Version: 8.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `accadify`
--

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `id` int(11) NOT NULL,
  `batchLabel` varchar(500) NOT NULL,
  `batchid` varchar(50) NOT NULL,
  `sectionCC` text NOT NULL,
  `faculty` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `collegeid` varchar(15) NOT NULL,
  `depid` varchar(15) NOT NULL,
  `olddepid` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`id`, `batchLabel`, `batchid`, `sectionCC`, `faculty`, `collegeid`, `depid`, `olddepid`) VALUES
(78, 'B. Pharma  - 2023-2027', 'CCP669f31cfcd371', '{}', '{}', '64ed7eada8457', 'mpharmaasm61', ''),
(83, 'B. Pharma - 2022-2026', 'CCP669f359e65845', '{}', '{}', '64ed7eada8457', 'mpharmaasm61', ''),
(92, 'Pharm D - 2024-2030', 'CCP66a0a3782ec04', '{}', '{}', '64ed7eada8457', 'pharmdasm43', '');

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

CREATE TABLE `colleges` (
  `id` int(11) NOT NULL,
  `label` varchar(10) NOT NULL,
  `collegeid` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`id`, `label`, `collegeid`) VALUES
(1, 'CCP', '64ed7eada8457');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `label` varchar(50) NOT NULL,
  `depid` varchar(15) NOT NULL,
  `collegeid` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `label`, `depid`, `collegeid`) VALUES
(1, 'B. Pharma', 'mpharmaasm61', '64ed7eada8457'),
(24, 'MPH - P\'ceutics\n', 'mpharmaxyq61', '64ed7eada8457'),
(25, 'MPH - P\'cology', 'mpharmaxy62', '64ed7eada8457'),
(26, 'MPH - RA', 'mpharmapm61', '64ed7eada8457'),
(27, 'MPH - PP', 'mpharmabyz61', '64ed7eada8457'),
(28, 'Pharm D', 'pharmdasm43', '64ed7eada8457');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `studid` varchar(100) NOT NULL,
  `batchid` varchar(100) NOT NULL,
  `sectionid` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `bloodgrp` varchar(10) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `dep` varchar(50) NOT NULL,
  `college` varchar(50) NOT NULL,
  `classroll` varchar(100) NOT NULL,
  `uniroll` varchar(100) NOT NULL,
  `studemail` varchar(50) NOT NULL,
  `parentemail` varchar(50) DEFAULT NULL,
  `fname` varchar(70) NOT NULL,
  `mname` varchar(70) NOT NULL,
  `category` varchar(50) NOT NULL,
  `mno` varchar(20) NOT NULL,
  `mano` varchar(20) DEFAULT NULL,
  `wno` varchar(20) NOT NULL,
  `permaddr` varchar(100) NOT NULL,
  `localaddr` varchar(100) DEFAULT NULL,
  `state` varchar(70) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `hosteldetails` varchar(200) DEFAULT NULL,
  `parentsworkdetails` varchar(250) DEFAULT NULL,
  `loandetails` varchar(100) DEFAULT NULL,
  `unhealthyhabits` varchar(100) DEFAULT NULL,
  `marksinschool` varchar(100) NOT NULL,
  `aimofedu` varchar(100) DEFAULT NULL,
  `personaltraits` varchar(150) DEFAULT NULL,
  `natureofstudent` varchar(150) DEFAULT NULL,
  `initcommskill` varchar(150) DEFAULT NULL,
  `dues` text NOT NULL,
  `marks` text NOT NULL,
  `totalattendance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `studid`, `batchid`, `sectionid`, `name`, `semester`, `bloodgrp`, `dob`, `dep`, `college`, `classroll`, `uniroll`, `studemail`, `parentemail`, `fname`, `mname`, `category`, `mno`, `mano`, `wno`, `permaddr`, `localaddr`, `state`, `district`, `hosteldetails`, `parentsworkdetails`, `loandetails`, `unhealthyhabits`, `marksinschool`, `aimofedu`, `personaltraits`, `natureofstudent`, `initcommskill`, `dues`, `marks`, `totalattendance`) VALUES
(1, '20aam66a0d3a73d88b', 'CCP669f31cfcd371', '1-1', 'Aamir Mohi ud din war', '8', 'B+', '37206', 'B.Pharmacy', '1', '2014815', '2014815', 'aamirwar421@gmail.com', 'ghmohiuddinwar2@gmail.com', 'Ghulam Mohi ud din war', 'Rafeeqa Begum', 'OBC', '6006382475', '8899994738', '6006382475', 'Magam Handwara Kashmir', '#66, Landran', 'J&K', 'Kupwara', '{\"hosteler\":\"No\",\"roomno\":\"NA\",\"hostelname\":\"NA\"}', '{\"parentoccupation\":\"Farmer\",\"parannualincome\":\"3LPA\"}', '{\"loanstatus\":\"No\",\"loanamount\":\"No\"}', 'No', '[\"0.806\",\"0.88\"]', 'Business', 'Introvert', '[\"0\",\"0\",\"0\"]', 'Good', '{}', '{}', 0),
(2, '20aas66a0d3a73d89a', 'CCP669f31cfcd371', '1-1', 'Aastha ', '8', 'B+', '37051', 'B.Pharmacy', '1', '2014816', '2014816', 'aastha2956@gmail.com', '', 'Amit Sharma', 'Anita Bhardwaj', 'GEN', '9053855240', '', '9053855240', 'Hno. 227 old HBC Jind Haryana', 'purab premium apartments', 'Haryana', 'Jind', '{\"hosteler\":\"No\",\"roomno\":\"NA\",\"hostelname\":\"NA\"}', '{\"parentoccupation\":\"Businessman\",\"parannualincome\":\"4lpa\"}', '{\"loanstatus\":\"No\",\"loanamount\":\"No\"}', 'No', '[\"86.5\",\"64\"]', 'Business', 'lack of confidence', '[\"0\",\"0\",\"0\"]', 'Good', '{}', '{}', 0),
(3, '20abh66a0d3a73d8a4', 'CCP669f31cfcd371', '1-1', 'Abhinav Chaudhary', '8', 'A+', '37805', 'B.Pharmacy', '1', '2014817', '2014817', 'chaudharyabhinav732003@gmail.com', 'mlchaudhary20@gmail.com', 'Madan Lal', 'Raksha Devi', 'GEN', '8894986500', '9418551151', '8894986500', 'VPO Guglehar Tehsil Ghanari District Una HP 177208', '#3292/3, Aakash Housing Welfare Society, Sector 44D Chandigarh (160047)', 'Himachal Pradesh', 'Una', '{\"hosteler\":\"No\",\"roomno\":\"NA\",\"hostelname\":\"NA\"}', '{\"parentoccupation\":\"Retired govt employee\",\"parannualincome\":\"6 Lac\"}', '{\"loanstatus\":\"No\",\"loanamount\":\"No\"}', 'No', '[\"0.87\",\"0.786\"]', 'Pharmacist', 'Weak Handwriting Skills', '[\"0\",\"0\",\"0\"]', 'Good', '{}', '{}', 0),
(4, '20ada66a0d3a73d8ad', 'CCP669f359e65845', '1-1', 'Adarsh ', '8', 'B+', '28/03/2002', 'B.Pharmacy', '1', '2014819', '2014819', 'ak6167013@gmail.com', '', 'Suresh Kumar', 'kusum Lata', 'GEN', '9915371599', '8847315542', '9915371599', '#219 Barmajra mohali', 'same', 'Punjab', 'mohali', '{\"hosteler\":\"No\",\"roomno\":\"NA\",\"hostelname\":\"NA\"}', '{\"parentoccupation\":\"businessman\",\"parannualincome\":\"9Lpa\"}', '{\"loanstatus\":\"no\",\"loanamount\":\"no\"}', 'nil', '[\"0.67\",\"71\"]', 'pharmacist', 'handwriting', '[\"0\",\"0\",\"0\"]', 'Good', '{}', '{}', 0),
(5, '20adi66a0d3a73d8b5', 'CCP669f359e65845', '1-1', 'Aditi Swarup', '8', 'B+', '29/10/2002', 'B.Pharmacy', '1', '2014820', '2014820', 'aswarup2016@gmail.com', '', 'Dilip kumar', 'Aunpriya', 'GEN', '7766915909', '', '7766915909', 'Rampur nahar road, Parinay marriage hall Patna', 'Golden homes landran', 'Bihar', 'Patna', '{\"hosteler\":\"No\",\"roomno\":\"NA\",\"hostelname\":\"NA\"}', '{\"parentoccupation\":\"Software engineer\",\"parannualincome\":\"50LPA\"}', '{\"loanstatus\":\"No\",\"loanamount\":\"No\"}', 'No', '[\"0.79\",\"0.8\"]', 'Pharmacist', 'handwriting', '[\"0\",\"0\",\"0\"]', 'Excellent', '{}', '{}', 0),
(6, '20adi66a0d3a73d8bd', 'CCP66a0a3782ec04', '1-1', 'Aditay Kumar', '8', 'B+', '22/08/2002', 'B.Pharmacy', '1', '2014821', '2014821', 'aditaysharma604@gmail.com', '', 'Raj kuma', 'Bholli devi', 'GEN', '6006549821', '7006010612', '9906069302', 'R/o pathwar teh majalta district udhampur pincode 184205', 'Gk crystal', 'J&K', 'Udhampur', '{\"hosteler\":\"No\",\"roomno\":\"NA\",\"hostelname\":\"NA\"}', '{\"parentoccupation\":\"Businessman\",\"parannualincome\":\"3 lpa\"}', '{\"loanstatus\":\"No\",\"loanamount\":\"No\"}', 'No', '[\"0.55\",\"0.74\"]', 'Pharmacist', 'Handwriting', '[\"0\",\"0\",\"0\"]', 'Good', '{}', '{}', 0),
(7, '20ama66a0d3a73d8c5', 'CCP66a0a3782ec04', '1-1', 'Aman Tiwari', '8', 'O+', '28/10/2001', 'B.Pharmacy', '1', '2014824', '2014824', 'amantiwari8968@gmail.com', 'tiwaribhupinder@gmail.com', 'Bhupinder Tiwari', 'Mamta Devi', 'GEN', '9006384004', '', '9006384004', 'New Moti Nagar, Ludhiana Punjab', 'Landran,Mohali', 'Punjab', 'Ludhiana', '{\"hosteler\":\"No\",\"roomno\":\"NA\",\"hostelname\":\"NA\"}', '{\"parentoccupation\":\"Quality lab incharge\",\"parannualincome\":\"3LPA\"}', '{\"loanstatus\":\"No\",\"loanamount\":\"No\"}', 'No', '[\"0.849\",\"0.8\"]', 'Pharmacist', 'Introvert', '[\"0\",\"0\",\"0\"]', 'Good', '{}', '{}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `subjectcode` varchar(50) NOT NULL,
  `subjectid` varchar(50) NOT NULL,
  `subjectname` varchar(50) NOT NULL,
  `subjectsem` int(11) NOT NULL,
  `collegeid` varchar(15) NOT NULL,
  `depid` varchar(15) NOT NULL,
  `tpp` int(1) NOT NULL,
  `lab` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subjectcode`, `subjectid`, `subjectname`, `subjectsem`, `collegeid`, `depid`, `tpp`, `lab`) VALUES
(1364, 'BP101T', 'hum669f3d69b264d', 'Human Anatomy and Physiology I', 1, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1365, 'BP102T', 'pha669f3d69b2652', 'Pharmaceutical Analysis I', 1, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1366, 'BP103T', 'pha669f3d69b2654', 'Pharmaceutics I', 1, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1367, 'BP104T', 'ino669f3d69b2656', 'Inorganic chemistry', 1, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1368, 'BP105T', 'com669f3d69b2657', 'Communication skills', 1, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1369, 'BP106RBT', 'rem669f3d69b2658', 'Remedial Biology', 1, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1370, 'BP106RMT', 'rem669f3d69b265a', 'Remedial Mathematics', 1, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1371, 'BP107P', 'hum669f3d69b265c', 'Human Anatomy and Physiology I', 1, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1372, 'BP108P', 'pha669f3d69b265d', 'Pharmaceutical Analysis I', 1, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1373, 'BP109P', 'pha669f3d69b265e', 'Pharmaceutics I', 1, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1374, 'BP110P', 'ino669f3d69b2660', 'Inorganic chemistry', 1, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1375, 'BP111P', 'com669f3d69b2661', 'Communication skills', 1, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1376, 'BP112RBP', 'rem669f3d69b2663', 'Remedial Biology', 1, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1377, 'BP 201T', 'hap669f3d69b2664', 'HAP II', 2, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1378, 'BP 202T', 'org669f3d69b2665', 'Organic I', 2, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1379, 'BP 203T', 'bio669f3d69b2666', 'Biochemistry', 2, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1380, 'BP 204T', 'pat669f3d69b2667', 'Pathophysiology', 2, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1381, 'BP 205T', 'com669f3d69b2668', 'Computer', 2, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1382, 'BP 206T', 'evs669f3d69b266a', 'EVS', 2, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1383, 'BP 207P', 'hap669f3d69b266b', 'HAP II', 2, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1384, 'BP 208P', 'org669f3d69b266d', 'Organic I', 2, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1385, 'BP 209P', 'bio669f3d69b266e', 'Biochemistry', 2, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1386, 'BP 210P', 'com669f3d69b266f', 'Computer', 2, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1387, 'BP301T', 'pha669f3d69b2671', 'Pharmaceutical Organic Chemistry II', 3, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1388, 'BP302T', 'phy669f3d69b2673', 'Physical Pharmaceutics I', 3, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1389, 'BP303T', 'pha669f3d69b2674', 'Pharmaceutical Microbiology', 3, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1390, 'BP304T', 'pha669f3d69b2675', 'Pharmaceutical Engineering', 3, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1391, 'BP305P', 'pha669f3d69b2677', 'Pharmaceutical Organic Chemistry II', 3, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1392, 'BP306P', 'phy669f3d69b2679', 'Physical Pharmaceutics I', 3, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1393, 'BP307P', 'pha669f3d69b267a', 'Pharmaceutical Microbiology', 3, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1394, 'BP308P', 'pha669f3d69b267c', 'Pharmaceutical Engineering', 3, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1395, 'BP 401T', 'org669f3d69b267d', 'Organic III', 4, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1396, 'BP 402T', 'med669f3d69b267e', 'Med Chem', 4, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1397, 'BP 403T', 'ppi669f3d69b2681', 'PP II', 4, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1398, 'BP 404T', 'pha669f3d69b2682', 'Pharmacology', 4, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1399, 'BP 405T', 'pha669f3d69b2683', 'Pharmacognosy', 4, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1400, 'BP 406P', 'med669f3d69b2684', 'Med Chem', 4, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1401, 'BP 407P', 'ppi669f3d69b2685', 'PP II', 4, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1402, 'BP 408P', 'pha669f3d69b2687', 'Pharmacology', 4, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1403, 'BP 409P', 'pha669f3d69b2688', 'Pharmacognosy', 4, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1404, 'BP 501T', 'med669f3d69b2689', 'Medicinal Chemistry II', 5, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1405, 'BP502T', 'ind669f3d69b268a', 'Industrial Pharmacy I', 5, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1406, 'BP503T', 'pha669f3d69b268b', 'Pharmacology II', 5, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1407, 'BP504T', 'pha669f3d69b268d', 'Pharmacognosy and Phytochemistry II', 5, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1408, 'BP505T', 'pha669f3d69b268e', 'Pharmaceutical Jurisprudence', 5, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1409, 'BP 507P', 'ind669f3d69b268f', 'Industrial Pharmacy I', 5, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1410, 'BP 506P', 'pha669f3d69b2690', 'Pharmacology II', 5, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1411, 'BP 508P', 'pha669f3d69b2692', 'Pharmacognosy and Phytochemistry II', 5, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1412, 'BP 601T', 'med669f3d69b2693', 'Med Chem III', 6, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1413, 'BP 602T', 'pha669f3d69b2695', 'Pharmacology', 6, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1414, 'BP 603T', 'her669f3d69b2697', 'Herbal Drug Technology', 6, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1415, 'BP 604T', 'bio669f3d69b2698', 'Biopharmaceutics and Pharmacokinetics', 6, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1416, 'BP 605T', 'pha669f3d69b2699', 'Pharmaceutical Biotechnology', 6, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1417, 'BP 606T', 'qa669f3d69b269a', 'QA', 6, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1418, 'BP 607P', 'med669f3d69b269b', 'Med Chem III', 6, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1419, 'BP 608P', 'pha669f3d69b269c', 'Pharmacology', 6, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1420, 'BP 609P', 'her669f3d69b269e', 'Herbal Drug Technology', 6, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1421, 'BP701T', 'ins669f3d69b269f', 'Instrumental Methods of Analysis', 7, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1422, 'BP702T', 'ind669f3d69b26a1', 'Industrial Pharmacy II', 7, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1423, 'BP703T', 'pha669f3d69b26a2', 'Pharmacy Practice', 7, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1424, 'BP704T', 'nov669f3d69b26a4', 'Novel Drug Delivery System', 7, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1425, 'BP705P', 'ins669f3d69b26a6', 'Instrumental Methods of Analysis', 7, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1426, 'BP706PS', 'pra669f3d69b26a7', 'Practice School', 7, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1427, 'BP 801T', 'bio669f3d69b26a8', 'Biostat', 8, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1428, 'BP 802T', 'spp669f3d69b26a9', 'SPP', 8, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1429, 'BP 803ET', 'pha669f3d69b26ab', 'Pharma Marketing Management', 8, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1430, 'BP 805ET', 'pha669f3d69b26ac', 'Pharmacovigilance', 8, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1431, 'BP 811ET', 'cos669f3d69b26ad', 'Cosmetic Science', 8, '64ed7eada8457', 'mpharmaasm61', 0, 0),
(1432, 'BP 813ET', 'pha669f3d69b26af', 'Pharmaceutical Product Development', 8, '64ed7eada8457', 'mpharmaasm61', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `empid` varchar(4) NOT NULL,
  `number` varchar(15) NOT NULL,
  `uid` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pemail` varchar(60) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `usertype` varchar(50) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `lastlogin` varchar(100) NOT NULL,
  `profilepic` varchar(100) DEFAULT NULL,
  `CC` text NOT NULL,
  `faculty` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `collegeid` text NOT NULL,
  `depid` text NOT NULL,
  `dob` varchar(15) NOT NULL,
  `ptuid` varchar(25) NOT NULL,
  `joinedon` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `empid`, `number`, `uid`, `email`, `pemail`, `username`, `password`, `usertype`, `active`, `lastlogin`, `profilepic`, `CC`, `faculty`, `collegeid`, `depid`, `dob`, `ptuid`, `joinedon`, `gender`) VALUES
(527, '00', '00', 'superadmin123123', 'superadmin_accadify@test.com', 'superadmin_attendify@gmail.com', 'Super Admin', '9773d6a35aaf722890aeb6449886bcd1', '1', 1, '1722583443', NULL, '{}', '[]', '[]', '[]', '', '', '', ''),
(1563, '5246', '7307355443', 'drs66a0aa70e23ac', 'faculty@test.com', 'ssm@test.com', 'Dr Saurabh Sharma', '8e569b00b0603c923dfb8ee8acb9a5a2', '2', 1, '', NULL, '{}', '{}', '[\"64ed7eada8457\"]', '[\"mpharmaasm61\"]', '301622400', '517304', '17/09/2022', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colleges`
--
ALTER TABLE `colleges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `studid` (`studid`),
  ADD KEY `batchid` (`batchid`),
  ADD KEY `counsid` (`sectionid`);
ALTER TABLE `students` ADD FULLTEXT KEY `name` (`name`);
ALTER TABLE `students` ADD FULLTEXT KEY `search` (`name`,`studemail`,`mno`,`mano`,`wno`,`uniroll`,`classroll`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `subjects` ADD FULLTEXT KEY `name` (`subjectname`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `users` ADD FULLTEXT KEY `dep` (`depid`);
ALTER TABLE `users` ADD FULLTEXT KEY `d` (`faculty`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `colleges`
--
ALTER TABLE `colleges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1433;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1613;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

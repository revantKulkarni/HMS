-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2019 at 08:15 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'Suchit', 'Suchit@12345', '01-01-2021 11:42:05 AM'),
(2, 'Shreyas', 'Shreyas@12345', '01-01-2021 11:43:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(3, 'Audiologist', 2, 6, 800, '2021-01-02', '9:15 AM', '2021-01-02 18:31:28', 1, 0, '0000-00-00 00:00:00'),
(4, 'Gynaecologist', 5, 5, 600, '2021-01-02', '1:00 PM', '2021-01-02 10:28:54', 1, 1, '0000-00-00 00:00:00'),
(5, 'Dermatologist', 9, 7, 700, '2021-01-03', '5:30 PM', '2021-01-03 18:41:34', 1, 0, '2021-01-03 18:48:30');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
    'phoneNo' varchar(10) NOT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Cardiologist', 'Adesh Mantur', 'Bijapur', '900', 9945574163, 'adeshmantur12@gmail.com', 'Am@12345', '2021-01-01 06:00:00', '2021-01-01 06:00:00'),
(2, 'Audiologist', 'Aditya Patil', 'Koppal', '800', 7892246734, 'adityapatil23@gmail.com', 'Ap@12345', '2021-01-01 07:00:00', '2021-01-01 07:00:00'),
(3, 'Dermatologist', 'Anup Kabberalli', 'Tumkur', '900', 8494809175, 'anupkabberhalli90@gmail.com', 'Ak@12345', '2021-01-01 08:00:00', '2021-01-01 08:00:00'),
(4, 'Dentist', 'Mayur Hegde', 'Bagalkot', '700', 7022808747, 'mayurhegde34@gmail.com', 'Mh@12345', '2021-01-01 09:00:00', '2021-01-01 09:00:00'),
(5, 'Pulmonologist', 'Pooja Kittur', 'Mysore', '700', 7349131435, 'poojakittur78@gmail.com', 'Pk@12345', '2021-01-01 10:00:00', '2021-01-01 10:00:00'),
(6, 'Oncologist', 'Priyanka Sonu', 'Dharwad', '800', 9480641514, 'priyankasonu89@gmail.com', 'Ps@12345', '2021-01-01 11:00:00', '2021-01-01 11:00:00'),
(7, 'Demo test', 'abc ', 'Hubballi', '900', 9876543210, 'test@demo.com', 'f925916e2754e5e03f75dd58a5733251', '2021-01-01 08:08:58', '2021-06-23 18:17:25'),
(8, 'Gynaecologist', 'Vaibhav Khashyap', 'Hubballi', '600', 6361736455, 'vaibhavkhashyap56@gmail.com', 'Vk@12345', '2021-01-01 12:00:00', '2021-01-01 12:00:00'),
(9, 'Paediatrician', 'Venkatesh Mamdapur', 'Belgaum', '600', 7204761700, 'venkateshmamdaour67@gmail.com', 'Vm@12345', '2021-01-01 13:00:00', '2021-01-01 13:00:00'),
(10, 'Obstetrician', 'Vrushabh Turamari', 'Bangalore', '600', 9019818653, 'vrushabhturamari45@gmail.com', 'Vt@12345', '2021-01-01 14:00:00', '2021-01-01 14:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Audiologist', '2021-01-01 01:00:00', '2021-01-01 01:00:00'),
(2, 'Cardiologist', '2021-01-01 02:00:00', '2021-01-01 02:00:00'),
(3, 'Dentist', '2021-01-01 03:00:00', '2021-01-01 03:00:00'),
(4, 'Dermatologist', '2021-01-01 04:00:00', '2021-01-01 04:00:00'),
(5, 'ENT Specialist', '2021-01-01 05:00:00', '2021-01-01 05:00:00'),
(6, 'General Physician', '2021-01-01 06:00:00', '2021-01-01 06:00:00'),
(7, 'Genral Surgeon', '2021-01-01 07:00:00', '2021-01-01 07:00:00'),
(8, 'Gynaecologist', '2021-01-01 08:00:00', '2021-01-01 08:00:00'),
(9, 'Demo test', '2016-12-28 07:37:39', '0000-00-00 00:00:00'),
(10, 'Obstetrician', '2021-01-01 09:00:00', '2021-01-01 09:00:00'),
(11, 'Oncologist', '2021-01-01 10:00:00', '2021-01-01 10:00:00'),
(12, 'Pulmonologist', '2021-01-01 11:00:00', '2021-01-01 11:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'Rahika Irkal', 'radhikairkal12@gmail.com', 7899042235, 'In need of an ENT specialist, is he/she available', '2021-01-02 10:00:00', 'Available', '2021-01-02 11:00:00', 1),
(2, 'Rohit Amberkar', 'rohitamberkar23@gmail.com', 9980072227, 'In need of an Pulmonologist, is he/she available', '2019-06-30 11:00:00', 'Available', '2021-01-02 13:00:00', 1),
(3, 'Gourish Bagalkoti', 'gourishbagalkoti@gmail.com', 8296799747, 'In need of an Oncologist, is he/she available', '2019-11-10 18:53:48', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(2, 1, '120/185', '80/120', '61 Kg', '101 deg', NULL, '2021-01-02 15:00:00'),
(3, 2, '90/120', '92/190', '76 kg', '99 deg', NULL, '2021-01-02 16:00:00'),
(4, 3, '125/200', '86/120', '60 kg', '98 deg', NULL, '2021-01-02 16:00:00'),
(5, 4, '96/120', '98/120', '66 kg', '102 deg', NULL, '2021-01-02 17:00:00'),
(6, 5, '90/120', '97/120', '67 kg', '98 deg', NULL, '2021-01-02 18:00:00'),
(7, 6, '80/120', '100/120', '65 kg', '98.6 deg', NULL, '2021-01-02 19:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 1, 'Manisha Jha', 1234567890, 'test@gmail.com', 'Female', 'CSE KLEIT Hubballi', 26, 'She is diabetic patient', '2021-01-03 12:00:00', '2021-01-03 12:00:00'),
(2, 2, 'Amit Hegde', 7899537060, 'amithegde12@gmail.com', 'Male', 'CSE KLEIT Hubballi', 20, 'He is Partially deaf', '2021-01-03 13:00:00', '2021-01-03 13:00:00'),
(3, 3, 'Ayush Saraf', 8310678754, 'ayushsaraf23@gmail.com', 'Male', 'CSE KLEIT Hubballi', 21, 'Has multiple problems', '2021-01-03 14:00:00', '2021-01-03 14:00:00'),
(4, 4, 'Tushar V', 9880225683, 'tushark34@gmail.com', 'Male', 'CSE KLEIT Hubballi', 20, 'Has gum issues', '2021-01-03 15:00:00', '2021-01-03 15:00:00'),
(5, 5, 'Vibhav Nisarikar', 8884467152, 'vibhavnisarikar45@gmail.com', 'Male', 'CSE KLEIT Hubballi', 21, 'Has pulmonary artery blockage', '2021-01-03 16:00:00', '2021-01-03 16:00:00'),
(6, 6, 'Vishal Kaliwal', 7337627302, 'vishalkaliwal56@gmail.com', 'Male', 'CSE KLEIT Hubballi ', 20, 'Has to be looked by an Oncologist', '2021-01-03 17:00:00', '2021-01-03 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(1, 'Sarita Pandey', 'CSE KLEIT Hubballi', 'Hubballi', 'Female', 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2021-01-03 15:00:00', '0000-00-00 00:00:00'),
(2, 'Ankita Banglore', 'CSE KLEIT Hubballi', 'Hubballi', 'Female', 'ankitabanglore01@gmail.com', 'Ab@12345', '2021-01-03 16:00:00', '2021-01-03 16:00:00'),
(3, 'Amit Hegde', 'CSE KLEIT Hubballi', 'Hubballi', 'Male', 'amithegde12@gmail.com', 'Ah@12345', '2021-01-03 17:00:00', '2021-01-03 17:00:00'),
(4, 'Tushar V', 'CSE KLEIT Hubballi', 'Hubballi', 'Male', 'tusharv34@gmail.com', 'Tv@12345', '2021-01-03 19:00:00', '2021-01-03 19:00:00'),
(5, 'Vibhav Nisarikar', 'CSE KLEIT Hubballi', 'Hubballi', 'Male', 'vibhavnisarikar45@gmail.com', 'Vn@12345', '2021-01-03 20:00:00', '2021-01-03 20:00:00'),
(6, 'Vishal Kaliwal', 'CSE KLEIT Hubballi', 'Hubballi', 'Male', 'vishalkaliwal56@gmail.com', 'Vk@12345', '2021-01-03 21:00:00', '2021-01-03 21:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2017 at 03:07 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `ankur`
--
CREATE TABLE IF NOT EXISTS `ankur` (
`user_id` varchar(50)
,`sub_id` int(11)
,`question` varchar(50)
,`correct` int(11)
,`wrong` int(11)
,`not_answered` int(11)
,`sub_date` timestamp
);

-- --------------------------------------------------------

--
-- Table structure for table `computer_science_1`
--

CREATE TABLE IF NOT EXISTS `computer_science_1` (
  `q_no` int(11) NOT NULL,
  `q` varchar(250) NOT NULL,
  `o_1` varchar(50) NOT NULL,
  `o_2` varchar(50) NOT NULL,
  `o_3` varchar(50) NOT NULL,
  `o_4` varchar(50) NOT NULL,
  `r` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `computer_science_1`
--

INSERT INTO `computer_science_1` (`q_no`, `q`, `o_1`, `o_2`, `o_3`, `o_4`, `r`) VALUES
(1, 'Which of the following computer implemented binary numbers, perform calculations using electronics and implemented separate computation and memory for the first time?', 'Mark I', 'ABC', 'Z3', 'None of above', 'ABC'),
(2, 'FORTRAN is a programming language. What does FORTRAN stand for?', 'File Translation', 'Format Translation', 'Formula Translation', 'Floppy Translation', 'Formula Translation'),
(3, 'Which of the following memories needs refreshing?', 'SRAM', 'DRAM', 'ROM', 'All of above', 'DRAM'),
(4, 'Can you tell what passes into and out from the computer via its ports?', 'Data', 'Bytes', 'Graphics', 'Pictures', 'Data'),
(5, 'An output device that uses words or messages recorded on a magnetic medium to produce audio response is', 'Magnetic tape', 'Voice response unit', 'Voice recognition unit', 'Voice band', 'Voice response unit'),
(6, 'Which of the items below are considered removable storage media?', 'Removable hard disk cartridges', 'Magneto-optical disk', 'Flexible disks cartridges', 'All of the above', 'All of the above'),
(7, 'Which of the following is not purely output device?', 'Screen', 'Printer', 'Speaker', 'Plotter', 'Screen'),
(8, 'Who developed a mechanical device in the 17th century that could add, subtract, multiple, divide and find square roots?', 'Napier', 'Babbage', 'Pascal', 'Leibniz', 'Leibniz'),
(9, 'The first Macintosh computer was from', 'First generation', 'Second generation', 'Third generation', 'Fourth generation', 'Fourth generation'),
(10, 'Which of the following is not a form of data?', 'numbers and characters', 'images', 'sound', 'none of above', 'none of above');

-- --------------------------------------------------------

--
-- Table structure for table `computer_science_2`
--

CREATE TABLE IF NOT EXISTS `computer_science_2` (
  `q_no` int(11) NOT NULL,
  `q` varchar(250) NOT NULL,
  `o_1` varchar(50) NOT NULL,
  `o_2` varchar(50) NOT NULL,
  `o_3` varchar(50) NOT NULL,
  `o_4` varchar(50) NOT NULL,
  `r` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `computer_science_2`
--

INSERT INTO `computer_science_2` (`q_no`, `q`, `o_1`, `o_2`, `o_3`, `o_4`, `r`) VALUES
(1, 'Which is not a computer classification?', 'mainframe', 'maxframe', 'mini', 'notebook', 'maxframe'),
(2, 'The control unit of a microprocessor', 'Stores data in the memory', 'Accepts input data from keyboard', 'Performs arithmetic/logic function', 'None of above', 'None of above'),
(3, 'Which of the following is internal memory?', 'Disks', 'Pen Drives', 'RAM', 'CDs', 'RAM'),
(4, 'Which operation is not performed by computer', 'Inputting', 'Processing', 'Controlling', 'Understanding', 'Understanding'),
(5, 'Floppy disks which are made from flexible plastic material are also called?', 'Hard disks', 'High-density disks', 'Diskettes', 'Templates', 'Diskettes'),
(6, 'The magnetic storage chip used to provide non-volatile direct access storage of data and that have no moving parts are known as', 'Magnetic core memory', 'Magnetic tape memory', 'Magnetic disk memory', 'Magnetic bubble memory', 'Magnetic bubble memory'),
(7, 'A collection of related instructions organized for a common purpose is referred to as', 'File', 'Database', 'Program', 'None of above', 'Program'),
(8, 'Plotter accuracy is measured in terms of repeatability and', 'Buffer size', 'Resolution', 'Vertical dimensions', 'Intelligence', 'Resolution'),
(9, 'Computer instructions written with the use of English words instead of binary machine code is called', 'Mnemonics', 'Symbolic code', 'Gray codes', 'Opcode', 'Symbolic code'),
(10, 'Which language is directly understood by the computer without translation program?', 'Machine language', 'Assembly language', 'High level language', 'None of above', 'Machine language');

-- --------------------------------------------------------

--
-- Table structure for table `computer_science_3`
--

CREATE TABLE IF NOT EXISTS `computer_science_3` (
  `q_no` int(11) NOT NULL,
  `q` varchar(250) NOT NULL,
  `o_1` varchar(50) NOT NULL,
  `o_2` varchar(50) NOT NULL,
  `o_3` varchar(50) NOT NULL,
  `o_4` varchar(50) NOT NULL,
  `r` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `computer_science_3`
--

INSERT INTO `computer_science_3` (`q_no`, `q`, `o_1`, `o_2`, `o_3`, `o_4`, `r`) VALUES
(1, 'On which aspect the analog computers are better than digital?', 'Speed', 'Accuracy', 'Reliability', 'Automatic', 'Accuracy');

-- --------------------------------------------------------

--
-- Table structure for table `cse_1100`
--

CREATE TABLE IF NOT EXISTS `cse_1100` (
  `q_no` int(11) NOT NULL,
  `q` varchar(250) NOT NULL,
  `o_1` varchar(50) NOT NULL,
  `o_2` varchar(50) NOT NULL,
  `o_3` varchar(50) NOT NULL,
  `o_4` varchar(50) NOT NULL,
  `r` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cse_1100`
--

INSERT INTO `cse_1100` (`q_no`, `q`, `o_1`, `o_2`, `o_3`, `o_4`, `r`) VALUES
(1, 'Which of the following computer implemented binary numbers, perform calculations using electronics and implemented separate computation and memory for the first time?', 'Mark I', 'ABC', 'Z3', 'None of above', 'ABC'),
(2, 'Which is not a computer classification?', 'mainframe', 'maxframe', 'mini', 'notebook', 'maxframe');

-- --------------------------------------------------------

--
-- Table structure for table `cse_1101`
--

CREATE TABLE IF NOT EXISTS `cse_1101` (
  `q_no` int(11) NOT NULL,
  `q` varchar(250) NOT NULL,
  `o_1` varchar(50) NOT NULL,
  `o_2` varchar(50) NOT NULL,
  `o_3` varchar(50) NOT NULL,
  `o_4` varchar(50) NOT NULL,
  `r` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cse_1101`
--

INSERT INTO `cse_1101` (`q_no`, `q`, `o_1`, `o_2`, `o_3`, `o_4`, `r`) VALUES
(1, 'Plotter accuracy is measured in terms of repeatability and', 'Buffer size', 'Resolution', 'Vertical dimensions', 'Intelligence', 'Resolution'),
(2, 'Computer instructions written with the use of English words instead of binary machine code is called', 'Mnemonics', 'Symbolic code', 'Gray codes', 'Opcode', 'Symbolic code');

-- --------------------------------------------------------

--
-- Table structure for table `cse_1200`
--

CREATE TABLE IF NOT EXISTS `cse_1200` (
  `q_no` int(11) NOT NULL,
  `q` varchar(250) NOT NULL,
  `o_1` varchar(50) NOT NULL,
  `o_2` varchar(50) NOT NULL,
  `o_3` varchar(50) NOT NULL,
  `o_4` varchar(50) NOT NULL,
  `r` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cse_1201`
--

CREATE TABLE IF NOT EXISTS `cse_1201` (
  `q_no` int(11) NOT NULL,
  `q` varchar(250) NOT NULL,
  `o_1` varchar(50) NOT NULL,
  `o_2` varchar(50) NOT NULL,
  `o_3` varchar(50) NOT NULL,
  `o_4` varchar(50) NOT NULL,
  `r` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cse_1202`
--

CREATE TABLE IF NOT EXISTS `cse_1202` (
  `q_no` int(11) NOT NULL,
  `q` varchar(250) NOT NULL,
  `o_1` varchar(50) NOT NULL,
  `o_2` varchar(50) NOT NULL,
  `o_3` varchar(50) NOT NULL,
  `o_4` varchar(50) NOT NULL,
  `r` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cse_1202`
--

INSERT INTO `cse_1202` (`q_no`, `q`, `o_1`, `o_2`, `o_3`, `o_4`, `r`) VALUES
(1, 'Plotter accuracy is measured in terms of repeatability and', 'Buffer size', 'Resolution', 'Vertical dimensions', 'Intelligence', 'Resolution'),
(2, 'Computer instructions written with the use of English words instead of binary machine code is called', 'Mnemonics', 'Symbolic code', 'Gray codes', 'Opcode', 'Symbolic code');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `fname` varchar(40) NOT NULL,
  `lname` varchar(40) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(125) DEFAULT NULL,
  `emailid` varchar(50) NOT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `exam` int(11) DEFAULT NULL,
  `correct` int(11) DEFAULT NULL,
  `wrong` int(11) DEFAULT NULL,
  `not_answered` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`username`, `password`, `fname`, `lname`, `gender`, `address`, `emailid`, `phone`, `reg_date`, `exam`, `correct`, `wrong`, `not_answered`) VALUES
('admin', 'admin1', 'admin', '1', 'Male', 'Rajsahi', 'admin@gmail.com', '', '2017-08-24 12:15:22', 0, NULL, NULL, NULL),
('ankur', '4321', 'Mursalin', 'Ankur', 'Male', 'RUET', 'mir.ankur.ruet13@gmail.com', '+8801748734724', '2017-08-24 12:28:20', 3, 19, 9, 7),
('Sakib', '1234', 'Sakib', 'Bin Ehsan', 'Male', 'Rajsahi', 'sakib@gmail.com', '', '2017-03-27 05:24:52', 3, 24, 4, 2),
('Shuvo', '1234', 'Shuvo Kumar', 'Das', 'Male', 'Dinajpur', 'shuvo@yahoo.com', '', '2017-03-26 10:29:04', 2, 13, 5, 2);

-- --------------------------------------------------------

--
-- Stand-in structure for view `sakib`
--
CREATE TABLE IF NOT EXISTS `sakib` (
`user_id` varchar(50)
,`sub_id` int(11)
,`question` varchar(50)
,`correct` int(11)
,`wrong` int(11)
,`not_answered` int(11)
,`sub_date` timestamp
);

-- --------------------------------------------------------

--
-- Table structure for table `sem_1`
--

CREATE TABLE IF NOT EXISTS `sem_1` (
  `course_no` varchar(20) NOT NULL,
  `course_title` varchar(50) NOT NULL,
  `credit` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sem_1`
--

INSERT INTO `sem_1` (`course_no`, `course_title`, `credit`) VALUES
('CSE_1100', 'Computer Fundamentals and Ethics', 1.5),
('CSE_1101', 'Computer Programming', 3);

-- --------------------------------------------------------

--
-- Table structure for table `sem_2`
--

CREATE TABLE IF NOT EXISTS `sem_2` (
  `course_no` varchar(20) NOT NULL,
  `course_title` varchar(50) NOT NULL,
  `credit` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sem_2`
--

INSERT INTO `sem_2` (`course_no`, `course_title`, `credit`) VALUES
('CSE_1200', 'Analytical Programming', 0.75),
('CSE_1201', 'Data Structure', 3),
('CSE_1202', 'Sessional Based on CSE 1201', 1.5);

-- --------------------------------------------------------

--
-- Table structure for table `sem_3`
--

CREATE TABLE IF NOT EXISTS `sem_3` (
  `course_no` varchar(20) NOT NULL,
  `course_title` varchar(50) NOT NULL,
  `credit` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sem_4`
--

CREATE TABLE IF NOT EXISTS `sem_4` (
  `course_no` varchar(20) NOT NULL,
  `course_title` varchar(50) NOT NULL,
  `credit` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sem_5`
--

CREATE TABLE IF NOT EXISTS `sem_5` (
  `course_no` varchar(20) NOT NULL,
  `course_title` varchar(50) NOT NULL,
  `credit` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sem_6`
--

CREATE TABLE IF NOT EXISTS `sem_6` (
  `course_no` varchar(20) NOT NULL,
  `course_title` varchar(50) NOT NULL,
  `credit` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sem_7`
--

CREATE TABLE IF NOT EXISTS `sem_7` (
  `course_no` varchar(20) NOT NULL,
  `course_title` varchar(50) NOT NULL,
  `credit` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sem_8`
--

CREATE TABLE IF NOT EXISTS `sem_8` (
  `course_no` varchar(20) NOT NULL,
  `course_title` varchar(50) NOT NULL,
  `credit` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sem_9`
--

CREATE TABLE IF NOT EXISTS `sem_9` (
  `course_no` varchar(20) NOT NULL,
  `course_title` varchar(50) NOT NULL,
  `credit` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sem_10`
--

CREATE TABLE IF NOT EXISTS `sem_10` (
  `course_no` varchar(20) NOT NULL,
  `course_title` varchar(50) NOT NULL,
  `credit` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sem_11`
--

CREATE TABLE IF NOT EXISTS `sem_11` (
  `course_no` varchar(20) NOT NULL,
  `course_title` varchar(50) NOT NULL,
  `credit` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sem_12`
--

CREATE TABLE IF NOT EXISTS `sem_12` (
  `course_no` varchar(20) NOT NULL,
  `course_title` varchar(50) NOT NULL,
  `credit` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `shuvo`
--
CREATE TABLE IF NOT EXISTS `shuvo` (
`user_id` varchar(50)
,`sub_id` int(11)
,`question` varchar(50)
,`correct` int(11)
,`wrong` int(11)
,`not_answered` int(11)
,`sub_date` timestamp
);

-- --------------------------------------------------------

--
-- Table structure for table `sports_1`
--

CREATE TABLE IF NOT EXISTS `sports_1` (
  `q_no` int(11) NOT NULL,
  `q` varchar(250) NOT NULL,
  `o_1` varchar(50) NOT NULL,
  `o_2` varchar(50) NOT NULL,
  `o_3` varchar(50) NOT NULL,
  `o_4` varchar(50) NOT NULL,
  `r` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sports_1`
--

INSERT INTO `sports_1` (`q_no`, `q`, `o_1`, `o_2`, `o_3`, `o_4`, `r`) VALUES
(1, 'Which is the national sport of Canada?', 'Lacrosse/Ice hockey', 'Cricket', 'Field hockey', 'Volleyball', 'Lacrosse/Ice hockey'),
(2, 'Archery is the national sport of which country?', 'Afghanistan', 'Bhutan', 'Japan', 'India', 'Bhutan'),
(3, '____________ has Cricket as its national sports.', 'India', 'Jamaica', 'Sri Lanka', 'United States', 'Jamaica'),
(4, '_____________ is the national sport of Turkey', 'Wrestling', 'Rugby union', 'Golf', 'Basketball', 'Wrestling'),
(5, 'When was the Commonwealth game started?', '1930', '1934', '1938', '1950', '1930'),
(6, 'Which was the host country in 1998 for Asian Games?', 'Thailand', 'Philippines', 'South Korea', 'China', 'Thailand'),
(7, 'Which city has hosted Asian Games in 2006?', 'Doha', 'Bangkok', 'New Delhi', 'Tokyo', 'Doha'),
(8, 'In which country commonwealth games were held in 2010?', 'India', 'Canada', 'Malaysia', 'Australia', 'India'),
(9, 'Which city hosted commonwealth games in 1966?', 'Dhaka', 'Perth', 'Melbourne', 'Kingston', 'Kingston'),
(10, '____________ has won Cricket world cup for the maximum number of times.', 'West Indies', 'India', 'Australia', 'Sri Lanka', 'Australia');

-- --------------------------------------------------------

--
-- Table structure for table `sports_2`
--

CREATE TABLE IF NOT EXISTS `sports_2` (
  `q_no` int(11) NOT NULL,
  `q` varchar(250) NOT NULL,
  `o_1` varchar(50) NOT NULL,
  `o_2` varchar(50) NOT NULL,
  `o_3` varchar(50) NOT NULL,
  `o_4` varchar(50) NOT NULL,
  `r` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sports_2`
--

INSERT INTO `sports_2` (`q_no`, `q`, `o_1`, `o_2`, `o_3`, `o_4`, `r`) VALUES
(1, 'Football World Cup has been won by which country for the maximum number of times?', 'Italy', 'Uruguay', 'West Germany', 'Brazil', 'Brazil'),
(2, 'Which country has hosted Commonwealth Games for the maximum number of times?', 'England', 'Canada', 'New Zealand', 'Scotland', 'Canada'),
(3, 'In which year Asian Games were started?', '1951', '1951', '1954', '1955', '1958'),
(4, 'First Olympic Games was held in ________', 'England', 'Australia', 'USA', 'Canada', 'Canada'),
(5, 'Caddie is related to __________', 'Baseball', 'Billiards', 'Golf', 'Bridge', 'Golf');

-- --------------------------------------------------------

--
-- Table structure for table `sports_3`
--

CREATE TABLE IF NOT EXISTS `sports_3` (
  `q_no` int(11) NOT NULL,
  `q` varchar(250) NOT NULL,
  `o_1` varchar(50) NOT NULL,
  `o_2` varchar(50) NOT NULL,
  `o_3` varchar(50) NOT NULL,
  `o_4` varchar(50) NOT NULL,
  `r` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `submission`
--

CREATE TABLE IF NOT EXISTS `submission` (
  `sub_id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `question` varchar(50) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `not_answered` int(11) NOT NULL,
  `sub_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submission`
--

INSERT INTO `submission` (`sub_id`, `user_id`, `question`, `correct`, `wrong`, `not_answered`, `sub_date`) VALUES
(1, 'ankur', 'computer_science_1', 8, 1, 1, '2017-03-26 09:10:59'),
(2, 'Shuvo', 'computer_science_2', 10, 0, 0, '2017-03-26 10:26:54'),
(3, 'Shuvo', 'computer_science_1', 3, 5, 2, '2017-03-26 10:29:04'),
(4, 'ankur', 'sports_1', 8, 1, 1, '2017-03-27 05:16:49'),
(5, 'Sakib', 'computer_science_2', 8, 2, 0, '2017-03-27 05:20:59'),
(6, 'Sakib', 'computer_science_1', 9, 0, 1, '2017-03-27 05:23:19'),
(7, 'Sakib', 'sports_1', 7, 2, 1, '2017-03-27 05:24:52'),
(8, 'ankur', 'computer_science_2', 3, 5, 2, '2017-03-27 06:15:47');

-- --------------------------------------------------------

--
-- Structure for view `ankur`
--
DROP TABLE IF EXISTS `ankur`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ankur` AS select `submission`.`user_id` AS `user_id`,`submission`.`sub_id` AS `sub_id`,`submission`.`question` AS `question`,`submission`.`correct` AS `correct`,`submission`.`wrong` AS `wrong`,`submission`.`not_answered` AS `not_answered`,`submission`.`sub_date` AS `sub_date` from `submission` where (`submission`.`user_id` = 'ankur');

-- --------------------------------------------------------

--
-- Structure for view `sakib`
--
DROP TABLE IF EXISTS `sakib`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sakib` AS select `submission`.`user_id` AS `user_id`,`submission`.`sub_id` AS `sub_id`,`submission`.`question` AS `question`,`submission`.`correct` AS `correct`,`submission`.`wrong` AS `wrong`,`submission`.`not_answered` AS `not_answered`,`submission`.`sub_date` AS `sub_date` from `submission` where (`submission`.`user_id` = 'Sakib');

-- --------------------------------------------------------

--
-- Structure for view `shuvo`
--
DROP TABLE IF EXISTS `shuvo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `shuvo` AS select `submission`.`user_id` AS `user_id`,`submission`.`sub_id` AS `sub_id`,`submission`.`question` AS `question`,`submission`.`correct` AS `correct`,`submission`.`wrong` AS `wrong`,`submission`.`not_answered` AS `not_answered`,`submission`.`sub_date` AS `sub_date` from `submission` where (`submission`.`user_id` = 'Shuvo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `computer_science_1`
--
ALTER TABLE `computer_science_1`
  ADD PRIMARY KEY (`q_no`);

--
-- Indexes for table `computer_science_2`
--
ALTER TABLE `computer_science_2`
  ADD PRIMARY KEY (`q_no`);

--
-- Indexes for table `computer_science_3`
--
ALTER TABLE `computer_science_3`
  ADD PRIMARY KEY (`q_no`);

--
-- Indexes for table `cse_1100`
--
ALTER TABLE `cse_1100`
  ADD PRIMARY KEY (`q_no`);

--
-- Indexes for table `cse_1101`
--
ALTER TABLE `cse_1101`
  ADD PRIMARY KEY (`q_no`);

--
-- Indexes for table `cse_1200`
--
ALTER TABLE `cse_1200`
  ADD PRIMARY KEY (`q_no`);

--
-- Indexes for table `cse_1201`
--
ALTER TABLE `cse_1201`
  ADD PRIMARY KEY (`q_no`);

--
-- Indexes for table `cse_1202`
--
ALTER TABLE `cse_1202`
  ADD PRIMARY KEY (`q_no`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `sem_1`
--
ALTER TABLE `sem_1`
  ADD PRIMARY KEY (`course_no`);

--
-- Indexes for table `sem_2`
--
ALTER TABLE `sem_2`
  ADD PRIMARY KEY (`course_no`);

--
-- Indexes for table `sem_3`
--
ALTER TABLE `sem_3`
  ADD PRIMARY KEY (`course_no`);

--
-- Indexes for table `sem_4`
--
ALTER TABLE `sem_4`
  ADD PRIMARY KEY (`course_no`);

--
-- Indexes for table `sem_5`
--
ALTER TABLE `sem_5`
  ADD PRIMARY KEY (`course_no`);

--
-- Indexes for table `sem_6`
--
ALTER TABLE `sem_6`
  ADD PRIMARY KEY (`course_no`);

--
-- Indexes for table `sem_7`
--
ALTER TABLE `sem_7`
  ADD PRIMARY KEY (`course_no`);

--
-- Indexes for table `sem_8`
--
ALTER TABLE `sem_8`
  ADD PRIMARY KEY (`course_no`);

--
-- Indexes for table `sem_9`
--
ALTER TABLE `sem_9`
  ADD PRIMARY KEY (`course_no`);

--
-- Indexes for table `sem_10`
--
ALTER TABLE `sem_10`
  ADD PRIMARY KEY (`course_no`);

--
-- Indexes for table `sem_11`
--
ALTER TABLE `sem_11`
  ADD PRIMARY KEY (`course_no`);

--
-- Indexes for table `sem_12`
--
ALTER TABLE `sem_12`
  ADD PRIMARY KEY (`course_no`);

--
-- Indexes for table `sports_1`
--
ALTER TABLE `sports_1`
  ADD PRIMARY KEY (`q_no`);

--
-- Indexes for table `sports_2`
--
ALTER TABLE `sports_2`
  ADD PRIMARY KEY (`q_no`);

--
-- Indexes for table `sports_3`
--
ALTER TABLE `sports_3`
  ADD PRIMARY KEY (`q_no`);

--
-- Indexes for table `submission`
--
ALTER TABLE `submission`
  ADD PRIMARY KEY (`sub_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `submission`
--
ALTER TABLE `submission`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

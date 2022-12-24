-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql102.epizy.com
-- Generation Time: May 03, 2022 at 04:09 PM
-- Server version: 10.3.27-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_31647791_alumni_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumnus_bio`
--

CREATE TABLE `alumnus_bio` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `batch` year(4) NOT NULL,
  `course_id` int(30) NOT NULL,
  `email` varchar(250) NOT NULL,
  `connected_to` text NOT NULL,
  `avatar` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0= Unverified, 1= Verified',
  `date_created` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alumnus_bio`
--

INSERT INTO `alumnus_bio` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `batch`, `course_id`, `email`, `connected_to`, `avatar`, `status`, `date_created`) VALUES
(3, 'Piyush', 'Kumar', 'Tiwari', 'Male', 2020, 1, 'piyusht823@gmail.com', 'SWE at Google', '1651602480_piyu.jpg', 1, '2022-05-03'),
(4, 'Kumar', '', 'Gaurav', 'Male', 2020, 1, 'kumargaurav@gmail.com', 'SDE -I at Amazon', '1651602540_gau.jpg', 1, '2022-05-03'),
(5, 'Sourav', '', 'Kumar', 'Male', 2021, 1, 'souravkumar7033.sk@gmail.com', 'Member of Technical Staff at BetWay', '', 1, '2022-05-03'),
(6, 'Rohan', '', 'Verma', 'Male', 2020, 3, 'rohanverma@gmail.com', 'CEO at Hardinger Pvt.Ltd', '', 1, '2022-05-03');

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` int(30) NOT NULL,
  `company` varchar(250) NOT NULL,
  `location` text NOT NULL,
  `job_title` text NOT NULL,
  `description` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `company`, `location`, `job_title`, `description`, `user_id`, `date_created`) VALUES
(3, 'Google', 'Hyderabad', 'SWE-I', '&lt;span style=&quot;color: rgb(189, 193, 198); font-family: arial, sans-serif; font-size: 16px; white-space: pre-line; background-color: rgb(32, 33, 36);&quot;&gt;Google is an engineering company at heart. We hire people with a broad set of technical skills who are ready to take on some of technology&rsquo;s greatest challenges and make an impact on users around the world. At Google, engineers not only revolutionize search, they routinely work on scalability and storage solutions, large-scale applications and entirely new platforms for developers around the world. From Google Ads to Chrome, Android to YouTube, social to local, Google engineers are changing the world one technological achievement after another&lt;/span&gt;', 4, '2022-05-03 14:49:19'),
(4, 'Amazon', 'Hyderabad', 'Software Development Engineer -I ', '&lt;span style=&quot;color: rgb(243, 243, 243); font-family: arial, sans-serif; font-size: 16px; white-space: pre-line; background-color: rgb(32, 33, 36);&quot;&gt;Basic QualificationsSoftware Development Engineer will be responsible for design, development, delivery and support of large-scale, multi-tiered, distributed software applications and tools.Qualifications&bull; Candidates must have a Bachelor in Computer Science Engineering or related field.&bull; Excellent problem solving skills.&bull; Possess an extremely sound understanding of areas in the basic areas of Computer Science such as Algorithms, Data Structures, Object Oriented Design, Databases.&bull; Be able to write Amazon quality code in an object oriented language - preferably in C/C++/Java in a Linux environment.&bull; Candidate must have good written and oral communication skills, be a fast learner and have the ability to adapt quickly to a fast-paced development environment.&bull; Job posting will be in Hyderabad&lt;/span&gt;', 5, '2022-05-03 14:50:54'),
(5, 'Hardinger', 'Kolkata', 'Technical Manager', 'we have urgent requirement of Technical manager for hardinger pvt.ltd.&lt;p&gt;Degree in any branch with a minimum 7.5cgpa.&lt;/p&gt;', 7, '2022-05-03 15:00:56');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(30) NOT NULL,
  `course` text NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course`, `about`) VALUES
(1, 'B.Tech-Computer Science & Engineering', 'Sample'),
(3, 'B.Tech-Information Technology', ''),
(4, 'B.Tech-Electronics Communication & Engineering', ''),
(5, 'B.Tech-Electrical Engineering', ''),
(6, 'B.Tech-Chemical Engineering', ''),
(7, 'B.Tech-Chemical Technology', ''),
(8, 'B.Tech-Optics and Optoelectronics', ''),
(9, 'B.Tech-Polymer Science Technology', ''),
(10, 'B.Tech-Jute Fiber & Technology', '');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(30) NOT NULL,
  `title` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `schedule` datetime NOT NULL,
  `banner` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `content`, `schedule`, `banner`, `date_created`) VALUES
(2, 'Reflexon Reunion 2022', '&lt;span class=&quot;ng-scope&quot; style=&quot;color: rgb(117, 117, 117); font-family: DroidArabicKufi, Roboto, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(245, 245, 245);&quot;&gt;Dear Class of 2016&lt;/span&gt;&lt;p&gt;&lt;span class=&quot;ng-scope&quot; style=&quot;color: rgb(117, 117, 117); font-family: DroidArabicKufi, Roboto, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(245, 245, 245);&quot;&gt;At the offset, let me wish you and your family a Safe, Peaceful &amp;amp; Happy New Year 2022.&lt;/span&gt;&lt;br class=&quot;ng-scope&quot; style=&quot;color: rgb(117, 117, 117); font-family: DroidArabicKufi, Roboto, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(245, 245, 245);&quot;&gt;&lt;span style=&quot;color: rgb(117, 117, 117); font-family: DroidArabicKufi, Roboto, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(245, 245, 245);&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;br class=&quot;ng-scope&quot; style=&quot;color: rgb(117, 117, 117); font-family: DroidArabicKufi, Roboto, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(245, 245, 245);&quot;&gt;&lt;span class=&quot;ng-scope&quot; style=&quot;color: rgb(117, 117, 117); font-family: DroidArabicKufi, Roboto, Helvetica, Arial, sans-serif; font-size: 16px; background-color: rgb(245, 245, 245);&quot;&gt;It also gives me immense pleasure to inform you that the Class of 2016 will be celebrating its Reunion on 4th June 2022.&amp;nbsp; This historic Reunion has special significance as it gives us a lifetime opportunity to once again feel the reverence and pride with which we associate with our prestigious Institution. It is a great opportunity to relive the college days and reconnect with your batchmates, professors, and hostel staff.&lt;/span&gt;&lt;/p&gt;', '2022-06-04 14:00:00', '1651603080_reun.jpg', '2022-05-03 14:38:22'),
(3, 'Mood', '&lt;p roboto=&quot;&quot; slab&quot;,=&quot;&quot; serif;=&quot;&quot; background-color:=&quot;&quot; rgb(245,=&quot;&quot; 245,=&quot;&quot; 245);&quot;=&quot;&quot; style=&quot;margin-bottom: 10px; color: rgb(76, 76, 76); font-size: 20px; line-height: 30px;&quot;&gt;CU is gearing up to host the 1st edition of Mood Indigo, its annual cultural festival, from Oct 3 to 5.&amp;nbsp;&lt;/p&gt;&lt;p roboto=&quot;&quot; slab&quot;,=&quot;&quot; serif;=&quot;&quot; background-color:=&quot;&quot; rgb(245,=&quot;&quot; 245,=&quot;&quot; 245);&quot;=&quot;&quot; style=&quot;margin-bottom: 10px; color: rgb(76, 76, 76); font-size: 20px; line-height: 30px;&quot;&gt;In its attempt to give back to society, Mood Indigo takes up a social cause every year. This year, the fest is championing the expansion of the stem-cell donor registry through its initiative &lsquo;Swab to Save&rsquo;. Mood Indigo organized camps in cities across India where swab samples from people were collected. In order to generate awareness about the drive, the CU Half-Marathon is being organized on the college campus.&lt;/p&gt;', '2022-10-14 10:00:00', '1651603320_mood1.jpg', '2022-05-03 14:42:26');

-- --------------------------------------------------------

--
-- Table structure for table `event_commits`
--

CREATE TABLE `event_commits` (
  `id` int(30) NOT NULL,
  `event_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_commits`
--

INSERT INTO `event_commits` (`id`, `event_id`, `user_id`) VALUES
(1, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `forum_comments`
--

CREATE TABLE `forum_comments` (
  `id` int(30) NOT NULL,
  `topic_id` int(30) NOT NULL,
  `comment` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forum_comments`
--

INSERT INTO `forum_comments` (`id`, `topic_id`, `comment`, `user_id`, `date_created`) VALUES
(1, 3, 'Sample updated Comment', 3, '2020-10-15 15:46:03'),
(3, 3, 'Sample', 1, '2020-10-16 08:48:02'),
(5, 0, '', 1, '2020-10-16 09:49:34'),
(6, 4, 'Yes offcourse, i am very much excited to meet you all again.', 7, '2022-05-03 15:02:13');

-- --------------------------------------------------------

--
-- Table structure for table `forum_topics`
--

CREATE TABLE `forum_topics` (
  `id` int(30) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forum_topics`
--

INSERT INTO `forum_topics` (`id`, `title`, `description`, `user_id`, `date_created`) VALUES
(5, ' Are You Excited For Upcoming Events, Please Give Your Suggestion If Any.', '', 4, '2022-05-03 14:43:56');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(30) NOT NULL,
  `about` text NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `about`, `created`) VALUES
(6, 'University of Calcutta convocation', '2022-05-03 14:33:38'),
(7, 'Alumni Reunion 2016', '2022-05-03 14:34:11'),
(8, 'Picnic in Forest of Batch 2015', '2022-05-03 14:36:15'),
(9, 'Play at University of Calcutta auditorium', '2022-05-03 14:36:46');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'University of Calcutta', 'registrar@caluniv.ac.in', '03323350067', '1602738120_pngtree-purple-hd-business-banner-image_5493.jpg', '&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400; text-align: justify;&quot;&gt;&amp;nbsp;The Court of Directors of the East India Company sent a despatch in July 1854 to the Governor-General of India in Council, suggesting the establishment of the Universities of Calcutta, Madras, and Bombay. In pursuance of that despatch, the University of Calcutta was founded on JANUARY 24, 1857. The University adopted in the first instance, the pattern of the University of London and gradually introduced modifications to its constitution.\r\n\r\n&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 3 COMMENT '1=Admin,2=Alumni officer, 3= alumnus',
  `auto_generated_pass` text NOT NULL,
  `alumnus_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`, `auto_generated_pass`, `alumnus_id`) VALUES
(1, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 1, '', 0),
(3, 'Mike Williams', 'mwilliams@sample.com', '3cc93e9a6741d8b40460457139cf8ced', 3, '', 2),
(4, 'Piyush Tiwari', 'piyusht823@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 3, '', 3),
(5, 'Kumar Gaurav', 'kumargaurav@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 3, '', 4),
(6, 'Sourav Kumar', 'souravkumar7033.sk@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 3, '', 5),
(7, 'Rohan Verma', 'rohanverma@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 3, '', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumnus_bio`
--
ALTER TABLE `alumnus_bio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_commits`
--
ALTER TABLE `event_commits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_comments`
--
ALTER TABLE `forum_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_topics`
--
ALTER TABLE `forum_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alumnus_bio`
--
ALTER TABLE `alumnus_bio`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `event_commits`
--
ALTER TABLE `event_commits`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `forum_comments`
--
ALTER TABLE `forum_comments`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `forum_topics`
--
ALTER TABLE `forum_topics`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

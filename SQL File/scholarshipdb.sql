CREATE DATABASE scholarshipdb;
USE scholarshipdb;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Test', 'admin',9449907192, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-03-02 04:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblapply`
--

CREATE TABLE `tblapply` (
  `ID` int(10) NOT NULL,
  `SchemeId` int(10) DEFAULT NULL,
  `ApplicationNumber` int(10) DEFAULT NULL,
  `UserID` int(10) DEFAULT NULL,
  `DateofBirth` date DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `Category` varchar(30) DEFAULT NULL,
  `Religion` varchar(100) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `AadharNumber` varchar(200) DEFAULT NULL,
  `ProfilePic` varchar(250) DEFAULT NULL,
  `DocReq` varchar(250) DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` mediumtext DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp(),
  `DisbursedAmount` decimal(10,0) DEFAULT NULL,
  `SanctionedDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblapply`
--

INSERT INTO `tblapply` (`ID`, `SchemeId`, `ApplicationNumber`, `UserID`, `DateofBirth`, `Gender`, `Category`, `Religion`, `Address`, `AadharNumber`, `ProfilePic`, `DocReq`, `ApplyDate`, `Remark`, `Status`, `UpdationDate`, `DisbursedAmount`, `SanctionedDate`) VALUES
(1, 4, 282545311, 5, '1998-01-05', 'Female', 'General', 'Hindu', 'H-klljkj', 'uytgyu131234', '5a50384cae0f97de34cf8eb2c34942881688995799.jpg', '585db2665cb1d147f9c82bafac1ad7801688995799.pdf', '2023-12-10 13:29:59', 'Amount has been disbursed', 'Disbursed', '2023-12-11 04:18:50', 4500, '2023-12-12 07:44:06'),
(2, 3, 901248061, 2, '1998-01-05', 'Female', 'OBC', 'Hindu', 'J&K Block Laxmi Nagar J-890', 'trertrt124645', 'be2d71b807ab08ff4ff7fd56e1ea0c8b1688995936.jpg', 'e9aceca6fb9da40a1360a834d6b9e4711688995936.pdf', '2023-12-10 13:32:16', 'Amount has been sanctioned', 'Disbursed', '2023-12-11 04:18:50', 5400, '2023-12-12 07:40:24'),
(3, 4, 625878995, 4, '1989-01-05', 'Female', 'SC', 'Hindu', 'hhuiy', '798787', 'be2d71b807ab08ff4ff7fd56e1ea0c8b1689230522.jpg', 'e9aceca6fb9da40a1360a834d6b9e4711689230522.pdf', '2023-07-13 06:42:02', 'Rejected', 'Rejected', '2023-07-13 06:42:02', NULL, '2023-07-20 13:05:12'),
(4, 2, 403290886, 6, '2002-01-02', 'Male', 'General', 'Hindu', 'A 123 XYZ Apartment\r\nnew delhi', '12345678901', 'abafa8ce548261b77df56a0cdbb366bb1689730066.png', '92c6e6c4e272084e97007a5d4b6af2541689730066.pdf', '2024-01-19 01:27:46', 'Amount disbursed', 'Disbursed', '2024-01-19 01:27:46', 7400, '2024-01-19 17:44:16'),
(5, 3, 204984872, 4, '2000-02-02', 'Male', 'General', 'Hindu', '123 XYZ Aprtment', '36436456', '6a01bb1ba83df2f55a728a85235a1abd1689818476.png', '92c6e6c4e272084e97007a5d4b6af2541689818476.pdf', '2023-07-20 02:01:16', 'Approved', 'Approved', '2024-01-20 02:01:16', NULL, '2024-01-20 02:01:35'),
(6, 2, 435704734, 1, '1998-10-14', 'Male', 'General', 'Hindu', '32534 ABC Apartment \r\nnew Delhi 11001', '85123644', 'cc15b179fd70ab9e5d06e7f2a2bad7631689871856.png', '92c6e6c4e272084e97007a5d4b6af2541689871856.pdf', '2024-01-20 16:50:56', 'Money Trnasferred', 'Disbursed', '2024-01-20 16:50:56', 7400, '2024-01-20 17:01:28');

-- --------------------------------------------------------

--
-- Table structure for table `tblbankdetails`
--

CREATE TABLE `tblbankdetails` (
  `ID` int(10) NOT NULL,
  `ApplicationNumber` int(10) DEFAULT NULL,
  `UserID` int(10) DEFAULT NULL,
  `AccountHoldername` varchar(250) DEFAULT NULL,
  `BankName` varchar(250) DEFAULT NULL,
  `BranchName` varchar(250) DEFAULT NULL,
  `IFSCCode` varchar(250) DEFAULT NULL,
  `AccountNumber` int(10) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbankdetails`
--

INSERT INTO `tblbankdetails` (`ID`, `ApplicationNumber`, `UserID`, `AccountHoldername`, `BankName`, `BranchName`, `IFSCCode`, `AccountNumber`, `CreationDate`) VALUES
(1, 901248061, 2, 'Chotti', 'State Bank of India', 'State Bank of India Laxmi Nagar Delhi', 'HJg78788', 58962314, '2024-01-11 14:21:41'),
(2, 282545311, 5, 'Sayi', 'State Bank of India', 'State Bank of India Delhi Laxmi Nagar', 'ghfghfghf1234', 89789778, '2024-01-12 07:42:09'),
(3, 403290886, 6, 'ranki', 'PNB', 'GT Road Ghazibad', 'PUNB1234', 2147483647, '2024-01-19 17:33:30'),
(4, 204984872, 4, 'kushi', 'PNB', 'GT Road Ghaz', 'PUNB623432', 2147483647, '2024-02-20 02:02:25'),
(5, 435704734, 1, 'John Doe', 'SBI', 'XYZ Branch', 'SBIN128681', 2147483647, '2024-02-20 16:53:36');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '<div style=\"text-align: center;\"><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\"><font size=\"6\">Scholarship Management System</font></b></div><div style=\"text-align: justify;\"><p class=\"MsoNormal\" style=\"line-height: 150%;\"><span lang=\"EN-IN\" style=\"font-size:12.0pt;line-height:150%;mso-bidi-font-family:Calibri;\r\nmso-bidi-theme-font:minor-latin\">The aim of this project is to computerize the\r\noperation of the available SCHOLARSHIPS in the organization and colleges. It is\r\nvery difficult to manage all the works manually. There may have many problems\r\nin accuracy, managing information etc. The proposed system has been designed to\r\nreplace the existing manual system and is user friendly.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-IN\" style=\"font-size:12.0pt;line-height:107%;\r\nmso-fareast-font-family:Calibri;mso-bidi-font-family:Calibri;mso-bidi-theme-font:\r\nminor-latin;color:black;background:white\">In </span><span lang=\"EN-IN\" style=\"font-size:12.0pt;line-height:107%;mso-bidi-font-family:Calibri;\r\nmso-bidi-theme-font:minor-latin;color:black;background:white\">Scholarship\r\nManagement System</span><span lang=\"EN-IN\" style=\"font-size:12.0pt;line-height:\r\n107%;mso-fareast-font-family:Calibri;mso-bidi-font-family:Calibri;mso-bidi-theme-font:\r\nminor-latin;color:black;background:white\"> we use PHP and MySQL database. This\r\nis the project which keeps records of scholarships and students. </span><span lang=\"EN-IN\" style=\"font-size:12.0pt;line-height:107%;mso-bidi-font-family:Calibri;\r\nmso-bidi-theme-font:minor-latin;color:black;background:white\">Scholarship\r\nManagement System</span><span lang=\"EN-IN\" style=\"font-size:12.0pt;line-height:\r\n107%;mso-fareast-font-family:Calibri;mso-bidi-font-family:Calibri;mso-bidi-theme-font:\r\nminor-latin;color:black;background:white\"> has two module i.e. admin and users.<o:p></o:p></span></p></div>', NULL, NULL, NULL);


-- --------------------------------------------------------

--
-- Table structure for table `tblscheme`
--

CREATE TABLE `tblscheme` (
  `ID` int(5) NOT NULL,
  `SchemeName` varchar(250) DEFAULT NULL,
  `SchemeType` varchar(250) DEFAULT NULL,
  `SchemeGrade` varchar(250) DEFAULT NULL,
  `Yearofscholarship` varchar(250) DEFAULT NULL,
  `Category` varchar(250) DEFAULT NULL,
  `Criteria` varchar(250) DEFAULT NULL,
  `DocomentRequired` mediumtext DEFAULT NULL,
  `LastDate` date DEFAULT NULL,
  `ScholarDesc` mediumtext DEFAULT NULL,
  `ScholarAmount` decimal(10,0) DEFAULT NULL,
  `PublishedDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblscheme`
--

INSERT INTO `tblscheme` (`ID`, `SchemeName`, `SchemeType`, `SchemeGrade`, `Yearofscholarship`, `Category`, `Criteria`, `DocomentRequired`, `LastDate`, `ScholarDesc`, `ScholarAmount`, `PublishedDate`) VALUES
(1, 'Swami Dayanand College Scholarship for Delhi/NCR 2021-22','state','other','academic session 2023-24','Delhi/NCR','Passed XII ','1.Domicile certificate to be issued by the competent authority. 2.Proof of annual income to be issued by the competent authority. 3.For renewals, the annual progress report and continuation of studies will be required to be uploaded/ verified by the concerned Univeristy/ Institution/ College.','2022-07-30','Eligibility
To be eligible, an applicant must:	Be from Delhi/NCR region Have scored at least 65% in the 12th examination. For 2nd year students, the candidate should have scored at least 6.5 CGPA.Hold a B.Tech./MBBS/B.E./B.Pharm/Others degree Benefits
The selected students will receive up to INR 5,000 per annum.
How can you apply?
The eligible candidate can apply for the scholarship by using the below-mentioned steps - Step 1: Click on the "Apply Now" button and read all the details carefully. Step 2: Fill in the required details, enclose all supporting documents and submit.
',5000,'2021-03-21'),
(2,'L&T Build India Scholarship','local','BE/BTech degree','2024','All','Students for final year BE/BTech degree in Civil/Electrical Engineering','A valid photo identity proof
•	A photograph if applicable
•	Class 10, 12, and B.E./B.Tech. degree certificates/marksheets
•	Diploma certificate -if any','2024-03-27','Selected scholars will receive a monthly stipend of ₹13,400 for the duration of the program. L&T will cover the entire tuition fee for the two-year M.Tech. CT&M program.
Scholars will also get the opportunity to participate in live projects at L&T construction sites, gaining valuable practical experience. Additionally, alumni of the L&T Build India Scholarship program will guide and mentor the scholars throughout their studies.
',13400,'2023-12-30' ),
(3,'SOF Scholarship of Excellence in English (S.E.E)','local','All','academic session 2024','All','Students of class 1 to 10','Previous year exams report card
•	Filled application form
•	Recommendation signed by Headmaster/Headmistress or Principal','2023-12-31','SOF Scholarship of Excellence in English (S.E.E.) 2021-22 is an initiative for SOF Scholarship of Excellence in English (S.E.E.) 2021-22 from Class 1 to 10 students. The scholarship aims to recognize the students excellence in the English Language. The selected students will get variable awards.',10000,'2023-07-01'),
(4,'Name of Scheme-Prime Minister’s Scholarship Scheme for Central Armed Police Forces and Assam Rifles','state','other','2024-2025','All','Students willing to pursue a professional program in graduation or postgraduation','Service certificate to be issued by the H.O.O in case of serving personnel as per Annexure- Af
•	Admission letter from the college or university
•	Bank account details
•	Applicants are required to upload duly attested scanned copy of the marksheet MEQ i.e. Class 12/diploma/graduation or equivalent is mandatory along with the following certificates which are applicable:
o	PPO/Discharge certificate/book (mandatory for category A to F)
o	Disability certificate (mandatory for category B & D)
o	Death certificate (mandatory for category A & C)
o	Certificate of Gallantry award (mandatory for category E','2024-12-01','Prime Ministers Scholarship Scheme for Central Armed Police Forces and Assam Rifles 2023-24 is a scholarship program for the dependent widows and wards of Central Armed Police Forces (CAPFs) and Assam Rifles (ARs) personnel who have been martyred in the line of duty. The scheme is implemented by the Welfare and Rehabilitation Board, Ministry of Home Affairs. A total of 2,000 new scholarships are equally distributed between boy/girl applicants (1,000 each). The selected boy candidates will receive financial assistance of INR 2,500 per month and girls will receive INR 3,000 per month.','3000','2024-08-31'),
(5,'Kishore Vaigyanik Protsahan Yojana (KVPY)','All','All','2019','sc/st','diploma/degree students','Caste certificate issued and duly signed by the competent authority (GOI) in the prescribed proforma (for SC/ST students)
•	Medical certificate from the prescribed authority (GOI) (For physically disabled students)
•	Scanned photo & signature','2018-08-27','Kishore Vaigyanik Protsahan Yojana (KVPY) 2021 is an opportunity offered to students pursuing bachelors and masters degrees in the science stream. The selected candidates will receive a scholarship of up to INR 7,000 per month and a contingency grant (equivalent to four months fellowship per annum).',5000,'2018-01-01'),
(6,'Siemens Scholarship Program 2019-20','goverment','All','2025','obc','The applicant must: 
•	Be a first-year student of government engineering colleges in any of the following streams: 
o	Mechanical/Production, 
o	Electrical, 
o	Electronics/Instrumentation, 
o	Electronics & Telecommunication, 
o	Computers/Information Technology,
o	Instrumentation
•	Be below 20 years of age
•	Have scored at least 60% marks in class 10 board exams
•	Have scored at least 50% marks in class 12 board exams
•	Have scored at least 60% aggregate marks in class 12 (PCM)
•	Belong to a family where the annual income is not more than INR 2 Lakhs','A valid photo identity proof
•	A photograph (if applicable)
•	Class 10, 12, and B.E./B.Tech. degree certificates/marksheets
•	Diploma certificate (if any)','2022-2-23','- Siemens Scholarship Program 2019-20 is an initiative of Siemens India to support 1st year engineering students of the government colleges from streams like Mechanical/Production, Electrical, Electronics/Instrumentation, Electronics and Telecommunication, Computers/Information Technology, Instrumentation.
The objective of this scholarship is to support determined students having devotion and perseverance towards learning to achieve their personal and professional goals. The scholars after completing graduation can be placed in Siemens and leading companies in various sectors of engineering, banking, and finance, IT services, infrastructure, automotive, consumer goods.',1500,'2022-01-31');


-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(250) DEFAULT NULL,
  `UserName` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(20) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Password` varchar(250) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `UserName`, `MobileNumber`, `Email`, `Password`, `RegDate`) VALUES
 (1, 'John Doe', 'john', 1234567890, 'johndoe12@gmail.com', 'johndoe', '2024-01-15 16:46:26'),
 (2,'Chotti','chotti12',9980954720,'chotti12@gmail.com','chotti12','2024-01-15'),
 (3,'test','test123',9482358860,'test123@gmail.com','test123','2024-01-17 15:03:26'),
 (4,'kushi','kushi1234',9482883780,'kushi1234@gmail.com','kushi1234','2024-01-17 17:35:05'),
 (5,'sayi','sayi12',9113684572,'sayi12@gmail.com','sayi12','2024-02-16 05:45:06'),
 (6,'Ranki','ranki123',6547829826,'ranki123@gmail.com','ranki123','2024-03-01'),
 (7,'sonu','sonu1234',8023659745,'sonu12@gmail.com','sonu25','2024-03-05');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblapply`
--
ALTER TABLE `tblapply`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbankdetails`
--
ALTER TABLE `tblbankdetails`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblscheme`
--
ALTER TABLE `tblscheme`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);
  
  

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblapply`
--
ALTER TABLE `tblapply`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblbankdetails`
--
ALTER TABLE `tblbankdetails`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblscheme`
--
ALTER TABLE `tblscheme`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
  
  
  



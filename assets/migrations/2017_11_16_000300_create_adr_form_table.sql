CREATE TABLE `adr_form` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `institution_name` varchar(50) DEFAULT NULL,
  `institution_code` int(11) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `contact` varchar(50) NOT NULL,
  `patient_name` varchar(100) NOT NULL,
  `ip_no` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `patient_address` varchar(50) NOT NULL,
  `ward_clinic` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `is_alergy` tinyint(4) NOT NULL,
  `alergy_desc` varchar(50) NOT NULL,
  `is_pregnant` tinyint(4) NOT NULL,
  `weight` float NOT NULL,
  `height` float NOT NULL,
  `diagnosis` varchar(100) NOT NULL,
  `reaction_description` text NOT NULL,
  `severity` varchar(30) NOT NULL,
  `action_taken` varchar(30) NOT NULL,
  `outcome` varchar(30) NOT NULL,
  `reaction_casualty` int(11) NOT NULL,
  `other_comment` int(11) NOT NULL,
  `reporting_officer` varchar(3) NOT NULL,
  `reporting_date` varchar(10) NOT NULL,
  `email_address` point NOT NULL,
  `office_phone` varchar(20) NOT NULL,
  `designation` varchar(20) NOT NULL,
  `signature` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1//

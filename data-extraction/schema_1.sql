CREATE TABLE `users` (
  `userid` int(25) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(25) NOT NULL DEFAULT '',
  `last_name` varchar(25) NOT NULL DEFAULT '',
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(25) NOT NULL DEFAULT '',
  `PASSWORD` varchar(255) NOT NULL DEFAULT '',
  `info` text NOT NULL,
  `user_level` enum('Admin','Active','Alumnus','Pledge','Guest') NOT NULL DEFAULT 'Guest',
  `signup_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activated` enum('0','1') NOT NULL DEFAULT '0',
  `status` varchar(25) NOT NULL DEFAULT '',
  `campus_address` varchar(255) NOT NULL DEFAULT '',
  `campus_city` varchar(255) NOT NULL DEFAULT '',
  `campus_state` varchar(11) NOT NULL DEFAULT '',
  `campus_zip` varchar(11) NOT NULL DEFAULT '',
  `perm_address` varchar(255) NOT NULL DEFAULT '',
  `perm_city` varchar(255) NOT NULL DEFAULT '',
  `perm_state` varchar(11) NOT NULL DEFAULT '',
  `perm_zip` varchar(11) NOT NULL DEFAULT '',
  `nickname` varchar(25) NOT NULL DEFAULT '',
  `roll` varchar(11) NOT NULL DEFAULT '0',
  `position1` longtext NOT NULL,
  `position2` longtext NOT NULL,
  `position3` varchar(255) NOT NULL DEFAULT '',
  `position1_rank` varchar(11) NOT NULL DEFAULT '',
  `phone` varchar(25) NOT NULL DEFAULT '',
  `cell` varchar(25) NOT NULL DEFAULT '',
  `aim` varchar(25) NOT NULL DEFAULT '',
  `major` varchar(255) NOT NULL DEFAULT '',
  `birthday_month` varchar(25) NOT NULL DEFAULT '',
  `birthday_day` varchar(25) NOT NULL DEFAULT '',
  `birthday_year` varchar(25) NOT NULL DEFAULT '',
  `public_campus_address` varchar(25) NOT NULL DEFAULT '',
  `public_perm_address` varchar(25) NOT NULL DEFAULT '',
  `public_phone` varchar(25) NOT NULL DEFAULT '',
  `public_cell` varchar(25) NOT NULL DEFAULT '',
  `public_email` varchar(25) NOT NULL DEFAULT '',
  `public_aim` varchar(25) NOT NULL DEFAULT '',
  `public_roll` varchar(25) NOT NULL DEFAULT '',
  `public_major` varchar(25) NOT NULL DEFAULT '',
  `public_nickname` varchar(25) NOT NULL DEFAULT '',
  `public_birthday` varchar(25) NOT NULL DEFAULT '',
  `public_company` varchar(25) NOT NULL DEFAULT '',
  `maiden_name` varchar(25) NOT NULL DEFAULT '',
  `company` varchar(255) NOT NULL DEFAULT '',
  `composite` varchar(255) NOT NULL DEFAULT 'photos/default.jpg',
  `big_id` int(25) NOT NULL DEFAULT '0',
  `dept` enum('AppPhys','Aero','AOSS','BioMed','ChemE','CivE','EECS','IOE','MSE','ME','NAME','NERS','none') NOT NULL DEFAULT 'none',
  `pledge_class` int(25) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=498 DEFAULT CHARSET=latin1 COMMENT='Membership Information';
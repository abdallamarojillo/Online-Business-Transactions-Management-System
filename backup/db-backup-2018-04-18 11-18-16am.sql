DROP TABLE IF EXISTS compclass;

CREATE TABLE `compclass` (
  `compId` int(4) NOT NULL AUTO_INCREMENT,
  `dateEnrolled` varchar(15) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `regNo` varchar(10) NOT NULL,
  `feesPaid` int(5) NOT NULL,
  `introduction` varchar(50) DEFAULT NULL,
  `keyboarding` varchar(50) DEFAULT NULL,
  `msWord` varchar(50) DEFAULT NULL,
  `msExcel` varchar(50) DEFAULT NULL,
  `msPowerpoint` varchar(50) DEFAULT NULL,
  `internet` varchar(50) DEFAULT NULL,
  `dateProcessed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`compId`),
  UNIQUE KEY `regNo` (`regNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE IF EXISTS cyber;

CREATE TABLE `cyber` (
  `cyberId` int(5) NOT NULL AUTO_INCREMENT,
  `dateReceived2` varchar(15) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL,
  `cyber` varchar(50) NOT NULL,
  `amountCharged` int(5) NOT NULL,
  `overallCharges` varchar(5) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `phoneNumber` varchar(50) NOT NULL,
  `proccessedBy` varchar(50) NOT NULL,
  `dateProcessed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cyberId`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

INSERT INTO cyber VALUES("1","2018-01-04","January","2018","Internet Services","0","100","","","","2018-01-04 21:19:23"),
("2","2018-01-04","January","2018","Printing","0","55","","","","2018-01-04 21:27:31"),
("3","2018-01-29","January","2018","Printing","0","60","","","","2018-01-04 21:30:25"),
("4","2018-01-30","January","2018","Internet Services","0","250","","","","2018-01-04 21:30:57"),
("5","2018-01-31","January","2018","Photocopying","0","45","","","","2018-01-04 21:32:04"),
("6","2018-01-31","January","2018","Printing","0","60","","","","2018-01-04 21:32:41"),
("7","2018-01-01","January","2018","Typesetting","0","40","","","","2018-01-04 21:34:40"),
("8","2018-01-02","January","2018","Internet Services","0","100","","","","2018-01-04 21:35:18"),
("9","2018-01-03","January","2018","Printing","0","30","","","","2018-01-04 21:35:49"),
("10","2018-01-06","January","2018","Typesetting","0","200","","","","2018-01-06 10:20:12"),
("11","2018-01-06","January","2018","Internet Services","0","230","","","","2018-01-06 14:50:17"),
("12","2018-01-07","January","2018","Photocopying","0","75","","","","2018-01-07 10:02:21"),
("13","2018-01-08","January","2018","Internet Services","0","521","","","","2018-01-08 19:21:14"),
("14","2018-01-15","January","2018","Internet Services","0","230","","","","2018-01-15 21:26:49"),
("15","2018-01-15","January","2018","Internet Services","0","300","","","","2018-01-15 21:28:15"),
("16","2018-01-18","January","2018","Internet Services","0","400","","","","2018-01-18 12:35:55"),
("17","2018-01-27","January","2018","Printing","0","50","","","","2018-01-27 15:17:14"),
("18","2018-01-27","January","2018","Printing","150","150","","","","2018-01-27 19:12:27"),
("19","2018-01-29","January","2018","Typesetting","100","90","","","","2018-01-29 18:28:55"),
("20","2018-01-30","January","2018","Internet Services","50","50","","","","2018-01-30 17:28:23"),
("21","2018-02-01","February","2018","Printing","170","150","","","","2018-02-01 14:22:35"),
("22","2018-02-01","February","2018","Printing","50","50","","","","2018-02-01 14:55:56"),
("23","2018-02-01","February","2018","Photocopying","45","40","","","","2018-02-01 14:57:59"),
("24","2018-02-01","February","2018","Internet Services","90","50","","","","2018-02-01 15:02:16"),
("25","2018-02-01","February","2018","Photocopying","40","40","","","","2018-02-01 15:03:13"),
("26","2018-02-01","February","2018","Printing","10","10","","","","2018-02-01 15:03:53"),
("27","2018-02-01","February","2018","Typesetting","50","50","","","","2018-02-08 11:49:06"),
("28","2018-02-01","February","2018","Typesetting","50","50","","","","2018-02-08 11:48:21"),
("29","2018-02-14","February","2018","Printing","100","100","","","","2018-02-11 18:58:26"),
("30","2018-02-11","February","2018","Typesetting","230","230","","","","2018-02-11 21:47:02"),
("31","2018-02-11","February","2018","Internet Services","150","100","","","","2018-02-11 21:48:39"),
("32","2018-02-11","February","2018","Printing","140","140","","","Buya","2018-02-11 22:33:54"),
("33","2018-02-12","February","2018","Photocopying","45","40","","","Abdalla","2018-02-12 00:56:41"),
("34","2018-02-13","February","2018","Printing","100","100","","","Abdalla","2018-02-13 17:27:23"),
("35","2018-02-14","February","2018","Internet Services","150","100","","","Abdalla","2018-02-14 08:17:56"),
("36","2018-02-14","February","2018","Printing","100","10","","","Abdalla","2018-02-14 14:47:47"),
("37","2018-02-14","February","2018","Printing","200","100","","","Abdalla","2018-02-14 14:49:20"),
("39","2018-02-14","February","2018","Photocopying","400","50","","","Abdalla","2018-02-14 14:51:55"),
("41","2018-02-14","February","2018","Photocopying","100","100","","","Abdalla","2018-03-05 20:46:44"),
("42","2018-02-14","February","2018","Internet Services","400","200","","","Abdalla","2018-03-05 20:46:17"),
("43","2018-02-14","February","2018","Photocopying","500","500","Josephine","0727014069","Abdalla","2018-02-16 17:06:43"),
("44","2018-03-05","March","2018","Printing","340","340","Abdalla","0727014069","Abdalla","2018-03-05 21:13:11"),
("45","2018-03-08","March","2018","Photocopying","55","50","Abdalla","0727014069","Abdalla","2018-03-08 22:19:19");



DROP TABLE IF EXISTS dailytarget;

CREATE TABLE `dailytarget` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `dailytarget` int(6) NOT NULL,
  `dateSet` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

INSERT INTO dailytarget VALUES("7","500","2018-01-04"),
("8","400","2018-01-04"),
("9","400","2018-01-05"),
("10","400000","2018-01-06"),
("11","400","2018-01-06"),
("12","400000","2018-01-06"),
("13","400","2018-01-06"),
("14","8","2018-01-06"),
("15","500","2018-01-06"),
("16","600","2018-01-06"),
("17","500","2018-01-07"),
("18","500","2018-01-07"),
("19","600","2018-01-08"),
("20","500","2018-01-08"),
("21","400","2018-01-15"),
("22","500","2018-01-15"),
("23","600","2018-01-15"),
("24","400","2018-02-13"),
("25","500","2018-03-02"),
("26","1000","2018-03-02"),
("27","3000","2018-03-06");



DROP TABLE IF EXISTS expenses;

CREATE TABLE `expenses` (
  `expenseId` int(5) NOT NULL AUTO_INCREMENT,
  `expenseName` varchar(50) NOT NULL,
  `expenseAmount` int(6) NOT NULL,
  `month` varchar(20) NOT NULL,
  `year` int(5) NOT NULL,
  `dateProcessed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`expenseId`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

INSERT INTO expenses VALUES("10","Business Rent","4000","January","2018","2018-01-30 13:09:33"),
("11","Electricity","500","January","2018","2018-01-30 13:26:29"),
("12","Business Rent","4000","February","2018","2018-02-01 14:22:00"),
("13","Electricity","500","February","2018","2018-02-08 11:52:00"),
("14","Ink","1500","February","2018","2018-02-11 20:47:44"),
("15","Office Chair","5000","February","2018","2018-02-14 09:30:15"),
("16","Office Pen","50","March","2018","2018-03-02 09:59:24"),
("17","Computer Desktop","60000","March","2018","2018-03-02 23:59:25"),
("18","Rent","5000","March","2018","2018-03-03 08:43:07"),
("20","HOUSE","100000","March","2018","2018-03-12 13:10:08"),
("21","LICENCE","50000","March","2018","2018-03-12 13:11:19"),
("22","Rent","4000","April","2018","2018-04-03 18:46:33"),
("23","Electricity","1000","April","2018","2018-04-09 14:38:03");



DROP TABLE IF EXISTS failed_logins;

CREATE TABLE `failed_logins` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `ip` varchar(30) NOT NULL,
  `device` varchar(20) NOT NULL,
  `deviceName` varchar(100) NOT NULL,
  `userAgent` varchar(200) NOT NULL,
  `failedString` varchar(255) NOT NULL,
  `failedPass` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'allowed',
  `dateProccessed` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

INSERT INTO failed_logins VALUES("14","192.168.43.1","phone","Abdalla","Mozilla/5.0 (Linux; Android 6.0; Infinix-X600-LTE Build/MRA58K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.97 Mobile Safari/537.36","Abdalla","Hdhd","allowed","2018-04-17 19:37:39"),
("15","192.168.43.1","phone","Abdalla","Mozilla/5.0 (Linux; Android 6.0; Infinix-X600-LTE Build/MRA58K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.97 Mobile Safari/537.36","Jsbd","Bsbs","allowed","2018-04-17 19:37:32"),
("16","192.168.43.1","phone","Abdalla","Mozilla/5.0 (Linux; Android 6.0; Infinix-X600-LTE Build/MRA58K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.97 Mobile Safari/537.36","Jsjs","Nsns","allowed","2018-04-17 19:37:27"),
("17","192.168.43.1","phone","Abdalla","Mozilla/5.0 (Linux; Android 6.0; Infinix-X600-LTE Build/MRA58K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.97 Mobile Safari/537.36","Gh","Ttt","allowed","2018-04-17 19:37:22");



DROP TABLE IF EXISTS feedback;

CREATE TABLE `feedback` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'unread',
  `timeSent` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO feedback VALUES("1","User","user@gail.com","Unblock Me","Please unblobk me","read","2018-03-08 21:59:18");



DROP TABLE IF EXISTS monthlytarget;

CREATE TABLE `monthlytarget` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `monthlyTarget` int(6) NOT NULL,
  `dateSet` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO monthlytarget VALUES("3","5000","2018-01-04"),
("4","10000","2018-03-01");



DROP TABLE IF EXISTS orders;

CREATE TABLE `orders` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `dateOrdered` varchar(100) NOT NULL,
  `orderName` varchar(100) NOT NULL,
  `quantity` int(6) NOT NULL,
  `orderStatus` varchar(50) NOT NULL DEFAULT 'pending',
  `amountCharged` int(6) NOT NULL,
  `deposit` int(6) NOT NULL,
  `finalAmount` int(6) NOT NULL,
  `customerName` varchar(50) NOT NULL,
  `customerContact` varchar(50) NOT NULL,
  `dateProcessed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO orders VALUES("2","2018-04-15","Oppo Phone","1","pending","15000","4000","0","Stella","0711201456","2018-04-15 11:29:57");



DROP TABLE IF EXISTS photography;

CREATE TABLE `photography` (
  `photoId` int(3) NOT NULL AUTO_INCREMENT,
  `dateReceived1` varchar(20) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL,
  `photoOption` varchar(20) NOT NULL,
  `source` varchar(50) NOT NULL,
  `amountCharged` int(6) NOT NULL,
  `amountPaid1` int(4) NOT NULL,
  `cName` varchar(50) NOT NULL,
  `cContact` varchar(50) NOT NULL,
  `proccessedBy` varchar(50) NOT NULL,
  `dateProcessed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`photoId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

INSERT INTO photography VALUES("6","2018-01-04","January","2018","Passport","studio","0","50","","","","2018-01-04 21:14:33"),
("7","2018-01-05","January","2018","Passport","studio","0","200","","","","2018-01-05 07:46:56"),
("8","2018-01-08","January","2018","Passport","studio","0","150","","","","2018-01-08 19:34:16"),
("9","2018-02-01","February","2018","A4","studio","0","200","","","","2018-02-01 14:27:32"),
("10","2018-02-03","February","2018","A4","clients","0","200","","","","2018-02-03 20:45:18"),
("11","2018-02-11","February","2018","Photo Album Size","clients","0","50","","","","2018-02-11 19:09:12"),
("12","2018-02-12","February","2018","Passport","studio","0","150","","","Abdalla","2018-02-12 01:01:58"),
("13","2018-02-14","February","2018","A4","studio","0","200","","","Abdalla","2018-02-14 08:18:37"),
("15","2018-03-05","March","2018","Passport","From Studio","150","150","client","0720523708","Abdalla","2018-03-05 19:39:23"),
("16","2018-03-05","March","2018","Passport","From Studio","200","160","Cate","0720523708","Abdalla","2018-03-05 20:53:53");



DROP TABLE IF EXISTS repairs;

CREATE TABLE `repairs` (
  `repairId` int(5) NOT NULL AUTO_INCREMENT,
  `dateReceived` varchar(50) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL,
  `itemDescription` varchar(100) NOT NULL,
  `itemProblem` varchar(100) NOT NULL,
  `Owner` varchar(50) NOT NULL,
  `ownerContact` varchar(20) NOT NULL,
  `amountCharged` int(5) NOT NULL,
  `amountPaid` varchar(100) NOT NULL,
  `status` enum('fixed','notfixed','pending') DEFAULT NULL,
  `proccessedBy` varchar(50) NOT NULL,
  `dateProcessed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`repairId`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;

INSERT INTO repairs VALUES("78","2018-01-04","January","2018","Sony","Broken Screen","Abdalla","0727014069","0","300","fixed","","2018-01-04 21:12:33"),
("79","2018-01-03","January","2018","Nokia","Keypard broken","John","0703537387","0","130","pending","","2018-01-04 21:18:44"),
("80","2018-01-03","January","2018","Infinix","lose battery","Kim","n/a","0","150","fixed","","2018-01-04 21:40:17"),
("81","2018-01-02","January","2018","Lenovo Phone","camera","kieti","0720523708","0","300","pending","","2018-01-04 21:41:47"),
("82","2018-01-05","January","2018","Samsung","Needs to be flashed","Rick","N/A","0","100","pending","","2018-01-05 10:58:37"),
("83","2018-01-05","January","2018","Samsung","Broken Screen","paul","na","0","800","fixed","","2018-01-05 12:01:53"),
("84","2018-01-06","January","2018","Tecno Phone","Hanging","Erick","N/A","0","200","fixed","","2018-01-06 08:39:55"),
("85","2018-01-06","January","2018","Hp laptop","Formatting ","George ","Na","0","1800","fixed","","2018-01-06 14:51:32"),
("86","2018-01-20","January","2018","Tecno C8 Phone","Not Booting","Josephine","0711526478","800","800","fixed","","2018-01-24 22:31:45"),
("87","2018-01-20","January","2018","Dell Laptop","To format","Kim","0733425472","500","500","fixed","","2018-01-22 10:18:06"),
("88","2018-01-20","January","2018","Infinix Note 2 ","Internet Access","Cate Abdalla","0727014069","1000","1400","fixed","","2018-01-24 19:18:22"),
("89","2018-01-22","January","2018","Hp Laptop","New Operating System","Abdalla Salim","0723564702","500","500","fixed","","2018-01-22 11:23:52"),
("90","2018-01-23","January","2018","Laptop","Broken code","Abdalla","0727014069","200","200","pending","","2018-01-23 09:49:34"),
("91","2018-01-23","January","2018","Hp Laptop","Broken Screen","Linus","na","500","500","pending","","2018-01-24 14:42:17"),
("92","2018-01-24","January","2018","LG","Broken Screen ","Kennedy","NA","500","500","fixed","","2018-01-24 14:49:32"),
("93","2018-01-24","January","2018","Dell","sticky mouse","ERD","NA","200","200","fixed","","2018-01-24 21:26:12"),
("94","2018-01-24","January","2018","Infinix Note 4","Finger print broken","John","NA","1000","1000","fixed","","2018-01-25 09:30:18"),
("95","2018-01-25","January","2018","Hp laptop","Keyboard Problem","Kim","na","1200","1200","pending","","2018-01-27 11:06:36"),
("96","2018-01-27","January","2018","Hp elitebook","Monitor ","Zawadi ","Na","800","800","pending","","2018-02-08 11:50:50"),
("97","2018-01-29","January","2018","laptop","overheating","mukuria","0710569876","1000","1000","pending","","2018-01-30 17:53:32"),
("98","2018-01-29","January","2018","hp laptop","windows activation","paul","na","100","100","fixed","","2018-01-30 13:27:00"),
("99","2018-02-11","February","2018","HP Notebook","Bateery","Kiptoo","NA","4000","4000","fixed","Abdalla","2018-02-12 14:57:58"),
("101","2018-02-14","February","2018","lenovo","hanging","shariff","na","500","500","fixed","Abdalla","2018-02-15 05:32:00"),
("102","2018-02-15","February","2018","Tecno Phone","Freezing","Josephine","0727014069","200","200","fixed","Abdalla","2018-02-15 12:23:17"),
("104","2018-03-05","March","2018","Hp Laptop","Need Formatting","Brian","0720523708","500","500","fixed","Abdalla","2018-03-05 18:41:40");



DROP TABLE IF EXISTS sales;

CREATE TABLE `sales` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `dateSold` varchar(20) NOT NULL,
  `month` varchar(50) NOT NULL,
  `year` int(5) NOT NULL,
  `itemName` varchar(100) NOT NULL,
  `quantity` int(5) NOT NULL,
  `amountC` int(6) NOT NULL,
  `amountP` int(6) NOT NULL,
  `discount` int(8) NOT NULL DEFAULT '0',
  `cName` varchar(50) NOT NULL,
  `cContact` varchar(10) NOT NULL,
  `proccessedBy` varchar(50) NOT NULL,
  `time` varchar(100) NOT NULL,
  `dateProccessed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

INSERT INTO sales VALUES("22","2018-02-16","February","2018","8 GB USB Flash Disk","2","2000","2000","0","","","Josephine","","2018-02-16 23:20:39"),
("23","2018-02-16","February","2018","8 GB USB Flash Disk","1","1000","1000","0","","","Josephine","","2018-02-16 23:21:28"),
("24","2018-02-16","February","2018","8 GB USB Flash Disk","1","1000","1000","0","","","Josephine","","2018-02-16 23:22:16"),
("25","2018-02-16","February","2018","Infinix Note 3","1","10000","9000","0","Erick","0712345679","Abdalla","","2018-02-16 23:33:11"),
("26","2018-02-17","February","2018","Infinix Note 3","1","10000","10000","0","John","0703537387","Abdalla","","2018-02-17 09:09:37"),
("27","2018-02-17","February","2018","Blue Biro Bic Pen","2","10","10","0","","","Abdalla","","2018-02-17 13:29:07"),
("28","2018-02-17","February","2018","Red Biro Bic Pen","2","10","10","0","","","Abdalla","","2018-02-17 13:31:47"),
("29","2018-02-17","February","2018","Empty CD","2","40","40","0","","","Cate","","2018-02-17 14:00:38"),
("30","2018-02-18","February","2018","Safaricom Router","1","6000","6000","0","Apiyo","0720523708","Abdalla","","2018-02-18 12:46:41"),
("31","2018-02-18","February","2018","4gb SanDisk Memory Card","1","600","600","0","","","Abdalla","","2018-02-18 18:46:30"),
("32","2018-02-18","February","2018","1TB External Hard Disk","1","6000","6000","0","Erick","0712345679","Abdalla","","2018-02-18 19:33:28"),
("33","2018-02-19","February","2018","1TB External Hard Disk","1","6000","6000","0","Linus","0701125640","Abdalla","","2018-02-19 09:55:24"),
("34","2018-02-19","February","2018","Earphones","1","200","200","0","Paul","0720523708","Abdalla","","2018-02-19 10:07:26"),
("36","2018-02-26","February","2018","Asus Phone","3","30000","20000","0","Mukuria","0727014069","Abdalla","","2018-02-26 12:32:34"),
("37","2018-03-01","March","2018","Apple Iphone","1","50000","50000","0","","","Abdalla","09 am","2018-03-01 22:24:41"),
("38","2018-03-01","March","2018","2 Quire Book","1","200","200","0","Mukuria Samuel","0720523708","Abdalla","03 pm","2018-03-01 22:24:21"),
("40","2018-03-01","March","2018","HB Pencil","5","10","10","0","","","Abdalla","04 pm","2018-03-01 22:23:38"),
("41","2018-03-01","March","2018","USB Cable","1","150","150","0","","","Abdalla","09 pm","2018-03-01 22:21:47"),
("42","2018-03-01","March","2018","Red Biro Bic Pen","1","10","10","0","","","Abdalla","10 pm","2018-03-01 22:22:02"),
("43","2018-03-01","March","2018","Sub Woofer","1","4000","4000","0","","","Abdalla","10 pm","2018-03-01 22:22:17"),
("44","2018-03-02","March","2018","Earphones","2","200","200","0","Apiyo","0720523708","Abdalla","12 am","2018-03-03 13:18:19"),
("45","2018-03-02","March","2018","HB Pencil","1","10","10","0","","","Abdalla","09 am","2018-03-02 09:14:38"),
("46","2018-03-02","March","2018","USB Cable","1","150","150","0","","","Abdalla","11 am","2018-03-02 11:06:57"),
("47","2018-03-02","March","2018","4gb SanDisk Memory Card","1","500","500","0","","","Abdalla","04 pm","2018-03-02 16:37:23"),
("49","2018-03-03","March","2018","Infinix Note 3","1","10000","10000","0","","","Abdalla","09 am","2018-03-03 09:36:45"),
("50","2018-03-03","March","2018","4 Quire Book","1","250","250","0","","","Abdalla","10 am","2018-03-03 10:25:38"),
("51","2018-03-03","March","2018","USB Cable","1","150","150","0","Abdalla","0720523708","Abdalla","11 am","2018-03-03 12:54:58"),
("52","2018-03-03","March","2018","Earphones","1","150","150","0","","","Abdalla","12 pm","2018-03-03 12:55:40"),
("54","2018-03-03","March","2018","Empty CD","3","60","60","0","","","Abdalla","13","2018-03-03 13:13:19"),
("55","2018-03-03","March","2018","Empty DVD","2","100","100","0","","","Abdalla","14","2018-03-06 12:28:08"),
("56","2018-03-04","March","2018","Blue Biro Bic Pen","2","20","20","0","","","Abdalla","20","2018-03-04 20:20:40"),
("57","2018-03-06","March","2018","HP Laptop","1","30000","25000","0","Kim","0720523708","Abdalla","12","2018-03-06 12:39:07"),
("58","2018-03-06","March","2018","Wiko Phone","1","10000","10000","0","Cate","0720523708","Abdalla","13","2018-03-06 13:04:30"),
("59","2018-03-06","March","2018","4gb SanDisk Memory Card","1","600","580","0","Oman","0720523708","Abdalla","16","2018-03-08 22:17:51"),
("60","2018-03-06","March","2018","Safaricom Router","1","4000","4000","0","","","Samuel","20","2018-03-06 20:44:24"),
("61","2018-03-06","March","2018","fullscap","10","10","10","0","","","Abdalla","23","2018-03-06 23:34:54"),
("64","2018-03-10","March","2018","infinix note 2","1","8000","8000","0","","","Abdalla","15","2018-03-10 15:36:01"),
("65","2018-03-10","March","2018","Earphones","1","200","200","0","","","Abdalla","15","2018-03-10 15:39:04"),
("66","2018-03-10","March","2018","Mountain Bike","1","15000","15000","0","","","Abdalla","16","2018-03-10 16:19:43"),
("67","2018-03-17","March","2018","4gb SanDisk Memory Card","2","1200","1200","0","Deniis","0720523708","Abdalla","14","2018-03-17 14:14:41"),
("68","2018-03-20","March","2018","Apple Iphone","2","100000","100000","0","shem","0701325698","Abdalla","13","2018-04-04 11:08:14"),
("69","2018-04-07","April","2018","HP Battery","1","3500","3500","0","Abdalla","0727014069","Abdalla","16","2018-04-07 16:07:29"),
("70","2018-04-07","April","2018","Wiko Phone","1","10000","9000","1000","Mwanamwinyi","0720523708","Abdalla","16","2018-04-07 16:52:40"),
("71","2018-04-07","April","2018","Sub Woofer","1","5000","4000","0","John","0712012456","Abdalla","16","2018-04-07 16:53:49"),
("72","2018-04-09","April","2018","Earphones","1","200","150","50","Abdalla","0720523708","Abdalla","14","2018-04-09 14:26:01"),
("73","2018-04-09","April","2018","HP Laptop","1","30000","25000","0","John","0703537887","Abdalla","14","2018-04-09 14:39:40"),
("74","2018-04-11","April","2018","Blue Biro Bic Pen","1","10","10","0","","","Abdalla","10","2018-04-11 10:50:07"),
("75","2018-04-14","April","2018","Empty CD","1","20","20","0","","","Abdalla","20","2018-04-14 20:04:08"),
("76","2018-04-17","April","2018","1TB External Hard Disk","1","6000","6000","0","Mukuria","0720523708","Abdalla","19","2018-04-17 19:31:35"),
("77","2018-04-17","April","2018","1TB External Hard Disk","1","6000","5000","1000","Mukuria","0720523708","Abdalla","19","2018-04-17 19:32:35"),
("78","2018-04-17","April","2018","1TB External Hard Disk","1","6000","5500","0","Apiyo","0720523708","Abdalla","19","2018-04-17 19:41:12");



DROP TABLE IF EXISTS signinlogs;

CREATE TABLE `signinlogs` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `OTP` int(6) NOT NULL,
  `timeOTPsent` varchar(100) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `timeLoggedin` varchar(50) NOT NULL,
  `timeLoggedout` varchar(50) NOT NULL,
  `dateProccessed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1099 DEFAULT CHARSET=latin1;

INSERT INTO signinlogs VALUES("1096","Abdalla","150344","2018-04-17 07:28 08 pm","::1","2018-04-17 06:28 30 pm","2018-04-17 07:42 04 pm","2018-04-17 19:42:04"),
("1097","Abdalla","304977","2018-04-17 07:39 22 pm","192.168.43.1","2018-04-17 06:39 38 pm","2018-04-17 07:41 44 pm","2018-04-17 19:41:44"),
("1098","Abdalla","767803","2018-04-18 11:16 49 am","::1","2018-04-18 10:18 11 am","","2018-04-18 11:18:11");



DROP TABLE IF EXISTS stock;

CREATE TABLE `stock` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `stockName` varchar(100) NOT NULL,
  `stockQuantity` int(5) NOT NULL,
  `stockAmount` int(6) NOT NULL,
  `totalAmount` int(6) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

INSERT INTO stock VALUES("16","Sub Woofer","3","5000","15000","2018-04-07 16:53:49"),
("17","Tecno Phanton","3","9000","27000","2018-03-01 12:26:07"),
("18","fullscap","990","1","990","2018-03-06 23:34:54"),
("19","Blue Biro Bic Pen","15","10","150","2018-04-11 10:50:07"),
("20","Red Biro Bic Pen","6","10","60","2018-03-01 22:04:11"),
("21","2 Quire Book","9","200","1800","2018-03-01 14:08:34"),
("22","4 Quire Book","9","350","3150","2018-03-03 10:25:38"),
("23","Empty DVD","23","30","690","2018-03-03 14:20:38"),
("24","Empty CD","34","20","680","2018-04-14 20:04:08"),
("25","HB Pencil","44","10","440","2018-03-02 09:14:38"),
("26","Earphones","4","200","800","2018-04-09 14:26:00"),
("29","4gb SanDisk Memory Card","14","600","8400","2018-03-17 14:14:01"),
("31","Wiko Phone","5","10000","50000","2018-04-07 16:52:40"),
("32","Asus Phone","2","10000","20000","2018-02-26 12:32:34"),
("42","Apple Iphone","1","50000","50000","2018-03-20 13:03:25"),
("58","Mountain Bike","2","15000","30000","2018-03-10 16:19:43"),
("59","USB Cable","10","200","2000","2018-03-10 14:21:41"),
("60","HP Battery","2","3500","7000","2018-04-07 16:06:40"),
("61","infinix note 2","4","8000","32000","2018-03-10 15:36:01"),
("62","infinix note 3","3","11000","33000","2018-03-10 15:33:59");



DROP TABLE IF EXISTS users;

CREATE TABLE `users` (
  `userId` int(2) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `userlevel` varchar(10) NOT NULL DEFAULT 'user',
  `password` varchar(255) NOT NULL,
  `newPassword` varchar(255) NOT NULL,
  `dateRegistered` varchar(50) NOT NULL,
  `dateModified` varchar(50) NOT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

INSERT INTO users VALUES("60","Dido","dorothypendo@gmail.com","user","$2y$12$QmDZSa5VlwmQLR6eJoNaMeXkxkltctePKRcwnPZNkORSj4Z6jp20S","$2y$12$2UrGaWnCqtS9hfkzNZZraueyhptXDmBdhDlFqYpl5XIN1HLIIyVJq","22:26:00 March 06 2018 ","2018-03-10 12:30:31"),
("61","mukus","mukus@gmail.com","admin","$2y$12$3k5aUAgJ1zOVWdKqmaNI8us6e/Th36We/zquuWzIrr0wxujSy3I1q","","13:00:31 March 20 2018 ",""),
("63","Abdalla","marojillo@gmail.com","admin","$2y$12$pIMGPmOPN/q8xkxziAyqQeudYUeM.jDCwIRZsrBYz2I1WhDRYAmfi","","20:17:00 April 14 2018 ","");



DROP TABLE IF EXISTS yearlytarget;

CREATE TABLE `yearlytarget` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `yearlytarget` int(6) NOT NULL,
  `dateSet` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO yearlytarget VALUES("1","10000","2018-02-11 00:00:00"),
("2","20000","2018-02-11 00:00:00"),
("3","30000","2018-02-14 00:00:00"),
("4","30000","2018-03-02 00:00:00");




/*
SQLyog Community v9.32 GA
MySQL - 5.1.61-community : Database - bankdetails
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bankdetails` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `bankdetails`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `aid` varchar(5) NOT NULL,
  `aname` varchar(100) NOT NULL,
  `apasswd` varchar(100) NOT NULL,
  `isactive` int(5) DEFAULT '1',
  `udate` date DEFAULT NULL,
  PRIMARY KEY (`aid`,`aname`,`apasswd`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`aid`,`aname`,`apasswd`,`isactive`,`udate`) values ('1','admin','222222',1,'2020-07-08');

/*Table structure for table `cgroup` */

DROP TABLE IF EXISTS `cgroup`;

CREATE TABLE `cgroup` (
  `srno` int(5) NOT NULL AUTO_INCREMENT,
  `cid` varchar(5) DEFAULT NULL,
  `gid` varchar(15) DEFAULT NULL,
  `cname` varchar(50) DEFAULT NULL,
  `clname` varchar(25) DEFAULT NULL,
  `cemail` varchar(20) DEFAULT NULL,
  `cphno` varchar(10) DEFAULT NULL,
  `cage` varchar(3) DEFAULT NULL,
  `caddress` varchar(200) DEFAULT NULL,
  `udate` date DEFAULT NULL,
  UNIQUE KEY `srno` (`srno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `cgroup` */

insert  into `cgroup`(`srno`,`cid`,`gid`,`cname`,`clname`,`cemail`,`cphno`,`cage`,`caddress`,`udate`) values (1,'2',NULL,'Lakshmi','Rai','m.ik@gmail.com','1234567890','24','Hubballi','2020-07-26');

/*Table structure for table `contactus` */

DROP TABLE IF EXISTS `contactus`;

CREATE TABLE `contactus` (
  `slno` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `phno` varchar(11) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` varchar(250) DEFAULT NULL,
  `cdate` date DEFAULT NULL,
  PRIMARY KEY (`slno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `contactus` */

insert  into `contactus`(`slno`,`name`,`email`,`phno`,`subject`,`message`,`cdate`) values (1,'yeshwanth','y.ikmys@gmail.com','1234567891','Loan','How Can i avail a loan ','2020-07-26'),(2,'Roopa','roopar92@gmail.com','9916236784','educational loan','emergancy','2020-07-29');

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `srno` int(5) NOT NULL AUTO_INCREMENT,
  `cid` varchar(5) NOT NULL,
  `gid` varchar(20) DEFAULT NULL,
  `cname` varchar(200) DEFAULT NULL,
  `clname` varchar(20) DEFAULT NULL,
  `cemail` varchar(200) DEFAULT NULL,
  `cpasswd` varchar(50) DEFAULT NULL,
  `cphno` varchar(10) DEFAULT NULL,
  `cage` varchar(20) DEFAULT NULL,
  `caddress` varchar(200) DEFAULT NULL,
  `cdate` date DEFAULT NULL,
  `udate` date DEFAULT NULL,
  `profile` varchar(200) DEFAULT 'profile.jpg',
  `isactive` int(5) DEFAULT '1',
  PRIMARY KEY (`srno`,`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `customer` */

insert  into `customer`(`srno`,`cid`,`gid`,`cname`,`clname`,`cemail`,`cpasswd`,`cphno`,`cage`,`caddress`,`cdate`,`udate`,`profile`,`isactive`) values (1,'1','1234','Ramesh','d','raaghuik96@gmail.com','333333','9620765819','89','mysore','2020-06-18','2020-07-24','gal71.jpg',1),(2,'2','05661','Sufiya','Umme','imusufiya@gmail.com','suf1234','7892040242','21','Rajivnagar 2nd stage Mysuru','2020-07-19','2020-07-27','user2.jpg',1);

/*Table structure for table `custpdetails` */

DROP TABLE IF EXISTS `custpdetails`;

CREATE TABLE `custpdetails` (
  `srno` int(5) NOT NULL AUTO_INCREMENT,
  `cid` varchar(5) DEFAULT NULL,
  `cphno` varchar(11) DEFAULT NULL,
  `cname` varchar(20) DEFAULT NULL,
  `caadhaarno` varchar(16) DEFAULT NULL,
  `cvoteridno` varchar(15) DEFAULT NULL,
  `cpanno` varchar(15) DEFAULT NULL,
  `caccno` varchar(20) DEFAULT NULL,
  `cannualincome` varchar(10) DEFAULT NULL,
  `crelegion` varchar(10) DEFAULT NULL,
  `ccaste` varchar(15) DEFAULT NULL,
  `ctype` varchar(15) DEFAULT NULL,
  `cstatus` varchar(15) DEFAULT NULL,
  `cfathername` varchar(20) DEFAULT NULL,
  `cmothername` varchar(20) DEFAULT NULL,
  `cspousename` varchar(20) DEFAULT NULL,
  `ckids` varchar(10) DEFAULT NULL,
  `ceducation` varchar(20) DEFAULT NULL,
  `ctotalfamilymembers` varchar(20) DEFAULT NULL,
  `cnominee` varchar(20) DEFAULT NULL,
  `cnomineeaadhaar` varchar(20) DEFAULT NULL,
  `aadhaarimage` varchar(200) DEFAULT NULL,
  `voteridimage` varchar(200) DEFAULT NULL,
  `nomineeaadhaarimage` varchar(200) DEFAULT NULL,
  `udate` date DEFAULT NULL,
  `isactive` int(6) DEFAULT '1',
  PRIMARY KEY (`srno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `custpdetails` */

insert  into `custpdetails`(`srno`,`cid`,`cphno`,`cname`,`caadhaarno`,`cvoteridno`,`cpanno`,`caccno`,`cannualincome`,`crelegion`,`ccaste`,`ctype`,`cstatus`,`cfathername`,`cmothername`,`cspousename`,`ckids`,`ceducation`,`ctotalfamilymembers`,`cnominee`,`cnomineeaadhaar`,`aadhaarimage`,`voteridimage`,`nomineeaadhaarimage`,`udate`,`isactive`) values (1,'1','7760189701','Ramesh','1234567890','C1234567890','C1234567','1234567890','123456','Hindu','Gowda','Self Employeed','Married','Ramappa','Lakshmi','Nirmala','2','Degree','10','Spouse','S1234567890',NULL,NULL,NULL,NULL,1);

/*Table structure for table `donation` */

DROP TABLE IF EXISTS `donation`;

CREATE TABLE `donation` (
  `srno` int(5) NOT NULL AUTO_INCREMENT,
  `dname` varchar(25) DEFAULT NULL,
  `dphno` varchar(10) DEFAULT NULL,
  `demail` varchar(25) DEFAULT NULL,
  `daddress` varchar(100) DEFAULT NULL,
  `cdate` date DEFAULT NULL,
  PRIMARY KEY (`srno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `donation` */

insert  into `donation`(`srno`,`dname`,`dphno`,`demail`,`daddress`,`cdate`) values (1,'Ramesh','1234567890','i.kmys@gmail.com','Bangalore','2020-07-27');

/*Table structure for table `emi` */

DROP TABLE IF EXISTS `emi`;

CREATE TABLE `emi` (
  `srno` int(50) NOT NULL AUTO_INCREMENT,
  `lid` varchar(20) NOT NULL,
  `rlid` varchar(20) DEFAULT NULL,
  `cid` varchar(10) DEFAULT NULL,
  `cname` varchar(25) DEFAULT NULL,
  `ccard` varchar(20) DEFAULT NULL,
  `edate` date DEFAULT NULL,
  `cvv` varchar(3) DEFAULT NULL,
  `emi` varchar(10) DEFAULT NULL,
  `cphno` varchar(10) NOT NULL,
  `pdate` date DEFAULT NULL,
  `status` varchar(20) DEFAULT 'paid',
  PRIMARY KEY (`srno`,`lid`,`cphno`),
  UNIQUE KEY `sr no` (`srno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `emi` */

insert  into `emi`(`srno`,`lid`,`rlid`,`cid`,`cname`,`ccard`,`edate`,`cvv`,`emi`,`cphno`,`pdate`,`status`) values (1,'null ',NULL,NULL,'Ramesh','2123325425245245','2023-12-01','123','','7760189701','2020-07-21','paid'),(2,'123456','123','1','Sufiya','2123325425245245','2020-07-24','123','12345','7760189701','2020-07-22','paid'),(3,'123456','123456','1','Ramya','2123325425245245','2020-07-10','123','12345','7892040242','2020-07-22','paid'),(4,'15432','123','1','akash','2123325425245245','2020-08-01','123','12345','12345678','2020-07-22','paid');

/*Table structure for table `form` */

DROP TABLE IF EXISTS `form`;

CREATE TABLE `form` (
  `srno` int(5) NOT NULL AUTO_INCREMENT,
  `cname` varchar(30) DEFAULT NULL,
  `ccity` varchar(30) DEFAULT NULL,
  `cemail` varchar(25) DEFAULT NULL,
  `cphno` varchar(15) DEFAULT NULL,
  `cdifficulty` varchar(200) DEFAULT NULL,
  `cbetter` varchar(200) DEFAULT NULL,
  `cratings` varchar(10) DEFAULT NULL,
  `cdate` date DEFAULT NULL,
  PRIMARY KEY (`srno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `form` */

insert  into `form`(`srno`,`cname`,`ccity`,`cemail`,`cphno`,`cdifficulty`,`cbetter`,`cratings`,`cdate`) values (1,'MYSORE','MYSORE','raaghuik96@gmail.com','07760189701','MYSORE','MYSORE','1','2020-07-28');

/*Table structure for table `groups` */

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `gsrno` int(5) NOT NULL AUTO_INCREMENT,
  `gname` varchar(50) NOT NULL,
  `gid` varchar(15) NOT NULL,
  `gtype` varchar(20) DEFAULT NULL,
  `gmsavings` varchar(20) DEFAULT NULL,
  `gasavings` varchar(20) DEFAULT NULL,
  `gactivity` varchar(20) DEFAULT NULL,
  `gphno` varchar(10) NOT NULL,
  `ghead` varchar(20) NOT NULL,
  `gnominee1` varchar(20) DEFAULT NULL,
  `gnominee2` varchar(20) DEFAULT NULL,
  `gtmembers` varchar(20) DEFAULT NULL,
  `gaddress` varchar(50) DEFAULT NULL,
  `cdate` date DEFAULT NULL,
  PRIMARY KEY (`gsrno`,`gname`,`gid`,`gphno`,`ghead`),
  UNIQUE KEY `Sr No` (`gsrno`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `groups` */

insert  into `groups`(`gsrno`,`gname`,`gid`,`gtype`,`gmsavings`,`gasavings`,`gactivity`,`gphno`,`ghead`,`gnominee1`,`gnominee2`,`gtmembers`,`gaddress`,`cdate`) values (1,'yesh','1234','SHG','30000','360000','Housewives','0776018970','Chandrakala','Radhamma','Lakshmamma','10','#2895, 2nd floor, 21st cross','2020-07-18'),(2,'asdfghjk','2345','JLG','10273','360000','Housewives','12345678','ghjk','cdfghyu','sdfgh','6','zsdfghjk','2020-07-18'),(3,'ltd','12345','JLG','10273','360000','Housewives','0987654321','ghjk','cdfghyu','sdfgh','6','Bangalore','2020-07-20'),(4,'xfcgjhkj','578686543','SHG','10273','360000','Housewives','0876598012','bvyjg','jygjyftf','bnmskdh','6','afsdgh','2020-07-20'),(5,'Womens Group','05661','Joint Lender Group','12000','144000','Farmer','1234567890','Lakshmamma','Bhojamma','Rajamma','6','Mysore','2020-07-26');

/*Table structure for table `loan` */

DROP TABLE IF EXISTS `loan`;

CREATE TABLE `loan` (
  `srno` int(20) NOT NULL AUTO_INCREMENT,
  `lid` varchar(20) NOT NULL,
  `cid` varchar(5) DEFAULT NULL,
  `gid` varchar(5) DEFAULT NULL,
  `ltype` varchar(50) DEFAULT NULL,
  `cname` varchar(50) NOT NULL,
  `cphno` varchar(20) NOT NULL,
  `tlamt` varchar(15) DEFAULT NULL,
  `emi` varchar(15) DEFAULT NULL,
  `roi` varchar(10) DEFAULT NULL,
  `ltenure` varchar(10) DEFAULT NULL,
  `interest` varchar(20) DEFAULT NULL,
  `lissuedate` date DEFAULT NULL,
  `lenddate` date DEFAULT NULL,
  `isactive` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`srno`,`lid`,`cname`,`cphno`,`isactive`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `loan` */

insert  into `loan`(`srno`,`lid`,`cid`,`gid`,`ltype`,`cname`,`cphno`,`tlamt`,`emi`,`roi`,`ltenure`,`interest`,`lissuedate`,`lenddate`,`isactive`) values (1,'121435','1','','Educational Loan','ramesh','9620765819','10000','900','8','800','12','2020-07-25','2021-07-29',1),(2,'125323','2','123','Agricultural Loan','Sufiya','1234567890','10000','900','8','12','800','2020-07-25','2021-07-25',1);

/*Table structure for table `moneyrequest` */

DROP TABLE IF EXISTS `moneyrequest`;

CREATE TABLE `moneyrequest` (
  `sanctionnu` int(5) NOT NULL AUTO_INCREMENT,
  `ngoid` varchar(10) DEFAULT NULL,
  `bacno` varchar(20) DEFAULT NULL,
  `ifsc` varchar(15) DEFAULT NULL,
  `amount` varchar(10) DEFAULT NULL,
  `purpose` varchar(100) DEFAULT NULL,
  `ngopanno` varchar(20) DEFAULT NULL,
  `paymentamount` varchar(100) DEFAULT 'nill',
  `pcdate` date DEFAULT '0000-00-00',
  `cdate` date DEFAULT NULL,
  `isactive` int(5) DEFAULT '0',
  PRIMARY KEY (`sanctionnu`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `moneyrequest` */

insert  into `moneyrequest`(`sanctionnu`,`ngoid`,`bacno`,`ifsc`,`amount`,`purpose`,`ngopanno`,`paymentamount`,`pcdate`,`cdate`,`isactive`) values (1,'1','34567890876543','fsd34234','2000000','emergency','adsg12436','200000','2020-07-28','2020-07-28',1),(2,'1','12345675421','fsd34234','1224352','emergency','adsg12436','122435','2020-07-28','2020-07-28',1),(3,'1','12345665432134','fsd34234','1344212','emergency','adsg12436','5000','2020-07-28','2020-07-28',1),(4,'1','123456','fsd34234','1234523','emergency','adsg12436','2000','2020-07-28','2020-07-28',1);

/*Table structure for table `ngo` */

DROP TABLE IF EXISTS `ngo`;

CREATE TABLE `ngo` (
  `nid` int(50) NOT NULL AUTO_INCREMENT,
  `nuname` varchar(50) DEFAULT NULL,
  `npassword` varchar(50) DEFAULT NULL,
  `isactive` int(5) DEFAULT '1',
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `ngo` */

insert  into `ngo`(`nid`,`nuname`,`npassword`,`isactive`) values (1,'ngo','111111',1),(2,'ngo1','ngo1',1);

/*Table structure for table `qanda` */

DROP TABLE IF EXISTS `qanda`;

CREATE TABLE `qanda` (
  `srno` int(5) NOT NULL AUTO_INCREMENT,
  `cid` varchar(5) DEFAULT NULL,
  `cname` varchar(25) DEFAULT NULL,
  `cphno` varchar(10) DEFAULT NULL,
  `cq` varchar(10000) DEFAULT NULL,
  `cdate` date DEFAULT NULL,
  PRIMARY KEY (`srno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `qanda` */

insert  into `qanda`(`srno`,`cid`,`cname`,`cphno`,`cq`,`cdate`) values (1,'hjghf','Ramesh','9620765819','hjghf','2020-07-28'),(2,'1','Ramesh','9620765819','How can i apply for another loan','2020-07-28');

/*Table structure for table `rmk` */

DROP TABLE IF EXISTS `rmk`;

CREATE TABLE `rmk` (
  `rid` int(5) NOT NULL AUTO_INCREMENT,
  `runame` varchar(50) DEFAULT NULL,
  `rpassword` varchar(50) DEFAULT NULL,
  `isactive` int(5) DEFAULT '1',
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `rmk` */

insert  into `rmk`(`rid`,`runame`,`rpassword`,`isactive`) values (1,'rmk','111111',1),(2,'rmkadmin','yeshu123456',1);

/*Table structure for table `transaction` */

DROP TABLE IF EXISTS `transaction`;

CREATE TABLE `transaction` (
  `tid` int(20) NOT NULL AUTO_INCREMENT,
  `ngoid` varchar(20) DEFAULT NULL,
  `balanceamt` varchar(20) DEFAULT NULL,
  `transactedamt` varchar(20) DEFAULT NULL,
  `cid` varchar(20) DEFAULT NULL,
  `transactiontype` varchar(100) DEFAULT NULL,
  `tdate` date DEFAULT NULL,
  `isactive` int(5) DEFAULT '1',
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `transaction` */

insert  into `transaction`(`tid`,`ngoid`,`balanceamt`,`transactedamt`,`cid`,`transactiontype`,`tdate`,`isactive`) values (1,'1','122435','122435','1','credit','2020-07-28',1),(2,'1','5000','5000','1','credit','2020-07-28',1),(3,'1','2000','2000','1','credit','2020-07-28',1),(4,'1','6000','1000','1','debit','2020-07-28',1),(5,'1','-4000','10000','1','debit','2020-07-29',1),(6,'1','-24000','10000','2','debit','2020-07-29',1),(7,'1','-46333','10000','1','debit','2020-07-29',1),(8,'1','-66333','10000','2','debit','2020-07-29',1);

/*Table structure for table `vngo` */

DROP TABLE IF EXISTS `vngo`;

CREATE TABLE `vngo` (
  `srno` int(5) NOT NULL AUTO_INCREMENT,
  `ngoid` varchar(10) DEFAULT NULL,
  `ngoloanid` varchar(15) DEFAULT NULL,
  `ngoloan` varchar(10) DEFAULT NULL,
  `nemi` varchar(10) DEFAULT NULL,
  `ntenure` varchar(10) DEFAULT NULL,
  `nltdate` date DEFAULT NULL,
  `ngoname` varchar(50) DEFAULT NULL,
  `ngohead` varchar(25) DEFAULT NULL,
  `ngoaddress` varchar(50) DEFAULT NULL,
  `ngocontact` varchar(10) DEFAULT NULL,
  `ngobankaccno` varchar(15) DEFAULT NULL,
  `ngobankifsc` varchar(15) DEFAULT NULL,
  `ngopanno` varchar(15) DEFAULT NULL,
  `ngoheadaadhaar` varchar(20) DEFAULT NULL,
  `ngolisenceno` varchar(20) DEFAULT NULL,
  `bankbalance` varchar(200) DEFAULT '0',
  PRIMARY KEY (`srno`),
  UNIQUE KEY `srno` (`srno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `vngo` */

insert  into `vngo`(`srno`,`ngoid`,`ngoloanid`,`ngoloan`,`nemi`,`ntenure`,`nltdate`,`ngoname`,`ngohead`,`ngoaddress`,`ngocontact`,`ngobankaccno`,`ngobankifsc`,`ngopanno`,`ngoheadaadhaar`,`ngolisenceno`,`bankbalance`) values (1,'1','NGO1234','5000000','138889','36','2020-07-26','Mahila','Ramappa','Mysore','1234567890','98765432111234','BANK001234','AAQPI9544M','123412341234123','GOVT1234','-66333');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

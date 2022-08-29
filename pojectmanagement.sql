/*
MySQL Data Transfer
Source Host: localhost
Source Database: pojectmanagement
Target Host: localhost
Target Database: pojectmanagement
Date: 6/2/2011 11:59:47 AM
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for tbladminuser
-- ----------------------------
CREATE TABLE `tbladminuser` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for tblattachment
-- ----------------------------
CREATE TABLE `tblattachment` (
  `attachmentid` int(10) NOT NULL,
  `defectid` varchar(6) NOT NULL,
  `attachedby` varchar(6) NOT NULL,
  `attacheddate` varchar(10) NOT NULL,
  `filename` varchar(50) default NULL,
  PRIMARY KEY  (`attachmentid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for tblbuildrelease
-- ----------------------------
CREATE TABLE `tblbuildrelease` (
  `buidid` int(10) NOT NULL auto_increment,
  `projectid` varchar(20) NOT NULL,
  `builddate` varchar(10) NOT NULL,
  `buildcomments` varchar(500) default NULL,
  `submitedby` varchar(6) NOT NULL,
  PRIMARY KEY  (`buidid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for tblclientdetails
-- ----------------------------
CREATE TABLE `tblclientdetails` (
  `clientid` varchar(6) NOT NULL,
  `clientname` varchar(25) NOT NULL,
  `contactperson` varchar(25) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address` varchar(50) default NULL,
  `zip` int(8) default NULL,
  `country` varchar(35) default NULL,
  `email` varchar(25) NOT NULL,
  `url` varchar(25) default NULL,
  `tel1` varchar(15) default NULL,
  `tel2` varchar(15) default NULL,
  `fax` varchar(15) default NULL,
  `description` varchar(200) default NULL,
  `status` int(2) default NULL,
  PRIMARY KEY  (`clientid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for tbldefect
-- ----------------------------
CREATE TABLE `tbldefect` (
  `id` int(10) NOT NULL auto_increment,
  `defectid` varchar(6) NOT NULL,
  `projectid` varchar(10) NOT NULL,
  `headline` varchar(150) NOT NULL,
  `priority` varchar(10) NOT NULL,
  `severity` varchar(10) default NULL,
  `state` varchar(15) default NULL,
  `ownerid` varchar(20) NOT NULL,
  `submitterid` varchar(20) NOT NULL,
  `description` varchar(500) default NULL,
  `submiteddate` varchar(12) default NULL,
  `ownercomments` varchar(500) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for tblemployeedetails
-- ----------------------------
CREATE TABLE `tblemployeedetails` (
  `employeeid` varchar(6) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contactno` varchar(20) default NULL,
  `address` varchar(200) default NULL,
  `jobroleid` int(20) NOT NULL,
  `joiningdate` varchar(12) default NULL,
  `status` int(2) default NULL,
  PRIMARY KEY  (`employeeid`),
  KEY `jobroleid` (`jobroleid`),
  CONSTRAINT `jobroleid` FOREIGN KEY (`jobroleid`) REFERENCES `tbljobroledetails` (`jobroleid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for tblemployeeinproject
-- ----------------------------
CREATE TABLE `tblemployeeinproject` (
  `id` int(20) NOT NULL auto_increment,
  `projectid` varchar(6) NOT NULL,
  `employeeid` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `projectid` (`projectid`),
  KEY `employeeid` (`employeeid`),
  CONSTRAINT `employeeid` FOREIGN KEY (`employeeid`) REFERENCES `tblemployeedetails` (`employeeid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `projectid` FOREIGN KEY (`projectid`) REFERENCES `tblprojectdetails` (`projectid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for tblemployeeleave
-- ----------------------------
CREATE TABLE `tblemployeeleave` (
  `employeeid` varchar(20) NOT NULL,
  `leavefrom` date NOT NULL,
  `leaveupto` date NOT NULL,
  `cause` varchar(100) default NULL,
  `status` int(2) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for tblemployeesalarystructure
-- ----------------------------
CREATE TABLE `tblemployeesalarystructure` (
  `employeeid` varchar(6) NOT NULL,
  `basicpay` double(10,2) NOT NULL,
  `hra` double(10,2) default NULL,
  `pf` double(10,2) default NULL,
  `ptax` double(10,2) default NULL,
  `da` double(10,2) default NULL,
  `gross` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for tblholidaydetails
-- ----------------------------
CREATE TABLE `tblholidaydetails` (
  `id` int(10) NOT NULL auto_increment,
  `holidayid` int(5) NOT NULL,
  `holidaydate` varchar(10) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `holidayid` (`holidayid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for tblholidaylist
-- ----------------------------
CREATE TABLE `tblholidaylist` (
  `holidayid` int(5) NOT NULL auto_increment,
  `holidayname` varchar(50) NOT NULL,
  PRIMARY KEY  (`holidayid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for tbljobroledetails
-- ----------------------------
CREATE TABLE `tbljobroledetails` (
  `jobroleid` int(6) NOT NULL,
  `jobrolename` varchar(50) NOT NULL,
  `description` varchar(200) default NULL,
  PRIMARY KEY  (`jobroleid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for tblnotes
-- ----------------------------
CREATE TABLE `tblnotes` (
  `noteid` int(10) NOT NULL auto_increment,
  `defectid` varchar(6) NOT NULL,
  `submitedby` varchar(6) NOT NULL,
  `notes` varchar(1500) default NULL,
  `notedate` varchar(10) NOT NULL,
  PRIMARY KEY  (`noteid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for tblpermission
-- ----------------------------
CREATE TABLE `tblpermission` (
  `permissionid` int(6) NOT NULL auto_increment,
  `permissionname` varchar(50) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY  (`permissionid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for tblprojectdeliverydetails
-- ----------------------------
CREATE TABLE `tblprojectdeliverydetails` (
  `projectid` varchar(6) NOT NULL,
  `deliverydate` date default NULL,
  `module` varchar(20) default NULL,
  `status` int(2) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for tblprojectdetails
-- ----------------------------
CREATE TABLE `tblprojectdetails` (
  `projectid` varchar(6) NOT NULL,
  `projecttypeid` int(20) NOT NULL,
  `projectname` varchar(45) NOT NULL,
  `clientid` varchar(6) NOT NULL,
  `desccription` varchar(200) default NULL,
  `startdate` varchar(12) default NULL,
  `expectedenddate` varchar(12) default NULL,
  `enddate` varchar(12) default NULL,
  `technologyid` int(20) default NULL,
  `statusid` int(2) default NULL,
  PRIMARY KEY  (`projectid`),
  KEY `projecttypeid` (`projecttypeid`),
  KEY `clientid` (`clientid`),
  KEY `technologyid` (`technologyid`),
  KEY `statusid` (`statusid`),
  CONSTRAINT `clientid` FOREIGN KEY (`clientid`) REFERENCES `tblclientdetails` (`clientid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `projecttypeid` FOREIGN KEY (`projecttypeid`) REFERENCES `tblprojecttype` (`projecttypeid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `statusid` FOREIGN KEY (`statusid`) REFERENCES `tblprojectstatus` (`statusid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `technologyid` FOREIGN KEY (`technologyid`) REFERENCES `tbltechnologydetails` (`technologyid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for tblprojectstatus
-- ----------------------------
CREATE TABLE `tblprojectstatus` (
  `statusid` int(20) NOT NULL auto_increment,
  `statusname` varchar(50) default NULL,
  PRIMARY KEY  (`statusid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for tblprojecttype
-- ----------------------------
CREATE TABLE `tblprojecttype` (
  `projecttypeid` int(20) NOT NULL auto_increment,
  `projecttypename` varchar(50) NOT NULL,
  PRIMARY KEY  (`projecttypeid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for tbltechnologydetails
-- ----------------------------
CREATE TABLE `tbltechnologydetails` (
  `technologyid` int(20) NOT NULL auto_increment,
  `technologyname` varchar(20) NOT NULL,
  PRIMARY KEY  (`technologyid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for tbltodos
-- ----------------------------
CREATE TABLE `tbltodos` (
  `todosid` int(10) NOT NULL,
  `assignto` varchar(6) NOT NULL,
  `assignby` varchar(6) NOT NULL,
  `projectid` varchar(6) NOT NULL,
  `headline` varchar(150) NOT NULL,
  `description` varchar(500) default NULL,
  `assigndate` varchar(10) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY  (`todosid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for tbluserattendance
-- ----------------------------
CREATE TABLE `tbluserattendance` (
  `id` int(5) NOT NULL auto_increment,
  `userid` varchar(6) NOT NULL,
  `logindate` varchar(10) default NULL,
  `logintime` varchar(10) default NULL,
  `logoutdate` varchar(10) default NULL,
  `logouttime` varchar(10) default NULL,
  `status` int(2) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for tbluserpermission
-- ----------------------------
CREATE TABLE `tbluserpermission` (
  `id` int(10) NOT NULL auto_increment,
  `userid` varchar(20) NOT NULL,
  `permissionid` int(10) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `permissionid_fk` (`permissionid`),
  KEY `userid_fk` (`userid`),
  CONSTRAINT `permissionid_fk` FOREIGN KEY (`permissionid`) REFERENCES `tblpermission` (`permissionid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `userid_fk` FOREIGN KEY (`userid`) REFERENCES `tblemployeedetails` (`employeeid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `tbladminuser` VALUES ('admin', 'MTIzNDU2');
INSERT INTO `tblattachment` VALUES ('1', 'DEF002', 'EMP001', '2011-05-07', 'DEF002_srch_btn.png');
INSERT INTO `tblattachment` VALUES ('2', 'DEF007', 'EMP001', '2011-05-11', 'DEF007_todays task.txt');
INSERT INTO `tblbuildrelease` VALUES ('1', 'PJ002', '2011-05-06', 'dadsadad\r\n\r\ndsadada d\r\n\r\nfdhf f khffksfh s', 'EMP001');
INSERT INTO `tblbuildrelease` VALUES ('2', 'PJ004', '2011-05-06', 'ffdff \r\n\r\nfsfdfsf\r\nsdfsfdf', 'EMP001');
INSERT INTO `tblclientdetails` VALUES ('CL002', 'Shyam', 'Sundar', 'MTIzNDU2', 'eddrfgvhbhb', '654654564', 'hbjnhjkm', 'aa@aa.aa', 'www.aa.aa', '02222', '052525', '', '', '1');
INSERT INTO `tblclientdetails` VALUES ('CL003', 'Sundar', 'Taz', 'MTIzNDU2', 'wdfgvhnj', '7777', 'india', 'aa@aa.aa', 'www.aa.aa', '12345', '234', '2345', 'dftvgbhnjmk vgbn', '1');
INSERT INTO `tbldefect` VALUES ('1', 'DEF001', 'PJ002', 'gdfgdgdfg', '1', '1', 'Opened', 'EMP002', 'EMP001', 'gfgfgg', null, null);
INSERT INTO `tbldefect` VALUES ('2', 'DEF002', 'PJ002', 'gggggggg', '1', '1', 'Fixed', 'EMP001', 'EMP001', 'nnnnnnnnnn', null, 'fghgfhh g gg');
INSERT INTO `tbldefect` VALUES ('4', 'DEF003', 'PJ002', 'fgdgdgdg f  ', 'P2', 'Sev1', 'Opened', 'EMP002', 'EMP001', 'fgfgdgdg dfg ', null, null);
INSERT INTO `tbldefect` VALUES ('5', 'DEF004', 'PJ002', 'gfdgdgd fdgg ', 'P4', 'Sev3', 'Assigned', 'EMP002', 'EMP001', 'fgf gdfgdg dgdf g dfg', null, null);
INSERT INTO `tbldefect` VALUES ('7', 'DEF005', 'PJ002', 'dfffdsf', 'P1', 'Sev4', 'Opened', 'EMP001', 'EMP001', 'dsadad', '2011-05-05', null);
INSERT INTO `tbldefect` VALUES ('8', 'DEF006', 'PJ004', 'zfdffgfg', 'P3', 'Sev1', 'Opened', 'EMP001', 'EMP001', 'gfgfgfdgg', '2011-05-06', null);
INSERT INTO `tblemployeedetails` VALUES ('EMP001', 'Max', 'Ford', 'MTIzNDU2', 'mayukh1587@gmail.com', '9932786256', 'kolkata', '2', '2010-09-27', '1');
INSERT INTO `tblemployeedetails` VALUES ('EMP002', 'Babai', 'Ghosh', 'MTIzNDU2', 'bb@bb.bb', '1234567890', 'qwuhwjhnkdr', '1', '2011-04-23', '1');
INSERT INTO `tblemployeedetails` VALUES ('EMP003', 'Test3', 'Test3', 'MTIzNDU2', 'test3@test3.com', '1234567890', 'qwesdrcfgvh ghj', '3', '2011-05-01', '1');
INSERT INTO `tblemployeedetails` VALUES ('EMP004', 'aaaaa', 'aaaaaaa', 'MTIzNDU2', 'a@a.aaa', '1234567890', 'vghhnj', '1', '2011-05-05', '1');
INSERT INTO `tblemployeedetails` VALUES ('EMP005', 'testPermision', 'testPermision', 'MTIzNDU2', 'aa@aa.aa', '1234567890', 'gvgvgvv', '3', '2011-05-02', '1');
INSERT INTO `tblemployeedetails` VALUES ('EMP006', 'fsgarg', 'sfgsg ', 'MTIzNDU2', 'aa@aa.aa', '1234567890', 'srg rwtg', '2', '2011-05-30', '1');
INSERT INTO `tblemployeeinproject` VALUES ('1', 'PJ001', 'EMP001');
INSERT INTO `tblemployeeinproject` VALUES ('2', 'PJ001', 'EMP002');
INSERT INTO `tblemployeeinproject` VALUES ('3', 'PJ002', 'EMP002');
INSERT INTO `tblemployeeinproject` VALUES ('4', 'PJ003', 'EMP005');
INSERT INTO `tblholidaydetails` VALUES ('1', '3', '2011-05-01');
INSERT INTO `tblholidaydetails` VALUES ('2', '4', '2011-05-07');
INSERT INTO `tblholidaydetails` VALUES ('3', '3', '2011-05-08');
INSERT INTO `tblholidaydetails` VALUES ('4', '3', '2011-05-15');
INSERT INTO `tblholidaydetails` VALUES ('5', '4', '2011-05-21');
INSERT INTO `tblholidaydetails` VALUES ('6', '3', '2011-05-22');
INSERT INTO `tblholidaydetails` VALUES ('7', '3', '2011-05-29');
INSERT INTO `tblholidaydetails` VALUES ('8', '4', '2011-06-04');
INSERT INTO `tblholidaydetails` VALUES ('9', '4', '2011-06-18');
INSERT INTO `tblholidaydetails` VALUES ('10', '5', '2011-08-15');
INSERT INTO `tblholidaylist` VALUES ('3', 'Sunday');
INSERT INTO `tblholidaylist` VALUES ('4', 'Saturday');
INSERT INTO `tblholidaylist` VALUES ('5', 'Independence Day');
INSERT INTO `tblholidaylist` VALUES ('6', 'Guru Nanak Birthday');
INSERT INTO `tblholidaylist` VALUES ('7', 'Christ Mass');
INSERT INTO `tblholidaylist` VALUES ('8', 'Saturday');
INSERT INTO `tbljobroledetails` VALUES ('1', 'Developer', 'Coder');
INSERT INTO `tbljobroledetails` VALUES ('2', 'Tester', 'Testing');
INSERT INTO `tbljobroledetails` VALUES ('3', 'Deployer', 'Deploy Project');
INSERT INTO `tbljobroledetails` VALUES ('4', 'Web Designer', 'Design');
INSERT INTO `tblnotes` VALUES ('1', 'DEF002', 'EMP001', 'gfghfgfh ff jfjfjhhhhhhhhhhhhfdfsfdf\r\nsdffdf\r\nsdfsfsfggfgdgggggggggggghthhhhhhjjghjgj<br/>EMP001:  hjjjjjj\nEMP001:  ujyjjjjujjuuu\nEMP001:  terte t\r\nert tr\r\nrt r\r\nt\r\nret ert\r\nret \r\nrt\r\nrt\r\nrt ret \r\nre t\r\nrt\r\nretretret\r\nt\r\nt ert \r\nr\r\nt', '2011-05-06');
INSERT INTO `tblnotes` VALUES ('2', 'DEF006', 'EMP001', 'EMP001:  ffsfff\r\nljkllkk<br/>\nEMP001:  kjkkk kkkk', '2011-05-06');
INSERT INTO `tblnotes` VALUES ('3', 'DEF004', 'EMP002', 'EMP002:  sdfse se gs  ', '2011-05-07');
INSERT INTO `tblpermission` VALUES ('1', 'view employee', '0');
INSERT INTO `tblpermission` VALUES ('2', 'add employee', '0');
INSERT INTO `tblpermission` VALUES ('3', 'edit employee', '0');
INSERT INTO `tblpermission` VALUES ('4', 'delete employee', '0');
INSERT INTO `tblpermission` VALUES ('5', 'view projects', '0');
INSERT INTO `tblpermission` VALUES ('6', 'add projects', '0');
INSERT INTO `tblpermission` VALUES ('7', 'edit projects', '0');
INSERT INTO `tblpermission` VALUES ('8', 'delete projects', '0');
INSERT INTO `tblpermission` VALUES ('9', 'view client', '0');
INSERT INTO `tblpermission` VALUES ('10', 'add client', '0');
INSERT INTO `tblpermission` VALUES ('11', 'edit client', '0');
INSERT INTO `tblpermission` VALUES ('12', 'delete client', '0');
INSERT INTO `tblpermission` VALUES ('13', 'view defect', '0');
INSERT INTO `tblpermission` VALUES ('14', 'add defect', '0');
INSERT INTO `tblpermission` VALUES ('15', 'edit defect ', '0');
INSERT INTO `tblpermission` VALUES ('16', 'view todos', '0');
INSERT INTO `tblpermission` VALUES ('17', 'add todos', '0');
INSERT INTO `tblpermission` VALUES ('18', 'edit todos', '0');
INSERT INTO `tblpermission` VALUES ('19', 'delete todos', '0');
INSERT INTO `tblprojectdetails` VALUES ('PJ001', '2', 'Project Management System', 'CL002', 'wefwef', '2011-06-01', '2011-05-31', '2011-04-04', '3', '1');
INSERT INTO `tblprojectdetails` VALUES ('PJ002', '2', 'Medical Mobile Diary ', 'CL002', 'as bhjnmk sed,l; sdfghjkl sdfghjkl dfghjk jnhjidbf  hbasfhcb hbdihafcb ijbnaifbiabfc', '2011-05-01', '2011-05-30', '2011-06-30', '5', '3');
INSERT INTO `tblprojectdetails` VALUES ('PJ003', '1', 'Strategic Management System', 'CL002', 'Strategic Management System', '2011-05-06', '2011-05-10', '2011-05-27', '1', '2');
INSERT INTO `tblprojectdetails` VALUES ('PJ004', '2', 'File Uploader', 'CL002', 'File Uploader', '2011-05-05', '2011-05-13', '2011-05-12', '1', '1');
INSERT INTO `tblprojectdetails` VALUES ('PJ005', '1', 'Revenue Management System', 'CL002', 'Revenue Management System', '2011-05-03', '2011-05-20', '2011-06-16', '2', '3');
INSERT INTO `tblprojectdetails` VALUES ('PJ006', '1', 'Absesnce Management System', 'CL002', 'Absesnce management System', '2011-05-12', '2011-05-20', '2011-06-16', '3', '3');
INSERT INTO `tblprojectdetails` VALUES ('PJ007', '1', 'test', 'CL003', 'test', '2011-05-09', '2011-05-11', '2011-05-26', '3', '1');
INSERT INTO `tblprojectstatus` VALUES ('1', 'Hot');
INSERT INTO `tblprojectstatus` VALUES ('2', 'Cold');
INSERT INTO `tblprojectstatus` VALUES ('3', 'Medium');
INSERT INTO `tblprojectstatus` VALUES ('4', 'deleted');
INSERT INTO `tblprojecttype` VALUES ('1', 'Web1');
INSERT INTO `tblprojecttype` VALUES ('2', 'Windows');
INSERT INTO `tblprojecttype` VALUES ('3', 'Mac1');
INSERT INTO `tbltechnologydetails` VALUES ('1', 'Java1');
INSERT INTO `tbltechnologydetails` VALUES ('2', 'NET');
INSERT INTO `tbltechnologydetails` VALUES ('3', 'PHP');
INSERT INTO `tbltechnologydetails` VALUES ('4', 'Flash');
INSERT INTO `tbltechnologydetails` VALUES ('5', 'edfef');
INSERT INTO `tbltechnologydetails` VALUES ('6', 'tgherg');
INSERT INTO `tbltechnologydetails` VALUES ('7', 'thbtebht');
INSERT INTO `tbltechnologydetails` VALUES ('8', 'bzebedb');
INSERT INTO `tbltechnologydetails` VALUES ('9', 'dbnhnnnnnnn');
INSERT INTO `tbltechnologydetails` VALUES ('10', 'dtdnbn');
INSERT INTO `tbltechnologydetails` VALUES ('11', 'dgndgnn');
INSERT INTO `tbltechnologydetails` VALUES ('12', 'nhthnteh');
INSERT INTO `tbltodos` VALUES ('1', 'EMP001', 'EMP001', 'PJ003', 'Test Heading', 'Test jkkkkfmf\r\nfmmmf ll', '2011-05-30', '1');
INSERT INTO `tbltodos` VALUES ('2', 'EMP002', 'admin', 'PJ002', 'Do it now', 'Nike', '2011-05-11', '0');
INSERT INTO `tbltodos` VALUES ('3', 'EMP005', 'admin', 'PJ002', 'yw4y', 'tw3nt', '2011-05-12', '0');
INSERT INTO `tbltodos` VALUES ('4', 'EMP003', 'EMP001', 'PJ004', 'korte hobe', 'korte hobe', '2011-05-12', '0');
INSERT INTO `tbltodos` VALUES ('5', 'EMP002', 'EMP001', 'PJ002', 'szdfbsgb', 'sbdSB dfbhdhb szfb', '2011-05-13', '0');
INSERT INTO `tbltodos` VALUES ('6', 'EMP005', 'EMP001', 'PJ005', 'test', 'testtesttesttest testtesttest test testtest', '2011-05-13', '0');
INSERT INTO `tbltodos` VALUES ('7', 'EMP002', 'EMP001', 'PJ002', 'test', 'test test testtest test test test test test', '2011-05-14', '0');
INSERT INTO `tbltodos` VALUES ('8', 'EMP001', 'admin', 'PJ002', 'XXX', 'xxx xxxxx x xxxxxxxxxxx xxxxxxxxx xxxxxxxxxx', '2011-05-30', '1');
INSERT INTO `tbluserattendance` VALUES ('1', 'EMP001', '2011-04-14', '15:50:10', null, null, '1');
INSERT INTO `tbluserattendance` VALUES ('2', 'EMP001', '2011-05-14', '15:51:25', null, null, '1');
INSERT INTO `tbluserattendance` VALUES ('3', 'EMP001', '2011-05-15', '15:51:46', null, null, '0');
INSERT INTO `tbluserattendance` VALUES ('4', 'EMP002', '2011-05-15', '15:52:13', null, null, '0');
INSERT INTO `tbluserattendance` VALUES ('5', 'EMP002', '2011-05-16', '15:52:52', null, null, '1');
INSERT INTO `tbluserattendance` VALUES ('7', 'EMP002', '2011-05-17', '13:41:49', null, null, '1');
INSERT INTO `tbluserattendance` VALUES ('8', 'EMP001', '2011-05-16', '13:41:56', null, null, '1');
INSERT INTO `tbluserattendance` VALUES ('9', 'EMP001', '2011-05-17', '13:41:56', null, null, '1');
INSERT INTO `tbluserattendance` VALUES ('10', 'EMP001', '2011-05-18', '09:18:17', null, null, '1');
INSERT INTO `tbluserattendance` VALUES ('11', 'EMP001', '2011-05-19', '10:12:44', null, null, '1');
INSERT INTO `tbluserattendance` VALUES ('12', 'EMP001', '2011-05-28', '11:30:25', null, null, '1');
INSERT INTO `tbluserattendance` VALUES ('13', 'EMP001', '2011-05-30', '09:36:21', null, null, '1');
INSERT INTO `tbluserattendance` VALUES ('14', 'EMP002', '2011-05-30', '09:36:28', null, null, '1');
INSERT INTO `tbluserattendance` VALUES ('15', 'EMP004', '2011-05-30', '09:36:45', null, null, '1');
INSERT INTO `tbluserattendance` VALUES ('16', 'EMP005', '2011-05-30', '09:36:54', null, null, '1');
INSERT INTO `tbluserattendance` VALUES ('17', 'EMP003', '2011-05-30', '09:37:41', null, null, '1');
INSERT INTO `tbluserattendance` VALUES ('18', 'EMP001', '2011-05-31', '10:39:06', null, null, '1');
INSERT INTO `tbluserattendance` VALUES ('19', 'EMP002', '2011-05-31', '10:39:14', null, null, '1');
INSERT INTO `tbluserattendance` VALUES ('20', 'EMP003', '2011-05-31', '10:39:20', null, null, '1');
INSERT INTO `tbluserattendance` VALUES ('21', 'EMP004', '2011-05-31', '10:39:27', null, null, '1');
INSERT INTO `tbluserattendance` VALUES ('22', 'EMP005', '2011-05-31', '10:39:34', null, null, '1');
INSERT INTO `tbluserattendance` VALUES ('23', 'EMP001', '2011-06-01', '09:32:37', null, null, '1');
INSERT INTO `tbluserattendance` VALUES ('24', 'EMP003', '2011-06-01', '09:33:24', null, null, '1');
INSERT INTO `tbluserattendance` VALUES ('25', 'EMP004', '2011-06-01', '09:33:33', null, null, '1');
INSERT INTO `tbluserattendance` VALUES ('26', 'EMP005', '2011-06-01', '09:33:42', null, null, '1');
INSERT INTO `tbluserattendance` VALUES ('27', 'EMP006', '2011-06-01', '09:33:52', null, null, '1');
INSERT INTO `tbluserattendance` VALUES ('28', 'EMP001', '2011-06-02', '11:08:58', null, null, '1');
INSERT INTO `tbluserattendance` VALUES ('29', 'EMP002', '2011-06-02', '11:09:10', null, null, '1');
INSERT INTO `tbluserattendance` VALUES ('30', 'EMP003', '2011-06-02', '11:09:19', null, null, '1');
INSERT INTO `tbluserattendance` VALUES ('31', 'EMP004', '2011-06-02', '11:09:33', null, null, '1');
INSERT INTO `tbluserattendance` VALUES ('32', 'EMP005', '2011-06-02', '11:09:38', null, null, '1');
INSERT INTO `tbluserattendance` VALUES ('33', 'EMP006', '2011-06-02', '11:09:45', null, null, '1');
INSERT INTO `tbluserpermission` VALUES ('12', 'EMP004', '5');
INSERT INTO `tbluserpermission` VALUES ('13', 'EMP004', '8');
INSERT INTO `tbluserpermission` VALUES ('34', 'EMP002', '14');
INSERT INTO `tbluserpermission` VALUES ('53', 'EMP005', '5');
INSERT INTO `tbluserpermission` VALUES ('54', 'EMP005', '6');
INSERT INTO `tbluserpermission` VALUES ('55', 'EMP005', '8');
INSERT INTO `tbluserpermission` VALUES ('62', 'EMP001', '5');
INSERT INTO `tbluserpermission` VALUES ('63', 'EMP001', '6');
INSERT INTO `tbluserpermission` VALUES ('64', 'EMP001', '7');
INSERT INTO `tbluserpermission` VALUES ('65', 'EMP001', '18');
INSERT INTO `tbluserpermission` VALUES ('66', 'EMP006', '18');

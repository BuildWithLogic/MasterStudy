CREATE TABLE IF NOT EXISTS institutemaster (
  InstituteId int(11) NOT NULL AUTO_INCREMENT,
  InstituteName varchar(255) NOT NULL,
  InstituteUserName varchar(100) NOT NULL,
  InstitutePassword varchar(255) NOT NULL,
  InstituteRole varchar(100) DEFAULT 'Admin',
  InstituteProfilePic varchar(255) DEFAULT 'default.png',
  PRIMARY KEY (InstituteId)
);

CREATE TABLE IF NOT EXISTS facultymaster (
  FacultyId int(11) NOT NULL AUTO_INCREMENT,
  FacultyFirstName varchar(100) NOT NULL,
  FacultyLastName varchar(100) NOT NULL,
  FacultyUserName varchar(100) NOT NULL,
  FacultyPassword varchar(255) NOT NULL,
  FacultyCode varchar(50) DEFAULT NULL,
  FacultyProfilePic varchar(255) DEFAULT 'default.png',
  FacultyBranch varchar(100) DEFAULT NULL,
  PRIMARY KEY (FacultyId)
);

CREATE TABLE IF NOT EXISTS studentmaster (
  StudentId int(11) NOT NULL AUTO_INCREMENT,
  StudentFirstName varchar(100) NOT NULL,
  StudentLastName varchar(100) NOT NULL,
  StudentUserName varchar(100) NOT NULL,
  StudentPassword varchar(255) NOT NULL,
  StudentProfilePic varchar(255) DEFAULT 'default.png',
  StudentBranch varchar(100) DEFAULT NULL,
  StudentSemester int(11) DEFAULT NULL,
  PRIMARY KEY (StudentId)
);

CREATE TABLE IF NOT EXISTS branchmaster (
  BranchId int(11) NOT NULL AUTO_INCREMENT,
  BranchName varchar(255) NOT NULL,
  BranchCode varchar(50) DEFAULT NULL,
  PRIMARY KEY (BranchId)
);

CREATE TABLE IF NOT EXISTS updatemaster (
  UpdateId int(11) NOT NULL AUTO_INCREMENT,
  UpdateTitle varchar(255) NOT NULL,
  UpdateDescription text DEFAULT NULL,
  UpdateFile varchar(255) DEFAULT NULL,
  UpdateUploadDate date DEFAULT NULL,
  UpdateUploadedBy varchar(100) DEFAULT NULL,
  PRIMARY KEY (UpdateId)
);

CREATE TABLE IF NOT EXISTS accountquerymaster (
  QueryId int(11) NOT NULL AUTO_INCREMENT,
  QueryTitle varchar(255) DEFAULT NULL,
  QueryDescription text DEFAULT NULL,
  QueryStatus varchar(50) DEFAULT 'Pending',
  PRIMARY KEY (QueryId)
);

INSERT INTO institutemaster (InstituteName, InstituteUserName, InstitutePassword, InstituteRole)
VALUES ('Admin', 'INADMIN', 'admin123', 'Administrator');

create database lms;

show databases;

use lms;

create table User_Details(id int auto_increment PRIMARY KEY,
email varchar(255),
first_name varchar(255),
last_name varchar(255),
password varchar(255),
contact_number varchar(255),
verified BOOLEAN NOT NULL DEFAULT FALSE,    
creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
creator_user Int
);

select * from User_Details;

CREATE TABLE Hired_Candidate (Id INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(20) NOT NULL,
    MiddleName VARCHAR(20),
    LastName VARCHAR(20) NOT NULL,
    EmailId VARCHAR(30) NOT NULL,
    HiredCity VARCHAR(20),
    Degree VARCHAR(10),
    HiredDate DATE,
    MobileNumber VARCHAR(20),
    PermanentPincode VARCHAR(15),
    HiredLab VARCHAR(20),
    Attitude VARCHAR(10),
    CommunicationRemark VARCHAR(100),
    KnowledgeRemark VARCHAR(50),
    AggregateRemark VARCHAR(100),
    Status VARCHAR(20),
    CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CreatorUser INT);
    
select * from Hired_Candidate;

CREATE TABLE FellowshipCandidate ( 
Id INT,    
CandidateId VARCHAR(20) NOT NULL PRIMARY KEY,    
FirstName VARCHAR(20) NOT NULL,    
MiddleName VARCHAR(20),    
LastName VARCHAR(20) NOT NULL,    
EmailId VARCHAR(30) NOT NULL,    
HiredCity VARCHAR(20),     
Degree VARCHAR(10),    
HiredDate DATE,    
MobileNumber VARCHAR(20),    
PermanentPincode VARCHAR(6),    
HiredLab VARCHAR(20),    
Attitude VARCHAR(20),    
CommunicationRemark VARCHAR(100),    
KnowledgeRemark VARCHAR(100),    
AggregateRemark VARCHAR(100),    
CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,    
CreatorUser INT,    
BirthDate DATE,    
IsBirthDateVerified BOOLEAN,    
ParentName VARCHAR(20),    
ParentOccupation VARCHAR(20),    
ParentsMobileNumber VARCHAR(20),    
ParentsAnnualSalary DECIMAL(10, 2),     
LocalAddress VARCHAR(100),    
PermanentAddress VARCHAR(100),    
PhotoPath VARCHAR(100),    
JoiningDate DATE,    
CandidateStatus VARCHAR(50),    
PersonalInformation TEXT,    
BankInformation TEXT,    
EducationalInformation TEXT,    
DocumentStatus VARCHAR(20),    
Remark TEXT,    
FOREIGN KEY (Id) REFERENCES Hired_Candidate(Id)
);


select * from FellowshipCandidate;
desc FellowshipCandidate;

 CREATE TABLE CandidateBankDetails (    
      Id INT AUTO_INCREMENT PRIMARY KEY,    
      CandidateId VARCHAR(20),    
      Name VARCHAR(20),    
      AccountNumber VARCHAR(20),    
      IsAccountNumVerified BOOLEAN,    
      IfscCode VARCHAR(20),    
      IsIFSCCodeVerified BOOLEAN,    
      PanNumber VARCHAR(10),    
      IsPanNumberVerified BOOLEAN,    
      AadhaarNumber VARCHAR(12),    
      IsAadhaarNumVerified BOOLEAN,    
      CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,    
      CreatorUser INT,    
      FOREIGN KEY (CandidateId) REFERENCES FellowshipCandidate(CandidateId)
      );
      
select * from CandidateBankDetails;

create table CandidateQualification( Id int auto_increment primary key,
		CandidateId VARCHAR(20),   
        deploma varchar(40),
        degree_name varchar(50),
        is_degree_name_verified boolean,
        employee_decipline varchar(40),
        is_employee_decipline_verified boolean,
        passing_year year,
        is_passing_year_verified boolean,
        aggr_per double,
        final_year_per double,
        is_final_year_per_verified boolean,
        training_institute varchar(255),
        is_training_institute_verified boolean,
        training_duration_month double,
        is_training_duration_month_verified boolean,
        other_training varchar(50),
        is_other_training_verified boolean,
        creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        creator_user int,
        FOREIGN KEY (CandidateId) REFERENCES FellowshipCandidate(CandidateId)
);

select * from CandidateQualification;

 CREATE TABLE CandidateDocuments (
          Id INT AUTO_INCREMENT PRIMARY KEY,
          CandidateId VARCHAR(20),
          DocType VARCHAR(20),
          DocPath VARCHAR(100),
          Status VARCHAR(20),
          CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
          CreatorUser INT,
          FOREIGN KEY (CandidateId) REFERENCES FellowshipCandidate(CandidateId)
      );
      
select * from CandidateDocuments;

CREATE TABLE Company (Id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(20),Address VARCHAR(100),
    Location VARCHAR(100),Status VARCHAR(20),
    CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,CreatorUser INT
    );

select * from Company;


CREATE TABLE TechStack (Id INT AUTO_INCREMENT PRIMARY KEY, 
    TechName VARCHAR(50),ImagePath VARCHAR(100),
    Framework VARCHAR(20),CurStatus VARCHAR(20),
    CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CreatorUser INT
    );

select * from TechStack;

CREATE TABLE TechType (Id INT AUTO_INCREMENT PRIMARY KEY,
    TypeName VARCHAR(20),CurStatus VARCHAR(20),
    CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CreatorUser INT
    );
    
        
select * from TechType;


     CREATE TABLE MakerProgram (Id INT AUTO_INCREMENT PRIMARY KEY,
          ProgramName VARCHAR(20),ProgramType VARCHAR(20),
          ProgramLink VARCHAR(100),TechStackId INT,
		  TechTypeId INT,IsProgramApproved BOOLEAN,
          Description TEXT,Status VARCHAR(20),CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
          CreatorUser INT,FOREIGN KEY (TechStackId) REFERENCES TechStack(Id),
          FOREIGN KEY (TechTypeId) REFERENCES TechType(Id)
      );
      
      
      select * from MakerProgram;
      
      CREATE TABLE AppParameters (Id INT AUTO_INCREMENT PRIMARY KEY,
      KeyType VARCHAR(50),KeyValue VARCHAR(100),
      KeyText TEXT,CurStatus VARCHAR(50),
      LastUpdateUser INT,LastUpdateStamp TIMESTAMP,
      CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
      CreatorUser INT,SeqNum INT
      );
      
 select * from AppParameters;


CREATE TABLE Lab (Id INT AUTO_INCREMENT PRIMARY KEY, 
	Name VARCHAR(20),Location VARCHAR(20),   
	Address VARCHAR(100),Status VARCHAR(20),   
	CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,   
	CreatorUser INT
    );
    
    select * from Lab;


 CREATE TABLE Mentor (Id INT AUTO_INCREMENT PRIMARY KEY,
          Name VARCHAR(20),MentorType VARCHAR(20),
          LabId INT,Status VARCHAR(20),
          CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
          CreatorUser INT,
          FOREIGN KEY (LabId) REFERENCES Lab(Id)
      );

 select * from Mentor;
 
 CREATE TABLE LabThreshold (Id INT AUTO_INCREMENT PRIMARY KEY,
          LabId INT, LabCapacity INT,
          LeadThreshold INT,IdeationEnggThreshold INT,
          BuddyEnggThreshold INT,Status VARCHAR(20),
          CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
          CreatorUser INT,
          FOREIGN KEY (LabId) REFERENCES Lab(Id)
      );
select * from LabThreshold;


CREATE TABLE CompanyRequirement (id INT AUTO_INCREMENT PRIMARY KEY,
          company_id INT,requested_month DATE,
          city VARCHAR(20),is_doc_verification BOOLEAN,
          requirement_doc_path VARCHAR(100),no_of_engg INT,
          tech_stack_id INT,tech_type_id INT,
          maker_program_id INT, lead_id INT, 
          ideation_engg_id INT,buddy_engg_id INT, 
          special_remark TEXT,Status VARCHAR(20),
          creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
          creator_user INT,
          FOREIGN KEY (company_id) REFERENCES Company(Id),
          FOREIGN KEY (tech_stack_id) REFERENCES TechStack(Id),
          FOREIGN KEY (tech_type_id) REFERENCES TechType(Id),
          FOREIGN KEY (maker_program_id) REFERENCES MakerProgram(Id),
          FOREIGN KEY (lead_id) REFERENCES Mentor(Id),
          FOREIGN KEY (ideation_engg_id) REFERENCES Mentor(Id), 
          FOREIGN KEY (buddy_engg_id) REFERENCES Mentor(Id)
      );
      
      select * from CompanyRequirement;


CREATE TABLE CandidateStackAssignment (Id INT AUTO_INCREMENT PRIMARY KEY,
          RequirementId INT,CandidateId VARCHAR(20),
          AssignDate DATE,CompleteDate DATE,
          Status VARCHAR(20),
          CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
          CreatorUser INT,
          FOREIGN KEY (RequirementId) REFERENCES CompanyRequirement(Id),
          FOREIGN KEY (CandidateId) REFERENCES FellowshipCandidate(CandidateId)
      );
      
      select * from CandidateStackAssignment;

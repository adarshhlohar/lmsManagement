create database lms;
show databases;
use lms;
drop database lms;
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

-- Inserting values into the User_Details table

INSERT INTO User_Details (email, first_name, last_name, password, contact_number, verified, creator_user)
VALUES
    ('john.doe@example.com', 'John', 'Doe', 'password123', '123-456-7890', TRUE, 1),
    ('jane.smith@example.com', 'Jane', 'Smith', 'securepass', '987-654-3210', FALSE, 2),
    ('bob.johnson@example.com', 'Bob', 'Johnson', 'pass123', '555-123-4567', TRUE, 1),
    ('alice.white@example.com', 'Alice', 'White', 'alicepass', '999-888-7777', FALSE, 3),
    ('charlie.brown@example.com', 'Charlie', 'Brown', 'brownpass', '111-222-3333', TRUE, 2);
select * from User_Details;

CREATE TABLE Hired_Candidate (Id INT AUTO_INCREMENT PRIMARY KEY,FirstName VARCHAR(20) NOT NULL,MiddleName VARCHAR(20),
    LastName VARCHAR(20) NOT NULL,EmailId VARCHAR(30) NOT NULL,HiredCity VARCHAR(20),Degree VARCHAR(10),
    HiredDate DATE,MobileNumber VARCHAR(20),PermanentPincode VARCHAR(15),HiredLab VARCHAR(20),
    Attitude VARCHAR(10),CommunicationRemark VARCHAR(100),KnowledgeRemark VARCHAR(50),
    AggregateRemark VARCHAR(100),Status VARCHAR(20),CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,CreatorUser INT
    );
    
    -- Inserting values into the Hired_Candidate table
INSERT INTO Hired_Candidate (FirstName, MiddleName, LastName, EmailId, HiredCity, Degree, HiredDate, MobileNumber, PermanentPincode, HiredLab, Attitude, CommunicationRemark, KnowledgeRemark, AggregateRemark, Status, CreatorUser) 
VALUES ('Adarsh','Hari','Lohar','adarshhlohar@gmail.com','Pune','B.E','2023-09-25','9356986567','413606','lab1','positive','Excellent communicator','Strong technical skills','Top-tech candidate','Accepted',2),
('Sanket', 'Shankar', 'Garde', 'sanket@email.com', 'Bangalore', 'B.Tech', '2023-09-17', '6205806083', '400001', 'Lab3', 'Positive', 'Excellent communicator', 'Strong technical skills', 'Top-tech candidate', 'Accepted', 1),
('Rakesh', 'Kumar', 'Pandey', 'rkp65@email.com', 'Delhi', 'B.E', '2023-02-10', '8765432109', '110001', 'Lab2', 'Positive', 'Great interpersonal skills', 'Deep technical knowledge', 'Exceptional performance', 'Accepted', 2),
('mohit', 'Kumar', 'Verma', 'mohit.verma@email.com', 'Bangalore', 'B.E', '2023-03-15', '7890123456', '560001', 'Lab3', 'Positive', 'Effective communicator', 'Solid technical expertise', 'Outstanding profile', 'Pending', 1),
('Bikesh', '', 'Yadav', 'bikesh.yadav@email.com', 'Mumbai', 'B.Tech', '2023-04-20', '9876543210', '400001', 'Lab1', 'Positive', 'Clear and concise communication', 'In-depth knowledge', 'Impressive candidate', 'Pending', 1),
('Arjun', 'Kumar', 'Shukla', 'arjun.shukla@email.com', 'Delhi', 'B.E', '2023-05-25', '8765432109', '110001', 'Lab2', 'Positive', 'Excellent communication skills', 'Extensive research expertise', 'Top-tier candidate', 'Accepted', 2),
('Sumesh', 'Kumar', 'Maurya', 'sumesh.maurya@email.com', 'Bangalore', 'B.Sc', '2023-06-30', '7890123456', '560001', 'Lab3', 'Positive', 'Engaging communication style', 'Strong analytical skills', 'Exceptional performance', 'Pending', 3),
('Aditya', '', 'Sharma', 'aditya.sharma@email.com', 'Mumbai', 'B.E', '2023-07-05', '9876543210', '400001', 'Lab1', 'Positive', 'Effective communicator', 'Technically Good', 'Impressive overall profile', 'Pending', 3),
('Swapnil', 'Shivaji', 'Patil', 'swapnil.patil@email.com', 'Delhi', 'B.Tech', '2023-08-10', '8765432109', '110001', 'Lab2', 'Positive', 'Good interpersonal skills', 'Revise Technical Knowledge ', 'Average', 'Rejected', 2),
('Sanket', '', 'Jadhav', 'sanket.jadhav@email.com', 'Bangalore', 'B.Tech', '2023-09-15', '7890123456', '560001', 'Lab3', 'Positive', 'Clear and effective communication', 'Solid technical skills', 'Outstanding performance', 'Accepted', 1),
('Ishita', 'Raj', 'Patel', 'ishita.patel@email.com', 'Mumbai', 'B.E', '2023-10-20', '9876543210', '400001', 'Lab1', 'Positive', 'Excellent communicator', 'Strong technical skills', 'Top-notch candidate', 'Pending', 1),
('Vihan', 'Singh', 'Sharma', 'vihan.sharma@email.com', 'Delhi', 'B.Tech', '2023-11-25', '8765432109', '110001', 'Lab2', 'Positive', 'Great interpersonal skills', 'need to revise deep technical knowledge', 'Ok', 'Pending', 1),
('Aisha', '', 'Verma', 'aisha.verma@email.com', 'Bangalore', 'B.Tech', '2023-02-26', '7890123456', '560001', 'Lab3', 'Positive', 'Effective communicator', 'Solid technical expertise', 'Fine', 'Accepted', 2),
('Aditya', 'Kumar', 'sharma', 'sharma.aditya@email.com', 'Mumbai', 'B.E', '2023-01-05', '9876543210', '400001', 'Lab1', 'Positive', 'lagging in communication', 'not know basics technical ', 'Average', 'Pending', 3),
('Aaradhya', 'Singh', 'Shukla', 'aaradhya.shukla@email.com', 'Delhi', 'B.Tech', '2023-02-10', '8765432109', '110001', 'Lab2', 'Positive', 'Good communication skills', 'Not know basics concept', 'Average', 'Rejected', 1),
('Reyansh', 'Kumar', 'Pandey', 'reyansh.pandey@email.com', 'Bangalore', 'B.Sc', '2023-03-15', '7890123456', '560001', 'Lab3', 'Positive', 'Engaging communication style', 'Strong analytical skills', 'Exceptional performance', 'Accepted', 1),
('Zara', '', 'Sharma', 'zara.sharma@email.com', 'Mumbai', 'MCA', '2023-04-20', '9876543210', '400001', 'Lab1', 'Positive', 'Effective communicator', 'Business acumen', 'Impressive overall profile', 'Pending', 1),
('Vir', 'Singh', 'Yadav', 'vir.yadav@email.com', 'Delhi', 'B.Tech', '2023-05-25', '8765432109', '110001', 'Lab2', 'Positive', 'Average communication', 'need to clear basic with visualization ', 'Poor', 'Rejected', 2),
('Anvi', 'Kumar', 'Sharma', 'anvi.sharma@email.com', 'Bangalore', 'B.E', '2023-06-30', '7890123456', '560001', 'Lab3', 'Positive', 'Clear and effective communication', 'Solid technical skills', 'Outstanding performance', 'Accepted', 2),
('Aryan', 'Raj', 'Patel', 'aryan.patel@email.com', 'Mumbai', 'B.E', '2023-07-04', '9876543210', '400001', 'Lab1', 'Positive', 'Ok communicator', 'Strong technical skills', 'Ok', 'Accepted', 3),
('Arya', '', 'Patel', 'aryan.patel@email.com', 'Mumbai', 'MCA', '2023-07-05', '9776544210', '400002', 'Lab2', 'Positive', 'fine communicator', 'Not strong technical skills', 'Average', 'Rejected', 3);

select * from Hired_Candidate;


CREATE TABLE FellowshipCandidate (Id INT,CandidateId VARCHAR(20) NOT NULL PRIMARY KEY,FirstName VARCHAR(20) NOT NULL,   
		MiddleName VARCHAR(20),    LastName VARCHAR(20) NOT NULL,   EmailId VARCHAR(30) NOT NULL,    HiredCity VARCHAR(20),     
		Degree VARCHAR(10),    HiredDate DATE,    MobileNumber VARCHAR(20),    PermanentPincode VARCHAR(6),    HiredLab VARCHAR(20),    
		Attitude VARCHAR(20),    CommunicationRemark VARCHAR(100),    KnowledgeRemark VARCHAR(100),    AggregateRemark VARCHAR(100),    
		CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,    CreatorUser INT,    BirthDate DATE,    IsBirthDateVerified BOOLEAN,    
		ParentName VARCHAR(20),    ParentOccupation VARCHAR(20),    ParentsMobileNumber VARCHAR(20),    ParentsAnnualSalary DECIMAL(10, 2),     
		LocalAddress VARCHAR(100),    PermanentAddress VARCHAR(100),    PhotoPath VARCHAR(100),    JoiningDate DATE,    CandidateStatus VARCHAR(50),    
		PersonalInformation TEXT,    BankInformation TEXT,    EducationalInformation TEXT,    DocumentStatus VARCHAR(20),    Remark TEXT,    
		FOREIGN KEY (Id) REFERENCES Hired_Candidate(Id)
);

-- Inserting values into the FellowshipCandidate table
INSERT INTO FellowshipCandidate (Id,CandidateId,FirstName,MiddleName,LastName,EmailId,HiredCity,Degree,HiredDate,MobileNumber,
		 PermanentPincode,HiredLab,Attitude,CommunicationRemark,KnowledgeRemark,AggregateRemark,
         CreatorStamp,
         CreatorUser,
         BirthDate,
         IsBirthDateVerified,
         ParentName,
         ParentOccupation,
         ParentsMobileNumber,
         ParentsAnnualSalary,
         LocalAddress,
         PermanentAddress,
         PhotoPath,
         JoiningDate,
         CandidateStatus,
         PersonalInformation,
         BankInformation,
         EducationalInformation,
         DocumentStatus,
         Remark
     )
     SELECT Id,1 AS Candidate_Id,FirstName,MiddleName,LastName,EmailId,HiredCity,Degree,HiredDate,MobileNumber,
         PermanentPincode,HiredLab,Attitude,CommunicationRemark,KnowledgeRemark,AggregateRemark,
         NOW() AS CreatorStamp,
          1 AS CreatorUser,
         '2023-09-09' AS BirthDate,
          true AS IsBirthDateVerified,
         'sanat' AS ParentName,
         'Service' AS ParentOccupation,
         '8452804004' AS ParentsMobileNumber,
         200000 AS ParentsAnnualSalary,
         'nerul' AS LocalAddress,
         'Chittorgarh' AS PermanentAddress,
         'No' AS PhotoPath,
         HiredDate AS JoiningDate,
         'Active' AS CandidateStatus,
         'Na' AS PersonalInformation,
         'Bank of baroda' AS BankInformation,
         'Not done' AS EducationalInformation,
         'Done' AS DocumentStatus,
         'Good' AS Remark
     FROM Hired_Candidate
     WHERE Status = 'Accepted' AND id = 1;



INSERT INTO FellowshipCandidate (Id,CandidateId,FirstName,MiddleName,LastName,EmailId,HiredCity,Degree,HiredDate,MobileNumber,
		 PermanentPincode,HiredLab,Attitude,CommunicationRemark,KnowledgeRemark,AggregateRemark,
         CreatorStamp,
         CreatorUser,
         BirthDate,
         IsBirthDateVerified,
         ParentName,
         ParentOccupation,
         ParentsMobileNumber,
         ParentsAnnualSalary,
         LocalAddress,
         PermanentAddress,
         PhotoPath,
         JoiningDate,
         CandidateStatus,
         PersonalInformation,
         BankInformation,
         EducationalInformation,
         DocumentStatus,
         Remark
     )
     SELECT Id,5 AS Candidate_Id,FirstName,MiddleName,LastName,EmailId,HiredCity,Degree,HiredDate,MobileNumber,
         PermanentPincode,HiredLab,Attitude,CommunicationRemark,KnowledgeRemark,AggregateRemark,
         NOW() AS CreatorStamp,
          1 AS CreatorUser,
         '2001-09-25' AS BirthDate,
          true AS IsBirthDateVerified,
         'lakhan' AS ParentName,
         'police' AS ParentOccupation,
         '9011646756' AS ParentsMobileNumber,
         330000 AS ParentsAnnualSalary,
         'Vashi' AS LocalAddress,
         'Maharashtra' AS PermanentAddress,
         'No' AS PhotoPath,
         HiredDate AS JoiningDate,
         'Active' AS CandidateStatus,
         'Na' AS PersonalInformation,
         'Bank of Maharashtra' AS BankInformation,
         'Not done' AS EducationalInformation,
         'Done' AS DocumentStatus,
         'Good' AS Remark
     FROM Hired_Candidate
     WHERE Status = 'Accepted' AND id = 5;
     

INSERT INTO FellowshipCandidate (Id,CandidateId,FirstName,MiddleName,LastName,EmailId,HiredCity,Degree,HiredDate,MobileNumber,
		 PermanentPincode,HiredLab,Attitude,CommunicationRemark,KnowledgeRemark,AggregateRemark,
         CreatorStamp,
         CreatorUser,
         BirthDate,
         IsBirthDateVerified,
         ParentName,
         ParentOccupation,
         ParentsMobileNumber,
         ParentsAnnualSalary,
         LocalAddress,
         PermanentAddress,
         PhotoPath,
         JoiningDate,
         CandidateStatus,
         PersonalInformation,
         BankInformation,
         EducationalInformation,
         DocumentStatus,
         Remark
     )
     SELECT Id,6 AS Candidate_Id,FirstName,MiddleName,LastName,EmailId,HiredCity,Degree,HiredDate,MobileNumber,
         PermanentPincode,HiredLab,Attitude,CommunicationRemark,KnowledgeRemark,AggregateRemark,
         NOW() AS CreatorStamp,
          1 AS CreatorUser,
         '2001-12-03' AS BirthDate,
          true AS IsBirthDateVerified,
         'kiran' AS ParentName,
         'Farmer' AS ParentOccupation,
         '9735676578' AS ParentsMobileNumber,
         300000 AS ParentsAnnualSalary,
         'Omerga' AS LocalAddress,
         'Latur' AS PermanentAddress,
         'No' AS PhotoPath,
         HiredDate AS JoiningDate,
         'Active' AS CandidateStatus,
         'Na' AS PersonalInformation,
         'Bank of India' AS BankInformation,
         'Not done' AS EducationalInformation,
         'Done' AS DocumentStatus,
         'Good' AS Remark
     FROM Hired_Candidate
     WHERE Status = 'Accepted' AND id = 9;
     
     
     
INSERT INTO FellowshipCandidate (Id,CandidateId,FirstName,MiddleName,LastName,EmailId,HiredCity,Degree,HiredDate,MobileNumber,
		 PermanentPincode,HiredLab,Attitude,CommunicationRemark,KnowledgeRemark,AggregateRemark,
         CreatorStamp,
         CreatorUser,
         BirthDate,
         IsBirthDateVerified,
         ParentName,
         ParentOccupation,
         ParentsMobileNumber,
         ParentsAnnualSalary,
         LocalAddress,
         PermanentAddress,
         PhotoPath,
         JoiningDate,
         CandidateStatus,
         PersonalInformation,
         BankInformation,
         EducationalInformation,
         DocumentStatus,
         Remark
     )
     SELECT Id,21 AS Candidate_Id,FirstName,MiddleName,LastName,EmailId,HiredCity,Degree,HiredDate,MobileNumber,
         PermanentPincode,HiredLab,Attitude,CommunicationRemark,KnowledgeRemark,AggregateRemark,
         NOW() AS CreatorStamp,
          1 AS CreatorUser,
         '2001-09-25' AS BirthDate,
          true AS IsBirthDateVerified,
         'Hari' AS ParentName,
         'Business' AS ParentOccupation,
         '7021964969' AS ParentsMobileNumber,
         400000 AS ParentsAnnualSalary,
         'Trikoli' AS LocalAddress,
         'Omerga' AS PermanentAddress,
         'No' AS PhotoPath,
         HiredDate AS JoiningDate,
         'Active' AS CandidateStatus,
         'Na' AS PersonalInformation,
         'Bank of Haidrabad' AS BankInformation,
         'Not done' AS EducationalInformation,
         'Done' AS DocumentStatus,
         'Good' AS Remark
     FROM Hired_Candidate
     WHERE Status = 'Accepted' AND id = 41;
     
     INSERT INTO FellowshipCandidate (Id,CandidateId,FirstName,MiddleName,LastName,EmailId,HiredCity,Degree,HiredDate,MobileNumber,
		 PermanentPincode,HiredLab,Attitude,CommunicationRemark,KnowledgeRemark,AggregateRemark,
         CreatorStamp,
         CreatorUser,
         BirthDate,
         IsBirthDateVerified,
         ParentName,
         ParentOccupation,
         ParentsMobileNumber,
         ParentsAnnualSalary,
         LocalAddress,
         PermanentAddress,
         PhotoPath,
         JoiningDate,
         CandidateStatus,
         PersonalInformation,
         BankInformation,
         EducationalInformation,
         DocumentStatus,
         Remark
     )
     SELECT Id,8 AS Candidate_Id,FirstName,MiddleName,LastName,EmailId,HiredCity,Degree,HiredDate,MobileNumber,
         PermanentPincode,HiredLab,Attitude,CommunicationRemark,KnowledgeRemark,AggregateRemark,
         NOW() AS CreatorStamp,
          1 AS CreatorUser,
         '2023-09-09' AS BirthDate,
          true AS IsBirthDateVerified,
         'sanat' AS ParentName,
         'Service' AS ParentOccupation,
         '8452804004' AS ParentsMobileNumber,
         200000 AS ParentsAnnualSalary,
         'nerul' AS LocalAddress,
         'Chittorgarh' AS PermanentAddress,
         'No' AS PhotoPath,
         HiredDate AS JoiningDate,
         'Active' AS CandidateStatus,
         'Na' AS PersonalInformation,
         'Bank of baroda' AS BankInformation,
         'Not done' AS EducationalInformation,
         'Done' AS DocumentStatus,
         'Good' AS Remark
     FROM Hired_Candidate
     WHERE Status = 'Accepted' AND id = 2;

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
      
      -- Inserting values into the CandidateBankDetails table

INSERT INTO CandidateBankDetails(CandidateId,Name,AccountNumber,IsAccountNumVerified,IfscCode,IsIFSCCodeVerified,PanNumber,
          IsPanNumberVerified,AadhaarNumber,IsAadhaarNumVerified,CreatorStamp,CreatorUser
      )
      SELECT 
          CandidateId,
          'SBI' AS Name,
          'SBI100809' AS AccountNumber,
          true AS IsAccountNumVerified,
          'SBI0809' AS IfscCode,
          true AS IsIFSCCodeVerified,
          'EGFWNJ245J' AS PanNumber,
          true AS IsPanNumberVerified,
          '898787347878' AS AadhaarNumber,
          true AS IsAadhaarNumVerified,
          NOW() AS CreatorStamp,
          1 AS CreatorUser
      FROM FellowshipCandidate
      WHERE CandidateId=1 AND CandidateStatus = 'Active';


 INSERT INTO CandidateBankDetails(
          CandidateId,
          Name,
          AccountNumber,
          IsAccountNumVerified,
          IfscCode,
          IsIFSCCodeVerified,
      PanNumber,
          IsPanNumberVerified,
          AadhaarNumber,
          IsAadhaarNumVerified,
          CreatorStamp,
          CreatorUser
      )
      SELECT 
          CandidateId,
      'SBI' AS Name,
          'SBI100809' AS AccountNumber,
          true AS IsAccountNumVerified,
          'SBI0809' AS IfscCode,
          true AS IsIFSCCodeVerified,
          'EGFWPJ245J' AS PanNumber,
          true AS IsPanNumberVerified,
          '842907980120' AS AadhaarNumber,
          true AS IsAadhaarNumVerified,
          NOW() AS CreatorStamp,
          2 AS CreatorUser
      FROM FellowshipCandidate
      WHERE CandidateId=21 AND CandidateStatus = 'Active';

      INSERT INTO CandidateBankDetails(
          CandidateId,
          Name,
          AccountNumber,
          IsAccountNumVerified,
          IfscCode,
          IsIFSCCodeVerified,
          PanNumber,
          IsPanNumberVerified,
          AadhaarNumber,
          IsAadhaarNumVerified,
          CreatorStamp,
          CreatorUser
      )
      SELECT 
           CandidateId,
          'HDFC' AS Name,
          'HDFC987654' AS AccountNumber,
          true AS IsAccountNumVerified,
          'HDFC1234' AS IfscCode,
          true AS IsIFSCCodeVerified,
          'ABCPX1234Q' AS PanNumber,
          true AS IsPanNumberVerified,
          '987654321012' AS AadhaarNumber,
          true AS IsAadhaarNumVerified,
          NOW() AS CreatorStamp,
          1 AS CreatorUser
      FROM FellowshipCandidate
      WHERE CandidateId = 6 AND CandidateStatus = 'Active';
      
 INSERT INTO CandidateBankDetails(
          CandidateId,
          Name,
          AccountNumber,
          IsAccountNumVerified,
          IfscCode,
          IsIFSCCodeVerified,
          PanNumber,
          IsPanNumberVerified,
          AadhaarNumber,
          IsAadhaarNumVerified,
          CreatorStamp,
          CreatorUser
      )
      SELECT 
           CandidateId,
          'ICICI' AS Name,
          'ICICI765432' AS AccountNumber,
          true AS IsAccountNumVerified,
          'ICICI5678' AS IfscCode,
          true AS IsIFSCCodeVerified,
          'XYZAB5678C' AS PanNumber,
          true AS IsPanNumberVerified,
          '876543210987' AS AadhaarNumber,
          true AS IsAadhaarNumVerified,
          NOW() AS CreatorStamp,
          1 AS CreatorUser
      FROM FellowshipCandidate
      WHERE CandidateId = 8 AND CandidateStatus = 'Active';
      

      INSERT INTO CandidateBankDetails(CandidateId,Name,AccountNumber,IsAccountNumVerified,IfscCode,
			IsIFSCCodeVerified,PanNumber,IsPanNumberVerified,AadhaarNumber,IsAadhaarNumVerified,
          CreatorStamp,CreatorUser
      )
      SELECT CandidateId,'SBI' AS Name,'SBI98765' AS AccountNumber,true AS IsAccountNumVerified,'SBI4321' AS IfscCode,
          true AS IsIFSCCodeVerified,'ABCDE1234F' AS PanNumber,true AS IsPanNumberVerified,'987654321012' AS AadhaarNumber,true AS IsAadhaarNumVerified,
          NOW() AS CreatorStamp,3 AS CreatorUser
      FROM FellowshipCandidate
      WHERE CandidateId = 5 AND CandidateStatus = 'Active';
      
select * from CandidateBankDetails;

CREATE TABLE CandidateQualification (Id INT AUTO_INCREMENT PRIMARY KEY,CandidateId VARCHAR(20),diploma VARCHAR(200),DegreeName VARCHAR(200),
		IsDegreeNameVerified BOOLEAN,EmployeeDecipline VARCHAR(500),IsEmployeeDeciplineVerified BOOLEAN,PassingYear INT,
		IsPassingYearVerified BOOLEAN,AggregatePercent Double,IsAggregatePercentVerified BOOLEAN,FinalYearPercent double,
		IsFinalYearPercentVerified BOOLEAN,TrainingInstitute VARCHAR(50),IsTrainingInstituteVerified BOOLEAN,TrainingDurationMonths INT,
		IsTrainingDurationMonthsVerified BOOLEAN,OtherTraining VARCHAR(500),IsOtherTrainingVerified BOOLEAN,CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
		CreatorUser INT,
		FOREIGN KEY (CandidateId)
			REFERENCES FellowshipCandidate (CandidateId)
);

drop table CandidateQualification;
-- Inserting values into the CandidateQualification table

INSERT INTO CandidateQualification (
    CandidateId, diploma, DegreeName, IsDegreeNameVerified, 
    EmployeeDecipline, IsEmployeeDeciplineVerified, PassingYear, 
    IsPassingYearVerified, AggregatePercent, IsAggregatePercentVerified, FinalYearPercent,
    IsFinalYearPercentVerified,TrainingInstitute,IsTrainingInstituteVerified,TrainingDurationMonths,
    IsTrainingDurationMonthsVerified,OtherTraining,IsOtherTrainingVerified,
    CreatorStamp,CreatorUser
)
select 
    CandidateId, 'Diploma in XYZ', 'Bachelor of Technology', TRUE, 
    'Computer Science', TRUE, '2020', 
    TRUE, 75.5, TRUE, 80.0,
    TRUE, 'ABC Training Institute', TRUE, 12,
    TRUE, 'Java Certification', TRUE,
    now(),1
    FROM FellowshipCandidate
      WHERE CandidateId = 1 AND CandidateStatus = 'Active';



INSERT INTO CandidateQualification (
    CandidateId, diploma, DegreeName, IsDegreeNameVerified, 
    EmployeeDecipline, IsEmployeeDeciplineVerified, PassingYear, 
    IsPassingYearVerified, AggregatePercent, IsAggregatePercentVerified, FinalYearPercent,
    IsFinalYearPercentVerified,TrainingInstitute,IsTrainingInstituteVerified,TrainingDurationMonths,
    IsTrainingDurationMonthsVerified,OtherTraining,IsOtherTrainingVerified,
    CreatorStamp,CreatorUser
)
select 
     CandidateId, 'Advanced Diploma in Marketing', 'Master of Business Administration', TRUE, 
    'Marketing Management', TRUE, '2019', 
    TRUE, 85.2, TRUE, 87.5,
    TRUE, 'XYZ Business School', TRUE, 24,
    TRUE, 'Digital Marketing Certification', TRUE,
    now(),2
    FROM FellowshipCandidate
      WHERE CandidateId = 21 AND CandidateStatus = 'Active';


INSERT INTO CandidateQualification (
    CandidateId, diploma, DegreeName, IsDegreeNameVerified, 
    EmployeeDecipline, IsEmployeeDeciplineVerified, PassingYear, 
    IsPassingYearVerified, AggregatePercent, IsAggregatePercentVerified, FinalYearPercent,
    IsFinalYearPercentVerified,TrainingInstitute,IsTrainingInstituteVerified,TrainingDurationMonths,
    IsTrainingDurationMonthsVerified,OtherTraining,IsOtherTrainingVerified,
    CreatorStamp,CreatorUser
)
select 
    CandidateId, 'Associate Degree in Nursing', 'Bachelor of Science in Nursing', TRUE, 
    'Nursing', TRUE, '2018', 
    TRUE, 89.7, TRUE, 92.0,
    TRUE, 'City Medical College', TRUE, 36,
    TRUE, 'Advanced Life Support Certification', TRUE, 
    now(),3
    FROM FellowshipCandidate
      WHERE CandidateId = 5 AND CandidateStatus = 'Active';
      
      
select * from FellowshipCandidate;
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
      
      -- Inserting values into the CandidateDocuments table

INSERT INTO CandidateDocuments (
    CandidateId, DocType, DocPath, Status,CreatorStamp, CreatorUser
)
select CandidateId,'Resume','/path/to/resume1.pdf','Verified',now(),1
FROM FellowshipCandidate
      WHERE CandidateId = 21 AND CandidateStatus = 'Active';


INSERT INTO CandidateDocuments (
    CandidateId, DocType, DocPath, Status,CreatorStamp, CreatorUser
)
select CandidateId,'ID Proof','/path/to/id_proof1.jpg','Pending',now(),1
FROM FellowshipCandidate
      WHERE CandidateId = 5 AND CandidateStatus = 'Active';

INSERT INTO CandidateDocuments (
    CandidateId, DocType, DocPath, Status,CreatorStamp, CreatorUser
)
select CandidateId,'Resume','/path/to/resume2.pdf','Verified',now(),2
FROM FellowshipCandidate
      WHERE CandidateId = 6 AND CandidateStatus = 'Active';
  
INSERT INTO CandidateDocuments (
    CandidateId, DocType, DocPath, Status,CreatorStamp, CreatorUser
)
select CandidateId,'ID Proof','/path/to/id_proof2.jpg','Verified',now(),2
FROM FellowshipCandidate
      WHERE CandidateId = 8 AND CandidateStatus = 'Active';



select * from FellowshipCandidate;
select * from CandidateDocuments;

CREATE TABLE Company (Id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(20),Address VARCHAR(100),
    Location VARCHAR(100),Status VARCHAR(20),
    CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,CreatorUser INT
    );

-- Inserting values into the Company table

INSERT INTO Company (Name, Address, Location, Status, CreatorUser) VALUES
('IBM', '123 IBM Street', 'New York', 'Active', 1),
('Hewlett Packard', '456 HPE Avenue', 'San Francisco', 'Active', 2),
('Cisco Systems', '234 Cisco Lane', 'San Jose', 'Active', 2),
('Intel Corporation', '567 Intel Tower', 'Santa Clara', 'Active', 3),
('Adobe Inc.', '890 Adobe Way', 'San Jose', 'Active', 1),
('Facebook', '123 Facebook Boulevard', 'Menlo Park', 'Active', 2),
('Twitter', '456 Twitter Lane', 'San Francisco', 'Active', 3),
('LinkedIn', '789 LinkedIn Drive', 'Sunnyvale', 'Active', 1),
('Apple Inc.', '234 Apple Avenue', 'Cupertino', 'Active', 2),
('QualityKiosk', 'Mahape, Navi Mumbai', 'Mumbai', 'Active', 1),
('Iris', 'Vashi', 'Navi Mumbai', 'Active', 2),
('Locobuzz','Andheri', 'Mumbai', 'Active', 1),
('Turtol-Mint', 'Navi Mumbai', 'Mumbai', 'Active', 2),
('Edelwise', '14th Floor, Express Towers', 'Mumbai', 'Active', 1),
('Tata 1mg', '6X24+FC7, Rajiv Gandhi Nagar, Ambica Nagar', 'Thane', 'Active', 3);


select * from Company;


CREATE TABLE TechStack (Id INT AUTO_INCREMENT PRIMARY KEY, 
    TechName VARCHAR(50),ImagePath VARCHAR(100),
    Framework VARCHAR(20),CurStatus VARCHAR(20),
    CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CreatorUser INT
    );

-- Inserting values into the TechStack 

INSERT INTO TechStack (TechName, ImagePath, Framework, CurStatus, CreatorUser) 
 VALUES
 ('Java', '/images/java_logo.png', 'Spring Boot', 'Active', 1),
 ('Mobile', '/images/mobile_logo.png', 'React Native', 'Active', 2),
 ('PHP', '/images/php_logo.png', 'Laravel', 'Active', 3),
 ('Python', '/images/python_logo.png', 'Django', 'Active', 1),
 ('JavaScript', '/images/javascript_logo.png', 'React', 'Active', 2),
 ('Database', '/images/database_logo.png', 'MySQL', 'Active', 3),
 ('Scripting', '/images/scripting_logo.png', 'Python Scripting', 'Active', 1),
 ('Programming Language', '/images/programming_logo.png', 'C++', 'Active', 2);
 
select * from TechStack;

CREATE TABLE TechType (Id INT AUTO_INCREMENT PRIMARY KEY,
    TypeName VARCHAR(20),CurStatus VARCHAR(20),
    CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CreatorUser INT
    );
    
    -- Inserting values into the TechType table

INSERT INTO TechType (TypeName, CurStatus, CreatorUser) 
VALUES('FullStack', 'Active', 1),
('FrontEnd', 'Active', 2),
('BackEnd', 'Active', 3),
('Mobile', 'Active', 1),
('Database', 'Active', 2),
('Scripting', 'Active', 3),
('Programming Language', 'Active', 1);
        
select * from TechType;

CREATE TABLE MakerProgram (Id INT AUTO_INCREMENT PRIMARY KEY,
          ProgramName VARCHAR(200),ProgramType VARCHAR(200),
          ProgramLink VARCHAR(200),TechStackId INT,
		  TechTypeId INT,IsProgramApproved BOOLEAN,
          Description TEXT,Status VARCHAR(200),CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
          CreatorUser INT,
          FOREIGN KEY (TechStackId) REFERENCES TechStack(Id),
          FOREIGN KEY (TechTypeId) REFERENCES TechType(Id)
);

      
      -- Inserting values into the MakerProgram table

INSERT  INTO MakerProgram (
          ProgramName,
          ProgramType,
          ProgramLink,
          TechStackId,
          TechTypeId,
          IsProgramApproved,
          Description,
          Status,
          CreatorUser
      )
      VALUES
      (
          'Java_Full_Stack',
          (SELECT TypeName FROM TechType WHERE TypeName = 'FullStack'),
          'https://www.javatpoint.com/java-full-stack',
          (SELECT Id FROM TechStack WHERE TechName = 'Java' AND Framework = 'Spring Boot' AND CurStatus = 'Active'),
          (SELECT Id FROM TechType WHERE TypeName = 'FullStack'),
          TRUE,
          'Description about the Java Full Stack program...',
          'Active',
          2
      ),
      (
          'ReactJs',
          (SELECT TypeName FROM TechType WHERE TypeName = 'FrontEnd'),
          'https://www.javatpoint.com/reactjs-tutorial',
          (SELECT Id FROM TechStack WHERE FrameWork = 'React' AND CurStatus = 'Active'),
          (SELECT Id FROM TechType WHERE TypeName = 'FrontEnd'),
          TRUE,
          'Description about the React Frontend program...',
          'Active',
          3
      ),
      (
          'Angular_Full_Stack',
          (SELECT TypeName FROM TechType WHERE TypeName = 'FullStack'),
          'https://www.javatpoint.com/angularjs-tutorial',
          (SELECT Id FROM TechStack WHERE TechName = 'Angular' AND CurStatus = 'Active'),
          (SELECT Id FROM TechType WHERE TypeName = 'FullStack'),
          TRUE,
          'Description about the Angular Full Stack program...',
          'Active',
          3
      ),
      (
          'Java_Backend',
          (SELECT TypeName FROM TechType WHERE TypeName = 'BackEnd'),
          'https://www.javatpoint.com/spring-boot-tutorial',
          (SELECT Id FROM TechStack WHERE FrameWork = 'Spring Boot' AND CurStatus = 'Active'),
          (SELECT Id FROM TechType WHERE TypeName = 'BackEnd'),
          TRUE,
          'Description about the Java Backend program...',
          'Active',
          1
      ),
      (
          'React_Native_Mobile',
          (SELECT TypeName FROM TechType WHERE TypeName = 'Mobile'),
          'https://www.javatpoint.com/react-native-tutorial',
          (SELECT Id FROM TechStack WHERE FrameWork = 'React Native' AND CurStatus = 'Active'),
          (SELECT Id FROM TechType WHERE TypeName = 'Mobile'),
          TRUE,
          'Description about the React Native Mobile program...',
          'Active',
          2
      );

      select * from MakerProgram;
      
      CREATE TABLE AppParameters (Id INT AUTO_INCREMENT PRIMARY KEY,
      KeyType VARCHAR(50),KeyValue VARCHAR(100),
      KeyText TEXT,CurStatus VARCHAR(50),
      LastUpdateUser INT,LastUpdateStamp TIMESTAMP,
      CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
      CreatorUser INT,SeqNum INT
      );
      
      -- Inserting values into the AppParameters table

 INSERT INTO AppParameters (KeyType, KeyValue, KeyText, CurStatus, SeqNum)
 VALUES 
 ('DOC_STATUS', 'PND', 'Pending', 'ACTV', 1),
 ('DOC_STATUS', 'RCEVD', 'Received', 'ACTV', 2),
 ('CUR_STATUS', 'ACTV', 'Active', 'ACTV', 1),
 ('CUR_STATUS', 'IACTV', 'Inactive', 'ACTV', 1),
 ('BATCH_STATUS', 'INPROCESS', 'In Process', 'ACTV', 1),
 ('BATCH_STATUS', 'HOLD', 'Hold', 'ACTV', 2),
 ('BATCH_STATUS', 'COMPL', 'Completed', 'ACTV', 3);
      
 select * from AppParameters;


CREATE TABLE Lab (Id INT AUTO_INCREMENT PRIMARY KEY, 
	Name VARCHAR(20),Location VARCHAR(20),   
	Address VARCHAR(100),Status VARCHAR(20),   
	CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,   
	CreatorUser INT
    );
    
    -- Inserting values into the Lab table

INSERT INTO Lab 
(Name, Location, Address, Status, CreatorUser) 
VALUES
('Lab1', 'Mumbai', 'Malhotra Chambers, Deonar, Govandi East, Mumbai - 400088', 'Active', 1),
('Lab2', 'Pune', 'Pune, Maharashtra', 'Active', 2),
('Lab3', 'Bangalore', '5, 14th A Main Rd, Sector 4, HSR Layout, Bengaluru', 'Active', 3);

    select * from Lab;


 CREATE TABLE Mentor (Id INT AUTO_INCREMENT PRIMARY KEY,
          Name VARCHAR(20),MentorType VARCHAR(20),
          LabId INT,Status VARCHAR(20),
          CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
          CreatorUser INT,
          FOREIGN KEY (LabId) REFERENCES Lab(Id)
      );
      
      -- Inserting values into the Mentor table

INSERT INTO Mentor (Name, MentorType, LabId, Status, CreatorUser)
      VALUES
      ('Ashish', 'Lead', 2, 'Active', 1),
      ('Narayan', 'Ideation', 3, 'Active', 3),
      ('Rohan', 'Ideation', 2, 'Active', 2);

 select * from Mentor;
 
 CREATE TABLE MentorIdeationMap (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    ParentMentorId INT,
    Status VARCHAR(20),
    CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CreatorUser INT,
    FOREIGN KEY (ParentMentorId)
        REFERENCES Mentor (Id)
);


INSERT INTO MentorIdeationMap
      (ParentMentorId,Status,CreatorStamp,CreatorUser)
      SELECT Id,'Active',NOW(),1
      FROM Mentor WHERE Id =1;
      
INSERT INTO MentorIdeationMap(ParentMentorId,Status,CreatorStamp,CreatorUser)
SELECT Id,'Active',NOW(),2
      FROM Mentor WHERE Id =2;
      
INSERT INTO MentorIdeationMap(ParentMentorId,Status,CreatorStamp,CreatorUser)
      SELECT Id,'Active',NOW(),3
      FROM Mentor WHERE Id =3;
      
select * from MentorIdeationMap;
 
 
 CREATE TABLE MentorTechStack (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    MentorId INT,
    TechStackId INT,
    Status VARCHAR(20),
    CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CreatorUser INT,
    FOREIGN KEY (MentorId)
        REFERENCES Mentor (Id),
    FOREIGN KEY (TechStackId)
        REFERENCES TechStack (Id)
);


INSERT INTO MentorTechStack (MentorId,TechStackId, Status, CreatorStamp,CreatorUser)
      VALUES ((SELECT Id FROM Mentor WHERE Id = 2),(SELECT Id FROM TechStack WHERE Id =6),'Active',NOW(),1),
      ((SELECT Id FROM Mentor WHERE Id = 3),(SELECT Id FROM TechStack WHERE Id =5),'Active',NOW(),1),
      ((SELECT Id FROM Mentor WHERE Id = 1),(SELECT Id FROM TechStack WHERE Id =1),'Active',NOW(),1),
      ((SELECT Id FROM Mentor WHERE Id = 2),(SELECT Id FROM TechStack WHERE Id =2),'Active',NOW(),2),
      ((SELECT Id FROM Mentor WHERE Id = 3),(SELECT Id FROM TechStack WHERE Id =4),'Active',NOW(),3);
 
 select * from MentorTechStack;
 
 CREATE TABLE LabThreshold (Id INT AUTO_INCREMENT PRIMARY KEY,
          LabId INT, LabCapacity INT,
          LeadThreshold INT,IdeationEnggThreshold INT,
          BuddyEnggThreshold INT,Status VARCHAR(20),
          CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
          CreatorUser INT,
          FOREIGN KEY (LabId) REFERENCES Lab(Id)
      );
      
      -- Inserting values into the LabThreshold table
INSERT INTO LabThreshold (LabId, LabCapacity, LeadThreshold, IdeationEnggThreshold, BuddyEnggThreshold, Status, CreatorUser) 
       VALUES(1, 250, 6, 20, 40, 'Active', 1),
			 (2, 200, 3, 15, 30, 'Active', 2),
             (3, 300, 5, 15, 30, 'Active', 3);


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
      
      select * from Mentor;
      -- Inserting values into the CompanyRequirement table
 INSERT INTO CompanyRequirement (company_id,requested_month,city,is_doc_verification,requirement_doc_path,
          no_of_engg,tech_stack_id,tech_type_id,maker_program_id,
          lead_id,ideation_engg_id,buddy_engg_id,special_remark,
          Status,
          creator_user
      )
      VALUES((SELECT Id FROM Company WHERE Name = 'Hewlett Packard'),'2023-12-01','Bangalore',true,'/documents/Hewlett Packard.pdf',
          8,(SELECT Id FROM TechStack WHERE TechName = 'React' AND Framework = 'Node.js' AND CurStatus = 'Active'),(SELECT Id FROM TechType WHERE TypeName = 'FullStack'),(SELECT Id FROM MakerProgram WHERE ProgramName = 'ReactJs'),
          (SELECT Id FROM Mentor WHERE Name = 'Ashish' AND MentorType = 'Lead' AND Status = 'Active'),(SELECT Id FROM Mentor WHERE Name = 'Narayan' AND MentorType = 'Ideation' AND Status = 'Active'),(SELECT Id FROM Mentor WHERE Name = 'Rohan' AND MentorType = 'Ideation' AND Status = 'Active'),'Excellent',
          'Active',2),
			((SELECT Id FROM Company WHERE Name = 'Cisco Systems'),'2023-12-01','Delhi',true,'/documents/Cisco Systems.pdf',
          5,(SELECT Id FROM TechStack WHERE TechName = 'Java' AND Framework = 'Spring Boot' AND CurStatus = 'Active'),(SELECT Id FROM TechType WHERE TypeName = 'BackEnd'),(SELECT Id FROM MakerProgram WHERE ProgramName = 'Java_Backend'),
          (SELECT Id FROM Mentor WHERE Name = 'Sunil' AND MentorType = 'Lead' AND Status = 'Active'),(SELECT Id FROM Mentor WHERE Name = 'Venkat' AND MentorType = 'Ideation' AND Status = 'Active'),(SELECT Id FROM Mentor WHERE Name = 'Pooja' AND MentorType = 'Ideation' AND Status = 'Active'),'Good',
          'Active',3),
		((SELECT Id FROM Company WHERE Name = 'Intel Corporation'),'2023-12-01','Mumbai',true,'/documents/Intel Corporation.pdf',500,
          (SELECT Id FROM TechStack WHERE TechName = 'React Native' AND CurStatus = 'Active'),(SELECT Id FROM TechType WHERE TypeName = 'Mobile'),(SELECT Id FROM MakerProgram WHERE ProgramName = 'React_Native_Mobile'),
          (SELECT Id FROM Mentor WHERE Name = 'Nagendra' AND MentorType = 'Lead' AND Status = 'Active'),(SELECT Id FROM Mentor WHERE Name = 'Roshni' AND MentorType = 'Ideation' AND Status = 'Active'),(SELECT Id FROM Mentor WHERE Name = 'Aishwarya' AND MentorType = 'Buddy' AND Status = 'Active'),'Good',
          'Active',2),
      ((SELECT Id FROM Company WHERE Name = 'Adobe Inc.'),'2023-12-01','Noida',true,NULL,50,
          (SELECT Id FROM TechStack WHERE TechName = 'Java' AND Framework = 'Spring Boot' AND CurStatus = 'Active'),(SELECT Id FROM TechType WHERE TypeName = 'FullStack'),(SELECT Id FROM MakerProgram WHERE ProgramName = 'Java_Full_Stack'),
		  (SELECT Id FROM Mentor WHERE Name = 'Sunil' AND MentorType = 'Lead' AND Status = 'Active'),(SELECT Id FROM Mentor WHERE Name = 'Pooja' AND MentorType = 'Ideation' AND Status = 'Active'),(SELECT Id FROM Mentor WHERE Name = 'Gunjan' AND MentorType = 'Buddy' AND Status = 'Active'),'Excellent',
          'Active',3),
      ((SELECT Id FROM Company WHERE Name = 'Facebook'),'2023-06-01','Maxico',true,'/documents/Facebook.pdf',10,
          (SELECT Id FROM TechStack WHERE TechName = 'React' AND CurStatus = 'Active'),(SELECT Id FROM TechType WHERE TypeName = 'FrontEnd'),(SELECT Id FROM MakerProgram WHERE ProgramName = 'ReactJs'),
          (SELECT Id FROM Mentor WHERE Name = 'Ashish' AND MentorType = 'Lead' AND Status = 'Active'),(SELECT Id FROM Mentor WHERE Name = 'Rohan' AND MentorType = 'Ideation' AND Status = 'Active'),(SELECT Id FROM Mentor WHERE Name = 'Narayan' AND MentorType = 'Buddy' AND Status = 'Active'),
          'Excellent','Active',1
      ),
      ((SELECT Id FROM Company WHERE Name = 'Twitter'),'2022-12-21','Pune',true,'/documents/Twitter.pdf',80,
          (SELECT Id FROM TechStack WHERE TechName = 'Angular' AND CurStatus = 'Active'),(SELECT Id FROM TechType WHERE TypeName = 'FullStack'),(SELECT Id FROM MakerProgram WHERE ProgramName = 'Angular_Full_Stack'),
          (SELECT Id FROM Mentor WHERE Name = 'Gunjan' AND MentorType = 'Lead' AND Status = 'Active'),(SELECT Id FROM Mentor WHERE Name = 'Nagendra' AND MentorType = 'Ideation' AND Status = 'Active'),(SELECT Id FROM Mentor WHERE Name = 'Roshni' AND MentorType = 'Buddy' AND Status = 'Active'),
          'Good',          'Active',2
      ),
      ((SELECT Id FROM Company WHERE Name = 'LinkedIn'),'2023-12-01','Mumbai',true,'/documents/LinkedIn.pdf',5,(SELECT Id FROM TechStack WHERE TechName = 'Java' AND CurStatus = 'Active'),
			(SELECT Id FROM TechType WHERE TypeName = 'FullStack'),(SELECT Id FROM MakerProgram WHERE ProgramName = 'Java_Full_Stack'),(SELECT Id FROM Mentor WHERE Name = 'Sunil' AND MentorType = 'Lead' AND Status = 'Active'),
          (SELECT Id FROM Mentor WHERE Name = 'Venkat' AND MentorType = 'Ideation' AND Status = 'Active'),(SELECT Id FROM Mentor WHERE Name = 'Aishwarya' AND MentorType = 'Buddy' AND Status = 'Active'),
          'Excellent','Active',1
      ),
      ((SELECT Id FROM Company WHERE Name = 'QualityKiosk'),'2023-12-01','Mumbai',true,'/documents/QualityKiosk.pdf',8,
          (SELECT Id FROM TechStack WHERE TechName = 'React' AND CurStatus = 'Active'),(SELECT Id FROM TechType WHERE TypeName = 'FrontEnd'),(SELECT Id FROM MakerProgram WHERE ProgramName = 'ReactJs'),
          (SELECT Id FROM Mentor WHERE Name = 'Ashish' AND MentorType = 'Lead' AND Status = 'Active'),(SELECT Id FROM Mentor WHERE Name = 'Rohan' AND MentorType = 'Ideation' AND Status = 'Active'),(SELECT Id FROM Mentor WHERE Name = 'Narayan' AND MentorType = 'Ideation' AND Status = 'Active'),
          'Excellent','Active',1
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
      
      select * from FellowshipCandidate;
      select * from Company;
      -- Inserting values into the CandidateStackAssignment table
INSERT INTO CandidateStackAssignment (
          RequirementId,
          CandidateId,
          AssignDate,
          CompleteDate,
          Status,
          CreatorUser
      )
      VALUES
      (
          (SELECT Id FROM CompanyRequirement WHERE company_id = (SELECT Id FROM Company WHERE Name = 'IBM')),
          (SELECT CandidateId FROM FellowshipCandidate WHERE CandidateId = 21),
          '2023-10-16',
          NULL, 
          'Assigned',
          1
      ),
      (
          (SELECT Id FROM CompanyRequirement WHERE company_id = (SELECT Id FROM Company WHERE Name = 'Hewlett Packard')),
          (SELECT CandidateId FROM FellowshipCandidate WHERE CandidateId = 1),
          '2023-09-16',
          NULL, 
          'Assigned',
          2
      ),
      (
          (SELECT Id FROM CompanyRequirement WHERE company_id = (SELECT Id FROM Company WHERE Name = 'Cisco Systems')),
          (SELECT CandidateId FROM FellowshipCandidate WHERE CandidateId = 5),
          '2023-10-20',
          NULL, 
          'Assigned',
          3
      );


      select * from CandidateStackAssignment;


select * from hired_Candidate;
select * from FellowshipCandidate;
select * from CandidateStackAssignment;
select * from CompanyRequirement;

SELECT fc.CandidateId, fc.FirstName, fc.LastName
FROM FellowshipCandidate fc
JOIN CandidateStackAssignment csa ON fc.CandidateId = csa.CandidateId
JOIN CompanyRequirement cr ON csa.RequirementId = cr.Id
JOIN TechStack ts ON cr.tech_stack_id = ts.Id
WHERE ts.TechName = 'Java';

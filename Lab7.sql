
CREATE TABLE Faculty (
    Fcode CHAR(3) NOT NULL,
    FName_Thai VARCHAR(80),
    FName_Eng VARCHAR(80),
    PRIMARY KEY (Fcode)
);

CREATE TABLE Department(
    DCode CHAR(3) NOT NULL,
    DName_Thai VARCHAR(80),
    DName_Eng VARCHAR(80),
    FCode CHAR(3) NOT NULL,
    PRIMARY KEY (DCode),
    FOREIGN KEY(Fcode) REFERENCES Faculty(FCode)
);

CREATE TABLE Student(
    StdID CHAR(11) NOT NULL,
    StdFName VARCHAR(40),
    StdLName VARCHAR(40),
    StdAddress VARCHAR(80),
    DCode CHAR(3) NOT NULL,
    PRIMARY KEY (StdID),
    FOREIGN KEY(DCode) REFERENCES Department(DCode)
);

INSERT INTO faculty(FCode,FName_Thai,FName_Eng) VALUES('F01','คณะวิทยาศาสตร์','Science');
INSERT INTO faculty(FCode,FName_Thai,FName_Eng) VALUES('F02','คณะวิศวกรรมศาสตร์','Engineer');
INSERT INTO faculty(FCode,FName_Thai,FName_Eng) VALUES('F03','คณะเทคโนโลยี','Technology');
INSERT INTO faculty(FCode,FName_Thai,FName_Eng) VALUES('F04','วิทยาลัยการคอมพิวเตอร์','College of Computing');
INSERT INTO faculty(FCode,FName_Thai,FName_Eng) VALUES('F05','คณะแพทย์ศาสตร์','Medicine');

INSERT INTO department(DCode,dname_thai,dname_eng,fcode) VALUES('D01','คณิตศาสตร์','Mathematics','F01');
INSERT INTO department(DCode,dname_thai,dname_eng,fcode) VALUES('D02','สถิติ','Statistics','F01');
INSERT INTO department(DCode,dname_thai,dname_eng,fcode) VALUES('D03','วิทยาการคอมพิวเตอร์','Computer Science','F04');
INSERT INTO department(DCode,dname_thai,dname_eng,fcode) VALUES('D04','วิศวกรรมคอมพิวเตอร์','Computer Engineer','F02');
INSERT INTO department(DCode,dname_thai,dname_eng,fcode) VALUES('D05','เทคโนโลยีการอาหาร','Food Technology','F03');
INSERT INTO department(DCode,dname_thai,dname_eng,fcode) VALUES('D06','กายภาพบำบัด','Physical therapy','F05');

INSERT INTO student(stdid,stdfname,stdlname,dcode) VALUES ('613020024-1','ภานุวัฒน์','ยี่สุ่นซ้อน','D03');
INSERT INTO student(stdid,stdfname,stdlname,dcode) VALUES ('633020001-2','ภูตะวัน','แจงใส','D03');
INSERT INTO student(stdid,stdfname,stdlname,dcode) VALUES ('633020003-4','ณิชา','ชะรอความรัก','D04');
INSERT INTO student(stdid,stdfname,stdlname,dcode) VALUES ('633020005-6','บารมี','สมาธิปัญญา','D05');
INSERT INTO student(stdid,stdfname,stdlname,dcode) VALUES ('633020007-8','ธนะรัชต์','อาจประโคน','D06');

UPDATE student SET stdfname = 'มัลลิกา', stdlname = 'วัฒนะ', stdid = '633020009-0' WHERE stdid = '633020001-2';
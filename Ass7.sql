-- create table teacher
create table teacher(
    tcode char(3) NOT NULL,
    tfname VARCHAR2(255),
    tlname VARCHAR2(255),
    dcode char(3),
    primary key (tcode)
);

-- create table subject
create table subject(
    subjcode char(6) NOT NULL,
    name_tha VARCHAR2(80),
    name_eng VARCHAR2(80),
    credit number(2),
    primary key (subjcode)
);

-- create table register
create table register(
    StdID CHAR(11) NOT NULL,
    subjcode char(6) NOT NULL,
    year number(4),
    semester number(11),
    grade number(4,2),
    foreign key (StdID) references student,
    foreign key (subjcode) references subject
);

INSERT INTO teacher(tcode,tfname,tlname) VALUES ('T01','พุธษดี','ศิริแสงตระกูล');
INSERT INTO teacher(tcode,tfname,tlname) VALUES ('T02','สมจิตร','อาจอินทร์');
INSERT INTO teacher(tcode,tfname,tlname) VALUES ('T03','สันติ','ทินตะนัย');
INSERT INTO teacher(tcode,tfname,tlname) VALUES ('T04','อภิศักดิ์','พัฒนจักร');
INSERT INTO teacher(tcode,tfname,tlname) VALUES ('T05','งามนิจ','อาจอินทร์');
INSERT INTO teacher(tcode,tfname,tlname) VALUES ('T06','อุรฉัตร','โคแก้ว');
INSERT INTO teacher(tcode,tfname,tlname) VALUES ('T07','ปัญญาพล','หอระตะ');

INSERT INTO subject(subjcode,name_tha,name_eng,credit)VALUES(000103,'ภาษาอังกฤษทางวิชาการ 2','English II',3);
INSERT INTO subject(subjcode,name_tha,name_eng,credit)VALUES(000171,'ชีวิตสุขภาพ','Healthy life',3);
INSERT INTO subject(subjcode,name_tha,name_eng,credit)VALUES(314125,'แคลคูลัส','Calculus',3);
INSERT INTO subject(subjcode,name_tha,name_eng,credit)VALUES(316201,'สถิติขั้นต้น','Intro to statistics',3);
INSERT INTO subject(subjcode,name_tha,name_eng,credit)VALUES(322212,'โครงสร้างข้อมูล','Data structures',3);
INSERT INTO subject(subjcode,name_tha,name_eng,credit)VALUES(322336,'ระบบฐานข้อมูลและการออกแบบ','Database systems',3);


INSERT INTO register VALUES ('613020024-1',000103,2558,1,3.5);
INSERT INTO register VALUES ('613020024-1',000171,2558,1,4.0);
INSERT INTO register VALUES ('613020024-1',314125,2558,1,3.0);
INSERT INTO register VALUES ('613020024-1',316201,2558,2,4.0);
INSERT INTO register VALUES ('613020024-1',322212,2558,2,3.5);
INSERT INTO register VALUES ('613020024-1',322336,2558,2,4.0);

INSERT INTO register VALUES ('633020009-0',000103,2558,1,3.5);
INSERT INTO register VALUES ('633020009-0',000171,2558,1,4.0);
INSERT INTO register VALUES ('633020009-0',314125,2558,1,3.0);
INSERT INTO register VALUES ('633020009-0',316201,2558,2,4.0);
INSERT INTO register VALUES ('633020009-0',322212,2558,2,3.5);
INSERT INTO register VALUES ('633020009-0',322336,2558,2,4.0);

INSERT INTO register VALUES ('633020003-4',000103,2558,1,3.5);
INSERT INTO register VALUES ('633020003-4',000171,2558,1,4.0);
INSERT INTO register VALUES ('633020003-4',314125,2558,1,3.0);
INSERT INTO register VALUES ('633020003-4',316201,2558,2,4.0);
INSERT INTO register VALUES ('633020003-4',322212,2558,2,3.5);
INSERT INTO register VALUES ('633020003-4',322336,2558,2,4.0);

INSERT INTO register VALUES ('633020005-6',000103,2558,1,3.5);
INSERT INTO register VALUES ('633020005-6',000171,2558,1,4.0);
INSERT INTO register VALUES ('633020005-6',314125,2558,1,3.0);
INSERT INTO register VALUES ('633020005-6',316201,2558,2,4.0);
INSERT INTO register VALUES ('633020005-6',322212,2558,2,3.5);
INSERT INTO register VALUES ('633020005-6',322336,2558,2,4.0);

INSERT INTO register VALUES ('633020007-8',000103,2558,1,3.5);
INSERT INTO register VALUES ('633020007-8',000171,2558,1,4.0);
INSERT INTO register VALUES ('633020007-8',314125,2558,1,3.0);
INSERT INTO register VALUES ('633020007-8',316201,2558,2,4.0);
INSERT INTO register VALUES ('633020007-8',322212,2558,2,3.5);
INSERT INTO register VALUES ('633020007-8',322336,2558,2,4.0);






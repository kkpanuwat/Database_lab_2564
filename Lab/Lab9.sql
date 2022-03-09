ALTER TABLE
    student
ADD
    tcode char(3);

ALTER TABLE
    student
ADD
    CONSTRAINT fk_tcode FOREIGN KEY(tcode) REFERENCES teacher(tcode);

UPDATE
    student
set
    tcode = 'T05'
WHERE
    stdid = '613020024-1';

UPDATE
    student
set
    tcode = 'T06'
WHERE
    stdid = '633020009-0';

UPDATE
    student
set
    tcode = 'T03'
WHERE
    stdid = '633020003-4';

UPDATE
    student
set
    tcode = 'T07'
WHERE
    stdid = '633020005-6';

UPDATE
    student
set
    tcode = 'T02'
WHERE
    stdid = '633020007-8';

SELECT
    *
FROM
    student;

-- create view
CREATE VIEW Lab09_StdCredit AS
SELECT
    student.StdFName,
    student.StdLName,
    sum(subject.credit) AS TotalCredit
FROM
    register
    JOIn student on register.stdid = student.stdid
    JOIN subject on register.subjcode = subject.subjcode
GROUP by
    student.stdid,
    student.StdFName,
    student.StdLName
ORDER BY
    student.stdid ASC;

-- drop VIEW Lab09_StdCredit;
ALTER TABLE
    subject
modify
    name_tha VARCHAR2(100);

INSERT INTO
    subject
VALUES
    (
        342236,
        'การเขียนโปรแกรมประยุกต์บนเว็บ',
        'Web,Application Programming',
        3
    );

INSERT INTO
    subject
VALUES
    (
        342436,
        'เทคโนโลยีเว็บแบบสื่อความหมาย',
        'Semantic Web Technology',
        3
    );

create view view_subject AS
SELECT
    *
FROM
    subject
ORDER BY
    subjcode asc;

select
    *
from
    view_subject;

SELECT
    *
FROM
    subject
order by
    asc;

create view Lab09_Subject_Enroll AS
SELECT
    subject.subjcode,
    name_eng,
    COUNT(register.subjcode) AS Student_Amout
FROM
    subject
    Left join register on register.subjcode = subject.subjcode
group by
    subject.subjcode,
    name_eng
ORDER BY
    student_amout DESC;

SELECT
    *
FROM
    Lab09_Subject_Enroll;

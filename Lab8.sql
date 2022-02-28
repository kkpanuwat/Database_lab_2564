create table book (
    bookid char(3) NOT NULL,
    bookname VARCHAR2(60),
    bookprice number(6, 2),
    bookamount number(3),
    primary key (bookid)
);

create table borrow(
    borrowid number(4) NOT NULL,
    stdid char(11) NOT NULL,
    bookid char(3) NOT NULL,
    borrowdate DATE,
    returndate DATE,
    primary key (borrowid),
    foreign key (stdid) references student(stdid),
    foreign key (bookid) references book(bookid)
);

INSERT INTO
    book (bookid, bookname, bookprice, bookamount)
VALUES
    ('B01', 'System Analysis Handbook', 250, 10);

INSERT INTO
    book (bookid, bookname, bookprice, bookamount)
VALUES
    ('B02', 'PowerPoint Handbook', 200, 5);

INSERT INTO
    book (bookid, bookname, bookprice, bookamount)
VALUES
    ('B03', 'Mac OS X Handbook', 150, 6);

INSERT INTO
    book (bookid, bookname, bookprice, bookamount)
VALUES
    ('B04', 'Basic iOS App Development', 233, 5);

INSERT INTO
    book (bookid, bookname, bookprice, bookamount)
VALUES
    (
        'B05',
        'Professional ASP.NET Programming',
        200,
        4
    );

INSERT INTO
    book (bookid, bookname, bookprice, bookamount)
VALUES
    ('B06', 'Database Design Tutorial', 99, 5);

-- STD NUMBER 1
INSERT INTO
    BORROW (borrowid, stdid, bookid, borrowdate, returndate)
VALUES
    (
        0001,
        '613020024-1',
        'B01',
        TO_DATE('24/02/2022', 'DD/MM/YYYY'),
        TO_DATE('25/02/2022', 'DD/MM/YYYY')
    );

INSERT INTO
    BORROW (borrowid, stdid, bookid, borrowdate, returndate)
VALUES
    (
        0002,
        '613020024-1',
        'B02',
        TO_DATE('24/02/2022', 'DD/MM/YYYY'),
        TO_DATE('25/02/2022', 'DD/MM/YYYY')
    );

INSERT INTO
    BORROW (borrowid, stdid, bookid, borrowdate, returndate)
VALUES
    (
        0003,
        '613020024-1',
        'B03',
        TO_DATE('24/02/2022', 'DD/MM/YYYY'),
        TO_DATE('25/02/2022', 'DD/MM/YYYY')
    );

INSERT INTO
    BORROW (borrowid, stdid, bookid, borrowdate, returndate)
VALUES
    (
        0004,
        '613020024-1',
        'B04',
        TO_DATE('24/02/2022', 'DD/MM/YYYY'),
        TO_DATE('25/02/2022', 'DD/MM/YYYY')
    );

INSERT INTO
    BORROW (borrowid, stdid, bookid, borrowdate, returndate)
VALUES
    (
        0005,
        '613020024-1',
        'B05',
        TO_DATE('24/02/2022', 'DD/MM/YYYY'),
        TO_DATE('25/02/2022', 'DD/MM/YYYY')
    );

-- STD NUMBER 2
INSERT INTO
    BORROW (borrowid, stdid, bookid, borrowdate, returndate)
VALUES
    (
        0006,
        '633020009-0',
        'B02',
        TO_DATE('24/02/2022', 'DD/MM/YYYY'),
        TO_DATE('25/02/2022', 'DD/MM/YYYY')
    );

INSERT INTO
    BORROW (borrowid, stdid, bookid, borrowdate, returndate)
VALUES
    (
        0007,
        '633020009-0',
        'B03',
        TO_DATE('24/02/2022', 'DD/MM/YYYY'),
        TO_DATE('25/02/2022', 'DD/MM/YYYY')
    );

INSERT INTO
    BORROW (borrowid, stdid, bookid, borrowdate, returndate)
VALUES
    (
        0008,
        '633020009-0',
        'B04',
        TO_DATE('24/02/2022', 'DD/MM/YYYY'),
        TO_DATE('25/02/2022', 'DD/MM/YYYY')
    );

INSERT INTO
    BORROW (borrowid, stdid, bookid, borrowdate, returndate)
VALUES
    (
        0009,
        '633020009-0',
        'B05',
        TO_DATE('24/02/2022', 'DD/MM/YYYY'),
        TO_DATE('25/02/2022', 'DD/MM/YYYY')
    );

-- STD NUMBER 3
INSERT INTO
    BORROW (borrowid, stdid, bookid, borrowdate, returndate)
VALUES
    (
        0010,
        '633020003-4',
        'B03',
        TO_DATE('24/02/2022', 'DD/MM/YYYY'),
        TO_DATE('25/02/2022', 'DD/MM/YYYY')
    );

INSERT INTO
    BORROW (borrowid, stdid, bookid, borrowdate, returndate)
VALUES
    (
        0011,
        '633020003-4',
        'B04',
        TO_DATE('24/02/2022', 'DD/MM/YYYY'),
        TO_DATE('25/02/2022', 'DD/MM/YYYY')
    );

INSERT INTO
    BORROW (borrowid, stdid, bookid, borrowdate, returndate)
VALUES
    (
        0012,
        '633020003-4',
        'B05',
        TO_DATE('24/02/2022', 'DD/MM/YYYY'),
        TO_DATE('25/02/2022', 'DD/MM/YYYY')
    );

-- STD NUMBER 4
INSERT INTO
    BORROW (borrowid, stdid, bookid, borrowdate, returndate)
VALUES
    (
        0013,
        '633020005-6',
        'B04',
        TO_DATE('24/02/2022', 'DD/MM/YYYY'),
        TO_DATE('25/02/2022', 'DD/MM/YYYY')
    );

INSERT INTO
    BORROW (borrowid, stdid, bookid, borrowdate, returndate)
VALUES
    (
        0014,
        '633020005-6',
        'B05',
        TO_DATE('24/02/2022', 'DD/MM/YYYY'),
        TO_DATE('25/02/2022', 'DD/MM/YYYY')
    );

-- Problem
-- Sub Query
SELECT
    *
FROM
    book
where
    bookprice = (
        SELECT
            MAX(bookprice)
        FROM
            book
    );

-- normal
SELECT
    MAX(bookprice) AS HightPrice
FROM
    book;

-- if bookprice > 100
SELECT
    *
FROM
    book
WHERE
    bookprice > 100;

-- SUM book price
SELECT
    SUM(bookprice) AS SUMBOOKPRICE JA
FROM
    BOOK;

-- 
SELECT
    bookid,
    bookname,
    bookamount,
    bookprice,
    bookprice * bookamount AS TOTALPRICE
FROM
    book;

SELECT
    student.stdid,
    (student.stdfname| |student.stdlname) AS Name,
    book.bookname,
    borrow.borrowdate,
    borrow.returndate
FROM
    borrow JOIN book ON borrow.bookid = book.bookid JOIN student ON borrow.stdid = student.stdid;

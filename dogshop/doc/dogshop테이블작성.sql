-- system 계정으로 실행 : 권한 설정 --
CREATE USER dogshop IDENTIFIED BY 12345 ACCOUNT UNLOCK;
GRANT CONNECT,RESOURCE,UNLIMITED TABLESPACE TO dogshop;
ALTER USER dogshop DEFAULT TABLESPACE USERS;



-- 등급 --
CREATE TABLE grade(
    gno NUMBER(1)
        CONSTRAINT GRD_NO_PK PRIMARY KEY,
    gname VARCHAR2(10 CHAR)
        CONSTRAINT GRD_NAME_UK UNIQUE
        CONSTRAINT GRD_NAME_NN NOT NULL,
    per NUMBER(2)
        CONSTRAINT GRD_PER_NN NOT NULL
);


-- 회원테이블 --
CREATE TABLE member(
    mno NUMBER(5)
        CONSTRAINT MEMB_NO_PK PRIMARY KEY,
    id VARCHAR2(10 CHAR)
        CONSTRAINT MEMB_ID_UK UNIQUE
        CONSTRAINT MEMB_ID_NN NOT NULL,
    pw VARCHAR2(20 CHAR)
        CONSTRAINT MEMB_PW_NN NOT NULL,
    name VARCHAR2(5 CHAR)
        CONSTRAINT MEMB_NAME_NN NOT NULL,
    mail VARCHAR2(30 CHAR)
        CONSTRAINT MEMB_MAIL_UK UNIQUE
        CONSTRAINT MEMB_MAIL_NN NOT NULL,
    tel VARCHAR2(11 CHAR)
        CONSTRAINT MEMB_TEL_UK UNIQUE
        CONSTRAINT MEMB_TEL_NN NOT NULL,
    birth DATE
        CONSTRAINT MEMB_BIRTH_NN NOT NULL,
    jdate DATE DEFAULT sysdate
        CONSTRAINT MEMB_DATE_NN NOT NULL,
    isshow CHAR(1) DEFAULT 'Y'
        CONSTRAINT MEMB_SHOW_CK CHECK (isshow IN('Y', 'A','R', 'N'))
        CONSTRAINT MEMB_SHOW_NN NOT NULL,
    gno number(1)
        CONSTRAINT MEMB_GNO_FK REFERENCES grade(gno)
        CONSTRAINT MEMB_GNO_NN NOT NULL
);


-- 카테고리 --
CREATE TABLE category(
    cno NUMBER(5)
        CONSTRAINT CATE_NO_PK PRIMARY KEY,
    name VARCHAR2(15 CHAR)
        CONSTRAINT CATE_NAME_NN NOT NULL,
    upcno NUMBER(5)
);


-- 제품 --
CREATE TABLE product(
    pno NUMBER(5)
        CONSTRAINT PD_NO_PK PRIMARY KEY,
    title VARCHAR2(15 CHAR)
        CONSTRAINT PD_TITLE_NN NOT NULL,
    detail VARCHAR2(500 CHAR)
        CONSTRAINT PD_DET_NN NOT NULL,
    cno NUMBER(5)
        CONSTRAINT PD_CNO_FK REFERENCES category(cno)
        CONSTRAINT PD_CNO_NN NOT NULL,
    price NUMBER(8)
        CONSTRAINT PD_PRI_NN NOT NULL,
    num NUMBER(6)
        CONSTRAINT PD_NUM_NN NOT NULL,
    mno NUMBER(5)
        CONSTRAINT PD_MNO_FK REFERENCES MEMBER(mno)
        CONSTRAINT PD_MNO_NN NOT NULL,
    wdate DATE DEFAULT sysdate
        CONSTRAINT PD_WDATE_NN NOT NULL,
    click NUMBER(6)
        CONSTRAINT PD_CL_NN NOT NULL,
    isshow CHAR(1) DEFAULT 'Y'
        CONSTRAINT PD_SHOW_CK CHECK (isshow IN('Y','N'))
        CONSTRAINT PD_SHOW_NN NOT NULL
);



-- 리뷰 --
CREATE TABLE review(
    rno NUMBER(6)
        CONSTRAINT REV_NO_PK PRIMARY KEY,
    mno NUMBER(5)
        CONSTRAINT REV_MNO_FK REFERENCES MEMBER(mno)
        CONSTRAINT REV_MNO_NN NOT NULL,
    title VARCHAR2(20 CHAR)
        CONSTRAINT REV_TITLE_NN NOT NULL,
    detail VARCHAR2(500 CHAR)
        CONSTRAINT REV_DET_NN NOT NULL,
    pno NUMBER(5)
        CONSTRAINT REV_PNO_FK REFERENCES product(pno)
        CONSTRAINT REV_PNO_NN NOT NULL,
    wdate DATE DEFAULT sysdate
        CONSTRAINT REV_WDATE_NN NOT NULL,
    grade NUMBER(3)
        CONSTRAINT REV_GR_NN NOT NULL,
    isshow CHAR(1) DEFAULT 'Y'
        CONSTRAINT REV_SHOW_CK CHECK (isshow IN('Y','N'))
        CONSTRAINT REV_SHOW_NN NOT NULL
);

-- 파일 게시판--
CREATE TABLE imgfile(
    fno NUMBER(6)
        CONSTRAINT FILE_NO_PK PRIMARY KEY,
    mno NUMBER(5)
        CONSTRAINT FILE_MNO_FK REFERENCES member(mno)
        CONSTRAINT FILE_MNO_NN NOT NULL,
    oriname VARCHAR2(30 CHAR)
        CONSTRAINT FILE_ONAME_NN NOT NULL,
    savename VARCHAR2(40 CHAR)
        CONSTRAINT FILE_SNAME_UK UNIQUE
        CONSTRAINT FILE_SNAME_NN NOT NULL,
    len NUMBER(10)
        CONSTRAINT FILE_LEN_NN NOT NULL,
    fdate DATE DEFAULT sysdate
        CONSTRAINT FILE_DATE_NN NOT NULL,
    isshow CHAR(1) DEFAULT 'Y'
        CONSTRAINT FILE_SHOW_CK CHECK (isshow IN('Y','N'))
        CONSTRAINT FILE_SHOW_NN NOT NULL,
    whereis CHAR(1)
        CONSTRAINT FILE_WHERE_CK CHECK (whereis IN('M','P','R'))
        CONSTRAINT FILE_WHERE_NN NOT NULL,
    WHERENO CHAR(6)
        CONSTRAINT FILE_WHENO_NN NOT NULL
);


-- 주문서 --
CREATE TABLE orderboard(
    ono NUMBER(6)
        CONSTRAINT ORD_NO_PK PRIMARY KEY,
    mno NUMBER(5)
        CONSTRAINT ORD_MNO_FK REFERENCES member(mno)
        CONSTRAINT ORD_MNO_NN NOT NULL,
    pno NUMBER(5)
        CONSTRAINT ORD_PNO_FK REFERENCES product(pno)
        CONSTRAINT ORD_PNO_NN NOT NULL,    
    num NUMBER(6)
        CONSTRAINT ORD_NUM_NN NOT NULL,
    price NUMBER(10)
        CONSTRAINT ORD_PRI_NN NOT NULL,   
    odate DATE DEFAULT sysdate
        CONSTRAINT ORD_ODATE_NN NOT NULL,    
    isbuy CHAR(1) DEFAULT 'Y'
        CONSTRAINT ORD_BUY_CK CHECK (isbuy IN('Y','N'))
        CONSTRAINT ORD_BUY_NN NOT NULL
);


-- 장바구니 --
CREATE TABLE cart(
    cno NUMBER(6)
        CONSTRAINT CART_NO_PK PRIMARY KEY,
    mno NUMBER(5)
        CONSTRAINT CART_MNO_FK REFERENCES member(mno)
        CONSTRAINT CART_MNO_NN NOT NULL,
    pno NUMBER(5)
        CONSTRAINT CART_PNO_FK REFERENCES product(pno)
        CONSTRAINT CART_PNO_NN NOT NULL,    
    num NUMBER(6)
        CONSTRAINT CART_NUM_NN NOT NULL,
    isshow CHAR(1) DEFAULT 'Y'
        CONSTRAINT CART_BUY_CK CHECK (isshow IN('Y','N'))
        CONSTRAINT CART_BUY_NN NOT NULL
);








-- ���� ������ : ��� --

INSERT INTO
    grade(gno, gname, per)
VALUES(
    1, 'vip', 20
);

INSERT INTO
    grade(gno, gname, per)
VALUES(
    2, 'gold', 15
);

INSERT INTO
    grade(gno, gname, per)
VALUES(
    3, 'silver', 10 
);

INSERT INTO
    grade(gno, gname, per)
VALUES(
    4, 'black', 5
);

INSERT INTO
    grade(gno, gname, per)
VALUES(
    5, 'white', 3 
);

-- ���� ������ : ȸ�����̺� --
  

INSERT INTO
    member(mno, id, pw, name, mail, tel, birth, gno)
VALUES(
    10001, 'ksoy', '12345',
    '��ҿ�', 'ksoy@naver.com', '01012345678',   TO_DATE('19960418', 'YYYYMMDD'), 5
);


INSERT INTO
    member(mno, id, pw, name, mail, tel, birth, gno)
VALUES(
    10002, 'taehee', '12345',
    '������', 'taehee@naver.com', '01023456789',   TO_DATE('19900725', 'YYYYMMDD'), 5
);

INSERT INTO
    member(mno, id, pw, name, mail, tel, birth, gno)
VALUES(
    10003, 'sinh', '12345',
    '�ѽ���', 'sinh@naver.com', '01034567891',   TO_DATE('19870712', 'YYYYMMDD'), 5
);

INSERT INTO
    member(mno, id, pw, name, mail, tel, birth, gno)
VALUES(
    10004, 'ming', '12345',
    '�ֹ���', 'ming@naver.com', '01045678912',   TO_DATE('19990502', 'YYYYMMDD'), 5
);

INSERT INTO
    member(mno, id, pw, name, mail, tel, birth, gno)
VALUES(
    10005, 'hyes', '12345',
    '������', 'hyes@naver.com', '01056789123',   TO_DATE('20001123', 'YYYYMMDD'), 5
);

-- ���� ������ : ī�װ� --

INSERT INTO
    category(cno, name)
VALUES(
    10001, '����'
);   

INSERT INTO
    category(cno, name, upcno)
VALUES(
    10002, '���', 10001
);   

INSERT INTO
    category(cno, name, upcno)
VALUES(
    10003, '������', 10001
);   

INSERT INTO
    category(cno, name, upcno)
VALUES(
    10004, '����', 10001
);   

INSERT INTO
    category(cno, name)
VALUES(
    10005, '�̿�'
);   

INSERT INTO
    category(cno, name, upcno)
VALUES(
    10006, '��Ǫ', 10005
);   

INSERT INTO
    category(cno, name, upcno)
VALUES(
    10007, '�귯��', 10005
);   

INSERT INTO
    category(cno, name)
VALUES(
    10008, '�Ƿ�'
);   

INSERT INTO
    category(cno, name, upcno)
VALUES(
    10009, '���ǽ�', 10008
);   

INSERT INTO
    category(cno, name, upcno)
VALUES(
    10010, '����', 10008
); 


INSERT INTO
    category(cno, name)
VALUES(
    10011, '��Ÿ'
);   

INSERT INTO
    category(cno, name, upcno)
VALUES(
    10012, '�躯�е�', 10011
);   


INSERT INTO
    category(cno, name, upcno)
VALUES(
    10013, '�Ͽ콺', 10011
);   

INSERT INTO
    category(cno, name, upcno)
VALUES(
    10014, '�峭��', 10011
);   
 
 
-- ���� ������ : ��ǰ -- 

INSERT INTO
    product(pno, title, detail, cno, price, num, mno, wdate, click)
VALUES(
    10001, '�ξ�ĳ�� �̴� �ε���', '���Ʈ 3Kg', 10002, 33000, 10, 10001 , TO_DATE('20220821', 'YYYYMMDD'), 1
); 
 
INSERT INTO
    product(pno, title, detail, cno, price, num, mno, wdate, click)
VALUES(
    10002, '�ξ�ĳ�� �̴� ��Ÿ��', ' ���� �� ���̺� 1Kg', 10002, 12000, 10, 10001 , TO_DATE('20220821', 'YYYYMMDD'), 5
); 

INSERT INTO
    product(pno, title, detail, cno, price, num, mno, wdate, click)
VALUES(
    10003, '�����ھ� ����� ECO', '�����׸��� 6kg', 10002, 58000, 15, 10001 , TO_DATE('20220821', 'YYYYMMDD'), 20
); 

INSERT INTO
    product(pno, title, detail, cno, price, num, mno, wdate, click)
VALUES(
    10004, '���ڼ�', '���� ������ 340g', 10003, 34000, 20, 10001 , TO_DATE('20220822', 'YYYYMMDD'), 25
); 

INSERT INTO
    product(pno, title, detail, cno, price, num, mno, wdate, click)
VALUES(
    10005, 'Į�õ����� ��Ʈ���÷�����', '���� ������ Į�� ���� 30��', 10003, 17000, 10, 10001 , TO_DATE('20220822', 'YYYYMMDD'), 10
); 

INSERT INTO
    product(pno, title, detail, cno, price, num, mno, wdate, click)
VALUES(
    10006, 'in ������', '���� �Ǻ� �Ǹ� 340g', 10003, 20000, 10, 10001 , TO_DATE('20220822', 'YYYYMMDD'), 30
);

INSERT INTO
    product(pno, title, detail, cno, price, num, mno, wdate, click)
VALUES(
    10007, '���˽� ��Ƽ�� ��Ż��', '�����߿� M 584g 46P', 10004, 29000, 15, 10001 , TO_DATE('20220822', 'YYYYMMDD'), 15
);

INSERT INTO
    product(pno, title, detail, cno, price, num, mno, wdate, click)
VALUES(
    10008, '�����̿� ����', '���ƽ 240g 24p', 10004, 5900, 35, 10001 , TO_DATE('20220822', 'YYYYMMDD'), 8
);

INSERT INTO
    product(pno, title, detail, cno, price, num, mno, wdate, click)
VALUES(
    10009, '����ó�� ��������¡', '�����ɾ�,�о�Ŵ ���� ��Ǫ 300ml', 10006, 22000, 20, 10001 , TO_DATE('20220822', 'YYYYMMDD'), 23
);

INSERT INTO
    product(pno, title, detail, cno, price, num, mno, wdate, click)
VALUES(
    10010, '������ ��Ǫ', '���˷��� �������� �Ǻκ��� 475ml', 10006, 13900, 15, 10001 , TO_DATE('20220822', 'YYYYMMDD'), 15
);

INSERT INTO
    product(pno, title, detail, cno, price, num, mno, wdate, click)
VALUES(
    10011, '�꿡���� �Կ���', '���� �Ǻ� ���� ���� ��������', 10006, 6000, 30, 10001 , TO_DATE('20220823', 'YYYYMMDD'), 30
);

INSERT INTO
    product(pno, title, detail, cno, price, num, mno, wdate, click)
VALUES(
    10012, '�ϰ� �� ���� ������', '�޺� �귯�� ��', 10007, 5800, 10, 10001 , TO_DATE('20220823', 'YYYYMMDD'), 25
);

INSERT INTO
    product(pno, title, detail, cno, price, num, mno, wdate, click)
VALUES(
    10013, '�ʱۿ���', '�� �귯��', 10007, 22000, 15, 10001 , TO_DATE('20220823', 'YYYYMMDD'), 10
);
INSERT INTO
    product(pno, title, detail, cno, price, num, mno, wdate, click)
VALUES(
    10014, '�佺�� ���� �귯��', '���������� �а��� ��', 10007, 18000, 20, 10001 , TO_DATE('20220823', 'YYYYMMDD'), 30
);

INSERT INTO
    product(pno, title, detail, cno, price, num, mno, wdate, click)
VALUES(
    10015, 'üũ������ ���ǽ�', 'ũ��', 10009, 30000, 5, 10001 , TO_DATE('20220823', 'YYYYMMDD'), 50
);

INSERT INTO
    product(pno, title, detail, cno, price, num, mno, wdate, click)
VALUES(
    10016, '�׿��� �ϳ׽�', '������� ������', 10009, 15000, 15, 10001 , TO_DATE('20220823', 'YYYYMMDD'), 30
);

INSERT INTO
    product(pno, title, detail, cno, price, num, mno, wdate, click)
VALUES(
    10017, '�������Ͽ콺', '���긮���� �Ͽ콺 2.0', 10013, 70000, 3, 10001 , TO_DATE('20220823', 'YYYYMMDD'), 100
);

-- ���� ������ : ���� -- 

INSERT INTO
    review(rno, mno, title, detail, pno, wdate, grade)
VALUES(
    100001, 10002, '�������� �߸Դ� ���', '�Ը� ��ٷο ����̰� �� �Խ��ϴ�!',10001 , TO_DATE('20220824', 'YYYYMMDD'), 100
);

INSERT INTO
    review(rno, mno, title, detail, pno, wdate, grade)
VALUES(
    100002, 10003, '��ȣ�� ���ƿ�!', 'Į�θ��� ���� �����ϴ�.',10001 , TO_DATE('20220824', 'YYYYMMDD'), 90
);

INSERT INTO
    review(rno, mno, title, detail, pno, wdate, grade)
VALUES(
    100003, 10004, '���� ������', '������ ������ �ʾƿ�', 10001 , TO_DATE('20220827', 'YYYYMMDD'), 80
);

INSERT INTO
    review(rno, mno, title, detail, pno, wdate, grade)
VALUES(
    100004, 10005, '�籸�� �Ϸ�', '������ �̿����Դϴ�.',10001 , TO_DATE('20220828', 'YYYYMMDD'), 100
);

-- ���� ������ : �̹��� ���� --

INSERT INTO
    imgfile(fno, mno, oriname, savename, len, fdate, whereis, whereno)
VALUES(
    100001, 10001,'�ξ�ĳ�� ���Ʈ 3Kg.jpg', '�ξ�ĳ�� ���Ʈ 3Kg.jpg', 31588, TO_DATE('20220821', 'YYYYMMDD'), 'P', 10001
);

INSERT INTO
    imgfile(fno, mno, oriname, savename, len, fdate, whereis, whereno)
VALUES(
    100002, 10001,'�ξ�ĳ�� �̴� ��Ÿ�� 1Kg.jpg', '�ξ�ĳ�� �̴� ��Ÿ�� 1Kg.jpg', 33050, TO_DATE('20220821', 'YYYYMMDD'), 'P', 10002
);

INSERT INTO
    imgfile(fno, mno, oriname, savename, len, fdate, whereis, whereno)
VALUES(
    100003, 10001,'�����ھ� ����� 6kg.jpg', '�����ھ� ����� 6kg.jpg', 35177, TO_DATE('20220821', 'YYYYMMDD'), 'P', 10003
);

INSERT INTO
    imgfile(fno, mno, oriname, savename, len, fdate, whereis, whereno)
VALUES(
    100004, 10001,'���ڼ� ���� ������ 340g.jpg', '���ڼ� ���� ������ 340g.jpg', 39001, TO_DATE('20220822', 'YYYYMMDD'), 'P', 10004
);

INSERT INTO
    imgfile(fno, mno, oriname, savename, len, fdate, whereis, whereno)
VALUES(
    100005, 10001,'���� Į�õ����� ���� ������.jpg', '���� Į�õ����� ���� ������.jpg', 37030, TO_DATE('20220822', 'YYYYMMDD'), 'P', 10005
);

INSERT INTO
    imgfile(fno, mno, oriname, savename, len, fdate, whereis, whereno)
VALUES(
    100006, 10001,'�� IN ������ 340g.jpg', '�� IN ������ 340g.jpg', 32814, TO_DATE('20220822', 'YYYYMMDD'), 'P', 10006
);

INSERT INTO
    imgfile(fno, mno, oriname, savename, len, fdate, whereis, whereno)
VALUES(
    100007, 10001,'���˽� ��Ƽ�� 46P.jpg', '���˽� ��Ƽ�� 46P.jpg', 52505, TO_DATE('20220822', 'YYYYMMDD'), 'P', 10007
);

INSERT INTO
    imgfile(fno, mno, oriname, savename, len, fdate, whereis, whereno)
VALUES(
    100008, 10001,'�����̿� ���� ���ƽ 24p.jpg', '�����̿� ���� ���ƽ 24p.jpg', 32310, TO_DATE('20220822', 'YYYYMMDD'), 'P', 10008
);

INSERT INTO
    imgfile(fno, mno, oriname, savename, len, fdate, whereis, whereno)
VALUES(
    100009, 10001,'����ó�� ��������¡ ��Ǫ 300ml).jpg', '����ó�� ��������¡ ��Ǫ 300ml).jpg', 45577, TO_DATE('20220822', 'YYYYMMDD'), 'P', 10009
);

INSERT INTO
    imgfile(fno, mno, oriname, savename, len, fdate, whereis, whereno)
VALUES(
    100010, 10001,'������ ������ ��Ǫ 475ml.jpg', '������ ������ ��Ǫ 475ml.jpg', 19204, TO_DATE('20220822', 'YYYYMMDD'), 'P', 10010
);

INSERT INTO
    imgfile(fno, mno, oriname, savename, len, fdate, whereis, whereno)
VALUES(
    100011, 10001,'�꿡���� �Կ���.jpg', '�꿡���� �Կ���.jpg', 46206, TO_DATE('20220823', 'YYYYMMDD'), 'P', 10011
);

INSERT INTO
    imgfile(fno, mno, oriname, savename, len, fdate, whereis, whereno)
VALUES(
    100012, 10001,'�ϰ� �� ���� ������ �귯�� ��.jpg', '�ϰ� �� ���� ������ �귯�� ��.jpg', 26642, TO_DATE('20220823', 'YYYYMMDD'), 'P', 10012
);

INSERT INTO
    imgfile(fno, mno, oriname, savename, len, fdate, whereis, whereno)
VALUES(
    100013, 10001,'�ʱۿ��� �� �귯��.jpg', '�ʱۿ��� �� �귯��.jpg', 46728, TO_DATE('20220823', 'YYYYMMDD'), 'P', 10013
);

INSERT INTO
    imgfile(fno, mno, oriname, savename, len, fdate, whereis, whereno)
VALUES(
    100014, 10001,'�佺�� �귯�� .jpg', '�佺�� �귯�� .jpg', 42916, TO_DATE('20220823', 'YYYYMMDD'), 'P', 10014
);

INSERT INTO
    imgfile(fno, mno, oriname, savename, len, fdate, whereis, whereno)
VALUES(
    100015, 10001,'üũ������ ���ǽ�.jpg', 'üũ������ ���ǽ�.jpg', 34312, TO_DATE('20220823', 'YYYYMMDD'), 'P', 10015
);

INSERT INTO
    imgfile(fno, mno, oriname, savename, len, fdate, whereis, whereno)
VALUES(
    100016, 10001,'�׿��� �ϳ׽�.jpg', '�׿��� �ϳ׽�.jpg', 20027, TO_DATE('20220823', 'YYYYMMDD'), 'P', 10016
);

INSERT INTO
    imgfile(fno, mno, oriname, savename, len, fdate, whereis, whereno)
VALUES(
    100017, 10001,'�������Ͽ콺.jpg', '�������Ͽ콺.jpg', 32808, TO_DATE('20220823', 'YYYYMMDD'), 'P', 10017
);

-- ���� ������ : ��ٱ��� --

INSERT INTO
    cart(cno, mno, pno, num)
VALUES(
   100001, 10002, 10002, 1
);

INSERT INTO
    cart(cno, mno, pno, num)
VALUES(
   100002, 10002, 10008, 2
);

INSERT INTO
    cart(cno, mno, pno, num)
VALUES(
   100003, 10002, 10013, 1
);

INSERT INTO
    cart(cno, mno, pno, num)
VALUES(
   100004, 10002, 10017, 1
);

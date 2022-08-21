
-- 예시 데이터 : 등급 --

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

-- 예시 데이터 : 회원테이블 --
  

INSERT INTO
    member(mno, id, pw, name, mail, tel, birth, gno)
VALUES(
    10001, 'ksoy', '12345',
    '김소연', 'ksoy@naver.com', '01012345678',   TO_DATE('19960418', 'YYYYMMDD'), 5
);


INSERT INTO
    member(mno, id, pw, name, mail, tel, birth, gno)
VALUES(
    10002, 'taehee', '12345',
    '송태희', 'taehee@naver.com', '01023456789',   TO_DATE('19900725', 'YYYYMMDD'), 5
);

INSERT INTO
    member(mno, id, pw, name, mail, tel, birth, gno)
VALUES(
    10003, 'sinh', '12345',
    '한신혜', 'sinh@naver.com', '01034567891',   TO_DATE('19870712', 'YYYYMMDD'), 5
);

INSERT INTO
    member(mno, id, pw, name, mail, tel, birth, gno)
VALUES(
    10004, 'ming', '12345',
    '최민지', 'ming@naver.com', '01045678912',   TO_DATE('19990502', 'YYYYMMDD'), 5
);

INSERT INTO
    member(mno, id, pw, name, mail, tel, birth, gno)
VALUES(
    10005, 'hyes', '12345',
    '한혜성', 'hyes@naver.com', '01056789123',   TO_DATE('20001123', 'YYYYMMDD'), 5
);

-- 예시 데이터 : 카테고리 --

INSERT INTO
    category(cno, name)
VALUES(
    10001, '음식'
);   

INSERT INTO
    category(cno, name, upcno)
VALUES(
    10002, '사료', 10001
);   

INSERT INTO
    category(cno, name, upcno)
VALUES(
    10003, '영양제', 10001
);   

INSERT INTO
    category(cno, name, upcno)
VALUES(
    10004, '간식', 10001
);   

INSERT INTO
    category(cno, name)
VALUES(
    10005, '미용'
);   

INSERT INTO
    category(cno, name, upcno)
VALUES(
    10006, '샴푸', 10005
);   

INSERT INTO
    category(cno, name, upcno)
VALUES(
    10007, '브러쉬', 10005
);   

INSERT INTO
    category(cno, name)
VALUES(
    10008, '의류'
);   

INSERT INTO
    category(cno, name, upcno)
VALUES(
    10009, '원피스', 10008
);   

INSERT INTO
    category(cno, name, upcno)
VALUES(
    10010, '목줄', 10008
); 


INSERT INTO
    category(cno, name)
VALUES(
    10011, '기타'
);   

INSERT INTO
    category(cno, name, upcno)
VALUES(
    10012, '배변패드', 10011
);   


INSERT INTO
    category(cno, name, upcno)
VALUES(
    10013, '하우스', 10011
);   

INSERT INTO
    category(cno, name, upcno)
VALUES(
    10014, '장난감', 10011
);   
 
 
-- 예시 데이터 : 제품 -- 

INSERT INTO
    product(pno, title, detail, cno, price, num, mno, wdate, click)
VALUES(
    10001, '로얄캐닌 미니 인도어', '어덜트 3Kg', 10002, 33000, 10, 10001 , TO_DATE('20220821', 'YYYYMMDD'), 1
); 
 
INSERT INTO
    product(pno, title, detail, cno, price, num, mno, wdate, click)
VALUES(
    10002, '로얄캐닌 미니 스타터', ' 마더 앤 베이비독 1Kg', 10002, 12000, 10, 10001 , TO_DATE('20220821', 'YYYYMMDD'), 5
); 

INSERT INTO
    product(pno, title, detail, cno, price, num, mno, wdate, click)
VALUES(
    10003, '네츄럴코어 유기농 ECO', '베지테리언 6kg', 10002, 58000, 15, 10001 , TO_DATE('20220821', 'YYYYMMDD'), 20
); 

INSERT INTO
    product(pno, title, detail, cno, price, num, mno, wdate, click)
VALUES(
    10004, '인핸서', '관절 영양제 340g', 10003, 34000, 20, 10001 , TO_DATE('20220822', 'YYYYMMDD'), 25
); 

INSERT INTO
    product(pno, title, detail, cno, price, num, mno, wdate, click)
VALUES(
    10005, '칼시데리스 뉴트리플러스겔', '영양 보충제 칼슘 공급 30정', 10003, 17000, 10, 10001 , TO_DATE('20220822', 'YYYYMMDD'), 10
); 

INSERT INTO
    product(pno, title, detail, cno, price, num, mno, wdate, click)
VALUES(
    10006, 'in 영양제', '종합 피부 피모 340g', 10003, 20000, 10, 10001 , TO_DATE('20220822', 'YYYYMMDD'), 30
);

INSERT INTO
    product(pno, title, detail, cno, price, num, mno, wdate, click)
VALUES(
    10007, '포켄스 덴티페어리 덴탈껌', '중형견용 M 584g 46P', 10004, 29000, 15, 10001 , TO_DATE('20220822', 'YYYYMMDD'), 15
);

INSERT INTO
    product(pno, title, detail, cno, price, num, mno, wdate, click)
VALUES(
    10008, '프리미요 딩고껌', '연어스틱 240g 24p', 10004, 5900, 35, 10001 , TO_DATE('20220822', 'YYYYMMDD'), 8
);

INSERT INTO
    product(pno, title, detail, cno, price, num, mno, wdate, click)
VALUES(
    10009, '네이처블 볼류마이징', '볼륨케어,털엉킴 관리 샴푸 300ml', 10006, 22000, 20, 10001 , TO_DATE('20220822', 'YYYYMMDD'), 23
);

INSERT INTO
    product(pno, title, detail, cno, price, num, mno, wdate, click)
VALUES(
    10010, '버츠비 샴푸', '저알러지 습진예방 피부보습 475ml', 10006, 13900, 15, 10001 , TO_DATE('20220822', 'YYYYMMDD'), 15
);

INSERT INTO
    product(pno, title, detail, cno, price, num, mno, wdate, click)
VALUES(
    10011, '펫에스테 입욕제', '보습 피부 모질 습진 각질제거', 10006, 6000, 30, 10001 , TO_DATE('20220823', 'YYYYMMDD'), 30
);

INSERT INTO
    product(pno, title, detail, cno, price, num, mno, wdate, click)
VALUES(
    10012, '하겐 르 샬롱 에센셜', '콤보 브러시 소', 10007, 5800, 10, 10001 , TO_DATE('20220823', 'YYYYMMDD'), 25
);

INSERT INTO
    product(pno, title, detail, cno, price, num, mno, wdate, click)
VALUES(
    10013, '탱글엔젤', '펫 브러쉬', 10007, 22000, 15, 10001 , TO_DATE('20220823', 'YYYYMMDD'), 10
);
INSERT INTO
    product(pno, title, detail, cno, price, num, mno, wdate, click)
VALUES(
    10014, '페스룸 힐링 브러시', '죽은털제거 털관리 빗', 10007, 18000, 20, 10001 , TO_DATE('20220823', 'YYYYMMDD'), 30
);

INSERT INTO
    product(pno, title, detail, cno, price, num, mno, wdate, click)
VALUES(
    10015, '체크데이지 원피스', '크롭', 10009, 30000, 5, 10001 , TO_DATE('20220823', 'YYYYMMDD'), 50
);

INSERT INTO
    product(pno, title, detail, cno, price, num, mno, wdate, click)
VALUES(
    10016, '네오핏 하네스', '에어쿠션 가슴줄', 10009, 15000, 15, 10001 , TO_DATE('20220823', 'YYYYMMDD'), 30
);

INSERT INTO
    product(pno, title, detail, cno, price, num, mno, wdate, click)
VALUES(
    10017, '초코펫하우스', '에브리데이 하우스 2.0', 10013, 70000, 3, 10001 , TO_DATE('20220823', 'YYYYMMDD'), 100
);

-- 예시 데이터 : 리뷰 -- 

INSERT INTO
    review(rno, mno, title, detail, pno, wdate, grade)
VALUES(
    100001, 10002, '강아지가 잘먹는 사료', '입맛 까다로운데 사랑이가 잘 먹습니다!',10001 , TO_DATE('20220824', 'YYYYMMDD'), 100
);

INSERT INTO
    review(rno, mno, title, detail, pno, wdate, grade)
VALUES(
    100002, 10003, '기호성 좋아요!', '칼로리도 낮고 좋습니다.',10001 , TO_DATE('20220824', 'YYYYMMDD'), 90
);

INSERT INTO
    review(rno, mno, title, detail, pno, wdate, grade)
VALUES(
    100003, 10004, '작은 사이즈', '냄새도 심하지 않아요', 10001 , TO_DATE('20220827', 'YYYYMMDD'), 80
);

INSERT INTO
    review(rno, mno, title, detail, pno, wdate, grade)
VALUES(
    100004, 10005, '재구매 완료', '꾸준히 이용중입니다.',10001 , TO_DATE('20220828', 'YYYYMMDD'), 100
);

-- 예시 데이터 : 이미지 파일 --

INSERT INTO
    imgfile(fno, mno, oriname, savename, len, fdate, whereis, whereno)
VALUES(
    100001, 10001,'로얄캐닌 어덜트 3Kg.jpg', '로얄캐닌 어덜트 3Kg.jpg', 31588, TO_DATE('20220821', 'YYYYMMDD'), 'P', 10001
);

INSERT INTO
    imgfile(fno, mno, oriname, savename, len, fdate, whereis, whereno)
VALUES(
    100002, 10001,'로얄캐닌 미니 스타터 1Kg.jpg', '로얄캐닌 미니 스타터 1Kg.jpg', 33050, TO_DATE('20220821', 'YYYYMMDD'), 'P', 10002
);

INSERT INTO
    imgfile(fno, mno, oriname, savename, len, fdate, whereis, whereno)
VALUES(
    100003, 10001,'네츄럴코어 유기농 6kg.jpg', '네츄럴코어 유기농 6kg.jpg', 35177, TO_DATE('20220821', 'YYYYMMDD'), 'P', 10003
);

INSERT INTO
    imgfile(fno, mno, oriname, savename, len, fdate, whereis, whereno)
VALUES(
    100004, 10001,'인핸서 관절 영양제 340g.jpg', '인핸서 관절 영양제 340g.jpg', 39001, TO_DATE('20220822', 'YYYYMMDD'), 'P', 10004
);

INSERT INTO
    imgfile(fno, mno, oriname, savename, len, fdate, whereis, whereno)
VALUES(
    100005, 10001,'버박 칼시데리스 영양 보충제.jpg', '버박 칼시데리스 영양 보충제.jpg', 37030, TO_DATE('20220822', 'YYYYMMDD'), 'P', 10005
);

INSERT INTO
    imgfile(fno, mno, oriname, savename, len, fdate, whereis, whereno)
VALUES(
    100006, 10001,'인 IN 영양제 340g.jpg', '인 IN 영양제 340g.jpg', 32814, TO_DATE('20220822', 'YYYYMMDD'), 'P', 10006
);

INSERT INTO
    imgfile(fno, mno, oriname, savename, len, fdate, whereis, whereno)
VALUES(
    100007, 10001,'포켄스 덴티페어리 46P.jpg', '포켄스 덴티페어리 46P.jpg', 52505, TO_DATE('20220822', 'YYYYMMDD'), 'P', 10007
);

INSERT INTO
    imgfile(fno, mno, oriname, savename, len, fdate, whereis, whereno)
VALUES(
    100008, 10001,'프리미요 딩고껌 연어스틱 24p.jpg', '프리미요 딩고껌 연어스틱 24p.jpg', 32310, TO_DATE('20220822', 'YYYYMMDD'), 'P', 10008
);

INSERT INTO
    imgfile(fno, mno, oriname, savename, len, fdate, whereis, whereno)
VALUES(
    100009, 10001,'네이처블 볼류마이징 샴푸 300ml).jpg', '네이처블 볼류마이징 샴푸 300ml).jpg', 45577, TO_DATE('20220822', 'YYYYMMDD'), 'P', 10009
);

INSERT INTO
    imgfile(fno, mno, oriname, savename, len, fdate, whereis, whereno)
VALUES(
    100010, 10001,'버츠비 강아지 샴푸 475ml.jpg', '버츠비 강아지 샴푸 475ml.jpg', 19204, TO_DATE('20220822', 'YYYYMMDD'), 'P', 10010
);

INSERT INTO
    imgfile(fno, mno, oriname, savename, len, fdate, whereis, whereno)
VALUES(
    100011, 10001,'펫에스테 입욕제.jpg', '펫에스테 입욕제.jpg', 46206, TO_DATE('20220823', 'YYYYMMDD'), 'P', 10011
);

INSERT INTO
    imgfile(fno, mno, oriname, savename, len, fdate, whereis, whereno)
VALUES(
    100012, 10001,'하겐 르 샬롱 에센셜 브러시 소.jpg', '하겐 르 샬롱 에센셜 브러시 소.jpg', 26642, TO_DATE('20220823', 'YYYYMMDD'), 'P', 10012
);

INSERT INTO
    imgfile(fno, mno, oriname, savename, len, fdate, whereis, whereno)
VALUES(
    100013, 10001,'탱글엔젤 펫 브러쉬.jpg', '탱글엔젤 펫 브러쉬.jpg', 46728, TO_DATE('20220823', 'YYYYMMDD'), 'P', 10013
);

INSERT INTO
    imgfile(fno, mno, oriname, savename, len, fdate, whereis, whereno)
VALUES(
    100014, 10001,'페스룸 브러시 .jpg', '페스룸 브러시 .jpg', 42916, TO_DATE('20220823', 'YYYYMMDD'), 'P', 10014
);

INSERT INTO
    imgfile(fno, mno, oriname, savename, len, fdate, whereis, whereno)
VALUES(
    100015, 10001,'체크데이지 원피스.jpg', '체크데이지 원피스.jpg', 34312, TO_DATE('20220823', 'YYYYMMDD'), 'P', 10015
);

INSERT INTO
    imgfile(fno, mno, oriname, savename, len, fdate, whereis, whereno)
VALUES(
    100016, 10001,'네오핏 하네스.jpg', '네오핏 하네스.jpg', 20027, TO_DATE('20220823', 'YYYYMMDD'), 'P', 10016
);

INSERT INTO
    imgfile(fno, mno, oriname, savename, len, fdate, whereis, whereno)
VALUES(
    100017, 10001,'초코펫하우스.jpg', '초코펫하우스.jpg', 32808, TO_DATE('20220823', 'YYYYMMDD'), 'P', 10017
);

-- 예시 데이터 : 장바구니 --

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

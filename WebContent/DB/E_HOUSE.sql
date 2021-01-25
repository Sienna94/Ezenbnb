select * from tab;
select * from E_HOUSE;
--drop table E_HOUSE;

CREATE TABLE E_HOUSE(
    hIDX NUMBER(5) PRIMARY KEY, --숙소번호
    mIDX NUMBER(5), --회원번호
    hNAME VARCHAR2(100), --숙소이름
    hADDRESS VARCHAR2(100), --숙소주소
    hPHONE VARCHAR2(100), --전화번호
    hGRADE NUMBER(5) DEFAULT 0, --평점
    hIMAGE VARCHAR2(4000), --방이미지
    hFACILITY VARCHAR2(100), --편의시설
    hPRICE NUMBER(10), --가격
    hBED NUMBER(5), --침대수
    hBAT NUMBER(5), --욕실수
    hPERSON NUMBER(5), --인원수
    hUTILL NUMBER(5) DEFAULT 0--유틸
);

create sequence seq_hidx  nocache nocycle;
--drop sequence seq_hidx;

--truncate table E_HOUSE;

--시퀀스 맴버 방이름 주소 전화번호 이미지 편의시설 가격 침대 화장실 인원수
INSERT INTO E_HOUSE(hIDX, mIDX, hNAME, hADDRESS, hPHONE, hIMAGE, hFACILITY, hPRICE, hBED, hBAT, hPERSON) 
VALUES (seq_hidx.nextval, 1, '보라매가든1', '파주시', '010-1111-1111', 'house1.jpg', '족구장1', 300001, 2, 2, 5);
INSERT INTO E_HOUSE(hIDX, mIDX, hNAME, hADDRESS, hPHONE, hIMAGE, hFACILITY, hPRICE, hBED, hBAT, hPERSON) 
VALUES (seq_hidx.nextval, 2, '보라매가든2', '파주시', '010-1111-1112', 'house2.jpg', '족구장2', 300002, 2, 2, 6);
INSERT INTO E_HOUSE(hIDX, mIDX, hNAME, hADDRESS, hPHONE, hIMAGE, hFACILITY, hPRICE, hBED, hBAT, hPERSON) 
VALUES (seq_hidx.nextval, 3, '보라매가든3', '파주시', '010-1111-1113', 'house3.jpg', '족구장3', 300003, 2, 2, 7);

INSERT INTO E_HOUSE(hIDX, mIDX, hNAME, hADDRESS, hPHONE, hIMAGE, hFACILITY, hPRICE, hBED, hBAT, hPERSON) 
VALUES (seq_hidx.nextval, 4, '진달래가든1', '서울시', '010-2222-2221', 'house4.jpg', '매점1', 360001, 3, 2, 4);
INSERT INTO E_HOUSE(hIDX, mIDX, hNAME, hADDRESS, hPHONE, hIMAGE, hFACILITY, hPRICE, hBED, hBAT, hPERSON) 
VALUES (seq_hidx.nextval, 5, '진달래가든2', '서울시', '010-2222-2222', 'house5.jpg', '매점2', 360002, 3, 2, 5);
INSERT INTO E_HOUSE(hIDX, mIDX, hNAME, hADDRESS, hPHONE, hIMAGE, hFACILITY, hPRICE, hBED, hBAT, hPERSON) 
VALUES (seq_hidx.nextval, 6, '진달래가든3', '서울시', '010-2222-2223', 'house6.jpg', '매점3', 360003, 3, 2, 6);

INSERT INTO E_HOUSE(hIDX, mIDX, hNAME, hADDRESS, hPHONE, hIMAGE, hFACILITY, hPRICE, hBED, hBAT, hPERSON) 
VALUES (seq_hidx.nextval, 7, '장미가든1', '부산시', '010-3333-3331', 'house7.jpg', '수영장1', 450001, 4, 3, 10);
INSERT INTO E_HOUSE(hIDX, mIDX, hNAME, hADDRESS, hPHONE, hIMAGE, hFACILITY, hPRICE, hBED, hBAT, hPERSON) 
VALUES (seq_hidx.nextval, 8, '장미가든2', '부산시', '010-3333-3332', 'house8.jpg', '수영장2', 450002, 4, 3, 9);
INSERT INTO E_HOUSE(hIDX, mIDX, hNAME, hADDRESS, hPHONE, hIMAGE, hFACILITY, hPRICE, hBED, hBAT, hPERSON) 
VALUES (seq_hidx.nextval, 9, '장미가든3', '부산시', '010-3333-3333', 'house9.jpg', '수영장3', 450003, 4, 3, 8);


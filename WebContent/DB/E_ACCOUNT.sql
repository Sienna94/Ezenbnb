select * from tab;
select * from E_ACCOUNT;
--drop table E_ACCOUNT;

CREATE TABLE E_ACCOUNT(
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

create sequence seq_aidx  nocache nocycle;
--drop sequence seq_aidx;

--시퀀스 맴버 방이름 주소 전화번호 이미지 편의시설 가격 침대 화장실 인원수
INSERT INTO E_ACCOUNT(hIDX, mIDX, hNAME, hADDRESS, hPHONE, hIMAGE, hFACILITY, hPRICE, hBED, hBAT, hPERSON) 
VALUES (seq_hidx.nextval, 1, '보라매가든', '파주시', '010-1111-1111', 'house1.jpg', '족구장', 300000, 2, 2, 5);
INSERT INTO E_ACCOUNT(hIDX, mIDX, hNAME, hADDRESS, hPHONE, hIMAGE, hFACILITY, hPRICE, hBED, hBAT, hPERSON) 
VALUES (seq_hidx.nextval, 2, '진달래가든', '서울시', '010-2222-2222', 'house2.jpg', '매점', 360000, 3, 2, 7);
INSERT INTO E_ACCOUNT(hIDX, mIDX, hNAME, hADDRESS, hPHONE, hIMAGE, hFACILITY, hPRICE, hBED, hBAT, hPERSON) 
VALUES (seq_hidx.nextval, 3, '장미가든', '부산시', '010-3333-3333', 'house3.jpg', '수영장', 450000, 4, 3, 10);


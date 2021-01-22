select * from tab;
select * from E_ACCOUNT;
--drop table E_ACCOUNT;

CREATE TABLE E_ACCOUNT(
    aIDX NUMBER(5) PRIMARY KEY, --예약번호
    mIDX NUMBER(5), --회원번호
    hIDX NUMBER(5), --숙소번호
    aCHECKIN VARCHAR2(100), --입실일
    aCHECKOUT VARCHAR2(100), --퇴실일
    aPRICE NUMBER(10), --결제금액
    aSTATE VARCHAR2(20), --결제상태
    aDATE  DATE DEFAULT SYSDATE --예약신청날짜
);

create sequence seq_aidx  nocache nocycle;
--drop sequence seq_aidx;

--시퀀스 맴버 방이름 주소 전화번호 이미지 편의시설 가격 침대 화장실 인원수
INSERT INTO E_ACCOUNT(aIDX, mIDX, hIDX, aCHECKIN, aCHECKOUT, aPRICE, aSTATE) 
VALUES (seq_aidx.nextval, 1, 1, 2021-01-10, 2021-01-12, 350000, '결제대기');
INSERT INTO E_ACCOUNT(aIDX, mIDX, hIDX, aCHECKIN, aCHECKOUT, aPRICE, aSTATE) 
VALUES (seq_aidx.nextval, 2, 2, 2021-01-11, 2021-01-13, 100000, '결제대기');
INSERT INTO E_ACCOUNT(aIDX, mIDX, hIDX, aCHECKIN, aCHECKOUT, aPRICE, aSTATE) 
VALUES (seq_aidx.nextval, 3, 3, 2021-01-12, 2021-01-14, 150000, '결제대기');


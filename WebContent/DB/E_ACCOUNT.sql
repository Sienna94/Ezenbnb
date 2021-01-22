select * from tab;
select * from E_ACCOUNT;
--drop table E_ACCOUNT;

CREATE TABLE E_ACCOUNT(
    aIDX NUMBER(5) PRIMARY KEY, --예약번호
    mIDX NUMBER(5), --회원번호
    hIDX NUMBER(5), --숙소번호
    
    aCHECKIN VARCHAR2(100), --입실일
    aCHECKOUT VARCHAR2(100), --퇴실일
    aPERSON NUMBER(2), --인원
    
    aPRICE NUMBER(10), --결제금액
    aSTATE VARCHAR2(20) DEFAULT '대기중', --결제상태
    aCARD VARCHAR2(20), --카드회사
    
    aCARDNUM VARCHAR2(20), --카드번호
    aEXDATE VARCHAR2(20), --카드만료일
    aCVV VARCHAR2(20), --cvv번호
    
    aPOSTNUM VARCHAR2(20), --우편번호
    aAREA VARCHAR2(20), --지역
    aDATE  DATE DEFAULT SYSDATE --예약신청날짜
);

create sequence seq_aidx  nocache nocycle;
--drop sequence seq_aidx;



select * from tab;
select * from E_USER;
select * from E_USER where u_id='aaa';

drop table E_USER;
drop sequence seq_uidx;

create sequence seq_uidx nocache nocycle;

CREATE TABLE E_USER(
    uIDX NUMBER(5) PRIMARY KEY, --회원번호
    u_ID VARCHAR2(30), --아이디 uid가 오라클에 이미 있어서 오류남. 어쩔 수 없었음
    uPW VARCHAR2(15), --비밀번호
    uNAME VARCHAR2(20), --이름
    uPHONE VARCHAR2(20) DEFAULT '없음', -- 회원가입시 기재칸 X
    uADDRESS VARCHAR2(50) DEFAULT '없음', --주소
    uEMERG VARCHAR2(20) DEFAULT '없음', -- 회원가입시 기재칸 X
    uTYPE NUMBER(1) DEFAULT 0, --회원등급 : 0 일반(guest)/1 호스트(host)/2 관리자(admin)
    uBIRTH VARCHAR2(20) DEFAULT '없음'
);

INSERT INTO E_USER(uIDX, u_ID, uPW, uNAME, uPHONE, uEMERG, uTYPE) 
VALUES (seq_uidx.nextval, 'admin', '1', '관리자', '010-1111-1111', '010-1222-1222', 0);
INSERT INTO E_USER(uIDX, u_ID, uPW, uNAME, uPHONE, uEMERG, uTYPE) 
VALUES (seq_uidx.nextval, 'aaa', 'aaa', '홍길동', '010-2222-1111', '010-2222-1222', 1);
INSERT INTO E_USER(uIDX, u_ID, uPW, uNAME, uPHONE, uEMERG, uTYPE) 
VALUES (seq_uidx.nextval, 'bbb', 'bbb', '김철수', '010-3333-1111', '010-3333-1222', 1);
INSERT INTO E_USER(uIDX, u_ID, uPW, uNAME, uPHONE, uEMERG, uTYPE) 
VALUES (seq_uidx.nextval, 'ccc', 'ccc', '김하늘', '010-4444-1111', '010-4444-1222', 0);



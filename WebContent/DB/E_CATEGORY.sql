select * from tab;
select * from E_CATEGORY;

CREATE TABLE E_CATEGORY(
	cIDX NUMBER(20) PRIMARY KEY,	--카테고리 번호
	cNAME VARCHAR2(20)
);

create sequence seq_cidx nocache nocycle;
--drop sequence seq_hidx;

INSERT INTO E_CATEGORY(cIDX, cNAME) VALUES (seq_cidx.nextval, '경기도');
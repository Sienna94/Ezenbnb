select * from tab;
select * from E_CATEGORY;
--drop table E_CATEGORY;

CREATE TABLE E_CATEGORY(
	cIDX NUMBER(20) PRIMARY KEY,	--순서
	cNAME VARCHAR2(20)
);

create sequence seq_cidx nocache nocycle;
--drop sequence seq_cidx;

INSERT INTO E_CATEGORY(cIDX, cNAME) VALUES (seq_cidx.nextval, '경기도');

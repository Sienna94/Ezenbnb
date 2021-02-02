select * from tab;
select * from E_CATEGORY;

drop table E_CATEGORY;
drop sequence seq_cidx;

CREATE TABLE E_CATEGORY(
	cIDX NUMBER(20) PRIMARY KEY,	--카테고리 순서
	cNAME VARCHAR2(20)
);
create sequence seq_cidx nocache nocycle;

INSERT INTO E_CATEGORY(cIDX, cNAME) VALUES (seq_cidx.nextval, '경기도');
INSERT INTO E_CATEGORY(cIDX, cNAME) VALUES (seq_cidx.nextval, '대전');
INSERT INTO E_CATEGORY(cIDX, cNAME) VALUES (seq_cidx.nextval, '해남');

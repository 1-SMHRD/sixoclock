select * from t_product;


create table t_category
( 
cate_no varchar2(8) not null primary key,
cate_name varchar2(100) not null,
up_cate_no varchar2(8) not null,
cate_seq number(3)
)
CREATE TABLE t_product11(
p_show_date DATE DEFAULT SYSDATE, 
p_tk_count NUMBER(15), 
p_seat_info VARCHAR2(20), 
p_img_route VARCHAR2(400), 
p_deal_method VARCHAR2(400), 
p_deal_check VARCHAR2(400),
p_min_bid NUMBER(30), 
p_pay NUMBER(30), 
p_date DATE DEFAULT SYSDATE
);
drop table t_product11;
drop table test1817;


insert into t_category (cate_no, cate_name, up_cate_no, cate_seq)
values ('1000', '콘서트', 'M', 1);
insert into t_category (cate_no, cate_name, up_cate_no, cate_seq)
values ('1001', '스포츠', 'M', 2);
insert into t_category (cate_no, cate_name, up_cate_no, cate_seq)
values ('1002', '뮤지컬/연극', 'M', 3);
insert into t_category (cate_no, cate_name, up_cate_no, cate_seq)
values ('1003', '영화/전시', 'M', 4);
insert into t_category (cate_no, cate_name, up_cate_no, cate_seq)
values ('1004', '굿즈', 'M', 5);
insert into t_category (cate_no, cate_name, up_cate_no, cate_seq)
values ('1005', '정가이하', 'M', 6);

select * from T_CATEGORY;

insert into t_category (cate_no, cate_name, up_cate_no, cate_seq)
values ('1006', '하이라이트', '1000', 1);
insert into t_category (cate_no, cate_name, up_cate_no, cate_seq)
values ('1007', '블랙핑크', '1000', 2);
insert into t_category (cate_no, cate_name, up_cate_no, cate_seq)
values ('1008', '김호중', '1000', 3);
insert into t_category (cate_no, cate_name, up_cate_no, cate_seq)
values ('1009', '그랜드 민트 페스티벌', '1000', 4);
insert into t_category (cate_no, cate_name, up_cate_no, cate_seq)
values ('1010', '포레스텔라', '1000', 5);
select * from t_product11;


CREATE TABLE test1817
(
info1817 VARCHAR2(100),      
count1817 VARCHAR2(100)      
)

<<<<<<< HEAD
select * from test1817;



select * from tabs;
DROP TABLE TEST_USER CASCADE CONSTRAINTS;
DROP INDEX IX_test_user_1;
DROP UNIQUE INDEX UQ_test_user_1;

CREATE TABLE test_user
(
    u_id          VARCHAR2(20)      NOT NULL, 
    u_pw          VARCHAR2(30)      NOT NULL, 
    u_name        VARCHAR2(20)      NOT NULL, 
    u_email       VARCHAR2(30)      NOT NULL, 
    u_mobile      VARCHAR2(20)      NOT NULL,
    u_clause	  VARCHAR2(20),
    u_money       NUMBER(15, 0)     DEFAULT 0 NOT NULL, 
    u_joindate    DATE              DEFAULT SYSDATE NOT NULL, 
    u_role        CHAR(1)           DEFAULT 'U' NOT NULL, 
     PRIMARY KEY (u_id)
)
;

CREATE INDEX IX_test_user_1
    ON test_user(u_name)
/

CREATE UNIQUE INDEX UQ_test_user_1
    ON test_user(u_email)
/


INSERT INTO test_user (u_id, u_pw, u_name, u_email, u_mobile) VALUES ('u_id 1', 'u_pw 1', 'u_name 1', 'u_email 1', 'u_phone 1');
INSERT INTO test_user (u_id, u_pw, u_name, u_email, u_mobile) VALUES ('u_id 2', 'u_pw 2', 'u_name 2', 'u_email 2', 'u_phone 2');
INSERT INTO test_user (u_id, u_pw, u_name, u_email, u_mobile) VALUES ('u_id 3', 'u_pw 3', 'u_name 3', 'u_email 3', 'u_phone 3');
INSERT INTO test_user (u_id, u_pw, u_name, u_email, u_mobile) VALUES ('u_id 4', 'u_pw 4', 'u_name 4', 'u_email 4', 'u_phone 4');
INSERT INTO test_user (u_id, u_pw, u_name, u_email, u_mobile) VALUES ('u_id 5', 'u_pw 5', 'u_name 5', 'u_email 5', 'u_phone 5');
INSERT INTO test_user (u_id, u_pw, u_name, u_email, u_mobile) VALUES ('sdf', 'sdf', 'u_name 5', 'u_email 5', 'u_phone 5');

update test_user set u_money = 999999999 where u_ID = 'asdf';
update test_user set u_money = 999999999 where u_ID = 'u_id 5';



DROP TABLE TEST_DELIVERYLIST CASCADE CONSTRAINTS;

create table test_deliverylist (
	u_id			varchar2(50)	not null,
	d_default		char(1)			default 'N' not null,
	d_name			varchar2(20),
	d_post_code		varchar2(10),
	d_addr			varchar2(4000),
	d_recipient		varchar2(20),
	d_mobile		varchar2(20)
);

INSERT INTO TEST_DELIVERYLIST (u_id, d_default, d_name, d_post_code, d_addr, d_recipient, d_mobile) VALUES ('qwer', 'n', 'u_name 1', 12345, 'd_addr', 'qwer', 01012345678);
INSERT INTO TEST_DELIVERYLIST (u_id, d_default, d_name, d_post_code, d_addr, d_recipient, d_mobile) VALUES ('qwer', 'n', 'adsf 1', 45678, 'd_addr', 'qwer', 01012345678);
INSERT INTO TEST_DELIVERYLIST (u_id, d_default, d_name, d_post_code, d_addr, d_recipient, d_mobile) VALUES ('sdf', 'n', 'adsf 1', 45678, 'd_addr', 'qwer', 01012345678);
INSERT INTO TEST_DELIVERYLIST (u_id, d_default, d_name, d_post_code, d_addr, d_recipient, d_mobile) VALUES ('sdf', 'n', 'adsf 1', 45678, 'd_addr', 'qwer', 01012345678);
INSERT INTO TEST_DELIVERYLIST (u_id, d_default, d_name, d_post_code, d_addr, d_recipient, d_mobile) VALUES ('asdf', 'n', 'adsf 1', 45678, 'd_addr', 'qwer', 01012345678);
INSERT INTO TEST_DELIVERYLIST (u_id, d_default, d_name, d_post_code, d_addr, d_recipient, d_mobile) VALUES ('asdf', 'n', 'adsf 1', 45678, 'd_addr', 'qwer', 01012345678);




DROP TABLE test_usemoney CASCADE CONSTRAINTS;

create table test_usemoney (
	u_id				varchar2(20) not null,
	m_now_money			number(15, 0) default 0 not null,
	m_classification	varchar2(20) not null,
	m_plus				number(15, 0),
	m_minus				number(15, 0),
	m_date				date default sysdate not null
);

DELETE FROM TEST_USER WHERE u_id = 'asdf';

select * from TEST_USER;
select * from TEST_DELIVERYLIST;
select * from TEST_USEMONEY;






=======
select * from t_product11;
>>>>>>> branch 'master' of https://github.com/1-SMHRD/sixoclock.git

select * from t_category;

select * from T_PRODUCT;

create table t_category
( 
cate_no varchar2(8) not null primary key,
cate_name varchar2(100) not null,
up_cate_no varchar2(8) not null,
cate_seq number(3)
)


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

insert into t_category (cate_no, cate_name, up_cate_no, cate_seq)
values ('1011', '기아타이거즈', '1001', 1);
insert into t_category (cate_no, cate_name, up_cate_no, cate_seq)
values ('1012', 'NC다이노스', '1002', 2);


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
update test_user set u_money = 999999999 where u_ID = 'jaeyyy22';
update test_user set u_money = 999999999 where u_ID = 'qwer';



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


CREATE TABLE t_product
(
    p_idx              VARCHAR2(20), 
    u_id               VARCHAR2(20),
    p_cateDeps1        VARCHAR2(30), 
    p_cateDeps2        VARCHAR2(30), 
    p_indate           DATE        , 
    p_tkCount          NUMBER(15, 0), 
    p_seatInfo         VARCHAR2(400), 
    p_imgRoute         VARCHAR2(400), 
    p_dealMethod       VARCHAR2(400), 
    p_tkPossession     CHAR(1)       , 
    p_dealInfo         VARCHAR2(4000), 
    p_biddate          DATE         , 
    p_buyImmed         NUMBER(15, 0), 
    p_minBid           NUMBER(15, 0), 
    p_paycommission    NUMBER(15, 0), 
    p_registerDate     DATE              DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (p_idx)
)
;

insert into t_product (p_idx, u_id, p_biddate, p_buyImmed, p_minBid) values (123, zxcv, '2022-09-30 00:00:00', 200000, 5000);
insert into t_product (p_idx, u_id, p_biddate, p_buyImmed, p_minBid) values (321, asdf, '09/28/2022 05:25 PM', 200000, 5000);
insert into t_product (p_idx, u_id, p_biddate, p_buyImmed, p_minBid) values (121, 123, '09/28/2022 07:25 PM', 200000, 5000);
insert into t_product (p_idx, u_id, p_biddate, p_buyImmed, p_minBid) values (4321, ad, '09/28/2022 06:25 PM', 200000, 5000);
insert into t_product (p_idx, u_id, p_biddate, p_buyImmed, p_minBid) values (2131, 4123, '09/28/2022 10:25 PM', 200000, 5000);

select * from t_product;
update t_product set p_biddate = TO_DATE( '2022-09-30 12:00:00', 'YYYY/MM/DD HH:MI:SS PM') where p_idx = 96;
update t_product set p_buyerid = NULL where p_idx = 96;


DROP TABLE t_chatting_room CASCADE CONSTRAINTS;
DROP TRIGGER t_chatting_room_AI_TRG;
DROP SEQUENCE t_chatting_room_SEQ; 

CREATE TABLE t_chatting_room
(
    cr_code          NUMBER(15, 0)     NOT NULL, 
    cr_login_id      VARCHAR2(20)      NOT NULL, 
    cr_other_user    VARCHAR2(4000)    NOT NULL, 
    cr_title         VARCHAR2(400)     NOT NULL, 
    cr_open_dt       DATE              DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (cr_code)
)
;

CREATE SEQUENCE t_chatting_room_SEQ
START WITH 1
INCREMENT BY 1;



CREATE OR REPLACE TRIGGER t_chatting_room_AI_TRG
BEFORE INSERT ON t_chatting_room 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT t_chatting_room_SEQ.NEXTVAL
    INTO :NEW.cr_code
    FROM DUAL;
END;
;



insert into t_chatting_room (cr_login_id, cr_other_user, cr_title) values ('asdf', 'zxcv', 'asdf & zxcv');


select * from t_chatting_room;

DROP TABLE t_buylist CASCADE CONSTRAINTS;

CREATE TABLE t_buylist
(
    p_idx         NUMBER(15, 0)    NULL, 
    b_sellerid    VARCHAR2(20)     NULL, 
    b_buyerid     VARCHAR2(20)     NULL, 
    b_buymoney    NUMBER(15, 0)    NULL, 
    b_buydate     DATE             DEFAULT SYSDATE NOT NULL,
    b_check       CHAR(1)          DEFAULT '0' NULL   
);

select * from t_buylist;
<<<<<<< HEAD

=======

insert into t_buylist (p_idx, b_sellerid, b_buyerid, b_buymoney) values (123, 'zxcv', 'asdf' , 123456);
insert into t_buylist (p_idx, b_sellerid, b_buyerid, b_buymoney) values (1, 'zxcv', 'asdf' , 32);
insert into t_buylist (p_idx, b_sellerid, b_buyerid, b_buymoney) values (3, 'zxcv', 'asdf' , 1234);
insert into t_buylist (p_idx, b_sellerid, b_buyerid, b_buymoney) values (2, 'zxcv', 'asdf' , 1233124);
insert into t_buylist (p_idx, b_sellerid, b_buyerid, b_buymoney) values (4, 'zxcv', 'asdf' , 12233);
>>>>>>> branch 'master' of https://github.com/1-SMHRD/sixoclock.git

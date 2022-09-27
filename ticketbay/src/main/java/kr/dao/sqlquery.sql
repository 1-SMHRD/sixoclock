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
p_prod_check VARCHAR2(400), 
p_img_route VARCHAR2(400), 
p_deal_method VARCHAR2(400), 
p_tk_possession CHAR(1), 
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

select * from test1817;

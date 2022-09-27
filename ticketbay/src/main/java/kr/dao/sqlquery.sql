select * from t_product;


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


select * from t_product11;


CREATE TABLE test1817
(
info1817 VARCHAR2(100),      
count1817 VARCHAR2(100)      
)

select * from test1817;
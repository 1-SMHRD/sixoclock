select * from t_product;


CREATE TABLE t_product11
(
    p_show_date        DATE              DEFAULT SYSDATE NOT NULL, 
    p_tk_count         NUMBER(15, 0)     NOT NULL, 
    p_seat_info        VARCHAR2(20)      NOT NULL, 
    p_prod_check       VARCHAR2(400)    NULL, 
    p_img_route        VARCHAR2(400)    NULL, 
    p_deal_method      VARCHAR2(400)     NOT NULL, 
    p_tk_possession    CHAR(1)           NOT NULL, 
    p_deal_check    VARCHAR2(400)			 NULL,
    p_min_bid        NUMBER(30)     NOT NULL, 
    p_pay        	NUMBER(30)      NOT NULL, 
    p_date             DATE              DEFAULT SYSDATE NULL 
   
)
drop table t_product11;


select * from t_product11;
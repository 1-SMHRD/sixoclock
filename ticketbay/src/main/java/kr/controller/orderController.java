package kr.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.dao.MyBatisDAO;

import kr.dao.orderOVO;

public class orderController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		  String p_code=request.getParameter("p_code");
		  String pd_code=request.getParameter("pd_code");
		  String m_now_money=request.getParameter("m_now_money"); 
		  int p_buy_immed=Integer.parseInt("p_buy_immed"); 
		  String p_seat_info=request.getParameter("p_seat_info"); 
		  String p_title=request.getParameter("p_title"); 
		  String p_show_date=request.getParameter("p_show_date"); 
		  int p_tk_count=Integer.parseInt("p_tk_count"); 
		  orderOVO ovo= new orderOVO();
		  ovo.setM_now_money(m_now_money);
		  ovo.setP_buy_immed(p_buy_immed);
		  ovo.setP_code(p_code);
		  ovo.setPd_code(pd_code);
		  ovo.setP_show_date(p_show_date);
		  ovo.setP_seat_info(p_seat_info);
		  ovo.setP_title(p_title);
		  ovo.setP_tk_count(p_tk_count);
		  
		  
		return "ordersheet.view";
}
}


package kr.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.dao.payVO;

public class PayController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		 String u_NAME = request.getParameter("u_NAME");
		 String u_EMAIL = request.getParameter("u_EMAIL");
		 String u_MOBILE = request.getParameter("u_MOBILE");
		 int p_buy_immed = Integer.parseInt("p_buy_immed");
		 String p_code = request.getParameter("p_code");
		 
		 payVO vo = new payVO();
		 vo.setU_NAME(u_NAME);
		 vo.setP_buy_immed(p_buy_immed);
		 vo.setP_code(p_code);
		 vo.setU_EMAIL(u_EMAIL);
		 vo.setU_MOBILE(u_MOBILE);
		
		
		
		
		return "orderPay";
	}

}

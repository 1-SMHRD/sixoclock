package kr.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import kr.dao.MoneyVO;
import kr.dao.MyBatisDAO;

public class ConfirmMController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		int pidx = Integer.parseInt(request.getParameter("p_idx"));
		String b_seller = request.getParameter("b_seller");
		int b_money = Integer.parseInt(request.getParameter("b_money"));
				
		MyBatisDAO dao = new MyBatisDAO();
		
		// b_check = 1
		dao.getBcheck(pidx);
		
		// b_seller 소지금 업데이트
		int usermoney = dao.getUserinfo(b_seller).getU_MONEY();
		
		MoneyVO mvo = new MoneyVO();
		
		mvo.setM_CLASSIFICATION("판매 확정");
		mvo.setM_PLUS(b_money);
		mvo.setU_ID(b_seller);
		mvo.setM_NOW_MONEY(usermoney + b_money);
		
		dao.setMoneyPlus(mvo);
		
		
		
		return null;
	}

}

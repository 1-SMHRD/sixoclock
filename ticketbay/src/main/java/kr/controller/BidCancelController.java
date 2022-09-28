package kr.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.dao.MoneyVO;
import kr.dao.MyBatisDAO;

public class BidCancelController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String u_id = request.getParameter("u_id");
		int m_now_money = Integer.parseInt(request.getParameter("m_now_money"));
		int m_plus = Integer.parseInt(request.getParameter("m_plus"));
		
		MoneyVO vo = new MoneyVO();
		
		vo.setU_ID(u_id);
		vo.setM_NOW_MONEY(m_now_money);
		vo.setM_CLASSIFICATION("상품 입찰 실패");
		vo.setM_PLUS(m_plus);
		
		MyBatisDAO dao = new MyBatisDAO();
		dao.cancelbidInsert(vo);
		
		return null;
	}

}

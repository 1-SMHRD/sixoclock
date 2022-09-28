package kr.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.dao.MemberVO;
import kr.dao.MyBatisDAO;

public class UpdateUserController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String u_ID = request.getParameter("ID");
		String newPW = request.getParameter("newPWCheck");
		String mobile = request.getParameter("mobile");
		String email1 = request.getParameter("email1");
		String email2 = request.getParameter("email2");
		
		String email = email1 + "@" + email2;
		
		MemberVO mvo = new MemberVO();
		
		mvo.setU_ID(u_ID);
		mvo.setU_PW(newPW);
		mvo.setU_MOBILE(mobile);
		mvo.setU_EMAIL(email);
		
		MyBatisDAO dao = new MyBatisDAO();
		
		dao.memUpdate(mvo);
		
		return null;
	}

}

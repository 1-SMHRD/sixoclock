package kr.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.dao.MemberVO;
import kr.dao.MyBatisDAO;

public class SignupController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String mem_id = request.getParameter("MEMBER_ID");
		String mem_pw = request.getParameter("MEMBER_PW");
		String mem_name = request.getParameter("MEMBER_NAME");
		String mem_email = request.getParameter("MEMBER_EMAIL");
		String mem_mobile_no = request.getParameter("MEMBER_MOBILE_NO");
		
		MemberVO mvo = new MemberVO();
		
		mvo.setU_ID(mem_id);
		mvo.setU_PW(mem_pw);
		mvo.setU_NAME(mem_name);
		mvo.setU_EMAIL(mem_email);
		mvo.setU_MOBILE(mem_mobile_no);
		mvo.setU_MONEY(0);
		
		MyBatisDAO dao = new MyBatisDAO();
		dao.memInsert(mvo);
		
		return "signup";
	}

}

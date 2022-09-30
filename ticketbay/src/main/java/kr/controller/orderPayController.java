package kr.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.dao.MemberVO;
import kr.dao.MyBatisDAO;


public class orderPayController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 String u_NAME = request.getParameter("u_NAME");
		 String u_EMAIL = request.getParameter("u_EMAIL");
		 String u_MOBILE = request.getParameter("u_MOBILE");
		
		
		MemberVO vo = new MemberVO();
		vo.setU_EMAIL(u_EMAIL);
		vo.setU_MOBILE(u_MOBILE);
		vo.setU_NAME(u_NAME);

		return "redirect:mypage.do";
	}

}

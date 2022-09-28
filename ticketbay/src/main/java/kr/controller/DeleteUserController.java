package kr.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.dao.MemberVO;
import kr.dao.MyBatisDAO;

public class DeleteUserController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String u_ID = request.getParameter("ID");
		System.out.println("controller : " + u_ID);
		
		
		MyBatisDAO dao = new MyBatisDAO();
		dao.memDelete(u_ID);
		
		HttpSession session = request.getSession();
		session.invalidate();

		return "redirect:/main.do";
	}

}

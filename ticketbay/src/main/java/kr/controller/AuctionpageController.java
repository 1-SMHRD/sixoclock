package kr.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.dao.MemberVO;
import kr.dao.MyBatisDAO;

public class AuctionpageController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String u_id = request.getParameter("u_id");
		System.out.println(u_id);
		
		if (u_id != null) {
			MyBatisDAO dao = new MyBatisDAO();
			MemberVO mvo = dao.getUserinfo(u_id);
			
			if (mvo != null) {
				HttpSession session = request.getSession();
				session.setAttribute("mvo", mvo);			
			}
		}
		
		
		return "auction";
	}

}

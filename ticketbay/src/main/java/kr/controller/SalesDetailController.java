package kr.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.dao.MemberVO;
import kr.dao.MyBatisDAO;
import kr.dao.SalesWriteVO;

public class SalesDetailController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		MyBatisDAO dao=new MyBatisDAO();
		String p_Idx=request.getParameter("p_Idx");
		SalesWriteVO vo=dao.getByp_Idx(p_Idx);
		request.setAttribute("vo", vo);
		System.out.println(p_Idx);
		
		String u_id = request.getParameter("u_id");
		System.out.println(u_id);
		
		if (u_id != null) {
			MemberVO mvo = dao.getUserinfo(u_id);
			
			if (mvo != null) {
				HttpSession session = request.getSession();
				session.setAttribute("mvo", mvo);			
			}
		}
		
		
		return "salesDetail";
	}

}

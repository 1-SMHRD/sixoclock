package kr.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.dao.MyBatisDAO;
import kr.dao.BoardVO;

public class BoardWriteController implements Controller {
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//BoardDAO dao=new BoardDAO();
		MyBatisDAO dao=new MyBatisDAO();

//		String pp_name2 =request.getParameter("pp_name2");
		
		String a1 = request.getParameter("a1");
		String b2 = request.getParameter("b2");
		String c3 = request.getParameter("c3");
		
		BoardVO vo = new BoardVO();
		
		vo.setA1(a1);
		vo.setB2(b2);
		vo.setC3(c3);

		dao.sm1818Insert(vo);
		
		return "redirect:/sales_1.do";
		
	}
}

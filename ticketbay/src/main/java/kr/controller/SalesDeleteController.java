package kr.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.dao.MyBatisDAO;

public class SalesDeleteController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		MyBatisDAO dao=new MyBatisDAO();
		String p_Idx=request.getParameter("p_Idx");
		dao.salesDelete(p_Idx);
		
		
		return "redirect:/productListView.do";
	}

}

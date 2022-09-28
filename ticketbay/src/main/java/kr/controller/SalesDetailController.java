package kr.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.dao.MyBatisDAO;
import kr.dao.SalesVO;

public class SalesDetailController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		MyBatisDAO dao=new MyBatisDAO();
		String pd_code=request.getParameter("p_idx");
		SalesVO vo=dao.getBypdCode(pd_code);
		request.setAttribute("vo", vo);
		System.out.println(pd_code);
		return "salesDetail";
	}

}

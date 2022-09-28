package kr.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		
		return "salesDetail";
	}

}

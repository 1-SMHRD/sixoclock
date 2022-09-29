package kr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.dao.MyBatisDAO;
import kr.dao.SalesWriteVO;

public class SalesListController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		MyBatisDAO dao=new MyBatisDAO();
		String cate_name = request.getParameter("cate_name");
		System.out.println("리스트"+cate_name);
		List<SalesWriteVO> list=dao.allList(cate_name);
		request.setAttribute("list", list);
		
		return "salesList";
	}

}

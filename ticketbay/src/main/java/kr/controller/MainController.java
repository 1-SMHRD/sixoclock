package kr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.dao.CategoryVO;
import kr.dao.MyBatisDAO;

public class MainController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		MyBatisDAO dao=new MyBatisDAO();
		List<CategoryVO> list=dao.cateList();
		request.setAttribute("list", list);
		return "main";
	}

}

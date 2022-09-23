package kr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.dao.BoardVO;
import kr.dao.MyBatisDAO;

public class CategoryController implements Controller{

	public String requestHandler(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
//		BoardDAO dao=new BoardDAO();
		MyBatisDAO dao=new MyBatisDAO();
		List<BoardVO> list1=dao.allList1();
		request.setAttribute("list1", list1);
		return "category";
	}
	
}

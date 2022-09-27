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
		MyBatisDAO dao=new MyBatisDAO();
		
		 String info1817 = request.getParameter("info1817"); 
		 String count1817 =request.getParameter("count1817"); 
		 
		 BoardVO vo = new BoardVO();
		 vo.setInfo1817(info1817); 
		 vo.setCount1817(count1817);
		
		 dao.boInsert(vo);
		 
		
		return "redirect:/SalesWrite.do";
	}
	
}

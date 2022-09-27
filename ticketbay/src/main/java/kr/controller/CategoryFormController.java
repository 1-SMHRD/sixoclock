package kr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.dao.BoardVO;
import kr.dao.MyBatisDAO;

public class CategoryFormController implements Controller{

	public String requestHandler(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		return "category";
	}
	
}

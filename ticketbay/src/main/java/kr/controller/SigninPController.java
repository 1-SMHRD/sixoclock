package kr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.dao.MemberVO;
import kr.dao.MyBatisDAO;

public class SigninPController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		MyBatisDAO dao = new MyBatisDAO();
		List<MemberVO> list = dao.allMList();
		request.setAttribute("list", list);
		
		return "signin_page";
	}

}

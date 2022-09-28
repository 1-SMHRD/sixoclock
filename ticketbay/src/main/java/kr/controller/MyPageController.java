package kr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.dao.DeliveryVO;
import kr.dao.MyBatisDAO;

public class MyPageController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String u_id = request.getParameter("u_id");
		System.out.println("u_id" + u_id);
		
		MyBatisDAO dao = new MyBatisDAO();
		List<DeliveryVO> dlist = dao.allDList(u_id);
		
		request.setAttribute("dlist", dlist);
		
		return "mypage";
	}

}

package kr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.dao.BuyListVO;
import kr.dao.MyBatisDAO;
import kr.dao.SalesWriteVO;

public class ProductBuyViewController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		MyBatisDAO dao=new MyBatisDAO();
		String u_ID = request.getParameter("u_ID");
		System.out.println(">>"+u_ID);
		List<BuyListVO> list=dao.buyList(u_ID);
		request.setAttribute("list", list);
		
		List<SalesWriteVO> slist=dao.idxallList("u_ID");
		request.setAttribute("slist", slist);
		
		return "productBuyView";	
	}

}

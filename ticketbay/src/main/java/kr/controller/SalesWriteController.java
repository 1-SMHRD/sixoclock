package kr.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.dao.MyBatisDAO;
import kr.dao.SalesWriteVO;

public class SalesWriteController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		MyBatisDAO dao = new MyBatisDAO();
		String u_ID=request.getParameter("u_ID");
		String p_cateDeps1=request.getParameter("p_cateDeps1");
		String p_cateDeps2=request.getParameter("p_cateDeps2");
		String p_indate=request.getParameter("p_indate");
		int p_tkCount=Integer.parseInt(request.getParameter("p_tkCount"));
		String p_seatInfo=request.getParameter("p_seatInfo");
		String p_imgRoute=request.getParameter("p_imgRoute");
		String p_dealMethod=request.getParameter("p_dealMethod");
		String p_tkPossession=request.getParameter("p_tkPossession");
		String p_dealInfo=request.getParameter("p_dealInfo");
		String p_biddate=request.getParameter("p_biddate");
		int p_buyImmed=Integer.parseInt(request.getParameter("p_buyImmed"));
		int p_minBid=Integer.parseInt(request.getParameter("p_minBid"));
		
		System.out.println(u_ID);
		System.out.println(p_tkCount);
		System.out.println(p_cateDeps1);
		
		
		SalesWriteVO vo = new SalesWriteVO();
		vo.setU_ID(u_ID);
		vo.setP_cateDeps1(p_cateDeps1);
		vo.setP_cateDeps2(p_cateDeps2);
		vo.setP_indate(p_indate);
		vo.setP_tkCount(p_tkCount);
		vo.setP_seatInfo(p_seatInfo);
		vo.setP_imgRoute(p_imgRoute);
		vo.setP_dealMethod(p_dealMethod);
		vo.setP_tkPossession(p_tkPossession);
		vo.setP_dealInfo(p_dealInfo);
		vo.setP_biddate(p_biddate);
		vo.setP_buyImmed(p_buyImmed);
		vo.setP_minBid(p_minBid);
		
		dao.salesInsert(vo);
		
		return "redirect:/productListView.do";
		
		
	}

}

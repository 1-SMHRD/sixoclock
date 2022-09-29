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
		String cate_name=request.getParameter("cate_name");
		String date=request.getParameter("date");
		String time=request.getParameter("time");
		int p_tkCount=Integer.parseInt(request.getParameter("p_tkCount"));
		String seatInfo1=request.getParameter("seatInfo1");
		String seatInfo2=request.getParameter("seatInfo2");
		String seatInfo3=request.getParameter("seatInfo3");
		String p_imgRoute=request.getParameter("p_imgRoute");
		String dealMethod1=request.getParameter("dealMethod1");
		String dealMethod2=request.getParameter("dealMethod2");
		String dealMethod3=request.getParameter("dealMethod3");
		String dealMethod4=request.getParameter("dealMethod4");
		String p_tkPossession=request.getParameter("p_tkPossession");
		String p_dealInfo=request.getParameter("p_dealInfo");
		String p_biddate=request.getParameter("p_biddate");
		int p_buyImmed=Integer.parseInt(request.getParameter("p_buyImmed"));
		int p_minBid=Integer.parseInt(request.getParameter("p_minBid"));
		
		String p_indate = date + " " + time;
		
		String p_seatInfo = seatInfo1 + " " + seatInfo2 + " " + seatInfo3;
		String p_dealMethod = dealMethod1+" "+dealMethod2+" "+dealMethod3+" "+dealMethod4;
		
		System.out.println(u_ID);
		System.out.println(p_tkCount);
		System.out.println(cate_name);
		System.out.println(p_indate);
		
		
		SalesWriteVO vo = new SalesWriteVO();
		vo.setU_ID(u_ID);
		vo.setCate_name(cate_name);
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

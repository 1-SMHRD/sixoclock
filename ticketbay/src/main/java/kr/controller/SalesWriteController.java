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

		/*
		 * MyBatisDAO dao = new MyBatisDAO(); String p_show_date =
		 * request.getParameter("p_show_date"); int p_tk_count =
		 * Integer.parseInt(request.getParameter("p_tk_count")); String p_seat_info =
		 * request.getParameter("p_seat_info"); String p_img_route
		 * =request.getParameter("p_img_route"); String[] p_deal_method
		 * =request.getParameterValues("p_deal_method"); //String p_tk_possession
		 * =request.getParameter("p_tk_possession"); String p_deal_check
		 * =request.getParameter("p_deal_check"); int p_min_bid =
		 * Integer.parseInt(request.getParameter("p_min_bid")); int p_pay =
		 * Integer.parseInt(request.getParameter("p_pay"));
		 * 
		 * System.out.println(p_show_date); System.out.println(p_tk_count);
		 * System.out.println(p_seat_info); // System.out.println(p_prod_check);
		 * System.out.println(p_img_route); System.out.println(p_deal_method);
		 * //System.out.println(p_tk_possession); System.out.println(p_deal_check);
		 * System.out.println(p_min_bid); System.out.println(p_pay);
		 * 
		 * SalesWriteVO vo = new SalesWriteVO();
		 */
		/*
		 * vo.setP_show_date(p_show_date); vo.setP_tk_count(p_tk_count);
		 * vo.setP_seat_info(p_seat_info); // vo.setP_prod_check(p_prod_check);
		 * vo.setP_img_route(p_img_route);
		 * 
		 * //vo.setP_tk_possession(p_tk_possession); vo.setP_deal_check(p_deal_check);
		 * vo.setP_min_bid(p_min_bid); vo.setP_pay(p_pay);
		 * 
		 * dao.boardInsert2(vo);
		 */
		
		
		return "redirect:/productListView.do";
		
		
	}

}

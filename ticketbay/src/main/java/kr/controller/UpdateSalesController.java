package kr.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.dao.BuyListVO;
import kr.dao.MyBatisDAO;
import kr.dao.SalesWriteVO;

public class UpdateSalesController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String buyerid = request.getParameter("u_id");
		String p_Idx = request.getParameter("p_Idx");
		String b_sellerid = request.getParameter("seller");
		int b_buymoney = Integer.parseInt(request.getParameter("buymoney"));

		
		SalesWriteVO svo = new SalesWriteVO();
		
		svo.setP_buyerid(buyerid);
		svo.setP_Idx(p_Idx);
		
		BuyListVO bvo = new BuyListVO();
		
		bvo.setP_idx(Integer.parseInt(p_Idx));
		bvo.setB_sellerid(b_sellerid);
		bvo.setB_buyerid(buyerid);
		bvo.setB_buymoney(b_buymoney);
		
		MyBatisDAO dao = new MyBatisDAO();
		
		dao.updatesales(svo);
		dao.insertBuyList(bvo);
		
		
		return null;
	}

}

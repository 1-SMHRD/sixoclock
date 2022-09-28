package kr.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.dao.MyBatisDAO;
import kr.dao.orderOVO;

public class orderPayController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String pd_code = request.getParameter("pd_code");
		int p_buy_immed = Integer.parseInt("p_buy_immed");
		orderOVO ovo = new orderOVO();
		ovo.setP_buy_immed(p_buy_immed);
		ovo.setPd_code(pd_code);

		return "redirect:?.view";
	}

}

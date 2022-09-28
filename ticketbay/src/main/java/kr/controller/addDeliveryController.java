package kr.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.dao.DeliveryVO;
import kr.dao.MyBatisDAO;

public class addDeliveryController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String u_id = request.getParameter("u_id");
		String d_name = request.getParameter("d_name");
		String d_recipient = request.getParameter("d_recipient");
		int d_postcode = Integer.parseInt(request.getParameter("d_postcode"));
		String d_address = request.getParameter("d_address");
		String detailAddress = request.getParameter("detailAddress");
		String extraAddress = request.getParameter("extraAddress");
		int d_mobile = Integer.parseInt(request.getParameter("d_mobile"));
		
		String d_addr = d_address + " " + detailAddress + " " + extraAddress;
		
		System.out.println("u_id : " + u_id);
		System.out.println("d_name : " + d_name);
		System.out.println("d_recipient : " + d_recipient);
		System.out.println("d_postcode : " + d_postcode);
		System.out.println("d_addr : " + d_addr);
		System.out.println("d_mobile : " + d_mobile);
		
		DeliveryVO dvo = new DeliveryVO();
		
		dvo.setU_id(u_id);
		dvo.setD_name(d_name);
		dvo.setD_recipient(d_recipient);
		dvo.setD_post_code(d_postcode);
		dvo.setD_addr(d_addr);
		dvo.setD_mobile(d_mobile);
		
		MyBatisDAO dao = new MyBatisDAO();
		dao.addrInsert(dvo);
		
		
		return null;
	}

}

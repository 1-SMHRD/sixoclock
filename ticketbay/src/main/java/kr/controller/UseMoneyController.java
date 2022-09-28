package kr.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UseMoneyController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String u_id = request.getParameter("u_id");
		int minbid = Integer.parseInt(request.getParameter("minbid"));
		int bidamount = Integer.parseInt(request.getParameter("bidamount"));
		int immbid = Integer.parseInt(request.getParameter("immbid"));
		
		System.out.println(u_id + " " + minbid + " " + bidamount + " " + immbid);
		
		return null;
	}

}

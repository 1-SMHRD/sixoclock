package kr.frontcontroller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.controller.Controller;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		// 1. 어떤 요청인지 파악하는것(command 구하기)
		String reqPath=request.getRequestURI();
		String cpath=request.getContextPath();
		String command=reqPath.substring(cpath.length());
		System.out.println(command);
		// 2. command에 따른 처리(if else -> HandlerMapping으로 이동)
		String nextPath=null;
		Controller controller=null;
		// HandlerMapping
		HandlerMapping mappings=new HandlerMapping();
		controller=mappings.getController(command);
		nextPath=controller.requestHandler(request, response);
		// 3. 다음페이지로 이동하기(forward, redirect)
		if(nextPath!=null) {
			if(nextPath.indexOf("redirect:")==-1) {
				// forward
				RequestDispatcher rd=request.getRequestDispatcher(ViewResolver.makeView(nextPath));
				rd.forward(request, response);
			} else {
				// redirect
				response.sendRedirect(cpath+nextPath.split(":")[1]);
			}
		}
	}
}

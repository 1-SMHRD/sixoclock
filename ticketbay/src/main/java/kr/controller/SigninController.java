package kr.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.dao.MemberVO;
import kr.dao.MyBatisDAO;

public class SigninController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// 입력한 아이디 패스워드 가져오기 getParameter
				String u_id = request.getParameter("ENTER_ID");
				String u_pw = request.getParameter("ENTER_PW");
				
				// 입력한값 확인
				System.out.println("u_id : " + u_id);
				System.out.println("u_pw : " + u_pw);
				
				MemberVO vo = new MemberVO();
				vo.setU_ID(u_id);
				vo.setU_PW(u_pw);
				
				MyBatisDAO dao = new MyBatisDAO();
				MemberVO mvo = dao.memLogin(vo);

				if(mvo != null) {
					// success login --> make session
					HttpSession session = request.getSession();
					session.setAttribute("mvo", mvo);
					
					return "redirect:/main.do";
				} else {
					response.setContentType("text/html; charset=UTF-8");
					PrintWriter out = response.getWriter();
					String cpath=request.getContextPath();
					
					out.println("<script>alert('아이디 또는 비밀번호가 일치하지 않습니다.'); location.href = '" + cpath + "/signinpage.do';</script>"); 
					out.close();
					return "redirect:/signinpage.do";
				}
				
				
	}

}

package co.mini.user.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.common.Action;

public class Password implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession(false);
		
		String password = (String) session.getAttribute("password");

		String pw = request.getParameter("pw");
		
		String test = null;

		if(password.equals(pw)) {			
			return "/reservUp.do"; // 회원정보 페이지
		} else {
			test = "test";
			request.setAttribute("test", test); 
			return "jsp/user/memberPW.jsp"; 
		}
	}

}

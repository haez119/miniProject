package co.mini.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.common.Action;



public class LoginForm implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 메뉴 - 로그인   => 서블릿에   .do - LoginForm
		HttpSession session = request.getSession();
		session.invalidate();
		
		return "jsp/main/loginForm.jsp";
	}

}
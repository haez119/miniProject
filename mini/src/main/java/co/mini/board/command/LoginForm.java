package co.mini.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;



public class LoginForm implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 메뉴 - 로그인   => 서블릿에   .do - LoginForm
		
		return "jsp/main/loginForm.jsp";
	}

}
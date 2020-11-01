package co.mini.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.board.common.Action;

public class LoginForm implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return "jsp/main/loginForm.jsp";
	}

}
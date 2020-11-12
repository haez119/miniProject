package co.mini.user.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;

public class BeReservLogin implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		return "jsp/main/beMemLogin.jsp";
	}

}

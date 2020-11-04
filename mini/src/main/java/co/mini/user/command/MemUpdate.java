package co.mini.user.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.common.Action;


public class MemUpdate implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		return "jsp/user/memberPW.jsp";
	}
	// 비밀번호 확인 페이지 넘겨주고

}

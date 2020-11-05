package co.mini.user.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.common.Action;

public class logout implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 로그아웃
		HttpSession session = request.getSession();
		session.invalidate(); // 세선 전체 삭제
		
		return "jsp/main/loginForm.jsp";
	}

}

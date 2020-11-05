package co.mini.owner.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;

public class ownerLogin implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		// 사장님 아이디 맞는지 확인
		return "jsp/owner/ownerLoginForm.jsp";
	}

}

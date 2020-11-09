package co.mini.owner.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.common.Action;

public class EventInsertForm implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession(false);
		int branch_no = (int) session.getAttribute("branch_no");
		
		request.setAttribute("branch_no", branch_no);
		
		return "/jsp/event/eventInsert.jsp";
	}

}

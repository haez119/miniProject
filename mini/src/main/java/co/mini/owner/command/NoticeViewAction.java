package co.mini.owner.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.common.Action;

public class NoticeViewAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession(false);
		
		String id = (String) session.getAttribute("id");
		String branch_name = (String) session.getAttribute("branch_name");
		
		request.setAttribute("id", id); 
		request.setAttribute("branch_name", branch_name); 
		
		return "jsp/owner/notice.jsp";
	}

}

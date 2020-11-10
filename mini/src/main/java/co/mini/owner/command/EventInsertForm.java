package co.mini.owner.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.common.Action;
import co.mini.dao.EventDAO;

public class EventInsertForm implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		EventDAO dao = new EventDAO();
		 //메소드호출
		int max = dao.maxevent();
		System.out.println(max);
		
		HttpSession session = request.getSession(false);
		
		int branch_no = (int) session.getAttribute("branch_no");
		
		
		request.setAttribute("max", max);
		request.setAttribute("branch_no", branch_no);
		
		return "/jsp/event/eventInsert.jsp";
	}

}

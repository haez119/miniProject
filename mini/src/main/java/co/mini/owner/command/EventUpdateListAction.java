package co.mini.owner.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.common.Action;
import co.mini.dao.EventDAO;
import co.mini.vo.EventVO;

public class EventUpdateListAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession(false);
		
		int event_no = (int) session.getAttribute("event_no");
		
		EventDAO dao = new EventDAO();
		EventVO vo = new EventVO();
		
		
		List<EventVO> list = dao.selectAll();
		request.setAttribute("event", list);
		
		return "jsp/event/ownerEventList.jsp";
	}

}

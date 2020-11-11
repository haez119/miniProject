package co.mini.owner.command;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;
import co.mini.dao.EventDAO;
import co.mini.vo.EventVO;

public class EventUpdateFormAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		EventDAO dao = new EventDAO();
		EventVO vo = new EventVO();
		
		vo.setEvent_name(request.getParameter("event_name"));
		vo.setEvent_content(request.getParameter("event_content"));
		vo.setEvent_term(Integer.parseInt(request.getParameter("event_term")));
		vo.setStart_event(Date.valueOf(request.getParameter("start_event")));
		vo.setSale(Double.parseDouble(request.getParameter("sale")));
		
		dao.update(vo);
		
		try {
			response.sendRedirect(request.getContextPath() + "/board.do");
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return "jsp/event/eventList.jsp";
	}

}

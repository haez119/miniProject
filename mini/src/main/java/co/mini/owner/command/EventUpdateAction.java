package co.mini.owner.command;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;
import co.mini.dao.EventDAO;
import co.mini.vo.EventVO;

public class EventUpdateAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		EventDAO dao = new EventDAO();
		EventVO vo = new EventVO();
		
		vo.setEvent_no(Integer.parseInt(request.getParameter("event_no")));
		vo.setEvent_name(request.getParameter("event_name"));
		vo.setEvent_content(request.getParameter("event_content"));
		vo.setStart_event(Date.valueOf(request.getParameter("start_event")));
		vo.setEvent_term(Integer.parseInt(request.getParameter("event_term")));
		vo.setSale(Double.parseDouble(request.getParameter("sale")));
		
		request.setAttribute("vo", vo);//vo를 받아온걸 넘긴다
		
		
		return "jsp/event/eventUpdate.jsp";
	}

}

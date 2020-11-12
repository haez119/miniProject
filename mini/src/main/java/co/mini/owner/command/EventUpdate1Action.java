package co.mini.owner.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;
import co.mini.dao.EventDAO;
import co.mini.vo.EventVO;

public class EventUpdate1Action implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		EventVO vo = new EventVO();
		EventDAO dao = new EventDAO();
		
		
		vo.setEvent_name(request.getParameter("event_name"));
		vo.setEvent_content(request.getParameter("event_content"));
		vo.setStart_event(Date.valueOf(request.getParameter("start_event")));
		vo.setEvent_term(Integer.parseInt(request.getParameter("event_term")));
		vo.setSale(Double.parseDouble(request.getParameter("sale")));
		vo.setEvent_no(Integer.parseInt(request.getParameter("event_no")));
		
		dao.update(vo);//메소드를 호출
		
		return "eventUpdateList.do";
	}

}

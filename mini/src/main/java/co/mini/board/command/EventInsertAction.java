package co.mini.board.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;
import co.mini.dao.EventDAO;
import co.mini.vo.EventVO;

public class EventInsertAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		EventDAO dao = new EventDAO();
		EventVO vo = new EventVO();
		
		
		vo.setEvent_no(Integer.parseInt(request.getParameter("event_no")));
		vo.setBranch_name(request.getParameter("branch_name"));
		vo.setEvent_name(request.getParameter("event_name"));
		vo.setImg(request.getParameter("img"));
		vo.setEvent_content(request.getParameter("event_content"));
		vo.setStart_event(Date.valueOf(request.getParameter("start_event")));
		vo.setLast_event(Date.valueOf(request.getParameter("last_event")));
		vo.setSale(Integer.parseInt(request.getParameter("sale")));
		
		dao.insert(vo);
		
	
		return "redirect:evenList.do";
	}

}

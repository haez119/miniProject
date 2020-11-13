package co.mini.owner.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;
import co.mini.dao.EventDAO;
import co.mini.vo.EventVO;

public class eventDelete implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		EventDAO eventdao= new EventDAO();
		EventVO vo = new EventVO();
		vo.setEvent_no(Integer.parseInt(request.getParameter("event_no")));
		System.out.println(request.getParameter("event_no"));
		
		eventdao.delete(vo);
		
		return "eventUpdateList.do";
	}
	
}

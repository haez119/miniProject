package co.mini.owner.command;


import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import co.mini.common.Action;
import co.mini.dao.EventDAO;
import co.mini.vo.EventVO;


public class EventInsertAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		EventVO eventVo= new EventVO();
		EventDAO eventDao = new EventDAO();
		
		eventVo.setBranch_no(Integer.parseInt(request.getParameter("branch_no")));
		eventVo.setEvent_no(Integer.parseInt(request.getParameter("event_no")));
		eventVo.setEvent_name(request.getParameter("event_name"));
		eventVo.setImg("img");
		//eventVo.setImg(request.getParameter("event_img"));
		eventVo.setEvent_content(request.getParameter("event_content"));
		eventVo.setStart_event(Date.valueOf(request.getParameter("start_event")));
		eventVo.setEvent_term(Integer.parseInt(request.getParameter("event_term")));
		eventVo.setSale(Double.parseDouble(request.getParameter("sale")));
		
		int vo = eventDao.insert(eventVo);//이벤트디에이오라는 클래스에 있는 메소드를 실행시키는거
		return null;
	}

}

package co.mini.board.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;
import co.mini.dao.EventDAO;
import co.mini.vo.EventVO;



public class EventListAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		EventDAO dao = new EventDAO();
//		BoardVO vo = new BoardVO();
	
		List<EventVO> list = dao.selectAll();
		request.setAttribute("event", list);
		
		return "jsp/board/eventList.jsp";
	}

}

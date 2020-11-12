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
		
		int branch_no = (int) session.getAttribute("branch_no");//세션에 담겨있는 브랜치넘버를 가져옴
		
		EventDAO dao = new EventDAO();
		EventVO vo = new EventVO();
		
		
		List<EventVO> list = dao.selectbranch(branch_no);
		request.setAttribute("event", list);
		
		return "jsp/owner/ownerEventList.jsp";
	}

}

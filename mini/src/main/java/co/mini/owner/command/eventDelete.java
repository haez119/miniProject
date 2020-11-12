package co.mini.owner.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;
import co.mini.dao.EventDAO;
import co.mini.vo.EventVO;

public class eventDelete implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		EventDAO dao = new EventDAO();
		EventVO vo = new EventVO();
//		int n = dao.delete(Integer.parseInt(request.getParameter("event_no")));
		return null;
	}

}

package co.mini.user.command;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.common.Action;
import co.mini.dao.ReservationDAO;

public class ReservListAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		// 테이블로 
		ReservationDAO dao = new ReservationDAO();
		
		ArrayList<HashMap<String, Object>> list = new ArrayList<HashMap<String, Object>>();
		
		HttpSession session = request.getSession(false);
		
		String id = (String) session.getAttribute("id");
		String password = (String) session.getAttribute("password");
		String name = (String) session.getAttribute("name");
		
		
		list = dao.selectMap(id);
		
		
		session.setAttribute("id", id);	
		request.setAttribute("reservs", list);
		
		
		
		return "jsp/user/reservation.jsp";
	}

}

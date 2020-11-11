package co.mini.main.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.common.Action;

public class MapView implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		
		HttpSession session = request.getSession(false);
		
		String address = (String) session.getAttribute("address");
		
		
		request.setAttribute("address", address);
		
		
		return "jsp/layout/map.jsp";
	}

}

package co.mini.owner.command;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.common.Action;
import co.mini.dao.OwnerDAO;

public class ReservPageAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		
		HttpSession session = request.getSession(false);
		String b_no = (String) session.getAttribute("branch_no");
		
		OwnerDAO dao = new OwnerDAO();
		ArrayList<HashMap<String, Object>> list = dao.selectMap(b_no);
		
		request.setAttribute("list", list); 
		
		return "jsp/owner/reservPage.jsp";
	}

}

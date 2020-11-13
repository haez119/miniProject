package co.mini.owner.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;

import co.mini.common.Action;
import co.mini.dao.OwnerDAO;

public class OwnerSearch implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		
		OwnerDAO dao = new OwnerDAO();
		ArrayList<HashMap<String, Object>> list = new ArrayList<HashMap<String, Object>>();
		
		
		String serDate = request.getParameter("day");
		HttpSession session = request.getSession(false);
		int no = (int) session.getAttribute("branch_no");
		
		list = dao.search(no, serDate);
		
		try {
			response.getWriter().print(new JSONObject(list));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		
		
		
		return null;
	}

}

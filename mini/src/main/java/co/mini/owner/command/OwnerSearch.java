package co.mini.owner.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;

import co.mini.common.Action;
import co.mini.dao.OwnerDAO;

public class OwnerSearch implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		
		OwnerDAO dao = new OwnerDAO();
		ArrayList<HashMap<String, Object>> list = new ArrayList<HashMap<String, Object>>();
		
		
		java.sql.Date serDate = java.sql.Date.valueOf(request.getParameter("day"));
		
		
		
		HttpSession session = request.getSession(false);
		
		int no = (int) session.getAttribute("branch_no");
		
		
		list = dao.search(no, serDate);
		
		
		try {
			// list는 배열이니까 array / vo는 객체니까 object
			response.getWriter().print(new JSONArray(list));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return null;
	}

}

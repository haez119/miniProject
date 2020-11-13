package co.mini.owner.command;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.common.Action;
import co.mini.dao.NoticeDAO;

public class OwnerNoticeList implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		
		NoticeDAO dao = new NoticeDAO();
		ArrayList<HashMap<String, Object>> list = new ArrayList<HashMap<String, Object>>();
		
		HttpSession session = request.getSession(false);
		
		String id = (String) session.getAttribute("id");
		String branch_name = (String) session.getAttribute("branch_name");
		
		list = dao.select(id);
		
		request.setAttribute("list", list);
		request.setAttribute("branch_name", branch_name);
		
		
		return "jsp/owner/ownerNoticeList.jsp";
	}

}

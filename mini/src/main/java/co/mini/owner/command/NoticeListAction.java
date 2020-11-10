package co.mini.owner.command;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.common.Action;
import co.mini.dao.NoticeDAO;

public class NoticeListAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		NoticeDAO dao = new NoticeDAO();
		ArrayList<HashMap<String, Object>> list = new ArrayList<HashMap<String, Object>>();
		
		list = dao.select_mem();
		
		request.setAttribute("list", list);
		
		return "jsp/board/noticeList.jsp";
	}

}

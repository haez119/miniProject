package co.mini.board.command;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;
import co.mini.dao.NoticeDAO;

public class Notice implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		
		NoticeDAO dao = new NoticeDAO();
		ArrayList<HashMap<String, Object>> list = new ArrayList<HashMap<String, Object>>();
		
		
		
		request.setAttribute("list", list);
		
		
		// 상세화면
		return  "jsp/board/noticeDetail.jsp";
	}

}

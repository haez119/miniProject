package co.mini.owner.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;
import co.mini.dao.NoticeDAO;

public class NoticeDel implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		NoticeDAO dao = new NoticeDAO();
		
		dao.delete(no);
		
		
		
		
		
		return "noticeListView.do";
	}

}

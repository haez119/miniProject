package co.mini.owner.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.common.Action;
import co.mini.dao.NoticeDAO;
import co.mini.vo.NoticeVO;

public class noticeUpdate implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		int no = Integer.parseInt(request.getParameter("no"));

		NoticeDAO dao = new NoticeDAO();
		NoticeVO vo = new NoticeVO();
		
		vo = dao.updateSel(no);
		
		HttpSession session = request.getSession(false);
		String branch_name = (String) session.getAttribute("branch_name");
		
		
		request.setAttribute("branch_name", branch_name);
		request.setAttribute("vo", vo);
		request.setAttribute("no", no);
		
		return "jsp/owner/noticUpdate.jsp";
	}

}

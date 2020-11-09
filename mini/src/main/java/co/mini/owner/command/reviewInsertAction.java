package co.mini.owner.command;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.common.Action;
import co.mini.dao.ReviewDAO;
import co.mini.vo.ReviewVO;

public class reviewInsertAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession(false);
		
		String id = (String) session.getAttribute("id");
		
		String no = request.getParameter("rno");
		int rno = Integer.parseInt(no);
		
		ReviewDAO dao = new ReviewDAO();
		ReviewVO vo = new ReviewVO();
		
		
		vo = dao.reviewInsert(id, rno);
		
		request.setAttribute("vo", vo);
		request.setAttribute("id", id);
		
		//request.setAttribute("list", list);

		return "jsp/board/boradreviewWrite.jsp";
	}

}

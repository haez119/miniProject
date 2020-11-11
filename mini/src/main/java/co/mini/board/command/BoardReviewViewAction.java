package co.mini.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;
import co.mini.dao.ReviewDAO;
import co.mini.vo.ReviewVO;

public class BoardReviewViewAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// reviewView페이지로 이동
		ReviewDAO dao = new ReviewDAO();
		ReviewVO vo = new ReviewVO();
		int no = Integer.parseInt(request.getParameter("no"));
		
		vo.setNo(no);
		
		dao.UPDATE_HIT(vo);
		
		vo = dao.select(vo);
		
		request.setAttribute("vo", vo);
		return "/jsp/board/boardreviewView.jsp";
	}

}

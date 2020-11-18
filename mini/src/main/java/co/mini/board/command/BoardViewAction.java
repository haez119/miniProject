package co.mini.board.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;
import co.mini.dao.BoardDAO;
import co.mini.dao.CommentDAO;
import co.mini.vo.BoardVO;
import co.mini.vo.CommentVO;

public class BoardViewAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// View페이지로 이동
		BoardDAO dao = new BoardDAO();
		BoardVO vo = new BoardVO();
		int no = Integer.parseInt(request.getParameter("no"));

		vo.setNo(no);
		dao.update_hit(vo);

		dao = new BoardDAO();
		vo = dao.select(vo);
		
		request.setAttribute("vo", vo);

		return "/jsp/board/boardView.jsp";
	}

}

package co.mini.board.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;
import co.mini.dao.BoardDAO;
import co.mini.vo.BoardVO;

public class BoardUpdateAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		BoardDAO dao = new BoardDAO();
		BoardVO vo = new BoardVO();
		
		vo.setNo(Integer.parseInt(request.getParameter("no")));
		
		vo.setId(request.getParameter("id"));
		vo.setTitle(request.getParameter("title"));
		vo.setBoard_date(Date.valueOf(request.getParameter("board_date")));
		vo.setContent(request.getParameter("content"));
		
		
		request.setAttribute("vo", vo);
	
		return "/jsp/board/boardUpdate.jsp";
	}

}

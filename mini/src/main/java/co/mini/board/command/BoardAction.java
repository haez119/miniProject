package co.mini.board.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;
import co.mini.dao.BoardDAO;
import co.mini.vo.BoardVO;

public class BoardAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		BoardDAO dao = new BoardDAO();
		BoardVO vo = new BoardVO();
	
		List<BoardVO> list = dao.selectAll();
		request.setAttribute("board", list);
		
		return "jsp/board/board.jsp";
	}

}

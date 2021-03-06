package co.mini.board.command;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;
import co.mini.dao.BoardDAO;
import co.mini.vo.BoardVO;

public class BoardUpateFormAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		BoardDAO dao = new BoardDAO();
		BoardVO vo = new BoardVO();

		vo.setNo(Integer.parseInt(request.getParameter("no")));
		vo.setId(request.getParameter("id"));
		vo.setTitle(request.getParameter("title"));
		vo.setBoard_date(Date.valueOf(request.getParameter("board_date")));
		vo.setContent(request.getParameter("content"));

		dao.update(vo);

		try {
			response.sendRedirect(request.getContextPath() + "/board.do");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}

}

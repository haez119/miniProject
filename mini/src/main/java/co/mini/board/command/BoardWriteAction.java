package co.mini.board.command;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;
import co.mini.dao.BoardDAO;
import co.mini.vo.BoardVO;

public class BoardWriteAction implements Action {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO 게시판을 DB에 입력한다.
		BoardDAO dao = new BoardDAO();
		BoardVO vo = new BoardVO();

		vo.setTitle(request.getParameter("title"));
		vo.setCategory(request.getParameter("category"));
		vo.setDate(Date.valueOf(request.getParameter("bdate")));
		vo.setContent(request.getParameter("content"));
		
		dao.insert(vo);

		try {
			response.sendRedirect(request.getContextPath() + "/board.do");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
}

package co.mini.board.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.common.Action;
import co.mini.dao.BoardDAO;
import co.mini.vo.BoardVO;

public class BoardWriteAction implements Action {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		BoardDAO dao = new BoardDAO();
		BoardVO vo = new BoardVO();
		
		vo.setId(request.getParameter("id"));
		vo.setTitle(request.getParameter("title"));
		vo.setContent(request.getParameter("content"));
		
		dao.Insert(vo);

		try {
			response.sendRedirect(request.getContextPath() + "/board.do");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
}

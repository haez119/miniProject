package co.mini.board.command;

import java.io.IOException;

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

//		vo.setNo(request.parseInt(getParameter("no")));
		vo.setCategory(request.getParameter("category"));
		vo.setTitle(request.getParameter("title"));
		vo.setContent(request.getParameter("content"));
		vo.setId(request.getParameter("id"));
		vo.setAnswer(request.getParameter("answer"));
		vo.setShow(request.getParameter("show"));

		dao.insert(vo);

		try {
			response.sendRedirect(request.getContextPath() + "/board.do");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
}

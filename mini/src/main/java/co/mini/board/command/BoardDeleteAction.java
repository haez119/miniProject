package co.mini.board.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;
import co.mini.dao.BoardDAO;
import co.mini.vo.BoardVO;

public class BoardDeleteAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 글삭제
		BoardDAO dao = new BoardDAO();
		BoardVO vo = new BoardVO();
		
		vo.setNo(Integer.parseInt(request.getParameter("no")));
		
		 dao.delete(vo);
		
		 try {
				response.sendRedirect(request.getContextPath()+"/board.do");
			} catch (IOException e) {
				e.printStackTrace();
			}
			return null;
	}

}
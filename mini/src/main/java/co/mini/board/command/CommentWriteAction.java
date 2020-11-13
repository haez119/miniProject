package co.mini.board.command;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;
import co.mini.dao.CommentDAO;
import co.mini.vo.CommentVO;

public class CommentWriteAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		CommentDAO dao = new CommentDAO();
		CommentVO vo = new CommentVO();
		
		vo.setContent(request.getParameter("content"));
		vo.setId(request.getParameter("id"));
		vo.setPassword(request.getParameter("password"));
		//vo.setComment_date(Date.valueOf(request.getParameter("comment_date")));
		
		dao.Insert(vo);
		
		try {
			response.sendRedirect(request.getContextPath() + "/boardView.do");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}

}

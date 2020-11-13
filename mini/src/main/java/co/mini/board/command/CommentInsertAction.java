package co.mini.board.command;

import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.common.Action;
import co.mini.dao.CommentDAO;
import co.mini.vo.CommentVO;

public class CommentInsertAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		long day = System.currentTimeMillis();
		System.out.println(day);
		SimpleDateFormat simpl2 = new SimpleDateFormat("yyyy-MM-dd");
		String d = simpl2.format(day);
		
		
		HttpSession session = request.getSession(false);
		String id = (String) session.getAttribute("id");
		String name = (String) session.getAttribute("name");
		CommentDAO coDAO= new CommentDAO();
		CommentVO vo = new CommentVO();
		
		vo.setId(id);
		vo.setName(name);
		vo.setComment_date(d);
		vo.setContent(request.getParameter("content"));
		coDAO.Insert(vo);
		
		
		return "boardView.do";
	}

}

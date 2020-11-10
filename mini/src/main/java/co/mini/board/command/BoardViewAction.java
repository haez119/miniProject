package co.mini.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;
import co.mini.dao.BoardDAO;
import co.mini.vo.BoardVO;

public class BoardViewAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// View페이지로 이동
		BoardDAO dao = new BoardDAO();
		BoardVO vo = new BoardVO();
		int no = Integer.parseInt(request.getParameter("no"));
		
		System.out.println(no);
		
		vo.setNo(no);		
		
		dao.update_hit(vo);
	
		vo = dao.select(vo);
		System.out.println(vo);
		request.setAttribute("vo", vo);
		return "/jsp/board/boardView.jsp";
	}

}

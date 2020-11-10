package co.mini.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;
import co.mini.dao.NoticeDAO;
import co.mini.vo.NoticeVO;

public class Notice implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		NoticeVO vo = new NoticeVO();
		NoticeDAO dao = new NoticeDAO();
		
		int b_no = Integer.parseInt(request.getParameter("bno"));
		
		vo = dao.detail_select(b_no);
		
		request.setAttribute("vo", vo);
		
		request.setAttribute("vo", vo); 
		
		// 상세화면
		return  "jsp/board/noticeDetail.jsp";
	}

}

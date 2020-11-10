package co.mini.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;

public class Notice implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		
		// 상세화면
		return  "jsp/board/noticeDetail.jsp";
	}

}

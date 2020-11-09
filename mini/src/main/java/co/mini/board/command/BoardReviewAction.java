package co.mini.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;

public class BoardReviewAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 리뷰페이지로 이동
		return "/jsp/board/boardReview.jsp";
	}

}

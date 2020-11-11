package co.mini.controllor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;

public class BoardReviewWriteFormAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 리뷰 작성페이지 이동
		return "/jsp/board/boardreviewWrite.jsp";
	}

}

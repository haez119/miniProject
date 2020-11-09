package co.mini.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;

public class ReviewBoardAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// review 테이블에 삽입
		return null;
	}

}

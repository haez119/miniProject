package co.mini.controllor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;

public class BoardWriteFormAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 글등록 페이지 이동
		return "jsp/admin/info/boardWrite.jsp.jsp";
	}

}

package co.mini.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;
import co.mini.dao.MemberDao;
import co.mini.vo.MemberVO;

public class CheckAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberDao dao= new  MemberDao();
		MemberVO vo = new MemberVO();
		
		vo=dao.chkid(request.getParameter("id"));
		
		if (vo.getId()==null) { //중복이라면 
			request.setAttribute("ch","ch");//문자를 넘긴다
		} else {
			request.setAttribute("chfail","chfail"); //문자를 넘긴다
		}
		
		
		
		return "memberInsert.do";
	}

}

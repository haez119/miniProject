package co.mini.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.common.Action;
import co.mini.dao.MemberDao;
import co.mini.dao.ReservationDAO;
import co.mini.vo.MemberVO;

public class LoginAction implements Action {


	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		//로그인 인증과정을 처리
		MemberDao dao = new MemberDao();
		
		
		MemberVO vo = new MemberVO();
		
//		ReservationDAO rd = new ReservationDAO();
//		rd.sId = request.getParameter("id");

		
		// String msq;
		vo.setId(request.getParameter("id"));
		vo.setPassword(request.getParameter("password"));
		
		vo = dao.login(vo);  //MemberDao 를 실행시킨다.
		
		HttpSession session = request.getSession(false);
		 session.setAttribute("id", vo.getId());
	     session.setAttribute("name", vo.getName());
	     session.setAttribute("password", vo.getPassword());
	     
	     request.setAttribute("vo", vo); 
	     
	     return "jsp/main/loginResult.jsp";	    	 
	     
	}

}

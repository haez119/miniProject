package co.mini.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.board.common.Action;
import co.mini.board.dao.MemberDao;
import co.mini.board.vo.MemberVO;

public class LoginAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
//로그인 인증과정을 처리
		MemberDao dao = new MemberDao();
		MemberVO vo = new MemberVO();
		HttpSession session = request.getSession(false);
		String msq;
		vo.setId(request.getParameter("id"));
//		vo.setPassword(request.getParameter("password"));
		
		vo = dao.select(vo);  //MemberDao 를 실행시킨다.
		
		if(vo.getPassword().equals(request.getParameter("password"))) {;
			session.setAttribute("id", vo.getId());
			session.setAttribute("name", vo.getName());
			session.setAttribute("phone", vo.getPhone());
			session.setAttribute("email", vo.getEmail());
			msq = "정상적인 로그인";
			request.setAttribute("msg", msq);
			request.setAttribute("vo", vo);	
		}
		else {
			msq = "패스워드가 틀렸습니다 다시 입력해주세요.";
			request.setAttribute("msg", msq);
		}
		
		return "jsp/main/loginResult.jsp";
	}

}

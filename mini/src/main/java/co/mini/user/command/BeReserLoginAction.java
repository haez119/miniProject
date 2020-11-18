package co.mini.user.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;
import co.mini.dao.BeMemberDAO;
import co.mini.vo.be_memberVO;

public class BeReserLoginAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 로그인 조회 처리
		
		BeMemberDAO dao = new BeMemberDAO();
		be_memberVO vo = new be_memberVO();
		
		int no = Integer.parseInt(request.getParameter("id"));
		String password = request.getParameter("password");
		
	
		vo = dao.login(no, password);
		request.setAttribute("vo", vo);

		
		
		
		return  "jsp/main/beReserv.jsp";
	}

}

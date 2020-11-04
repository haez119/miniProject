package co.mini.user.command;




import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.common.Action;
import co.mini.dao.MemberDao;

import co.mini.vo.MemberVO;


public class ReUpdateAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		MemberDao dao = new MemberDao();
		MemberVO vo = new MemberVO();
		
		
		HttpSession session = request.getSession(false);
		String id = (String) session.getAttribute("id");
		
		vo = dao.memUpdate(id);
		request.setAttribute("vo", vo);
		
		
		return "jsp/user/userUpdate.jsp";
	}

}

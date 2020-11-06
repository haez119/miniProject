package co.mini.owner.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.common.Action;
import co.mini.dao.OwnerDAO;
import co.mini.vo.OwnerVO;

public class ownerLogin implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		// 사장님 아이디 맞는지 확인
		
		OwnerDAO dao = new OwnerDAO();
		OwnerVO vo = new OwnerVO();
		
		vo.setId(request.getParameter("id"));
		vo.setPassword(request.getParameter("password"));
		
		vo = dao.login(vo);
		
		HttpSession session = request.getSession(false);
		
		session.setAttribute("id", vo.getId());
	    session.setAttribute("password", vo.getPassword());
	    session.setAttribute("name", vo.getName());
	    session.setAttribute("branch_name", vo.getBranch_name()); // 지점명 담기
	    session.setAttribute("branch_no", vo.getBranch_no()); // 지점번호 세션에 담기
		
	    request.setAttribute("vo", vo); 

		
		return "jsp/owner/ownerLoginForm.jsp";
	}

}

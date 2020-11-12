package co.mini.user.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.common.Action;
import co.mini.dao.BeMemberDAO;
import co.mini.vo.be_memberVO;

public class BeReservList implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 비회원 조회
		
		BeMemberDAO dao = new BeMemberDAO();
		be_memberVO vo = new be_memberVO();
		
		HttpSession session =request.getSession(false);
		int max = (int)session.getAttribute("max");
	
		
		System.out.println("get하기 " + max);
		
		
		vo = dao.reserv(max);
		
		request.setAttribute("vo", vo);
		
		return  "jsp/main/beReserv.jsp";
	}

}

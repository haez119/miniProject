package co.mini.thema.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.common.Action;
import co.mini.dao.EventDAO;
import co.mini.dao.MemberDao;
import co.mini.dao.ThemaDao;
import co.mini.vo.EventVO;
import co.mini.vo.MemberVO;
import co.mini.vo.ThemaVO;

public class reserveAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		//테마넘버와
		//이용시간
		int thema_no = Integer.parseInt(request.getParameter("thema_no"));
		ThemaVO thVO=new ThemaVO();
		
		//테마이름 지점명 이미지 다넘기는 리퀘스트
		ThemaDao dao = new ThemaDao();
		thVO=dao.reserve_thema(thema_no);
		request.setAttribute("thVO",thVO );
		
		EventVO eventvo= new EventVO();
		EventDAO eventDao = new EventDAO();
		eventvo=eventDao.event_thema(request.getParameter("date"));
		
		request.setAttribute("eventvo", eventvo);

		HttpSession session =request.getSession(false);
		String id = (String)session.getAttribute("id");
		
		
		MemberDao memDao= new MemberDao();
		MemberVO meVo= new MemberVO();
		meVo=memDao.memUpdate(id);
		request.setAttribute("meVo", meVo);
		
		return "jsp/thema/reserve.jsp";
	}

}

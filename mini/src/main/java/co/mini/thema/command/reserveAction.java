package co.mini.thema.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;
import co.mini.dao.ThemaDao;
import co.mini.vo.ScheduleVo;
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
		thVO.setDate(request.getParameter("date"));
		request.setAttribute("thVO",thVO );
		
		
		
		return "jsp/thema/reserve.jsp";
	}

}

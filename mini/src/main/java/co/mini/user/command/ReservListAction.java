package co.mini.user.command;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.board.command.Paging;
import co.mini.common.Action;
import co.mini.dao.ReservationDAO;
import co.mini.dao.ReviewDAO;

public class ReservListAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		// 테이블로 
		ReservationDAO dao = new ReservationDAO();
		ArrayList<HashMap<String, Object>> list = new ArrayList<HashMap<String, Object>>();
		
		HttpSession session = request.getSession(false);
		String id = (String) session.getAttribute("id");
		String password = (String) session.getAttribute("password");
		String name = (String) session.getAttribute("name");
		
		
		String strp = request.getParameter("p");
	
		int p = 1;
		
		if(strp != null && !strp.equals("")) {
			p = Integer.parseInt(strp);
		}
		
		Paging paging = new Paging();
		paging.setPageUnit(5); // 한페이지에 5건씩. 생략시 기본10
		paging.setPageSize(3); // 페이지 번호 수 이전 123 다음 . 기본10
		paging.setPage(p); // 현재 페이지 지정
		
		int first = paging.getFirst();
		int last = paging.getLast();
		
		ReservationDAO cntDao = new ReservationDAO();
		
		
		
		paging.setTotalRecord(cntDao.count(id));
		
		request.setAttribute("paging", paging);
		
		list = dao.pageSel(first, last, id);
		
		
		//list = dao.selectMap(id);
		
		ArrayList<HashMap<String, Object>> rlist = new ArrayList<HashMap<String, Object>>();
		ReviewDAO rDao = new ReviewDAO();
		
		rlist = rDao.btnDis();
		
		
		session.setAttribute("id", id);	
		request.setAttribute("reservs", list);
		request.setAttribute("rlist", rlist);
		
		
		return "jsp/user/reservation.jsp";
	}

}
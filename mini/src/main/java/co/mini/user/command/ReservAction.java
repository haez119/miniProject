package co.mini.user.command;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.common.Action;
import co.mini.dao.ReservationDAO;
import co.mini.vo.ReservationVO;

public class ReservAction implements Action {
	
	// 상세내역
	
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		ReservationDAO dao = new ReservationDAO(); // 인스턴스 이름 권장사항은 => memberDao
		
		ArrayList<HashMap<String, Object>> list = new ArrayList<HashMap<String, Object>>();
		
		
		int no = Integer.parseInt(request.getParameter("rno"));
		list = dao.reSelect(no);

		request.setAttribute("reservs", list); // members => jsp에서 items와 같음
		
		return "jsp/user/userReserve.jsp";
		
	}

}

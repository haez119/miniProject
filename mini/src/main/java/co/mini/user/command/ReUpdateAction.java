package co.mini.user.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.common.Action;
import co.mini.dao.ReservationDAO;
import co.mini.vo.ReservationVO;

public class ReUpdateAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		ReservationDAO dao = new ReservationDAO(); // 인스턴스 이름 권장사항은 => memberDao
		
		List<ReservationVO> list = new ArrayList<ReservationVO>();
		
		HttpSession session = request.getSession(false);
		String id = (String) session.getAttribute("id");
		
		list = dao.selectAll(id);
		request.setAttribute("res", list);
		
		
		return "jsp/user/userUpdate.jsp";
	}

}

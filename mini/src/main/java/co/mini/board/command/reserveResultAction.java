package co.mini.board.command;

import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.common.Action;
import co.mini.dao.MemberDao;
import co.mini.dao.ThemaDao;
import co.mini.vo.MemberVO;
import co.mini.vo.ReservationVO;

public class reserveResultAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		ThemaDao themadao = new ThemaDao();
		ReservationVO reservevo = new ReservationVO();
		
		
		HttpSession session =request.getSession(false);
		String id = (String)session.getAttribute("id");
		
		reservevo.setId(id);
		reservevo.setReservDate(request.getParameter("date"));
		reservevo.setPersonnel(Integer.parseInt(request.getParameter("person")));
		reservevo.setPrice(Integer.parseInt(request.getParameter("price")));
		reservevo.setPayment(request.getParameter("payment"));
		reservevo.setThemaNo(Integer.parseInt(request.getParameter("thema_no")));
		reservevo.setTime(request.getParameter("time"));
		
		int n = themadao.insert(reservevo);
		String page;  
		if(n != 0) {
			page ="reservation.do";
			
		} else {
			page = "jsp/thema/reserveFail.jsp";
		}
		
		return page;
			
		
	}

}

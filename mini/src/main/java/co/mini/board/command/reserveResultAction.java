package co.mini.board.command;

import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.common.Action;
import co.mini.dao.MemberDao;
import co.mini.dao.ReservationDAO;
import co.mini.dao.ThemaDao;
import co.mini.vo.MemberVO;
import co.mini.vo.ReservationVO;
import co.mini.vo.be_memberVO;

public class reserveResultAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		ThemaDao themadao = new ThemaDao();
		ReservationVO reservevo = new ReservationVO();
		be_memberVO bmemberVo = new be_memberVO();
		
		HttpSession session =request.getSession(false);
		String id = (String)session.getAttribute("id");
		int n=0;
		int b=0;
		int max =0;
		
		if(id!=null) {
		reservevo.setId(id);
		reservevo.setReservDate(request.getParameter("date"));
		reservevo.setPersonnel(Integer.parseInt(request.getParameter("personnel")));
		reservevo.setPrice(Integer.parseInt(request.getParameter("price")));
		reservevo.setPayment(request.getParameter("payment"));
		reservevo.setThemaNo(Integer.parseInt(request.getParameter("thema_no")));
		reservevo.setTime(request.getParameter("time"));
		
		n = themadao.insert(reservevo);
		}else {

			reservevo.setReservDate(request.getParameter("date"));
			reservevo.setPersonnel(Integer.parseInt(request.getParameter("personnel")));
			reservevo.setPrice(Integer.parseInt(request.getParameter("price")));
			reservevo.setPayment(request.getParameter("payment"));
			reservevo.setThemaNo(Integer.parseInt(request.getParameter("thema_no")));
			reservevo.setTime(request.getParameter("time"));
			n = themadao.insert(reservevo);
			
			ReservationDAO reDao = new ReservationDAO();
			max = reDao.reservMax();
			
			
			bmemberVo.setName(request.getParameter("name"));
			bmemberVo.setBranch_name(request.getParameter("branch_name"));
			bmemberVo.setThema_name(request.getParameter("thema_name"));
			bmemberVo.setReservdate(request.getParameter("date"));
			bmemberVo.setTime(request.getParameter("time"));
			bmemberVo.setPersonnel(Integer.parseInt(request.getParameter("personnel")));
			bmemberVo.setPhone(request.getParameter("phone"));
			bmemberVo.setPassword(request.getParameter("password"));
			bmemberVo.setPrice(Integer.parseInt(request.getParameter("price")));
			
			b = themadao.be_member_insert(bmemberVo, max);
			
		}
		
		
		String page;  
		if(id!=null) {
		if(n != 0) {
			page ="reservation.do";
		} else {
			page = "jsp/thema/reserveFail.jsp";
		}
		}else {
			if(n != 0 && b!=0) {
				page ="bereservation.do";
				
			} else {
				page = "jsp/thema/reserveFail.jsp";
			}
		}

		session.setAttribute("max", max);

		return page;
			
		
	}

}

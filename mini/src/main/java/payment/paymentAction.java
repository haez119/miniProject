package payment;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.common.Action;
import co.mini.dao.ThemaDao;
import co.mini.vo.ReservationVO;

public class paymentAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		ThemaDao themadao=new ThemaDao();
		themadao.update_pay(Integer.parseInt(request.getParameter("no")));
		HttpSession session = request.getSession(false);
		themadao=new ThemaDao();  
	    String id = (String) session.getAttribute("id");
	    themadao.update_rank(id);
		return "reservation.do";
	}

}

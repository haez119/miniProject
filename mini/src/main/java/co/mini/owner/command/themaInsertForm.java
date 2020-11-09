package co.mini.owner.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.common.Action;
import co.mini.dao.OwnerDAO;
import co.mini.vo.OwnerVO;

public class themaInsertForm implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	
		HttpSession session = request.getSession(false);
		int branch_no = (int) session.getAttribute("branch_no");
		
		request.setAttribute("branch_no", branch_no);
		
		return "jsp/owner/themaInsert.jsp";  
		
		
		
	}

}

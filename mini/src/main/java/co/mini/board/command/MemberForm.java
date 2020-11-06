package co.mini.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;
import co.mini.dao.OwnerDAO;



public class MemberForm implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		// max값 넘겨주고
		
		OwnerDAO dao = new OwnerDAO();
		
		int max = dao.maxBranchNo();
		
		request.setAttribute("max", max); 
		
		return "jsp/main/memberForm.jsp";
	}

}
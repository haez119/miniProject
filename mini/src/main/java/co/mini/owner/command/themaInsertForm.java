package co.mini.owner.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;
import co.mini.dao.OwnerDAO;
import co.mini.vo.OwnerVO;

public class themaInsertForm implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		OwnerDAO owner = new OwnerDAO();
		int branch_no ;
		branch_no=owner.maxBranchNo();
		request.setAttribute("branch_no", branch_no);
		
		return "jsp/owner/themaInsert.jsp";  
		
		
		
	}

}

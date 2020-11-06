package co.mini.owner.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;
import co.mini.dao.OwnerDAO;
import co.mini.vo.OwnerVO;

public class OwnerInsertAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		OwnerDAO dao = new OwnerDAO();
		OwnerVO vo = new OwnerVO();
		
		int no = dao.maxBranchNo();
		String id = "admin" + no; 
		
		vo.setId(id);
		vo.setBranch_no(no);
		vo.setBranch_name(request.getParameter("branch_name"));
		vo.setName(request.getParameter("name"));
		vo.setPassword(request.getParameter("password"));
		vo.setTel(request.getParameter("tel"));
		vo.setAddress(request.getParameter("address"));
		
		dao = new OwnerDAO();
		
		int r = dao.ownerInsert(vo);		
		
		if(r == 1) {
			r = 1;
		} else {
			r = 2;
		}
		
		request.setAttribute("r", r); 
		
		
		return "jsp/main/loginForm.jsp";
	}

}

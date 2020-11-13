package co.mini.owner.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.common.Action;
import co.mini.dao.OwnerDAO;
import co.mini.vo.OwnerVO;

public class OwnerUpdateView implements Action{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		OwnerDAO dao = new OwnerDAO();
		OwnerVO vo = new OwnerVO();
		
		HttpSession session = request.getSession(false);
		String id = (String) session.getAttribute("id");
		
		vo = dao.select_id(id);
		
		request.setAttribute("vo", vo); 

		
		return "jsp/owner/ownerUpdate.jsp";
	}

}

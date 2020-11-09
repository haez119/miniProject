package co.mini.owner.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.common.Action;
import co.mini.dao.ThemaDao;
import co.mini.vo.ThemaDisVo;
import co.mini.vo.ThemaVO;

public class ownerThemaListAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession(false);
	      
	    int branch_no = (int) session.getAttribute("branch_no");
		
		
		ThemaDao themadao = new ThemaDao();
		ThemaVO themavo = new ThemaVO();
		List<ThemaVO> themaList;
		themaList = themadao.mybranchList(branch_no);
		request.setAttribute("themaList", themaList);
		return "jsp/owner/ownerThemaList.jsp";
	}

}

package co.mini.owner.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;
import co.mini.dao.ThemaDao;
import co.mini.vo.ThemaVO;

public class themaDelete implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		ThemaDao themadao= new ThemaDao();
		int n = themadao.Delete_Thema(Integer.parseInt(request.getParameter("thema_no")));
		

		String page;
		if(n !=0) {
		page = "redirect:reserveList.do"; // 성공하면 리스트 화면 보여주기
		} else {
		page = "jsp/owner/themaInsert.jsp"; // 실패하면 fail 페이지 보여주기
		request.setAttribute("fail", "fail");
		}

		
		return page;
	}

}

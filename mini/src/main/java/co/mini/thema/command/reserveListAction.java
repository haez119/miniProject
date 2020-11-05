package co.mini.thema.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;
import co.mini.dao.ThemaDao;
import co.mini.vo.ThemaDisVo;

public class reserveListAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		ThemaDao themadao = new ThemaDao();
		ThemaDisVo disvo = new ThemaDisVo();
		List<ThemaDisVo> themaDisList;
		themaDisList=themadao.DisThemaList();
		request.setAttribute("themaDisList", themaDisList);
		
		
		return "jsp/thema/themalist.jsp";
	}

}

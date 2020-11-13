package co.mini.thema.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;
import co.mini.dao.ThemaDao;
import co.mini.vo.ThemaDisVo;

public class themaDisAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		ThemaDao themadao = new ThemaDao();
		ThemaDisVo vo = new ThemaDisVo();
		vo=themadao.DisThema(request.getParameter("thema_name"));
		
		if(vo.getThema_img() != null) {
			request.setAttribute("themadis","themadis");	
		 request.setAttribute("vo", vo);
		}else {
			 request.setAttribute("themafail","themafail");
		}
		
		
		
		return "themaInsertForm.do";
	}

}

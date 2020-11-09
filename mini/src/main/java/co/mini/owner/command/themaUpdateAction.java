package co.mini.owner.command;

import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;
import co.mini.dao.ThemaDao;
import co.mini.vo.ScheduleVo;
import co.mini.vo.ThemaVO;

public class themaUpdateAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		ThemaDao themadao=new ThemaDao();
		ThemaVO themaVo= new ThemaVO();
		themaVo.setThema_no(Integer.parseInt(request.getParameter("thema_no")));
		themaVo.setThema_name(request.getParameter("thema_name"));
		themaVo.setThema_intro(request.getParameter("thema_intro"));
		themaVo.setLevel2(Integer.parseInt(request.getParameter("level2")));
		themaVo.setMax_per(Integer.parseInt(request.getParameter("max_per")));
		int n=themadao.update_Thema(themaVo);
		
		int thema_no=Integer.parseInt(request.getParameter("thema_no"));
		ArrayList<String> list = new ArrayList<>(Arrays.asList(request.getParameterValues("time")));
		
		themadao = new ThemaDao();
		themadao.Delete_schedule(thema_no);
		
		for(String str : list) {
			themadao = new ThemaDao();
			themadao.insert_Schedule(new ScheduleVo(thema_no,str));
		}
		
		String page;
		if(n !=0) {
		page = "redirect:ownerThemaList.do"; // 성공하면 리스트 화면 보여주기
		} else {
		page = "redirect:ownerThemaList.do"; // 실패하면 fail 페이지 보여주기
		request.setAttribute("fail2", "fail");
		}
		return page;
	}

}

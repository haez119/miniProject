package co.mini.owner.command;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;
import co.mini.dao.ThemaDao;
import co.mini.vo.ScheduleVo;
import co.mini.vo.ThemaVO;

public class ownerthemaUpdateAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		ThemaVO themaVo= new ThemaVO();
		themaVo.setThema_no(Integer.parseInt(request.getParameter("thema_no")));
		themaVo.setThema_name(request.getParameter("thema_name"));
		themaVo.setThema_intro(request.getParameter("thema_intro"));
		themaVo.setLevel2(Integer.parseInt(request.getParameter("level2")));
		
		ThemaDao themaDao= new ThemaDao();
		List<String> list = new ArrayList<String>();
		list=themaDao.selectTime(themaVo);
		
		int size=0;
		String[] array = new String[list.size()];

		for(String temp : list){

		  array[size++] = temp;

		}
		
		
		
		request.setAttribute("themaVo", themaVo);
		request.setAttribute("list", Arrays.toString(array));
		return "jsp/owner/themaUpdate.jsp";
	}

}

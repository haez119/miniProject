package co.mini.thema.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;
import co.mini.dao.EventDAO;
import co.mini.dao.ThemaDao;
import co.mini.vo.EventVO;
import co.mini.vo.ThemaDisVo;
import co.mini.vo.ThemaVO;

public class mainAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		//이벤트 이미지 받는거
		//테마 디스틴트
		//테마 지점명 담긴거 
    ThemaDao themaDao= new ThemaDao();
    List<ThemaDisVo> themaDisList;//테마이름의 중복을 제거한 리스트
	themaDisList=themaDao.DisThemaList();//테마이름의 중복을 제거한 리스트
	request.setAttribute("themaDisList", themaDisList); 
	
	EventDAO eventDao = new EventDAO();
	List<EventVO> eventList =eventDao.selectAll();
	
	themaDao= new ThemaDao();
	List<ThemaVO> list;
	list=themaDao.selectThema();
	
		
	request.setAttribute("themaDisList", themaDisList);	
	request.setAttribute("eventList", eventList);	
	request.setAttribute("list", list);	
		
		
		
		
		
		return "jsp/main/home.jsp";
	}

}

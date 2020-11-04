package co.mini.thema.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.common.Action;
import co.mini.dao.MemberDao;
import co.mini.dao.ThemaDao;
import co.mini.vo.MemberVO;
import co.mini.vo.ScheduleVo;
import co.mini.vo.ThemaDisVo;
import co.mini.vo.ThemaVO;

public class reserveInsertAction implements Action{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		//테마 관련
		ThemaVO themaVo = new ThemaVO();//테마의 정보와 이용시간을 담을 vo
		List<ThemaDisVo> themaDisList;//테마이름의 중복을 제거한 리스트
		ThemaDao themaDao = new ThemaDao();//테마를 구현하기위한 dao
		List<ThemaVO> themaList;//테마테이블에 담겨있는 정보를 담을 리스트
		themaList=themaDao.selectThema(); // 테마테이블과 오너테이블의 조인 
		//이용시간
		List<ScheduleVo> scheduleList;//이용시간을 담을 리스트
		ScheduleVo scheduleVo=new ScheduleVo();//이용시간과 테마번호를 담을 vo
		
		themaDao = new ThemaDao();
		themaDisList=themaDao.DisThemaList();//테마이름의 중복을 제거한 리스트
		
		
		
		for(ThemaVO thvo : themaList) {
			themaDao = new ThemaDao();
			thvo.setSchedulelist(themaDao.selectSchedule(thvo));//테마객체에 번호를 받아서 이용시간 리스트를 넣어주는 부분
			
		}
		
		request.setAttribute("themaList", themaList); 
		request.setAttribute("themaDisList", themaDisList); 
		return "jsp/thema/reserveInsert.jsp";
	}

}

package co.mini.thema.command;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;
import co.mini.dao.ThemaDao;
import co.mini.vo.ScheduleVo;
import co.mini.vo.ThemaDisVo;
import co.mini.vo.ThemaVO;

public class reserveInsertAction implements Action{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		//테마 관련
		ThemaVO themaVo = new ThemaVO();//테마의 정보와 이용시간을 담을 vo
		
		
		ThemaDao themaDao = new ThemaDao();//테마를 구현하기위한 dao
		List<ThemaDisVo> themaDisList;//테마이름의 중복을 제거한 리스트
		themaDisList=themaDao.DisThemaList();//테마이름의 중복을 제거한 리스트
		
		themaDao = new ThemaDao();
		List<ThemaVO> themaList;//테마테이블에 담겨있는 정보를 담을 리스트
		themaList=themaDao.selectThema(); // 테마테이블과 오너테이블의 조인 
		
		themaDao = new ThemaDao();
		List<ThemaVO> themareserveList;//테마테이블에 담겨있는 정보를 담을 리스트
		themareserveList=themaDao.selectThema(); // 테마테이블과 오너테이블의 조인 
		
		//이용시간
		List<ScheduleVo> scheduleList = new ArrayList<ScheduleVo>();//이용시간을 담을 리스트
		ScheduleVo scheduleVo=new ScheduleVo();//이용시간과 테마번호를 담을 vo
		
		
		long time = System.currentTimeMillis();
		System.out.println(time);
		SimpleDateFormat simpl = new SimpleDateFormat("kkmm");
		String s = simpl.format(time);
		
		
		
		long day = System.currentTimeMillis();
		System.out.println(day);
		SimpleDateFormat simpl2 = new SimpleDateFormat("yyyy-MM-dd");
		String d = simpl2.format(day);
		String sysday = request.getParameter("sysday");
		
		
		for(ThemaVO thvo : themaList) {
			themaDao = new ThemaDao();
			thvo.setSchedulelist(themaDao.failSchedule(thvo));//테마객체에 번호를 받아서 이용시간 리스트를 넣어주는 부분
		}
		
		if(sysday==null) {
			for(ThemaVO thvo : themareserveList) {
				themaDao = new ThemaDao();
	
				thvo.setSchedulelist(themaDao.ReserveSchedule(thvo,d));//테마객체에 번호를 받아서 이용시간 리스트를 넣어주는 부분
				
			}
			}else {
				for(ThemaVO thvo : themareserveList) {
					themaDao = new ThemaDao();
					thvo.setSchedulelist(themaDao.ReserveSchedule(thvo,sysday));//테마객체에 번호를 받아서 이용시간 리스트를 넣어주는 부분
					
				}
			}
		
		
		
		request.setAttribute("nextday", sysday); 
		request.setAttribute("themareserveList", themareserveList);
		request.setAttribute("themaList", themaList); 
		request.setAttribute("themaDisList", themaDisList); 
		request.setAttribute("date_time",s );
		request.setAttribute("date_day",d );
		return "jsp/thema/reserveInsert.jsp";
	}

}

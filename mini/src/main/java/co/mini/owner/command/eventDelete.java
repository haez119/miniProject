//package co.mini.owner.command;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import co.mini.common.Action;
//import co.mini.dao.EventDAO;
//import co.mini.vo.EventVO;
//
//public class eventDelete implements Action {
//
//	@Override
//	public String exec(HttpServletRequest request, HttpServletResponse response) {
//		EventDAO dao = new EventDAO();
//		
//		//int n = dao.delete(Integer.parseInt(request.getParameter("event_no")));
//	
//		String page;
//		if(n !=0) {
//		page = "redirect:eventUpdateList.do"; // 성공하면 리스트 화면 보여주기
//		} else {
//		page = "eventUpdateList.do"; // 실패하면 fail 페이지 보여주기
//		request.setAttribute("fail", "fail");
//	}
//
//		
//		//return page;
//	}
//	
//}

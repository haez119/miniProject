package co.mini.owner.command;

import java.io.File;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import co.mini.common.Action;
import co.mini.common.FileRenamePolicy;
import co.mini.common.FileUtil;
import co.mini.dao.EventDAO;
import co.mini.vo.EventVO;

public class EventInsertAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		EventVO eventVo = new EventVO();
		EventDAO eventDao = new EventDAO();
	
//		eventVo.setBranch_no(Integer.parseInt(request.getParameter("branch_no")));
//		eventVo.setEvent_no(Integer.parseInt(request.getParameter("event_no")));
//		eventVo.setEvent_content(request.getParameter("event_content"));
//		eventVo.setEvent_name(request.getParameter("event_name"));
//		eventVo.setImg(request.getParameter("img"));
//		eventVo.setStart_event(Date.valueOf(request.getParameter("start_event")));
//		eventVo.setEvent_term(Integer.parseInt(request.getParameter("event_term")));
//		eventVo.setSale(Double.parseDouble(request.getParameter("sale")));
		
		
		String branch_no =request.getParameter("branch_no");
		
		String event_name = request.getParameter("event_name");
		//String img = request.getParameter("img");
		String event_content = request.getParameter("event_content");
		String start_event = request.getParameter("start_event");
		String event_term = request.getParameter("event_term");
		String sale = request.getParameter("sale"); //파라미터 추출 그냥 다 스트링으로 받음 
		
		if(event_content.isEmpty() || event_name.isEmpty() || start_event.isEmpty() || event_term.isEmpty() || sale.isEmpty()) {
			request.setAttribute("msg", "다시 입력해주세요 ");
			return "/jsp/event/eventInsert.jsp";
		}
		eventVo.setBranch_no(Integer.parseInt(branch_no)); //여기서 값을 변경해줘야함
		
		eventVo.setEvent_name(event_name);
		//eventVo.setImg(img);
		eventVo.setEvent_content(event_content);
		eventVo.setStart_event(Date.valueOf(start_event));
		eventVo.setEvent_term(Integer.parseInt(event_term));
		eventVo.setSale(Double.parseDouble(sale));
		

		
		try {
			String addPath = request.getServletContext().getRealPath("/img");
			Part part = request.getPart("img");
			String fileName = FileUtil.extractFileName(part);
			if (!fileName.equals("")) {
				String uploadFile = addPath + File.separator + fileName; // File.separator 구분기호?
				File renameFile = FileRenamePolicy.rename(new File(uploadFile));
				part.write(renameFile.getAbsolutePath()); // 절대경로
				eventVo.setImg(renameFile.getName());

			} else {
				return "/jsp/event/eventInsert.jsp";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		int vo = eventDao.insert(eventVo);// 이벤트디에이오라는 클래스에 있는 메소드를 실행시키는거

		String page;
		if (vo != 0) {
			page = "eventUpdateList.do";
		} else {
			page = "/jsp/event/eventInsert.jsp"; 
			request.setAttribute("vo", vo);
		}

		return page;
	}

}

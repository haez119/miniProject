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

		eventVo.setBranch_no(Integer.parseInt(request.getParameter("branch_no")));
		eventVo.setEvent_no(Integer.parseInt(request.getParameter("event_no")));
		eventVo.setEvent_name(request.getParameter("event_name"));
		eventVo.setImg("img");
		// eventVo.setImg(request.getParameter("event_img"));
		eventVo.setEvent_content(request.getParameter("event_content"));
		eventVo.setStart_event(Date.valueOf(request.getParameter("start_event")));
		eventVo.setEvent_term(Integer.parseInt(request.getParameter("event_term")));
		eventVo.setSale(Double.parseDouble(request.getParameter("sale")));

		try {
			String addPath = request.getServletContext().getRealPath("/img");
			Part part = request.getPart("img");
			String fileName = FileUtil.extractFileName(part);
			if (!fileName.equals("")) {
				String uploadFile = addPath + File.separator + fileName; // File.separator 구분기호?
				File renameFile = FileRenamePolicy.rename(new File(uploadFile));
				part.write(renameFile.getAbsolutePath()); // 절대경로
				eventVo.setImg(renameFile.getName());
				// vo.setImg(request.getParameter("img")); 이거 아니야
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		int vo = eventDao.insert(eventVo);// 이벤트디에이오라는 클래스에 있는 메소드를 실행시키는거
		
		String page;
		if(vo !=0) {
		page = "redirect:eventlist.do"; // 성공하면 리스트 화면 보여주기
		} else {
		page = "jsp/event/eventInsert.jsp"; // 실패하면 fail 페이지 보여주기
		request.setAttribute("fail", "fail");
		}

		
		
		return page;
	}

}

package co.mini.owner.command;

import java.io.File;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import co.mini.common.Action;
import co.mini.common.FileRenamePolicy;
import co.mini.common.FileUtil;
import co.mini.dao.EventDAO;
import co.mini.dao.ThemaDao;
import co.mini.vo.EventVO;
import co.mini.vo.ThemaVO;

public class EventInsertAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		EventVO eventVo= new EventVO();
		EventDAO eventDao = new EventDAO();
		int event_no = EventDAO.maxevent();
		HttpSession session = request.getSession(false);
		
		eventVo.setBranch_no(Integer.parseInt(request.getParameter("branch_no")));
		eventVo.setEvent_no(Integer.parseInt(request.getParameter("event_no")));
		eventVo.setEvent_name(request.getParameter("event_name"));
		eventVo.setImg(request.getParameter("img"));
		eventVo.setEvent_content(request.getParameter("event_content"));
		eventVo.setStart_event(Date.valueOf(request.getParameter("start_event")));
		eventVo.setLast_event(Date.valueOf(request.getParameter("last_event")));
		eventVo.setSale(Integer.parseInt(request.getParameter("sale")));
		eventDao = new EventDAO();
		
		try {
			String addPath = request.getServletContext().getRealPath("/img");
			Part part = request.getPart("event_img");
			String fileName = FileUtil.extractFileName(part);
			if(!fileName.equals("")) {
				String uploadFile = addPath + File.separator + fileName;
				File renameFile = FileRenamePolicy.rename(new File(uploadFile));
				part.write(renameFile.getAbsolutePath());
				eventVo.setImg(renameFile.getName());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		int n = eventDao.insert(eventVo);
		
		
		
	
		return "redirect:evenList.do";
	}

}

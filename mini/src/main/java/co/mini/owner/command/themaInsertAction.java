package co.mini.owner.command;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import co.mini.common.Action;
import co.mini.common.FileRenamePolicy;
import co.mini.common.FileUtil;
import co.mini.dao.ThemaDao;
import co.mini.vo.ScheduleVo;
import co.mini.vo.ThemaVO;

public class themaInsertAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		ThemaVO themaVo= new ThemaVO();
		ThemaDao themaDao = new ThemaDao();
		int thema_no = themaDao.thema_maxthema_no();
		HttpSession session = request.getSession(false);
	      
	    int branch_no = (int) session.getAttribute("branch_no");
		themaVo.setBranch_no(branch_no);
		themaVo.setThema_no(thema_no);
		themaVo.setThema_name(request.getParameter("thema_name"));
		themaVo.setThema_img(request.getParameter("img"));
		themaVo.setThema_intro(request.getParameter("thema_intro"));
		themaVo.setLevel2(Integer.parseInt(request.getParameter("level2")));
		themaVo.setMax_per(Integer.parseInt(request.getParameter("max_per")));
		themaDao = new ThemaDao();
		
		try {
			String addPath = request.getServletContext().getRealPath("/img");
			System.out.println(addPath);
			Part part = request.getPart("thema_img");
			String fileName = FileUtil.extractFileName(part);
			if(!fileName.equals("")) {
				String uploadFile = addPath + File.separator + fileName; // File.separator 구분기호?
				File renameFile = FileRenamePolicy.rename(new File(uploadFile));
				part.write(addPath + File.separator + renameFile.getName()); //절대경로
				themaVo.setThema_img(renameFile.getName());
				// vo.setImg(request.getParameter("img")); 이거 아니야
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		int n = themaDao.insert_Thema(themaVo);
			
		ArrayList<String> list = new ArrayList<>(Arrays.asList(request.getParameterValues("time")));
		for(String str : list) {
			themaDao = new ThemaDao();
			themaDao.insert_Schedule(new ScheduleVo(thema_no,str));
		}
		
			
		
		String page;
		if(n !=0) {
		page = "redirect:ownerThemaList.do"; // 성공하면 리스트 화면 보여주기
		} else {
		page = "jsp/owner/themaInsert.jsp"; // 실패하면 fail 페이지 보여주기
		request.setAttribute("fail", "fail");
		}

		
		
		return page;
	}

}

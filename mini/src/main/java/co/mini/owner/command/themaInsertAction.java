package co.mini.owner.command;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import co.mini.common.Action;
import co.mini.common.FileRenamePolicy;
import co.mini.common.FileUtil;
import co.mini.dao.ThemaDao;
import co.mini.vo.ThemaVO;

public class themaInsertAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		ThemaVO themaVo= new ThemaVO();
	
		themaVo.setBranch_no(Integer.parseInt(request.getParameter("branch_no")));
		ThemaDao themaDao = new ThemaDao();
		themaVo.setThema_no(themaDao.thema_maxthema_no());
		themaVo.setThema_name(request.getParameter("thema_name"));
		themaVo.setThema_img(request.getParameter("img"));
		themaVo.setThema_intro(request.getParameter("thema_intro"));
		themaVo.setLevel2(Integer.parseInt(request.getParameter("level2")));
		themaVo.setMax_per(Integer.parseInt(request.getParameter("max_per")));
		themaDao = new ThemaDao();
		
		try {
			String addPath = request.getServletContext().getRealPath("/img");
			Part part = request.getPart("img");
			String fileName = FileUtil.extractFileName(part);
			if(!fileName.equals("")) {
			String uploadFile = addPath + File.separator + fileName; // File.separator 구분기호?
			File renameFile = FileRenamePolicy.rename(new File(uploadFile));
			part.write(renameFile.getAbsolutePath()); //절대경로
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
				
			}
		
		
		
		
		
		return "reserveList.do";
	}

}

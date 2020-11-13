package co.mini.owner.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import co.mini.common.Action;
import co.mini.dao.NoticeDAO;
import co.mini.vo.NoticeVO;

public class NoticeUpdateAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 업데이트 쿼리
		
		NoticeVO vo = new NoticeVO();
		
		vo.setNo( Integer.parseInt(request.getParameter("no")));
		vo.setTitle(request.getParameter("title"));
		vo.setContent(request.getParameter("content"));
		
		java.sql.Date toDay = java.sql.Date.valueOf(request.getParameter("insert_date"));
		vo.setInsert_date(toDay);

		NoticeDAO dao = new NoticeDAO();
		dao.update(vo);
		
		try {
			response.getWriter().print(new JSONObject(vo));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		
		return null;
	}

}

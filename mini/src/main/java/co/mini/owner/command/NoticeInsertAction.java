package co.mini.owner.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;

import co.mini.common.Action;
import co.mini.dao.NoticeDAO;
import co.mini.dao.ReviewDAO;
import co.mini.vo.NoticeVO;

public class NoticeInsertAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		
		NoticeVO vo = new NoticeVO();
		NoticeDAO dao = new NoticeDAO();
		
		// max 값
		int max = dao.noticeMax();
		System.out.println("max값: " + max);
		
		// 파라미터에 지점명이 있으니까 지점명으로 지점번호 갖고오기

		String bname = request.getParameter("branch_name");
		System.out.println(bname);
		
		dao = new NoticeDAO();
		int bno = dao.select_bno(bname);
		System.out.println(bno);
		
		vo.setNo(max+1);
		vo.setBranch_no(bno);
		vo.setId(request.getParameter("id"));
		
		java.sql.Date toDay = java.sql.Date.valueOf(request.getParameter("toDay"));
		vo.setInsert_date(toDay);
		
		vo.setTitle(request.getParameter("title"));
		vo.setContent(request.getParameter("content"));
		
		dao = new NoticeDAO();
		dao.noticeInsert(vo);

		try {
			response.getWriter().print(new JSONObject(vo));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		return null;
	}

}

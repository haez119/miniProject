package co.mini.board.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import co.mini.common.Action;
import co.mini.dao.ReviewDAO;
import co.mini.vo.ReviewVO;

public class ReviewBoardAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// review 테이블에 삽입
		
		
		ReviewDAO dao = new ReviewDAO();

		int max = dao.reviewMax();
		

		ReviewVO vo = new ReviewVO();
		
		vo.setNo(max+1);
		vo.setBranch_name(request.getParameter("b_name"));
		vo.setThema_name(request.getParameter("thema"));
		vo.setId(request.getParameter("id"));
		
		java.sql.Date bdate = java.sql.Date.valueOf(request.getParameter("bdate"));
		vo.setUse_date(bdate);
		
		vo.setTitle(request.getParameter("title"));
		vo.setContent(request.getParameter("content"));
		vo.setStar(request.getParameter("hiddenStar"));
		int rno = Integer.parseInt(request.getParameter("rno"));
		
		dao = new ReviewDAO();
		
		dao.insertReview(vo, rno);
		
		try {
			response.getWriter().print(new JSONObject(vo));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return null;
	}

}

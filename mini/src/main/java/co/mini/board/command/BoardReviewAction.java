package co.mini.board.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import co.mini.common.Action;
import co.mini.dao.ReviewDAO;
import co.mini.vo.ReviewVO;

public class BoardReviewAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 리뷰페이지로 이동
		ReviewDAO dao = new ReviewDAO();
		List<ReviewVO> list = new ArrayList<ReviewVO>();

		// 해당 페이지의 리스트만 조회
		list = dao.selectAll();
		request.setAttribute("boardreview", list);
		
		
		 try {
	         response.getWriter().print(new JSONArray(list));
	      } catch (IOException e) {
	         e.printStackTrace();
	      }
		
		
		

		return "/jsp/board/boardReview.jsp";
	}

}

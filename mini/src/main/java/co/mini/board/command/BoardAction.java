package co.mini.board.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;
import co.mini.dao.BoardDAO;
import co.mini.vo.BoardVO;

public class BoardAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		BoardDAO dao = new BoardDAO();
//		BoardVO vo = new BoardVO();
	
		// 페이지 번호 파라미터
		String strp = request.getParameter("p");
		// 페이지 번호가 없으면 1로 초기화
		int p = 1;
		if (strp != null && ! strp.equals("")) { //파라미터가 null이 아니라면
			p = Integer.parseInt(strp);
		}
		// 레코드 건수 조회
		Paging paging = new Paging();
		paging.setPageUnit(5);	//(한페이지를 출력 할)레코드 수
		paging.setPageSize(5); 	//페이지 번호 수
		paging.setPage(p);
		BoardDAO cntdao = new BoardDAO(); // MemberDao 하나 더 생성
		BoardVO vo = new BoardVO();
		vo.setFirst(paging.getFirst());
		vo.setLast(paging.getLast());
		paging.setTotalRecord(cntdao.count(vo));
		// 페이징 객체를 저장
		request.setAttribute("paging", paging);
		// 해당 페이지의 리스트만 조회
		List<BoardVO> list = dao.selectAll(vo);
		request.setAttribute("board", list);
		
		return "jsp/board/board.jsp";
	}

}

package Test;

import java.util.List;



import org.junit.Test;

import co.mini.dao.BoardDAO;
import co.mini.vo.BoardVO;

public class test {
	@Test
	public void abc() {

		BoardDAO dao = new BoardDAO();
//		BoardVO vo = new BoardVO();

		List<BoardVO> list = dao.selectAll();
		System.out.println(list);
	}
}

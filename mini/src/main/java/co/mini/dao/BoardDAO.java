package co.mini.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import co.mini.vo.BoardVO;

public class BoardDAO extends DAO {

	private PreparedStatement psmt; // sql 명령문 실행
	private ResultSet rs; // select 후에 결과셋 받기
	private BoardVO vo;

	private final String SELECT_ALL = "select * from( select a.*, rownum rn from (" + "SELECT * FROM BOARD order by no desc"
			+ ") a  ) b  where rn between ? and ?"; // 게시판 리스트
	private final String SELECT = "SELECT * FROM BOARD WHERE NO=?";  // 게시판 뷰페이지
	private final String INSERT = "INSERT INTO board(NO, TITLE, CONTENT, ID, BOARD_DATE) VALUES (board_seq.NEXTVAL,?,?,?,sysdate)";
	private final String UPDATE = "UPDATE BOARD SET NO=?, TITLE=?, CONTENT=?, DATE=SYSDATE WHERE NO=?";
	private final String DELETE = "DELETE BOARD WHERE ID=?";

	public List<BoardVO> selectAll(BoardVO mvo) { // 전체조회기능
		List<BoardVO> list = new ArrayList<BoardVO>();
		try {
			psmt = conn.prepareStatement(SELECT_ALL);
			psmt.setInt(1, mvo.getFirst());
			psmt.setInt(2, mvo.getLast());
			rs = psmt.executeQuery();
			while (rs.next()) {
				vo = new BoardVO();
				vo.setNo(rs.getInt("no"));
				vo.setTitle(rs.getString("title"));
				vo.setContent(rs.getString("content"));
				vo.setId(rs.getString("id"));
				vo.setHit(rs.getInt("hit"));
				vo.setBoard_date(rs.getDate("board_date"));
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}


	public BoardVO select(BoardVO vo) { // 한행만 조회
		try {
			psmt = conn.prepareStatement(SELECT);
			psmt.setInt(1, vo.getNo()); // vo.getId()
			rs = psmt.executeQuery();
			if (rs.next()) {
				vo.setNo(rs.getInt("no"));
				vo.setId(rs.getString("id"));
				vo.setTitle(rs.getString("title"));
				vo.setBoard_date(rs.getDate("board_date"));
				vo.setContent(rs.getString("content"));
//				vo.setHit(rs.getInt("hit"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return vo;
	}

	public int count(BoardVO vo) {
		int cnt = 0;
		try {
			String sql = "select count(*) from board";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			rs.next();
			cnt = rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	public int Insert(BoardVO vo) { // 입력기능
		int n = 0;
		try {
			psmt = conn.prepareStatement(INSERT);
			psmt.setString(1, vo.getTitle());
			psmt.setString(2, vo.getContent());
			psmt.setString(3, vo.getId());
//			psmt.setDate(3, vo.getBoard_date()); //sysdate로 받고
//			psmt.setString(5, vo.get첨부파일());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n; // 건수 확인
	}

	public int update(BoardVO vo) { // 수정기능
		int n = 0;
		try {
			psmt = conn.prepareStatement(UPDATE);
			psmt.setString(1, vo.getId());
			psmt.setString(2, vo.getTitle());
			psmt.setDate(3, vo.getBoard_date());
			psmt.setString(4, vo.getContent());
//			psmt.setString(6, vo.get첨부파일());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}

	public int delete(BoardVO vo) { // 삭제기능
		int n = 0;
		try {
			psmt = conn.prepareStatement(DELETE);
//			psmt.setInt(1, vo.getNo()); 	//번호로 삭제?
			psmt.setString(1, vo.getId()); // 아이디로 삭제?
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}

	private void close() {
		try {
			if (rs != null)
				rs.close();
			if (psmt != null)
				psmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}

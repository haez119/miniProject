package co.mini.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import co.mini.vo.BoardVO;

public class BoardDAO extends DAO {

	private PreparedStatement psmt; // sql 명령문 실행
	private ResultSet rs; // select 후에 결과셋 받기
	private BoardVO vo;

	private final String SELECT_ALL = "select * from( select a.*, rownum rn from ("
			+ "SELECT * FROM BOARD order by no desc" + ") a  ) b  where rn between ? and ? order by board_date desc"; // 게시판
																														// 리스트
	private final String SELECT = "SELECT * FROM BOARD WHERE NO=?"; // 게시판 뷰페이지

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

	private final String INSERT = "INSERT INTO board(NO, TITLE, CONTENT, BOARD_DATE)"
			+ "VALUES (board_seq.NEXTVAL,?,?,sysdate)";

	public int Insert(BoardVO vo) { // 입력기능
		int n = 0;
		try {
			psmt = conn.prepareStatement(INSERT);
			psmt.setString(1, vo.getTitle());
			psmt.setString(2, vo.getContent());
//			psmt.setDate(3, vo.getBoard_date()); //sysdate로 받고
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n; // 건수 확인
	}

	private final String UPDATE = "UPDATE BOARD SET TITLE=?, CONTENT=?, BOARD_DATE=TO_DATE(?,'YY-MM-DD')  WHERE NO=?";

	public int update(BoardVO vo) { // 수정기능
		int n = 0;
		try {
			psmt = conn.prepareStatement(UPDATE);

			psmt.setString(1, vo.getTitle());
			psmt.setString(2, vo.getContent());
			psmt.setDate(3, vo.getBoard_date());
//			psmt.setString(3, vo.get첨부파일());
			psmt.setInt(4, vo.getNo());

			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}

	private final String DELETE = "DELETE BOARD WHERE NO=?";

	public int delete(BoardVO vo) { // 삭제기능
		int n = 0;
		try {
			psmt = conn.prepareStatement(DELETE);
			psmt.setInt(1, vo.getNo()); // 번호로 삭제?
//			psmt.setString(1, vo.getId()); // 아이디로 삭제?
			n = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}

	private final String update_hit = "update board set hit=nvl(hit,0)+1 where no=?";

	public int update_hit(BoardVO vo) { // 조회수 증가
		int n = 0;
		try {
			psmt = conn.prepareStatement(update_hit);
			psmt.setInt(1, vo.getNo());
			n = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}

	private final String SELECT_NAME = "SELECT * FROM REVIEW WHERE BRANCH_NAME = ? ";

	public ArrayList<HashMap<String, Object>> selectName(String bname) {

		ArrayList<HashMap<String, Object>> list = new ArrayList<HashMap<String, Object>>();
		HashMap<String, Object> map;

		try {
			psmt = conn.prepareStatement(SELECT_NAME);

			psmt.setString(1, bname);
			rs = psmt.executeQuery();

			while (rs.next()) {

				map = new HashMap<String, Object>();

				map.put("no", rs.getString("no"));
				map.put("branch_name", rs.getString("branch_name"));
				map.put("thema_name", rs.getString("thema_name"));
				map.put("use_date", rs.getString("use_date"));
				map.put("title", rs.getString("title"));
				map.put("star", rs.getString("star"));
				map.put("hit", rs.getString("hit"));

				list.add(map);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
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

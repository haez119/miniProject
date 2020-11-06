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

	private final String SELECT_ALL = "SELECT * FROM BOARD1";
	private final String SELECT = "SELECT * FROM BOARD1 WHERE ID=?";
	private final String INSERT = "INSERT INTO BOARD1 VALUES(NO,TITLE,BDATE,HIT)" + "VALUES(?,?,?,?)";
	private final String UPDATE = "UPDATE BOARD1 SET NO=?, CATEGORY=?, TITLE=?, CONTENT=?, SHOW=?, ANSWER=? WHERE ID=?";
	private final String DELETE = "DELETE BOARD1 WHERE ID=?";

	public List<BoardVO> selectAll() { // 전체조회기능
		List<BoardVO> list = new ArrayList<BoardVO>();
		try {
			psmt = conn.prepareStatement(SELECT_ALL);
			rs = psmt.executeQuery();
			while (rs.next()) {
				vo = new BoardVO();
				vo.setNo(rs.getInt("no"));
				vo.setCategory(rs.getString("category"));
				vo.setTitle(rs.getString("title"));
				vo.setContent(rs.getString("content"));
				vo.setId(rs.getString("id"));
				vo.setShow(rs.getString("show"));
				vo.setAnswer(rs.getNString("answer"));
				vo.setHit(rs.getInt("hit"));
				vo.setBdate(rs.getDate("bdate"));
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
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
				vo.setCategory(rs.getString("category"));
				vo.setTitle(rs.getString("title"));
				vo.setContent(rs.getString("content"));
				vo.setId(rs.getString("id"));
				vo.setShow(rs.getString("show"));
				vo.setAnswer(rs.getString("answer"));
				vo.setHit(rs.getInt("hit"));
				vo.setBdate(rs.getDate("bdate"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}

	public int insert(BoardVO vo) { // 입력기능
		int n = 0;
		try {
			psmt = conn.prepareStatement(INSERT);
			psmt.setInt(1, vo.getNo());
			psmt.setString(2, vo.getCategory());
			psmt.setString(3, vo.getTitle());
			psmt.setString(4, vo.getContent());
			psmt.setString(5, vo.getId());
			psmt.setString(6, vo.getShow());
			psmt.setString(7, vo.getAnswer());
			psmt.setInt(8, vo.getHit());
			psmt.setDate(9, vo.getBdate());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return n; // 건수 확인
	}

	public int update(BoardVO vo) { // 수정기능
		int n = 0;
		try {
			psmt = conn.prepareStatement(UPDATE);
			psmt.setInt(1, vo.getNo());
			psmt.setString(2, vo.getCategory());
			psmt.setString(3, vo.getTitle());
			psmt.setString(4, vo.getContent());
			psmt.setString(5, vo.getId());
			psmt.setString(6, vo.getShow());
			psmt.setString(7, vo.getAnswer());
			psmt.setInt(8, vo.getHit());
			psmt.setDate(9, vo.getBdate());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
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
		}
		return n;
	}
}

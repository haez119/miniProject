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
	// private final String SELECT =
//	private final String INSERT =
//	private final String UPDATE =
//	private final String DELETE =

	
	
	public List<BoardVO> selectAll() {
		List<BoardVO> list = new ArrayList<BoardVO>();
		try {
			psmt = conn.prepareStatement(SELECT_ALL);
			rs = psmt.executeQuery();
			while (rs.next()) {
				vo = new BoardVO();
				vo.setNo(rs.getString("no"));
				vo.setCategory(rs.getString("category"));
				vo.setTitle(rs.getString("title"));
				vo.setContent(rs.getString("content"));
				vo.setId(rs.getString("id"));
				vo.setShow(rs.getString("show"));
				vo.setAnswer(rs.getNString("answer"));
				list.add(vo);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}

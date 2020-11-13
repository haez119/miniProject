package co.mini.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import co.mini.vo.CommentVO;

public class CommentDAO extends DAO {
	PreparedStatement psmt;
	ResultSet rs;

	static CommentDAO commentDAO = new CommentDAO();

	public static CommentDAO getInstance() {
		return commentDAO;
	}

	// 사용자 등록
	private final String INSERT = "INSERT INTO USERS(ID, GENDER, NAME, ROLE) VALUES(?,?,?,?)";

	public int Insert(CommentVO vo) {
		int n = 0;
		try {
			psmt = conn.prepareStatement(INSERT);
			psmt.setString(1, vo.getId());
			psmt.setString(2, vo.getPassword());
			psmt.setString(3, vo.getContent());
//			psmt.setDate(4, vo.getComment_date());
//			psmt.setInt(5, vo.getRno());
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n; // 건수 확인
	}

	// 사용자 수정
	private final String USER_UPDATE = "UPDATE USERS SET GENDER=?, NAME=?, ROLE =? WHERE ID=?";

	public void updateUser(CommentVO vo) {
		try {
			psmt = conn.prepareStatement(USER_UPDATE);
			psmt.setString(1, vo.getId());
			psmt.setString(2, vo.getPassword());
			psmt.setString(3, vo.getContent());
			psmt.setDate(4, vo.getComment_date());
			psmt.setInt(5, vo.getRno());
			psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
	}

	// 사용자 삭제
	private final String USER_DELETE = "DELETE USERS WHERE ID=?";

	public void deleteUser(CommentVO vo) {
		try {
			psmt = conn.prepareStatement(USER_DELETE);
			psmt.setInt(1, vo.getRno());
			psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
	}

	// 사용자 상세 조회
	private final String USER_GET = "SELECT * FROM USERS WHERE ID=?";

	public CommentVO getUser(CommentVO vo) {
		CommentVO user = null;
		try {
			psmt = conn.prepareStatement(USER_GET);
			psmt.setInt(1, vo.getRno());
			ResultSet rs = psmt.executeQuery();
			if (rs.next()) {
				user = new CommentVO();
				user.setRno(rs.getInt("no"));
				user.setName(rs.getString("name"));
				user.setComment_date(rs.getDate("Comment_date"));
				user.setContent(rs.getString("content"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return user;
	}

	// 사용자 목록 조회
	private final String USER_LIST = "SELECT * FROM USERS  ORDER BY ID DESC";

	public List<CommentVO> getUserList() {
		List<CommentVO> userList = new ArrayList<CommentVO>();
		try {
			psmt = conn.prepareStatement(USER_LIST);

			rs = psmt.executeQuery();
			while (rs.next()) {
				CommentVO user = new CommentVO();
				user.setRno(rs.getInt("no"));
				user.setName(rs.getString("name"));
				user.setComment_date(rs.getDate("Comment_date"));
				user.setContent(rs.getString("content"));
				userList.add(user);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return userList;
	}

	private void close() {
		if (conn != null) {
			try {
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

}

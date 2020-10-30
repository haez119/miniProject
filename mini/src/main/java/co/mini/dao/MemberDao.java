package co.mini.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import co.mini.vo.MemberVO;

public class MemberDao {
	private PreparedStatement psmt; // sql 명령문 실행
	private ResultSet rs; // select 후 결과셋 받기(resultset)
	private MemberVO vo;

	private final String SELECT_ALL = "SELECT * FROM MEMBER";
	private final String SELECT = "SELECT * FROM MEMBER WHERE ID = ? AND PASSWORD = ?";
	private final String INSERT = "INSERT INTO MEMBER(ID,PASSWORD,NAME,PHONE,EMAIL) VALUES(?,?,?,?,?)";
	private final String UPDATE = "UPDATE MEMBER SET PASSWORD=?,NAME=?,PHONE=?,EMAIL=? WHERE ID=?";
	private final String DELETE = "DELETE FROM MEMBER WHERE ID=?";

	public List<MemberVO> selectAll() {
		List<MemberVO> list = new ArrayList<MemberVO>();
		try {
			psmt = conn.prepareStatement(SELECT_ALL);
			rs = psmt.executeQuery();
			while (rs.next()) {
				vo = new MemberVO();
				vo.setId(rs.getString("id"));
				vo.setPassword(rs.getString("password"));
				vo.setName(rs.getString("name"));
				vo.setPhone(rs.getString("phone"));
				vo.setEmail(rs.getString("email"));
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

	public MemberVO select(MemberVO vo) {
		try {
			psmt = conn.prepareStatement(SELECT);
			psmt.setString(1, vo.getId());
			psmt.setString(2, vo.getPassword());
			rs = psmt.executeQuery();
			if (rs.next()) {
				vo.setId(rs.getString("id"));
				vo.setName(rs.getString("name"));
				vo.setPhone(rs.getString("phone"));
				vo.setEmail(rs.getString("email"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return vo;
	}

	public int insert(MemberVO vo) {
		int n = 0;
		try {
			psmt = conn.prepareStatement(INSERT);
			psmt.setString(1, vo.getId());
			psmt.setString(2, vo.getPassword());
			psmt.setString(3, vo.getName());
			psmt.setString(4, vo.getPhone());
			psmt.setString(5, vo.getEmail());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return n;
	}

	public int update(MemberVO vo) {
		int n = 0;
		try {
			psmt = conn.prepareStatement(UPDATE);
			psmt.setString(1, vo.getPassword());
			psmt.setString(2, vo.getName());
			psmt.setString(3, vo.getPhnoe());
			psmt.setString(4, vo.getEmail());

			n = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}

	public int delete(MemberVO vo) {
		int n = 0;
		try {
			psmt = conn.prepareStatement(DELETE);
			psmt.setNString(1, vo.getId());
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
			if(rs !=null) rs.close();
			if(psmt !=null) psmt.close();
			if(conn != null) conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}

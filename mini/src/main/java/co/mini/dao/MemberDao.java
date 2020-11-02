package co.mini.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import co.mini.vo.MemberVO;

public class MemberDao extends DAO {
	private PreparedStatement psmt; // sql 명령문 실행
	private ResultSet rs; // select 후 결과셋 받기(resultset)
	private MemberVO vo;

	
	private final String SELECT = "SELECT * FROM MEMBER WHERE ID = ? AND PASSWORD = ?";
	private final String INSERT = "INSERT INTO MEM1(ID,NAME,PHONE,EMAIL, RANK,COUNT) VALUES(?,?,?,?,?,?)";

	public MemberVO login(MemberVO vo) {
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
				vo.setPassword(rs.getString("password"));
				vo.setRank(rs.getString("rank"));
				vo.setCount(rs.getInt("count"));
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return vo;
	}
	
	public int insert(MemberVO vo) { //추가하기
		int n = 0;
		try {
			psmt=conn.prepareStatement(INSERT);
			psmt.setString(1,vo.getId());
			psmt.setString(2,vo.getName());
			psmt.setString(4,vo.getPhone());
			psmt.setString(5,vo.getEmail());
			psmt.setString(6,vo.getRank());
			psmt.setInt(7,vo.getCount());
			n = psmt.executeUpdate();
			
		} catch(SQLException e) {
			e.printStackTrace();
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

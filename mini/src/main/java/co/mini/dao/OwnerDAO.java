package co.mini.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import co.mini.vo.MemberVO;
import co.mini.vo.OwnerVO;

public class OwnerDAO extends DAO {

	private PreparedStatement psmt;
	private ResultSet rs;
	private MemberVO vo;

	private final String SELECT = "select * from onwer where id = ? and password = ?";

	public OwnerVO login(OwnerVO vo) {
		
		try {
			psmt = conn.prepareStatement(SELECT);
			
			psmt.setString(1, vo.getId());
			psmt.setString(2, vo.getPassword());
			
			rs = psmt.executeQuery();
			
			if (rs.next()) {
				vo.setId(rs.getString("id"));
				vo.setBranch_no(rs.getInt("branch_no"));
				vo.setBranch_name(rs.getString("branch_name"));
				vo.setName(rs.getString("name"));
				vo.setPassword(rs.getString("password"));
				vo.setTel(rs.getString("tel"));
				vo.setAddress(rs.getString("address"));

			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return vo;
		
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
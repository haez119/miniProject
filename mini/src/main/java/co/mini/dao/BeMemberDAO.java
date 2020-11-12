package co.mini.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import co.mini.vo.be_memberVO;

public class BeMemberDAO extends DAO {
	
	private PreparedStatement psmt;
	private ResultSet rs;
	
	
	private final String SELECT = "select * from be_member where re_no = ?";
	
	public be_memberVO reserv(int max) {
		
		be_memberVO vo = new be_memberVO();
		
		try {
			psmt = conn.prepareStatement(SELECT);
			
			psmt.setInt(1, max);
			
			rs = psmt.executeQuery();
			
			if (rs.next()) {
				vo.setRe_no(rs.getInt("re_no"));
				vo.setName(rs.getString("name"));
				vo.setBranch_name(rs.getString("branch_name"));
				vo.setThema_name(rs.getString("thema_name"));
				vo.setReservdate(rs.getString("reservdate"));
				vo.setTime(rs.getString("time"));
				vo.setPersonnel(rs.getInt("personnel"));
				vo.setPhone(rs.getString("phone"));
				vo.setPassword(rs.getString("password"));
				vo.setPrice(rs.getInt("price"));
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return vo;
		
	}
	
	private final String SELECT_LOGIN = "select * from be_member where re_no = ? and password = ?";
	
	public be_memberVO login(int no, String password) {
		
		be_memberVO vo = new be_memberVO();
		
		try {
			psmt = conn.prepareStatement(SELECT_LOGIN);
			
			psmt.setInt(1, no);
			psmt.setString(2, password);
			
			rs = psmt.executeQuery();
			
			if (rs.next()) {
				vo.setRe_no(rs.getInt("re_no"));
				vo.setName(rs.getString("name"));
				vo.setBranch_name(rs.getString("branch_name"));
				vo.setThema_name(rs.getString("thema_name"));
				vo.setReservdate(rs.getString("reservdate"));
				vo.setTime(rs.getString("time"));
				vo.setPersonnel(rs.getInt("personnel"));
				vo.setPhone(rs.getString("phone"));
				vo.setPassword(rs.getString("password"));
				vo.setPrice(rs.getInt("price"));
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

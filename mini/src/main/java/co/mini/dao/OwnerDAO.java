package co.mini.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

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
	
	
	// 세션에 있는 지점번호를 이용하여 조인
	private final String RESERV_SELECT = "SELECT T.THEMA_NAME, R.ID, R.RESERVDATE, R.PRICE, R.PAYMENT, R.TIME, T.BRANCH_NO  " 
										+  "FROM THEMA T , RESERVATION R  " 
										+  "WHERE T.THEMA_NO = R.THEMA_NO  " 
										+  "AND T.BRANCH_NO = ? ";
	
	
	
	public ArrayList<HashMap<String, Object>> selectMap(String b_no) {
		
		ArrayList<HashMap<String, Object>> list = new ArrayList<HashMap<String, Object>>();
		HashMap<String, Object> map;
		
		try {
			psmt = conn.prepareStatement(RESERV_SELECT);
			psmt.setString(1,b_no);
			
			while(rs.next()) {
				
				map = new HashMap<String, Object>();
				
				map.put("thema_name", rs.getString("THEMA_NAME"));
				map.put("id", rs.getString("ID"));
				map.put("reservdate", rs.getString("RESERVDATE"));
				map.put("price", rs.getString("PRICE"));
				map.put("payment", rs.getString("PAYMENT"));
				map.put("time", rs.getString("TIME"));
				map.put("branch_no", rs.getString("BRANCH_NO"));

				list.add(map);
				
				
			}
			
			
		} catch (SQLException e) {
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
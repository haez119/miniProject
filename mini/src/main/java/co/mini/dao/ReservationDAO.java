package co.mini.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import co.mini.vo.ReservationVO;

// reservation 테이블 DAO
public class ReservationDAO extends DAO{
	
	private PreparedStatement psmt; // sql 명령문 실행
	private ResultSet rs; // select 후에 결과셋 받기 
	
	
	public String id = "gown28";
	
	private final String SELECT_ALL = "SELECT * FROM RESERVATION";
	
	private final String SELECT = " SELECT M.NAME , R.RESERVDATE, R.PERSONNEL, R.PRICE, R.PAYMENT, T.THEMA_NAME, R.TIME " + 
									" FROM RESERVATION R , THEMA T , MEMBER M " + 
									" WHERE R.THEMA_NO = T.THEMA_NO " + 
									" AND R.ID = M.ID " + 
									" AND R.ID = ? ";
	
	
	public ArrayList<HashMap<String, Object>> selectMap() {
		
		ArrayList<HashMap<String, Object>> list = new ArrayList<HashMap<String, Object>>();
		HashMap<String, Object> map;
		
		try {
			psmt = conn.prepareStatement(SELECT);
			psmt.setString(1,id);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				
				map = new HashMap<String, Object>();
				
				map.put("name",rs.getString("NAME"));
				map.put("reservdate",rs.getDate("RESERVDATE"));
				map.put("personnel",rs.getInt("PERSONNEL"));
				map.put("price",rs.getInt("PRICE"));
				map.put("payment",rs.getString("PAYMENT"));
				map.put("thema_name",rs.getString("THEMA_NAME"));
				map.put("time",rs.getString("TIME"));
				
				list.add(map);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
		
		
	
	
	
	
	
	
	
	
	
	
	
	
	public List<ReservationVO> selectAll() { 
		
		List<ReservationVO> list = new ArrayList<ReservationVO>();
		ReservationVO vo;
		try {
			psmt = conn.prepareStatement(SELECT_ALL);
			rs = psmt.executeQuery();
			
			while (rs.next()) {
				vo = new ReservationVO();
				
				vo.setNo(rs.getInt("no"));
				vo.setId(rs.getString("id"));
				vo.setReservDate(rs.getDate("reservdate"));
				vo.setPersonnel(rs.getInt("personnel"));
				vo.setPrice(rs.getInt("price"));
				vo.setPayment(rs.getString("payment"));
				vo.setThemaNo(rs.getInt("thema_no"));
				vo.setTime(rs.getString("time"));
				
				list.add(vo);
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
			if(rs != null) rs.close();
			if(psmt != null) psmt.close();
			if(conn != null) conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	
}

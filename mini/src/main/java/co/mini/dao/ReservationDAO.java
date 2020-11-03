package co.mini.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import co.mini.vo.MemberVO;
import co.mini.vo.ReservationVO;

// reservation 테이블 DAO
public class ReservationDAO extends DAO{
	
	private PreparedStatement psmt; // sql 명령문 실행
	private ResultSet rs; // select 후에 결과셋 받기 
	
	
	private final String SELECT_ALL = "SELECT * FROM RESERVATION where id = ?";
	
	private final String SELECT = "select m.name , r.reservdate, r.personnel, r.price, r.payment, t.thema_name, r.time, m.phone, o.branch_name  " 
								+ "from reservation r , thema t , member m , onwer o " 
								+ "where r.thema_no = t.thema_no " 
								+ "and r.id = m.id " 
								+ "and t.branch_no = o.branch_no " 
								+ "and m.id = ? ";
	

	public ArrayList<HashMap<String, Object>> selectMap(String sid) {
		
		ArrayList<HashMap<String, Object>> list = new ArrayList<HashMap<String, Object>>();
		HashMap<String, Object> map;
		
		try {
			psmt = conn.prepareStatement(SELECT);
			
			// psmt.setString(1,sId);
			psmt.setString(1,sid);
			
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
				map.put("phone",rs.getString("phone"));
				map.put("branch_name",rs.getString("branch_name"));
				
				list.add(map);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
		
	
	public List<ReservationVO> selectAll(String sid) { 
		
		List<ReservationVO> list = new ArrayList<ReservationVO>();
		ReservationVO vo;
		try {
			psmt = conn.prepareStatement(SELECT_ALL);
			
			psmt.setString(1,sid);
			
			
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

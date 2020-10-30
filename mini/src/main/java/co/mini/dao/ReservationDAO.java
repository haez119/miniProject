package co.mini.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import co.mini.vo.ReservationVO;

// reservation 테이블 DAO
public class ReservationDAO extends DAO{
	
	private PreparedStatement psmt; // sql 명령문 실행
	private ResultSet rs; // select 후에 결과셋 받기 
	
	
	
	
	private final String SELECT_ALL = "SELECT * FROM RESERVATION";
	
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

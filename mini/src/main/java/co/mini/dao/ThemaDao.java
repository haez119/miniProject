package co.mini.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import co.mini.vo.ScheduleVo;
import co.mini.vo.ThemaVO;

public class ThemaDao extends DAO {
	private PreparedStatement psmt; // sql 명령문 실행
	private ResultSet rs; // select 후에 결과셋 받기
	
	ThemaVO themaVo = new ThemaVO();
	ScheduleVo scheduleVo=new ScheduleVo();
	
	//테마 vo에서 넘겨받은 테마번호의 이용시간을 리턴
	private final String SCHEDULE_SELECT = "SELECT * FROM SCHEDULE WHERE THEMA_NO=? "; // 변경 못하게 final 상수로 선언
	public List<ScheduleVo> selectSchedule(ThemaVO ThemaVO) {
		List<ScheduleVo> list = new ArrayList<ScheduleVo>();
		try {
			
			psmt = conn.prepareStatement(SCHEDULE_SELECT);
			psmt.setInt(1, ThemaVO.getThema_no());
			
			rs = psmt.executeQuery();
			// 한 행만 리턴하니까 while 사용 할 필요x
			while(rs.next()) {
				scheduleVo.setThema_no(rs.getInt("thema_no"));
				scheduleVo.setTime(rs.getString("time"));
				list.add(scheduleVo);
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}

		return list;
	}
	private final String THEMA_SELECT = "SELECT * FROM THEMA";
	public List<ThemaVO> selectThema() { 
		List<ThemaVO> list = new ArrayList<ThemaVO>();
		try {
			psmt = conn.prepareStatement(THEMA_SELECT); // DAO를 상속받고 있어서 conn 정의 안해줘도 사용 가능
			rs = psmt.executeQuery(); //executeQuery는 반환값이 resultSet, executeUpdate는 반환값이 int타입
			
			while (rs.next()) {

				themaVo = new ThemaVO();
				themaVo.setThema_no(rs.getInt("thema_no"));
				themaVo.setThema_name(rs.getString("thema_name"));
				themaVo.setThema_img(rs.getString("thema_img"));
				themaVo.setThema_intro(rs.getString("thema_intro"));
				themaVo.setLevel2(rs.getInt("level2"));
				themaVo.setMax_per(rs.getInt("max_per"));
				
				list.add(themaVo);

			}
		}catch( SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return list;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	private void close() {
		try {
			if(rs != null)rs.close();
			if(psmt != null)psmt.close();
			if(conn != null)conn.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
}

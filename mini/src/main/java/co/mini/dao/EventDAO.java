package co.mini.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import co.mini.vo.EventVO;



public class EventDAO extends DAO {
	private PreparedStatement psmt; // sql 명령문 실행
	private ResultSet rs; // select 후에 결과셋 받기
	private EventVO vo;
	
	private final String SELECT_ALL = "select e.event_no, o.branch_name, e.event_name, e.event_content \r\n" + 
			"from event e join onwer o\r\n" + 
			"on(e.branch_no = o.branch_no) "
			+ "order by 1";
	
	public List<EventVO> selectAll() {
		List<EventVO> list = new ArrayList<EventVO>();
		try {
			psmt = conn.prepareStatement(SELECT_ALL);
			rs = psmt.executeQuery();
			while (rs.next()) {
				vo = new EventVO();
				vo.setEvent_no(rs.getInt("event_no"));
				vo.setBranch_name(rs.getString("branch_name"));
				vo.setEvent_name(rs.getString("event_name"));
				vo.setEvent_content(rs.getString("event_content"));
				list.add(vo);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
}

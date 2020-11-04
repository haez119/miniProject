package co.mini.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import co.mini.vo.EventVO;


public class EventDAO extends DAO {
	private PreparedStatement psmt; 
	private ResultSet rs; 
	private EventVO vo;
	
	private final String SELECT_ALL = "SELECT * FROM EVENT";
	
	public List<EventVO> selectAll() {
		List<EventVO> list = new ArrayList<EventVO>();
		try {
			psmt = conn.prepareStatement(SELECT_ALL);
			rs = psmt.executeQuery();
			while (rs.next()) {
				vo = new EventVO();
				vo.setBranch_no(rs.getInt("branch_no"));
				vo.setEvent_no(rs.getInt("event_no"));
				vo.setEvent_name(rs.getString("event_name"));
				vo.setImg(rs.getString("img"));
				vo.setEvent_content(rs.getString("event_content"));
				vo.setEvent_term(rs.getInt("event_term"));
				vo.setSale(rs.getInt("sale"));
				list.add(vo);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}

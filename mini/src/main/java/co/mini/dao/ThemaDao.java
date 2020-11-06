package co.mini.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import co.mini.vo.MemberVO;
import co.mini.vo.ReservationVO;
import co.mini.vo.ScheduleVo;
import co.mini.vo.ThemaDisVo;
import co.mini.vo.ThemaVO;

public class ThemaDao extends DAO {
	private PreparedStatement psmt; // sql 명령문 실행
	private ResultSet rs; // select 후에 결과셋 받기
	
	ThemaVO themaVo = new ThemaVO();
	ScheduleVo scheduleVo=new ScheduleVo();
	
	//테마 vo에서 넘겨받은 테마번호의 이용시간을 리턴
	private final String SCHEDULE_SELECT = "SELECT * FROM SCHEDULE WHERE THEMA_NO=? order by time"; // 변경 못하게 final 상수로 선언
	public List<ScheduleVo> selectSchedule(ThemaVO ThemaVO) {
		List<ScheduleVo> list = new ArrayList<ScheduleVo>();
		try {
			
			psmt = conn.prepareStatement(SCHEDULE_SELECT);
			psmt.setInt(1, ThemaVO.getThema_no());
			
			rs = psmt.executeQuery();
			// 한 행만 리턴하니까 while 사용 할 필요x
			while(rs.next()) {
				scheduleVo =new ScheduleVo();
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
	
	
	
	private final String SCHEDULE_FAIL = "select thema_no,time from SCHEDULE\r\n" + 
			"minus\r\n" + 
			"select thema_no,time from reservation\r\n" + 
			"where reservdate=to_date(?,'YY-MM-DD')\r\n" + 
			"INTERSECT\r\n" + 
			"select thema_no,time from SCHEDULE\r\n" + 
			"where thema_no=?\r\n" + 
			"order by time"; // 변경 못하게 final 상수로 선언
	public List<ScheduleVo> failSchedule(ThemaVO ThemaVO,String date) {
		List<ScheduleVo> list = new ArrayList<ScheduleVo>();
		try {
			
			psmt = conn.prepareStatement(SCHEDULE_FAIL);
			psmt.setString(1, date);
			psmt.setInt(2, ThemaVO.getThema_no());
			
			rs = psmt.executeQuery();
			// 한 행만 리턴하니까 while 사용 할 필요x
			while(rs.next()) {
				scheduleVo =new ScheduleVo();
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
	
	
	
	//테마정보를 리턴
	private final String THEMA_SELECT = "select o.branch_name,t.thema_no,t.thema_name,t.thema_img,t.thema_intro,t.level2,t.max_per \r\n" + 
			"from thema t , onwer o\r\n" + 
			"where t.branch_no=o.branch_no\r\n" + 
			"order by thema_no";
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
				themaVo.setBranch_name(rs.getString("branch_name"));
				
				list.add(themaVo);

			}
		}catch( SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return list;
	}
	//테이블이름의 중복제거한 리스트 
	private final String THEMA_Distinct="select distinct thema_name,thema_img,level2,thema_intro from thema";
	public List<ThemaDisVo> DisThemaList() { 
		List<ThemaDisVo> list = new ArrayList<ThemaDisVo>();
		try {
			psmt = conn.prepareStatement(THEMA_Distinct); // DAO를 상속받고 있어서 conn 정의 안해줘도 사용 가능
			rs = psmt.executeQuery(); //executeQuery는 반환값이 resultSet, executeUpdate는 반환값이 int타입
			
			while (rs.next()) {

				ThemaDisVo disVo = new ThemaDisVo();
				disVo.setThema_name(rs.getString("thema_name"));
				disVo.setThema_img(rs.getString("thema_img"));
				disVo.setLevel2(rs.getInt("level2"));
				disVo.setThema_intro(rs.getString("thema_intro"));
				list.add(disVo);

			}
		}catch( SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return list;
	}
	
	//예약정보에 뿌려줄 테마정보를 담은 쿼리문
	private final String reserve_Thema ="select o.branch_name,t.thema_no,t.thema_name,t.thema_img,t.thema_intro,t.level2,t.max_per\r\n" + 
			"from thema t , onwer o\r\n" + 
			"where t.branch_no=o.branch_no\r\n" + 
			"and thema_no=?\r\n" + 
			"order by thema_no";
	public ThemaVO reserve_thema(int thema_no) { 
		ThemaVO vo = new ThemaVO();
		try {
			psmt = conn.prepareStatement(reserve_Thema); // DAO를 상속받고 있어서 conn 정의 안해줘도 사용 가능
			psmt.setInt(1, thema_no);
			rs = psmt.executeQuery(); //executeQuery는 반환값이 resultSet, executeUpdate는 반환값이 int타입
			
			while (rs.next()) {

				vo = new ThemaVO();
				vo.setBranch_name(rs.getString("branch_name"));
				vo.setThema_no(rs.getInt("thema_no"));
				vo.setThema_name(rs.getString("thema_name"));
				vo.setThema_img(rs.getString("thema_img"));
				vo.setLevel2(rs.getInt("level2"));
				vo.setMax_per(rs.getInt("max_per"));
				

			}
		}catch( SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return vo;
	}
	
	//예약정보 인설트 dao
	
	private final String INSERT = "insert into reservation(no,id,reservdate,personnel,"
			+ "price,payment,thema_no,time) values(reservation_Seq.nextval,?,TO_DATE(?,'YYYY/MM/DD'),?,?,?,?,?)";
	
	public int insert(ReservationVO vo) { // 추가하기
		int n = 0;
		try {
			psmt = conn.prepareStatement(INSERT);
			psmt.setString(1, vo.getId());
			psmt.setString(2, vo.getReservDate());
			psmt.setInt(3, vo.getPersonnel());
			psmt.setInt(4, vo.getPrice());
			psmt.setString(5, vo.getPayment());
			psmt.setInt(6, vo.getThemaNo());
			psmt.setString(7, vo.getTime());
			n = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return n;
	}
	
	
	
	//테마등록
	private final String INSERT_Thema = "insert into thema values(?,thema_Seq.nextval,?,?,?,?,?)";
	public int insert_Thema(ThemaVO vo) { // 추가하기
		int n = 0;
		try {
			psmt = conn.prepareStatement(INSERT);
			psmt.setInt(1, vo.getBranch_no());
			psmt.setString(2, vo.getThema_name());
			psmt.setString(3, vo.getThema_img());
			psmt.setString(4, vo.getThema_intro());
			psmt.setInt(5, vo.getLevel2());
			psmt.setInt(6, vo.getMax_per());
			n = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return n;
	}
	//스케줄러 추가 
	private final String INSERT_Schedule= "insert into thema values(?,?)";
	public int insert_Schedule(ScheduleVo vo) { // 추가하기
		int n = 0;
		try {
			psmt = conn.prepareStatement(INSERT);
			psmt.setInt(1, vo.getThema_no());
			psmt.setString(2, vo.getTime());
			n = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return n;
	}
	
	//테마 마지막 번호 구하는방법
	private final String MaxThema="select max(thema_no)+1 from thema";
	
	public ThemaVO thema_maxthema_no() { 
		ThemaVO vo = new ThemaVO();
		try {
			psmt = conn.prepareStatement(MaxThema); // DAO를 상속받고 있어서 conn 정의 안해줘도 사용 가능
			rs = psmt.executeQuery(); //executeQuery는 반환값이 resultSet, executeUpdate는 반환값이 int타입
			
			while (rs.next()) {
				vo = new ThemaVO();
				vo.setThema_no(rs.getInt("thema_no"));
			}
		}catch( SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return vo;
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

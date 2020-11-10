package co.mini.dao;

import java.sql.Date;
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

   private final String SELECT_ALL = "select e.img, e.event_no, o.branch_name, e.event_name, e.event_content, e.start_event, e.start_event + event_term as last_event,(1-e.sale)*100 as sale from event e join onwer o\r\n"
         + "on(e.branch_no = o.branch_no) order by event_no";
   
   
   
   //private final String SELECT = "SELECT * FROM EVENT WHERE EVENT_NO = ?";

   private final String INSERT = "INSERT INTO EVENT VALUES(?,?,?,?,?,?,?,?)";
   
//   private final String UPDATE = "UPDATE EVENT SET BRANCH_NO = ? ,BRANCH_NAME = ?, EVENT_NAME = ?, IMG = ?, EVENT_CONTENT = ?,  EVENT_TERM = ?, SALE = ? START_EVENT = ?";
//   
//   private final String DELETE = "DELETE FROM EVENT WHERE EVENT_NO = ?";
   
   private final String MaxEvent="select max(event_no)+1 from event";

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
            vo.setStart_event(rs.getDate("start_event"));
            vo.setLast_event(rs.getDate("last_event"));
            vo.setSale(rs.getInt("sale"));
            vo.setImg(rs.getString("img"));
            list.add(vo);
         }

      } catch (SQLException e) {
         e.printStackTrace();
      }
      return list;
   }

   public int insert(EventVO vo) {
      int n = 0;
      try {
         psmt = conn.prepareStatement(INSERT);
         psmt.setInt(1, vo.getBranch_no());
         psmt.setInt(2, vo.getEvent_no());
         psmt.setString(3, vo.getEvent_name());
         psmt.setString(4, vo.getImg());
         psmt.setString(5, vo.getEvent_content());
         psmt.setDate(6,vo.getStart_event());
         psmt.setDate(7,vo.getLast_event());
         psmt.setInt(8,vo.getSale());
         n = psmt.executeUpdate();
      } catch (SQLException e) {
         e.printStackTrace();
      }
      return n;

   }
   public int maxevent() {
      int n = 0;
      try {
         psmt = conn.prepareStatement(MaxEvent);
         rs = psmt.executeQuery();
         
         if (rs.next()) {
            n=rs.getInt("max(event_no)+1");
         }
      } catch ( SQLException e) {
         e.printStackTrace();
      } finally {
         close();
      }
      return n;
      
   }

     private final String event_thema="select e.img, e.event_no, o.branch_name,o.branch_no, e.event_name, e.event_content, e.start_event, e.start_event + event_term as last_event,(1-e.sale)*100 as sale from event e join onwer o\r\n" + 
     		"on(e.branch_no = o.branch_no)\r\n" + 
     		"where start_event<to_date(?,'YY-MM-DD') AND (start_event+event_term)>to_date(?,'YY-MM-DD')AND o.branch_name=?";
         
         public EventVO event_thema(String date,String branch_name) {
        	 EventVO vo = new EventVO();
            try {
               psmt = conn.prepareStatement(event_thema);
               psmt.setString(1, date);
               psmt.setString(2, date);
               psmt.setString(3, branch_name);
               
               rs = psmt.executeQuery();
               if (rs.next()) {
                  vo.setEvent_name(rs.getString("event_name"));
                  vo.setSale(rs.getInt("sale"));
//                  /*
//                   * vo.setAnswer(rs.getString("answer")); vo.setHit(rs.getInt("hit"));
//                   * vo.setBdate(rs.getDate("bdate"));
//                   */
               }
               
            } catch (Exception e) {
               e.printStackTrace();
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
   
   
   
   
   
   
   
   
   
//   public int update(EventVO vo) {
//      int n = 0;
//      try {
//         psmt = conn.prepareStatement(UPDATE);
//         psmt.setInt(1, vo.getBranch_no());
//         psmt.setString(2, vo.getBranch_name());
//         psmt.setString(3, vo.getEvent_name());
//         psmt.setString(4, vo.getEvent_content());
//         psmt.setDate(6,vo.getStart_event());
//         psmt.setDate(7,vo.getLast_event());
//         psmt.setInt(8,vo.getSale());
//         n = psmt.executeUpdate();
//      } catch (SQLException e) {
//         e.printStackTrace();
//      } 
//      return n;
//   }
//   public int delete(EventVO vo) {
//      int n = 0;
//      try {
//         psmt = conn.prepareStatement(DELETE);
//         psmt.setInt(1, vo.getEvent_no());
//      } catch (SQLException e) {
//         e.printStackTrace();
//      }
//      return n;
//      
//   }
//   public EventVO select(EventVO vo) {
//         try {
//            psmt = conn.prepareStatement(SELECT);
//            psmt.setInt(1, vo.getEvent_no());
//            rs = psmt.executeQuery();
//            if (rs.next()) {
//               vo.setBranch_no(rs.getInt("branch_no"));
//               vo.setEvent_no(rs.getInt("event_no"));
//               vo.setEvent_name(rs.getString("event_name"));
//               vo.setImg(rs.getString("img"));
//               vo.setEvent_content(rs.getString("event_content"));
//               vo.setStart_event(rs.getDate("start_event"));
//               vo.setLast_event(rs.getDate("last_event"));
//               vo.setSale(rs.getInt("sale"));
//                
//            }
//            
//         } catch (Exception e) {
//            e.printStackTrace();
//         }
//      return vo;
//   }

   

}
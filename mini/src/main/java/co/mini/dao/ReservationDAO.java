package co.mini.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;


// reservation 테이블 DAO
public class ReservationDAO extends DAO{
   
   private PreparedStatement psmt; // sql 명령문 실행
   private ResultSet rs; // select 후에 결과셋 받기 
   

   
   private final String SELECT = "select r.no, m.name , r.reservdate, r.personnel, r.price, r.payment, t.thema_name, r.time, m.phone, o.branch_name , m.count " 
                        + "from reservation r , thema t , member m , onwer o " 
                        + "where r.thema_no = t.thema_no " 
                        + "and r.id = m.id " 
                        + "and t.branch_no = o.branch_no " 
                        + "and m.id = ? "
                        + "order by r.reservdate desc";
   

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
            
            map.put("no",rs.getString("no"));
            map.put("name",rs.getString("NAME"));
            map.put("reservdate",rs.getDate("RESERVDATE"));
            map.put("personnel",rs.getInt("PERSONNEL"));
            map.put("price",rs.getInt("PRICE"));
            map.put("payment",rs.getString("PAYMENT"));
            map.put("thema_name",rs.getString("THEMA_NAME"));
            map.put("time",rs.getString("TIME"));
            map.put("phone",rs.getString("phone"));
            map.put("branch_name",rs.getString("branch_name"));
            map.put("count",rs.getString("count"));
            
            list.add(map);
         }
         
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         close();
      }
      return list;
   }
      
   
   
   private final String reSelect = "select o.branch_name, r.reservdate, r.time, t.thema_name, m.name, m.phone, r.personnel, r.price, r.payment, m.rank, r.no, m.count  " + 
                 "from reservation r , thema t , member m , onwer o " + 
                   "where r.thema_no = t.thema_no " + 
                   "and r.id = m.id " + 
                   "and t.branch_no = o.branch_no " + 
                   "and r.no = ? ";
   
   
   public ArrayList<HashMap<String, Object>> reSelect(int sno) {
      
      ArrayList<HashMap<String, Object>> list = new ArrayList<HashMap<String, Object>>();
      HashMap<String, Object> map;
      
      try {
         psmt = conn.prepareStatement(reSelect);
         
         // psmt.setString(1,sId);
         psmt.setInt(1,sno);
         
         rs = psmt.executeQuery();
         
         while(rs.next()) {
            
            map = new HashMap<String, Object>();
            
            map.put("branch_name",rs.getString("branch_name"));
            map.put("reservdate",rs.getDate("RESERVDATE"));
            map.put("time",rs.getString("TIME"));
            map.put("thema_name",rs.getString("THEMA_NAME"));
            map.put("name",rs.getString("NAME"));
            map.put("phone",rs.getString("phone"));
            map.put("personnel",rs.getInt("PERSONNEL"));
            map.put("price",rs.getInt("PRICE"));
            map.put("payment",rs.getString("PAYMENT"));
            map.put("rank",rs.getString("rank"));
            map.put("rno",rs.getInt("no"));
            map.put("count",rs.getInt("count"));
            
            list.add(map);
         }
         
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         close();
      }
      return list;
   }
      
   
  // 페이지네이션 할꺼야
   
   private final String PAGE_SEL =  "SELECT * FROM ( SELECT A.*, ROWNUM RN FROM  (\r\n" + 
   									"SELECT * FROM re_view where id= ?  ) A ) B WHERE RN BETWEEN ? AND ?";
   
   public ArrayList<HashMap<String, Object>> pageSel(int first, int last, String id) {
	      
	      ArrayList<HashMap<String, Object>> list = new ArrayList<HashMap<String, Object>>();
	      HashMap<String, Object> map;
	      
	      try {
	         psmt = conn.prepareStatement(PAGE_SEL);
	         
	         psmt.setString(1, id);
	         psmt.setInt(2,first);
	         psmt.setInt(3,last);
	         
	         
	         rs = psmt.executeQuery();
	         
	         while(rs.next()) {
	            
	            map = new HashMap<String, Object>();
	            
	            map.put("no",rs.getString("no"));
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
	      
	   
   private final String COUNT ="SELECT COUNT(*) AS COUNT FROM RE_VIEW WHERE ID = ? ";
   
   public int count(String id) {
	   
	   int cnt=0;
	   
		try {
			psmt = conn.prepareStatement(COUNT);
			psmt.setString(1, id);
			
			rs = psmt.executeQuery();
			rs.next();
			cnt = rs.getInt("COUNT"); 
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	   
		return cnt;
   }
  
   
   
   private final String MAX = "SELECT MAX(NO) as MAX FROM RESERVATION";
   
   public int reservMax() {
	   
	   int max = 0;
	   
	   try {
		psmt = conn.prepareStatement(MAX);
		
		rs = psmt.executeQuery();
		
		if (rs.next()) {
			max = rs.getInt("MAX");
		}
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	   return max;
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
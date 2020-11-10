package co.mini.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import co.mini.vo.NoticeVO;
import co.mini.vo.ReviewVO;

public class NoticeDAO  extends DAO {
	
	  private PreparedStatement psmt;
	  private ResultSet rs; 
	  
	  private final String INSERT = "insert into notice "
	  							  + "values(? , ? , ? , ? , ? , ? )";
	  
	  public int noticeInsert(NoticeVO vo) {
		  
		  int r=0;
		  
		  try {
			psmt = conn.prepareStatement(INSERT);
			
			psmt.setInt(1, vo.getNo());
			psmt.setInt(2, vo.getBranch_no());
			psmt.setString(3, vo.getId());
			psmt.setDate(4, vo.getInsert_date());
			psmt.setString(5, vo.getTitle());
			psmt.setString(6, vo.getContent());
			
			r = psmt.executeUpdate();
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
	         close();
	    }
		  
		  return r;
		  
	  }
	  
	  private final String SEL_BNO= "SELECT BRANCH_NO FROM ONWER WHERE BRANCH_NAME= ? "; 
	  
	  public int select_bno(String bname) {
		  
		  int bno = 0;
		  
		  try {
			psmt = conn.prepareStatement(SEL_BNO);
			
			psmt.setString(1,bname);
			
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				bno = rs.getInt("BRANCH_NO");
	         }
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
	         close();
	    }
		 
		 return bno;
	  }
	  
	  private final String MAX =  "select max(no) as max from notice";
	  
		  public int noticeMax() {
			  int max = 0;
			  try {
				psmt = conn.prepareStatement(MAX);
				
				rs = psmt.executeQuery();
				
				if(rs.next()) {
					max = rs.getInt("max");
		         }
				
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
		         close();
		    }
	
			return max;
			  
		  }
	
	  
		  private final String SELECTALL = "SELECT N.NO, O.BRANCH_NAME, N.INSERT_DATE, N.TITLE  " + 
				  							"FROM NOTICE N , ONWER O  " + 
				  							"WHERE N.BRANCH_NO = O.BRANCH_NO " +
				  							"ORDER BY 1";
		  
		  public ArrayList<HashMap<String, Object>> select_mem() {
			  
			  ArrayList<HashMap<String, Object>> list = new ArrayList<HashMap<String, Object>>();
		      HashMap<String, Object> map;
		      
		      try {
				psmt = conn.prepareStatement(SELECTALL);
				
				rs = psmt.executeQuery();
				
				while(rs.next()) {
		            
		            map = new HashMap<String, Object>();
		            
		            map.put("no",rs.getInt("NO"));
		            map.put("branch_name",rs.getString("BRANCH_NAME"));
		            map.put("insert_date",rs.getDate("INSERT_DATE"));
		            map.put("title",rs.getString("TITLE"));
		           
		            list.add(map);
		         }

			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
		         close();
		    }

			  return list;
		  }
		  
		  
		  private final String SELECT_DETAIL = "SELECT N.NO, O.BRANCH_NAME, N.INSERT_DATE, N.TITLE, N.CONTENT  " + 
		  								      "FROM NOTICE N , ONWER O  " + 
		  								      "WHERE N.BRANCH_NO = O.BRANCH_NO  " + 
		  								      "AND N.NO = ? "; 
		  
		  public NoticeVO detail_select(int b_no) {
			  
			  NoticeVO vo = new NoticeVO();
			  
			  try {
				psmt = conn.prepareStatement(SELECT_DETAIL);
				
				psmt.setInt(1, b_no);
				 
				rs = psmt.executeQuery();
				
				 if(rs.next()) {
			        	
		        	vo.setNo(rs.getInt("NO"));
		        	vo.setBranch_name(rs.getString("BRANCH_NAME"));
		        	vo.setInsert_date(rs.getDate("INSERT_DATE"));
		        	vo.setTitle(rs.getString("TITLE"));
		        	vo.setContent(rs.getString("CONTENT"));
			        	
			     }
				
				
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
			  
			  
			  return vo;
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

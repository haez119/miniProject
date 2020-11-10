package co.mini.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import co.mini.vo.NoticeVO;

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

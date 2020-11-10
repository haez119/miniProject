package co.mini.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import co.mini.vo.ReviewVO;

public class ReviewDAO extends DAO {
	
	  private PreparedStatement psmt;
	  private ResultSet rs; 
	  
	  private final String REVIEW = "select o.branch_name, r.reservdate, t.thema_name " + 
									  "from reservation r , thema t , member m , onwer o " + 
									  "where r.thema_no = t.thema_no " + 
									  "and r.id = m.id " + 
									  "and t.branch_no = o.branch_no  " + 
									  "and m.id = ? " + 
									  "and r.no = ?";
	  
	  public ReviewVO reviewInsert(String sid, int rno) {
	      
	      ReviewVO vo = null;
	      
	      try {
	         psmt = conn.prepareStatement(REVIEW);
	         
	         psmt.setString(1,sid);
	         psmt.setInt(2,rno);
	         
	         rs = psmt.executeQuery();
	         
	         if(rs.next()) {
	        	vo = new ReviewVO();
	        	vo.setBranch_name(rs.getString("branch_name"));
	        	vo.setUse_date(rs.getDate("reservdate"));
	        	vo.setThema_name(rs.getString("thema_name"));
	        	

	         }
	         
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         close();
	      }
	      return vo;
	   }
	      
	  
	  private final String MAX =  "select max(no) as max from review";
	  
	  public int reviewMax() {
		  int max = 0;
		  try {
			psmt = conn.prepareStatement(MAX);
			
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				max = rs.getInt("max");
	         }
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return max;
		  
	  }
	  
	  
	  
	  private final String INSERT= "INSERT INTO REVIEW VALUES(? , ? , ? , ? ,  ? , ? , ? , ? , DEFAULT, ?)";
	  
	  
	  public void insertReview(ReviewVO vo, int rno) {
		  
		  try {
			psmt = conn.prepareStatement(INSERT);
			
			psmt.setInt(1, vo.getNo());
			psmt.setString(2, vo.getBranch_name());
			psmt.setString(3, vo.getThema_name());
			psmt.setString(4, vo.getId());
			psmt.setDate(5, vo.getUse_date());
			psmt.setString(6, vo.getTitle());
			psmt.setString(7, vo.getContent());
			psmt.setInt(8, vo.getStar());
			psmt.setInt(9, rno);
			
			psmt.executeUpdate();
			
		} catch (SQLException e) {
		
			e.printStackTrace();
		} finally {
	         close();
	    }

		
	  }
	  
	  private ReviewVO vo;
	  
	  private final String select_all = "select * from review";
	  
	  public List<ReviewVO> selectAll() {
		  List<ReviewVO> list = new ArrayList<ReviewVO>();
		  try {
			psmt = conn.prepareStatement(select_all);
			rs = psmt.executeQuery();
			while(rs.next()) {
				vo = new ReviewVO();
				vo.setNo(rs.getInt("no"));
				vo.setBranch_name(rs.getString("branch_name"));
				vo.setThema_name(rs.getString("thema_name"));
				vo.setId(rs.getString("id"));
				vo.setUse_date(rs.getDate("use_date"));
				vo.setTitle(rs.getString("title"));
				vo.setContent(rs.getString("content"));
				vo.setStar(rs.getInt("star"));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
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

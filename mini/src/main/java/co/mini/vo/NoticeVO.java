package co.mini.vo;

import java.sql.Date;

public class NoticeVO {
	
	private int no;
	private int branch_no;
	private String id;
	private Date insert_date;
	private String title;
	private String content;
	
	
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getBranch_no() {
		return branch_no;
	}
	public void setBranch_no(int branch_no) {
		this.branch_no = branch_no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Date getInsert_date() {
		return insert_date;
	}
	public void setInsert_date(Date insert_date) {
		this.insert_date = insert_date;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	

	

}

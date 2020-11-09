package co.mini.vo;

import java.sql.Date;

public class ReviewVO {
	private String branch_name;
	private String name;
	private Date reservdate;
	private String thema_name;
	private String phone;
	
	public String getBranch_name() {
		return branch_name;
	}
	public void setBranch_name(String branch_name) {
		this.branch_name = branch_name;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getReservdate() {
		return reservdate;
	}
	public void setReservdate(Date reservdate) {
		this.reservdate = reservdate;
	}
	public String getThema_name() {
		return thema_name;
	}
	public void setThema_name(String thema_name) {
		this.thema_name = thema_name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
}

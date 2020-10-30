package co.mini.vo;

import java.sql.Date;

public class ReservationVO {
	
	private int no;
	private String id;
	private Date reservDate; //예약일
	private int personnel; // 인원
	private int price;
	private String payment;
	private int themaNo;
	private String time;
	
	
	
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public Date getReservDate() {
		return reservDate;
	}
	public void setReservDate(Date reservDate) {
		this.reservDate = reservDate;
	}
	
	public int getPersonnel() {
		return personnel;
	}
	public void setPersonnel(int personnel) {
		this.personnel = personnel;
	}
	
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	
	public int getThemaNo() {
		return themaNo;
	}
	public void setThemaNo(int themaNo) {
		this.themaNo = themaNo;
	}
	
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	

	
	
	
}

package co.mini.vo;

import java.util.Date;

public class EventVO {

	private int event_no;
	private String branch_name;
	private String event_name;
	private String event_content;
	private Date start_event;
	private Date last_event;
	private int sale;
	private String img;
	
	
	
	public String getImg() {
		return img;
	}


	public void setImg(String img) {
		this.img = img;
	}


	public int getSale() {
		return sale;
	}


	public void setSale(int sale) {
		this.sale = sale;
	}

	public Date getLast_event() {
		return last_event;
	}

	public void setLast_event(Date last_event) {
		this.last_event = last_event;
	}

	public Date getStart_event() {
		return start_event;
	}

	public void setStart_event(Date start_event) {
		this.start_event = start_event;
	}

	public EventVO() {
	
	}

	public int getEvent_no() {
		return event_no;
	}
	
	public void setEvent_no(int event_no) {
		this.event_no = event_no;
	}
	
	public String getBranch_name() {
		return branch_name;
	}
	
	public void setBranch_name(String branch_name) {
		this.branch_name = branch_name;
	}
	
	public String getEvent_name() {
		return event_name;
	}

	public void setEvent_name(String event_name) {
		this.event_name = event_name;
	}

	public String getEvent_content() {
		return event_content;
	}
	
	public void setEvent_content(String event_content) {
		this.event_content = event_content;
	}
	
	
	
	
}

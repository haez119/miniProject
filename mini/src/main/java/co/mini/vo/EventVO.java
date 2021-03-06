package co.mini.vo;

import java.sql.Date;

public class EventVO {

	private int branch_no;
	private int event_no;
	private String event_name;
	private String event_content;
	private Date start_event;
	private Date last_event;
	private String img;
	private int event_term;
	private Double sale;
	private int sale2;
	private String branch_name;

	public int getSale2() {
		return sale2;
	}

	public void setSale2(int sale2) {
		this.sale2 = sale2;
	}

	public String getBranch_name() {
		return branch_name;
	}

	public void setBranch_name(String branch_name) {
		this.branch_name = branch_name;
	}

	public EventVO() {

	}

	public int getEvent_term() {
		return event_term;
	}

	public void setEvent_term(int event_term) {
		this.event_term = event_term;
	}

	public Date getStart_event() {
		return start_event;
	}

	public void setStart_event(Date start_event) {
		this.start_event = start_event;
	}

	public Date getLast_event() {
		return last_event;
	}

	public void setLast_event(Date last_event) {
		this.last_event = last_event;
	}

	public int getBranch_no() {
		return branch_no;
	}

	public void setBranch_no(int branch_no) {
		this.branch_no = branch_no;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public Double getSale() {
		return sale;
	}

	public void setSale(Double sale) {
		this.sale = sale;
	}

	public int getEvent_no() {
		return event_no;
	}

	public void setEvent_no(int event_no) {
		this.event_no = event_no;
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

	@Override
	public String toString() {
		return "EventVO [branch_no=" + branch_no + ", event_no=" + event_no + ", event_name=" + event_name
				+ ", event_content=" + event_content + ", start_event=" + start_event + ", last_event=" + last_event
				+ ", img=" + img + ", event_term=" + event_term + ", sale=" + sale + ", branch_name=" + branch_name
				+ "]";
	}

}
package co.mini.vo;

import java.sql.Date;

public class ReviewVO {
	private int no;
	private String branch_name;
	private String thema_name;
	private String id;
	private Date use_date;
	private String title;
	private String content;
	private int star;
	private int hit;

	public ReviewVO() {

	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getBranch_name() {
		return branch_name;
	}

	public void setBranch_name(String branch_name) {
		this.branch_name = branch_name;
	}

	public String getThema_name() {
		return thema_name;
	}

	public void setThema_name(String thema_name) {
		this.thema_name = thema_name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Date getUse_date() {
		return use_date;
	}

	public void setUse_date(Date use_date) {
		this.use_date = use_date;
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

	public int getStar() {
		return star;
	}

	public void setStar(int star) {
		this.star = star;
	}

}

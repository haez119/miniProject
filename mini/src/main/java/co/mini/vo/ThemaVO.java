package co.mini.vo;

import java.util.List;

public class ThemaVO {

private String branch_name;
private int thema_no ;
private String thema_name ;
private String thema_img ;
private String thema_intro;
private int level2;
private int max_per;
private List<ScheduleVo> schedulelist;
private String date;


public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
public String getBranch_name() {
	return branch_name;
}
public void setBranch_name(String branch_name) {
	this.branch_name = branch_name;
}

public List<ScheduleVo> getSchedulelist() {
	return schedulelist;
}
public void setSchedulelist(List<ScheduleVo> schedulelist) {
	this.schedulelist = schedulelist;
}
public ThemaVO() {
	super();
}
public ThemaVO(int thema_no, String thema_name, String thema_img, String thema_intro, int level2, int max_per) {
	super();
	this.thema_no = thema_no;
	this.thema_name = thema_name;
	this.thema_img = thema_img;
	this.thema_intro = thema_intro;
	this.level2 = level2;
	this.max_per = max_per;
}
public int getThema_no() {
	return thema_no;
}
public void setThema_no(int thema_no) {
	this.thema_no = thema_no;
}
public String getThema_name() {
	return thema_name;
}
public void setThema_name(String thema_name) {
	this.thema_name = thema_name;
}
public String getThema_img() {
	return thema_img;
}
public void setThema_img(String thema_img) {
	this.thema_img = thema_img;
}
public String getThema_intro() {
	return thema_intro;
}
public void setThema_intro(String thema_intro) {
	this.thema_intro = thema_intro;
}
public int getLevel2() {
	return level2;
}
public void setLevel2(int level2) {
	this.level2 = level2;
}
public int getMax_per() {
	return max_per;
}
public void setMax_per(int max_per) {
	this.max_per = max_per;
}

}

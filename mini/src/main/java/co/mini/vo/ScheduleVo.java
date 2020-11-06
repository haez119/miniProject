package co.mini.vo;

public class ScheduleVo {
private int thema_no;
private String time;

public ScheduleVo(int thema_no, String time) {
	super();
	this.thema_no = thema_no;
	this.time = time;
}
public ScheduleVo() {
	super();
}
public int getThema_no() {
	return thema_no;
}
public void setThema_no(int thema_no) {
	this.thema_no = thema_no;
}
public String getTime() {
	return time;
}
public void setTime(String time) {
	this.time = time;
}

}

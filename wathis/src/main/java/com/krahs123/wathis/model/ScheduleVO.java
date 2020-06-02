
package com.krahs123.wathis.model;

public class ScheduleVO {
	
	private String startDate;
	private String endDate;
	private String scheduleContent;
	private String userName;
	private String end;
	private String start;
	private String title;
	
	public String getEnd() {
		return end;
	}
	public void setEnd(String end) {
		this.end = end;
	}
	public String getStart() {
		return start;
	}
	public void setStart(String start) {
		this.start = start;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getScheduleContent() {
		return scheduleContent;
	}
	public void setScheduleContent(String scheduleContent) {
		this.scheduleContent = scheduleContent;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}

}

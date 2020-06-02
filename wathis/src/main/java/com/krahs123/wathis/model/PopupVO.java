package com.krahs123.wathis.model;

import org.springframework.web.multipart.MultipartFile;

public class PopupVO {
//팝업
//	+------------+------------------+------+-----+-------------------+-------------------+
//	| Field      | Type             | Null | Key | Default           | Extra             |
//	+------------+------------------+------+-----+-------------------+-------------------+
//	| id         | int(10) unsigned | NO   | PRI | NULL              | auto_increment    |
//	| member_id  | int(10) unsigned | NO   |     | NULL              |                   |
//	| display    | varchar(20)      | NO   |     | NULL              |                   |
//	| title      | varchar(30)      | NO   |     | NULL              |                   |
//	| subtitle   | varchar(50)      | NO   |     | NULL              |                   |
//	| img        | varchar(200)     | NO   |     | NULL              |                   |
//	| url        | varchar(200)     | NO   |     | NULL              |                   |
//	| start_date | datetime         | NO   |     | NULL              |                   |
//	| end_date   | datetime         | NO   |     | NULL              |                   |
//	| status     | char(1)          | YES  |     | 1                 |                   |
//	| reg_date   | datetime         | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
//	+------------+------------------+------+-----+-------------------+-------------------+
	private int id;
	private int member_id;
	private String title;
	private String display;
	private String subtitle;
	private String img;
	private String url;
	private String start_date;
	private String end_date;
	private String status;
	private String reg_date;
	public String getDisplay() {
		return display;
	}
	public void setDisplay(String display) {
		this.display = display;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getMember_id() {
		return member_id;
	}
	public void setMember_id(int member_id) {
		this.member_id = member_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSubtitle() {
		return subtitle;
	}
	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getStart_date() {
		return start_date;
	}
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}
	public String getEnd_date() {
		return end_date;
	}
	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
}

package com.krahs123.wathis.model;

public class SiteConfigVO {
	//사이트 설정
//	+----------+------------------+------+-----+-------------------+-------------------+
//	| Field    | Type             | Null | Key | Default           | Extra             |
//	+----------+------------------+------+-----+-------------------+-------------------+
//	| id       | int(10) unsigned | NO   | PRI | NULL              | auto_increment    |
//	| group_id | varchar(10)      | NO   |     | NULL              |                   |
//	| title    | varchar(10)      | YES  |     | NULL              |                   |
//	| content  | varchar(100)     | YES  |     | NULL              |                   |
//	| reg_date | datetime         | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
//	+----------+------------------+------+-----+-------------------+-------------------+

	private int id;
	private String group_id;
	private String title;
	private String content;
	private String reg_date;
	
	public String getGroup_id() {
		return group_id;
	}
	public void setGroup_id(String group_id) {
		this.group_id = group_id;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
}

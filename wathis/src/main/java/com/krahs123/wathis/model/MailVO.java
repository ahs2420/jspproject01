package com.krahs123.wathis.model;

public class MailVO {
	 
//	+----------+------------------+------+-----+-------------------+-------------------+
//	| Field    | Type             | Null | Key | Default           | Extra             |
//	+----------+------------------+------+-----+-------------------+-------------------+
//	| id       | int(10) unsigned | NO   | PRI | NULL              | auto_increment    |
//	| mailto   | varchar(50)      | NO   |     | NULL              |                   |
//	| title    | varchar(100)     | NO   |     | NULL              |                   |
//	| content  | text             | NO   |     | NULL              |                   |
//	| reg_date | datetime         | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
//	+----------+------------------+------+-----+-------------------+-------------------+

	private String id;
	private String mailto;
	private String title;
	private String content;
	private String reg_date;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getMailto() {
		return mailto;
	}
	public void setMailto(String mailto) {
		this.mailto = mailto;
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

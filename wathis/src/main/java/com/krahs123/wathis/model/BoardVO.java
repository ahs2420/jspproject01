package com.krahs123.wathis.model;

public class BoardVO {
	//게시판 설정
//	+---------------+------------------+------+-----+-------------------+-------------------+
//	| Field         | Type             | Null | Key | Default           | Extra             |
//	+---------------+------------------+------+-----+-------------------+-------------------+
//	| id            | int(10) unsigned | NO   | PRI | NULL              | auto_increment    |
//	| config_id     | int(10) unsigned | NO   | MUL | NULL              |                   |
//	| member_id     | int(10) unsigned | NO   | MUL | 0                 |                   |
//	| title         | varchar(100)     | NO   |     | NULL              |                   |
//	| category      | varchar(100)     | NO   |     | NULL              |                   |
//	| member_imgae  | varchar(100)     | YES  |     | NULL              |                   |
//	| member_userid | varchar(100)     | YES  |     | NULL              |                   |
//	| content       | text             | NO   |     | NULL              |                   |
//	| img           | varchar(100)     | NO   |     | NULL              |                   |
//	| reg_date      | datetime         | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
//	+---------------+------------------+------+-----+-------------------+-------------------+

	private int id;
	private int member_id;
	private String boardCode;
	private String boardName;
	private String boardColor;
	private String boardListTemplate;
	private String boardContentTemplate;
	private String reg_date;
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
	public String getBoardCode() {
		return boardCode;
	}
	public void setBoardCode(String boardCode) {
		this.boardCode = boardCode;
	}
	public String getBoardName() {
		return boardName;
	}
	public void setBoardName(String boardName) {
		this.boardName = boardName;
	}
	public String getBoardColor() {
		return boardColor;
	}
	public void setBoardColor(String boardColor) {
		this.boardColor = boardColor;
	}
	public String getBoardListTemplate() {
		return boardListTemplate;
	}
	public void setBoardListTemplate(String boardListTemplate) {
		this.boardListTemplate = boardListTemplate;
	}
	public String getBoardContentTemplate() {
		return boardContentTemplate;
	}
	public void setBoardContentTemplate(String boardContentTemplate) {
		this.boardContentTemplate = boardContentTemplate;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
}

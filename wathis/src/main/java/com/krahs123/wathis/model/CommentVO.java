package com.krahs123.wathis.model;

public class CommentVO {
//게시글 댓글
//	+------------+------------------+------+-----+-------------------+-------------------+
//	| Field      | Type             | Null | Key | Default           | Extra             |
//	+------------+------------------+------+-----+-------------------+-------------------+
//	| id         | int(10) unsigned | NO   | PRI | NULL              | auto_increment    |
//	| member_id  | int(10) unsigned | NO   |     | 0                 |                   |
//	| article_id | int(10) unsigned | NO   |     | 0                 |                   |
//	| writer     | varchar(20)      | NO   |     | NULL              |                   |
//	| content    | text             | NO   |     | NULL              |                   |
//	| reg_date   | datetime         | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
//	+------------+------------------+------+-----+-------------------+-------------------+
	private int id;
	private int member_id;
	private int article_id;
	private String writer;
	private String content;
	private String reg_date;
	private String boardCode;
	public String getBoardCode() {
		return boardCode;
	}
	public void setBoardCode(String boardCode) {
		this.boardCode = boardCode;
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
	public int getArticle_id() {
		return article_id;
	}
	public void setArticle_id(int article_id) {
		this.article_id = article_id;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
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

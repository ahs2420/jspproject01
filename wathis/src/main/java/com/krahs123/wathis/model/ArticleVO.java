package com.krahs123.wathis.model;

public class ArticleVO {
//	자동생성 게시판
//	+-------------+------------------+------+-----+-------------------+-------------------+
//	| Field       | Type             | Null | Key | Default           | Extra             |
//	+-------------+------------------+------+-----+-------------------+-------------------+
//	| id          | int(10) unsigned | NO   | PRI | NULL              | auto_increment    |
//	| member_id   | int(10) unsigned | NO   |     | 0                 |                   |
//	| subject     | varchar(100)     | NO   |     | NULL              |                   |
//	| writer      | varchar(20)      | NO   |     | NULL              |                   |
//	| content     | text             | NO   |     | NULL              |                   |
//	| hit         | int(11)          | YES  |     | 0                 |                   |
//	| fileName    | varchar(300)     | YES  |     | NULL              |                   |
//	| fileOriName | varchar(300)     | YES  |     | NULL              |                   |
//	| fileUrl     | varchar(300)     | YES  |     | NULL              |                   |
//	| ref         | int(11)          | YES  |     | NULL              |                   |
//	| re_step     | int(11)          | YES  |     | NULL              |                   |
//	| re_level    | int(11)          | YES  |     | NULL              |                   |
//	| reg_date    | datetime         | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
//	+-------------+------------------+------+-----+-------------------+-------------------+
	private int id;
	private int member_id;
	private String subject;
	private String writer;
	private String content;
	private int hit;
	private String fileName;
	private String fileOriName;
	private String fileUrl;
	private int ref;
	private int re_step;
	private int re_level;
	private String reg_date;
	private String boardCode;
	private String uimg;
	
	public String getUimg() {
		return uimg;
	}
	public void setUimg(String uimg) {
		this.uimg = uimg;
	}
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
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
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
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFileOriName() {
		return fileOriName;
	}
	public void setFileOriName(String fileOriName) {
		this.fileOriName = fileOriName;
	}
	public String getFileUrl() {
		return fileUrl;
	}
	public void setFileUrl(String fileUrl) {
		this.fileUrl = fileUrl;
	}
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public int getRe_step() {
		return re_step;
	}
	public void setRe_step(int re_step) {
		this.re_step = re_step;
	}
	public int getRe_level() {
		return re_level;
	}
	public void setRe_level(int re_level) {
		this.re_level = re_level;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
}

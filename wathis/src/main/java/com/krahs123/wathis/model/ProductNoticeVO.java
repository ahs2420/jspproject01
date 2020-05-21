package com.krahs123.wathis.model;

public class ProductNoticeVO {
	// 상품 새소식
//	+------------+------------------+------+-----+-------------------+-------------------+
//	| Field      | Type             | Null | Key | Default           | Extra             |
//	+------------+------------------+------+-----+-------------------+-------------------+
//	| id         | int(10) unsigned | NO   | PRI | NULL              | auto_increment    |
//	| member_id  | int(10) unsigned | NO   |     | 0                 |                   |
//	| product_id | int(10) unsigned | NO   |     | 0                 |                   |
//	| title      | varchar(100)     | NO   |     | NULL              |                   |
//	| content    | text             | NO   |     | NULL              |                   |
//	| reg_date   | datetime         | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
//	+------------+------------------+------+-----+-------------------+-------------------+
	private int id;
	private int member_id;
	private int product_id;
	private String title;
	private String content;
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
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
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

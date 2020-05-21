package com.krahs123.wathis.model;

public class ProductCommentVO {
//상품 댓글
//	+---------------+------------------+------+-----+-------------------+-------------------+
//	| Field         | Type             | Null | Key | Default           | Extra             |
//	+---------------+------------------+------+-----+-------------------+-------------------+
//	| id            | int(10) unsigned | NO   | PRI | NULL              | auto_increment    |
//	| member_id     | int(10) unsigned | NO   |     | 0                 |                   |
//	| product_id    | int(10) unsigned | NO   |     | 0                 |                   |
//	| parent_id     | int(10) unsigned | NO   |     | 0                 |                   |
//	| member_imgae  | varchar(100)     | YES  |     | NULL              |                   |
//	| member_status | varchar(100)     | YES  |     | NULL              |                   |
//	| member_userid | varchar(100)     | YES  |     | NULL              |                   |
//	| comment       | varchar(100)     | YES  |     | NULL              |                   |
//	| reg_date      | datetime         | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
//	+---------------+------------------+------+-----+-------------------+-------------------+
	private int id;
	private int member_id;
	private int product_id;
	private int parent_id;
	private String member_imgae;
	private String member_status;
	private String member_userid;
	private String comment;
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
	public int getParent_id() {
		return parent_id;
	}
	public void setParent_id(int parent_id) {
		this.parent_id = parent_id;
	}
	public String getMember_imgae() {
		return member_imgae;
	}
	public void setMember_imgae(String member_imgae) {
		this.member_imgae = member_imgae;
	}
	public String getMember_status() {
		return member_status;
	}
	public void setMember_status(String member_status) {
		this.member_status = member_status;
	}
	public String getMember_userid() {
		return member_userid;
	}
	public void setMember_userid(String member_userid) {
		this.member_userid = member_userid;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
}

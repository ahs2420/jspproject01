package com.krahs123.wathis.model;

public class CategoryVO {
	//상품 카테고리
//	+-----------+------------------+------+-----+-------------------+-------------------+
//	| Field     | Type             | Null | Key | Default           | Extra             |
//	+-----------+------------------+------+-----+-------------------+-------------------+
//	| id        | int(10) unsigned | NO   | PRI | NULL              | auto_increment    |
//	| parent_id | int(10) unsigned | NO   | MUL | 0                 |                   |
//	| dept      | int(11)          | NO   |     | 1                 |                   |
//	| title     | varchar(30)      | NO   |     | NULL              |                   |
//	| cate_img  | varchar(100)     | NO   |     | NULL              |                   |
//	| reg_date  | datetime         | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
//	+-----------+------------------+------+-----+-------------------+-------------------+
	private int id;
	private int parent_id;
	private int dept;
	private String title;
	private String cate_img;
	private String reg_date;
	
	public String getCate_img() {
		return cate_img;
	}
	public void setCate_img(String cate_img) {
		this.cate_img = cate_img;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getParent_id() {
		return parent_id;
	}
	public void setParent_id(int parent_id) {
		this.parent_id = parent_id;
	}
	public int getDept() {
		return dept;
	}
	public void setDept(int dept) {
		this.dept = dept;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
}

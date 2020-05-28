package com.krahs123.wathis.model;

public class MenuVO {
	// 메뉴 
//	+-----------+------------------+------+-----+-------------------+-------------------+
//	| Field     | Type             | Null | Key | Default           | Extra             |
//	+-----------+------------------+------+-----+-------------------+-------------------+
//	| id        | int(10) unsigned | NO   | PRI | NULL              | auto_increment    |
//	| parent_id | int(10) unsigned | NO   |     | 0                 |                   |
//	| group_id  | int(10) unsigned | NO   |     | 0                 |                   |
//	| dept      | int(11)          | NO   |     | 1                 |                   |
//	| morder    | int(11)          | NO   |     | 0                 |                   |
//	| title     | varchar(100)     | NO   |     | NULL              |                   |
//	| url       | varchar(100)     | NO   |     | NULL              |                   |
//	| reg_date  | datetime         | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
//	+-----------+------------------+------+-----+-------------------+-------------------+
	private int id;
	private int parent_id;
	private int group_id;
	private int dept;
	private int morder;
	private String title;
	private String url;
	private String reg_date;
	public int getGroup_id() {
		return group_id;
	}
	public void setGroup_id(int group_id) {
		this.group_id = group_id;
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
	public int getMorder() {
		return morder;
	}
	public void setMorder(int morder) {
		this.morder = morder;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	
}

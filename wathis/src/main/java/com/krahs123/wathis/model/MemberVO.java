package com.krahs123.wathis.model;

public class MemberVO {
//회원 
//	+-----------+------------------+------+-----+-------------------+-------------------+
//	| Field     | Type             | Null | Key | Default           | Extra             |
//	+-----------+------------------+------+-----+-------------------+-------------------+
//	| id        | int(10) unsigned | NO   | PRI | NULL              | auto_increment    |
//	| uid       | varchar(50)      | NO   | MUL | NULL              |                   |
//	| upassword | varchar(255)     | NO   |     | NULL              |                   |
//	| sns_type  | varchar(10)      | NO   |     | NULL              |                   |
//	| sns_id    | varchar(200)     | NO   |     | NULL              |                   |
//	| uname     | varchar(20)      | NO   |     | NULL              |                   |
//	| utel      | varchar(255)     | NO   |     | NULL              |                   |
//	| uemail    | varchar(50)      | NO   |     | NULL              |                   |
//	| ugroup    | int(11)          | NO   |     | 0                 |                   |
//	| uimg      | varchar(100)     | NO   |     | 0                 |                   |
//	| status    | int(1)           | NO   |     | 1                 |                   |
//	| reg_date  | datetime         | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
//	+-----------+------------------+------+-----+-------------------+-------------------+

	private int id;
	private String uid;
	private String upassword;
	private String sns_type;
	private String sns_id;
	private String uname;
	private String utel;
	private String uemail;
	private int ugroup;
	private String uimg;
	private int status;
	private String reg_date;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getUpassword() {
		return upassword;
	}
	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}
	public String getSns_type() {
		return sns_type;
	}
	public void setSns_type(String sns_type) {
		this.sns_type = sns_type;
	}
	public String getSns_id() {
		return sns_id;
	}
	public void setSns_id(String sns_id) {
		this.sns_id = sns_id;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUtel() {
		return utel;
	}
	public void setUtel(String utel) {
		this.utel = utel;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public int getUgroup() {
		return ugroup;
	}
	public void setUgroup(int ugroup) {
		this.ugroup = ugroup;
	}
	public String getUimg() {
		return uimg;
	}
	public void setUimg(String uimg) {
		this.uimg = uimg;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	
}

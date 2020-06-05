package com.krahs123.wathis.model;

public class MemberAddrVO {
//회원 주소 목록
//	+-----------+------------------+------+-----+-------------------+-------------------+
//	| Field     | Type             | Null | Key | Default           | Extra             |
//	+-----------+------------------+------+-----+-------------------+-------------------+
//	| id        | int(10) unsigned | NO   | PRI | NULL              | auto_increment    |
//	| member_id | int(10) unsigned | NO   |     | 0                 |                   |
//	| addr1     | varchar(20)      | NO   |     | NULL              |                   |
//	| addr2     | varchar(100)     | NO   |     | NULL              |                   |
//	| addr3     | varchar(100)     | NO   |     | NULL              |                   |
//	| addr4     | varchar(100)     | NO   |     | NULL              |                   |
//	| ship_name | varchar(50)      | NO   |     | NULL              |                   |
//	| ship_tel  | varchar(255)     | NO   |     | NULL              |                   |
//	| ship_desc | varchar(30)      | NO   |     |                   |                   |
//	| reg_date  | datetime         | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
//	+-----------+------------------+------+-----+-------------------+-------------------+
	private int id;
	private int member_id;
	private String addr1;
	private String addr2;
	private String addr3;
	private String addr4;
	private String ship_name;
	private String ship_tel;
	private String ship_desc;
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
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getAddr3() {
		return addr3;
	}
	public void setAddr3(String addr3) {
		this.addr3 = addr3;
	}
	
	public String getAddr4() {
		return addr4;
	}
	public void setAddr4(String addr4) {
		this.addr4 = addr4;
	}
	public String getShip_name() {
		return ship_name;
	}
	public void setShip_name(String ship_name) {
		this.ship_name = ship_name;
	}
	public String getShip_tel() {
		return ship_tel;
	}
	public void setShip_tel(String ship_tel) {
		this.ship_tel = ship_tel;
	}
	public String getShip_desc() {
		return ship_desc;
	}
	public void setShip_desc(String ship_desc) {
		this.ship_desc = ship_desc;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
}

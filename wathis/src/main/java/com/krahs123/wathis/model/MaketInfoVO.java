package com.krahs123.wathis.model;

public class MaketInfoVO {
//메이커 정보
//	+----------------------+------------------+------+-----+-------------------+-------------------+
//	| Field                | Type             | Null | Key | Default           | Extra             |
//	+----------------------+------------------+------+-----+-------------------+-------------------+
//	| id                   | int(11)          | NO   | PRI | NULL              | auto_increment    |
//	| audit_id             | int(10) unsigned | NO   |     | NULL              |                   |
//	| marker_name          | varchar(50)      | NO   |     | NULL              |                   |
//	| img_dir              | varchar(100)     | YES  |     | NULL              |                   |
//	| marker_img           | varchar(100)     | NO   |     | NULL              |                   |
//	| marker_email         | varchar(100)     | NO   |     | NULL              |                   |
//	| marker_phone         | varchar(50)      | NO   |     | NULL              |                   |
//	| marker_kakao_id      | varchar(100)     | YES  |     | NULL              |                   |
//	| marker_kakao_url     | varchar(100)     | YES  |     | NULL              |                   |
//	| marker_home_page_url | varchar(100)     | YES  |     | NULL              |                   |
//	| marker_facebook_url  | varchar(100)     | YES  |     | NULL              |                   |
//	| marker_twiter_url    | varchar(100)     | YES  |     | NULL              |                   |
//	| marker_instagram_url | varchar(100)     | YES  |     | NULL              |                   |
//	| business_type        | varchar(5)       | NO   |     | NULL              |                   |
//	| bankbook_img         | varchar(100)     | NO   |     | NULL              |                   |
//	| reg_date             | datetime         | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
//	+----------------------+------------------+------+-----+-------------------+-------------------+
	private int id;
	private int audit_id;
	private String marker_name;
	private String img_dir;
	private String marker_img;
	private String marker_email;
	private String marker_phone;
	private String marker_kakao_id;
	private String marker_kakao_url;
	private String marker_home_page_url;
	private String marker_facebook_url;
	private String marker_twiter_url;
	private String marker_instagram_url;
	private String business_type;
	private String bankbook_img;
	private String reg_date;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getAudit_id() {
		return audit_id;
	}
	public void setAudit_id(int audit_id) {
		this.audit_id = audit_id;
	}
	public String getMarker_name() {
		return marker_name;
	}
	public void setMarker_name(String marker_name) {
		this.marker_name = marker_name;
	}
	public String getImg_dir() {
		return img_dir;
	}
	public void setImg_dir(String img_dir) {
		this.img_dir = img_dir;
	}
	public String getMarker_img() {
		return marker_img;
	}
	public void setMarker_img(String marker_img) {
		this.marker_img = marker_img;
	}
	public String getMarker_email() {
		return marker_email;
	}
	public void setMarker_email(String marker_email) {
		this.marker_email = marker_email;
	}
	public String getMarker_phone() {
		return marker_phone;
	}
	public void setMarker_phone(String marker_phone) {
		this.marker_phone = marker_phone;
	}
	public String getMarker_kakao_id() {
		return marker_kakao_id;
	}
	public void setMarker_kakao_id(String marker_kakao_id) {
		this.marker_kakao_id = marker_kakao_id;
	}
	public String getMarker_kakao_url() {
		return marker_kakao_url;
	}
	public void setMarker_kakao_url(String marker_kakao_url) {
		this.marker_kakao_url = marker_kakao_url;
	}
	public String getMarker_home_page_url() {
		return marker_home_page_url;
	}
	public void setMarker_home_page_url(String marker_home_page_url) {
		this.marker_home_page_url = marker_home_page_url;
	}
	public String getMarker_facebook_url() {
		return marker_facebook_url;
	}
	public void setMarker_facebook_url(String marker_facebook_url) {
		this.marker_facebook_url = marker_facebook_url;
	}
	public String getMarker_twiter_url() {
		return marker_twiter_url;
	}
	public void setMarker_twiter_url(String marker_twiter_url) {
		this.marker_twiter_url = marker_twiter_url;
	}
	public String getMarker_instagram_url() {
		return marker_instagram_url;
	}
	public void setMarker_instagram_url(String marker_instagram_url) {
		this.marker_instagram_url = marker_instagram_url;
	}
	public String getBusiness_type() {
		return business_type;
	}
	public void setBusiness_type(String business_type) {
		this.business_type = business_type;
	}
	public String getBankbook_img() {
		return bankbook_img;
	}
	public void setBankbook_img(String bankbook_img) {
		this.bankbook_img = bankbook_img;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
}

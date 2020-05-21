package com.krahs123.wathis.model;

public class ProductVO {
	//상품 
//	+----------------+------------------+------+-----+-------------------+-------------------+
//	| Field          | Type             | Null | Key | Default           | Extra             |
//	+----------------+------------------+------+-----+-------------------+-------------------+
//	| id             | int(10) unsigned | NO   | PRI | NULL              | auto_increment    |
//	| member_id      | int(10) unsigned | NO   |     | 0                 |                   |
//	| category_id    | int(10) unsigned | NO   |     | 0                 |                   |
//	| audit_id       | int(10) unsigned | NO   |     | NULL              |                   |
//	| status         | char(1)          | NO   |     | 0                 |                   |
//	| title          | varchar(100)     | NO   |     | NULL              |                   |
//	| sub_title      | varchar(100)     | NO   |     | NULL              |                   |
//	| video_chk      | tinyint(1)       | NO   |     | NULL              |                   |
//	| img_upload_dir | varchar(100)     | NO   |     | NULL              |                   |
//	| img            | text             | NO   |     | NULL              |                   |
//	| content        | text             | NO   |     | NULL              |                   |
//	| price          | int(11)          | NO   |     | NULL              |                   |
//	| start_date     | date             | NO   |     | NULL              |                   |
//	| end_date       | date             | NO   |     | NULL              |                   |
//	| maker_name     | varchar(20)      | NO   |     | NULL              |                   |
//	| maker_tel      | varchar(255)     | NO   |     | NULL              |                   |
//	| maker_homepage | varchar(255)     | NO   |     | NULL              |                   |
//	| maker_sns_type | varchar(255)     | NO   |     | NULL              |                   |
//	| maker_sns_url  | varchar(255)     | NO   |     | NULL              |                   |
//	| keyword        | varchar(255)     | NO   |     | NULL              |                   |
//	| reg_date       | datetime         | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
//	+----------------+------------------+------+-----+-------------------+-------------------+
	private int id;
	private int member_id;
	private int category_id;
	private int audit_id;
	private String status;
	private String title;
	private String sub_title;
	private int video_chk;
	private String img_upload_dir;
	private String img;
	private String content;
	private int price;
	private String start_date;
	private String end_date;
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
	public int getCategory_id() {
		return category_id;
	}
	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}
	public int getAudit_id() {
		return audit_id;
	}
	public void setAudit_id(int audit_id) {
		this.audit_id = audit_id;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSub_title() {
		return sub_title;
	}
	public void setSub_title(String sub_title) {
		this.sub_title = sub_title;
	}
	public int getVideo_chk() {
		return video_chk;
	}
	public void setVideo_chk(int video_chk) {
		this.video_chk = video_chk;
	}
	public String getImg_upload_dir() {
		return img_upload_dir;
	}
	public void setImg_upload_dir(String img_upload_dir) {
		this.img_upload_dir = img_upload_dir;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getStart_date() {
		return start_date;
	}
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}
	public String getEnd_date() {
		return end_date;
	}
	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}
	public String getMaker_name() {
		return maker_name;
	}
	public void setMaker_name(String maker_name) {
		this.maker_name = maker_name;
	}
	public String getMaker_tel() {
		return maker_tel;
	}
	public void setMaker_tel(String maker_tel) {
		this.maker_tel = maker_tel;
	}
	public String getMaker_homepage() {
		return maker_homepage;
	}
	public void setMaker_homepage(String maker_homepage) {
		this.maker_homepage = maker_homepage;
	}
	public String getMaker_sns_type() {
		return maker_sns_type;
	}
	public void setMaker_sns_type(String maker_sns_type) {
		this.maker_sns_type = maker_sns_type;
	}
	public String getMaker_sns_url() {
		return maker_sns_url;
	}
	public void setMaker_sns_url(String maker_sns_url) {
		this.maker_sns_url = maker_sns_url;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	private String maker_name;
	private String maker_tel;
	private String maker_homepage;
	private String maker_sns_type;
	private String maker_sns_url;
	private String keyword;
	private String reg_date;
}

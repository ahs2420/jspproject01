package com.krahs123.wathis.model;

public class AuditVO {
// 심사 테이블
//	+----------------------+--------------+------+-----+-------------------+-------------------+
//	| Field                | Type         | Null | Key | Default           | Extra             |
//	+----------------------+--------------+------+-----+-------------------+-------------------+
//	| id                   | int          | NO   | PRI | NULL              | auto_increment    |
//	| audit_id             | int unsigned | NO   |     | NULL              |                   |
//	| marker_name          | varchar(50)  | NO   |     | NULL              |                   |
//	| img_dir              | varchar(100) | YES  |     | NULL              |                   |
//	| marker_img           | varchar(100) | NO   |     | NULL              |                   |
//	| marker_email         | varchar(100) | NO   |     | NULL              |                   |
//	| marker_phone         | varchar(50)  | NO   |     | NULL              |                   |
//	| marker_kakao_id      | varchar(100) | YES  |     | NULL              |                   |
//	| marker_kakao_url     | varchar(100) | YES  |     | NULL              |                   |
//	| marker_home_page_url | varchar(100) | YES  |     | NULL              |                   |
//	| marker_facebook_url  | varchar(100) | YES  |     | NULL              |                   |
//	| marker_twiter_url    | varchar(100) | YES  |     | NULL              |                   |
//	| marker_instagram_url | varchar(100) | YES  |     | NULL              |                   |
//	| business_type        | varchar(5)   | NO   |     | NULL              |                   |
//	| bankbook_img         | varchar(100) | NO   |     | NULL              |                   |
//	| reg_date             | datetime     | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
//	+----------------------+--------------+------+-----+-------------------+-------------------+
	private int id;
	private int audit_id;
	private int member_id;
	private int category_id;
	private int circulation_chk;
	private String circulation_content;
	private String preparations_plan;
	private String relay_plan;
	private int reword_type;
	private String reword_info;
	private String required_documents_orgName;
	private String required_documents_Name;
	private String required_documents_url;
	private int fees_chk;
	private String policy_agreement;
	private int status;
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
	public int getCirculation_chk() {
		return circulation_chk;
	}
	public void setCirculation_chk(int circulation_chk) {
		this.circulation_chk = circulation_chk;
	}
	public String getCirculation_content() {
		return circulation_content;
	}
	public void setCirculation_content(String circulation_content) {
		this.circulation_content = circulation_content;
	}
	public String getPreparations_plan() {
		return preparations_plan;
	}
	public void setPreparations_plan(String preparations_plan) {
		this.preparations_plan = preparations_plan;
	}
	public String getRelay_plan() {
		return relay_plan;
	}
	public void setRelay_plan(String relay_plan) {
		this.relay_plan = relay_plan;
	}
	public int getReword_type() {
		return reword_type;
	}
	public void setReword_type(int reword_type) {
		this.reword_type = reword_type;
	}
	public String getReword_info() {
		return reword_info;
	}
	public void setReword_info(String reword_info) {
		this.reword_info = reword_info;
	}
	public String getRequired_documents_orgName() {
		return required_documents_orgName;
	}
	public void setRequired_documents_orgName(String required_documents_orgName) {
		this.required_documents_orgName = required_documents_orgName;
	}
	public String getRequired_documents_Name() {
		return required_documents_Name;
	}
	public void setRequired_documents_Name(String required_documents_Name) {
		this.required_documents_Name = required_documents_Name;
	}
	public String getRequired_documents_url() {
		return required_documents_url;
	}
	public void setRequired_documents_url(String required_documents_url) {
		this.required_documents_url = required_documents_url;
	}
	public int getFees_chk() {
		return fees_chk;
	}
	public void setFees_chk(int fees_chk) {
		this.fees_chk = fees_chk;
	}
	public String getPolicy_agreement() {
		return policy_agreement;
	}
	public void setPolicy_agreement(String policy_agreement) {
		this.policy_agreement = policy_agreement;
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

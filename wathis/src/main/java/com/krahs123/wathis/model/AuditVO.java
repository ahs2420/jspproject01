package com.krahs123.wathis.model;

public class AuditVO {
// 심사 테이블
//	+----------------------------+------------------+------+-----+-------------------+-------------------+
//	| Field                      | Type             | Null | Key | Default           | Extra             |
//	+----------------------------+------------------+------+-----+-------------------+-------------------+
//	| id                         | int(10) unsigned | NO   | PRI | NULL              | auto_increment    |
//	| member_id                  | int(10) unsigned | NO   |     | 0                 |                   |
//	| category_id                | int(10) unsigned | NO   |     | 0                 |                   |
//	| circulation_chk            | tinyint(1)       | NO   |     | NULL              |                   |
//	| circulation_content        | text             | YES  |     | NULL              |                   |        ;
//	| preparations_plan          | text             | NO   |     | NULL              |                   |
//	| relay_plan                 | text             | NO   |     | NULL              |                   |
//	| reword_type                | int(2)           | YES  |     | NULL              |                   |
//	| reword_info                | text             | YES  |     | NULL              |                   |
//	| required_documents_orgName | varchar(50)      | YES  |     | NULL              |                   |
//	| required_documents_Name    | varchar(50)      | YES  |     | NULL              |                   |
//	| required_documents_url     | varchar(50)      | YES  |     | NULL              |                   |
//	| fees_chk                   | tinyint(1)       | NO   |     | NULL              |                   |
//	| policy_agreement           | varchar(100)     | NO   |     | NULL              |                   |
//	| status                     | int(1)           | YES  |     | 1                 |                   |
//	| reg_date                   | datetime         | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
//	+----------------------------+------------------+------+-----+-------------------+-------------------+
	private int id;
	private int member_id;
	private int category_id;
	private int circulation_chk;
	private String circulation_content;
	private String Preparations_plan;
	private String relay_plan;
	private int reword_type;
	private String reword_info;
	private String Required_documents_orgName;
	private String Required_documents_Name;
	private String Required_documents_url;
	private int fees_chk;
	private String Policy_Agreement;
	private int status;
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
		return Preparations_plan;
	}
	public void setPreparations_plan(String preparations_plan) {
		Preparations_plan = preparations_plan;
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
		return Required_documents_orgName;
	}
	public void setRequired_documents_orgName(String required_documents_orgName) {
		Required_documents_orgName = required_documents_orgName;
	}
	public String getRequired_documents_Name() {
		return Required_documents_Name;
	}
	public void setRequired_documents_Name(String required_documents_Name) {
		Required_documents_Name = required_documents_Name;
	}
	public String getRequired_documents_url() {
		return Required_documents_url;
	}
	public void setRequired_documents_url(String required_documents_url) {
		Required_documents_url = required_documents_url;
	}
	public int getFees_chk() {
		return fees_chk;
	}
	public void setFees_chk(int fees_chk) {
		this.fees_chk = fees_chk;
	}
	public String getPolicy_Agreement() {
		return Policy_Agreement;
	}
	public void setPolicy_Agreement(String policy_Agreement) {
		Policy_Agreement = policy_Agreement;
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

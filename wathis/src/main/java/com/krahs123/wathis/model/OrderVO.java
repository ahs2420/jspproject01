package com.krahs123.wathis.model;

public class OrderVO {
//주문
//	+-----------------+------------------+------+-----+-------------------+-------------------+
//	| Field           | Type             | Null | Key | Default           | Extra             |
//	+-----------------+------------------+------+-----+-------------------+-------------------+
//	| id              | int(10) unsigned | NO   | PRI | NULL              | auto_increment    |
//	| member_id       | int(10) unsigned | NO   |     | 0                 |                   |
//	| product_id      | int(10) unsigned | NO   |     | 0                 |                   |
//	| price           | int(11)          | NO   |     | 0                 |                   |
//	| delivery_fee    | int(11)          | NO   |     | NULL              |                   |
//	| payment         | int(11)          | NO   |     | 0                 |                   |
//	| account_num     | varchar(20)      | YES  |     | NULL              |                   |
//	| account_name    | varchar(20)      | YES  |     | NULL              |                   |
//	| account_bank    | varchar(20)      | YES  |     | NULL              |                   |
//	| pay_type        | char(1)          | NO   |     | 0                 |                   |
//	| receiver_addr1  | varchar(20)      | NO   |     | NULL              |                   |
//	| receiver_addr2  | varchar(100)     | NO   |     | NULL              |                   |
//	| receiver_addr3  | varchar(100)     | NO   |     | NULL              |                   |
//	| receiver_tel    | varchar(255)     | NO   |     | NULL              |                   |
//	| receiver_name   | varchar(50)      | NO   |     | NULL              |                   |
//	| receiver_etc    | varchar(100)     | NO   |     | NULL              |                   |
//	| state           | char(1)          | NO   |     | 1                 |                   |
//	| delivery_id     | varchar(30)      | NO   |     | NULL              |                   |
//	| delivery_number | varchar(30)      | NO   |     | NULL              |                   |
//	| reg_date        | datetime         | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
//	+-----------------+------------------+------+-----+-------------------+-------------------+
	private int id;
	private int member_id;
	private int product_id;
	private int price;
	private int delivery_fee;
	private int payment;
	private String account_num;
	private String account_name;
	private String account_bank;
	private String pay_type;
	private String receiver_addr1;
	private String receiver_addr2;
	private String receiver_addr3;
	private String receiver_tel;
	private String receiver_name;
	private String receiver_etc;
	private String state;
	private String delivery_id;
	private String delivery_number;
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
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getDelivery_fee() {
		return delivery_fee;
	}
	public void setDelivery_fee(int delivery_fee) {
		this.delivery_fee = delivery_fee;
	}
	public int getPayment() {
		return payment;
	}
	public void setPayment(int payment) {
		this.payment = payment;
	}
	public String getAccount_num() {
		return account_num;
	}
	public void setAccount_num(String account_num) {
		this.account_num = account_num;
	}
	public String getAccount_name() {
		return account_name;
	}
	public void setAccount_name(String account_name) {
		this.account_name = account_name;
	}
	public String getAccount_bank() {
		return account_bank;
	}
	public void setAccount_bank(String account_bank) {
		this.account_bank = account_bank;
	}
	public String getPay_type() {
		return pay_type;
	}
	public void setPay_type(String pay_type) {
		this.pay_type = pay_type;
	}
	public String getReceiver_addr1() {
		return receiver_addr1;
	}
	public void setReceiver_addr1(String receiver_addr1) {
		this.receiver_addr1 = receiver_addr1;
	}
	public String getReceiver_addr2() {
		return receiver_addr2;
	}
	public void setReceiver_addr2(String receiver_addr2) {
		this.receiver_addr2 = receiver_addr2;
	}
	public String getReceiver_addr3() {
		return receiver_addr3;
	}
	public void setReceiver_addr3(String receiver_addr3) {
		this.receiver_addr3 = receiver_addr3;
	}
	public String getReceiver_tel() {
		return receiver_tel;
	}
	public void setReceiver_tel(String receiver_tel) {
		this.receiver_tel = receiver_tel;
	}
	public String getReceiver_name() {
		return receiver_name;
	}
	public void setReceiver_name(String receiver_name) {
		this.receiver_name = receiver_name;
	}
	public String getReceiver_etc() {
		return receiver_etc;
	}
	public void setReceiver_etc(String receiver_etc) {
		this.receiver_etc = receiver_etc;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getDelivery_id() {
		return delivery_id;
	}
	public void setDelivery_id(String delivery_id) {
		this.delivery_id = delivery_id;
	}
	public String getDelivery_number() {
		return delivery_number;
	}
	public void setDelivery_number(String delivery_number) {
		this.delivery_number = delivery_number;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
}

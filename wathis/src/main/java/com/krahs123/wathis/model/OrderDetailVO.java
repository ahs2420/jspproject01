package com.krahs123.wathis.model;

public class OrderDetailVO {
//주문 상세
//	+-------------+------------------+------+-----+-------------------+-------------------+
//	| Field       | Type             | Null | Key | Default           | Extra             |
//	+-------------+------------------+------+-----+-------------------+-------------------+
//	| id          | int(10) unsigned | NO   | PRI | NULL              | auto_increment    |
//	| order_id    | int(10) unsigned | NO   |     | 0                 |                   |
//	| option_id   | int(10) unsigned | NO   |     | 0                 |                   |
//	| option_name | varchar(100)     | NO   |     | NULL              |                   |
//	| amount      | int(11)          | NO   |     | 0                 |                   |
//	| price       | int(11)          | NO   |     | 0                 |                   |
//	| reg_date    | datetime         | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
//	+-------------+------------------+------+-----+-------------------+-------------------+
	private int id;
	private int order_id;
	private int option_id;
	private String option_name;
	private int amount;
	private int price;
	private String reg_date;
	private int product_id;
	private int member_id;
	private String option_title;
	private int delevery_chk;
	private String delivery_date;
	
	public String getOption_title() {
		return option_title;
	}
	public void setOption_title(String option_title) {
		this.option_title = option_title;
	}
	public int getDelevery_chk() {
		return delevery_chk;
	}
	public void setDelevery_chk(int delevery_chk) {
		this.delevery_chk = delevery_chk;
	}
	public String getDelivery_date() {
		return delivery_date;
	}
	public void setDelivery_date(String delivery_date) {
		this.delivery_date = delivery_date;
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
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getOrder_id() {
		return order_id;
	}
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
	public int getOption_id() {
		return option_id;
	}
	public void setOption_id(int option_id) {
		this.option_id = option_id;
	}
	public String getOption_name() {
		return option_name;
	}
	public void setOption_name(String option_name) {
		this.option_name = option_name;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	
}

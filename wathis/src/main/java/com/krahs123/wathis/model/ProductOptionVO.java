package com.krahs123.wathis.model;

public class ProductOptionVO {
	//상품 옵션
//	+----------------+------------------+------+-----+---------+----------------+
//	| Field          | Type             | Null | Key | Default | Extra          |
//	+----------------+------------------+------+-----+---------+----------------+
//	| id             | int(10) unsigned | NO   | PRI | NULL    | auto_increment |
//	| product_id     | int(10) unsigned | NO   |     | 0       |                |
//	| title          | varchar(100)     | NO   |     | NULL    |                |
//	| description    | varchar(100)     | NO   |     | NULL    |                |
//	| market_price   | int(10) unsigned | NO   |     | NULL    |                |
//	| price          | int(10) unsigned | NO   |     | NULL    |                |
//	| stock          | int(10) unsigned | NO   |     | NULL    |                |
//	| delevery_chk   | char(1)          | NO   |     | NULL    |                   |
//	| delevery_price | int(10) unsigned | NO   |     | NULL    |                |
//	| option_type    | char(1)          | NO   |     | NULL    |                |
//	| option_kind    | varchar(200)     | YES  |     | NULL    |                |
//	| delivery_date  | date             | NO   |     | NULL    |                |
//	| reg_date       | datetime         | NO   |     | NULL    |                |
//	+----------------+------------------+------+-----+---------+----------------+
	private int id;
	private int product_id;
	private String title;
	private String description;
	private int market_price;
	private int price;
	private int stock;
	private int delevery_price;
	private String option_type;
	private String option_kind;
	private String delivery_date;
	private String reg_date;
	private String delevery_chk;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getMarket_price() {
		return market_price;
	}
	public void setMarket_price(int market_price) {
		this.market_price = market_price;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public int getDelevery_price() {
		return delevery_price;
	}
	public void setDelevery_price(int delevery_price) {
		this.delevery_price = delevery_price;
	}
	public String getOption_type() {
		return option_type;
	}
	public void setOption_type(String option_type) {
		this.option_type = option_type;
	}
	public String getOption_kind() {
		return option_kind;
	}
	public void setOption_kind(String option_kind) {
		this.option_kind = option_kind;
	}
	public String getDelivery_date() {
		return delivery_date;
	}
	public void setDelivery_date(String delivery_date) {
		this.delivery_date = delivery_date;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public String getDelevery_chk() {
		return delevery_chk;
	}
	public void setDelevery_chk(String delevery_chk) {
		this.delevery_chk = delevery_chk;
	}
}

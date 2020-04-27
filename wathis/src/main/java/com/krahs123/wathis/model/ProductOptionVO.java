package com.krahs123.wathis.model;

public class ProductOptionVO {
//	+----------------+------------------+------+-----+-------------------+-------------------+
//	| Field          | Type             | Null | Key | Default           | Extra             |
//	+----------------+------------------+------+-----+-------------------+-------------------+
//	| id             | int(10) unsigned | NO   | PRI | NULL              | auto_increment    |
//	| member_id      | int(10) unsigned | NO   |     | 0                 |                   |
//	| product_id     | int(10) unsigned | NO   | MUL | 0                 |                   |
//	| title          | varchar(100)     | NO   |     | NULL              |                   |
//	| description    | varchar(100)     | NO   |     | NULL              |                   |
//	| market_price   | int(10) unsigned | NO   |     | NULL              |                   |
//	| price          | int(10) unsigned | NO   |     | NULL              |                   |
//	| stock          | int(10) unsigned | NO   |     | NULL              |                   |
//	| delevery_price | int(10) unsigned | NO   |     | NULL              |                   |
//	| option_type    | char(1)          | NO   |     | NULL              |                   |
//	| option_kind    | varchar(200)     | YES  |     | NULL              |                   |
//	| reg_date       | datetime         | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
//	+----------------+------------------+------+-----+-------------------+-------------------+
	private int id;
	private int member_id;
	private int product_id;
	private String title;
	private String description;
	private int market_price;
	private int price;
	private int stock;
	private int delevery_price;
	private char option_type;
	private String option_kind;
	private String reg_date;
}

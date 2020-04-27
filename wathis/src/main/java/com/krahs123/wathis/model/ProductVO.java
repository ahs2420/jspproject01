package com.krahs123.wathis.model;

public class ProductVO {
//	+----------------+------------------+------+-----+-------------------+-------------------+
//	| Field          | Type             | Null | Key | Default           | Extra             |
//	+----------------+------------------+------+-----+-------------------+-------------------+
//	| id             | int(10) unsigned | NO   | PRI | NULL              | auto_increment    |
//	| member_id      | int(10) unsigned | NO   | MUL | 0                 |                   |
//	| category_id    | int(10) unsigned | NO   | MUL | 0                 |                   |
//	| audit_id       | int(10) unsigned | NO   |     | NULL              |                   |
//	| title          | varchar(100)     | NO   |     | NULL              |                   |
//	| sub_title      | varchar(100)     | NO   |     | NULL              |                   |
//	| main_img       | varchar(100)     | NO   |     | NULL              |                   |
//	| img            | text             | NO   |     | NULL              |                   |
//	| content        | text             | NO   |     | NULL              |                   |
//	| price          | int(11)          | NO   |     | NULL              |                   |
//	| end_date       | datetime         | NO   |     | NULL              |                   |
//	| delivery_date  | datetime         | NO   |     | NULL              |                   |
//	| maker_name     | varchar(20)      | NO   |     | NULL              |                   |
//	| maker_tel      | varchar(255)     | NO   |     | NULL              |                   |
//	| maker_homepage | varchar(255)     | NO   |     | NULL              |                   |
//	| maker_sns_type | varchar(255)     | NO   |     | NULL              |                   |
//	| maker_sns_url  | varchar(255)     | NO   |     | NULL              |                   |
//	| policy         | text             | NO   |     | NULL              |                   |
//	| information    | text             | NO   |     | NULL              |                   |
//	| keyword        | varchar(255)     | NO   |     | NULL              |                   |
//	| reg_date       | datetime         | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
//	+----------------+------------------+------+-----+-------------------+-------------------+
	private int id;
	private int member_id;
	private int category_id;
	private int audit_id;
	private String title;
	private String sub_title;
	private String main_img;
	private String img;
	private String content;
	private int price;
	private String end_date;
	private String delivery_date;
	private String maker_name;
	private String maker_tel;
	private String maker_homepage;
	private String maker_sns_type;
	private String maker_sns_url;
	private String policy;
	private String information;
	private String keyword;
	private String reg_date;
}

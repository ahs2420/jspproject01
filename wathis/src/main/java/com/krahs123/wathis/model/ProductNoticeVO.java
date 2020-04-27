package com.krahs123.wathis.model;

public class ProductNoticeVO {
//	+------------+------------------+------+-----+-------------------+-------------------+
//	| Field      | Type             | Null | Key | Default           | Extra             |
//	+------------+------------------+------+-----+-------------------+-------------------+
//	| id         | int(10) unsigned | NO   | PRI | NULL              | auto_increment    |
//	| member_id  | int(10) unsigned | NO   |     | 0                 |                   |
//	| product_id | int(10) unsigned | NO   | MUL | 0                 |                   |
//	| title      | varchar(100)     | NO   |     | NULL              |                   |
//	| content    | text             | NO   |     | NULL              |                   |
//	| reg_date   | datetime         | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
//	+------------+------------------+------+-----+-------------------+-------------------+
	private int id;
	private int member_id;
	private int product_id;
	private String title;
	private String content;
	private String reg_date;
}

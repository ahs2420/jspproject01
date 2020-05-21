package com.krahs123.wathis.model;

public class OrderDetailVO {
//주문 상세
//	+-------------+------------------+------+-----+-------------------+-------------------+
//	| Field       | Type             | Null | Key | Default           | Extra             |
//	+-------------+------------------+------+-----+-------------------+-------------------+
//	| id          | int(10) unsigned | NO   | PRI | NULL              | auto_increment    |
//	| member_id   | int(10) unsigned | NO   |     | 0                 |                   |
//	| order_id    | int(10) unsigned | NO   |     | 0                 |                   |
//	| product_id  | int(10) unsigned | NO   |     | 0                 |                   |
//	| option_id   | int(10) unsigned | NO   |     | 0                 |                   |
//	| option_name | varchar(100)     | NO   |     | NULL              |                   |
//	| amount      | int(11)          | NO   |     | 0                 |                   |
//	| price       | int(11)          | NO   |     | 0                 |                   |
//	| reg_date    | datetime         | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
//	+-------------+------------------+------+-----+-------------------+-------------------+
	private int id;
	private int member_id;
	private int order_id;
	private int product_id;
	private int option_id;
	private String option_name;
	private int amount;
	private int price;
	private String reg_date;
}

package com.krahs123.wathis.model;

public class OrderVO {
//	+-----------------+------------------+------+-----+-------------------+-------------------+
//	| Field           | Type             | Null | Key | Default           | Extra             |
//	+-----------------+------------------+------+-----+-------------------+-------------------+
//	| id              | int(10) unsigned | NO   | PRI | NULL              | auto_increment    |
//	| member_id       | int(10) unsigned | NO   | MUL | 0                 |                   |
//	| product_id      | int(10) unsigned | NO   | MUL | 0                 |                   |
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
	private char pay_type;
	private String receiver_addr1;
	private String receiver_addr2;
	private String receiver_addr3;
	private String receiver_tel;
	private String receiver_name;
	private String receiver_etc;
	private char state;
	private String delivery_id;
	private String delivery_number;
	private String reg_date;
}

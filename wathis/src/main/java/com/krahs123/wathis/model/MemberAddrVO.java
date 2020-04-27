package com.krahs123.wathis.model;

public class MemberAddrVO {
//	+-----------+------------------+------+-----+-------------------+-------------------+
//	| Field     | Type             | Null | Key | Default           | Extra             |
//	+-----------+------------------+------+-----+-------------------+-------------------+
//	| id        | int(10) unsigned | NO   | PRI | NULL              | auto_increment    |
//	| member_id | int(10) unsigned | NO   | MUL | 0                 |                   |
//	| addr1     | varchar(20)      | NO   |     | NULL              |                   |
//	| addr2     | varchar(100)     | NO   |     | NULL              |                   |
//	| addr3     | varchar(100)     | NO   |     | NULL              |                   |
//	| ship_name | varchar(50)      | NO   |     | NULL              |                   |
//	| ship_tel  | varchar(255)     | NO   |     | NULL              |                   |
//	| ship_desc | varchar(30)      | NO   |     | 기본배송지        |                   |
//	| reg_date  | datetime         | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
//	+-----------+------------------+------+-----+-------------------+-------------------+
	private int id;
	private int member_id;
	private String addr1;
	private String addr2;
	private String addr3;
	private String ship_name;
	private String ship_tel;
	private String ship_desc;
	private String reg_date;
}

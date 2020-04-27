package com.krahs123.wathis.model;

public class ProductCommentVO {
//	+---------------+------------------+------+-----+-------------------+-------------------+
//	| Field         | Type             | Null | Key | Default           | Extra             |
//	+---------------+------------------+------+-----+-------------------+-------------------+
//	| id            | int(10) unsigned | NO   | PRI | NULL              | auto_increment    |
//	| member_id     | int(10) unsigned | NO   | MUL | 0                 |                   |
//	| product_id    | int(10) unsigned | NO   | MUL | 0                 |                   |
//	| parent_id     | int(10) unsigned | NO   | MUL | 0                 |                   |
//	| member_imgae  | varchar(100)     | YES  |     | NULL              |                   |
//	| member_status | varchar(100)     | YES  |     | NULL              |                   |
//	| member_userid | varchar(100)     | YES  |     | NULL              |                   |
//	| comment       | varchar(100)     | YES  |     | NULL              |                   |
//	| reg_date      | datetime         | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
//	+---------------+------------------+------+-----+-------------------+-------------------+
	private int id;
	private int member_id;
	private int product_id;
	private int parent_id;
	private String member_imgae;
	private String member_status;
	private String member_userid;
	private String comment;
	private String reg_date;
}

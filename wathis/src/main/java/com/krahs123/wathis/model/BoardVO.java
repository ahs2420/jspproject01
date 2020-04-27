package com.krahs123.wathis.model;

public class BoardVO {
//	+---------------+------------------+------+-----+-------------------+-------------------+
//	| Field         | Type             | Null | Key | Default           | Extra             |
//	+---------------+------------------+------+-----+-------------------+-------------------+
//	| id            | int(10) unsigned | NO   | PRI | NULL              | auto_increment    |
//	| config_id     | int(10) unsigned | NO   | MUL | NULL              |                   |
//	| member_id     | int(10) unsigned | NO   | MUL | 0                 |                   |
//	| title         | varchar(100)     | NO   |     | NULL              |                   |
//	| category      | varchar(100)     | NO   |     | NULL              |                   |
//	| member_imgae  | varchar(100)     | YES  |     | NULL              |                   |
//	| member_userid | varchar(100)     | YES  |     | NULL              |                   |
//	| content       | text             | NO   |     | NULL              |                   |
//	| img           | varchar(100)     | NO   |     | NULL              |                   |
//	| reg_date      | datetime         | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
//	+---------------+------------------+------+-----+-------------------+-------------------+

	private int id;
	private int config_id;
	private int member_id;
	private String title;
	private String category;
	private String member_imgae;
	private String member_userid;
	private String content;
	private String img;
	private String reg_date;
}

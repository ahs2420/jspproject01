package com.krahs123.wathis.model;

public class BoardConfigVO {
//	+------------------+------------------+------+-----+-------------------+-------------------+
//	| Field            | Type             | Null | Key | Default           | Extra             |
//	+------------------+------------------+------+-----+-------------------+-------------------+
//	| id               | int(10) unsigned | NO   | PRI | NULL              | auto_increment    |
//	| title            | varchar(100)     | NO   |     | NULL              |                   |
//	| category         | varchar(100)     | NO   |     | NULL              |                   |
//	| list_template    | varchar(100)     | YES  |     | NULL              |                   |
//	| content_template | varchar(100)     | YES  |     | NULL              |                   |
//	| reg_date         | datetime         | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
//	+------------------+------------------+------+-----+-------------------+-------------------+
	private int id;
	private String title;
	private String category;
	private String list_template;
	private String content_template;
	private String reg_date;
	
}

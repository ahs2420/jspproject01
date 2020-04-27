package com.krahs123.wathis.model;

public class SiteConfigVO {
//	+----------+------------------+------+-----+-------------------+-------------------+
//	| Field    | Type             | Null | Key | Default           | Extra             |
//	+----------+------------------+------+-----+-------------------+-------------------+
//	| id       | int(10) unsigned | NO   | PRI | NULL              | auto_increment    |
//	| title    | varchar(10)      | YES  |     | NULL              |                   |
//	| content  | varchar(100)     | YES  |     | NULL              |                   |
//	| reg_date | datetime         | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
//	+----------+------------------+------+-----+-------------------+-------------------+

	private int id;
	private String title;
	private String content;
	private String reg_date;
}

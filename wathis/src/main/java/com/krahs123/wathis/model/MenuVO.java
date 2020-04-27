package com.krahs123.wathis.model;

public class MenuVO {
//	+-----------+------------------+------+-----+-------------------+-------------------+
//	| Field     | Type             | Null | Key | Default           | Extra             |
//	+-----------+------------------+------+-----+-------------------+-------------------+
//	| id        | int(10) unsigned | NO   | PRI | NULL              | auto_increment    |
//	| parent_id | int(10) unsigned | NO   | MUL | 0                 |                   |
//	| dept      | int(11)          | NO   |     | 1                 |                   |
//	| morder    | int(11)          | NO   |     | 0                 |                   |
//	| title     | varchar(100)     | NO   |     | NULL              |                   |
//	| url       | varchar(100)     | NO   |     | NULL              |                   |
//	| reg_date  | datetime         | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
//	+-----------+------------------+------+-----+-------------------+-------------------+
	private int id;
	private int parent_id;
	private int dept;
	private int morder;
	private String title;
	private String url;
	private String reg_date;
}

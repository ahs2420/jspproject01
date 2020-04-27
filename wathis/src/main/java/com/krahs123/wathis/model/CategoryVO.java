package com.krahs123.wathis.model;

public class CategoryVO {
//	+-----------+------------------+------+-----+-------------------+-------------------+
//	| Field     | Type             | Null | Key | Default           | Extra             |
//	+-----------+------------------+------+-----+-------------------+-------------------+
//	| id        | int(10) unsigned | NO   | PRI | NULL              | auto_increment    |
//	| parent_id | int(10) unsigned | NO   | MUL | 0                 |                   |
//	| dept      | int(11)          | NO   |     | 1                 |                   |
//	| title     | varchar(30)      | NO   |     | NULL              |                   |
//	| reg_date  | datetime         | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
//	+-----------+------------------+------+-----+-------------------+-------------------+
	private int id;
	private int parent_id;
	private int dept;
	private String title;
	private String reg_date;
}

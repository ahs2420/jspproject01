package com.krahs123.wathis.model;

public class MemberVO {
//	+-----------+------------------+------+-----+-------------------+-------------------+
//	| Field     | Type             | Null | Key | Default           | Extra             |
//	+-----------+------------------+------+-----+-------------------+-------------------+
//	| id        | int(10) unsigned | NO   | PRI | NULL              | auto_increment    |
//	| uid       | varchar(50)      | NO   |     | NULL              |                   |
//	| upassword | varchar(255)     | NO   |     | NULL              |                   |
//	| sns_type  | varchar(10)      | NO   |     | NULL              |                   |
//	| sns_id    | varchar(200)     | NO   |     | NULL              |                   |
//	| uname     | varchar(20)      | NO   |     | NULL              |                   |
//	| utel      | varchar(255)     | NO   |     | NULL              |                   |
//	| uemail    | varchar(50)      | NO   |     | NULL              |                   |
//	| ugroup    | int(11)          | NO   |     | 0                 |                   |
//	| point     | int(11)          | NO   |     | 0                 |                   |
//	| state     | char(1)          | NO   |     | 1                 |                   |
//	| reg_date  | datetime         | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
//	+-----------+------------------+------+-----+-------------------+-------------------+

	private int id;
	private String uid;
	private String upassword;
	private String sns_type;
	private String sns_id;
	private String uname;
	private String utel;
	private String uemail;
	private int ugroup;
	private int point;
	private char state;
	private String reg_date;
}

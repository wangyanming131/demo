DROP TABLE
IF
	EXISTS USER;
CREATE TABLE USER (
	id BIGINT ( 20 ) NOT NULL COMMENT '主键ID',
	username VARCHAR ( 30 ) NULL DEFAULT NULL COMMENT '用户名',
	PASSWORD VARCHAR ( 30 ) NULL DEFAULT NULL COMMENT '密码',
	age INT ( 11 ) NULL DEFAULT NULL COMMENT '年龄',
	email VARCHAR ( 50 ) NULL DEFAULT NULL COMMENT '邮箱',
PRIMARY KEY ( id )
);


DELETE
FROM
	USER;
INSERT INTO USER ( id, username, PASSWORD, age, email )
VALUES
	( 1, 'Jone', '111111', 18, 'test1@baomidou.com' ),
	( 2, 'Jack', '111111', 20, 'test2@baomidou.com' ),
	( 3, 'Tom', '111111', 28, 'test3@baomidou.com' ),
	( 4, 'Sandy', '111111', 21, 'test4@baomidou.com' ),
	( 5, 'Billie', '111111', 24, 'test5@baomidou.com' );
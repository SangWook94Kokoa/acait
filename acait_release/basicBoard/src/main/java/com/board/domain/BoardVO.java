package com.board.domain;

import java.util.Date;

public class BoardVO 
{
	private int bno;
	private String title;
	private String content;
	private String writer;
	private Date regDate;
	private int viewCnt;
	
	
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getViewCnt() {
		return viewCnt;
	}
	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}
	
	/*
	 * CREATE TABLE `tbl_board` (
	`bno` INT(11) NOT NULL AUTO_INCREMENT,
	`title` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`content` TEXT(65535) NOT NULL COLLATE 'latin1_swedish_ci',
	`writer` VARCHAR(30) NOT NULL COLLATE 'latin1_swedish_ci',
	`regDate` TIMESTAMP NOT NULL DEFAULT current_timestamp(),
	`viewCnt` INT(11) NULL DEFAULT '0',
	PRIMARY KEY (`bno`) USING BTREE
	)
	COLLATE='latin1_swedish_ci'
	ENGINE=InnoDB
	AUTO_INCREMENT=7
	;

	 */
}

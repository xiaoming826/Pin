package com.xinxin.model;

public class JobInfo {
	/*
	create table jobinfo(
		id int primary key,
		title varchar(50),
		content varchar(50),
		dateTime varchar(50)
		)
	 */
	private String id;
	private String title;
	private String content;
	private String dateTime;
	private String money;
	private String experience;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	public String getDateTime() {
		return dateTime;
	}
	public void setDateTime(String dateTime) {
		this.dateTime = dateTime;
	}
	public String getMoney() {
		return money;
	}
	public void setMoney(String money) {
		this.money = money;
	}
	
	
}

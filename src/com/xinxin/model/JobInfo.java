package com.xinxin.model;

public class JobInfo {
	/*
	drop table jobinfo;
	create table jobinfo(
		id int primary key AUTO_INCREMENT,
		title varchar(50),
		content varchar(50),
		dateTime varchar(50),
		money varchar(50),
		experience varchar(50),
		addrs varchar(50),
		cid int 
		);
		
	insert into jobinfo (title,content,dateTime,money,experience,cid) values ("招聘保险业务员","招聘保险业务员","2016年01月06日00:40:20","6000/月","本科",1);
	insert into jobinfo (title,content,dateTime,money,experience,cid) values ("招聘保险业务员","招聘保险业务员","2016年01月06日00:40:20","6000/月","本科",1);
	insert into jobinfo (title,content,dateTime,money,experience,cid) values ("招聘保险业务员","招聘保险业务员","2016年01月06日00:40:20","6000/月","本科",1);
	insert into jobinfo (title,content,dateTime,money,experience,cid) values ("招聘保险业务员","招聘保险业务员","2016年01月06日00:40:20","6000/月","本科",1);
	insert into jobinfo (title,content,dateTime,money,experience,cid) values ("招聘保险业务员","招聘保险业务员","2016年01月06日00:40:20","6000/月","本科",1);
	insert into jobinfo (title,content,dateTime,money,experience,cid) values ("招聘保险业务员","招聘保险业务员","2016年01月06日00:40:20","6000/月","本科",1);
	insert into jobinfo (title,content,dateTime,money,experience,cid) values ("招聘保险业务员","招聘保险业务员","2016年01月06日00:40:20","6000/月","本科",1);
	 */
	private String id;
	private String title;
	private String content;
	private String dateTime;
	private String money;
	private String experience;
	private String addrs;
	private String cid;
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
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getAddrs() {
		return addrs;
	}
	public void setAddrs(String addrs) {
		this.addrs = addrs;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	
	
}

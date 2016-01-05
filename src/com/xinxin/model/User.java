package com.xinxin.model;

public class User {
	/*
	 create table user(
	 	id int primary key,
	 	name varchar(50),
	 	sex varchar(50),
	 	age varchar(50),
	 	tel varchar(50),
	 	addrs varchar(50),
	 	school varchar(50),
	 	desc varchar(50)
	 )
	 
	 */
	private int id;
	private String name;
	private String sex;
	private String age;
	private String tel;
	private String addrs;
	private String school;
	private String desc;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddrs() {
		return addrs;
	}
	public void setAddrs(String addrs) {
		this.addrs = addrs;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	
	
}

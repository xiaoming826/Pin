package com.xinxin.model;

public class User {
	/*
	 drop table user;
	 create table user(
	 	id int primary key AUTO_INCREMENT,
	 	name varchar(50),
	 	sex varchar(50),
	 	age varchar(50),
	 	tel varchar(50),
	 	addrs varchar(50),
	 	school varchar(50),
	 	descc varchar(50),
		pwd varchar(50)
	 );
	 insert into user (name,sex,age,tel,addrs,school,descc,pwd) values ("xinxin","女","22","121212112","济南","济南大学","求职一个某某职务","123");
	 
	 */
	private int id =-1;
	private String name;
	private String sex;
	private String age;
	private String tel;
	private String addrs;
	private String school;
	private String descc;
	private String pwd;
	
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
		return descc;
	}
	public void setDesc(String desc) {
		this.descc = desc;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", sex=" + sex + ", age=" + age + ", tel=" + tel + ", addrs="
				+ addrs + ", school=" + school + ", descc=" + descc + ", pwd=" + pwd + "]";
	}
	
	
	
	
	
}

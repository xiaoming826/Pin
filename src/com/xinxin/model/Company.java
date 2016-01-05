package com.xinxin.model;

import java.util.List;

public class Company {
	/*
	 create table company(
	 	id int primary key,
	 	name varchar(50),
	 	age varchar(50),
	 	tel varchar(50),
	 	companyName varchar(50),
	 	companyAddrs varchar(50)
	 )
	 
	 */
	private int id;
	private String name;
	private String sex;
	private String age;
	private String tel;
	private String companyName;
	private String companyAddrs;
	private List<JobInfo> jobs;
	
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
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getCompanyAddrs() {
		return companyAddrs;
	}
	public void setCompanyAddrs(String companyAddrs) {
		this.companyAddrs = companyAddrs;
	}
	public List<JobInfo> getJobs() {
		return jobs;
	}
	public void setJobs(List<JobInfo> jobs) {
		this.jobs = jobs;
	}
	
	
}

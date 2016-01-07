package com.xinxin.dao;

import java.util.List;

import com.xinxin.model.Company;

public interface CompanyDao {

	public boolean add(Company company);

	public boolean remove(Company company);

	public List<Company> query(String info);
	
	public Company queryById(String id);

	public boolean modify(Company company);

	public boolean modifyPwd(String id,String newPwd,String oldPwd);
}

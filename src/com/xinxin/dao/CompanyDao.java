package com.xinxin.dao;

import com.xinxin.model.Company;

public interface CompanyDao {

	public boolean add(Company company);

	public boolean remove(Company company);

	public Company query(Company company);

	public boolean modify(Company company);
}

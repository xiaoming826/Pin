package com.xinxin.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.xinxin.dao.CompanyDao;
import com.xinxin.model.Company;
import com.xinxin.util.DbUtil;

public class CompanyDaoImpl implements CompanyDao{

	public boolean add(Company company) {
		Connection conn = DbUtil.getConn();
		try {
			Company queryById = queryById(company.getId()+"");
			if(queryById!=null){
				return false;
			}
			String sql = "insert into company (name,tel,companyName,companyAddrs,pwd) values (?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, company.getName());
			ps.setString(2, company.getTel());
			ps.setString(3, company.getCompanyName());
			ps.setString(4, company.getCompanyAddrs());
			ps.setString(5, company.getPwd());
			return ps.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean remove(Company company) {
		Connection conn = DbUtil.getConn();
		try {
			String sql = "delete from company where id  = ?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, company.getId());
			return ps.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public List<Company> query(String info) {
		Connection conn = DbUtil.getConn();
		List<Company> companys=new ArrayList<Company>();
		try {
			String sql = "select * from company where companyName like '%"+info+"%' or companyAddrs like '%"+info+"%' or name like '%"+info+"%'";
			PreparedStatement ps=conn.prepareStatement(sql );
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				Company company =new Company();
				company.setAge(rs.getString("age"));
				company.setCompanyName(rs.getString("companyName"));
				company.setCompanyAddrs(rs.getString("companyAddrs"));
				company.setId(rs.getInt("id"));
				company.setName(rs.getString("name"));
				companys.add(company);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return companys;
	}

	public boolean modify(Company company) {
		Connection conn = DbUtil.getConn();
		try {
			String sql = "update company set name=?,tel=?,companyName=?,companyAddrs=?";
			PreparedStatement ps=conn.prepareStatement(sql );
			ps.setString(1, company.getName());
			ps.setString(2, company.getTel());
			ps.setString(3, company.getCompanyName());
			ps.setString(4, company.getCompanyAddrs());
			return ps.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public Company queryById(String id) {
		Connection conn = DbUtil.getConn();
		Company company=null;
		try {
			String sql = "select * from company where id ="+id;
			PreparedStatement ps=conn.prepareStatement(sql );
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				company=new Company();
				company.setAge(rs.getString("age"));
				company.setCompanyName(rs.getString("companyName"));
				company.setCompanyAddrs(rs.getString("companyAddrs"));
				company.setId(rs.getInt("id"));
				company.setName(rs.getString("name"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return company;
	}

	public boolean modifyPwd(String id ,String newPwd, String oldPwd) {
		Connection conn = DbUtil.getConn();
		try {
			String sql = "update company set pwd=? where id =? and pwd = ?";
			PreparedStatement ps=conn.prepareStatement(sql );
			ps.setString(1, newPwd);
			ps.setString(2, id);
			ps.setString(3, oldPwd);
			return ps.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

}

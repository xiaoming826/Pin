package com.xinxin.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.xinxin.dao.UserDao;
import com.xinxin.model.User;
import com.xinxin.util.DbUtil;

public class UserDaoImpl implements UserDao {

	public User login(User user) {
		Connection conn = DbUtil.getConn();
		try {
			String sql = "select * from user where name = ? and pwd = ? ";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, user.getName());
			ps.setString(2, user.getPwd());
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				user.setId(rs.getInt(rs.getInt("id")));
				user.setName(rs.getString("name"));
				user.setSex(rs.getString("sex"));
				user.setAge(rs.getString("age"));
				user.setTel(rs.getString("tel"));
				user.setAddrs(rs.getString("addrs"));
				user.setSchool(rs.getString("school"));
				user.setDesc(rs.getString("descc"));
				user.setPwd(rs.getString("pwd"));
				return user;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public boolean add(User user) {
		Connection conn = DbUtil.getConn();
		try {
			User query = queryByName(user);
			if (query!=null) {
				System.out.println(query);
				return  false;
			}
			String sql = "insert into user (name,sex,age,tel,addrs,school,descc,pwd) values (?,?,?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, user.getName());
			ps.setString(2, user.getSex());
			ps.setString(3, user.getAge());
			ps.setString(4, user.getTel());
			ps.setString(5, user.getAddrs());
			ps.setString(6, user.getSchool());
			ps.setString(7, user.getDesc());
			ps.setString(8, user.getPwd());
			return ps.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean remove(User user) {
		Connection conn = DbUtil.getConn();
		try {
			String sql = "delete from user where id =? ";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, user.getId());
			return ps.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public User queryByName(User user) {
		Connection conn = DbUtil.getConn();
		try {
			String sql = "select * from user where name = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, user.getName());
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				user.setName(rs.getString("name"));
				user.setSex(rs.getString("sex"));
				user.setAge(rs.getString("age"));
				user.setTel(rs.getString("tel"));
				user.setAddrs(rs.getString("addrs"));
				user.setSchool(rs.getString("school"));
				user.setDesc(rs.getString("descc"));
				user.setPwd(rs.getString("pwd"));
				return user;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public boolean modify(User user) {
		Connection conn = DbUtil.getConn();
		try {
			String sql = "update user set name=?,sex=?,age=?,tel=?,addrs=?,school=?,descc=?,pwd =? where id =? ";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, user.getName());
			ps.setString(2, user.getSex());
			ps.setString(3, user.getAge());
			ps.setString(4, user.getTel());
			ps.setString(5, user.getAddrs());
			ps.setString(6, user.getSchool());
			ps.setString(7, user.getDesc());
			ps.setString(8, user.getPwd());
			ps.setInt(9, user.getId());
			return ps.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

}

package com.xinxin.dao;

import com.xinxin.model.User;

public interface UserDao {
	public User login(User user);

	public boolean add(User user);

	public boolean remove(User user);

	public User query(User user);

	public boolean modify(User user);
}

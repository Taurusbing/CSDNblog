package com.taurus.service;

import java.util.List;

import com.taurus.entity.Area;
import com.taurus.entity.Trade;
import com.taurus.entity.User;

public interface UserService extends BaseService<User> {
	public boolean add(String sql,String str,User entity);
	public User findOne(String sql,String str);
	public User login(String sql, String str, User entity);
	public List<Area> findArea(Integer pid);
	public List<Trade> findTrade();
	public Area getArea(int id);
	public Trade getTrade(int id);
}

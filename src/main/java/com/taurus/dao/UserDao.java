package com.taurus.dao;

import java.util.List;

import com.taurus.entity.Area;
import com.taurus.entity.Trade;
import com.taurus.entity.User;

public interface UserDao extends BaseDao<User> {
	public User findOne(String sql, String str);

	public List<Area> findArea(Integer pid);

	public List<Trade> findTrade();

	public Area getArea(int id);
	
	public Trade getTrade(int id);
}

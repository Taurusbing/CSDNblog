package com.taurus.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.taurus.dao.UserDao;
import com.taurus.entity.Area;
import com.taurus.entity.Trade;
import com.taurus.entity.User;
import com.taurus.service.UserService;
@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDao userDao;
	//添加数据
	public void add(User entity) {
	}

	public void update(User entity) {
		userDao.update(entity);
	}

	public void del(int id) {
		// TODO Auto-generated method stub
		
	}

	public User getOne(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<User> findAll() {
		// TODO Auto-generated method stub
		return null;
	}
	
	//查询单个
	public User findOne(String sql, String str) {
		System.out.println("---service-");
		return userDao.findOne(sql, str);
	}

	//添加数据，若数据存在返回flase,若数据不存在返回true
	public boolean add(String sql, String str, User entity) {
		User user = userDao.findOne(sql, str);
		if(user == null) {
			userDao.add(entity);
			return true;
		}
		return false;
		
	}
	
	//实现登录逻辑
	public User login(String sql, String account, User entity) {
		User user = userDao.findOne(sql, account);
		if(user != null && entity.getPassword().equals(user.getPassword())) {
			return user;
		}
		return null;
	}

//	public List<Area> findArea(Integer pid) {
//		return  userDao.findArea(pid);
//	}
	public List<Area> findArea(Integer pid) {
		return  userDao.findArea(pid);
	}
	
	
	//拿到行业对象
	public List<Trade> findTrade() {
		return userDao.findTrade();
	}

	public Area getArea(int id) {
		return userDao.getArea(id);
	}

	public Trade getTrade(int id) {
		return userDao.getTrade(id);
	}

}

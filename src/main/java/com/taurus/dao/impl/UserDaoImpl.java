package com.taurus.dao.impl;

import java.util.List;

import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.taurus.dao.UserDao;
import com.taurus.entity.Area;
import com.taurus.entity.Trade;
import com.taurus.entity.User;
import com.taurus.util.GetSession;
@Repository
public class UserDaoImpl extends GetSession implements UserDao {
	//添加数据
	public void add(User entity) {
		getSession().save(entity);
		System.out.println("添加成功");
	}

	public void update(User entity) {
		getSession().update(entity);
		System.out.println("修改成功");
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
	
	//根据String查询单个
	public User findOne(String sql, String str) {
//		"from YflyUser u where u.account=:account"
		Query<User> query = getSession().createQuery(sql);
		query.setParameter("str", str);
		User user = query.uniqueResult();
		return user;
	}

	//查询地址
	public List<Area> findArea(Integer pid) {
		String hql="select a from Area a where a.parent.id =:pid";
		return getSession().createQuery(hql).setParameter("pid", pid).list();
	}

	
	//拿到行业对象
	public List<Trade> findTrade() {
		return getSession().createQuery("from Trade").list();
	}

	public Area getArea(int id) {
		String hql="select a from Area a where a.id =:id";
		return (Area) getSession().createQuery(hql).setParameter("id", id).uniqueResult();
	}

	public Trade getTrade(int id) {
		String hql = "select t from Trade t where t.id =:id";
		return (Trade) getSession().createQuery(hql).setParameter("id", id).uniqueResult();
	}


}

package com.taurus.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.taurus.dao.BlogDao;
import com.taurus.entity.Blog;
import com.taurus.entity.Subject;
import com.taurus.util.GetSession;
@Repository
public class BlogDaoImpl extends GetSession implements BlogDao{
	
	//添加博文
	public void add(Blog entity) {
		getSession().save(entity);
	}

	public void update(Blog entity) {
		// TODO Auto-generated method stub
		
	}

	public void del(int id) {
		// TODO Auto-generated method stub
		
	}

	public Blog getOne(int id) {
		String hql = "from Blog b where b.id =:bid";
		Blog blog = (Blog) getSession().createQuery(hql).setParameter("bid", id).uniqueResult();
		return blog;
	}
	
	//查询数据库中所有博文
	public List<Object[]> findBlog() {
		List<Object[]> obj = getSession().createQuery("select id,title,user.id from Blog").list();
		return obj;
	}

	
	//查询所有博客分类
	public List<Subject> findSubject() {
		List<Subject> list = getSession().createQuery("from Subject").list();
		return list;
	}

	public Subject getOneSubject(Integer id) {
		return (Subject) getSession().createQuery("from Subject s where s.id =:id").setParameter("id", id).uniqueResult();
	}

	public List<Blog> findAll() {
		return getSession().createQuery("from Blog").list();
	}

	public List<Blog> getOneUser(Integer id) {
		String hql = "select b from Blog b where b.user.id =:uid";
		return getSession().createQuery(hql).setParameter("uid",id).list();
	}

}

package com.taurus.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.taurus.dao.BlogDao;
import com.taurus.entity.Blog;
import com.taurus.entity.Subject;
import com.taurus.service.BlogService;
@Service
public class BlogServiceImpl implements BlogService{
	@Autowired
	private BlogDao blogDao;

	//添加博文
	public void add(Blog entity) {
		blogDao.add(entity);
	}

	public void update(Blog entity) {
		// TODO Auto-generated method stub
		
	}

	public void del(int id) {
		// TODO Auto-generated method stub
		
	}

	public Blog getOne(int id) {
		return blogDao.getOne(id);
	}

	public List<Object[]> findBlog() {
		return blogDao.findBlog();
	}
	
	
	//查询所有博客分类
	public List<Subject> findSubject() {
		List<Subject> list = blogDao.findSubject();
		return list;
	}

	public Subject getOneSubject(Integer id) {
		Subject subject = blogDao.getOneSubject(id);
		return subject;
	}

	public List<Blog> findAll() {
		return blogDao.findAll();
	}
	
	//根据userid信息查询对应的所有blog
	public List<Blog> getOneUser(Integer id) {
		return blogDao.getOneUser(id);
	}

}

package com.taurus.service;

import java.util.List;

import com.taurus.entity.Blog;
import com.taurus.entity.Subject;

public interface BlogService extends BaseService<Blog>{

	List<Subject> findSubject();
	Subject getOneSubject(Integer id);
	public List<Object[]> findBlog();
	public List<Blog> getOneUser(Integer id);
}

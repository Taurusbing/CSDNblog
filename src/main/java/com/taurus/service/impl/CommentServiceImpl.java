package com.taurus.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.taurus.dao.CommentDao;
import com.taurus.entity.Blog;
import com.taurus.entity.Comment;
import com.taurus.service.CommentService;
import com.taurus.vo.CommentVO;
/**
 * 博文评论功能service层
 */
@Service
public class CommentServiceImpl implements CommentService{
	@Autowired
	private CommentDao commentDao;
	public void add(Comment entity) {
		commentDao.add(entity);
	}

	public void update(Comment entity) {
		// TODO Auto-generated method stub
		
	}

	public void del(int id) {
		// TODO Auto-generated method stub
		
	}

	public Comment getOne(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Comment> findAll() {
		return null;
	}

	public Blog findBlog(int id) {
		return commentDao.findBlog(id);
	}

	public List<Comment> getCom(int id) {
		return commentDao.getCom(id);
	}

	public List<CommentVO> getCom1(int id) {
		return commentDao.getCom1(id);
	}

}

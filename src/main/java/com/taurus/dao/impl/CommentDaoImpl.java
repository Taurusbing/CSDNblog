package com.taurus.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.taurus.dao.CommentDao;
import com.taurus.entity.Blog;
import com.taurus.entity.Comment;
import com.taurus.util.GetSession;
import com.taurus.vo.CommentVO;

/**
 * 博文评论功能的dao层
 */
@Repository
public class CommentDaoImpl extends GetSession implements CommentDao{
	public void add(Comment entity) {
		getSession().save(entity);
		System.out.println("评论添加成功");
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
		// TODO Auto-generated method stub
		return null;
	}

	public Blog findBlog(int id) {
		String hql = "from Blog b where b.id =:bid";
		Blog blog = (Blog) getSession().createQuery(hql).setParameter("bid", id).uniqueResult();
		return blog;
	}

	public List<Comment> getCom(int id) {
		String hql = "from Comment c where c.blog.id =:fid";
		List<Comment> comment = getSession().createQuery(hql).setParameter("fid", id).list();
		return comment;
	}

	public List<CommentVO> getCom1(int id) {
		String hql = "from Comment c where c.blog.id =:fid";
		List<CommentVO> comment = getSession().createQuery(hql).setParameter("fid", id).list();
		return comment;
	}

}

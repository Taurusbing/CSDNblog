package com.taurus.dao;

import java.util.List;

import com.taurus.entity.Blog;
import com.taurus.entity.Comment;
import com.taurus.vo.CommentVO;

public interface CommentDao extends BaseDao<Comment> {

	public Blog findBlog(int id);

	public List<Comment> getCom(int id);

	public List<CommentVO> getCom1(int id);

}

package com.taurus.service;

import java.util.List;

import com.taurus.entity.Blog;
import com.taurus.entity.Comment;
import com.taurus.vo.CommentVO;

public interface CommentService extends BaseService<Comment> {

	public Blog findBlog(int id);

	public List<Comment> getCom(int id);
	
	public List<CommentVO> getCom1(int id);

}

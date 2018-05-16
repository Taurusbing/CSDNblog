package com.taurus.vo;

import java.sql.Timestamp;
import java.util.List;

import com.taurus.entity.Blog;
import com.taurus.entity.User;

public class CommentVO {

private Integer id;
	
	/** 评论文章 */
	private List<Blog> blog;
	
	/** 评论人 */
	private List<User> user;
	
	private String comment;
	
	private Timestamp createdDate;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}


	public List<Blog> getBlog() {
		return blog;
	}

	public void setBlog(List<Blog> blog) {
		this.blog = blog;
	}

	public List<User> getUser() {
		return user;
	}

	public void setUser(List<User> user) {
		this.user = user;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public Timestamp getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Timestamp createdDate) {
		this.createdDate = createdDate;
	}
	
}

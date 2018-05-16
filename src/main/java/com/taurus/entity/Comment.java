package com.taurus.entity;

import java.sql.Timestamp;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 评论
 * yfly <br>
 * Comment <br>
 * 2018-05-02 09:43:55<br>
 *
 */
public class Comment {
	
	private Integer id;
	
	/** 评论文章 */
	private Blog blog;
	
	/** 评论人 */
	private User user;
	
	private String comment;
	
	private Timestamp createdDate;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Blog getBlog() {
		return blog;
	}

	public void setBlog(Blog blog) {
		this.blog = blog;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
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

	@Override
	public String toString() {
		return "Comment [id=" + id + ", blog=" + blog + ", user=" + user + ", comment=" + comment + ", createdDate="
				+ createdDate + "]";
	}
	
	
}

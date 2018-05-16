package com.taurus.entity;

import java.sql.Timestamp;
import java.util.Set;

/**
 * 博客实体对象
 * yfly <br>
 * Blog <br>
 * 2018-05-02 09:23:19<br>
 *
 */
public class Blog {

	private int id;
	
	/**文章标题 */
	private String title;
	
	/** 文章内容 */
	private String content;
	
	/**外键，表作者  多篇文章由一个作者发布*/
	private User user;
	
	/** 发布时间 */
	private Timestamp createdDate;
	
	/** 文章类型 ,0：原创,1：转载,2：翻译 */
	private int type;
	
	/**  博客分类 多篇博文对应一个分类 */
	private Subject subject;
	
	/** 是否私密0：否1：是 */
	private Integer privated;
	
	/** 文章标签  一篇文章有多个文章标签*/
	private Set<Tag> tags;
	
	//blog为中间表，一篇文章对应多个个人分类，一个个人分类对应多篇文章
	private Set<BlogTag> blogTags;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public Subject getSubject() {
		return subject;
	}

	public void setSubject(Subject subject) {
		this.subject = subject;
	}

	public Integer getPrivated() {
		return privated;
	}

	public void setPrivated(Integer privated) {
		this.privated = privated;
	}

	public Set<Tag> getTags() {
		return tags;
	}

	public void setTags(Set<Tag> tags) {
		this.tags = tags;
	}

	public Set<BlogTag> getBlogTags() {
		return blogTags;
	}

	public void setBlogTags(Set<BlogTag> blogTags) {
		this.blogTags = blogTags;
	}
	
	public Timestamp getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Timestamp createdDate) {
		this.createdDate = createdDate;
	}

	@Override
	public String toString() {
		return "Blog [id=" + id + ", title=" + title + ", content=" + content + ", user=" + user + ", createdDate="
				+ createdDate + ", type=" + type + ", subject=" + subject + ", privated=" + privated + ", tags=" + tags
				+ ", blogTags=" + blogTags + "]";
	}
	
}

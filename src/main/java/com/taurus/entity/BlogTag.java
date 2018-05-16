package com.taurus.entity;

/**
 * 中间表
 * 博文与个人分类之间是多对多关系
 * yfly <br>
 * BlogTag <br>
 * 2018-05-02 09:43:08<br>
 *
 */
public class BlogTag {

	private Integer id;
	//关联博文
	private Blog blog;
	//关联个人分类
	private Category category;

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

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}
	
}

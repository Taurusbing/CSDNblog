package com.taurus.entity;

import java.util.Set;

/**
 * 个人分类
 * yfly <br>
 * Category <br>
 * 2018-05-02 09:36:38<br>
 *
 */
public class Category {
	
	private Integer id;
	
	private String name;

	private Set<BlogTag> blogTags;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set<BlogTag> getBlogTags() {
		return blogTags;
	}

	public void setBlogTags(Set<BlogTag> blogTags) {
		this.blogTags = blogTags;
	}
	
}

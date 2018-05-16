package com.taurus.entity;

/**
 * 文章标签
 * yfly <br>
 * Tag <br>
 * 2018-05-02 09:41:19<br>
 *
 */
public class Tag {

	private Integer id;
	
	private String name;
	
	private Blog blog;
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

	public Blog getBlog() {
		return blog;
	}

	public void setBlog(Blog blog) {
		this.blog = blog;
	}
	
}

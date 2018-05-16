package com.taurus.entity;

import java.util.Set;

/**
 * 地区实体对象															
 * yfly <br>
 * Area <br>
 * 2018-05-02 09:05:49<br>
 *
 */
public class Area {

	private Integer id;
	
	private String name;
	
	/** 多个小地名对应一个大的区县  */
	private Area parent;
	
	/** 多个小地区对应一个大的区县 */
//	private Set<Area> childArea;

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

	public Area getParent() {
		return parent;
	}

	public void setParent(Area parent) {
		this.parent = parent;
	}

//	public Set<Area> getChildArea() {
//		return childArea;
//	}
//
//	public void setChildArea(Set<Area> childArea) {
//		this.childArea = childArea;
//	}

	@Override
	public String toString() {
		return "Area [id=" + id + ", name=" + name + "]";
	}
	
	
}

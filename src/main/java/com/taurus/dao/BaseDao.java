package com.taurus.dao;

import java.util.List;

public interface BaseDao<T> {
	//添加数据
	public void add(T entity);
	
	//修改数据
	public void update(T entity);
	
	//删除数据
	public void del(int id);
	
	//查询单个数据
	public T getOne(int id);
	
	//查询所有数据
	public List<T> findAll();
}

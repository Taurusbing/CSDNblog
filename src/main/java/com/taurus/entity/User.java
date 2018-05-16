package com.taurus.entity;

import java.sql.Timestamp;
import java.util.Date;
import java.util.Set;


/**
 * 作者对象（用户对象）
 * yfly <br>
 * User <br>
 * 2018-04-26 10:24:14<br>
 *
 */
public class User {

	private Integer id;
	
	private String account;
	
	private String Password;
	/** 昵称 */
	private String Pet_name;
	
	/** 实名 */
	private String Real_name;
	
	private String Job;
	
	/** 性别 0：男，1：女 */
	private int Sex;
	
	private Date Birthday;
	
	/** 行业 多个用户对应一个行业 */
	private Trade Trade;
	
	/** 地区 多个用户对应一个地区 */
	private Area Area;
	/** 个人简介 */
	private String Resume;
	
	private String phone;
	
	private String email;
	
	private Timestamp createdDate;
	
	/** 是否删除数据， 0：未删除， 1：删除 */
	private int isDel;
	
	//一个user对应多篇博客
	private Set<Blog> blog;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public String getPet_name() {
		return Pet_name;
	}

	public void setPet_name(String pet_name) {
		Pet_name = pet_name;
	}

	public String getReal_name() {
		return Real_name;
	}

	public void setReal_name(String real_name) {
		Real_name = real_name;
	}

	public String getJob() {
		return Job;
	}

	public void setJob(String job) {
		Job = job;
	}

	public int getSex() {
		return Sex;
	}

	public void setSex(int sex) {
		Sex = sex;
	}

	public Date getBirthday() {
		return Birthday;
	}

	public void setBirthday(Date birthday) {
		Birthday = birthday;
	}

	public Trade getTrade() {
		return Trade;
	}

	public void setTrade(Trade trade) {
		Trade = trade;
	}

	public Area getArea() {
		return Area;
	}

	public void setArea(Area area) {
		Area = area;
	}

	public String getResume() {
		return Resume;
	}

	public void setResume(String resume) {
		Resume = resume;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Timestamp getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Timestamp createdDate) {
		this.createdDate = createdDate;
	}

	public int getIsDel() {
		return isDel;
	}

	public void setIsDel(int isDel) {
		this.isDel = isDel;
	}
	

	@Override
	public String toString() {
		return "User [id=" + id + ", account=" + account + ", Password=" + Password + ", Pet_name=" + Pet_name
				+ ", Real_name=" + Real_name + ", Job=" + Job + ", Sex=" + Sex + ", Birthday=" + Birthday + ", Trade="
				+ Trade + ", Area=" + Area + ", Resume=" + Resume + ", phone=" + phone + ", email=" + email
				+ ", createdDate=" + createdDate + ", isDel=" + isDel + "]";
	}

	public Set<Blog> getBlog() {
		return blog;
	}

	public void setBlog(Set<Blog> blog) {
		this.blog = blog;
	}

	
}

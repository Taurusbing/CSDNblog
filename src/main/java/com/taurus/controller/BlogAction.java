package com.taurus.controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.StrutsStatics;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.alibaba.fastjson.JSON;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.taurus.entity.Blog;
import com.taurus.entity.BlogTag;
import com.taurus.entity.Category;
import com.taurus.entity.Subject;
import com.taurus.entity.Tag;
import com.taurus.entity.User;
import com.taurus.service.BlogService;
@Controller
public class BlogAction extends ActionSupport {
	@Autowired
	private BlogService blogService;
	private List<Subject> subjects;
	private Blog blog;
	private Tag tag;
	private Tag tag2;
	private Subject subject;
	private Category category;
	private Category category2;
	//用于获取前台携带来的博客id，根据id查询对象
	private int id;
	
	//查询所有博客分类
	public String goWrite() {
		subjects = blogService.findSubject();
		ActionContext.getContext().put("subject",subjects);
		return "success";
	}
	
	/**
	 * 写博文
	 */
	public String addBlog() {
		// 初始化一个用户
		User user = (User) ActionContext.getContext().getSession().get("loginUser");
		System.out.println(user);
		System.out.println(user.getId());
		blog.setUser(user);
		
		// 一篇文章对应一个博客分类
		Subject sub = blogService.getOneSubject(subject.getId());
		blog.setSubject(sub);
		
		// 一篇博客对应多个文章标签
		Set<Tag> tags = new HashSet<Tag>();
		tag.setBlog(blog);
		tags.add(tag);
		tag2.setBlog(blog);
		tags.add(tag2);
		blog.setTags(tags);

		// BlogTag是blog与Categroy(个人分类)之间的中间表，要将两个对象都装进去
		Set<BlogTag> blogTags = new HashSet<BlogTag>();

		BlogTag b1 = new BlogTag();
		b1.setBlog(blog);
		b1.setCategory(category);
		blogTags.add(b1);
		BlogTag b2 = new BlogTag();
		b2.setBlog(blog);
		b2.setCategory(category2);
		blogTags.add(b2);


		blog.setBlogTags(blogTags);
		
		Date date = new Date();
		System.out.println("new Date:"+date);
		String nowTime = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(date);
		System.out.println("format:"+nowTime);
		Timestamp time = Timestamp.valueOf(nowTime);
		
		
		
		blog.setCreatedDate(time);
		
		// 添加blog
		blogService.add(blog);
		
		return "success";
	}
	
	/**
	 * 博文详情展示
	 * @throws IOException 
	 */ 
	public String blogDetails() {
		Blog blog = blogService.getOne(id);
		System.out.println(blog);
		ActionContext.getContext().put("blog", blog);
		return "success";
	}
	
	
	/**
	 * 我的博文展示
	 */
	public String myCSDN() {
		User user = (User) ActionContext.getContext().getSession().get("loginUser");
		System.out.println(user.getId());
		List<Blog> list = blogService.getOneUser(user.getId());
		ActionContext.getContext().put("myblog", list);
		return "success";
	}
	
	
	public List<Subject> getSubjects() {
		return subjects;
	}
	public void setSubjects(List<Subject> subjects) {
		this.subjects = subjects;
	}

	public Blog getBlog() {
		return blog;
	}

	public void setBlog(Blog blog) {
		this.blog = blog;
	}

	public Tag getTag() {
		return tag;
	}

	public void setTag(Tag tag) {
		this.tag = tag;
	}

	public Subject getSubject() {
		return subject;
	}

	public void setSubject(Subject subject) {
		this.subject = subject;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Tag getTag2() {
		return tag2;
	}

	public void setTag2(Tag tag2) {
		this.tag2 = tag2;
	}

	public Category getCategory2() {
		return category2;
	}

	public void setCategory2(Category category2) {
		this.category2 = category2;
	}
	
}

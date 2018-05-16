package com.taurus.test;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.tomcat.jni.Time;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.validator.PublicClassValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;
import com.google.gson.Gson;
import com.taurus.entity.Area;
import com.taurus.entity.Blog;
import com.taurus.entity.BlogTag;
import com.taurus.entity.Category;
import com.taurus.entity.Comment;
import com.taurus.entity.Subject;
import com.taurus.entity.Tag;
import com.taurus.entity.Trade;
import com.taurus.entity.User;
import com.taurus.service.BlogService;
import com.taurus.service.CommentService;
import com.taurus.service.UserService;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath*:applicationContext.xml")
public class UserTest {
	private UserService userService;
	@Autowired
	private BlogService blogService;
	
	private CommentService CommentService;
	
	@Test
	public void demo1() {
		
	}
	@Test
	public void demo() {
		//初始化一个用户
		User user = new User();
		user.setAccount("bing");
		user.setPassword("12345");
		
		//博客分类
		Subject s = new Subject();
		s.setId(2);
		
		
		Blog blog = new Blog();
		blog.setTitle("标题");
		blog.setContent("内容");
		blog.setType(1);
//		blog.setUser(user);
		//是否私有
		blog.setPrivated(1);
		//一篇文章对应一个博客分类
		blog.setSubject(s);
		//一篇博客对应多个文章标签
		Set<Tag> tags = new HashSet<Tag>();
		for(int i = 0; i < 4; i++) {
			Tag t = new Tag();
			t.setName("文章标签"+i);
			t.setBlog(blog);
			tags.add(t);
		}
		blog.setTags(tags);
		
		
		//BlogTag是blog与Categroy之间的中间表，要将两个对象都装进去
		Set<BlogTag> blogTags = new HashSet<BlogTag>();
		
		BlogTag b1 = new BlogTag();
		b1.setBlog(blog);
		Category c = new Category();
		c.setName("个人分类1");
		b1.setCategory(c);
		blogTags.add(b1);
		
		BlogTag b2 = new BlogTag();
		b2.setBlog(blog);
		Category c2 = new Category();
		c2.setName("个人分类2");
		b2.setCategory(c2);
		blogTags.add(b2);
		
		BlogTag b3 = new BlogTag();
		b3.setBlog(blog);
		Category c3 = new Category();
		c3.setName("个人分类3 ");
		b3.setCategory(c3);
		blogTags.add(b3);
		
		blog.setBlogTags(blogTags);
		
		
		//添加blog
		blogService.add(blog);
	}
	
	@Test
	public void findArea() {
		List<Area> list = userService.findArea(0);
		System.out.println(list);
		for(Area li : list) {
			System.out.println(li);
		}
	}
	
	@Test
	public void findTrade() {
		List<Trade> list = userService.findTrade();
		System.out.println(list);
		for(Trade li : list) {
			System.out.println(li.toString());
		}
	}
	
	@Test
	public void findBlog() {
		List<Object[]> list = blogService.findBlog();
//		System.out.println(list);

		Gson gson = new Gson();
		String json = gson.toJson(list);
		System.out.println(json);
	}
	
	@Test
	public void getAllBlog() {
		List<Blog> list = blogService.findAll();
		System.out.println(list);
		for(Blog li : list) {
		System.out.println(li);
		}
		Gson gson = new Gson();
		String json = gson.toJson(list);
		System.out.println(json);
	}
	
	@Test
	public void getAlibaba() {
		List<Blog> list = blogService.findAll();
		String json = JSON.toJSONString(list);
		System.out.println(json);
	}
	
	@Test
	public void getOneBlog() {
		Blog blog = blogService.getOne(2);
		System.out.println(blog);
	}
	
	
	@Test
	public void getCom() {
		List<Comment> list = CommentService.getCom(1);
//		for(Comment li : list) {
//			System.out.println(li.getUser().getPet_name());
//		}
		String json = JSON.toJSONString(list);
		System.out.println(json);
//		Gson gson = new Gson();
//		String json = gson.toJson(list);
//		System.out.println(json);
	}
	
	
	@Test
	public void findComment() {
		List<Comment> list = CommentService.getCom(3);
		List<Map<String, Object>> lm = new ArrayList<Map<String, Object>>();
		for(Comment li : list) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("comment", li.getComment());
			map.put("user", li.getUser().getPet_name());
			lm.add(map);
		}
		String json = JSON.toJSONString(lm);
		System.out.println(lm.toString());
		System.out.println(json);

 	}
	
	
	
	@Test
	public void findBlogUser() {
		List<Blog> list = blogService.getOneUser(1);
		for(Blog li : list) {
			System.out.println(li);
		}
	}
	
	
	
	@Test
	public void time() {
		Date date = new Date();
		System.out.println("new Date:"+date);
		String nowTime = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(date);
		System.out.println("format:"+nowTime);
		Timestamp time = Timestamp.valueOf(nowTime);
		System.out.println(time);
		
		System.out.println( new Timestamp(1525899185000l));
	}
}

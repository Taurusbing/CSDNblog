package com.taurus.controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.StrutsStatics;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.taurus.entity.Blog;
import com.taurus.entity.Comment;
import com.taurus.entity.User;
import com.taurus.service.CommentService;
import com.taurus.vo.CommentVO;
@Controller
public class CommentAction extends ActionSupport {
	@Autowired
	private CommentService commentService;
	//用与获取前台隐藏的博客id
	private int id;
	private Comment comment;
	
	/**
	 * 添加评论
	 */
	public String comAdd() {
		//session中的
		User user = (User) ActionContext.getContext().getSession().get("loginUser");
		if(user != null) {
			comment.setUser(user);
			Blog blog = commentService.findBlog(id);
			comment.setBlog(blog);
			
			Date date = new Date();
			System.out.println("new Date:"+date);
			String nowTime = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(date);
			System.out.println("format:"+nowTime);
			Timestamp time = Timestamp.valueOf(nowTime);
			comment.setCreatedDate(time);
			
			commentService.add(comment);
			return "success";
		}else{
			return "error";
		}
	}
	
	/**
	 * 查询评论
	 */
	public void findComment1() throws IOException {
		HttpServletResponse response = (HttpServletResponse) ActionContext.getContext().get(StrutsStatics.HTTP_RESPONSE);
		response.setContentType("text/html;charset=utf8");
		List<Comment> list = commentService.getCom(id);
		String json = JSON.toJSONString(list);
		response.getWriter().print(json);
	}
	
	
	public void findComment2() {
		HttpServletResponse response = (HttpServletResponse) ActionContext.getContext().get(StrutsStatics.HTTP_RESPONSE);
		response.setContentType("text/html;charset=utf8");
		List<CommentVO> list = commentService.getCom1(id);
		String json = JSON.toJSONString(list);
		try {
			response.getWriter().print(json);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public void findComment() {
		try {
			HttpServletResponse response = (HttpServletResponse) ActionContext.getContext().get(StrutsStatics.HTTP_RESPONSE);
			response.setContentType("text/html;charset=utf8");
			
			List<Comment> list = commentService.getCom(id);
			System.out.println(list);
			List<Map<String, Object>> lm = new ArrayList<Map<String, Object>>();
			
			for(Comment li : list) {
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("comment", li.getComment());
				map.put("user", li.getUser().getPet_name());
//				long time = li.getCreatedDate().getTime();
//				System.out.println(li.getCreatedDate());
//				System.out.println(time);
				map.put("date", li.getCreatedDate().toString());
				lm.add(map);
			}
			
			String json = JSON.toJSONString(lm);
			System.out.println(json);
			response.getWriter().print(json);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}



	public Comment getComment() {
		return comment;
	}

	public void setComment(Comment comment) {
		this.comment = comment;
	}
	
}

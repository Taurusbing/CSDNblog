package com.taurus.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.StrutsStatics;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.taurus.entity.Blog;
import com.taurus.service.BlogService;
@Controller
public class HomeAction extends ActionSupport {
	@Autowired
	private BlogService blogService;

	public void findBlog() throws IOException{
			List<Object[]> list = blogService.findBlog();
			HttpServletResponse response = (HttpServletResponse) ActionContext.getContext().get(StrutsStatics.HTTP_RESPONSE);
			response.setContentType("text/html;charset=utf8");
			System.out.println(list);
			Gson gson = new Gson();
			String json = gson.toJson(list);
			System.out.println(json);
			response.getWriter().println(json);

	}
}

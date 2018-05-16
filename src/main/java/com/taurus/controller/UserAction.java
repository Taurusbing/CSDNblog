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
import com.taurus.entity.Area;
import com.taurus.entity.Trade;
import com.taurus.entity.User;
import com.taurus.service.UserService;
@Controller
public class UserAction extends ActionSupport {
	@Autowired
	private UserService userService;
	private User user;
	
	private int pid;
	
	//从前台获取地区id，以此去查询对象
	private int areaId;
	//从前台获取行业id，以此去查询对象
	private int tradeId;
	
	
	
	//获取response对象
	public HttpServletResponse response;
			
	//获取gson对象
	public Gson gson;
	
	/**
	 * 用户注册功能
	 */
	public String add() {
		//根据账户查询
		String sql = "from User u where u.account=:str";
		if(userService.add(sql, user.getAccount(), user)) {
			return "registerSuccess";
		}
		System.out.println("账户存在");
		return "registerError";
	}
	
	
	/**
	 * 用户登录功能
	 */
	public String login() {
		//根据账户查询
		String sql = "from User u where u.account=:str";
		User person = userService.login(sql, user.getAccount(), user);
		if(person != null) {
			//登陆成功后将账户存到session
			ActionContext.getContext().getSession().put("loginUser", person);
			return "loginSuccess";
		}
		return "loginError";
	}
	
	/**
	 *查询地址
	 */
	public void findArea() {
		try {
			//拿到一级对象集合
			List<Area> list = userService.findArea(pid);
			response = (HttpServletResponse) ActionContext.getContext().get(StrutsStatics.HTTP_RESPONSE);
			response.setContentType("text/html;charset=utf8");
			//将对象转化为json格式的字符串
			gson = new Gson();
			String json = gson.toJson(list);
			//通过response将数据传到页面
			response.getWriter().print(json);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	/**
	 * 查询行业
	 * @throws IOException 
	 */
	public void getTrade() {
		try {
			//拿到行业对象集合
			List<Trade> trades = userService.findTrade();
			response = (HttpServletResponse) ActionContext.getContext().get(StrutsStatics.HTTP_RESPONSE);
			response.setContentType("text/html;charset=utf8");
			//将对象转化为json格式的字符串
			gson = new Gson();
			String json = gson.toJson(trades);
			response.getWriter().print(json);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	/**
	 *将个人信息传到页面进行显示
	 */
	public String informationShow() {
		//获取session中的user
		User person = (User) ActionContext.getContext().getSession().get("loginUser");
		System.out.println("session中的"+person);
		if(person != null) {
			user = person;
			System.out.println("传给controller"+user);
			ActionContext.getContext().put("user", user);
			return "success";
		}
		//如果session中为空，应该回到登录页面
		return "error";
	}
	
	
	/**
	 * 修改数据
	 */
	public String update() {
		System.out.println(user.getBirthday());
		//获取session中的user
		User person = (User) ActionContext.getContext().getSession().get("loginUser");
		//前台没有提交用户名，因此用户名和密码都从session中获取
		user.setAccount(person.getAccount());
		user.setPassword(person.getPassword());
		//获取Area对象
		user.setArea(userService.getArea(areaId));
		//获取Trade对象
		user.setTrade(userService.getTrade(tradeId));
		userService.update(user);
		ActionContext.getContext().getSession().put("loginUser", user);
		return "success";
	}
	
	
	
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}


	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}


	public int getAreaId() {
		return areaId;
	}


	public void setAreaId(int areaId) {
		this.areaId = areaId;
	}


	public int getTradeId() {
		return tradeId;
	}


	public void setTradeId(int tradeId) {
		this.tradeId = tradeId;
	}
	
}

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String path = request.getContextPath(); %>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>parsonal</title>
	<link rel="stylesheet" type="text/css" href="<%=path %>/css/articalDetails.css">
	<link rel="stylesheet" type="text/css" href="<%=path %>/icon/iconfont.css">
	<link rel="stylesheet" href="<%=path %>/css/main.css">
	<!-- <link rel="stylesheet" type="text/css" href="reset.css"> -->
</head>
<body>
	<!-- 导航 -->
	<header class="head">
    <div class="nav">
      <div class="nav_l">
        <ul>
          <li>
            <a href="">
              <img src="./pic/logo.png" alt="" class="logo">
            </a>
          </li>
          <li>
            <a href="">博客</a>
          </li>
          <li>
            <a href="">学院</a>
          </li>
          <li>
            <a href="">下载</a>
          </li>
          <li>
            <a href="">GitChat</a>
          </li>
          <li>
            <a href="">论坛</a>
          </li>
          <li>
            <a href="">问答</a>
          </li>
          <li>
            <a href="">商城</a>
          </li>
          <li>
            <a href="">VIP</a>
          </li>
          <li>
            <a href="">活动</a>
          </li>
          <li>
            <a href="">招聘</a>
          </li>
          <li>
            <a href="">ITeye</a>
          </li>
          <li>
            <a href="">码云</a>
          </li>
          <li>
            <a href="">CSTO</a>
          </li>
        </ul>
      </div>
      <div class="nav_r">
        <ul>
          <li class="search">
            <input type="text">
            <a href="">
              <i>🔍</i>
            </a>
          </li>
          <li class="operate blog">
            <a href="./write.html">
              <img src="../images/write.png" alt="">
              <span>写博客</span>
            </a>
          </li>
          <li class="operate gitchat">
            <a href="">
              <img src="../images/chat.png" alt="">
              <span>发Chat</span>
            </a>
          </li>
          <li class="operate userlogin">
            <div class="logcenter">
              <a href="./information.html">
                <img src="https://avatar.csdn.net/2/7/2/2_qq_35119185.jpg" alt="">
              </a>
              <a href='./myCSDN.html' class="myCSDN">我的博客</a>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </header>
	<!-- 背景标题 -->
	<div class="personal-bg">
		<div class="container d-flex clearfix">
			<div class="title-box">
				<h6 class="title-blog">
					<a href="javascript:void(0)">老茶叶馆</a>
				</h6>
				<p class="description">叶金荣,ORACLEMySQLACE,专注MySQL十余年,分享MySQL技术及工作心得.个人站点:http://imysql.com...</p>
			</div>
			<div class="opt-box">
				<a href="javascript:void(0)" class="btn btn-sm">
					<i class="iconfont icon-xinhao"></i>
					RSS订阅
				</a>
			</div>
		</div>
	</div>

	<!-- 正文 -->
	<div class="text-mine">
		<!-- 左边 -->
		<c:forEach items="${myblog}" var="my">
			<div class="text-title">
				<div class="article-title-box">
					<span class="little-title">转</span>
					<h6 class="title-article">${my.title}</h6>
				</div>
				<div>
					<p class="text-p" style="font-size: 14px;color: #666">${my.content}</p>
				</div>
				<div class="publish-time-box">
					<div class="publish-time">
						<span class="time">2018年04月26日 00:00:00</span>
						<div class="right-word-pw" style="display: inline-block;">
							<span class="reading-num" >阅读数：12</span>
						</div>
						<div class="hover">
							<a href="javascript:void(0)">
								<span>置顶</span>
							</a>
							<span>|</span>
							<a href="javascript:void(0)">
								<span>编辑</span>
							</a>
							<span>|</span>
							<a href="javascript:void(0)">
								<span>删除</span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>

		<!-- 右边 -->
		<div class="left-aside">
			<div class="personal-infromation">
				<h3>
					<div class="line-box"></div>
					个人资料
				</h3>
				<div class="author">
					<div class="head-img">
						<a href="javascript:void(0)" >
							<img src="https://avatar.csdn.net/A/0/A/3_c9yv2cf9i06k2a9e.jpg">
						</a>
					</div>
					<div class="name">
						<p>
							<a href="javascript:void(0)">Paper_weekly</a>
						</p>
					</div>
					<div class="attention-btn">
						<span style="display: inline-block;">
							<a href="javascript:void(0)">关注</a>
						</span>
					</div>
				</div>
				<div class="data-info d-flex item-tiling">
					<dl class="text-center item-tiling">
						<dt>原创</dt>
						<dd>
							<span class="count">108</span>
						</dd>
					</dl>
					<dl class="text-center  item-tiling">
						<dt>粉丝</dt>
						<dd>
							<span class="count">108</span>
						</dd>
					</dl>
					<dl class="text-center  item-tiling">
						<dt>喜欢</dt>
						<dd>
							<span class="count">108</span>
						</dd>
					</dl>
					<dl class="text-center  item-tiling">
						<dt>评论</dt>
						<dd>
							<span class="count">108</span>
						</dd>
					</dl>
				</div>
				<div class="grade-box clearfix">
					<dl>
						<dt> 等级：</dt>
						<dd>
							<a href="javascript:void(0)">
								<i class="iconfont icon-xinhao"></i>
							</a>
						</dd>
					</dl>
					<dl>
						<dt> 访问：</dt>
						<dd>
							<a href="javascript:void(0)">
								8万+
							</a>
						</dd>
					</dl>
					
					<dl>
						<dt> 积分：</dt>
						<dd>
							<a href="javascript:void(0)">
								1989
							</a>
						</dd>
					</dl>
					<dl>
						<dt> 排名：</dt>
						<dd>
							<a href="javascript:void(0)">
								3万+
							</a>
						</dd>
					</dl>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>
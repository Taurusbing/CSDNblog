<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<title>parsonal</title>
<link rel="stylesheet" type="text/css"
	href="<%=path%>/css/articalDetails.css">
<link rel="stylesheet" type="text/css"
	href="<%=path%>/icon/iconfont.css">
<!-- <link rel="stylesheet" type="text/css" href="reset.css"> -->
</head>
<body>
	<!-- 背景标题 -->
	<div class="personal-bg">
		<div class="container d-flex clearfix">
			<div class="title-box">
				<h6 class="title-blog">
					<a href="javascript:void(0)">老茶叶馆</a>
				</h6>
				<p class="description">${blog.user.real_name},ORACLEMySQLACE,专注MySQL十余年,分享MySQL技术及工作心得.个人站点:http://imysql.com...</p>
			</div>
			<div class="opt-box">
				<a href="javascript:void(0)" class="btn btn-sm"> <i
					class="iconfont icon-xinhao"></i> RSS订阅
				</a>
			</div>
		</div>
	</div>

	<!-- 正文 -->
	<div class="text-mine">
		<!-- 左边 -->
		<div class="text-title">
			<div class="article-title-box">
				<span class="little-title">转</span>
				<h6 class="title-article">${blog.title}</h6>
			</div>
			<div class="publish-time-box">
				<div class="publish-time">
					<span class="time">${blog.createdDate}</span>
					<div class="right-word">
						<span class="reading-num">阅读数：12</span>
					</div>
				</div>
			</div>
			<div class="article">
				<div class="article-content">
					<p class="mine-content">
						<span style="letter-spacing: .5px;"> <span
							style="font-size: 15px;">${blog.content}</span>
						</span>
					</p>
					<p
						style="color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255); margin-left: .5em; margin-right: .5em; line-height: 1.75em;">
						<span style="font-size: 15px;"><br></span>
					</p>
					<p
						style="text-align: center; margin-left: .5em; margin-right: .5em;">
						<img src="">
					</p>
				</div>
				<div class="comment">
					<div class="comment-edit">
						<span class="user-img"><img src="../images/headImg.jpg"
							alt=""></span>

						<form action="commentAdd" method="post" class="comment-form">
							<input type="hidden" name="id" value="${blog.id}">
							<textarea name="comment.comment" id="inp-text" placeholder="想对作者说点什么"></textarea>
							<p class="right-box" >
								<span class="comment-tips">还可以输入<span
									class="comment-number">1000</span>个字符
								</span> 
								<input type="button" class="push-btn" id="btn" value="发表评论">
							</p>
						</form>

					</div>
					<ul id="cShow" class="comment-list">
						<li><img src="../images/headImg.jpg" alt="">
							<p class="list-title">
								<span class="com-username">weixin-520</span>
								<span class="com-date">2018-04-05 10:23:16</span> 
								<span class="com-floor">#<span>4</span>楼</span>
							</p>
							<p class="com-content">很不错呢！</p>
							<p class="com-right">
								<a href="javascript:void(0)">举报</a> <a href="javascript:void(0)">回复</a>
							</p></li>
						<li><img src="../images/headImg.jpg" alt="">
							<p class="list-title">
								<span class="com-username">qq-404</span> <span class="com-date">2018-04-05
									10:23:16</span> <span class="com-floor">#<span>4</span>楼
								</span>
							</p>
							<p class="com-content">哈哈哈哈哈哈！</p>
							<p class="com-right">
								<a href="javascript:void(0)">举报</a> <a href="javascript:void(0)">回复</a>
							</p>
						</li>
						<p><a class="pre-page page-btn" href="javascript:void(0)">上一页</a> 
						<span class="page-number">1</span> 
						<a class="nex-page page-btn"href="javascript:void(0)">下一页</a></p>
					</ul>
				</div>
			</div>

			<!-- 右边 -->
			<div class="left-aside">
				<div class="personal-infromation">
					<h3>
						<div class="line-box"></div>
						个人资料
					</h3>
					<div class="author">
						<div class="head-img">
							<a href="javascript:void(0)"> <img
								src="https://avatar.csdn.net/A/0/A/3_c9yv2cf9i06k2a9e.jpg">
							</a>
						</div>
						<div class="name">
							<p>
								<a href="javascript:void(0)">${blog.user.account}</a>
							</p>
						</div>
						<div class="attention-btn">
							<span style="display: inline-block;"> <a
								href="javascript:void(0)">关注</a>
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
							<dt>等级：</dt>
							<dd>
								<a href="javascript:void(0)"> <i
									class="iconfont icon-xinhao"></i>
								</a>
							</dd>
						</dl>
						<dl>
							<dt>访问：</dt>
							<dd>
								<a href="javascript:void(0)"> 8万+ </a>
							</dd>
						</dl>

						<dl>
							<dt>积分：</dt>
							<dd>
								<a href="javascript:void(0)"> 1989 </a>
							</dd>
						</dl>
						<dl>
							<dt>排名：</dt>
							<dd>
								<a href="javascript:void(0)"> 3万+ </a>
							</dd>
						</dl>
					</div>
				</div>
			</div>
		</div>

		<script src="<%=path %>/js/jquery-3.3.1.min.js"></script>
		<script>
 			$(function(){
/*  			let $inpText = $('#inp-text');
				$inpText.focus(()=>{
					$inpText.css({'height':'80px'});
					$('.comment-form').css({'height':'122px'});
				}); 
				$inpText.blur(()=>{
					$inpText.css({'height':'38px'});
					$('.comment-form').css({'height':'38px'});
						//$("form").submit();
				});
				*/
				$("#inp-text").focus(function(){
					$("#inp-text").css({'height':'80px'});
					$(".comment-form").css({'height':'122px'});

					$("#btn").click(function(){
						$("form").submit();
					})
				})
				$("form").submit(function(e){
					return true;
				})
/* 				$("#inp-text").blur(function(){
					$("#inp-text").css({'height':'38px'});
					$('.comment-form').css({'height':'38px'});
				}) */


			$.post("comShow?id=${blog.id}",{},function(d,s){
				var json = $.parseJSON(d);
				console.log(json);
				var htm="";
/*    				$.each(json,function(i,f){
					alert(f.user.pet_name);
					htm+="<li><img src='../images/headImg.jpg' alt=''><p class='list-title'>"+
					"<span class='com-username'>"+f[i].user+"</span>"+
					"<span class='com-date'>2018-04-05 10:23:16</span>"+ 
					"<span class='com-floor'>#<span>4</span>楼</span></p>"+
					"<p class='com-content'>"+f[i].comment+"</p>"+
					"<p class='com-right'><a href='javascript:void(0)'>举报</a> <a href='javascript:void(0)'>回复</a></p></li>";
					}) */
 				 for(var i = 0;i < json.length;i++){
					htm+="<li><img src='../images/headImg.jpg' alt=''><p class='list-title'>"+
					"<span class='com-username'>"+json[i].user+"</span>"+
					"<span class='com-date'>"+json[i].date+"</span>"+ 
					"<span class='com-floor'>#<span>4</span>楼</span></p>"+
					"<p class='com-content'>"+json[i].comment+"</p>"+
					"<p class='com-right'><a href='javascript:void(0)'>举报</a> <a href='javascript:void(0)'>回复</a></p></li>";
				}
				htm+="<p><a class='pre-page page-btn' href='javascript:void(0)'>上一页</a>"+
				"<span class='page-number'>1</span>"+
				"<a class='nex-page page-btn'href='javascript:void(0)'>下一页</a></p>";
				$("#cShow").html(htm);
		})
 	})						

</script>
</body>
</html>
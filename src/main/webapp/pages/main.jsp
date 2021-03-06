<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="<%=path %>/css/main.css">
<link rel="stylesheet" href="<%=path %>/css/reset.css">
<title>CSDN</title>
</head>

<body>
	<header class="head">
	<div class="nav clearfix">
		<div class="nav_l">
			<ul class="clearfix">
				<li><a href=""> <img src="images/logo.png" alt=""
						class="logo">
				</a></li>
				<li><a href="">博客</a></li>
				<li><a href="">学院</a></li>
				<li><a href="">下载</a></li>
				<li><a href="">GitChat</a></li>
				<li><a href="">论坛</a></li>
				<li><a href="">问答</a></li>
				<li><a href="">商城</a></li>
				<li><a href="">VIP</a></li>
				<li><a href="">活动</a></li>
				<li><a href="">招聘</a></li>
				<li><a href="">ITeye</a></li>
				<li><a href="">码云</a></li>
				<li><a href="">CSTO</a></li>
			</ul>
		</div>
		<div class="nav_r">
			<ul class="clearfix">
				<li class="search"><input type="text"> <a href="">
						<i>🔍</i>
				</a></li>
				<li class="operate blog"><a href="goWrite"> <img
						src="images/write.png" alt=""> <span>写博客</span>
				</a></li>
				<li class="operate gitchat"><a href=""> <img
						src="images/chat.png" alt=""> <span>发Chat</span>
				</a></li>
				<li class="operate userlogin"><c:choose>
						<c:when test="${not empty loginUser}">
							<div class="logcenter">
								<a href="information"> <img
									src="https://avatar.csdn.net/2/7/2/2_qq_35119185.jpg" alt="">
								</a> <a href='myBlog' class="myCSDN">我的博客</a>
							</div>
						</c:when>
						<c:otherwise>
							<div class="logcenter">
								<a href="pages/login.jsp"> <img src="images/login.jpg"
									alt="">
								</a> <a href='../pages/login.jsp' class="myCSDN">登录</a>
							</div>
						</c:otherwise>
					</c:choose></li>
			</ul>
		</div>
	</div>
	</header>
	<div class="body">
		<nav>
		<ul>
			<li class="active"><a href="">推荐</a></li>
			<li><a href="">最新文章</a></li>
			<li><a href="">关注</a></li>
			<li><a href="">资讯</a></li>
			<li><a href="">人工智能</a></li>
			<li><a href="">云计算/大数据</a></li>
			<li><a href="">区块链</a></li>
			<li><a href="">数据库</a></li>
			<li><a href="">程序人生</a></li>
			<li><a href="">游戏开发</a></li>
			<li><a href="">研发管理</a></li>
			<li><a href="">前端</a></li>
			<li><a href="">移动开发</a></li>
			<li><a href="">物联网</a></li>
			<li><a href="">运维</a></li>
			<li><a href="">计算机基础</a></li>
			<li><a href="">编程语言</a></li>
			<li><a href="">架构</a></li>
			<li><a href="">音视频开发</a></li>
			<li><a href="">安全</a></li>
			<li><a href="">其他</a></li>
		</ul>
		</nav>
		<div class="fix_content">
			<div class="ad_box">
				<div class="ad_l">
					<a href=""> <img
						src="https://img-ads.csdn.net/2018/201804081607477657.jpg" alt="">
					</a>
				</div>
				<div class="ad_r">
					<a href=''> <img
						src="https://img-ads.csdn.net/2018/201802111410487231.png" alt="">
					</a>
				</div>
			</div>
			<main>
			<div class="carousel">
				<div class="carousel_l">
					<a href=""> <img
						src="https://csdnimg.cn/feed/20180425/7edd73462cff82321a63c7af0f49d28d.png"
						alt="">
						<p>为什么中国的底层创新做不起来？</p>
					</a>
				</div>
				<div class="carousel_r">
					<div class="carousel_r_t">
						<a href=""> <img
							src="https://csdnimg.cn/feed/20180427/68d2f773cfe90ac742c6c449fdcaf66a.png"
							alt="">
							<p>枪打中兴后，华为再遭调查！</p>
						</a>
					</div>
					<div class="carousel_r_b">
						<a href=""> <img
							src="https://csdnimg.cn/feed/20180426/3ffc85b99365d8ac612b7a8391e7f79f.jpg"
							alt="">
							<p>如何实现抢红包算法？</p>
						</a>
					</div>
				</div>
			</div>
			<ul class="feedlist_mod home" id="bloglist">
				<li>
					<div class="list_con">
						<div class="read_num l">
							<p class="num">3180</p>
						</div>
						<div class="title l">
						   			<a href="./articalDetails.html">
										<h2>程序员笑话集:bug跟蚊子的相似之处</h2>
									</a>
						</div>
						<div class="close_tag l">
							<i></i>
						</div>
						<div class="userbar r">
							<a href=""> <img
								src="https://avatar.csdn.net/8/C/E/1_blogdevteam.jpg" alt="">
							</a>
						</div>
					</div>
				</li>
			</ul>
			</main>
			<aside class="r">
			<div class="aside_ad">
				<img src="https://img-ads.csdn.net/2018/201804111804217734.jpg"
					alt="">
				<ul class="aside_ad_list">
					<li class="active"></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
				</ul>
			</div>
			<div class="right_box">
				<h3>
					<span class="line l"></span> <span class="txt l">今日推荐</span>
				</h3>
				<div>
					<ul class="company_list">
						<li>
							<div class="img_box">
								<a href=""> <img
									src="https://csdnimg.cn/feed/20180423/d732bbfeba3cdbc1cf811bef9d256f34.png?x-oss-process=image/resize,h_64"
									alt="">
								</a>
							</div>
							<div class="content">
								<h3 class="company_name">
									<a href="">Facebook的原罪与区块链的救赎</a>
								</h3>
							</div>
						</li>
						<li>
							<div class="img_box">
								<a href=""> <img
									src="https://csdnimg.cn/feed/20180423/d732bbfeba3cdbc1cf811bef9d256f34.png?x-oss-process=image/resize,h_64"
									alt="">
								</a>
							</div>
							<div class="content">
								<h3 class="company_name">
									<a href="">Facebook的原罪与区块链的救赎</a>
								</h3>
							</div>
						</li>
						<li>
							<div class="img_box">
								<a href=""> <img
									src="https://csdnimg.cn/feed/20180423/d732bbfeba3cdbc1cf811bef9d256f34.png?x-oss-process=image/resize,h_64"
									alt="">
								</a>
							</div>
							<div class="content">
								<h3 class="company_name">
									<a href="">Facebook的原罪与区块链的救赎</a>
								</h3>
							</div>
						</li>
						<li>
							<div class="img_box">
								<a href=""> <img
									src="https://csdnimg.cn/feed/20180423/d732bbfeba3cdbc1cf811bef9d256f34.png?x-oss-process=image/resize,h_64"
									alt="">
								</a>
							</div>
							<div class="content">
								<h3 class="company_name">
									<a href="">Facebook的原罪与区块链的救赎</a>
								</h3>
							</div>
						</li>
					</ul>
				</div>
			</div>
			</aside>
		</div>
	</div>
	<script type="text/javascript" src="<%=path %>/js/jquery-3.3.1.min.js"></script>
	<script>
		$(function(){
			$.post('blogShow',{},function(d,s){
				//[[1,"java多线程",1],[2,"java异常",1],[3,"前端知识",2],[4,"物联网发展趋势",2]]
				var arr = $.parseJSON(d);
				var htm = "";
				$.each(arr,function(i,j){
					htm+="<li><div class='list_con'><div class='read_num l'><p class='num'>3180</p></div>"+
					"<div class='title l' ><a href='details?id="+j[0]+"'><h2>"+j[1]+"</h2></a></div>"+
					"<div class='close_tag l'><i></i></div>"+
					"<div class='userbar r'><a href=''> <img src='https://avatar.csdn.net/8/C/E/1_blogdevteam.jpg' alt=''></a></div></div></li>";
				})
				$("#bloglist").html(htm);
			})
			
		})


	</script>
</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="<%=path %>/css/css.css">
	<link rel="stylesheet" href="<%=path %>/css/reset.css">
	<link rel="stylesheet" href="<%=path %>/css/main.css">
	<script src="<%=path %>/js/jquery-3.3.1.js"></script>
</head>
<body>
	<header class="head">
    <div class="nav">
      <div class="nav_l">
        <ul>
          <li>
            <a href="">
              <img src="../images/logo.png" alt="" class="logo">
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
	<div class="max-content">
		<div class="wrapper">
			<div class="small-navigator">
				<ul class="nav-list">
					<li class="nav-item nav-item-active">
						<a href="javascript:void(0)">个人中心</a>
					</li>
					<li class="nav-item">
						<a href="javascript:void(0)">我的消息</a>
					</li>
					<li class="nav-item">
						<a href="javascript:void(0)">C币</a>
					</li>
					<li class="nav-item">
						<a href="javascript:void(0)">账号设置</a>
					</li>
					<li class="nav-item">
						<a href="javascript:void(0)">我的博客</a>
					</li>
					<li class="nav-item">
						<a href="javascript:void(0)">我的论坛</a>
					</li>
					<li class="nav-item">
						<a href="javascript:void(0)">我的下载</a>
					</li>
					<li class="nav-item">
						<a href="javascript:void(0)">我的学院</a>
					</li>
					<li class="nav-item">
						<a href="javascript:void(0)">我的问答</a>
					</li>
					<li class="nav-item">
						<a href="javascript:void(0)">我的订单</a>
					</li>	
				</ul>
			</div>
		</div>
		<div class="theme-navigator">
			<!-- 头像部分 -->
			<div class="head-portrait">
				<a href="javascript:void(0)">
					<img src="https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2239146502,165013516&fm=27&gp=0.jpg" alt="" width="150" height="150">
				</a>
				<div class="star first-star">
					<p>0</p>
					<p>关注</p>
				</div>
				<div class="star">
					<p>0</p>
					<p>粉丝</p>
				</div>
			</div>
			<!-- 资料上部分 -->
			<div class="message">
				<p class="user-name">昵称 ${user.pet_name}</p>
				<ul class="message-list">
					<li class="message-item">
						<span>行业 ${user.trade.name}</span>
					</li>
					<span>|</span>
					<li class="message-item">
						<span>职业 ${user.job}</span>
					</li>
					<span>|</span>
					<li class="message-item">
						<span>姓名 ${user.real_name}</span>
					</li>
					<span>|</span>
					<li class="message-item active">
						<span>${user.area.parent.parent.name}</span>
					</li>
					<span>|</span>
					<li class="message-item">
						<span>性别 </span>
					</li>
					<span>|</span>
					<li class="message-item">
						<span>生日  ${user.birthday}</span>
					</li>
					<li class="clearfix"></li>
				</ul>
				<a class="revise-message">修改个人资料</a>

			</div>
			<!-- 资料下部分 -->
			<div class="personal">
				<span class="news">个人简介</span>
				<div class="content clearfix">
					<span>0</span>
					<span class="recharge">充值</span>
					<span>|</span>
				</div>
				<div class="content clearfix">
					<span>0</span>
					<span class="recharge">充值</span>
					<span>|</span>
				</div>
				<div class="content clearfix">
					<span>0</span>
					<span class="recharge">充值</span>
					<span>|</span>
				</div>
				<div class="content clearfix">
					<span>0</span>
					<span class="recharge">充值</span>
					<span>|</span>
				</div>
				<div class="content clearfix">
					<span>0</span>
					<span class="recharge">充值</span>
					<span>|</span>
				</div>
			</div>

			<div class="clearfix"></div>
		</div>
	</div>
	<!-- 弹出框 -->
	<div class="message-box">
		<form action="userUpdate" method="post">
			<div class="title">编辑简介</div>
			<div class="user-box">
				<span>用户名:</span>
				<span>${user.account}</span>
			</div>
			<div class="message-class">
				<span>*</span>
				<span>昵称: </span>
				<input type="text" name="user.Pet_name" value="${user.pet_name}">
				<input type="hidden" name="user.id" value="${user.id}">
			</div>
			<div class="message-class">
				<span>实名: </span>
				<input type="text" class="ture-name" name="user.Real_name" value="${user.real_name}">
				<span class="myself">仅自己可见</span>
			</div>
			<div class="message-class">
				<span>&nbsp;&nbsp;</span>
				<span>职位:</span>
				<input type="text" name="user.Job" value="${user.job}">
			</div>
			<div class="message-class message-sex">
				<span>性别: </span>
				<input type="radio" name="user.Sex" value="1" class="boy" ${user.sex == 1? "checked":""}>
				<span>男</span>
				<input type="radio" class="girl" value="0" name="user.Sex" ${user.sex == 0? "checked":""}>
				<span>女</span>
			</div>
			<div class="message-class">
				<span>&nbsp;&nbsp;</span>
				<span>生日: </span>
				<input type="date" name="user.birthday"  value="${user.birthday}">
			</div>
			<div class="message-class message-industru">
				<span>行业:</span>
				<select id="Trade" name="tradeId" class="dropdown industry">
				</select>
			</div>
			<div class="message-class message-industru">
				<span>地址:</span>
				<select id="areaA" onchange="loadB(this)" class="dropdown address">
				</select>
				<select id="areaB" onchange="loadC(this)" class="dropdown address">
					<c:choose>
						<c:when test="${not empty user.area.parent.id}">
							<option value="${user.area.parent.id}">${user.area.parent.name}</option>
						</c:when>
					</c:choose>
				</select>
				<select id="areaC" name="areaId" class="dropdown address">
					<c:choose>
						<c:when test='${not empty user.area.id}'>
							<option value='${user.area.id}'>${user.area.name}</option>
						</c:when>
					</c:choose>
				</select>
			</div>
			<div class="message-class message-describe">
				<span>简述:</span>
				<textarea rows="7" cols="61" class="descrive-box">300字以内</textarea>
				<span class="prompt">你还可以输入300个字符</span>
				<div class="clearfix"></div>
			</div>
			<a href="javascript:void(0)" class="button cancel">取消</a>
			<input type="button" id="btn" class="button save" value="确认">
		</form>
	</div>
	<script>
		$(function () {
			//导航栏
			var flag = true;
			$('.nav-item').each(function (i, e) {
				$(this).click(function () {
					$(this).addClass('nav-item-active').siblings().removeClass('nav-item-active');
				});
			})
			//弹出框
			$('.revise-message').click(function () {
				$('.message-box').fadeToggle();
			});

			$('.cancel').click(function () {
				$('.message-box').css({
					display: 'none'
				});
			})
			
			//获取第一级地址数据
			$.ajax({
				url : "loadArea",
				data:{pid:0},
				success:function(d,s){
					/*将后台传来的json格式的string转为json对象 */
					var json = $.parseJSON(d);
					var htm="<c:choose><c:when test='${not empty user.area.parent.parent.id}'>"+
					"<option value='${user.area.parent.parent.id}'>${user.area.parent.parent.name}</option></c:when><c:otherwise>"+
					"<option value=''>请选择</option></c:otherwise></c:choose>";
					//jQuery中forEach方法，j是json对象的别名，i是下标
					$.each(json, function(i,j){
						htm+="<option value="+j.id+">"+j.name+"</option>";
					});
					$("#areaA").html(htm);
				}
			})
			
			//获取行业数据
			$.post("loadTrade",{},function(d,s){
				var json = $.parseJSON(d);
				var htm="<c:choose><c:when test='${not empty user.trade.id}'>"+
					"<option value='${user.trade.id}'>${user.trade.name}</option></c:when><c:otherwise>"+
					"<option value=''>请选择</option></c:otherwise></c:choose>";
				$.each(json, function(i,j){
					htm+="<option value="+j.id+">"+j.name+"</option>";
				});
				$("#Trade").html(htm);
			})
			
			$('.save').click(function () {
				$('.message-box').css({
					display: 'none'
				});
			})

			$("#btn").click(function(){
				$("form").submit();
			})
			$("from").submit(function(e){
				return true;
			})
		})
		
		function loadB(obj){
			//进入后将下一级的元素清空
			$("#areaC").html("");
			$.ajax({
				url : "loadArea",
				data:{pid:$(obj).val()},
				success:function(d,s){
					/*将后台传来的json格式的string转为json对象 */
					var json = $.parseJSON(d);
					var htm= "<option value=''>请选择</option>";
					//jQuery中forEach方法，j是json对象的别名，i是下标
					$.each(json, function(i,j){
						htm+="<option value="+j.id+">"+j.name+"</option>";
					});
					$("#areaB").html(htm);
				}
			});
		}

		function loadC(obj){
			$.ajax({
				url : "loadArea",
				data:{pid:$(obj).val()},
				success:function(d,s){
					/*将后台传来的json格式的string转为json对象 */
					var json = $.parseJSON(d);
					var htm= "<option value=''>请选择</option>";
					//jQuery中forEach方法，j是json对象的别名，i是下标
					$.each(json, function(i,j){
						htm+="<option value="+j.id+">"+j.name+"</option>";
					});
					$("#areaC").html(htm);
				}
			});
		}
	</script>
</body>
</html>
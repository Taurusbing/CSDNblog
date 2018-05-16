<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath();
%>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>账号登录</title>
	<link rel="icon" href="https://csdnimg.cn/public/favicon.ico">
	<link rel="stylesheet" type="text/css" href="<%=path %>/css/index.css">
	<!-- footer -->
	<link rel="stylesheet" type="text/css" href="<%=path %>/css/footer.css">
</head>
<body>
	<div class="main">
		<div class="cointainer w">
			<!-- login-start -->
			<div class="wrapper-login">
				<div class="login-banner">
					<a href="javascript:;">
						<img src="https://csdnimg.cn/passport/login-banner.png" alt="">
					</a>
				</div>
				<div class="login-user">
					<div class="login-part">
						<h3>
							账号登录
							<a href="javascript:;" class="scan-qrcode">扫码登录</a>
						</h3>
						<!-- 登录框 -->
						<div class="user-info">
							<div class="user-passs">
								<form id="sform">
									<input name="user.account" placeholder="输入用户名/邮箱/手机号" class="user-name" type="text" id="name"/>
									<input name="user.password" placeholder="输入密码" class="pass-word" type="password" id="pa"/>
									<div class="password-function">
										<!-- auto-login -->
										<span class="fl">
                            				<input type="checkbox" class="auto-login" checked id="rememberMe" />
                           					 <label for="rememberMe" class="auto-signup">下次自动登录</label>
                        				</span>
                        				<!-- forget-password -->
                        				<span class="forget-pwd fr">
                        					<a href="javascript:;">忘记密码</a>
                        				</span>
                        				<!-- ceearfix -->
                        				<div class="clearfix"></div>
                        				<!-- login-btn -->
                        				<input id="loginBtn" class="login-btn" value="登 录" type="button" />
                        				<!-- placeholder -->
                        				<div class="placeholder-line"></div>
									</div>
								</form>
							</div>
						</div>
        				<!-- 三方登录 -->
        				<div class="third-part third-part-grow">
			              <span style="width: 257px;">第三方帐号登录</span>
			              <a href="javascript:;" class="icon qq" target="_blank"></a>
			              <a href="javascript:;" class="icon sina" target="_blank"></a>
			              <a href="javascript:;" class="icon baidu" target="_blank"></a>
			              <a href="javascript:;" class="icon cc" target="_blank"></a>
			              <a href="javascript:;" class="icon github" target="_blank"></a>
			              <div class="register-now">
			              	  <span>还没有CSDN帐号？</span>
			                  <span class="register tracking-ad" data-mod="popu_28">
			                      <a href="../pages/signup.jsp" class="sign-up" target="_self">立即注册</a>
			                  </span>
			              </div>
			            </div>
						<!-- 登录框 -->
					</div>
				</div>
			</div>
			<!-- login-end -->
		</div>

		<!-- footer-start -->
		<div id="pub_footerall" class="pub_footer_new">
			<dl>
				<!-- <dt></dt>  -->
				<dd class="foot_sub_menu">
					<a href="javascript:;" target="_blank">公司简介</a>
					<span>|</span>
					<a href="javascript:;" target="_blank">招贤纳士</a>
					<span>|</span>
					<a href="javascript:;" target="_blank">广告服务</a>
					<span>|</span>
					<a href="javascript:;" target="_blank">联系方式</a>
					<span>|</span>
					<a href="javascript:;" target="_blank">版权声明</a>
					<span>|</span>
					<a href="javascript:;" target="_blank">法律顾问</a>
					<span>|</span>
					<a href="javascript:;">问题报告</a>
					<span>|</span>
					<a target="_blank" href="javascript:;">合作伙伴</a>
					<span>|</span>
					<a href="javascript:;" target="_blank">论坛反馈</a>
				</dd>
				<dd class="foot_contact">
					<a href="jjavascript:;" target="_blank" class="qq qqcustomer_s">网站客服</a>
					<a href="javascript:;" target="_blank" class="qq">杂志客服</a>
					<a href="javascript:;" target="_blank" class="weibo">微博客服</a>
					<a href="javascript:;" class="email" title="联系邮箱">webmaster@csdn.net</a>
					<span class="phone" title="服务热线">400-660-0108</span>
					<span class="interval">|</span>
					<span>北京创新乐知信息技术有限公司 版权所有</span>
					<span class="interval">|</span>
					<span>江苏知之为计算机有限公司</span>
					<span class="interval">|</span>
					<span>江苏乐知网络技术有限公司</span>
				</dd>
				<dd class="foot_copyright">
					<span>京&nbsp;ICP&nbsp;证&nbsp;09002463&nbsp;号</span>
					<span class="interval">|</span>
					<span>Copyright © 1999-2018, CSDN.NET, All Rights Reserved&nbsp;</span>
					<a href="javascript:;" target="_blank">
						<img src="https://csdnimg.cn/pubfooter/images/gongshang_logos.gif" alt="GongshangLogo" title="">
					</a>
				</dd>
			</dl>
		</div>
		<!-- footer-end -->
	</div>

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script>
/*  		$("#loginBtn").click(function() {
			window.location.href="login";	
		});  */
		!function(){
			var btn = document.getElementById("loginBtn");
			var sform = document.getElementById("sform");
			var name = document.getElementById("name");
			var pa = document.getElementById("pa");
			btn.onclick = function (){
				if(name.value != "" && pa.value != ""){
					sform.action="login";
					sform.method="post";
					sform.submit();
				}
			}
		}();

	</script>
</body>
</html>
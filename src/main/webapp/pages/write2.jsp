<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <% String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="ie=edge">
		<title>Document</title>
		<link rel="stylesheet" href="<%=path %>/css/write.css">
		<link rel="stylesheet" href="<%=path %>/css/reset.css">
	</head>

	<body>
		<div class="switchDOM " data-poputype="feed" data-feed-show="false" style="height: 35px; background: rgb(250, 250, 250); box-shadow: rgba(0, 0, 0, 0.1) 0px 1px 2px 0px; margin-bottom: 1px;">
			<div class="switch-text" style="padding-left:150px;padding-right:16px;">
				<span style="line-height:35px;font-size: 14px;color: #4F4F4F;">
        <span style="">对新版有任何意见或建议，请前往
          <a style="color:#349EDF;" href="">专区</a>进行反馈</span>
				</span>
				<div class="switch-bottom csdn-tracking-statistics" style="float:right">
					<a class="switch-old" href="javascript:void(0);" style="padding-bottom: 5px;padding-top: 5px;line-height:35px;font-size:12px;padding-left:10px;padding-right:10px;" target="_self">去旧版</a>
					<a class="switch-new switch-activation" href="javascript:void(0);" style="padding-bottom: 5px;padding-top: 5px;line-height:35px;font-size:12px;padding-left:10px;padding-right:10px;" target="_self">新版</a>
				</div>
			</div>
			<style>
				.switch-old,
				.switch-new,
				.switch-new:link,
				.switch-new:visited,
				.switch-old:link,
				.switch-old:visited {
					color: #999;
				}
				
				body .switch-activation {
					border-radius: 16px;
					background-color: #5B5B5B;
					color: #fff !important
				}
				
				body .switch-old:hover,
				body .switch-new:hover {
					color: #4F4F4F;
				}
				
				body .switch-activation:hover {
					color: #999;
				}
			</style>
		</div>
		<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" style="position: absolute; width: 0; height: 0" id="__SVG_SPRITE_NODE__">
			<symbol class="icon" viewBox="0 0 1024 1024" id="logo">
				<defs>
				</defs>
				<path d="M533.941333 419.264c14.709333-1.621333 37.290667-3.264 68.352-3.264 51.872 0 93.802667 9.152 119.776 28.416 23.338667 17.952 38.858667 47.008 34.56 89.130667-3.978667 39.189333-24.042667 66.634667-53.312 83.594666C676.544 633.152 642.837333 640 592.106667 640c-29.888 0-58.421333-1.642667-80.106667-4.896l21.941333-215.84z m42.869334 172.938667c4.981333 0.992 11.562667 1.973333 24.533333 1.973333 51.882667 0 88.469333-25.877333 92.16-62.24 5.333333-52.554667-27.125333-70.944-81.802667-70.624-7.072 0-16.917333 0-22.133333 0.970667L576.8 592.213333h0.010667z m223.498666-164.704c210.954667-39.872 229.162667 31.776 222.645334 95.189333L1010.656 640h-66.944l11.210667-106.986667c2.421333-23.562667 17.504-69.653333-55.338667-67.914666-25.184 0.608-37.706667 4.064-37.706667 4.064s-2.186667 28.469333-4.832 49.514666L844.32 640H778.666667l13.024-119.573333" fill="#231916" p-id="7404"></path>
				<path d="M226.634667 632.682667c-12.373333 4.341333-38.037333 7.317333-73.909334 7.317333C49.6 640-6.048 590.933333 0.522667 526.090667 8.416 448.810667 90.858667 405.333333 181.141333 405.333333c34.976 0 55.552 2.858667 74.858667 7.637334l-6.208 52.064c-12.821333-4.384-42.890667-8.405333-67.232-8.405334-53.141333 0-98.250667 16.042667-103.424 66.762667-4.608 45.354667 27.061333 67.04 86.816 67.04 20.8 0 51.477333-3.018667 65.653333-7.370667l-4.992 49.6 0.021334 0.021334z" fill="#C92027" p-id="7405"></path>
				<path d="M272.714667 580.021333c19.285333 6.762667 59.488 13.504 92 13.504 35.029333 0 54.528-9.333333 56.096-23.797333 1.418667-13.205333-12.928-14.986667-52.490667-24.010667-54.666667-12.896-89.546667-32.842667-86.133333-64.704C286.176 443.989333 337.685333 416 416.725333 416c38.56 0 75.914667 2.613333 95.274667 8.714667l-6.656 46.666666c-12.565333-4.202667-60.672-10.037333-93.205333-10.037333-32.992 0-50.069333 9.973333-51.253334 20.917333-1.493333 13.845333 15.658667 14.485333 58.528 25.450667 58.026667 14.154667 83.402667 34.090667 80.085334 64.992C495.605333 609.109333 449.258667 640 356.714667 640c-38.528 0-71.744-6.762667-90.048-13.525333l6.048-46.453334z" fill="#231916" p-id="7406"></path>
			</symbol>
			<symbol class="icon" viewBox="0 0 1024 1024" id="pencil">
				<defs>
					<style type="text/css"></style>
				</defs>
				<path d="M128 817.6l44.8-192 136 144-180.8 48z m214.4-84.8l-136-144 406.4-430.4 134.4 144-404.8 430.4z m438.4-467.2l-136-144L745.6 14.4c19.2-19.2 49.6-19.2 67.2 0l67.2 72c19.2 19.2 19.2 51.2 0 72l-99.2 107.2zM976 1024H48c-27.2 0-48-22.4-48-51.2s20.8-51.2 48-51.2h928c27.2 0 48 22.4 48 51.2s-20.8 51.2-48 51.2z" fill="" p-id="5022"></path>
			</symbol>
			<symbol class="icon" viewBox="0 0 1024 1024" id="bulletin_close">
				<defs>
					<style type="text/css"></style>
				</defs>
				<path d="M512 413.675102l393.306558-393.313524c27.153415-27.146449 71.178449-27.146449 98.331864 0 27.146449 27.153415 27.146449 71.178449 0 98.331864L610.324898 512l393.313524 393.306558c27.146449 27.153415 27.146449 71.178449 0 98.331864-27.153415 27.146449-71.178449 27.146449-98.331864 0L512 610.324898l-393.306558 393.313524c-27.153415 27.146449-71.178449 27.146449-98.331864 0-27.146449-27.153415-27.146449-71.178449 0-98.331864L413.675102 512 20.361578 118.693442C-6.784871 91.533061-6.784871 47.508027 20.361578 20.361578c27.153415-27.146449 71.178449-27.146449 98.331864 0L512 413.675102z" p-id="12261"></path>
			</symbol>
			<symbol viewBox="0 0 48 48" id="bulletin">
				<path d="M41,8c0-1.1-0.9-2-2-2c-0.6,0-1.1,0.2-1.4,0.6l-3,3C34.2,9.9,34,10.4,34,11c0,1.1,0.9,2,2,2c0.6,0,1.1-0.2,1.4-0.6l3-3  C40.8,9.1,41,8.6,41,8z"></path>
				<path d="M41,40c0,1.1-0.9,2-2,2c-0.6,0-1.1-0.2-1.4-0.6l-3-3C34.2,38.1,34,37.6,34,37c0-1.1,0.9-2,2-2c0.6,0,1.1,0.2,1.4,0.6l3,3  C40.8,38.9,41,39.4,41,40z"></path>
				<path d="M40,22h-4c-1.1,0-2,0.9-2,2c0,1.1,0.9,2,2,2h4c1.1,0,2-0.9,2-2C42,22.9,41.1,22,40,22z"></path>
				<g>
					<path d="M24,11.8v24.5l-7.1-5.1c-1-0.8-2.3-1.1-3.6-1.1H10V18h3.3c1.3,0,2.5-0.4,3.6-1.1L24,11.8 M25.8,6c-0.4,0-0.9,0.1-1.2,0.4   l-10,7.2c-0.4,0.3-0.8,0.4-1.2,0.4H8.1C7,14,6,15,6,16.1v15.7C6,33,7,34,8.1,34h5.2c0.4,0,0.9,0.1,1.2,0.4l10,7.2   c0.4,0.3,0.8,0.4,1.2,0.4c1.1,0,2.2-0.9,2.2-2.2V8.2C28,6.9,27,6,25.8,6L25.8,6z"></path>
				</g>
			</symbol>
		</svg>
		<!--Header-->
		<header class="bg-white">
			<nav class="navbar navbar-expand-md navbar-light container">
				<a class="header-logo" title="CSDN首页">
					<svg class="icon-logo">
						<use xlink:href="#logo"></use>
					</svg>
				</a>
				<div class="collapse navbar-collapse">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item header-mod">
							<a href='./main.html' class="nav-link header-mod-txt">创作中心</a>
						</li>
					</ul>
					<a class="btn btn-bd-red d-none d-lg-inline-block mb-3 mb-md-0 ml-md-3 btn-pencil" href="">
						<svg class="icon icon-pencil">
							<use xlink:href="#pencil"></use>
						</svg>
						写博客
					</a>
					<ul class="navbar-nav">
						<li class="nav-item nav-avatar">
							<a href="./information.html">
								<img class="nav-avatar-img" src="https://avatar.csdn.net/2/7/2/3_qq_35119185.jpg" width="56" height="56">
							</a>
						</li>
						<li class="nav-item header-ucenter">
							<div class="user-info">
								<a class="header-ucenter-uname" href="">qq_35119185</a>
								<a class="header-ucenter-logout" href="">退出</a>
							</div>
						</li>
					</ul>
				</div>
			</nav>
		</header>

		<main role="main" class="container">
			<div class="row row-offcanvas row-offcanvas-right main-wrapper">
				<div class="col-6 col-md-2 sidebar-offcanvas" id="sidebar">
					<div class="list-group-item list-group-title">内容</div>
					<div class="list-group">
						<a href="" class="list-group-item active" data-title="article">文章管理</a>
						<a href="" class="list-group-item none">专栏管理</a>
						<a href="" class="list-group-item none" data-title="comment">评论管理</a>
						<a href="" class="list-group-item none">个人分类管理</a>
					</div>
					<div class="list-group-item list-group-title">设置</div>
					<div class="list-group">
						<a href="" class="list-group-item none" data-title="blogsetting">博客设置</a>
						<a href="" class="list-group-item none" data-title="blogsetting">栏目管理</a>
					</div>
				</div>

				
			<div class="col-12 col-md-10" id="content-body">
				<form action="addBlog" method="post">
					<div class="title-box">
						<input type="text" name="blog.title" id="txtTitle" maxlength="100" placeholder="输入文章标题">
					</div>
					<div class="section">
						<textarea id="editor" name="blog.content" rows="30" style="width: 99.4%; display: block;"></textarea>
						<input type="text" id="xhe0_fixffcursor" style="position:absolute;display:none;">
					</div>
					<div id="moreDiv">
						<div class="pos-box">
							<div class="form-group row form-control-sm">
								<label class="labTitle col-form-label">文章标签：</label>
								<div class="txt-box">
									<div class="tag-box d-flex flex-row" id="articleTagBox">
										<input type="text" name="tag.name" id="hidTags" value="">
										<input type="text" name="tag2.name" id="hidTags" value="">
										<button class="btn-add-tag" id="addTag">
									</div>
									<p class="mt8">
										<span class="ipt-remark">最多添加5个标签</span>
									</p>
								</div>
							</div>
							<div class="form-group row form-control-sm">
								<label class="labTitle col-form-label">个人分类：</label>
								<div class="txt-box">
									<div class="tag-box d-flex flex-row" id="categorieBox">
										<input name="category.name" id="hidCategories" value="" type="text">
										<input name="category2.name" id="hidCategories" value="" type="text">
										<button class="btn-add-tag" id="addCategorie">
			                  </button>
									</div>
								</div>
							</div>
							<div class="form-group row form-control-sm d-flex">
								<label class="labTitle col-form-label">文章类型：</label>
								<div class="txt-box">
									<select name="blog.type">
										<option value="0">原创</option>
										<option value="1">转载</option>
										<option value="2">翻译</option>
									</select>
									<span class="required">*</span>
								</div>
								<label class="labTitle col-form-label ml-24">博客分类：</label>
								<div class="txt-box">
									<select name="subject.id">
										<c:forEach items="${subject}" var="sbj">
											<option value="${sbj.id}">${sbj.name}</option>
										</c:forEach>
									</select>
									<span class="required">*</span>
								</div>
							</div>
							<div class="form-group row form-control-sm">
								<label class="labTitle col-form-label">私密文章：</label>
<!--								<div class="switch-box">
									<input type="checkbox" name="public" class="form-control form-control-sm chk-switch" id="chkIsHasNotify">
									<label for="chkIsHasNotify" class="lab-switch"></label>
									<span class="ipt-remark chk-true online-txt">已设置成私密</span>
								</div>-->
								<input type="radio" name="blog.privated" value="0">是  
								<input type="radio" name="blog.privated" value="1">否  
							</div>
							<div class="opt-box row unfull">
								<label class="labTitle col-form-label"></label>
								<div class="txt-box">
									<input id="btn" type="button" class="btn btn-outline-danger" value="发布博客" title="发布博客">
									<input id="" type="button" class="btn btn-outline-danger ml-24" value="保存为草稿" title="保存为草稿">
									<input id="" type="button" class="btn btn-outline-secondary ml-24" title="返回列表页" value="返回">
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
				
			
			</div>
			</div>
		</main>
		<script src="<%=path %>/js/jquery-3.3.1.min.js"></script>
		<script type="text/javascript">
			$(function(){
				$("#btn").click(function(){
					$("form").submit();
				})
				$("form").submit(function(e){
					return true;
				})
			})
		</script>
		<script>
			var xhCssUrl = 'https://csdnimg.cn/release/phoenix/write/htmleditViews.9915248.css';
		</script>
		<script type="text/javascript" src="https://csdnimg.cn/release/phoenix/write/posteditnew-b05fc8de9b.js"></script>
		<div class="notice-box">
			<i class="mr8 notice-icon type-success"></i>
			<div class="pacman hide">
				<div></div>
				<div></div>
				<div></div>
				<div></div>
				<div></div>
			</div>
			<span class="notice">文章发布成功</span>
		</div>
		<script type="text/javascript">
			jsonData = { "articleId": 0 };
			artId = '0';
		</script>
		<div style="position:fixed; top:0; left:0; overflow:hidden;"></div>
		<div id="xhePanel"></div>
		<div id="xheShadow"></div>
		<div id="xheCntLine"></div>
	</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
</head>

<body>
 	<form action="addBlog" method="post">
 		<div>标题：<input name="blog.title"></div>
 		<div>内容：<textarea name="blog.content"></textarea></div>
 		<div> 个人分类：<input name="category.name"></div>
 		<div> 文章标签：<input name="tag.name"></div>
 		<div>文章类型：
			<select name="blog.type">
				<option value="0">原创</option>
				<option value="1">转载</option>
				<option value="2">翻译</option>
			</select>
		</div>
 		<div>标题博客分类：
			<select name="subject.id">
				<c:forEach items="${subject}" var="sbj">
					<option value="${sbj.id}">${sbj.name}</option>
				</c:forEach>
			</select>
		</div>
 		<div>是否私密：
			<input type="radio" name="blog.privated" value="0">是  
			<input type="radio" name="blog.privated" value="1">否  
		</div>
 		<div>
 			<input type="submit">
 		</div>
 		
 	</form>
</body>

</html>
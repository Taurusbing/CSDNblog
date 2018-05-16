<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<h1>地址选择</h1>
	<!-- 当用户改变input输入框内容时执行一段Javascript代码 -->
	<select id="areaA" onchange="loadB(this)"></select>省
	<select id="areaB" onchange="loadC(this)"></select>市
	<select id="areaC"></select>县/区
	<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
	<script >
		//页面一加载就执行，发送异步请求
		$(function(){
			$.ajax({
				url : "loadArea",
				data:{pid:0},
				success:function(d,s){
					/*将后台传来的json格式的string转为json对象 */
					var json = $.parseJSON(d);
					var htm= "<option value='null'>请选择</option>";
					//jQuery中forEach方法，j是json对象的别名，i是下标
					$.each(json, function(i,j){
						htm+="<option value="+j.id+">"+j.name+"</option>";
					});
					$("#areaA").html(htm);
				}
			});
		})

/* 		function loadB(obj) {
			js获取对象值
			alert(obj.value);
		} */
/* 		function loadB(obj){
			jQuery获取对象值
			alert($(obj).val());
		} */
		//表单发生改变事件，发送异步请求， 获取第二级数据
		function loadB(obj){
			//进入后将下一级的元素清空
			$("#areaC").html("");
			$.ajax({
				url : "loadArea",
				data:{pid:$(obj).val()},
				success:function(d,s){
					/*将后台传来的json格式的string转为json对象 */
					var json = $.parseJSON(d);
					var htm= "<option value='null'>请选择</option>";
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
					var htm= "<option value='null'>请选择</option>";
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
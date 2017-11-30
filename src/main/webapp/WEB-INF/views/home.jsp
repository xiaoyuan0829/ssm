<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>home</title>
</head>
<body>
	<p></p>

	<script type="text/javascript"
		src="${pageContext.request.contextPath }/resources/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/resources/js/jquery.cookie.js"></script>
	<script type="text/javascript">
		$(function(){
			var name = $.cookie("username");
			var pass = $.cookie("password");
			if(name != null && pass != null){
				$("p").text("登录成功！欢迎 "+name)
			}else{
				//window.location.href = "./login";
				$("p").text("登录成功")
			}
		})
	</script>
</body>
</html>
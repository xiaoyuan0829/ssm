<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<title>Login</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link
	href="${pageContext.request.contextPath }/resources/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath }/resources/css/bootstrap-theme.min.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath }/resources/css/templatemo_style.css"
	rel="stylesheet" type="text/css">
</head>
<body class="templatemo-bg-gray">
	<div class="container">
		<div class="col-md-12">
			<h1 class="margin-bottom-15">Login Form</h1>
			<form
				class="form-horizontal templatemo-container templatemo-login-form-1 margin-bottom-30"
				role="form" action="./login" method="post"
				onsubmit="return check(this)">
				<div class="form-group">
					<div class="col-xs-12">
						<div class="control-wrapper">
							<label for="username" class="control-label fa-label"><i
								class="fa fa-user fa-medium"></i></label> <input type="text"
								class="form-control" id="username" placeholder="Username"
								name="username">
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-12">
						<div class="control-wrapper">
							<label for="password" class="control-label fa-label"><i
								class="fa fa-lock fa-medium"></i></label> <input type="password"
								class="form-control" id="password" placeholder="Password"
								name="password">
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-12">
						<div class="checkbox control-wrapper">
							<label> <input type="checkbox" name="checkbox">
								Remember me
							</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-12">
						<div class="control-wrapper">
							<input type="submit" value="Log in" class="btn btn-info">
							<a href="#" class="text-right pull-right">Forgot
								password?</a>
						</div>
					</div>
				</div>
			</form>
			<div class="text-center">
				<a href="./register" class="templatemo-create-new">Create new
					account <i class="fa fa-arrow-circle-o-right"></i>
				</a>
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/resources/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/resources/js/jquery.cookie.js"></script>
	<script type="text/javascript">
		$(function() {
			if ("${msg}") {
				if ("${msg}" == "登录成功") {
					window.location.href = "./home";
				} else {
					alert("${msg}");
				}
			}
			cookie();
		});
		function check(form) {
			if (form.username.value == "") {
				alert("Username cannot be null.")
				return false;
			} else if (form.password.value == "") {
				alert("Password cannot be null.")
				return false;
			} else {
				return true;
			}
		}
		//设置cookie
		function cookie(){
			var name = $.cookie("username");
			var pass = $.cookie("password");
			if(name != null && pass != null){
				$("#username").val(name);
				$("#password").val(pass);
				$("[name='checkbox']").attr("checked",'true');
			}
		}
	</script>
</body>
</html>